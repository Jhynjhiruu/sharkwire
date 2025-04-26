#include "common.h"
#include "include_asm.h"
#include "regs.h"

#include "bss.h"

void func_80203150(int x, int y, int r, int g, int b) {
    u16 col = (r << 11) | (g << 6) | (b << 1);

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

INCLUDE_ASM("asm/loader/nonmatchings/3150", func_802032C4);

void func_80203448(char *str) {
    for (; *str != 0; str++) {
        func_802032C4(*str);
    }
}

void func_8020348C(s32 arg0) {
    int nibble = arg0 & 0xF;
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

void func_80203550(int num, uint base, int is_signed) {
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

INCLUDE_ASM("asm/loader/nonmatchings/3150", func_802035DC);

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
    func_802031F8(0);
    D_8020593C = 0xA0116000;
    func_802031F8(0);

    vi_init(pal);

    D_8020594C = 0x10;
    D_80205950 = 0;
    D_80205940 = 0xFFFE;
    D_80205930 = 0;
    D_80205938 = 1;
}
