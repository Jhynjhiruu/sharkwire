#include "common.h"
#include "loader/linker.h"
#include "regs.h"
#include "std/stdarg.h"

#include "vi.h"

#include "bss.h"
#include "colour.h"

void func_80203150(int x, int y, int r, int g, int b) {
    int col = RGB5_TO_COL(r, g, b);

    D_8020593C[y * SCREEN_WIDTH + x] = col;
}

void func_80203190(int x, int y, int width, int height, int col) {
    int xx;
    int yy;

    for (yy = 0; yy < height; yy++) {
        for (xx = 0; xx < width; xx++) {
            D_8020593C[(y + yy) * SCREEN_WIDTH + (x + xx)] = col;
        }
    }
}

void func_802031F8(int col) {
    func_80203190(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, col);
}

void func_80203224(void) {
    volatile VI_regs_t *vi = (void *)PHYS_TO_K1(VI_BASE);

    while ((vi->cur_line & 0x3FE) != 2) {
        continue;
    }
    while ((vi->cur_line & 0x3FE) == 2) {
        continue;
    }
}

void func_80203268(void *fbuf) {
    volatile VI_regs_t *vi = (void *)PHYS_TO_K1(VI_BASE);

    vi->framebuffer = fbuf;
}

void func_80203278(void) {
    void *temp;

    func_80203224();
    func_80203268((void *)D_8020593C + D_80205944);

    temp = D_80205948;
    D_80205948 = D_8020593C;
    D_8020593C = temp;
}

void func_802032C4(int c) {
    int x;
    int y;
    int j;
    int i;
    int *row;
    int shifts[] = {
        28, 24, 20, 16, 12, 8, 4, 0,
    };

    switch (c) {
        case '\n':
            D_8020594C = 16;
            D_80205950 += 8;
            break;

        case '\r':
            D_8020594C = 16;
            break;

        default:
            row = // work around splat bug
                (void *)&/*main_3980_OFFSET*/ main_RODATA_START[(c - ' ') << 5];

            y = D_80205950;
            for (i = 0; i < 8; i++) {
                x = D_8020594C;
                for (j = 0; j < 8; j++) {
                    if (((row[i] >> shifts[j]) & 0xF) != 0xE) {
                        D_8020593C[y * SCREEN_WIDTH + x] = D_80205940;
                    } else if (D_80205938 == 0) {
                        D_8020593C[y * SCREEN_WIDTH + x] = D_80205930;
                    }
                    x++;
                }
                y++;
            }

            D_8020594C += 8;
    }
}

void func_80203448(char *str) {
    for (; *str != 0; str++) {
        func_802032C4(*str);
    }
}

void func_8020348C(int c) {
    int nibble = c & 0xF;
    int c;

    if (nibble > 9) {
        c = nibble - 10 + 'A';
    } else {
        c = nibble + '0';
    }

    func_802032C4(c);
}

void func_802034C0(int byte) {
    func_8020348C(byte >> 4);
    func_8020348C(byte);
}

void func_802034F0(int halfword) {
    func_802034C0(halfword >> 8);
    func_802034C0(halfword);
}

void func_80203520(int word) {
    func_802034F0(word >> 0x10);
    func_802034F0(word);
}

void func_80203550(int num, uint base, bool is_signed) {
    char *chars = "0123456789ABCDEF";
    int rem;

    if ((num < 0) && is_signed) {
        func_802032C4('-');
        num = -num;
    }

    rem = num / base;
    if (rem != 0) {
        func_80203550(rem, base, 0);
    }

    func_802032C4(chars[num % base]);
}

int func_802035DC(char *fmt, ...) {
    int count = 0;
    va_list args;

    va_start(args, fmt);

    while (*fmt != '\0') {
        if (*fmt == '%') {
            fmt++;

            switch (*fmt) {
                case '2':
                    func_802034C0(va_arg(args, int));
                    break;

                case '4':
                    func_802034F0(va_arg(args, int));
                    break;

                case '8':
                    func_80203520(va_arg(args, uint));
                    break;

                case 'c':
                    func_802032C4(va_arg(args, int));
                    break;

                case 'd':
                    func_80203550(va_arg(args, int), 10, 1);
                    break;

                case 'u':
                    func_80203550(va_arg(args, uint), 10, 0);
                    break;

                case 'o':
                    func_80203550(va_arg(args, uint), 8, 0);
                    break;

                case 'x':
                    func_80203550(va_arg(args, uint), 16, 0);
                    break;

                case 's':
                    func_80203448(va_arg(args, char *));
                    break;

                case 'l':
                    fmt++;
                    switch (*fmt) {
                        case 'd':
                            func_80203550(va_arg(args, s32), 10, 1);
                            break;

                        case 'u':
                            func_80203550(va_arg(args, uint), 10, 0);
                            break;

                        case 'o':
                            func_80203550(va_arg(args, uint), 8, 0);
                            break;

                        case 'x':
                            func_80203550(va_arg(args, uint), 16, 0);
                            break;
                    }
                    break;
                case '%':
                    func_802032C4(*fmt);
                    break;

                default:
                    va_end(args);
                    return -1;
            }

            count++;
        } else {
            func_802032C4(*fmt);
        }

        fmt++;
    }

    va_end(args);

    return count;
}

static inline void vi_init(bool pal) {
    volatile VI_regs_t *vi = (void *)PHYS_TO_K1(0x04400000);

    if (!pal) {
        vi->control = 0x320E;
        vi->framebuffer = D_80205948;
        vi->width = 0x280;
        vi->timing = 0x03E52239;
        vi->v_sync = 0x20D;
        vi->h_sync = 0xC15;
        vi->h_sync2 = 0x0C150C15;
        vi->h_limits = 0x6C02EC;
        vi->v_limits = 0x2501FF;
        vi->color_burst = 0xE0204;
        vi->h_scale = 0x400;
        vi->v_scale = 0x400;
    } else {
        vi->control = 0x320E;
        vi->framebuffer = D_80205948;
        vi->width = 0x280;
        vi->timing = 0x04541E3A;
        vi->v_sync = 0x271;
        vi->h_sync = 0x170C69;
        vi->h_sync2 = 0x0C6F0C6D;
        vi->h_limits = 0x800300;
        vi->v_limits = 0x5F0239;
        vi->color_burst = 0x9026B;
        vi->h_scale = 0x400;
        vi->v_scale = 0x400;
    }
}

void func_802037F8(bool pal) {
    D_80205944 = 0;
    D_80205948 = 0xA0080000;

    D_8020593C = D_80205948;
    func_802031F8(BLACK);
    D_8020593C = 0xA0116000;
    func_802031F8(BLACK);

    vi_init(pal);

    D_8020594C = 0x10;
    D_80205950 = 0;
    D_80205940 = WHITE;
    D_80205930 = BLACK;
    D_80205938 = 1;
}
