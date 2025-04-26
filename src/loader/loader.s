#include "asm.h"

#include "addrs.h"

EXPORT(entrypoint)

.set noreorder

LEAF(func_80201000)
  bal    1f
  # BUG: missing delay slot
1:
  MOVU(a0, ra) # address of the next instruction into a0
  li     v0, 0x80400000
  li     t0, 0x200000

1:
  sw     zero, 0(v0)
  addiu  t0, t0, -4
  addiu  v0, v0, 4
  bgtz   t0, 1b
   nop
  
  li     v1, 0xB0C00000
  li     v0, 0x80200000
  li     t0, 0x100000

1:
  lw     AT, 0(v1)
   nop
  sync
   nop
  
  sw     AT, 0(v0)
  addiu  v1, v1, 4
  addiu  v0, v0, 4
  addiu  t0, t0, -4
  bgtz   t0, 1b
   nop
  
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
  
  li     sp, STACK_TOP

  j      func_80202930
   nop
  
  jr     ra
   nop
END(func_80201000)

.set reorder
