#include "asm.h"

#include "addrs.h"

.set noreorder
.set gp=64

EXPORT(D_80000440)
.word 20

LEAF(func_80000444)
  lw     k0, D_800007D8
  add    k0,  1
  sw     k0, D_800007D8

  li     a0,  0
  mtc0   a0, C0_COUNT

  li     a0, 0x927
  mtc0   a0, C0_COMPARE

  j      func_800005C0
   nop
END(func_80000444)

LEAF(func_80000470)
  j      func_80000478
   nop
END(func_80000470)

LEAF(func_80000478)
  addu   sp, -16
  sw     GP, (sp)

  li     GP, REG_SAVE

  sd     AT, 0x08(GP)
  sd     v0, 0x10(GP)
  sd     v1, 0x18(GP)
  sd     a0, 0x20(GP)
  sd     a1, 0x28(GP)
  sd     a2, 0x30(GP)
  sd     a3, 0x38(GP)
  sd     t0, 0x40(GP)
  sd     t1, 0x48(GP)
  sd     t2, 0x50(GP)
  sd     t3, 0x58(GP)
  sd     t4, 0x60(GP)
  sd     t5, 0x68(GP)
  sd     t6, 0x70(GP)
  sd     t7, 0x78(GP)
  sd     s0, 0x80(GP)
  sd     s1, 0x88(GP)
  sd     s2, 0x90(GP)
  sd     s3, 0x98(GP)
  sd     s4, 0xA0(GP)
  sd     s5, 0xA8(GP)
  sd     s6, 0xB0(GP)
  sd     s7, 0xB8(GP)
  sd     t8, 0xC0(GP)
  sd     t9, 0xC8(GP)
  sd     k0, 0xD0(GP)
  sd     k1, 0xD8(GP)

  sd     fp, 0xF0(GP)
  sd     ra, 0xF8(GP)

  mfc0   s1, C0_CAUSE
  li     s0,  2
  and    s2, s1, 0xFF
  srl    s2, s0
  beqz   s2, func_80000444
   nop

  la     k0, D_800007E4
  sw     s2, (k0)

  mfc0   s0, C0_EPC
  la     k0, D_800007E8
  sw     s0, (k0)

  li     GP, REG_SAVE

  ld     AT, 0x08(GP)
  ld     v0, 0x10(GP)
  ld     v1, 0x18(GP)
  ld     a0, 0x20(GP)
  ld     a1, 0x28(GP)
  ld     a2, 0x30(GP)
  ld     a3, 0x38(GP)
  ld     t0, 0x40(GP)
  ld     t1, 0x48(GP)
  ld     t2, 0x50(GP)
  ld     t3, 0x58(GP)
  ld     t4, 0x60(GP)
  ld     t5, 0x68(GP)
  ld     t6, 0x70(GP)
  ld     t7, 0x78(GP)
  ld     s0, 0x80(GP)
  ld     s1, 0x88(GP)
  ld     s2, 0x90(GP)
  ld     s3, 0x98(GP)
  ld     s4, 0xA0(GP)
  ld     s5, 0xA8(GP)
  ld     s6, 0xB0(GP)
  ld     s7, 0xB8(GP)
  ld     t8, 0xC0(GP)
  ld     t9, 0xC8(GP)
  ld     k0, 0xD0(GP)
  ld     k1, 0xD8(GP)

  ld     fp, 0xF0(GP)
  ld     ra, 0xF8(GP)

  lw     GP, (sp)

  j      func_8000064C
   nop
END(func_80000478)

LEAF(func_800005B8)
  j .
   nop
END(func_800005B8)

LEAF(func_800005C0)
  li     GP, REG_SAVE

  ld     AT, 0x08(GP)
  ld     v0, 0x10(GP)
  ld     v1, 0x18(GP)
  ld     a0, 0x20(GP)
  ld     a1, 0x28(GP)
  ld     a2, 0x30(GP)
  ld     a3, 0x38(GP)
  ld     t0, 0x40(GP)
  ld     t1, 0x48(GP)
  ld     t2, 0x50(GP)
  ld     t3, 0x58(GP)
  ld     t4, 0x60(GP)
  ld     t5, 0x68(GP)
  ld     t6, 0x70(GP)
  ld     t7, 0x78(GP)
  ld     s0, 0x80(GP)
  ld     s1, 0x88(GP)
  ld     s2, 0x90(GP)
  ld     s3, 0x98(GP)
  ld     s4, 0xA0(GP)
  ld     s5, 0xA8(GP)
  ld     s6, 0xB0(GP)
  ld     s7, 0xB8(GP)
  ld     t8, 0xC0(GP)
  ld     t9, 0xC8(GP)
  ld     k0, 0xD0(GP)
  ld     k1, 0xD8(GP)

  ld     fp, 0xF0(GP)
  ld     ra, 0xF8(GP)

  lw     GP, (sp)

  addu   sp,  16

  eret
   nop # not actually needed
