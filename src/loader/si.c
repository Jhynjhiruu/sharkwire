#include "common.h"
#include "regs.h"

#include "si.h"

void func_802030A0(void) {
    volatile SI_regs_t *si = (void *)PHYS_TO_K1(SI_BASE);

    while ((u32)si->PIF_addr_read_broken & 3) { // BUG: wrong address!
        continue;
    }
}

u32 func_802030BC(u32 *addr) {
    func_802030A0();
    return READ32(addr);
}

void func_802030E4(u32 *addr, u32 data) {
    func_802030A0();
    WRITE32(addr, data);
}

void func_80203118(void) {
    const u32 addr = PHYS_TO_K1(PIF_RAM(0x7FC));
    func_802030E4(addr, func_802030BC(addr) | 8);
}
