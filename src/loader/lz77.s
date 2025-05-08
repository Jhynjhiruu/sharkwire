#include "asm.h"

#define BUF_SIZE (0x1010)

.set noat

LEAF(func_802016A0)
  PUSH(k1)

  lw     v0,  4(a0)
  sw     v0, -4(sp)

  sll    v0, 24

  lbu    k1, -2(sp)
  sll    k1, 16
  or     v0, k1

  lbu    k1, -3(sp)
  sll    k1, 8
  or     v0, k1

  lbu    k1, -4(sp)
  or     v0, k1

  POP(k1)

  jr     ra
END(func_802016A0)

LEAF(func_802016E4)
  PUSH(s0)
  PUSH(s1)
  PUSH(s2)
  PUSH(s3)
  PUSH(s4)
  PUSH(s5)
  PUSH(s6)
  PUSH(s7)
  PUSH(v0)
  PUSH(v1)
  PUSH(k0)
  PUSH(k1)

  MOVU(v0, a0)
  MOVU(v1, a1)

  LI(k0, buffer)
  li     a3, BUF_SIZE
  li     a0, 0

1:
  sb     a0,  0(k0)
  add    k0,  1
  add    a3, -1
  bnez   a3, 1b
  
  lw     a0,  8(v0)
  add    v0, 12
  sw     a0, -4(sp)

  sll    a0, 24

  lbu    k1, -2(sp)
  sll    k1, 16
  or     a0, k1

  lbu    k1, -3(sp)
  sll    k1,  8
  or     a0, k1

  lbu    k1, -4(sp)
  or     a0, k1

  add    a0,  1 # a0 = compressed length

  xor    a1, a1
  xor    a3, a3

  li     k0, BUF_SIZE - 0x22

loop:
  srl    a3,  1
  and    k1, a3, 0xFF00
  bnez   k1, block

  lb     s6,  0(v0)
  and    a3, 0xFF00
  and    s6, 0x00FF
  or     a3, s6

  add    a0, -1
  add    v0,  1
  beqz   a0, done
  
  or     a3, 0xFF00

block:
  and    k1, a3, 1
  beqz   k1, pointer
  
  lb     s4,  0(v0)

  add    a0, -1
  add    v0,  1
  beqz   a0, done
  
  LI(k1, buffer)
  add    k1, k0
  sb     s4,  0(k1)
  add    k0,  1
  and    k0, 0x0FFF
  
  sb     s4,  0(v1)
  add    v1,  1

  j      loop

pointer:
  lb     s2,  0(v0)
  and    a1, 0xFF00
  and    s2, 0x00FF
  or     a1, s2

  add    a0, -1
  add    v0,  1
  beqz   a0, done
  
  lb     s4,  0(v0)
  add    a0, -1
  add    v0,  1
  beqz   a0, done
  
  MOVE(k1, s4)

  srl    k1,  4
  sll    k1,  8
  and    a1, 0x00FF
  or     a1, k1

  and    s4, 0x000F
  add    s4,  3

1:
  and    a1, 0x0FFF

  LI(k1, buffer)
  add    k1, a1
  lb     s5,  0(k1)

  LI(k1, buffer)
  add    k1, k0
  sb     s5,  0(k1)

  add    k0,  1
  and    k0, 0x0FFF

  sb     s5,  0(v1)
  add    v1,  1
  add    s4, -1
  add    a1,  1
  bnez   s4, 1b
  
  j      loop
  
done:
  POP(k1)
  POP(k0)
  POP(v1)
  POP(v0)
  POP(s7)
  POP(s6)
  POP(s5)
  POP(s4)
  POP(s3)
  POP(s2)
  POP(s1)
  POP(s0)

  jr     ra
END(func_802016E4)

EXPORT(buffer)
.space BUF_SIZE

.set at