END(func_800005C0)

LEAF(func_8000064C)
  la     k1, D_800007FC

  sw     AT, 0x04(k1)
  sw     v0, 0x08(k1)
  sw     v1, 0x0C(k1)
  sw     a0, 0x10(k1)
  sw     a1, 0x14(k1)
  sw     a2, 0x18(k1)
  sw     a3, 0x1C(k1)
  sw     s0, 0x20(k1)
  sw     s1, 0x24(k1)
  sw     s2, 0x28(k1)
  sw     s3, 0x2C(k1)
  sw     s4, 0x30(k1)
  sw     s5, 0x34(k1)
  sw     s6, 0x38(k1)
  sw     s7, 0x3C(k1)
  sw     t0, 0x40(k1)
  sw     t1, 0x44(k1)
  sw     t2, 0x48(k1)
  sw     t3, 0x4C(k1)
  sw     t4, 0x50(k1)
  sw     t5, 0x54(k1)
  sw     t6, 0x58(k1)
  sw     t7, 0x5C(k1)
  sw     t8, 0x60(k1)
  sw     t9, 0x64(k1)
  sw     k0, 0x68(k1)
  sw     k1, 0x6C(k1)
  sw     fp, 0x70(k1)
  sw     GP, 0x74(k1)
  sw     sp, 0x78(k1)
  sw     ra, 0x7C(k1)

  jal    func_80006684
   nop

1:
  nop
  nop
  j 1b
   nop
END(func_8000064C)

LEAF(func_800006E8) # ????
  lw     a0, 0x04(sp)
  lw     a1, 0x08(sp)
  lw     a2, 0x0C(sp)
  lw     a3, 0x10(sp)
  lw     AT, 0x14(sp)

  addu   sp,  32
  eret
END(func_800006E8)

LEAF(func_80000704)
  addu   sp, -20

  sw     s2, 0x04(sp)
  sw     s3, 0x08(sp)
  sw     ra, 0x0C(sp)

  li     AT, ~0xF0000007
  and    a0, AT
  or     a0, 3
  mtc0   a0, C0_WATCHLO
  mtc0   z0, C0_WATCHHI

  lw     s2, 0x04(sp)
  lw     s3, 0x08(sp)
  lw     ra, 0x0C(sp)

  addu   sp,  16

  jr     ra
   nop
END(func_80000704)

LEAF(func_80000744)
  li     AT,  0
  mtc0   AT,     C0_COUNT

  li     AT, 0x927
  mtc0   AT, C0_COMPARE

  jr     ra
   nop
END(func_80000744)

LEAF(func_8000075C)
  addu   sp, -20

  sw     a0, (sp)

  li     a0, 0x927
  mtc0   a0, C0_COMPARE

  li     a0,  0
  mtc0   a0, C0_COUNT
  
  mfc0   a0, C0_SR
  or     a0,  1
  or     a0, 0x8000
  mtc0   a0, C0_SR

  lw     a0, (sp)

  addu   sp,  20

  jr     ra
   nop
END(func_8000075C)

LEAF(func_80000794)
  mfc0   a0, C0_SR
  or     a0,  1
  mtc0   a0, C0_SR
  jr     ra
   nop
END(func_80000794)

LEAF(func_800007A8)
  mfc0   a0, C0_SR
  and    a0, -1 # BUG: should be ~1
  mtc0   a0, C0_SR
  jr     ra
   nop
END(func_800007A8)

LEAF(func_800007C0)
  mfc0   v0, C0_SR
  jr     ra
   nop
END(func_800007C0)

LEAF(func_800007CC)
  mfc0   v0, C0_COUNT
  jr     ra
   nop
END(func_800007CC)

EXPORT(D_800007D8)
.word 0

EXPORT(D_800007DC)
.word 0

EXPORT(D_800007E0)
.word 0

EXPORT(D_800007E4)
.word 0xFFFFFFFF

EXPORT(D_800007E8)
.word 0xFFFFFFFF

EXPORT(D_800007EC)
.word 0

EXPORT(D_800007F0)
.word 0

EXPORT(D_800007F4)
.word 0

EXPORT(D_800007F8)
.word 0

EXPORT(D_800007FC)
.space NUM_REGS * REG_SIZE
