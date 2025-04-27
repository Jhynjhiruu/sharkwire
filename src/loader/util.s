#include "asm.h"

.set noreorder

LEAF(func_80202E90)
    addiu  sp, sp, -28
    sw     t0, 0x10(sp)
    sw     t1, 0x14(sp)
    sw     AT, 0x18(sp)

    LOAD_RANGE(t0, t1, 0x80000000, 0x80003000, 0x10)

1:
    cache  INDEX_WRITEBACK_INVALIDATE_D, 0(t0)
    bltu   t0, t1, 1b
     addiu t0, t0, 0x10
    
    LOAD_RANGE(t0, t1, 0x80000000, 0x80006000, 0x20)

1:
    cache  INDEX_INVALIDATE_I, 0(t0)
    bltu   t0, t1, 1b
     addiu t0, t0, 0x20
    
    lw     t0, 0x10(sp)
    lw     t1, 0x14(sp)
    lw     AT, 0x18(sp)
    jr     ra
     addiu sp, sp, 28
END(func_80202E90)

LEAF(func_80202EEC)
    cache  HIT_WRITEBACK_INVALIDATE_D, 0(a0)
    jr     ra
     nop
END(func_80202EEC)

LEAF(func_80202EF8)
    jr     a0
     nop
END(func_80202EF8)

LEAF(func_80202F00)
    addiu  sp, sp, -20
    sw     ra, 0x10(sp)

    jalr   a0
     nop
    
    lw     ra, 0x10(sp)
    jr     ra
     addiu sp, sp, 20
END(func_80202F00)

LEAF(func_80202F1C)
    mfc0   v0, C0_SR
    jr     ra
     nop
END(func_80202F1C)

LEAF(func_80202F28)
    mtc0   a0, C0_SR
    jr     ra
     nop
END(func_80202F28)

LEAF(func_80202F34)
    mfc0   v0, C0_CAUSE
    jr     ra
     nop
END(func_80202F34)

LEAF(func_80202F40)
    mfc0   v0, C0_EPC
    jr     ra
     nop
END(func_80202F40)

LEAF(func_80202F4C)
    addiu  sp, sp, -28
    sw     ra, 0x10(sp)
    sw     t0, 0x14(sp)
    sw     t1, 0x18(sp)

    la     t0, 1f

    li     t1, 0x40850000 # mtc0 a1, ...
    or     t1, t1, a0
    sw     t1, 0(t0)

    jal    func_80202E90
     nop
    
1:
    mtc0   a1, C0_INX # placeholder instruction

    lw     t1, 0x18(sp)
    lw     t0, 0x14(sp)
    lw     ra, 0x10(sp)

    jr     ra
     addiu sp, sp, 28
END(func_80202F4C)

LEAF(func_80202F90)
    addiu  sp, sp, -28
    sw     ra, 0x10(sp)
    sw     t0, 0x14(sp)
    sw     t1, 0x18(sp)

    la     t0, 1f

    li     t1, 0x40020000 # mfc0 v0, ...
    or     t1, t1, a0
    sw     t1, 0(t0)

    jal    func_80202E90
     nop
    
1:
    mfc0   v0, C0_INX # placeholder instruction

    lw     t1, 0x18(sp)
    lw     t0, 0x14(sp)
    lw     ra, 0x10(sp)

    jr     ra
     addiu sp, sp, 28
END(func_80202F90)

.set reorder
