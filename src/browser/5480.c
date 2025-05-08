#include "common.h"
#include "include_asm.h"

#include "40.h"

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80005880);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800058F0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800059AC);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80005A10);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80005C20);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80005C5C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80005D8C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80005DEC);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80005E80);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000604C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80006134);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80006330);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800063C4);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80006440);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800064E0);

void func_80006574(void) {}

void func_8000657C(void) {}

u32 func_80006584(void) {
    return D_800007D8 / D_80000440;
}

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800065B0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800065C8);

void func_800065E0(void) {}

void func_800065E8(void) {}

void func_800065F0(void) {}

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800065F8);

// not migrated yet
extern s32 D_800E12C0;
extern s32 D_800E12D0;
extern s32 D_800E12EC;
extern s32 D_800E12F8;
extern s32 D_800E131C;
extern s32 D_800E1338;
extern s32 D_800E1350;
extern s32 D_800E1354;
extern s32 D_800E1380;
extern void* D_800FEF48;
extern s32 D_800FF0A4;
extern s32 D_800FF124;
extern void* D_800FF128;
extern s32 D_800FF12C;
extern s32 D_800FF6FC;
extern s32 D_800FF700;
extern char D_800FF744[32][4];
extern char D_800FF7C4[16][34];
extern void* D_8010DF84;
extern s32 D_8010DF88;
extern s32 D_801101C8;
extern s32 D_80110248;

void func_80006684(void) {
    void* temp_a1;
    void* var_a1;
    void* var_s1;
    s32 temp_a2;
    s32 temp_a3;
    s32 var_s0;
    s32 var_v1;
    s32* var_s2;

    func_800065F8();
    if (D_800007E4 < 0x10U) {
        D_800FF6FC = 0;
        D_800FF700 = 0;
        func_800068A8(&D_800E12C0, D_800FF7C4[D_800007E4]);
    }
    D_800FF6FC = 0;
    D_800FF700 = 0xC;
    func_800068A8(&D_800E12D0, D_800007E8);
    for (var_s0 = 0; var_s0 < 0x20; var_s0++) {
        var_v1 = var_s0;
        if (var_s0 < 0) {
            var_v1 = var_s0 + 7;
        }
        
        temp_a3 = var_s0 & 7;
        D_800FF6FC = ((var_v1 >> 3) * 0x8A) + 8;
        D_800FF700 = (temp_a3 * 0xB) + 0x20;
        func_800068A8(&D_800E12EC, D_800FF744[var_s0], D_800007FC[var_s0], temp_a3);
    }
    D_800FF6FC = 0;
    D_800FF700 += 0xE;
    func_800068A8(&D_800E12F8, &D_801101C8, D_80110248);
    D_800FF700 += 0xB;
    func_800068A8(&D_800E131C, &D_800FF0A4, D_800FF124);
    D_800FF700 += 0xB;
    func_800068A8(&D_800E1338, (D_800FEF48 == NULL) ? &D_800E1350 : D_800FEF48);
    D_800FF700 += 0xB;
    func_800068A8(&D_800E1354, D_8010DF84, D_8010DF88);
    D_800FF700 += 0xB;
    func_800068A8(&D_800E1380, D_800FF128, D_800FF12C);
}

void func_800068A0(void) {}

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800068A8);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80006930);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80006940);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000698C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800069A8);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800069C0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80006A0C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80006A80);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80006AE8);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80006B74);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80006BC8);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80006C7C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80006CD0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80006E54);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80006FF0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80007068);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800070CC);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80007114);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80007210);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800072A0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80007348);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80007388);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80007500);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800075C8);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80007760);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800077B4);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80007864);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800079D0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80007B18);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80007B74);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80007BBC);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80007E14);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80007EF0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80007FC0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800080A0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800080C8);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008180);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008190);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800081A4);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008268);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008348);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000835C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008374);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000839C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800083E8);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008528);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008540);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800085CC);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008704);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008730);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800088A4);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800088C0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800089D8);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008B6C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008BDC);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008C00);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008C1C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008C38);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008C98);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008CDC);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80008FA4);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80009498);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80009570);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_800095C8);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80009688);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000985C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80009B08);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_80009DD4);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000A040);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000A1FC);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000A42C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000A440);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000A4F4);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000A6C4);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000A704);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000A770);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000A7A4);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000A7C0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000A82C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000A990);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000AA28);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000AAA4);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000AC14);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000AD80);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000B258);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000B350);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000B444);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000B480);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000B4F4);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000B744);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000BCB8);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000BD28);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000BF38);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000C04C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000C180);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000C328);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000C3FC);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000C4A0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000C518);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000C5B0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000C79C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000C7BC);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000C828);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000C890);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000C98C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000CA2C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000CB14);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000CCAC);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000CD84);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000CE10);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000D14C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000D190);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000D1F4);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000D29C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000D2F0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000D420);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000D47C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000D484);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000D564);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000D830);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000DA24);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000DA40);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000DB04);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000DBC0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000DC4C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000DCA8);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000E2B0);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000E2F4);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000E47C);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000E530);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000E664);

INCLUDE_ASM("asm/browser/nonmatchings/5480", func_8000E77C);
