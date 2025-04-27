#include "common.h"

#include "update.h"

#include "bss.h"
#include "colour.h"
#include "hw.h"
#include "vi.h"

static char *D_802CBD00[] = {
    // clang-format off
    "#######    #####    #####     ##### ",
    "##   ##   ##   ##  ##   ##   ##   ##",
    "##   ##   ##   ##  ##        ##     ",
    "##   ##   ##   ##  ##        ##     ",
    "######    #######   #####     ##### ",
    "##        ##   ##       ##        ##",
    "##        ##   ##       ##        ##",
    "##        ##   ##  ##   ##   ##   ##",
    "##        ##   ##   #####     ##### ",
    // clang-format on
};

static char *D_802CBD24[] = {
    // clang-format off
    "#######   #####    ##    ##      ",
    "##       ##   ##   ##    ##      ",
    "##       ##   ##   ##    ##      ",
    "##       ##   ##   ##    ##      ",
    "####     #######   ##    ##      ",
    "##       ##   ##   ##    ##      ",
    "##       ##   ##   ##    ##      ",
    "##       ##   ##   ##    ##      ",
    "##       ##   ##   ##    ########",
    // clang-format on
};

bool func_80202A00(void) {
    u32 rom_buf[4];
    char check_string[] = "(C) DATEL D&D";
    int i;
    u32 *rom_ptr;
    char *str;
    bool matches = TRUE;

    D_802CBD50 = 0x600000;
    func_80202E40(0xB2000000);

    rom_ptr = (void *)0xB2C00020;
    for (i = 0; i != 4; i++) {
        rom_buf[i] = func_80201168(&rom_ptr[i]);
    }

    D_802CBD50 = 0x400000;
    func_80202E40(0xB1000000);

    str = (void *)rom_buf;
    for (i = 0; i < 12; i++) {
        if (str[i] != check_string[i]) {
            matches = FALSE;
        }
    }

    return matches;
}

void func_80202B18(void) {
    u32 *rom_ptr;
    u32 *ram_ptr;
    int status;
    int i;
    int j;

    func_802031F8(BLACK);
    if (!func_80202A00()) {
        return;
    }

    D_802CBD50 = 0x600000;
    func_80202E40(0xB2000000);
    func_802031F8(BLACK);
    D_8020594C = 0x28;
    D_80205950 = 0x1E;
    func_802035DC("Copying 1MegaByte");
    func_80203278();

    ram_ptr = (void *)0xA0080000;
    rom_ptr = (void *)0xB2C00000;
    for (i = 0; i != 0x40000; i++) {
        ram_ptr[i] = func_80201168(&rom_ptr[i]);
    }

    ram_ptr = (void *)0xA0080000;
    for (i = 0x10; i != 0x400; i++) {
        ram_ptr[i] = 0;
    }

    D_802CBD54 = 0xB1000000;

    rom_ptr = (void *)0xB0000000;
    for (j = 0; j != 0x10000; j++) {
        func_80201168(&rom_ptr[j]);
    }

    func_802031F8(BLACK);
    D_8020594C = 0x28;
    D_80205950 = 0x1E;
    func_802035DC("PROGRAMMING FLASH (1 MegaByte) ");
    func_80203278();
    func_8020140C();
    status = func_80201474(0x80080000, 0x100000, D_802CBD54 + 0xC00000);
    if (status != 0) {
        func_802031F8(RED);
        if (status == 1) {
            func_80202CF4(D_802CBD24, "FAILURE ERASING FLASH");
        } else {
            func_80202CF4(D_802CBD24, "FAILURE WRITING FLASH");
        }
        func_80203278();
        while (1) {
            continue;
        }
    } else {
        func_802031F8(GREEN);
        func_80202CF4(D_802CBD00, "1 MegaByte flash operation successful");
        func_80203278();
        while (1) {
            continue;
        }
    }
}

void func_80202CF4(char *arr[9], char *str) {
    int i;

    D_80205940 = BLACK;
    D_80205950 = 40;

    for (i = 0; i < 9; i++) {
        D_8020594C = 50;
        func_802035DC(arr[i]);
        D_80205950 += 8;
    }

    if (str != NULL) {
        D_8020594C = 50;
        D_80205950 += 8;
        func_802035DC(str);
    }
}
