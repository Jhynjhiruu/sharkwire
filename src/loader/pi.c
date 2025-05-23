#include "common.h"
#include "regs.h"

#include "pi.h"

#include "util.h"

void func_80202FE0(void) {
    volatile PI_regs_t *pi = (void *)PHYS_TO_K1(PI_BASE);

    while (pi->status & 3) {
        continue;
    }
}

static inline void pi_read(void *dst, u32 src, int len) {
    volatile PI_regs_t *pi = (void *)PHYS_TO_K1(PI_BASE);

    pi->ram_address = (void *)K0_TO_PHYS(dst);
    // BUG: PI addresses are 32-bit and shouldn't really be masked like this
    pi->pi_address = K0_TO_PHYS(src);
    pi->write_length = len - 1;
}

void func_80202FFC(void *dst, u32 src, int len) {
    int i;

    func_80202FE0();

    for (i = 0; i < len; i += 4) {
        func_80202EEC(dst + i);
    }

    pi_read(dst, src, len);

    for (i = 0; i < 1000; i++) {
        continue;
    }

    func_80202FE0();
}
