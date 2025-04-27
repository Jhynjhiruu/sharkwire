#include "addrs.h"
#include "common.h"
#include "include_asm.h"
#include "loader/linker.h"
#include "regs.h"

#include "hw.h"
#define BSS_REAL
#include "bss.h"
#include "lz77.h"
#include "si.h"
#include "util.h"
#include "vi.h"

const char D_80205550[][40] = {
    "##        ##   ##   #####     ##### ",
    "##        ##   ##  ##   ##   ##   ##",
    "##        ##   ##       ##        ##",
    "######    #######   #####     ##### ",
    "##   ##   ##   ##  ##        ##     ",
    "##   ##   ##   ##  ##   ##   ##   ##",
    "#######    #####    #####     ##### ",
};

const char D_AAAA[][36] = {
    "##       ##   ##   ##    ########",
    "####     #######   ##    ##      ",
    "##       ##   ##   ##    ##      ",
    "#######   #####    ##    ##      ",
};

void func_80202930(void *entry_addr) {
    int i;
    int *fbuf;
    volatile VI_regs_t *vi = (void *)PHYS_TO_K1(VI_BASE);
    const u32 addr = PHYS_TO_K1(PIF_RAM(0x7FC));

    D_802CBD50 = 0x400000;

    func_802030E4(addr, func_802030BC(addr) | 8);
    func_80202E40(0xB1000000);

    fbuf = (s32 *)FRAMEBUFFER_0;

    for (i = 0; i < 0x13000; i++) {
        fbuf[i] = 0;
    }

    func_802037F8(0);

    D_80205948 = (void *)PHYS_TO_K1(FRAMEBUFFER_0);
    vi->framebuffer = D_80205948;

    D_8020593C = (void *)PHYS_TO_K1(FRAMEBUFFER_1);

    func_80202B18(); // work around a splat bug
    func_802016E4(/*main_5960_OFFSET*/ main_DATA_START, 0x80000400);
    func_80202E90();

    //              t0
    __asm__("lui    $8, (0x80000400 >> 16)   \n"
            "add    $8, (0x80000400 & 0xFFFF)\n"
            "jr     $8                       \n"
            " nop                            \n");
}

INCLUDE_ASM("asm/loader/nonmatchings/main", func_80202A00);

INCLUDE_ASM("asm/loader/nonmatchings/main", func_80202B18);

void func_80202CF4(s32 *arg0, s32 arg1) {
    int i;

    D_80205940 = 0;
    D_80205950 = 40;

    for (i = 0; i < 9; i++) {
        D_8020594C = 50;
        func_802035DC(arg0[i]);
        D_80205950 += 8;
    }

    if (arg1 != 0) {
        D_8020594C = 50;
        D_80205950 += 8;
        func_802035DC(arg1);
    }
}
