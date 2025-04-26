#include "common.h"
#include "include_asm.h"

/**/ s32 D_80205930;
s32 D_80205934;
/**/ s32 D_80205938;
/**/ s32 D_8020593C;
/**/ s32 D_80205940;
/**/ s32 D_80205944;
/**/ s32 D_80205948;
s32 D_8020594C;
s32 D_80205950;

void func_802010B0(void) {
    uint i;

    for (i = 0; i < 0x180; i++) {
        continue;
    }
}

void func_802010CC(void) {
    int i;

    func_802031F8(0);
    D_8020594C = 0x1E;
    D_80205950 = 0x1E;
    func_802035DC("PROGRAMMING:");

    for (i = 0; i < 8; i++) {
        if (i < D_80205934) {
            func_802035DC("-");
        } else {
            func_802035DC("|");
        }
    }
    func_80203278();
}

int func_80201168(int *ptr) {
    int rv = *ptr;
    func_802010B0();
    return rv;
}

void func_80201194(int count) {
    int i;

    for (i = 0; i < count; i++) {
        continue;
    }
}

INCLUDE_ASM("asm/loader/nonmatchings/eeprom", func_802011B4);

INCLUDE_ASM("asm/loader/nonmatchings/eeprom", func_80201204);

s32 func_8020127C(void) {
    func_802011B4(0, 0xFFFF);
    func_802011B4(0, 0x9090);
    func_80201194(0x2710);
    func_80201204(0);
    func_80201204(1);
    func_802011B4(0, 0xFFFF);
    return 0;
}

void func_802012D0(void) {
    func_80201204(0x1823);
    func_80201204(0x1820);
    func_80201204(0x1822);
    func_80201204(0x418);
    func_80201204(0x41B);
    func_80201204(0x419);
    func_80201204(0x41A);
    func_80201194(0x2710);
}

void func_80201324(void) {
    func_80201204(0x1823);
    func_80201204(0x1820);
    func_80201204(0x1822);
    func_80201204(0x418);
    func_80201204(0x41B);
    func_80201204(0x419);
    func_80201204(0x40A);
    func_80201194(0x2710);
}

INCLUDE_ASM("asm/loader/nonmatchings/eeprom", func_80201378);

s32 func_8020140C(void) {
    func_802012D0();
    func_802011B4(0, 0xFFFF);
    func_802011B4(0, 0x3030);
    func_802011B4(0, 0x3030);
    func_80201194(0x2710);
    func_80201378(0);
    func_80201324();
    func_802011B4(0, 0xFFFF);
    return 0;
}

INCLUDE_ASM("asm/loader/nonmatchings/eeprom", func_80201474);
