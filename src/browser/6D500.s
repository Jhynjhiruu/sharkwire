.include "macro.inc"

#.set noat
.set noreorder

.section .text, "ax"

.globl func_8006D900
.ent func_8006D900
func_8006D900:
      beqz       $4, .L8006D954
       nop
      lw         $5, 0x0($4)
      beqz       $5, .L8006D954
       lui       $6, %hi(D_801254C0)
      lbu        $2, %lo(D_801254C0)($6)
      beql       $2, $0, .L8006D934
       lui       $5, %hi(D_801254C1)
      lw         $2, 0xE8($5)
      sb         $0, %lo(D_801254C0)($6)
      ori        $2, $2, 0x1
      sw         $2, 0xE8($5)
      lui        $5, %hi(D_801254C1)
  .L8006D934:
      lbu        $2, %lo(D_801254C1)($5)
      beqz       $2, .L8006D954
       nop
      lw         $3, 0x0($4)
      lw         $2, 0xE8($3)
      sb         $0, %lo(D_801254C1)($5)
      ori        $2, $2, 0x2
      sw         $2, 0xE8($3)
  .L8006D954:
      jr         $31
       nop
.end func_8006D900

.globl func_8006D95C
.ent func_8006D95C
func_8006D95C:
      lbu        $3, 0xAC0($4)
      slti       $2, $3, 0x7
      beqz       $2, .L8006D978
       addu      $2, $0, $0
      bnez       $3, .L8006D978
       addiu     $2, $0, 0x1
      addu       $2, $0, $0
  .L8006D978:
      jr         $31
       nop
.end func_8006D95C

.globl func_8006D980
.ent func_8006D980
func_8006D980:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x24($29)
  .L8006D990:
      sw         $20, 0x20($29)
  .L8006D994:
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $4, 0x0($17)
      beqz       $4, .L8006D9BC
       addu      $20, $5, $0
      lhu        $5, 0x4($17)
      andi       $3, $5, 0xFFFF
      bnez       $3, .L8006D9F0
       nop
  .L8006D9BC:
      addiu      $4, $0, 0x20
      jal        func_80052504
       addu      $5, $0, $0
      beqz       $2, .L8006DA1C
       sw        $2, 0x0($17)
      addu       $4, $2, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x20
      addiu      $2, $0, 0x8
      sh         $2, 0x4($17)
      j          .L8006DA44
       sh        $0, 0x6($17)
  .L8006D9F0:
      lhu        $2, 0x6($17)
      sltu       $2, $2, $3
      bnez       $2, .L8006DA44
       addiu     $19, $5, 0x10
      andi       $18, $19, 0xFFFF
      sll        $5, $18, 2
      jal        func_80052524
       addu      $6, $0, $0
      addu       $16, $2, $0
      bnez       $16, .L8006DA24
       addu      $5, $0, $0
  .L8006DA1C:
      j          .L8006DA68
       addiu     $2, $0, -0x5
  .L8006DA24:
      lhu        $6, 0x6($17)
      sll        $4, $6, 2
      addu       $4, $16, $4
      subu       $6, $18, $6
      jal        func_80016140
       sll       $6, $6, 2
      sw         $16, 0x0($17)
      sh         $19, 0x4($17)
  .L8006DA44:
      lhu        $2, 0x6($17)
      lw         $3, 0x0($17)
      sll        $2, $2, 2
      addu       $2, $2, $3
      sw         $20, 0x0($2)
      lhu        $3, 0x6($17)
      addiu      $2, $0, 0x1
      addu       $3, $3, $2
      sh         $3, 0x6($17)
  .L8006DA68:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8006D980

.globl func_8006DA88
.ent func_8006DA88
func_8006DA88:
      lhu        $2, 0x6($4)
      addiu      $2, $2, -0x1
      jr         $31
       sh        $2, 0x6($4)
.end func_8006DA88

.globl func_8006DA98
.ent func_8006DA98
func_8006DA98:
      lhu        $2, 0x6($4)
      jr         $31
       sltiu     $2, $2, 0x1
.end func_8006DA98

.globl func_8006DAA4
.ent func_8006DAA4
func_8006DAA4:
      jr         $31
       sh        $0, 0x6($4)
.end func_8006DAA4

.globl func_8006DAAC
.ent func_8006DAAC
func_8006DAAC:
      lhu        $2, 0x6($4)
      lw         $3, 0x0($4)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, -0x4($2)
      jr         $31
       nop
.end func_8006DAAC

.globl func_8006DAC8
.ent func_8006DAC8
func_8006DAC8:
      lhu        $2, 0x6($4)
      slt        $2, $5, $2
      beqz       $2, .L8006DAF0
       sll       $3, $5, 2
      lw         $2, 0x0($4)
      addu       $3, $3, $2
      lw         $3, 0x0($3)
      addiu      $2, $0, 0x1
      jr         $31
       sw        $3, 0x0($6)
  .L8006DAF0:
      jr         $31
       addu      $2, $0, $0
.end func_8006DAC8

.globl func_8006DAF8
.ent func_8006DAF8
func_8006DAF8:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $31, 0x20($29)
      sw         $18, 0x18($29)
      lhu        $2, 0x6($16)
      slt        $2, $17, $2
      bnez       $2, .L8006DB58
       addiu     $3, $0, 0x1
      addu       $18, $3, $0
      addu       $4, $16, $0
  .L8006DB34:
      jal        func_8006D980
       addu      $5, $0, $0
      addu       $3, $2, $0
      bne        $3, $18, .L8006DB6C
       nop
      lhu        $2, 0x6($16)
      slt        $2, $17, $2
      beqz       $2, .L8006DB34
       addu      $4, $16, $0
  .L8006DB58:
      addu       $2, $3, $0
      lw         $4, 0x0($16)
      sll        $3, $17, 2
      addu       $3, $3, $4
      sw         $19, 0x0($3)
  .L8006DB6C:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8006DAF8

.globl func_8006DB88
.ent func_8006DB88
func_8006DB88:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $4, 0x8($18)
      beql       $4, $0, .L8006DBBC
       addiu     $4, $0, 0x4C0
      lw         $5, 0x0($18)
      bnez       $5, .L8006DBDC
       nop
      addiu      $4, $0, 0x4C0
  .L8006DBBC:
      jal        func_80052504
       addu      $5, $0, $0
      beqz       $2, .L8006DC14
       sw        $2, 0x8($18)
      addiu      $2, $0, 0x8
      sw         $2, 0x0($18)
      j          .L8006DC5C
       sw        $0, 0x4($18)
  .L8006DBDC:
      lw         $2, 0x4($18)
      slt        $2, $2, $5
      bnez       $2, .L8006DC5C
       addiu     $17, $5, 0x8
      sll        $5, $17, 2
      addu       $5, $5, $17
      sll        $5, $5, 2
      subu       $5, $5, $17
      sll        $5, $5, 3
      jal        func_80052524
       addu      $6, $0, $0
      addu       $16, $2, $0
      bnez       $16, .L8006DC1C
       addu      $5, $0, $0
  .L8006DC14:
      j          .L8006DC6C
       addiu     $2, $0, -0x1
  .L8006DC1C:
      lw         $2, 0x4($18)
      sll        $4, $2, 2
      addu       $4, $4, $2
      sll        $4, $4, 2
      subu       $4, $4, $2
      sll        $4, $4, 3
      addu       $4, $16, $4
      subu       $2, $17, $2
      sll        $6, $2, 2
      addu       $6, $6, $2
      sll        $6, $6, 2
      subu       $6, $6, $2
      jal        func_80016140
       sll       $6, $6, 3
      sw         $16, 0x8($18)
      sw         $17, 0x0($18)
  .L8006DC5C:
      lw         $3, 0x4($18)
      addu       $2, $3, $0
      addiu      $3, $3, 0x1
      sw         $3, 0x4($18)
  .L8006DC6C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006DB88

.globl func_8006DC84
.ent func_8006DC84
func_8006DC84:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      addiu      $2, $0, 0x26
      sw         $31, 0x18($29)
      sb         $2, 0x0($17)
      lw         $4, 0x0($16)
      jal        func_8006DA98
       addiu     $4, $4, 0x4C
      andi       $2, $2, 0xFF
      bnez       $2, .L8006DCD8
       addu      $2, $0, $0
      lw         $4, 0x0($16)
      jal        func_8006DAAC
       addiu     $4, $4, 0x4C
      beql       $2, $0, .L8006DCD8
       addu      $2, $0, $0
      lbu        $3, 0x10($2)
      sb         $3, 0x0($17)
  .L8006DCD8:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006DC84

.globl func_8006DCEC
.ent func_8006DCEC
func_8006DCEC:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x0($4)
      addiu      $16, $2, 0x4C
      jal        func_8006DA98
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L8006DD30
       addu      $2, $0, $0
      jal        func_8006DAAC
       addu      $4, $16, $0
      beql       $2, $0, .L8006DD30
       addiu     $2, $0, 0x1
      lbu        $2, 0x10($2)
      xori       $2, $2, 0x24
      sltu       $2, $0, $2
  .L8006DD30:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006DCEC

.globl func_8006DD40
.ent func_8006DD40
func_8006DD40:
      mtc1       $6, $f4
      lw         $2, 0x4A8($4)
      lw         $6, 0x4AC($4)
      divu       $zero, $2, $6
      bnez       $6, .L8006DD5C
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8006DD5C:
      mfhi       $3
      bnez       $3, .L8006DDD8
       sltu      $2, $6, $5
      beqz       $2, .L8006DDD0
       nop
      mtc1       $6, $f2
      cvt.d.w    $f2, $f2
      bgezl      $6, .L8006DD90
       cvt.s.d   $f0, $f2
      lui        $1, %hi(D_800F0240)
      ldc1       $f0, %lo(D_800F0240)($1)
      add.d      $f2, $f2, $f0
      cvt.s.d    $f0, $f2
  .L8006DD90:
      mul.s      $f0, $f0, $f4
      lui        $1, %hi(D_800F0248)
      lwc1       $f2, %lo(D_800F0248)($1)
      c.le.s     $f2, $f0
      nop
      bc1tl      .L8006DDBC
       sub.s     $f0, $f0, $f2
      trunc.w.s  $f6, $f0
      mfc1       $6, $f6
      j          .L8006DDD0
       sw        $6, 0x4AC($4)
  .L8006DDBC:
      lui        $2, (0x80000000 >> 16)
      trunc.w.s  $f6, $f0
      mfc1       $6, $f6
      or         $6, $6, $2
      sw         $6, 0x4AC($4)
  .L8006DDD0:
      jr         $31
       addiu     $2, $0, 0x1
  .L8006DDD8:
      jr         $31
       addu      $2, $0, $0
.end func_8006DD40

.globl func_8006DDE0
.ent func_8006DDE0
func_8006DDE0:
      addiu      $2, $0, 0x1
      lw         $3, 0x4AC($4)
      mtc1       $7, $f4
      beq        $3, $2, .L8006DE0C
       nop
      lw         $2, 0x1C($29)
      mult       $2, $3
      lw         $2, 0x14($29)
      mflo       $8
      j          .L8006DE10
       addu      $7, $2, $8
  .L8006DE0C:
      lw         $7, 0x10($29)
  .L8006DE10:
      lw         $3, 0x4A8($4)
      lw         $2, 0x20($29)
      mult       $3, $2
      lw         $2, 0x18($29)
      mflo       $8
      addu       $3, $2, $8
      sltu       $2, $7, $5
      bnez       $2, .L8006DE3C
       sltu      $2, $3, $5
      beqz       $2, .L8006DEC4
       nop
  .L8006DE3C:
      lw         $3, 0x4AC($4)
      sltu       $2, $3, $6
      beqz       $2, .L8006DEBC
       nop
      mtc1       $3, $f2
      cvt.d.w    $f2, $f2
      bgezl      $3, .L8006DE6C
       cvt.s.d   $f0, $f2
      lui        $1, %hi(D_800F0250)
      ldc1       $f0, %lo(D_800F0250)($1)
      add.d      $f2, $f2, $f0
      cvt.s.d    $f0, $f2
  .L8006DE6C:
      mul.s      $f0, $f0, $f4
      lui        $1, %hi(D_800F0258)
      ldc1       $f2, %lo(D_800F0258)($1)
      cvt.d.s    $f0, $f0
      add.d      $f0, $f0, $f2
      lui        $1, %hi(D_800F0260)
      ldc1       $f2, %lo(D_800F0260)($1)
      c.le.d     $f2, $f0
      nop
      bc1tl      .L8006DEA8
       sub.d     $f0, $f0, $f2
      trunc.w.d  $f6, $f0
      mfc1       $3, $f6
      j          .L8006DEBC
       sw        $3, 0x4AC($4)
  .L8006DEA8:
      lui        $2, (0x80000000 >> 16)
      trunc.w.d  $f6, $f0
      mfc1       $3, $f6
      or         $3, $3, $2
      sw         $3, 0x4AC($4)
  .L8006DEBC:
      jr         $31
       addiu     $2, $0, 0x1
  .L8006DEC4:
      jr         $31
       addu      $2, $0, $0
.end func_8006DDE0

.globl func_8006DECC
.ent func_8006DECC
func_8006DECC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $3, 0x4AC($4)
      addiu      $2, $0, 0x1
      beq        $3, $2, .L8006DEF8
       sltu      $2, $6, $5
      lw         $2, 0x28($29)
      mult       $2, $3
      mflo       $8
      addu       $6, $7, $8
      sltu       $2, $6, $5
  .L8006DEF8:
      beqz       $2, .L8006DF0C
       addu      $2, $0, $0
      lui        $6, (0x40000000 >> 16)
      jal        func_8006DD40
       addiu     $5, $0, 0x40
  .L8006DF0C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006DECC

.globl func_8006DF18
.ent func_8006DF18
func_8006DF18:
      addiu      $29, $29, -0x38
      sw         $16, 0x28($29)
      addu       $16, $4, $0
      sw         $17, 0x2C($29)
      addu       $17, $5, $0
      sw         $31, 0x30($29)
      lw         $2, 0x8($16)
      beqz       $2, .L8006E068
       addu      $4, $0, $0
      lw         $3, 0x74($2)
      sltiu      $2, $3, 0x6
      beqz       $2, .L8006E068
       lui       $2, %hi(jtbl_800F0268)
      addiu      $2, $2, %lo(jtbl_800F0268)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8006DF64
.L8006DF64:
      j          .L8006E068
       addiu     $4, $0, 0x1
  .globl .L8006DF6C
.L8006DF6C:
      addu       $4, $16, $0
      lui        $6, (0x40000000 >> 16)
      jal        func_8006DD40
       addiu     $5, $0, 0x40
      j          .L8006E068
       addu      $4, $2, $0
  .globl .L8006DF84
.L8006DF84:
      lw         $4, 0x8($16)
      jal        func_80080468
       nop
      andi       $2, $2, 0xFF
      beqz       $2, .L8006DFD4
       addu      $4, $16, $0
      addu       $5, $17, $0
      addiu      $6, $0, 0x40
      lui        $7, (0x3FF33333 >> 16)
      ori        $7, $7, (0x3FF33333 & 0xFFFF)
      addiu      $2, $0, 0xFA
      sw         $2, 0x10($29)
      addiu      $2, $0, 0xC8
      sw         $2, 0x14($29)
      addiu      $2, $0, 0x7D0
      sw         $2, 0x18($29)
      addiu      $2, $0, 0x64
      sw         $2, 0x1C($29)
      j          .L8006E000
       addiu     $2, $0, 0xA
  .L8006DFD4:
      addu       $5, $17, $0
      addiu      $6, $0, 0x40
      addiu      $2, $0, 0xFA
      lui        $7, (0x3F000000 >> 16)
      addiu      $3, $0, 0x64
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x3E8
      sw         $2, 0x18($29)
      addiu      $2, $0, 0xA
      sw         $3, 0x14($29)
      sw         $3, 0x1C($29)
  .L8006E000:
      jal        func_8006DDE0
       sw        $2, 0x20($29)
  .globl .L8006E008
.L8006E008:
      addu       $4, $16, $0
      addu       $5, $17, $0
      addiu      $6, $0, 0x40
      addiu      $2, $0, 0xFA
      lui        $7, (0x3FC00000 >> 16)
      addiu      $3, $0, 0x64
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x3E8
      sw         $2, 0x18($29)
      addiu      $2, $0, 0xA
      sw         $3, 0x14($29)
      sw         $3, 0x1C($29)
      jal        func_8006DDE0
       sw        $2, 0x20($29)
      j          .L8006E068
       addu      $4, $2, $0
  .globl .L8006E048
.L8006E048:
      addiu      $2, $0, 0xA
      sw         $2, 0x10($29)
      addu       $4, $16, $0
      addu       $5, $17, $0
      addiu      $6, $0, 0x190
      jal        func_8006DECC
       addiu     $7, $0, 0xC8
      addu       $4, $2, $0
  .globl .L8006E068
.L8006E068:
      lw         $31, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      andi       $2, $4, 0xFF
      jr         $31
       addiu     $29, $29, 0x38
.end func_8006DF18

.globl func_8006E080
.ent func_8006E080
func_8006E080:
      jr         $31
       addiu     $2, $0, 0x1
.end func_8006E080

.globl func_8006E088
.ent func_8006E088
func_8006E088:
      addiu      $29, $29, -0x38
      sw         $18, 0x30($29)
      addu       $18, $4, $0
      sw         $17, 0x2C($29)
      addu       $17, $0, $0
      sw         $16, 0x28($29)
      sw         $31, 0x34($29)
      jal        func_8006DCEC
       addu      $16, $5, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8006E10C
       andi      $2, $16, 0xFF
      addiu      $3, $2, -0x2
      sltiu      $2, $3, 0x37
      beqz       $2, .L8006E10C
       lui       $2, %hi(jtbl_800F0280)
      addiu      $2, $2, %lo(jtbl_800F0280)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8006E0E0
.L8006E0E0:
      addu       $4, $18, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      addu       $7, $5, $0
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      jal        func_80073724
       sw        $0, 0x20($29)
      addiu      $17, $0, 0x1
  .globl .L8006E10C
.L8006E10C:
      addu       $2, $17, $0
      lw         $31, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8006E088

.globl func_8006E128
.ent func_8006E128
func_8006E128:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x20($29)
      sw         $18, 0x18($29)
      beqz       $16, .L8006E1C0
       sw        $17, 0x14($29)
      lbu        $3, 0x10($16)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8006E1C4
       addu      $18, $0, $0
      addu       $4, $16, $0
      jal        func_80058268
       addu      $5, $2, $0
      addu       $4, $16, $0
      lw         $16, 0x0($2)
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $2, 0x4($2)
      addu       $17, $16, $2
      sltu       $2, $16, $17
      beqz       $2, .L8006E1C4
       addiu     $18, $0, 0x1
  .L8006E18C:
      lw         $2, 0xC($19)
      addu       $4, $19, $0
      lw         $2, 0x18($2)
      jalr       $2
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8006E1C0
       addiu     $16, $16, 0x1
      sltu       $2, $16, $17
      bnez       $2, .L8006E18C
       addu      $2, $18, $0
      j          .L8006E1C8
       nop
  .L8006E1C0:
      addu       $18, $0, $0
  .L8006E1C4:
      addu       $2, $18, $0
  .L8006E1C8:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8006E128

.globl func_8006E1E4
.ent func_8006E1E4
func_8006E1E4:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x18($29)
      addu       $4, $17, $0
  .L8006E200:
      jal        func_8006E128
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8006E22C
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      sw         $0, 0x4($2)
      lw         $16, 0xC($16)
      j          .L8006E200
       addu      $4, $17, $0
  .L8006E22C:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006E1E4

.globl func_8006E240
.ent func_8006E240
func_8006E240:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $31, 0x1C($29)
      addu       $4, $18, $0
  .L8006E264:
      jal        func_8006E128
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8006E284
       addu      $4, $18, $0
      lw         $16, 0xC($16)
      j          .L8006E264
       nop
  .L8006E284:
      beqz       $16, .L8006E298
       addiu     $2, $0, 0x23
      lbu        $3, 0x10($16)
      beql       $3, $2, .L8006E298
       addiu     $17, $0, 0x1
  .L8006E298:
      addu       $2, $17, $0
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006E240

.globl func_8006E2B4
.ent func_8006E2B4
func_8006E2B4:
      addiu      $29, $29, -0x38
      sw         $16, 0x20($29)
      addu       $16, $0, $0
      addiu      $4, $0, 0xEC
      addu       $5, $16, $0
      sw         $31, 0x30($29)
      sw         $19, 0x2C($29)
      sw         $18, 0x28($29)
      jal        func_80052504
       sw        $17, 0x24($29)
      addu       $17, $2, $0
      beqz       $17, .L8006E388
       addiu     $18, $29, 0x10
      jal        func_80062F74
       addu      $4, $18, $0
      bnez       $2, .L8006E388
       nop
      jal        func_800582A4
       nop
      addu       $16, $2, $0
      beqz       $16, .L8006E3A0
       nop
      jal        func_8006D894
       nop
      addu       $19, $2, $0
      beqz       $19, .L8006E388
       nop
      jal        func_8006E080
       addu      $4, $17, $0
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8006E388
       addu      $2, $17, $0
      addiu      $3, $0, -0x1
      lw         $6, 0x10($29)
      lw         $7, 0x14($29)
      lw         $8, 0x18($29)
      lw         $9, 0x1C($29)
      sw         $6, 0x34($2)
      sw         $7, 0x38($2)
      sw         $8, 0x3C($2)
      sw         $9, 0x40($2)
      sw         $3, 0x80($2)
      addiu      $3, $0, -0x4
      sw         $3, 0x74($2)
      addiu      $3, $0, 0x2000
      sw         $16, 0x44($2)
      sw         $19, 0x9C($2)
      sw         $0, 0x48($2)
      sw         $0, 0xC0($2)
      sw         $3, 0x64($2)
      sw         $0, 0x60($2)
      j          .L8006E3C4
       sb        $0, 0xD8($2)
  .L8006E388:
      beqz       $16, .L8006E3A0
       nop
      jal        func_800582DC
       addu      $4, $16, $0
      jal        func_80052540
       addu      $4, $16, $0
  .L8006E3A0:
      beqz       $18, .L8006E3B0
       nop
      jal        func_80062FD4
       addu      $4, $18, $0
  .L8006E3B0:
      beqz       $17, .L8006E3C4
       addu      $2, $0, $0
      jal        func_80052540
       addu      $4, $17, $0
      addu       $2, $0, $0
  .L8006E3C4:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8006E2B4

.globl func_8006E3E0
.ent func_8006E3E0
func_8006E3E0:
      addiu      $29, $29, -0x20
      addiu      $4, $0, 0xAD8
      addu       $5, $0, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      jal        func_80052504
       sw        $16, 0x10($29)
      addu       $17, $2, $0
      beqz       $17, .L8006E508
       addiu     $2, $0, 0x1
      addiu      $4, $17, 0xABC
      sb         $2, 0xAD0($17)
      addiu      $2, $0, 0x3
      sw         $0, 0x2A8($17)
      sw         $0, 0x2AC($17)
      sw         $0, 0x2B0($17)
      sw         $0, 0x2B4($17)
      sb         $0, 0xAC0($17)
      sb         $0, 0xAC1($17)
      sb         $0, 0xAC3($17)
      sb         $0, 0xAC4($17)
      sb         $0, 0xAC2($17)
      sb         $0, 0xAC5($17)
      sb         $0, 0xAC6($17)
      sb         $0, 0xAC7($17)
      sb         $0, 0xAC8($17)
      sb         $0, 0xAC9($17)
      sb         $0, 0xACA($17)
      sb         $0, 0xACB($17)
      sb         $0, 0xACC($17)
      sb         $0, 0xACD($17)
      sb         $0, 0xACE($17)
      sb         $0, 0xACF($17)
      sb         $0, 0xAD1($17)
      sb         $0, 0xAD2($17)
      sb         $0, 0xAD3($17)
      sb         $0, 0xAD4($17)
      sw         $0, 0x20($17)
      sw         $0, 0x18($17)
      sw         $0, 0x490($17)
      sw         $0, 0x494($17)
      sw         $0, 0x498($17)
      sw         $0, 0x49C($17)
      sw         $0, 0x4A0($17)
      sw         $0, 0x2B8($17)
      sw         $0, 0x8($17)
      sw         $2, 0x484($17)
      addiu      $2, $0, 0x1
      sw         $0, 0xC($17)
      sw         $0, 0x2C0($17)
      sw         $0, 0x4A8($17)
      jal        func_80074C68
       sw        $2, 0x4AC($17)
      jal        func_8006E2B4
       nop
      beqz       $2, .L8006E500
       addiu     $4, $2, 0x34
      jal        func_80063060
       sw        $2, 0x0($17)
      lui        $16, %hi(D_800ED820)
      addiu      $16, $16, %lo(D_800ED820)
      addu       $4, $16, $0
      jal        func_80017780
       sw        $2, 0x47C($17)
      addu       $5, $16, $0
      addu       $6, $2, $0
      lw         $4, 0x0($17)
      addiu      $7, $0, 0x1
      jal        func_8006E520
       sw        $2, 0x480($17)
      bnez       $2, .L8006E50C
       addu      $2, $17, $0
  .L8006E500:
      jal        func_80052540
       addu      $4, $17, $0
  .L8006E508:
      addu       $2, $0, $0
  .L8006E50C:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006E3E0

.globl func_8006E520
.ent func_8006E520
func_8006E520:
      addiu      $29, $29, -0x18
      addu       $2, $4, $0
      addiu      $4, $2, 0x34
      sw         $31, 0x10($29)
      lw         $2, 0x40($2)
      lw         $2, 0xC($2)
      jalr       $2
       andi      $7, $7, 0xFF
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006E520

.globl func_8006E54C
.ent func_8006E54C
func_8006E54C:
      addiu      $29, $29, -0x50
      sw         $18, 0x38($29)
      addu       $18, $4, $0
      sw         $20, 0x40($29)
      addiu      $20, $0, 0x1
      sw         $19, 0x3C($29)
      sw         $31, 0x48($29)
      sw         $21, 0x44($29)
      sw         $17, 0x34($29)
      sw         $16, 0x30($29)
      lbu        $2, 0xAC9($18)
      lw         $21, 0x0($18)
      beqz       $2, .L8006E58C
       addu      $19, $5, $0
      jal        func_8006C2C4
       nop
  .L8006E58C:
      andi       $3, $19, 0xFF
      addiu      $2, $0, 0x22
      bne        $3, $2, .L8006E5C8
       addu      $4, $18, $0
      lw         $5, 0x18($18)
      addiu      $16, $21, 0x34
      jal        func_8006E240
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8006E5C8
       addu      $4, $18, $0
      lw         $5, 0x18($18)
      jal        func_8006E1E4
       addu      $4, $16, $0
      addu       $4, $18, $0
  .L8006E5C8:
      andi       $16, $19, 0xFF
      jal        func_8006E088
       addu      $5, $16, $0
      lbu        $6, 0xAD1($18)
      lw         $2, 0x18($18)
      sb         $0, 0xACF($18)
      sw         $2, 0x1C($18)
      lw         $4, 0x44($21)
      jal        func_800583D0
       addu      $5, $16, $0
      addu       $17, $2, $0
      beql       $17, $0, .L8006EBF0
.end func_8006E54C

.globl func_8006E5F8
.ent func_8006E5F8
func_8006E5F8:
      addiu      $20, $0, -0x5
      sb         $19, 0x10($17)
      jal        func_80077960
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L8006E618
       addiu     $2, $0, 0xD
      lbu        $2, 0xAC0($18)
  .L8006E618:
      sb         $2, 0x11($17)
      addu       $4, $18, $0
      jal        func_8006DC84
       addiu     $5, $29, 0x28
      addu       $4, $2, $0
      beqz       $4, .L8006E660
       addiu     $2, $0, 0x24
      lbu        $3, 0x10($4)
      bne        $3, $2, .L8006E660
       nop
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x22($2)
      beqz       $2, .L8006E660
       nop
      lhu        $2, 0x2($17)
      ori        $2, $2, 0x800
      sh         $2, 0x2($17)
  .L8006E660:
      lbu        $2, 0xACE($18)
      beqz       $2, .L8006E678
       nop
      lhu        $2, 0x2($17)
      ori        $2, $2, 0x800
      sh         $2, 0x2($17)
  .L8006E678:
      lbu        $2, 0xAD1($18)
      beqz       $2, .L8006E6DC
       addu      $4, $17, $0
      lhu        $2, 0x2($17)
      addiu      $5, $0, 0x3
      ori        $2, $2, 0x2
      jal        func_80058268
       sh        $2, 0x2($17)
      addu       $4, $17, $0
      lw         $3, 0x2A8($18)
      addiu      $5, $0, 0x3
      jal        func_80058268
       sw        $3, 0x0($2)
      addu       $4, $17, $0
      lhu        $3, 0x2AE($18)
      addiu      $5, $0, 0x3
      jal        func_80058268
       sw        $3, 0x4($2)
      addu       $4, $17, $0
      lw         $3, 0x2B0($18)
      addiu      $5, $0, 0x3
      jal        func_80058268
       sw        $3, 0x8($2)
      lhu        $3, 0x2B6($18)
      sw         $3, 0xC($2)
  .L8006E6DC:
      lbu        $2, 0xAD2($18)
      beqz       $2, .L8006E6F4
       nop
      lhu        $2, 0x2($17)
      ori        $2, $2, 0x20
      sh         $2, 0x2($17)
  .L8006E6F4:
      lbu        $2, 0x4B4($18)
      beqz       $2, .L8006E770
       andi      $3, $19, 0xFF
      slti       $2, $3, 0x3
      beqz       $2, .L8006E778
       addiu     $2, $0, 0x1
      beqz       $3, .L8006E778
       addu      $4, $17, $0
      lhu        $2, 0x2($17)
      addiu      $5, $0, 0x6
      ori        $2, $2, 0x4
      jal        func_80058268
       sh        $2, 0x2($17)
      addiu      $4, $21, 0x34
      jal        func_80063060
       addu      $16, $2, $0
      addu       $4, $21, $0
      addiu      $5, $18, 0x4B4
      addu       $6, $0, $0
      addiu      $7, $0, 0x1
      jal        func_8006E520
       sw        $2, 0x0($16)
      addu       $16, $2, $0
      bnez       $16, .L8006E760
       addu      $4, $17, $0
      j          .L8006EBF0
       addiu     $20, $0, -0x5
  .L8006E760:
      jal        func_80058268
       addiu     $5, $0, 0x6
      sw         $16, 0x4($2)
      sb         $0, 0x4B4($18)
  .L8006E770:
      andi       $3, $19, 0xFF
      addiu      $2, $0, 0x1
  .L8006E778:
      beq        $3, $2, .L8006E790
       addiu     $2, $0, 0x1C
      beq        $3, $2, .L8006E790
       addiu     $2, $0, 0x18
      bne        $3, $2, .L8006E990
       andi      $3, $19, 0xFF
  .L8006E790:
      lbu        $2, 0xAC0($18)
      lw         $3, 0x9C($21)
      sll        $2, $2, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      lbu        $2, 0x6($2)
      sb         $2, 0x20($29)
      lw         $2, 0x3F4($18)
      blez       $2, .L8006E858
       addiu     $2, $2, -0x1
      sll        $2, $2, 3
      addu       $2, $18, $2
      lbu        $2, 0x2F8($2)
      andi       $2, $2, 0x1
      beqz       $2, .L8006E7FC
       nop
      jal        func_8006D95C
       addu      $4, $18, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L8006E7FC
       nop
      lw         $2, 0x3F4($18)
      addiu      $2, $2, -0x1
      sll        $2, $2, 3
      addu       $2, $18, $2
      lbu        $2, 0x2F9($2)
      sb         $2, 0x20($29)
  .L8006E7FC:
      lw         $2, 0x3F4($18)
      addiu      $2, $2, -0x1
      sll        $2, $2, 3
      addu       $2, $18, $2
      lbu        $2, 0x2F8($2)
      andi       $2, $2, 0x2
      beqz       $2, .L8006E874
       andi      $3, $19, 0xFF
      lhu        $2, 0x2($17)
      ori        $2, $2, 0x40
      sh         $2, 0x2($17)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8006E874
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x3F4($18)
      addiu      $3, $3, -0x1
      sll        $3, $3, 3
      addu       $3, $18, $3
      lw         $3, 0x2F4($3)
      j          .L8006E874
       sw        $3, 0x4($2)
  .L8006E858:
      jal        func_8006D95C
       addu      $4, $18, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L8006E874
       nop
      lbu        $2, 0x487($18)
      sb         $2, 0x20($29)
  .L8006E874:
      lbu        $2, 0xAC1($18)
      sb         $2, 0x21($29)
      lw         $4, 0x488($18)
      bgtz       $4, .L8006E894
       nop
      lw         $2, 0x48C($18)
      blez       $2, .L8006E908
       andi      $3, $19, 0xFF
  .L8006E894:
      lw         $3, 0x48C($18)
      addu       $16, $4, $0
      slt        $2, $16, $3
      bnel       $2, $0, .L8006E8A8
       addu      $16, $3, $0
  .L8006E8A8:
      slti       $2, $16, 0x4
      beql       $2, $0, .L8006E8B4
       addiu     $16, $0, 0x3
  .L8006E8B4:
      jal        func_8006D95C
       addu      $4, $18, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8006E8D4
       nop
      lbu        $2, 0x20($29)
      j          .L8006E8DC
       addu      $2, $2, $16
  .L8006E8D4:
      lbu        $2, 0x20($29)
      subu       $2, $2, $16
  .L8006E8DC:
      sb         $2, 0x20($29)
      lbu        $2, 0x20($29)
      bnez       $2, .L8006E8F4
       sltiu     $2, $2, 0xE
      j          .L8006E900
       addiu     $2, $0, 0x1
  .L8006E8F4:
      bnez       $2, .L8006E908
       andi      $3, $19, 0xFF
      addiu      $2, $0, 0xD
  .L8006E900:
      sb         $2, 0x20($29)
      andi       $3, $19, 0xFF
  .L8006E908:
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8006E960
       addiu     $2, $0, 0x1C
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      lb         $8, 0x20($29)
      lb         $9, 0x21($29)
      sb         $8, 0x0($2)
      sb         $9, 0x1($2)
      jal        func_80058268
       addiu     $5, $0, 0x1
      addiu      $4, $21, 0x34
      jal        func_80063060
       addu      $16, $2, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x1
      jal        func_80058268
       sw        $2, 0x0($16)
      j          .L8006E98C
       sw        $0, 0x4($2)
  .L8006E960:
      beq        $3, $2, .L8006E970
       addiu     $2, $0, 0x18
      bne        $3, $2, .L8006E990
       andi      $3, $19, 0xFF
  .L8006E970:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lb         $8, 0x20($29)
      lb         $9, 0x21($29)
      sb         $8, 0x0($2)
      sb         $9, 0x1($2)
  .L8006E98C:
      andi       $3, $19, 0xFF
  .L8006E990:
      addiu      $2, $0, 0x1C
      bnel       $3, $2, .L8006EA7C
       sw        $17, 0x18($18)
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x2B8($18)
      addu       $4, $17, $0
      addiu      $3, $3, -0x1
      sll        $3, $3, 4
      addu       $3, $18, $3
      lw         $3, 0x30($3)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $3, 0x8($2)
      lbu        $3, 0x487($18)
      sb         $3, 0x0($2)
      lw         $2, 0x3F4($18)
      blez       $2, .L8006EA64
       addiu     $2, $2, -0x1
      sll        $2, $2, 3
      addu       $2, $18, $2
      lbu        $2, 0x2F8($2)
      andi       $2, $2, 0x1
      beqz       $2, .L8006EA18
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x3F4($18)
      addiu      $3, $3, -0x1
      sll        $3, $3, 3
      addu       $3, $18, $3
      lbu        $3, 0x2F9($3)
      sb         $3, 0x0($2)
  .L8006EA18:
      lw         $2, 0x3F4($18)
      addiu      $2, $2, -0x1
      sll        $2, $2, 3
      addu       $2, $18, $2
      lbu        $2, 0x2F8($2)
      andi       $2, $2, 0x2
      beqz       $2, .L8006EA64
       addu      $4, $17, $0
      lhu        $2, 0x2($17)
      addiu      $5, $0, 0x2
      ori        $2, $2, 0x40
      jal        func_80058268
       sh        $2, 0x2($17)
      lw         $3, 0x3F4($18)
      addiu      $3, $3, -0x1
      sll        $3, $3, 3
      addu       $3, $18, $3
      lw         $3, 0x2F4($3)
      sw         $3, 0x4($2)
  .L8006EA64:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $3, 0xAC1($18)
      sb         $3, 0x1($2)
      sw         $17, 0x18($18)
  .L8006EA7C:
      lbu        $3, 0x10($17)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8006EB10
       nop
      lhu        $2, 0x0($17)
      lw         $16, 0xC($17)
      andi       $2, $2, 0x40
      beqz       $2, .L8006EB10
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x6
      lw         $2, 0x4($2)
      beqz       $2, .L8006EB10
       nop
      beqz       $16, .L8006EAF8
       addu      $4, $18, $0
      lhu        $2, 0x0($16)
      andi       $2, $2, 0x40
      beqz       $2, .L8006EAF4
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x6
      addu       $4, $17, $0
      addiu      $5, $0, 0x6
      jal        func_80058268
       addu      $16, $2, $0
      lw         $3, 0x0($16)
      lw         $2, 0x0($2)
      beq        $3, $2, .L8006EB10
       nop
  .L8006EAF4:
      addu       $4, $18, $0
  .L8006EAF8:
      addu       $5, $17, $0
      jal        func_80064EE4
       addu      $6, $0, $0
      addu       $20, $2, $0
      beql       $20, $0, .L8006EB10
       addiu     $20, $0, 0x1
  .L8006EB10:
      lhu        $2, 0x2($17)
      andi       $2, $2, 0x2
      beqz       $2, .L8006EBF0
       lui       $3, (0x1080000 >> 16)
      lw         $2, 0x0($17)
      and        $2, $2, $3
      bne        $2, $3, .L8006EBBC
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $2, 0x4($2)
      beqz       $2, .L8006EBBC
       nop
      lw         $4, 0xC($17)
      beqz       $4, .L8006EB88
       nop
      lhu        $2, 0x0($4)
      andi       $2, $2, 0x8
      beqz       $2, .L8006EB88
       nop
      jal        func_80058268
       addiu     $5, $0, 0x3
      addu       $4, $17, $0
      addiu      $5, $0, 0x3
      jal        func_80058268
       addu      $16, $2, $0
      lw         $3, 0x0($16)
      lw         $2, 0x0($2)
      beq        $3, $2, .L8006EBBC
       nop
  .L8006EB88:
      lw         $2, 0x2E0($18)
      sw         $2, 0x10($29)
      lw         $2, 0x2E4($18)
      addu       $4, $18, $0
      sw         $0, 0x18($29)
      sw         $2, 0x14($29)
      lw         $6, 0x2D4($18)
      lw         $7, 0x2DC($18)
      jal        func_80064FB8
       addu      $5, $17, $0
      addu       $20, $2, $0
      beql       $20, $0, .L8006EBBC
       addiu     $20, $0, 0x1
  .L8006EBBC:
      lw         $4, 0x2D4($18)
      jal        func_80052540
       nop
      lw         $4, 0x2DC($18)
      jal        func_80052540
       sw        $0, 0x2D4($18)
      lw         $4, 0x2E0($18)
      jal        func_80052540
       sw        $0, 0x2DC($18)
      lw         $4, 0x2E4($18)
      jal        func_80052540
       sw        $0, 0x2E0($18)
      sw         $0, 0x2E4($18)
  .L8006EBF0:
      addu       $2, $20, $0
      lw         $31, 0x48($29)
      lw         $21, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_8006E5F8

.globl func_8006EC18
.ent func_8006EC18
func_8006EC18:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      jal        func_8006E54C
       addiu     $5, $0, 0x5
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      beql       $3, $2, .L8006EC40
       sb        $3, 0xAD0($16)
  .L8006EC40:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006EC18

.globl func_8006EC54
.ent func_8006EC54
func_8006EC54:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x18($29)
      jal        func_8006E54C
       addiu     $5, $0, 0x2E
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8006ECF4
       addu      $2, $3, $0
      beqz       $16, .L8006ECF4
       sb        $3, 0xAD0($17)
      addu       $4, $16, $0
      lui        $5, %hi(D_800ED2C0)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2C0)
      bnez       $2, .L8006ECB0
       addu      $4, $16, $0
      addu       $4, $17, $0
      j          .L8006ECE4
       addiu     $5, $0, 0x1F
  .L8006ECB0:
      lui        $5, %hi(D_800ED318)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED318)
      bnez       $2, .L8006ECD0
       addu      $4, $16, $0
      addu       $4, $17, $0
      j          .L8006ECE4
       addiu     $5, $0, 0x20
  .L8006ECD0:
      lui        $5, %hi(D_800ED278)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED278)
      addu       $4, $17, $0
      addiu      $5, $0, 0x21
  .L8006ECE4:
      jal        func_8006E54C
       nop
      addu       $3, $2, $0
      addu       $2, $3, $0
  .L8006ECF4:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006EC54

.globl func_8006ED08
.ent func_8006ED08
func_8006ED08:
      addiu      $29, $29, -0x38
      sw         $17, 0x2C($29)
      addu       $17, $4, $0
      sw         $18, 0x30($29)
      addu       $18, $5, $0
      sw         $31, 0x34($29)
      beqz       $18, .L8006EDD0
       sw        $16, 0x28($29)
      sb         $0, 0xACF($17)
      jal        func_8006DCEC
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8006EDA4
       addu      $16, $18, $0
      lbu        $2, 0x0($16)
      beqz       $2, .L8006EDA8
       sll       $2, $2, 24
  .L8006ED4C:
      bltz       $2, .L8006ED6C
       addu      $4, $17, $0
      lbu        $4, 0x0($16)
      jal        func_800126C0
       nop
      bnez       $2, .L8006ED98
       addiu     $16, $16, 0x1
      addu       $4, $17, $0
  .L8006ED6C:
      addu       $5, $0, $0
      addu       $6, $5, $0
      addu       $7, $5, $0
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      jal        func_80073724
       sw        $0, 0x20($29)
      j          .L8006EDA8
       addu      $16, $18, $0
  .L8006ED98:
      lbu        $2, 0x0($16)
      bnez       $2, .L8006ED4C
       sll       $2, $2, 24
  .L8006EDA4:
      addu       $16, $18, $0
  .L8006EDA8:
      lbu        $2, 0x0($16)
      beqz       $2, .L8006EDD4
       addiu     $2, $0, 0x1
      addu       $4, $17, $0
  .L8006EDB8:
      lbu        $5, 0x0($16)
      jal        func_8006EDEC
       addiu     $16, $16, 0x1
      lbu        $2, 0x0($16)
      bnez       $2, .L8006EDB8
       addu      $4, $17, $0
  .L8006EDD0:
      addiu      $2, $0, 0x1
  .L8006EDD4:
      lw         $31, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8006ED08

.globl func_8006EDEC
.ent func_8006EDEC
func_8006EDEC:
      addiu      $29, $29, -0x40
      sw         $17, 0x34($29)
      addu       $17, $4, $0
      sw         $31, 0x3C($29)
      sw         $18, 0x38($29)
      sw         $16, 0x30($29)
      sb         $5, 0x28($29)
      lbu        $2, 0xAC4($17)
      beqz       $2, .L8006EE84
       addiu     $18, $0, 0x1
      lw         $4, 0x2BC($17)
      slti       $2, $4, 0x200
      beqz       $2, .L8006F1B0
       andi      $3, $5, 0xFF
      addiu      $2, $0, 0xD
      beq        $3, $2, .L8006F1B0
       slti      $2, $3, 0xE
      bnez       $2, .L8006EE58
       addiu     $2, $0, 0xA
      addiu      $2, $0, 0x20
      bne        $3, $2, .L8006EE60
       nop
      beqz       $4, .L8006F1B0
       addu      $2, $17, $4
      sb         $5, 0x6B5($2)
      j          .L8006EE74
       addu      $2, $4, $18
  .L8006EE58:
      beq        $3, $2, .L8006F1B4
       addu      $2, $18, $0
  .L8006EE60:
      lw         $2, 0x2BC($17)
      lbu        $3, 0x28($29)
      addu       $4, $17, $2
      addiu      $2, $2, 0x1
      sb         $3, 0x6B5($4)
  .L8006EE74:
      sw         $2, 0x2BC($17)
      addu       $2, $17, $2
      j          .L8006F1B0
       sb        $0, 0x6B5($2)
  .L8006EE84:
      lbu        $2, 0xAC9($17)
      lbu        $3, 0xAD3($17)
      or         $2, $2, $3
      beqz       $2, .L8006EF08
       addiu     $2, $0, 0xA
      andi       $5, $5, 0xFF
      beq        $5, $2, .L8006EEAC
       addiu     $16, $0, 0xD
      bne        $5, $16, .L8006EEBC
       nop
  .L8006EEAC:
      jal        func_8008DE88
       addu      $4, $17, $0
      j          .L8006F1B4
       addu      $2, $18, $0
  .L8006EEBC:
      jal        func_8008DE80
       nop
      andi       $2, $2, 0xFF
      beqz       $2, .L8006EEF0
       nop
      lbu        $2, 0xAB7($17)
      bne        $2, $16, .L8006EEE8
       nop
      lw         $4, 0x10($17)
      jal        func_80051700
       addiu     $5, $0, 0xA
  .L8006EEE8:
      lbu        $2, 0x28($29)
      sb         $2, 0xAB7($17)
  .L8006EEF0:
      lw         $4, 0x10($17)
      lbu        $5, 0x28($29)
      jal        func_80051700
       nop
      j          .L8006F1B4
       addu      $2, $18, $0
  .L8006EF08:
      lw         $3, 0x0($17)
      lbu        $2, 0xAC0($17)
      lw         $3, 0x9C($3)
      sll        $2, $2, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      lbu        $2, 0x9($2)
      bnez       $2, .L8006F024
       sll       $2, $5, 24
      andi       $5, $5, 0xFF
      addiu      $2, $0, 0xA
      beq        $5, $2, .L8006EF80
       slti      $2, $5, 0xB
      beqz       $2, .L8006EF54
       addiu     $2, $0, 0x9
      beq        $5, $2, .L8006EF70
       addu      $4, $17, $0
      j          .L8006EFAC
       nop
  .L8006EF54:
      slti       $2, $5, 0xE
      beqz       $2, .L8006EFAC
       slti      $2, $5, 0xC
      beqz       $2, .L8006EF80
       nop
      j          .L8006EFAC
       nop
  .L8006EF70:
      jal        func_8006E54C
       addiu     $5, $0, 0x18
      j          .L8006F1B0
       addu      $18, $2, $0
  .L8006EF80:
      lbu        $3, 0xAB7($17)
      addiu      $2, $0, 0xD
      bne        $3, $2, .L8006EF9C
       addiu     $2, $0, 0xA
      lbu        $3, 0x28($29)
      beq        $3, $2, .L8006F1A8
       nop
  .L8006EF9C:
      jal        func_8006EC18
       addu      $4, $17, $0
      j          .L8006F1A8
       nop
  .L8006EFAC:
      lbu        $2, 0xACF($17)
      bnez       $2, .L8006EFD4
       addu      $4, $17, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x1
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bne        $18, $2, .L8006F1B4
       addu      $2, $18, $0
      sb         $18, 0xACF($17)
  .L8006EFD4:
      lw         $4, 0x0($17)
      addiu      $5, $29, 0x28
      addiu      $6, $0, 0x1
      jal        func_8006E520
       addu      $7, $6, $0
      beql       $2, $0, .L8006F1B0
       addiu     $18, $0, -0x5
      lw         $4, 0x18($17)
      jal        func_80058268
       addiu     $5, $0, 0x1
      addiu      $5, $0, 0x1
      lw         $4, 0x18($17)
      jal        func_80058268
       addu      $16, $2, $0
      lw         $2, 0x4($2)
      lbu        $3, 0x28($29)
      addiu      $2, $2, 0x1
      sw         $2, 0x4($16)
      j          .L8006F1B0
.end func_8006EDEC

.globl func_8006F020
.ent func_8006F020
func_8006F020:
      sb         $3, 0xAB7($17)
  .L8006F024:
      bltz       $2, .L8006F044
       nop
      lbu        $4, 0x28($29)
      jal        func_800126C0
       nop
      beqz       $2, .L8006F044
       addiu     $2, $0, 0x20
      sb         $2, 0x28($29)
  .L8006F044:
      lbu        $3, 0x28($29)
      addiu      $2, $0, 0x20
      bne        $3, $2, .L8006F0F8
       nop
      lbu        $2, 0xAD0($17)
      bnez       $2, .L8006F1A8
       nop
      lbu        $2, 0xAB7($17)
      bne        $2, $3, .L8006F0BC
       nop
      lbu        $2, 0xACF($17)
      bnez       $2, .L8006F1A8
       addu      $4, $17, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x1
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bne        $18, $2, .L8006F1B4
       addu      $2, $18, $0
      addiu      $5, $29, 0x28
      addiu      $6, $0, 0x1
      lw         $4, 0x0($17)
      addu       $7, $6, $0
      sb         $18, 0xACF($17)
  .L8006F0A4:
      jal        func_8006E520
       nop
      bnez       $2, .L8006F180
       nop
      j          .L8006F1A8
       addiu     $18, $0, -0x5
  .L8006F0BC:
      lbu        $2, 0xACF($17)
      bnez       $2, .L8006F0E4
       addu      $4, $17, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x1
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bne        $18, $2, .L8006F1B4
       addu      $2, $18, $0
      sb         $18, 0xACF($17)
  .L8006F0E4:
      lw         $4, 0x0($17)
      addiu      $5, $29, 0x28
      addiu      $6, $0, 0x1
      j          .L8006F0A4
       addu      $7, $6, $0
  .L8006F0F8:
      lbu        $2, 0xACF($17)
      bnez       $2, .L8006F160
       addiu     $5, $29, 0x28
      jal        func_8006DCEC
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8006F13C
       addu      $4, $17, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      addu       $7, $5, $0
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      jal        func_80073724
       sw        $0, 0x20($29)
  .L8006F13C:
      addu       $4, $17, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x1
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bne        $18, $2, .L8006F1B4
       addu      $2, $18, $0
      sb         $18, 0xACF($17)
      addiu      $5, $29, 0x28
  .L8006F160:
      addiu      $6, $0, 0x1
      lw         $4, 0x0($17)
      addu       $7, $6, $0
      sb         $0, 0xAD0($17)
      jal        func_8006E520
       sb        $0, 0xACA($17)
      beql       $2, $0, .L8006F1A8
       addiu     $18, $0, -0x5
  .L8006F180:
      lw         $4, 0x18($17)
      jal        func_80058268
       addiu     $5, $0, 0x1
      addiu      $5, $0, 0x1
      lw         $4, 0x18($17)
      jal        func_80058268
       addu      $16, $2, $0
      lw         $2, 0x4($2)
      addiu      $2, $2, 0x1
      sw         $2, 0x4($16)
  .L8006F1A8:
      lbu        $2, 0x28($29)
      sb         $2, 0xAB7($17)
  .L8006F1B0:
      addu       $2, $18, $0
  .L8006F1B4:
      lw         $31, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_8006F020

.globl func_8006F1CC
.ent func_8006F1CC
func_8006F1CC:
      addiu      $29, $29, -0x38
      sw         $21, 0x24($29)
      lw         $21, 0x48($29)
      sw         $22, 0x28($29)
      lw         $22, 0x4C($29)
      sw         $30, 0x30($29)
      lw         $30, 0x50($29)
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $20, 0x20($29)
      addu       $20, $7, $0
      sw         $18, 0x18($29)
      sw         $31, 0x34($29)
      sw         $23, 0x2C($29)
      lbu        $2, 0xAD1($16)
      lw         $23, 0x54($29)
      beqz       $2, .L8006F22C
       addiu     $18, $0, 0x1
      jal        func_8006F414
       nop
  .L8006F22C:
      addu       $4, $16, $0
      jal        func_8006E088
       addiu     $5, $0, 0x38
      beqz       $17, .L8006F2F4
       nop
      lw         $4, 0x0($16)
      sb         $18, 0xAD1($16)
      sb         $0, 0xACF($16)
      jal        func_80063060
       addiu     $4, $4, 0x34
      addu       $5, $17, $0
      addu       $6, $0, $0
      lw         $4, 0x0($16)
      addu       $7, $6, $0
      jal        func_8006E520
       sw        $2, 0x2A8($16)
      beqz       $2, .L8006F3B8
       sw        $2, 0x2AC($16)
      lw         $2, 0x3F4($16)
      sll        $2, $2, 3
      addu       $2, $16, $2
      sb         $0, 0x2F8($2)
      lw         $3, 0x3F4($16)
      blez       $3, .L8006F2DC
       addiu     $2, $3, -0x1
      sll        $2, $2, 3
      addu       $2, $16, $2
      lbu        $2, 0x2F8($2)
      andi       $2, $2, 0x1
      beqz       $2, .L8006F2D8
       sll       $3, $3, 3
      addu       $3, $16, $3
      lbu        $2, 0x2F8($3)
      ori        $2, $2, 0x1
      sb         $2, 0x2F8($3)
      lw         $2, 0x3F4($16)
      sll        $3, $2, 3
      addiu      $2, $2, -0x1
      sll        $2, $2, 3
      addu       $2, $16, $2
      lbu        $2, 0x2F9($2)
      addu       $3, $16, $3
      sb         $2, 0x2F9($3)
  .L8006F2D8:
      lw         $3, 0x3F4($16)
  .L8006F2DC:
      slti       $2, $3, 0x20
      beqz       $2, .L8006F2F0
       addiu     $2, $3, 0x1
      j          .L8006F2F4
       sw        $2, 0x3F4($16)
  .L8006F2F0:
      addiu      $18, $0, 0x1
  .L8006F2F4:
      beqz       $19, .L8006F338
       addu      $5, $19, $0
      lbu        $3, 0x0($5)
      addiu      $2, $0, 0x23
      bne        $3, $2, .L8006F320
       nop
      addu       $3, $2, $0
      addiu      $5, $5, 0x1
  .L8006F314:
      lbu        $2, 0x0($5)
      beql       $2, $3, .L8006F314
       addiu     $5, $5, 0x1
  .L8006F320:
      lbu        $2, 0x0($5)
      beqz       $2, .L8006F334
       addiu     $4, $16, 0x4B4
      jal        func_80052310
       addiu     $6, $0, 0x200
  .L8006F334:
      sb         $0, 0xACF($16)
  .L8006F338:
      beqz       $20, .L8006F370
       nop
      lw         $4, 0x0($16)
      sb         $0, 0xACF($16)
      jal        func_80063060
       addiu     $4, $4, 0x34
      addu       $5, $20, $0
      addu       $6, $0, $0
      lw         $4, 0x0($16)
      addu       $7, $6, $0
      jal        func_8006E520
       sw        $2, 0x2B0($16)
      beqz       $2, .L8006F3B8
       sw        $2, 0x2B4($16)
  .L8006F370:
      beqz       $21, .L8006F388
       nop
      jal        func_800523C0
       addu      $4, $21, $0
      beqz       $2, .L8006F3B8
       sw        $2, 0x2D4($16)
  .L8006F388:
      beqz       $22, .L8006F3A0
       nop
      jal        func_800523C0
       addu      $4, $22, $0
      beqz       $2, .L8006F3B8
       sw        $2, 0x2DC($16)
  .L8006F3A0:
      beqz       $23, .L8006F3C0
       nop
      jal        func_800523C0
       addu      $4, $23, $0
      bnez       $2, .L8006F3C0
       sw        $2, 0x2E4($16)
  .L8006F3B8:
      j          .L8006F3E4
       addiu     $2, $0, -0x5
  .L8006F3C0:
      beql       $30, $0, .L8006F3E4
       addu      $2, $18, $0
      jal        func_800523C0
       addu      $4, $30, $0
      addu       $3, $2, $0
      sw         $3, 0x2E0($16)
      beqz       $3, .L8006F3E4
       addiu     $2, $0, -0x5
      addu       $2, $18, $0
  .L8006F3E4:
      lw         $31, 0x34($29)
      lw         $30, 0x30($29)
      lw         $23, 0x2C($29)
      lw         $22, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8006F1CC

.globl func_8006F414
.ent func_8006F414
func_8006F414:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lbu        $2, 0xAD1($16)
      beqz       $2, .L8006F4B8
       nop
      lw         $2, 0x3F4($16)
      sb         $0, 0xAD1($16)
      sw         $0, 0x2A8($16)
      sw         $0, 0x2AC($16)
      sw         $0, 0x2B0($16)
      sw         $0, 0x2B4($16)
      blez       $2, .L8006F458
       sb        $0, 0xACF($16)
      addiu      $2, $2, -0x1
      sw         $2, 0x3F4($16)
  .L8006F458:
      lw         $4, 0x2D4($16)
      beqz       $4, .L8006F470
       nop
      jal        func_80052540
       nop
      sw         $0, 0x2D4($16)
  .L8006F470:
      lw         $4, 0x2DC($16)
      beqz       $4, .L8006F488
       nop
      jal        func_80052540
       nop
      sw         $0, 0x2DC($16)
  .L8006F488:
      lw         $4, 0x2E4($16)
      beqz       $4, .L8006F4A0
       nop
      jal        func_80052540
       nop
      sw         $0, 0x2E4($16)
  .L8006F4A0:
      lw         $4, 0x2E0($16)
      beqz       $4, .L8006F4B8
       nop
      jal        func_80052540
       nop
      sw         $0, 0x2E0($16)
  .L8006F4B8:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006F414

.globl func_8006F4CC
.ent func_8006F4CC
func_8006F4CC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8006E54C
       addiu     $5, $0, 0x36
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006F4CC

.globl func_8006F4E8
.ent func_8006F4E8
func_8006F4E8:
      addiu      $29, $29, -0x18
      addiu      $2, $0, 0x1
      addiu      $5, $0, 0x37
      sw         $31, 0x10($29)
      jal        func_8006E54C
       sb        $2, 0xAD0($4)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006F4E8

.globl func_8006F50C
.ent func_8006F50C
func_8006F50C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8006E54C
       addiu     $5, $0, 0x1D
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006F50C

.globl func_8006F528
.ent func_8006F528
func_8006F528:
      addiu      $29, $29, -0x18
      addiu      $2, $0, 0x1
      addiu      $5, $0, 0x1E
      sw         $31, 0x10($29)
      jal        func_8006E54C
       sb        $2, 0xAD0($4)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006F528

.globl func_8006F54C
.ent func_8006F54C
func_8006F54C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8006E54C
       addiu     $5, $0, 0x27
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006F54C

.globl func_8006F568
.ent func_8006F568
func_8006F568:
      addiu      $29, $29, -0x18
      addiu      $2, $0, 0x1
      addiu      $5, $0, 0x28
      sw         $31, 0x10($29)
      jal        func_8006E54C
       sb        $2, 0xAD0($4)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006F568

.globl func_8006F58C
.ent func_8006F58C
func_8006F58C:
      addiu      $2, $0, 0x1
      sb         $2, 0xAD2($4)
      addiu      $2, $0, 0x1
      jr         $31
       sb        $0, 0xACF($4)
.end func_8006F58C

.globl func_8006F5A0
.ent func_8006F5A0
func_8006F5A0:
      addiu      $2, $0, 0x1
      sb         $0, 0xAD2($4)
      jr         $31
       sb        $0, 0xACF($4)
.end func_8006F5A0

.globl func_8006F5B0
.ent func_8006F5B0
func_8006F5B0:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      addiu      $5, $0, 0x2
      sw         $31, 0x24($29)
      sw         $18, 0x18($29)
      jal        func_80058268
       sw        $16, 0x10($29)
      lw         $2, 0x8($2)
      bnez       $2, .L8006F610
       addiu     $18, $0, 0x1
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addiu      $4, $0, 0x80
      addiu      $5, $0, 0x7
      addu       $6, $5, $0
      jal        func_800565B0
       addu      $16, $2, $0
      sw         $2, 0x8($16)
  .L8006F610:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x8($2)
      addu       $5, $19, $0
      addu       $6, $20, $0
      jal        func_80056BFC
       addu      $7, $0, $0
      bltzl      $2, .L8006F638
       addiu     $18, $0, -0x5
  .L8006F638:
      addu       $2, $18, $0
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8006F5B0

.globl func_8006F65C
.ent func_8006F65C
func_8006F65C:
      addiu      $29, $29, -0x30
      sw         $16, 0x10($29)
      lw         $16, 0x40($29)
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $19, 0x1C($29)
      addu       $19, $7, $0
      sw         $21, 0x24($29)
      addiu      $21, $0, 0x1
      beqz       $17, .L8006F6EC
       sw        $31, 0x28($29)
      lbu        $2, 0x0($17)
      beqz       $2, .L8006F6EC
       nop
  .L8006F6A4:
      addu       $4, $20, $0
  .L8006F6A8:
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $4, 0x0($18)
      addu       $16, $2, $0
      jal        func_80063060
       addiu     $4, $4, 0x34
      addu       $5, $17, $0
      addu       $6, $0, $0
      sw         $2, 0x0($16)
      lw         $4, 0x0($18)
      jal        func_8006E520
       addiu     $7, $0, 0x1
      addu       $16, $2, $0
      bnez       $16, .L8006F780
       addu      $4, $20, $0
      j          .L8006F7BC
       addiu     $21, $0, -0x5
  .L8006F6EC:
      beqz       $16, .L8006F730
       nop
      lbu        $2, 0x0($16)
      beqz       $2, .L8006F730
       lui       $2, %hi(D_800EC614)
      lbu        $5, %lo(D_800EC614)($2)
      jal        func_800563C0
       addu      $4, $16, $0
      addu       $3, $2, $0
      beqz       $3, .L8006F6A4
       addu      $17, $16, $0
      addiu      $3, $3, 0x1
      lbu        $2, 0x0($3)
      bnel       $2, $0, .L8006F6A4
       addu      $17, $3, $0
      j          .L8006F6A8
       addu      $4, $20, $0
  .L8006F730:
      beqz       $19, .L8006F798
       addu      $4, $20, $0
      lbu        $2, 0x0($19)
      beqz       $2, .L8006F798
       nop
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $4, 0x0($18)
      addu       $16, $2, $0
      jal        func_80063060
       addiu     $4, $4, 0x34
      addu       $5, $19, $0
      addu       $6, $0, $0
      sw         $2, 0x0($16)
      lw         $4, 0x0($18)
      jal        func_8006E520
       addiu     $7, $0, 0x1
      addu       $16, $2, $0
      beqz       $16, .L8006F790
       addu      $4, $20, $0
  .L8006F780:
      jal        func_80058268
       addiu     $5, $0, 0x1
      j          .L8006F7BC
       sw        $16, 0x4($2)
  .L8006F790:
      j          .L8006F7BC
       addiu     $21, $0, -0x5
  .L8006F798:
      jal        func_80058268
       addiu     $5, $0, 0x1
      addu       $4, $20, $0
      lw         $3, 0x47C($18)
      addiu      $5, $0, 0x1
      jal        func_80058268
       sw        $3, 0x0($2)
      lw         $3, 0x480($18)
      sw         $3, 0x4($2)
  .L8006F7BC:
      addu       $2, $21, $0
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8006F65C

.globl func_8006F7E4
.ent func_8006F7E4
func_8006F7E4:
      addiu      $29, $29, -0x48
      sw         $18, 0x28($29)
      lw         $18, 0x70($29)
      sw         $30, 0x40($29)
      lw         $30, 0x88($29)
      sw         $21, 0x34($29)
      addu       $21, $4, $0
      sw         $19, 0x2C($29)
      addu       $19, $5, $0
      sw         $22, 0x38($29)
      addu       $22, $6, $0
      sw         $16, 0x20($29)
      addu       $16, $7, $0
      sw         $20, 0x30($29)
      lw         $20, 0x8C($29)
      sw         $23, 0x3C($29)
      lw         $23, 0x90($29)
      lbu        $8, 0x97($29)
      addiu      $5, $0, 0x2
      sw         $31, 0x44($29)
      sw         $17, 0x24($29)
      jal        func_8006E54C
       sb        $8, 0x18($29)
      addiu      $3, $0, -0x5
      beq        $2, $3, .L8006FEAC
       addiu     $2, $0, 0x28
      lw         $17, 0x18($21)
      bne        $19, $2, .L8006F874
       addiu     $2, $0, 0x39
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $3, 0x18($2)
      ori        $3, $3, 0x20
      sb         $3, 0x18($2)
      addiu      $2, $0, 0x39
  .L8006F874:
      bne        $19, $2, .L8006F8CC
       addu      $4, $17, $0
      lw         $2, 0x4A4($21)
      sll        $2, $2, 2
      addu       $2, $21, $2
      sw         $17, 0x228($2)
      lw         $3, 0x4A4($21)
      slti       $2, $3, 0x20
      beqz       $2, .L8006F8A4
       addiu     $2, $3, 0x1
      sw         $2, 0x4A4($21)
      addu       $4, $17, $0
  .L8006F8A4:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      lbu        $3, 0x18($2)
      addiu      $5, $0, 0x2
      or         $3, $3, $5
      jal        func_80058268
       sb        $3, 0x18($2)
      sw         $0, 0xC($2)
      addu       $4, $17, $0
  .L8006F8CC:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $0, 0xC($2)
      addiu      $3, $0, 0x3
      beqz       $16, .L8006F918
       sb        $3, 0x1B($2)
      lbu        $2, 0x0($16)
      beqz       $2, .L8006F918
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $16, $0
      jal        func_80024000
       addu      $16, $2, $0
      j          .L8006F934
       sb        $2, 0x1C($16)
  .L8006F918:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $3, 0xAD1($21)
      sltu       $3, $0, $3
      sll        $3, $3, 1
      sb         $3, 0x1C($2)
  .L8006F934:
      beqz       $18, .L8006F964
       addu      $4, $17, $0
      lbu        $2, 0x0($18)
      beqz       $2, .L8006F964
       nop
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      jal        func_80024000
       addu      $16, $2, $0
      j          .L8006F970
       sh        $2, 0x14($16)
  .L8006F964:
      jal        func_80058268
       addiu     $5, $0, 0x2
      sh         $0, 0x14($2)
  .L8006F970:
      beqz       $20, .L8006F9A0
       addu      $4, $17, $0
      lbu        $2, 0x0($20)
      beqz       $2, .L8006F9A0
       nop
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $20, $0
      jal        func_80024000
       addu      $16, $2, $0
      j          .L8006F9AC
       sh        $2, 0x16($16)
  .L8006F9A0:
      jal        func_80058268
       addiu     $5, $0, 0x2
      sh         $0, 0x16($2)
  .L8006F9AC:
      addu       $4, $21, $0
      lw         $8, 0x64($29)
      lw         $6, 0x80($29)
      lw         $7, 0x5C($29)
      addu       $5, $17, $0
      jal        func_8006F65C
       sw        $8, 0x10($29)
      addu       $18, $2, $0
      bltz       $18, .L8006FEB0
       nop
      lbu        $2, 0x18($29)
      beqz       $2, .L8006F9EC
       nop
      lhu        $2, 0x2($17)
      ori        $2, $2, 0x8
      sh         $2, 0x2($17)
  .L8006F9EC:
      beqz       $22, .L8006FA90
       addu      $4, $22, $0
      lui        $5, %hi(D_800ED330)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED330)
      bnez       $2, .L8006FA1C
       addu      $4, $22, $0
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      j          .L8006FAA0
       addiu     $3, $0, 0x1
  .L8006FA1C:
      lui        $5, %hi(D_800ED2C8)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2C8)
      bnez       $2, .L8006FA44
       addu      $4, $22, $0
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      j          .L8006FAA0
       addiu     $3, $0, 0x2
  .L8006FA44:
      lui        $5, %hi(D_800ED2C0)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2C0)
      bnez       $2, .L8006FA6C
       addu      $4, $22, $0
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      j          .L8006FAA0
       addiu     $3, $0, 0x4
  .L8006FA6C:
      lui        $5, %hi(D_800ED318)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED318)
      bnez       $2, .L8006FA94
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      j          .L8006FAA0
       addiu     $3, $0, 0x5
  .L8006FA90:
      addu       $4, $17, $0
  .L8006FA94:
      jal        func_80058268
       addiu     $5, $0, 0x4
      addiu      $3, $0, 0x3
  .L8006FAA0:
      sb         $3, 0x0($2)
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x4
      beq        $3, $2, .L8006FAD8
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $2, $0
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x5
      bne        $3, $2, .L8006FB08
       nop
  .L8006FAD8:
      addiu      $4, $0, 0x8
      jal        func_80052504
       addu      $5, $0, $0
      addu       $3, $2, $0
      beqz       $3, .L8006FEB0
       addiu     $2, $0, -0x5
      sw         $17, 0x0($3)
      lw         $2, 0x0($21)
      lw         $2, 0xBC($2)
      sw         $2, 0x4($3)
      lw         $2, 0x0($21)
      sw         $3, 0xBC($2)
  .L8006FB08:
      beqz       $30, .L8006FB5C
       nop
      lbu        $2, 0x0($30)
      beqz       $2, .L8006FB5C
       addu      $4, $17, $0
      lhu        $2, 0x2($17)
      addiu      $5, $0, 0x2
      ori        $2, $2, 0x10
      jal        func_80058268
       sh        $2, 0x2($17)
      addu       $4, $30, $0
      jal        func_80054EBC
       addu      $16, $2, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $2, 0x4($16)
      lw         $3, 0x4($2)
      lw         $2, 0x0($3)
      addiu      $2, $2, 0x1
      sw         $2, 0x0($3)
  .L8006FB5C:
      beqz       $23, .L8006FBDC
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $23, $0
      lbu        $3, 0x18($2)
      addiu      $5, $0, 0x25
      ori        $3, $3, 0x10
      jal        func_80017580
       sb        $3, 0x18($2)
      beqz       $2, .L8006FBB0
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $23, $0
      jal        func_80024000
       addu      $16, $2, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      j          .L8006FBF0
       sb        $2, 0x1A($16)
  .L8006FBB0:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $23, $0
      jal        func_80024000
       addu      $16, $2, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sh        $2, 0x12($16)
      j          .L8006FBFC
       sb        $0, 0x1A($2)
  .L8006FBDC:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      sb         $0, 0x1A($2)
  .L8006FBF0:
      jal        func_80058268
       nop
      sh         $0, 0x12($2)
  .L8006FBFC:
      lw         $8, 0x6C($29)
      beqz       $8, .L8006FC80
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addiu      $5, $0, 0x25
      lbu        $3, 0x18($2)
      lw         $4, 0x6C($29)
      ori        $3, $3, 0x10
      jal        func_80017580
       sb        $3, 0x18($2)
      beqz       $2, .L8006FC54
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x6C($29)
      jal        func_80024000
       addu      $16, $2, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      j          .L8006FC94
       sb        $2, 0x19($16)
  .L8006FC54:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x6C($29)
      jal        func_80024000
       addu      $16, $2, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sh        $2, 0x10($16)
      j          .L8006FCA0
       sb        $0, 0x19($2)
  .L8006FC80:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      sb         $0, 0x19($2)
  .L8006FC94:
      jal        func_80058268
       nop
      sh         $0, 0x10($2)
  .L8006FCA0:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addiu      $4, $0, 0x40
      addu       $5, $0, $0
      jal        func_80052504
       addu      $16, $2, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $2, 0x0($16)
      lw         $2, 0x0($2)
      beqz       $2, .L8006FEAC
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      lw         $3, 0x0($2)
      lw         $2, 0x0($21)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $2, 0x0($3)
      addu       $4, $17, $0
      lw         $2, 0x0($2)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $17, 0x4($2)
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x1
      jal        func_80058268
       sb        $2, 0x39($3)
      addu       $4, $17, $0
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x2
      jal        func_80087458
       sb        $2, 0x3A($3)
      lw         $8, 0x58($29)
      beqz       $8, .L8006FD64
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x58($29)
      jal        func_800523C0
       addu      $16, $2, $0
      lw         $3, 0x0($16)
      beqz       $2, .L8006FEAC
       sw        $2, 0x24($3)
  .L8006FD64:
      lw         $8, 0x64($29)
      beqz       $8, .L8006FD90
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x64($29)
      jal        func_800523C0
       addu      $16, $2, $0
      lw         $3, 0x0($16)
      beqz       $2, .L8006FEAC
       sw        $2, 0x20($3)
  .L8006FD90:
      lw         $8, 0x5C($29)
      beqz       $8, .L8006FDBC
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x5C($29)
      jal        func_800523C0
       addu      $16, $2, $0
      lw         $3, 0x0($16)
      beqz       $2, .L8006FEAC
       sw        $2, 0x28($3)
  .L8006FDBC:
      lw         $8, 0x60($29)
      beqz       $8, .L8006FDE8
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x60($29)
      jal        func_800523C0
       addu      $16, $2, $0
      lw         $3, 0x0($16)
      beqz       $2, .L8006FEAC
       sw        $2, 0x2C($3)
  .L8006FDE8:
      lw         $8, 0x84($29)
      beqz       $8, .L8006FE14
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x84($29)
      jal        func_800523C0
       addu      $16, $2, $0
      lw         $3, 0x0($16)
      beqz       $2, .L8006FEAC
       sw        $2, 0x30($3)
  .L8006FE14:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      lw         $2, 0x0($2)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $0, 0x38($2)
      addu       $4, $17, $0
      lw         $2, 0x0($2)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $0, 0x3B($2)
      lw         $2, 0x0($2)
      sb         $0, 0x3C($2)
      lw         $8, 0x74($29)
      beqz       $8, .L8006FE8C
       addu      $4, $17, $0
      lbu        $2, 0x0($8)
      beqz       $2, .L8006FE8C
       nop
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x74($29)
      jal        func_800523C0
       addu      $16, $2, $0
      lw         $3, 0x0($16)
      beqz       $2, .L8006FEAC
       sw        $2, 0x34($3)
      addu       $4, $17, $0
  .L8006FE8C:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x0($21)
      lw         $5, 0x0($2)
      jal        func_800749A0
       nop
      j          .L8006FEB0
       addu      $2, $18, $0
  .L8006FEAC:
      addiu      $2, $0, -0x5
  .L8006FEB0:
      lw         $31, 0x44($29)
      lw         $30, 0x40($29)
      lw         $23, 0x3C($29)
      lw         $22, 0x38($29)
      lw         $21, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_8006F7E4

.globl func_8006FEE0
.ent func_8006FEE0
func_8006FEE0:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4A4($17)
      beqz       $2, .L8006FF60
       addiu     $18, $0, 0x1
      jal        func_8006E54C
       addiu     $5, $0, 0x2D
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bne        $18, $2, .L8006FF64
       addu      $2, $18, $0
      lw         $2, 0x4A4($17)
      addiu      $5, $0, 0x2
      addiu      $2, $2, -0x1
      sw         $2, 0x4A4($17)
      sll        $2, $2, 2
      addu       $2, $17, $2
      lw         $16, 0x228($2)
      lw         $17, 0x18($17)
      jal        func_80058268
       addu      $4, $16, $0
      addu       $4, $16, $0
      lbu        $3, 0x18($2)
      addiu      $5, $0, 0x2
      andi       $3, $3, 0xFD
      jal        func_80058268
       sb        $3, 0x18($2)
      sw         $17, 0xC($2)
  .L8006FF60:
      addu       $2, $18, $0
  .L8006FF64:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006FEE0

.globl func_8006FF7C
.ent func_8006FF7C
func_8006FF7C:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $7, $0
      sw         $31, 0x1C($29)
      sw         $16, 0x10($29)
      lw         $3, 0x4A4($4)
      beqz       $3, .L8006FFD0
       addiu     $2, $0, 0x1
      addiu      $2, $3, -0x1
      sll        $2, $2, 2
      addu       $2, $4, $2
      lw         $16, 0x228($2)
      addiu      $5, $0, 0x2
      jal        func_80058268
       addu      $4, $16, $0
      addu       $4, $16, $0
      addu       $5, $17, $0
      jal        func_8006F5B0
       addu      $6, $18, $0
  .L8006FFD0:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006FF7C

.globl func_8006FFE8
.ent func_8006FFE8
func_8006FFE8:
      addiu      $29, $29, -0x30
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $21, 0x24($29)
      addu       $21, $6, $0
      sw         $19, 0x1C($29)
      addu       $19, $7, $0
      sw         $22, 0x28($29)
      lbu        $22, 0x43($29)
      addiu      $5, $0, 0x4
      sw         $31, 0x2C($29)
      sw         $20, 0x20($29)
      jal        func_8006E54C
       sw        $17, 0x14($29)
      addu       $20, $2, $0
      addiu      $2, $0, 0x1
      bne        $20, $2, .L80070188
       addu      $2, $20, $0
      lw         $17, 0x18($16)
      beqz       $18, .L8007006C
       sb        $20, 0xAD0($16)
      lbu        $2, 0x0($18)
      beqz       $2, .L8007006C
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      jal        func_80024000
       addu      $16, $2, $0
      j          .L80070080
       sh        $2, 0x2($16)
  .L8007006C:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addiu      $3, $0, 0x2
      sh         $3, 0x2($2)
  .L80070080:
      beqz       $19, .L800700F0
       addu      $4, $17, $0
      lbu        $2, 0x0($19)
      beqz       $2, .L800700F0
       nop
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $19, $0
      jal        func_80024000
       addu      $16, $2, $0
      sh         $2, 0x0($16)
      addu       $4, $19, $0
      jal        func_80017580
       addiu     $5, $0, 0x25
      bnez       $2, .L800700D8
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $3, 0x4($2)
      ori        $3, $3, 0x2
      j          .L800700FC
       sb        $3, 0x4($2)
  .L800700D8:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $3, 0x4($2)
      ori        $3, $3, 0x1
      j          .L800700FC
       sb        $3, 0x4($2)
  .L800700F0:
      jal        func_80058268
       addiu     $5, $0, 0x2
      sh         $0, 0x0($2)
  .L800700FC:
      beqz       $21, .L80070150
       addu      $4, $21, $0
      lui        $5, %hi(D_800ED2C0)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2C0)
      bnez       $2, .L8007012C
       addu      $4, $21, $0
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      j          .L80070160
       addiu     $3, $0, 0x4
  .L8007012C:
      lui        $5, %hi(D_800ED318)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED318)
      bnez       $2, .L80070154
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      j          .L80070160
       addiu     $3, $0, 0x5
  .L80070150:
      addu       $4, $17, $0
  .L80070154:
      jal        func_80058268
       addiu     $5, $0, 0x4
      addiu      $3, $0, 0xB
  .L80070160:
      sb         $3, 0x0($2)
      andi       $2, $22, 0xFF
      beqz       $2, .L80070184
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $3, 0x4($2)
      ori        $3, $3, 0x4
      sb         $3, 0x4($2)
  .L80070184:
      addu       $2, $20, $0
  .L80070188:
      lw         $31, 0x2C($29)
      lw         $22, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8006FFE8

.globl func_800701B0
.ent func_800701B0
func_800701B0:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $16, 0x10($29)
      lw         $3, 0xC($18)
      beqz       $3, .L80070288
       addu      $19, $7, $0
      lw         $2, 0xAC($3)
      beqz       $2, .L80070288
       addu      $16, $3, $0
      lw         $2, 0xB0($16)
      beqz       $2, .L80070288
       nop
      lw         $2, 0x18($2)
      beqz       $2, .L80070288
       nop
      beqz       $17, .L8007025C
       nop
      lbu        $2, 0x0($17)
      beqz       $2, .L8007025C
       addu      $4, $17, $0
      lui        $5, %hi(D_800ECCB4)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ECCB4)
      bnez       $2, .L80070244
       addu      $6, $17, $0
      lw         $4, 0x8($18)
      jal        func_8007D7E8
       addu      $5, $20, $0
      j          .L8007025C
       nop
  .L80070244:
      lw         $4, 0xAC($16)
      lw         $2, 0xB0($16)
      lw         $5, 0x4($18)
      lw         $2, 0x18($2)
      jalr       $2
       addu      $7, $20, $0
  .L8007025C:
      beqz       $19, .L80070288
       nop
      lbu        $2, 0x0($19)
      beqz       $2, .L80070288
       addu      $6, $19, $0
      lw         $4, 0xAC($16)
      lw         $2, 0xB0($16)
      lw         $5, 0x4($18)
      lw         $2, 0x18($2)
      jalr       $2
       addu      $7, $20, $0
  .L80070288:
      jal        func_8006D900
       addu      $4, $18, $0
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x28
.end func_800701B0

.globl func_800702B4
.ent func_800702B4
func_800702B4:
      jr         $31
       nop
.end func_800702B4

.globl func_800702BC
.ent func_800702BC
func_800702BC:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $31, 0x20($29)
      sw         $16, 0x18($29)
      lw         $2, 0x24($17)
      beql       $2, $0, .L800702E8
       addu      $4, $17, $0
      jal        func_8006B6F8
       nop
      addu       $4, $17, $0
  .L800702E8:
      jal        func_8006DC84
       addiu     $5, $29, 0x10
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x22
      beq        $3, $2, .L80070308
       addiu     $2, $0, 0x24
      bne        $3, $2, .L80070314
       addu      $4, $17, $0
  .L80070308:
      jal        func_80073D18
       addu      $4, $17, $0
      addu       $4, $17, $0
  .L80070314:
      jal        func_8006E54C
       addiu     $5, $0, 0xFF
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80070344
       addu      $2, $16, $0
      addu       $4, $17, $0
      lw         $2, 0x0($4)
      addiu      $5, $0, 0x1
      jal        func_800540C4
       sb        $16, 0xDD($2)
      addu       $2, $16, $0
  .L80070344:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800702BC

.globl func_80070358
.ent func_80070358
func_80070358:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      addiu      $5, $0, 0xFF
      sw         $31, 0x18($29)
      jal        func_8006E54C
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80070394
       addu      $2, $16, $0
      addu       $4, $17, $0
      jal        func_800540C4
       addu      $5, $0, $0
      addu       $2, $16, $0
  .L80070394:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80070358

.globl func_800703A8
.ent func_800703A8
func_800703A8:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $16, 0x10($29)
      addiu      $16, $0, 0x1
      beqz       $18, .L800703F4
       sw        $31, 0x1C($29)
      jal        func_8006E54C
       addiu     $5, $0, 0x3
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800703F8
       addu      $2, $16, $0
      lw         $4, 0x18($17)
      jal        func_80058268
       addiu     $5, $0, 0x2
      sb         $18, 0x0($2)
  .L800703F4:
      addu       $2, $16, $0
  .L800703F8:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800703A8

.globl func_80070410
.ent func_80070410
func_80070410:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $4, 0x4A0($16)
      addiu      $2, $0, 0x5
      beq        $4, $2, .L80070450
       addiu     $3, $0, 0x1
      addiu      $2, $0, 0xB
      bne        $4, $2, .L80070460
       addiu     $17, $0, 0x1
      jal        func_8006F528
       addu      $4, $16, $0
      j          .L8007045C
       addu      $3, $2, $0
  .L80070450:
      jal        func_8006F568
       addu      $4, $16, $0
      addu       $3, $2, $0
  .L8007045C:
      addiu      $17, $0, 0x1
  .L80070460:
      bne        $3, $17, .L80070480
       addu      $2, $3, $0
      addu       $4, $16, $0
      jal        func_800703A8
       addu      $5, $17, $0
      sw         $0, 0x4A0($16)
      sb         $0, 0xACF($16)
      sb         $17, 0xAD0($16)
  .L80070480:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80070410

.globl func_80070494
.ent func_80070494
func_80070494:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lbu        $2, 0xACA($17)
      beqz       $2, .L800704C4
       addu      $18, $5, $0
      j          .L800704D0
       sb        $0, 0xACA($17)
  .L800704C4:
      addu       $4, $17, $0
      jal        func_800703A8
       addiu     $5, $0, 0x1
  .L800704D0:
      addiu      $2, $0, 0x1
      sb         $2, 0xAD0($17)
      jal        func_80070410
       addu      $4, $17, $0
      addu       $16, $2, $0
      addiu      $19, $0, 0x1
      bne        $16, $19, .L8007055C
       nop
      beqz       $18, .L80070558
       lui       $5, %hi(D_800ED28C)
      addu       $4, $18, $0
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED28C)
      bnez       $2, .L80070528
       addu      $4, $18, $0
      jal        func_8006F50C
       addu      $4, $17, $0
      addu       $16, $2, $0
      bne        $16, $19, .L8007055C
       nop
      j          .L80070554
       addiu     $2, $0, 0xB
  .L80070528:
      lui        $5, %hi(D_800ED318)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED318)
      bnez       $2, .L8007055C
       addu      $2, $16, $0
      jal        func_8006F54C
       addu      $4, $17, $0
      addu       $16, $2, $0
      bne        $16, $19, .L8007055C
       nop
      addiu      $2, $0, 0x5
  .L80070554:
      sw         $2, 0x4A0($17)
  .L80070558:
      addu       $2, $16, $0
  .L8007055C:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80070494

.globl func_80070578
.ent func_80070578
func_80070578:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      sw         $17, 0x14($29)
      addiu      $17, $0, 0x1
      beqz       $16, .L800705F0
       sw        $31, 0x1C($29)
      addu       $4, $16, $0
      lui        $5, %hi(D_800ED28C)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED28C)
      bnez       $2, .L800705C8
       addu      $4, $16, $0
      jal        func_8006F50C
       addu      $4, $18, $0
      addu       $17, $2, $0
      j          .L800705EC
       addiu     $2, $0, 0xB
  .L800705C8:
      lui        $5, %hi(D_800ED318)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED318)
      bnez       $2, .L800705F4
       addu      $2, $17, $0
      jal        func_8006F54C
       addu      $4, $18, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x5
  .L800705EC:
      sw         $2, 0x4A0($18)
  .L800705F0:
      addu       $2, $17, $0
  .L800705F4:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80070578

.globl func_8007060C
.ent func_8007060C
func_8007060C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x4A0($16)
      addiu      $2, $0, 0x5
      beq        $4, $2, .L80070648
       addiu     $3, $0, 0x1
      addiu      $2, $0, 0xB
      bnel       $4, $2, .L80070658
       sw        $0, 0x4A0($16)
      jal        func_8006F528
       addu      $4, $16, $0
      j          .L80070654
       addu      $3, $2, $0
  .L80070648:
      jal        func_8006F568
       addu      $4, $16, $0
      addu       $3, $2, $0
  .L80070654:
      sw         $0, 0x4A0($16)
  .L80070658:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_8007060C

.globl func_8007066C
.ent func_8007066C
func_8007066C:
      addiu      $29, $29, -0x30
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $21, 0x24($29)
      addiu      $21, $0, 0x1
      sw         $31, 0x28($29)
      sw         $20, 0x20($29)
      sw         $18, 0x18($29)
      beqz       $17, .L80070888
       sw        $16, 0x10($29)
      sltiu      $2, $19, 0xE
      beqz       $2, .L800706B8
       sll       $3, $19, 2
      lw         $2, 0x0($17)
      lw         $2, 0x9C($2)
      j          .L800706C4
       addu      $2, $2, $3
  .L800706B8:
      lw         $2, 0x0($17)
      lw         $2, 0x9C($2)
      addu       $19, $0, $0
  .L800706C4:
      lw         $18, 0x0($2)
      lbu        $2, 0xACA($17)
      beqz       $2, .L800706DC
       nop
      j          .L80070780
       sb        $0, 0xACA($17)
  .L800706DC:
      lw         $3, 0x0($17)
      lbu        $2, 0xAC0($17)
      lw         $3, 0x9C($3)
      sll        $2, $2, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      lbu        $2, 0x9($2)
      beqz       $2, .L80070708
       nop
      jal        func_8006EC18
       addu      $4, $17, $0
  .L80070708:
      lw         $3, 0x0($17)
      lbu        $2, 0xAC0($17)
      lw         $3, 0x9C($3)
      sll        $2, $2, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      lh         $5, 0x2($2)
      jal        func_800703A8
       addu      $4, $17, $0
      beqz       $18, .L80070780
       addiu     $2, $0, 0xC
      beql       $19, $2, .L80070884
       sb        $19, 0xAC0($17)
      lh         $2, 0x4($18)
      blez       $2, .L80070774
       addu      $16, $0, $0
      addiu      $20, $0, 0x1
      addu       $4, $17, $0
  .L80070750:
      jal        func_8006E54C
       addiu     $5, $0, 0x12
      addu       $21, $2, $0
      bne        $21, $20, .L80070888
       addiu     $16, $16, 0x1
      lh         $2, 0x4($18)
      slt        $2, $16, $2
      bnez       $2, .L80070750
       addu      $4, $17, $0
  .L80070774:
      lh         $5, 0x0($18)
      jal        func_800703A8
       addu      $4, $17, $0
  .L80070780:
      addiu      $2, $0, 0xC
      beq        $19, $2, .L80070884
       sb        $19, 0xAC0($17)
      lbu        $2, 0xAC1($17)
      andi       $2, $2, 0x2
      beqz       $2, .L800707A8
       nop
      lw         $2, 0x494($17)
      addiu      $2, $2, -0x1
      sw         $2, 0x494($17)
  .L800707A8:
      lbu        $2, 0xAC1($17)
      andi       $2, $2, 0x1
      beqz       $2, .L800707C4
       nop
      lw         $2, 0x490($17)
      addiu      $2, $2, -0x1
      sw         $2, 0x490($17)
  .L800707C4:
      lbu        $2, 0xAC1($17)
      andi       $2, $2, 0x8
      beqz       $2, .L800707E0
       nop
      lw         $2, 0x498($17)
      addiu      $2, $2, -0x1
      sw         $2, 0x498($17)
  .L800707E0:
      lbu        $2, 0xAC1($17)
      andi       $2, $2, 0x10
      beqz       $2, .L800707FC
       nop
      lw         $2, 0x49C($17)
      addiu      $2, $2, -0x1
      sw         $2, 0x49C($17)
  .L800707FC:
      lbu        $2, 0x7($18)
      sb         $2, 0xAC1($17)
      lbu        $3, 0x7($18)
      addiu      $2, $0, 0x2
      beq        $3, $2, .L80070848
       slti      $2, $3, 0x3
      beqz       $2, .L8007082C
       addiu     $2, $0, 0x1
      beq        $3, $2, .L80070858
       nop
      j          .L80070888
       sb        $0, 0xACF($17)
  .L8007082C:
      addiu      $2, $0, 0x8
      beq        $3, $2, .L80070868
       addiu     $2, $0, 0x10
      beq        $3, $2, .L80070878
       nop
      j          .L80070888
       sb        $0, 0xACF($17)
  .L80070848:
      lw         $2, 0x494($17)
      addiu      $2, $2, 0x1
      j          .L80070884
       sw        $2, 0x494($17)
  .L80070858:
      lw         $2, 0x490($17)
      addiu      $2, $2, 0x1
      j          .L80070884
       sw        $2, 0x490($17)
  .L80070868:
      lw         $2, 0x498($17)
      addiu      $2, $2, 0x1
      j          .L80070884
       sw        $2, 0x498($17)
  .L80070878:
      lw         $2, 0x49C($17)
      addiu      $2, $2, 0x1
      sw         $2, 0x49C($17)
  .L80070884:
      sb         $0, 0xACF($17)
  .L80070888:
      addu       $2, $21, $0
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8007066C

.globl func_800708B0
.ent func_800708B0
func_800708B0:
      lw         $2, 0x49C($4)
      lbu        $3, 0xAC1($4)
      sb         $0, 0xACF($4)
      addiu      $2, $2, 0x1
      ori        $3, $3, 0x10
      sw         $2, 0x49C($4)
      addiu      $2, $0, 0x1
      jr         $31
       sb        $3, 0xAC1($4)
.end func_800708B0

.globl func_800708D4
.ent func_800708D4
func_800708D4:
      lw         $2, 0x49C($4)
      addiu      $2, $2, -0x1
      bgtz       $2, .L800708F4
       sw        $2, 0x49C($4)
      lbu        $2, 0xAC1($4)
      sw         $0, 0x49C($4)
      andi       $2, $2, 0xEF
      sb         $2, 0xAC1($4)
  .L800708F4:
      sb         $0, 0xACF($4)
      jr         $31
       addiu     $2, $0, 0x1
.end func_800708D4

.globl func_80070900
.ent func_80070900
func_80070900:
      lw         $2, 0x490($4)
      lbu        $3, 0xAC1($4)
      sb         $0, 0xACF($4)
      addiu      $2, $2, 0x1
      ori        $3, $3, 0x1
      sw         $2, 0x490($4)
      addiu      $2, $0, 0x1
      jr         $31
       sb        $3, 0xAC1($4)
.end func_80070900

.globl func_80070924
.ent func_80070924
func_80070924:
      lw         $2, 0x490($4)
      addiu      $2, $2, -0x1
      bgtz       $2, .L80070944
       sw        $2, 0x490($4)
      lbu        $2, 0xAC1($4)
      sw         $0, 0x490($4)
      andi       $2, $2, 0xFE
      sb         $2, 0xAC1($4)
  .L80070944:
      sb         $0, 0xACF($4)
      jr         $31
       addiu     $2, $0, 0x1
.end func_80070924

.globl func_80070950
.ent func_80070950
func_80070950:
      lw         $2, 0x494($4)
      lbu        $3, 0xAC1($4)
      sb         $0, 0xACF($4)
      addiu      $2, $2, 0x1
      ori        $3, $3, 0x2
      sw         $2, 0x494($4)
      addiu      $2, $0, 0x1
      jr         $31
       sb        $3, 0xAC1($4)
.end func_80070950

.globl func_80070974
.ent func_80070974
func_80070974:
      lw         $2, 0x494($4)
      addiu      $2, $2, -0x1
      bgtz       $2, .L80070994
       sw        $2, 0x494($4)
      lbu        $2, 0xAC1($4)
      sw         $0, 0x494($4)
      andi       $2, $2, 0xFD
      sb         $2, 0xAC1($4)
  .L80070994:
      sb         $0, 0xACF($4)
      jr         $31
       addiu     $2, $0, 0x1
.end func_80070974

.globl func_800709A0
.ent func_800709A0
func_800709A0:
      lw         $2, 0x498($4)
      lbu        $3, 0xAC1($4)
      sb         $0, 0xACF($4)
      addiu      $2, $2, 0x1
      ori        $3, $3, 0x8
      sw         $2, 0x498($4)
      addiu      $2, $0, 0x1
      jr         $31
       sb        $3, 0xAC1($4)
.end func_800709A0

.globl func_800709C4
.ent func_800709C4
func_800709C4:
      lw         $2, 0x498($4)
      addiu      $2, $2, -0x1
      bgtz       $2, .L800709E4
       sw        $2, 0x498($4)
      lbu        $2, 0xAC1($4)
      sw         $0, 0x498($4)
      andi       $2, $2, 0xF7
      sb         $2, 0xAC1($4)
  .L800709E4:
      sb         $0, 0xACF($4)
      jr         $31
       addiu     $2, $0, 0x1
.end func_800709C4

.globl func_800709F0
.ent func_800709F0
func_800709F0:
      lbu        $2, 0xAC1($4)
      sb         $0, 0xACF($4)
      ori        $2, $2, 0x4
      sb         $2, 0xAC1($4)
      jr         $31
       addiu     $2, $0, 0x1
.end func_800709F0

.globl func_80070A08
.ent func_80070A08
func_80070A08:
      lbu        $2, 0xAC1($4)
      sb         $0, 0xACF($4)
      andi       $2, $2, 0xFB
      sb         $2, 0xAC1($4)
      jr         $31
       addiu     $2, $0, 0x1
.end func_80070A08

.globl func_80070A20
.ent func_80070A20
func_80070A20:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80070900
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80070A20

.globl func_80070A3C
.ent func_80070A3C
func_80070A3C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80070924
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80070A3C

.globl func_80070A58
.ent func_80070A58
func_80070A58:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x488($4)
      addiu      $5, $0, 0x2F
      addiu      $2, $2, 0x1
      jal        func_8006E54C
       sw        $2, 0x488($4)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80070A58

.globl func_80070A80
.ent func_80070A80
func_80070A80:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x488($4)
      addiu      $2, $2, -0x1
      bgez       $2, .L80070A9C
       sw        $2, 0x488($4)
      sw         $0, 0x488($4)
  .L80070A9C:
      jal        func_8006E54C
       addiu     $5, $0, 0x30
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80070A80

.globl func_80070AB0
.ent func_80070AB0
func_80070AB0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x48C($4)
      addiu      $5, $0, 0x31
      addiu      $2, $2, 0x1
      jal        func_8006E54C
       sw        $2, 0x48C($4)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80070AB0

.globl func_80070AD8
.ent func_80070AD8
func_80070AD8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x48C($4)
      addiu      $2, $2, -0x1
      bgez       $2, .L80070AF4
       sw        $2, 0x48C($4)
      sw         $0, 0x48C($4)
  .L80070AF4:
      jal        func_8006E54C
       addiu     $5, $0, 0x32
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80070AD8

.globl func_80070B08
.ent func_80070B08
func_80070B08:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x4A0($16)
      addiu      $2, $0, 0x5
      beq        $4, $2, .L80070B44
       addiu     $3, $0, 0x1
      addiu      $2, $0, 0xB
      bne        $4, $2, .L80070B54
       addu      $2, $3, $0
      jal        func_8006F528
       addu      $4, $16, $0
      j          .L80070B50
       addu      $3, $2, $0
  .L80070B44:
      jal        func_8006F568
       addu      $4, $16, $0
      addu       $3, $2, $0
  .L80070B50:
      addu       $2, $3, $0
  .L80070B54:
      addiu      $3, $0, 0x1
      sw         $0, 0x4A0($16)
      sb         $0, 0xACF($16)
      sb         $3, 0xAD0($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80070B08

.globl func_80070B74
.ent func_80070B74
func_80070B74:
      jr         $31
       addiu     $2, $0, 0x1
.end func_80070B74

.globl func_80070B7C
.ent func_80070B7C
func_80070B7C:
      bnez       $5, .L80070BA8
       nop
      lw         $2, 0x2B8($4)
      sll        $2, $2, 4
      addu       $2, $4, $2
      lw         $3, 0x28($2)
      addiu      $2, $0, 0x56
      bne        $3, $2, .L80070C10
       addiu     $5, $0, 0x7
      j          .L80070C10
       addiu     $5, $0, 0x2
  .L80070BA8:
      lbu        $2, 0x0($5)
      addiu      $3, $2, -0x31
      sltiu      $2, $3, 0x43
      beqz       $2, .L80070C0C
       lui       $2, %hi(jtbl_800F0360)
      addiu      $2, $2, %lo(jtbl_800F0360)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80070BD4
.L80070BD4:
      j          .L80070C10
       addu      $5, $0, $0
  .globl .L80070BDC
.L80070BDC:
      j          .L80070C10
       addiu     $5, $0, 0x1
  .globl .L80070BE4
.L80070BE4:
      j          .L80070C10
       addiu     $5, $0, 0x3
  .globl .L80070BEC
.L80070BEC:
      j          .L80070C10
       addiu     $5, $0, 0x4
  .globl .L80070BF4
.L80070BF4:
      j          .L80070C10
       addiu     $5, $0, 0x5
  .globl .L80070BFC
.L80070BFC:
      j          .L80070C10
       addiu     $5, $0, 0x6
  .globl .L80070C04
.L80070C04:
      j          .L80070C10
       addiu     $5, $0, 0x7
  .globl .L80070C0C
.L80070C0C:
      addiu      $5, $0, 0x2
  .L80070C10:
      jr         $31
       addu      $2, $5, $0
.end func_80070B7C

.globl func_80070C18
.ent func_80070C18
func_80070C18:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $16, 0x10($29)
      lbu        $2, 0xAC8($17)
      beqz       $2, .L80070C68
       addu      $20, $7, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x13
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80070D74
       addu      $2, $16, $0
      sb         $0, 0xAC8($17)
  .L80070C68:
      jal        func_8006EC18
       addu      $4, $17, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80070D74
       addu      $2, $16, $0
      beqz       $18, .L80070CA4
       addu      $4, $17, $0
      jal        func_80070B7C
       addu      $5, $18, $0
      lw         $3, 0x2B8($17)
      sll        $3, $3, 4
      addu       $3, $17, $3
      j          .L80070CF0
       sw        $2, 0x30($3)
  .L80070CA4:
      addiu      $2, $0, 0x56
      bne        $19, $2, .L80070CE0
       addiu     $3, $0, 0x7
      lw         $3, 0x2B8($17)
      blez       $3, .L80070CD4
       sll       $2, $3, 4
      addiu      $3, $3, -0x1
      sll        $3, $3, 4
      addu       $3, $17, $3
      lw         $3, 0x30($3)
      j          .L80070CEC
       addu      $2, $17, $2
  .L80070CD4:
      addu       $2, $17, $2
      j          .L80070CEC
       addiu     $3, $0, 0x2
  .L80070CE0:
      lw         $2, 0x2B8($17)
      sll        $2, $2, 4
      addu       $2, $17, $2
  .L80070CEC:
      sw         $3, 0x30($2)
  .L80070CF0:
      addu       $4, $17, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x6
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80070D74
       addu      $2, $16, $0
      lw         $2, 0x2B8($17)
      sll        $2, $2, 4
      addu       $2, $17, $2
      sw         $19, 0x28($2)
      lw         $2, 0x2B8($17)
      sll        $2, $2, 4
      beqz       $20, .L80070D3C
       addu      $18, $17, $2
      jal        func_80024000
       addu      $4, $20, $0
      j          .L80070D40
       sw        $2, 0x2C($18)
  .L80070D3C:
      sw         $16, 0x2C($18)
  .L80070D40:
      lw         $2, 0x2B8($17)
      addiu      $3, $0, 0x1
      sll        $2, $2, 4
      addu       $2, $17, $2
      sb         $3, 0x34($2)
      lw         $3, 0x2B8($17)
      slti       $2, $3, 0x20
      beqz       $2, .L80070D6C
       addiu     $2, $3, 0x1
      j          .L80070D70
       sw        $2, 0x2B8($17)
  .L80070D6C:
      addiu      $16, $0, 0x1
  .L80070D70:
      addu       $2, $16, $0
  .L80070D74:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80070C18

.globl func_80070D94
.ent func_80070D94
func_80070D94:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $2, 0x2B8($16)
      blez       $2, .L80070E20
       addiu     $3, $0, 0x1
      addiu      $2, $2, -0x1
      sll        $2, $2, 4
      addu       $2, $16, $2
      lw         $2, 0x2C($2)
      beqz       $2, .L80070DE8
       nop
      jal        func_8006E54C
       addiu     $5, $0, 0x1A
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80070E20
       nop
      sb         $0, 0xACA($16)
  .L80070DE8:
      jal        func_8006EC18
       addu      $4, $16, $0
      addu       $3, $2, $0
      addiu      $17, $0, 0x1
      bne        $3, $17, .L80070E20
       addu      $4, $16, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x7
      addu       $3, $2, $0
      bne        $3, $17, .L80070E20
       nop
      lw         $2, 0x2B8($16)
      addiu      $2, $2, -0x1
      sw         $2, 0x2B8($16)
  .L80070E20:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_80070D94

.globl func_80070E38
.ent func_80070E38
func_80070E38:
      addu       $2, $4, $5
      addiu      $5, $5, 0x1
      addu       $4, $4, $5
      sb         $6, 0x0($2)
      sb         $7, 0x0($4)
      andi       $7, $7, 0xFF
      bnel       $7, $0, .L80070E58
       addiu     $5, $5, 0x1
  .L80070E58:
      jr         $31
       addu      $2, $5, $0
.end func_80070E38

.globl func_80070E60
.ent func_80070E60
func_80070E60:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      addu       $5, $0, $0
      blez       $16, .L80071048
       sw        $31, 0x1C($29)
      slti       $2, $16, 0x3E8
  .L80070E8C:
      bnez       $2, .L80070EB0
       slti      $2, $16, 0x384
      addu       $4, $17, $0
      addiu      $6, $0, 0x4D
      jal        func_80070E38
       addu      $7, $0, $0
      addu       $5, $2, $0
      j          .L80071040
       addiu     $16, $16, -0x3E8
  .L80070EB0:
      bnez       $2, .L80070ED4
       slti      $2, $16, 0x1F4
      addu       $4, $17, $0
      addiu      $6, $0, 0x43
      jal        func_80070E38
       addiu     $7, $0, 0x4D
      addu       $5, $2, $0
      j          .L80071040
       addiu     $16, $16, -0x384
  .L80070ED4:
      bnez       $2, .L80070EF8
       slti      $2, $16, 0x190
      addu       $4, $17, $0
      addiu      $6, $0, 0x44
      jal        func_80070E38
       addu      $7, $0, $0
      addu       $5, $2, $0
      j          .L80071040
       addiu     $16, $16, -0x1F4
  .L80070EF8:
      bnez       $2, .L80070F1C
       slti      $2, $16, 0x64
      addu       $4, $17, $0
      addiu      $6, $0, 0x43
      jal        func_80070E38
       addiu     $7, $0, 0x44
      addu       $5, $2, $0
      j          .L80071040
       addiu     $16, $16, -0x190
  .L80070F1C:
      bnez       $2, .L80070F40
       slti      $2, $16, 0x5A
      addu       $4, $17, $0
      addiu      $6, $0, 0x43
      jal        func_80070E38
       addu      $7, $0, $0
      addu       $5, $2, $0
      j          .L80071040
       addiu     $16, $16, -0x64
  .L80070F40:
      bnez       $2, .L80070F64
       slti      $2, $16, 0x32
      addu       $4, $17, $0
      addiu      $6, $0, 0x58
      jal        func_80070E38
       addiu     $7, $0, 0x43
      addu       $5, $2, $0
      j          .L80071040
       addiu     $16, $16, -0x5A
  .L80070F64:
      bnez       $2, .L80070F88
       slti      $2, $16, 0x28
      addu       $4, $17, $0
      addiu      $6, $0, 0x4C
      jal        func_80070E38
       addu      $7, $0, $0
      addu       $5, $2, $0
      j          .L80071040
       addiu     $16, $16, -0x32
  .L80070F88:
      bnez       $2, .L80070FAC
       slti      $2, $16, 0xA
      addu       $4, $17, $0
      addiu      $6, $0, 0x58
      jal        func_80070E38
       addiu     $7, $0, 0x4C
      addu       $5, $2, $0
      j          .L80071040
       addiu     $16, $16, -0x28
  .L80070FAC:
      bnez       $2, .L80070FD0
       addiu     $2, $0, 0x9
      addu       $4, $17, $0
      addiu      $6, $0, 0x58
      jal        func_80070E38
       addu      $7, $0, $0
      addu       $5, $2, $0
      j          .L80071040
       addiu     $16, $16, -0xA
  .L80070FD0:
      bne        $16, $2, .L80070FE8
       slti      $2, $16, 0x5
      addu       $4, $17, $0
      addiu      $6, $0, 0x49
      j          .L8007101C
       addiu     $7, $0, 0x58
  .L80070FE8:
      bnez       $2, .L8007100C
       addiu     $2, $0, 0x4
      addu       $4, $17, $0
      addiu      $6, $0, 0x56
      jal        func_80070E38
       addu      $7, $0, $0
      addu       $5, $2, $0
      j          .L80071040
       addiu     $16, $16, -0x5
  .L8007100C:
      bne        $16, $2, .L8007102C
       addu      $4, $17, $0
      addiu      $6, $0, 0x49
      addiu      $7, $0, 0x56
  .L8007101C:
      jal        func_80070E38
       addu      $16, $0, $0
      j          .L80071040
       addu      $5, $2, $0
  .L8007102C:
      addiu      $6, $0, 0x49
      jal        func_80070E38
       addu      $7, $0, $0
      addu       $5, $2, $0
      addiu      $16, $16, -0x1
  .L80071040:
      bgtz       $16, .L80070E8C
       slti      $2, $16, 0x3E8
  .L80071048:
      addu       $3, $17, $5
      addiu      $2, $0, 0x2E
      sb         $2, 0x0($3)
      addu       $2, $5, $17
      sb         $0, 0x1($2)
      addiu      $2, $0, 0x6
      bne        $18, $2, .L80071070
       nop
      jal        func_80051F00
       addu      $4, $17, $0
  .L80071070:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80070E60

.globl func_80071088
.ent func_80071088
func_80071088:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      addu       $7, $5, $0
      sltiu      $2, $7, 0x8
      beqz       $2, .L800710F4
       addu      $5, $6, $0
      lui        $2, %hi(jtbl_800F0470)
      addiu      $2, $2, %lo(jtbl_800F0470)
      sll        $3, $7, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800710BC
.L800710BC:
      j          .L800710C8
       addiu     $2, $5, 0x40
  .globl .L800710C4
.L800710C4:
      addiu      $2, $5, 0x60
  .L800710C8:
      sb         $2, 0x0($4)
      addiu      $2, $0, 0x2E
      sb         $2, 0x1($4)
      j          .L800710F4
       sb        $0, 0x2($4)
  .globl .L800710DC
.L800710DC:
      jal        func_80070E60
       addu      $6, $7, $0
      j          .L800710F4
       nop
  .globl .L800710EC
.L800710EC:
      jal        func_8008DEF8
       nop
  .globl .L800710F4
.L800710F4:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80071088

.globl func_80071100
.ent func_80071100
func_80071100:
      addiu      $29, $29, -0x48
      sw         $16, 0x30($29)
      addu       $16, $4, $0
      sw         $19, 0x3C($29)
      addu       $19, $6, $0
      sw         $31, 0x40($29)
      sw         $18, 0x38($29)
      sw         $17, 0x34($29)
      lw         $2, 0x2B8($16)
      bgtz       $2, .L80071150
       addu      $17, $7, $0
      jal        func_80070C18
       addiu     $5, $0, 0x56
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      bne        $4, $2, .L800712B8
       nop
      lw         $2, 0x2B8($16)
      blez       $2, .L800712B8
       nop
  .L80071150:
      jal        func_8006EC18
       addu      $4, $16, $0
      addu       $4, $2, $0
      addiu      $18, $0, 0x1
      bne        $4, $18, .L800712B8
       nop
      lw         $2, 0x2B8($16)
      addiu      $2, $2, -0x1
      sll        $2, $2, 4
      addu       $3, $16, $2
      lbu        $2, 0x34($3)
      bnel       $2, $0, .L8007119C
       sb        $0, 0x34($3)
      addu       $4, $16, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x1A
      addu       $4, $2, $0
      bne        $4, $18, .L800712B8
       nop
  .L8007119C:
      beqz       $17, .L800711C0
       nop
      jal        func_80024000
       addu      $4, $17, $0
      lw         $3, 0x2B8($16)
      addiu      $3, $3, -0x1
      sll        $3, $3, 4
      addu       $3, $16, $3
      sw         $2, 0x2C($3)
  .L800711C0:
      beqz       $19, .L800711E4
       addu      $4, $16, $0
      jal        func_80070B7C
       addu      $5, $19, $0
      lw         $3, 0x2B8($16)
      addiu      $3, $3, -0x1
      sll        $3, $3, 4
      addu       $3, $16, $3
      sw         $2, 0x30($3)
  .L800711E4:
      lw         $2, 0x2B8($16)
      addiu      $2, $2, -0x1
      sll        $2, $2, 4
      addu       $3, $16, $2
      lw         $4, 0x28($3)
      addiu      $2, $0, 0x3A
      beq        $4, $2, .L8007124C
       slti      $2, $4, 0x3B
      beqz       $2, .L8007121C
       addiu     $2, $0, 0x15
      beq        $4, $2, .L80071230
       addu      $4, $16, $0
      j          .L80071280
       nop
  .L8007121C:
      addiu      $2, $0, 0x56
      beq        $4, $2, .L8007123C
       addu      $4, $16, $0
      j          .L80071280
       nop
  .L80071230:
      addiu      $2, $0, 0x1
      j          .L8007127C
       sb        $2, 0xACA($16)
  .L8007123C:
      jal        func_8006E54C
       addiu     $5, $0, 0x1C
      j          .L8007126C
       addu      $4, $2, $0
  .L8007124C:
      lw         $5, 0x30($3)
      lw         $6, 0x2C($3)
      jal        func_80071088
       addiu     $4, $29, 0x10
      addu       $4, $16, $0
      jal        func_8006ED08
       addiu     $5, $29, 0x10
      addu       $4, $2, $0
  .L8007126C:
      addiu      $2, $0, 0x1
      bne        $4, $2, .L800712B8
       nop
      sb         $4, 0xACA($16)
  .L8007127C:
      addu       $4, $16, $0
  .L80071280:
      jal        func_8006E54C
       addiu     $5, $0, 0x19
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      bne        $4, $2, .L800712B8
       nop
      lw         $3, 0x2B8($16)
      sb         $4, 0xAD0($16)
      addiu      $3, $3, -0x1
      sll        $3, $3, 4
      addu       $3, $16, $3
      lw         $2, 0x2C($3)
      addiu      $2, $2, 0x1
      sw         $2, 0x2C($3)
  .L800712B8:
      lw         $31, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x48
.end func_80071100

.globl func_800712D8
.ent func_800712D8
func_800712D8:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addiu      $5, $0, 0x15
      addu       $6, $0, $0
      sw         $31, 0x14($29)
      jal        func_80070C18
       addu      $7, $6, $0
      sb         $0, 0xAC8($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800712D8

.globl func_8007130C
.ent func_8007130C
func_8007130C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lbu        $2, 0xAC8($4)
      bnel       $2, $0, .L80071320
       sb        $0, 0xAC8($4)
  .L80071320:
      jal        func_80070D94
       addiu     $5, $0, 0x15
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8007130C

.globl func_80071334
.ent func_80071334
func_80071334:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      sw         $31, 0x14($29)
      jal        func_8006EC18
       addu      $16, $4, $0
      lbu        $3, 0xAC8($16)
      beqz       $3, .L80071370
       addu      $4, $2, $0
      addu       $4, $16, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x13
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      beql       $4, $2, .L80071370
       sb        $0, 0xAC8($16)
  .L80071370:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_80071334

.globl func_80071384
.ent func_80071384
func_80071384:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      sw         $31, 0x14($29)
      jal        func_8006EC18
       addu      $16, $4, $0
      lbu        $3, 0xAC8($16)
      bnez       $3, .L800713C0
       addu      $4, $2, $0
      addu       $4, $16, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x12
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      beql       $4, $2, .L800713C0
       sb        $4, 0xAC8($16)
  .L800713C0:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_80071384

.globl func_800713D4
.ent func_800713D4
func_800713D4:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x0($17)
      lw         $4, 0x30($2)
      jal        func_80052540
       addu      $16, $5, $0
      jal        func_800523C0
       addu      $4, $16, $0
      lw         $3, 0x0($17)
      addiu      $16, $0, 0x1
      bnez       $2, .L80071418
       sw        $2, 0x30($3)
      j          .L80071474
       addiu     $2, $0, -0x5
  .L80071418:
      lbu        $2, 0xACB($17)
      beql       $2, $0, .L80071424
       sb        $16, 0xACB($17)
  .L80071424:
      lw         $2, 0xC($17)
      beqz       $2, .L80071468
       nop
      lw         $4, 0xAC($2)
      beqz       $4, .L80071468
       nop
      lw         $2, 0xB0($2)
      beqz       $2, .L80071468
       nop
      lw         $3, 0x18($2)
      beqz       $3, .L80071468
       lui       $6, %hi(D_800ECF14)
      lw         $2, 0x0($17)
      lw         $5, 0x4($17)
      lw         $7, 0x30($2)
      jalr       $3
       addiu     $6, $6, %lo(D_800ECF14)
  .L80071468:
      jal        func_8006D900
       addu      $4, $17, $0
      addu       $2, $16, $0
  .L80071474:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800713D4

.globl func_80071488
.ent func_80071488
func_80071488:
      addiu      $29, $29, -0x60
      sw         $17, 0x54($29)
      addu       $17, $4, $0
      sw         $18, 0x58($29)
      addu       $18, $5, $0
      sw         $16, 0x50($29)
      addu       $16, $6, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      addu       $7, $5, $0
      sw         $31, 0x5C($29)
      jal        func_8006FFE8
       sw        $0, 0x10($29)
      beqz       $16, .L800714D0
       addu      $4, $17, $0
      lbu        $2, 0x0($16)
      bnez       $2, .L800714D8
       addu      $5, $16, $0
  .L800714D0:
      lui        $5, %hi(D_800ECA80)
      addiu      $5, $5, %lo(D_800ECA80)
  .L800714D8:
      jal        func_8006ED08
       nop
      addu       $4, $17, $0
      addu       $5, $0, $0
      addu       $6, $18, $0
      lui        $7, %hi(D_800EC638)
      addiu      $7, $7, %lo(D_800EC638)
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      jal        func_8006B500
       sw        $0, 0x18($29)
      addu       $4, $17, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      addu       $7, $5, $0
      lui        $2, %hi(D_800ECE00)
      addiu      $2, $2, %lo(D_800ECE00)
      sw         $2, 0x14($29)
      lui        $2, %hi(D_800ECC88)
      addiu      $2, $2, %lo(D_800ECC88)
      sw         $0, 0x10($29)
      sw         $0, 0x18($29)
      sw         $2, 0x1C($29)
      sw         $0, 0x20($29)
      sw         $0, 0x24($29)
      sw         $0, 0x28($29)
      sw         $0, 0x2C($29)
      sw         $0, 0x30($29)
      sw         $0, 0x34($29)
      sw         $0, 0x38($29)
      sw         $0, 0x3C($29)
      sw         $0, 0x40($29)
      sw         $0, 0x44($29)
      jal        func_8006B738
       sw        $0, 0x48($29)
      addu       $4, $17, $0
      jal        func_8006B6F8
       addu      $16, $2, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      addu       $7, $5, $0
      jal        func_8006FFE8
       sw        $0, 0x10($29)
      addu       $2, $16, $0
      lw         $31, 0x5C($29)
      lw         $18, 0x58($29)
      lw         $17, 0x54($29)
      lw         $16, 0x50($29)
      jr         $31
       addiu     $29, $29, 0x60
.end func_80071488

.globl func_800715A4
.ent func_800715A4
func_800715A4:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      jal        func_80057CF0
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L80071620
       lui       $4, %hi(D_800ECCDC)
      addiu      $4, $4, %lo(D_800ECCDC)
      jal        func_8005211C
       addu      $5, $16, $0
      beqz       $2, .L80071618
       lui       $4, %hi(D_800ECCE4)
      addiu      $4, $4, %lo(D_800ECCE4)
      jal        func_8005211C
       addu      $5, $16, $0
      beqz       $2, .L80071618
       lui       $4, %hi(D_800ECCEC)
      addiu      $4, $4, %lo(D_800ECCEC)
      jal        func_8005211C
       addu      $5, $16, $0
      beqz       $2, .L80071618
       lui       $4, %hi(D_800ECCF4)
      addiu      $4, $4, %lo(D_800ECCF4)
      jal        func_8005211C
       addu      $5, $16, $0
      bnez       $2, .L80071624
       addu      $4, $17, $0
  .L80071618:
      j          .L80071630
       addiu     $2, $0, 0x1
  .L80071620:
      addu       $4, $17, $0
  .L80071624:
      jal        func_800563C0
       addiu     $5, $0, 0x23
      sltiu      $2, $2, 0x1
  .L80071630:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800715A4

.globl func_80071644
.ent func_80071644
func_80071644:
      addiu      $2, $0, -0x1
      beq        $6, $2, .L80071668
       nop
      sw         $6, 0x0($5)
      lw         $4, 0x0($4)
      lw         $3, 0xB0($4)
      addiu      $2, $0, 0x1
      or         $3, $3, $7
      sw         $3, 0xB0($4)
  .L80071668:
      jr         $31
       nop
.end func_80071644

.globl func_80071670
.ent func_80071670
func_80071670:
      addiu      $29, $29, -0x38
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $23, 0x2C($29)
      addu       $23, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $30, 0x30($29)
      addu       $30, $7, $0
      sw         $18, 0x18($29)
      sw         $21, 0x24($29)
      lw         $21, 0x4C($29)
      lui        $2, %hi(D_80137AC8)
      sw         $22, 0x28($29)
      lw         $22, 0x50($29)
      addiu      $2, $2, %lo(D_80137AC8)
      sw         $31, 0x34($29)
      sw         $19, 0x1C($29)
      sw         $16, 0x10($29)
      lw         $19, 0xF0($2)
      beqz       $20, .L80071768
       addiu     $18, $0, 0x1
      lbu        $2, 0x1B($2)
      beqz       $2, .L80071768
       nop
      jal        func_800715A4
       addu      $4, $20, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80071768
       nop
      lw         $2, 0x0($17)
      lw         $2, 0xB8($2)
      bnez       $2, .L80071770
       addiu     $4, $0, 0x20
      jal        func_80052504
       addu      $5, $0, $0
      lw         $3, 0x0($17)
      sw         $2, 0xB8($3)
      lw         $2, 0x0($17)
      lw         $16, 0xB8($2)
      beqz       $16, .L8007173C
       addiu     $4, $0, 0x40
      jal        func_80052504
       addu      $5, $0, $0
      beqz       $2, .L8007173C
       sw        $2, 0x0($16)
      jal        func_800523C0
       addu      $4, $20, $0
      lw         $3, 0x0($16)
      bnez       $2, .L80071744
       sw        $2, 0x20($3)
  .L8007173C:
      j          .L800718DC
       addiu     $2, $0, -0x5
  .L80071744:
      lw         $2, 0x0($16)
      sb         $18, 0x39($2)
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x2
      sb         $2, 0x3A($3)
      lw         $4, 0x0($17)
      lw         $5, 0x0($16)
      jal        func_800749A0
       nop
  .L80071768:
      lw         $2, 0x0($17)
      sb         $0, 0xDF($2)
  .L80071770:
      beqz       $23, .L80071798
       addu      $4, $23, $0
      jal        func_8005339C
       addu      $5, $19, $0
      addu       $4, $17, $0
      addu       $6, $2, $0
      lw         $5, 0x0($17)
      addiu      $7, $0, 0x2
      jal        func_80071644
       addiu     $5, $5, 0xA4
  .L80071798:
      beqz       $30, .L800717C0
       addu      $4, $30, $0
      jal        func_8005339C
       addu      $5, $19, $0
      addu       $4, $17, $0
      addu       $6, $2, $0
      lw         $5, 0x0($17)
      addiu      $7, $0, 0x1
      jal        func_80071644
       addiu     $5, $5, 0xB4
  .L800717C0:
      lw         $8, 0x48($29)
      beqz       $8, .L800717EC
       addu      $4, $8, $0
      jal        func_8005339C
       addu      $5, $19, $0
      addu       $4, $17, $0
      addu       $6, $2, $0
      lw         $5, 0x0($17)
      addiu      $7, $0, 0x4
      jal        func_80071644
       addiu     $5, $5, 0xA8
  .L800717EC:
      lw         $8, 0x54($29)
      beqz       $8, .L80071818
       addu      $4, $8, $0
      jal        func_8005339C
       addu      $5, $19, $0
      addu       $4, $17, $0
      addu       $6, $2, $0
      lw         $5, 0x0($17)
      addiu      $7, $0, 0x10
      jal        func_80071644
       addiu     $5, $5, 0xAC
  .L80071818:
      lw         $8, 0x58($29)
      beqz       $8, .L80071844
       addu      $4, $8, $0
      jal        func_8005339C
       addu      $5, $19, $0
      addu       $4, $17, $0
      addu       $6, $2, $0
      lw         $5, 0x0($17)
      addiu      $7, $0, 0x8
      jal        func_80071644
       addiu     $5, $5, 0xA0
  .L80071844:
      lw         $2, 0x8($17)
      beqz       $2, .L800718BC
       addu      $4, $17, $0
      beqz       $21, .L80071884
       nop
      lbu        $2, 0x0($21)
      beqz       $2, .L80071884
       nop
      jal        func_80024000
       addu      $4, $21, $0
      lw         $3, 0x8($17)
      sw         $2, 0x58($3)
      lw         $3, 0x0($17)
      lw         $2, 0xB0($3)
      ori        $2, $2, 0x100
      sw         $2, 0xB0($3)
  .L80071884:
      beqz       $22, .L800718BC
       addu      $4, $17, $0
      lbu        $2, 0x0($22)
      beqz       $2, .L800718BC
       nop
      jal        func_80024000
       addu      $4, $22, $0
      lw         $3, 0x8($17)
      sw         $2, 0x54($3)
      lw         $3, 0x0($17)
      lw         $2, 0xB0($3)
      ori        $2, $2, 0x80
      sw         $2, 0xB0($3)
      addu       $4, $17, $0
  .L800718BC:
      lw         $5, 0x5C($29)
      lw         $6, 0x60($29)
      jal        func_80064DD0
       addu      $7, $0, $0
      addu       $18, $2, $0
      beql       $18, $0, .L800718D8
       addiu     $18, $0, 0x1
  .L800718D8:
      addu       $2, $18, $0
  .L800718DC:
      lw         $31, 0x34($29)
      lw         $30, 0x30($29)
      lw         $23, 0x2C($29)
      lw         $22, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80071670

.globl func_8007190C
.ent func_8007190C
func_8007190C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addu       $4, $5, $0
      beqz       $4, .L80071950
       sw        $31, 0x14($29)
      jal        func_80024000
       nop
      addu       $3, $2, $0
      bgtz       $3, .L80071940
       slti      $2, $3, 0x8
      j          .L80071948
       addiu     $3, $0, 0x1
  .L80071940:
      beql       $2, $0, .L80071948
       addiu     $3, $0, 0x7
  .L80071948:
      sw         $3, 0x484($16)
      sb         $0, 0xACF($16)
  .L80071950:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_8007190C

.globl func_80071964
.ent func_80071964
func_80071964:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      addu       $4, $5, $0
      sw         $18, 0x20($29)
      lui        $2, %hi(D_80137BB8)
      sw         $31, 0x28($29)
      sw         $19, 0x24($29)
      sw         $16, 0x18($29)
      lw         $6, 0x3F4($17)
      lbu        $19, 0x43($29)
      lw         $5, %lo(D_80137BB8)($2)
      slti       $3, $6, 0x20
      beqz       $3, .L80071C38
       addu      $18, $7, $0
      sll        $2, $6, 3
      addu       $2, $17, $2
      beqz       $4, .L800719D8
       sb        $0, 0x2F8($2)
      lw         $3, 0x3F4($17)
      sll        $3, $3, 3
      addu       $3, $17, $3
      lbu        $2, 0x2F8($3)
      ori        $2, $2, 0x2
      jal        func_8005339C
       sb        $2, 0x2F8($3)
      lw         $3, 0x3F4($17)
      j          .L80071A24
       sll       $3, $3, 3
  .L800719D8:
      lw         $3, 0x3F4($17)
      blez       $3, .L80071A2C
       addiu     $2, $3, -0x1
      sll        $2, $2, 3
      addu       $2, $17, $2
      lbu        $2, 0x2F8($2)
      andi       $2, $2, 0x2
      beqz       $2, .L80071A2C
       sll       $3, $3, 3
      addu       $3, $17, $3
      lbu        $2, 0x2F8($3)
      ori        $2, $2, 0x2
      sb         $2, 0x2F8($3)
      lw         $2, 0x3F4($17)
      sll        $3, $2, 3
      addiu      $2, $2, -0x1
      sll        $2, $2, 3
      addu       $2, $17, $2
      lw         $2, 0x2F4($2)
  .L80071A24:
      addu       $3, $17, $3
      sw         $2, 0x2F4($3)
  .L80071A2C:
      beqz       $18, .L80071B58
       nop
      jal        func_80024000
       addu      $4, $18, $0
      lw         $3, 0x3F4($17)
      addu       $16, $2, $0
      sll        $3, $3, 3
      addu       $3, $17, $3
      lbu        $4, 0x2F8($3)
      andi       $2, $19, 0xFF
      ori        $4, $4, 0x1
      bnez       $2, .L80071AD8
       sb        $4, 0x2F8($3)
      jal        func_8006D95C
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80071AD8
       addu      $4, $18, $0
      jal        func_80017580
       addiu     $5, $0, 0x2B
      bnez       $2, .L80071A94
       addu      $4, $18, $0
      jal        func_80017580
       addiu     $5, $0, 0x2D
      beqz       $2, .L80071ABC
       slti      $2, $16, 0xE
  .L80071A94:
      lw         $4, 0x18($17)
      lhu        $2, 0x0($4)
      andi       $2, $2, 0x2
      beql       $2, $0, .L80071AB8
       addiu     $16, $0, 0x8
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x0($2)
      subu       $16, $2, $16
  .L80071AB8:
      slti       $2, $16, 0xE
  .L80071ABC:
      beql       $2, $0, .L80071AC4
       addiu     $16, $0, 0xD
  .L80071AC4:
      slti       $2, $16, 0x8
      bnel       $2, $0, .L80071B44
       addiu     $16, $0, 0x8
      j          .L80071B44
       nop
  .L80071AD8:
      addu       $4, $18, $0
      jal        func_80017580
       addiu     $5, $0, 0x2B
      bnez       $2, .L80071B00
       andi      $2, $19, 0xFF
      addu       $4, $18, $0
      jal        func_80017580
       addiu     $5, $0, 0x2D
      beqz       $2, .L80071B30
       andi      $2, $19, 0xFF
  .L80071B00:
      bnez       $2, .L80071B14
       nop
      lw         $2, 0x3F4($17)
      bgtz       $2, .L80071B20
       addiu     $2, $2, -0x1
  .L80071B14:
      lw         $2, 0x484($17)
      j          .L80071B30
       addu      $16, $16, $2
  .L80071B20:
      sll        $2, $2, 3
      addu       $2, $17, $2
      lbu        $2, 0x2F9($2)
      addu       $16, $16, $2
  .L80071B30:
      blezl      $16, .L80071B38
       addiu     $16, $0, 0x1
  .L80071B38:
      slti       $2, $16, 0x8
      beql       $2, $0, .L80071B44
       addiu     $16, $0, 0x7
  .L80071B44:
      lw         $2, 0x3F4($17)
      sll        $2, $2, 3
      addu       $2, $17, $2
      j          .L80071BF0
       sb        $16, 0x2F9($2)
  .L80071B58:
      lw         $3, 0x3F4($17)
      blez       $3, .L80071BB0
       addiu     $2, $3, -0x1
      sll        $2, $2, 3
      addu       $2, $17, $2
      lbu        $2, 0x2F8($2)
      andi       $2, $2, 0x1
      beqz       $2, .L80071BF0
       sll       $3, $3, 3
      addu       $3, $17, $3
      lbu        $2, 0x2F8($3)
      ori        $2, $2, 0x1
      sb         $2, 0x2F8($3)
      lw         $2, 0x3F4($17)
      sll        $3, $2, 3
      addiu      $2, $2, -0x1
      sll        $2, $2, 3
      addu       $2, $17, $2
      lbu        $2, 0x2F9($2)
      addu       $3, $17, $3
      j          .L80071BF0
       sb        $2, 0x2F9($3)
  .L80071BB0:
      jal        func_8006D95C
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80071BF4
       addu      $4, $17, $0
      lw         $3, 0x3F4($17)
      sll        $3, $3, 3
      addu       $3, $17, $3
      lbu        $2, 0x2F8($3)
      ori        $2, $2, 0x1
      sb         $2, 0x2F8($3)
      lw         $2, 0x3F4($17)
      lbu        $3, 0x487($17)
      sll        $2, $2, 3
      addu       $2, $17, $2
      sb         $3, 0x2F9($2)
  .L80071BF0:
      addu       $4, $17, $0
  .L80071BF4:
      lw         $2, 0x3F4($4)
      addiu      $5, $29, 0x10
      sb         $0, 0xACF($4)
      addiu      $2, $2, 0x1
      jal        func_8006DC84
       sw        $2, 0x3F4($4)
      addu       $4, $2, $0
      beqz       $4, .L80071C38
       addiu     $2, $0, 0x24
      lbu        $3, 0x10($29)
      bne        $3, $2, .L80071C38
       nop
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $3, 0x1F($2)
      addiu      $3, $3, 0x1
      sb         $3, 0x1F($2)
  .L80071C38:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x30
.end func_80071964

.globl func_80071C58
.ent func_80071C58
func_80071C58:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $31, 0x20($29)
      sw         $16, 0x18($29)
      lw         $2, 0x3F4($17)
      blez       $2, .L80071CC8
       addiu     $2, $2, -0x1
      addiu      $5, $29, 0x10
      sw         $2, 0x3F4($17)
      jal        func_8006DC84
       sb        $0, 0xACF($17)
      addu       $16, $2, $0
      beqz       $16, .L80071CC8
       addiu     $2, $0, 0x24
      lbu        $3, 0x10($29)
      bne        $3, $2, .L80071CC8
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x1F($2)
      beqz       $2, .L80071CC8
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $3, 0x1F($2)
      addiu      $3, $3, -0x1
      sb         $3, 0x1F($2)
  .L80071CC8:
      lw         $2, 0x3F4($17)
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      sltu       $2, $0, $2
      jr         $31
       addiu     $29, $29, 0x28
.end func_80071C58

.globl func_80071CE4
.ent func_80071CE4
func_80071CE4:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x1C($29)
      sw         $16, 0x10($29)
      lbu        $16, 0x10($17)
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80071D4C
       addu      $18, $4, $0
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $2, $0
      lw         $2, 0x4($2)
      bne        $2, $16, .L80071D4C
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $3, 0x40($18)
      lw         $5, 0x0($2)
      lw         $2, 0x18($3)
      jalr       $2
       addiu     $4, $18, 0x34
      andi       $2, $2, 0xFF
      bnez       $2, .L80071D68
       addiu     $2, $0, 0x1
  .L80071D4C:
      lbu        $4, 0x10($17)
      addiu      $2, $0, 0x5
      beq        $4, $2, .L80071D64
       addiu     $2, $0, 0x3
      bne        $4, $2, .L80071D68
       addu      $2, $0, $0
  .L80071D64:
      addiu      $2, $0, 0x1
  .L80071D68:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80071CE4

.globl func_80071D80
.ent func_80071D80
func_80071D80:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      andi       $7, $7, 0xFF
      sw         $31, 0x20($29)
      beqz       $7, .L80071DEC
       sw        $16, 0x10($29)
      lw         $16, 0x8($17)
      beqz       $16, .L80071DF0
       andi      $2, $19, 0xFF
      addu       $4, $18, $0
  .L80071DBC:
      jal        func_80071CE4
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80071DDC
       nop
      lw         $16, 0x8($16)
      bnez       $16, .L80071DBC
       addu      $4, $18, $0
  .L80071DDC:
      beqz       $16, .L80071DF0
       andi      $2, $19, 0xFF
      sw         $16, 0x8($17)
      sw         $17, 0xC($16)
  .L80071DEC:
      andi       $2, $19, 0xFF
  .L80071DF0:
      beqz       $2, .L80071E34
       nop
      lw         $16, 0xC($17)
      beqz       $16, .L80071E34
       addu      $4, $18, $0
  .L80071E04:
      jal        func_80071CE4
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80071E24
       nop
      lw         $16, 0xC($16)
      bnez       $16, .L80071E04
       addu      $4, $18, $0
  .L80071E24:
      beqz       $16, .L80071E34
       nop
      sw         $16, 0xC($17)
      sw         $17, 0x8($16)
  .L80071E34:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80071D80

.globl func_80071E50
.ent func_80071E50
func_80071E50:
      addiu      $29, $29, -0x40
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $18, 0x28($29)
      addu       $18, $5, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      sw         $31, 0x38($29)
      sw         $21, 0x34($29)
      sw         $20, 0x30($29)
      sw         $19, 0x2C($29)
      jal        func_80058268
       sw        $16, 0x20($29)
      lbu        $3, 0x1F($2)
      lw         $2, 0x3F4($17)
      slt        $2, $2, $3
      beqz       $2, .L80071EAC
       addiu     $16, $0, 0x1
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $3, 0x3F7($17)
      sb         $3, 0x1F($2)
  .L80071EAC:
      addiu      $19, $0, 0x1
  .L80071EB0:
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x1F($2)
      beqz       $2, .L80071EE0
       nop
      bne        $16, $19, .L80071EE0
       nop
      jal        func_80071C58
       addu      $4, $17, $0
      j          .L80071EB0
       addu      $16, $2, $0
  .L80071EE0:
      lbu        $2, 0xAD1($17)
      beqz       $2, .L80071EF8
       addu      $4, $18, $0
      jal        func_8006F414
       addu      $4, $17, $0
      addu       $4, $18, $0
  .L80071EF8:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      lbu        $2, 0x1E($2)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $2, 0xAC1($17)
      lbu        $3, 0x1C($2)
      addiu      $2, $0, 0xB
      bne        $3, $2, .L80071F34
       addu      $4, $18, $0
      jal        func_8006F528
       addu      $4, $17, $0
      j          .L80071F58
       addu      $4, $17, $0
  .L80071F34:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $3, 0x1C($2)
      addiu      $2, $0, 0x5
      bne        $3, $2, .L80071F58
       addu      $4, $17, $0
      jal        func_8006F568
       addu      $4, $17, $0
      addu       $4, $17, $0
  .L80071F58:
      jal        func_8006E54C
       addiu     $5, $0, 0x25
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800720B4
       addu      $2, $16, $0
      addu       $4, $18, $0
      lw         $19, 0x18($17)
      addiu      $5, $0, 0x2
      sb         $16, 0xAD0($17)
      jal        func_80058268
       sb        $0, 0xACE($17)
      sw         $19, 0x0($2)
      lw         $4, 0x0($17)
      jal        func_8006DA88
       addiu     $4, $4, 0x4C
      addu       $5, $18, $0
      addiu      $6, $0, 0x1
      lw         $4, 0x0($17)
      jal        func_80071D80
       addu      $7, $6, $0
      addu       $5, $19, $0
      addiu      $6, $0, 0x1
      lw         $4, 0x0($17)
      jal        func_80071D80
       addu      $7, $0, $0
      addu       $4, $17, $0
      jal        func_8006DC84
       addiu     $5, $29, 0x18
      addu       $21, $2, $0
      lbu        $3, 0x18($29)
      addiu      $2, $0, 0x22
      bne        $3, $2, .L800720B4
       addiu     $2, $0, 0x1
      addu       $4, $21, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      lw         $3, 0x0($2)
      lw         $6, 0x0($17)
      sllv       $2, $3, $5
      addu       $2, $2, $3
      sllv       $2, $2, $5
      subu       $2, $2, $3
      lw         $3, 0x5C($6)
      sll        $2, $2, 3
      jal        func_80058268
       addu      $20, $3, $2
      lbu        $2, 0x20($2)
      beqz       $2, .L8007207C
       addu      $4, $21, $0
      lbu        $3, 0x7F($20)
      beq        $3, $16, .L8007207C
       slti      $2, $3, 0x2
      beqz       $2, .L8007204C
       slti      $2, $3, 0x4
      beqz       $3, .L8007205C
       nop
      j          .L8007207C
       nop
  .L8007204C:
      beqz       $2, .L80072078
       addu      $4, $18, $0
      j          .L8007206C
       nop
  .L8007205C:
      lw         $2, 0x8($18)
      bne        $2, $19, .L8007207C
       addu      $4, $21, $0
      addu       $4, $18, $0
  .L8007206C:
      jal        func_80058268
       addiu     $5, $0, 0x2
      sb         $0, 0x20($2)
  .L80072078:
      addu       $4, $21, $0
  .L8007207C:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x8($2)
      bne        $18, $2, .L800720B4
       addu      $2, $16, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      addu       $7, $5, $0
      jal        func_80072E04
       sw        $0, 0x10($29)
      addu       $2, $16, $0
      addiu      $3, $0, 0x1
      sb         $3, 0x7C($20)
  .L800720B4:
      lw         $31, 0x38($29)
      lw         $21, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_80071E50

.globl func_800720D8
.ent func_800720D8
func_800720D8:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      sw         $31, 0x24($29)
      jal        func_80058268
       sw        $16, 0x18($29)
      lw         $3, 0x0($2)
      lw         $4, 0x0($17)
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      lw         $3, 0x5C($4)
      sll        $2, $2, 3
      addu       $3, $3, $2
      lbu        $2, 0x7C($3)
      sltiu      $2, $2, 0x2
      beqz       $2, .L80072148
       addu      $4, $17, $0
      sw         $0, 0x10($29)
      addu       $5, $0, $0
      addu       $6, $5, $0
      jal        func_80072E04
       addu      $7, $5, $0
  .L80072148:
      addu       $4, $17, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x24
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800721A8
       addu      $2, $0, $0
      lw         $4, 0x0($17)
      sb         $16, 0xAD0($17)
      lw         $17, 0x18($17)
      addiu      $4, $4, 0x4C
      jal        func_8006D980
       addu      $5, $17, $0
      bnel       $2, $16, .L800721A8
       addu      $2, $0, $0
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $18, 0x4($2)
      sb         $0, 0x1F($2)
      addu       $2, $17, $0
  .L800721A8:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800720D8

.globl func_800721C0
.ent func_800721C0
func_800721C0:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      beqz       $16, .L8007224C
       sw        $31, 0x1C($29)
      lui        $5, %hi(D_800ED330)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED330)
      bnez       $2, .L80072200
       addu      $4, $16, $0
      j          .L80072260
       addiu     $2, $0, 0x1
  .L80072200:
      lui        $5, %hi(D_800ED2C8)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2C8)
      beqz       $2, .L80072228
       addu      $4, $16, $0
      lui        $5, %hi(D_800ED28C)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED28C)
      bnez       $2, .L80072230
       addu      $4, $16, $0
  .L80072228:
      j          .L80072260
       addiu     $2, $0, 0x2
  .L80072230:
      lui        $5, %hi(D_800ED27C)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED27C)
      bnez       $2, .L80072250
       andi      $5, $17, 0xFF
      j          .L80072260
       addiu     $2, $0, 0x3
  .L8007224C:
      andi       $5, $17, 0xFF
  .L80072250:
      addiu      $2, $0, 0xFF
      bne        $5, $2, .L80072260
       addu      $2, $5, $0
      andi       $2, $18, 0xFF
  .L80072260:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800721C0

.globl func_80072278
.ent func_80072278
func_80072278:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      beqz       $16, .L80072304
       sw        $31, 0x1C($29)
      lui        $5, %hi(D_800ED2C0)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2C0)
      bnez       $2, .L800722B8
       addu      $4, $16, $0
      j          .L80072318
       addiu     $2, $0, 0x4
  .L800722B8:
      lui        $5, %hi(D_800ED318)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED318)
      bnez       $2, .L800722D4
       addu      $4, $16, $0
      j          .L80072318
       addiu     $2, $0, 0x5
  .L800722D4:
      lui        $5, %hi(D_800ED28C)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED28C)
      beqz       $2, .L800722FC
       addu      $4, $16, $0
      lui        $5, %hi(D_800ED2C8)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2C8)
      bnez       $2, .L80072308
       andi      $5, $17, 0xFF
  .L800722FC:
      j          .L80072318
       addiu     $2, $0, 0xB
  .L80072304:
      andi       $5, $17, 0xFF
  .L80072308:
      addiu      $2, $0, 0xFF
      bne        $5, $2, .L80072318
       addu      $2, $5, $0
      andi       $2, $18, 0xFF
  .L80072318:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80072278

.globl func_80072330
.ent func_80072330
func_80072330:
      lbu        $2, 0x0($4)
      beqz       $2, .L8007235C
       addiu     $2, $2, -0x30
  .L8007233C:
      sltiu      $2, $2, 0xA
      bnez       $2, .L80072350
       addiu     $4, $4, 0x1
      jr         $31
       addu      $2, $0, $0
  .L80072350:
      lbu        $2, 0x0($4)
      bnez       $2, .L8007233C
       addiu     $2, $2, -0x30
  .L8007235C:
      jr         $31
       addiu     $2, $0, 0x1
.end func_80072330

.globl func_80072364
.ent func_80072364
func_80072364:
      addiu      $29, $29, -0x38
      addu       $3, $4, $0
      sw         $16, 0x28($29)
      addu       $16, $5, $0
      sw         $17, 0x2C($29)
      addu       $17, $6, $0
      beqz       $3, .L80072404
       sw        $31, 0x30($29)
      lbu        $2, 0x0($3)
      beqz       $2, .L80072404
       addiu     $4, $29, 0x10
      addu       $5, $3, $0
      jal        func_80052310
       addiu     $6, $0, 0x13
      addiu      $4, $29, 0x10
      jal        func_80017580
       addiu     $5, $0, 0x25
      beqz       $2, .L800723D8
       nop
      sb         $0, 0x0($2)
      jal        func_80072330
       addiu     $4, $29, 0x10
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80072408
       sw        $0, 0x0($16)
      jal        func_80024040
       addiu     $4, $29, 0x10
      j          .L800723F8
       addiu     $3, $0, 0x1
  .L800723D8:
      jal        func_80072330
       addiu     $4, $29, 0x10
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80072408
       sw        $0, 0x0($16)
      jal        func_80024040
       addiu     $4, $29, 0x10
      addiu      $3, $0, 0x2
  .L800723F8:
      sw         $3, 0x0($16)
      j          .L8007240C
       sw        $2, 0x0($17)
  .L80072404:
      sw         $0, 0x0($16)
  .L80072408:
      sw         $0, 0x0($17)
  .L8007240C:
      lw         $31, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80072364

.globl func_80072420
.ent func_80072420
func_80072420:
      addiu      $29, $29, -0x38
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $20, 0x28($29)
      addu       $20, $5, $0
      sw         $21, 0x2C($29)
      addu       $21, $6, $0
      sw         $18, 0x20($29)
      addu       $18, $0, $0
      sw         $17, 0x1C($29)
      addu       $17, $0, $0
      addiu      $5, $29, 0x10
      sw         $31, 0x30($29)
      jal        func_8006DC84
       sw        $16, 0x18($29)
      addu       $16, $2, $0
      beqz       $16, .L800725BC
       addiu     $2, $0, 0x24
      lbu        $3, 0x10($29)
      bne        $3, $2, .L8007251C
       addiu     $2, $0, 0x22
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $16, $0
      lw         $16, 0x4($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $16, $0
      lh         $16, 0x10($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x0($2)
      lw         $3, 0x0($19)
      sll        $2, $4, 2
      addu       $2, $2, $4
      sll        $2, $2, 2
      subu       $2, $2, $4
      lw         $3, 0x5C($3)
      sll        $2, $2, 3
      addu       $5, $3, $2
      lhu        $2, 0x2E($5)
      slt        $2, $16, $2
      beqz       $2, .L800725BC
       sll       $4, $16, 2
      lw         $2, 0x28($5)
      addu       $2, $4, $2
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x2
      bnel       $3, $2, .L800725C0
       sb        $18, 0x0($20)
      addiu      $18, $0, 0x1
      lw         $2, 0x30($5)
      lbu        $3, 0x84($5)
      addu       $2, $4, $2
      lw         $17, 0x0($2)
      lbu        $4, 0x85($5)
      lbu        $2, 0x86($5)
      addu       $3, $3, $4
      sll        $2, $2, 1
      addu       $3, $3, $2
      j          .L800725BC
       subu      $17, $17, $3
  .L8007251C:
      bnel       $3, $2, .L800725C0
       sb        $18, 0x0($20)
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x0($2)
      lw         $3, 0x0($19)
      sll        $2, $4, 2
      addu       $2, $2, $4
      sll        $2, $2, 2
      subu       $2, $2, $4
      lw         $3, 0x5C($3)
      sll        $2, $2, 3
      addu       $5, $3, $2
      lw         $3, 0x5C($5)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L80072570
       nop
      lw         $17, 0x60($5)
      j          .L80072584
       addiu     $18, $0, 0x1
  .L80072570:
      lbu        $2, 0x94($5)
      beqz       $2, .L80072588
       andi      $2, $18, 0xFF
      addiu      $18, $0, 0x1
      lh         $17, 0x96($5)
  .L80072584:
      andi       $2, $18, 0xFF
  .L80072588:
      beql       $2, $0, .L800725C0
       sb        $18, 0x0($20)
      lbu        $2, 0x82($5)
      lbu        $3, 0x83($5)
      lbu        $4, 0x84($5)
      addu       $2, $2, $3
      addu       $2, $2, $4
      lbu        $4, 0x85($5)
      lbu        $3, 0x86($5)
      addu       $2, $2, $4
      sll        $3, $3, 1
      addu       $2, $2, $3
      subu       $17, $17, $2
  .L800725BC:
      sb         $18, 0x0($20)
  .L800725C0:
      sw         $17, 0x0($21)
      lw         $31, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80072420

.globl func_800725E8
.ent func_800725E8
func_800725E8:
      addiu      $29, $29, -0x48
      sw         $30, 0x40($29)
      lw         $30, 0x58($29)
      sw         $21, 0x34($29)
      lw         $21, 0x5C($29)
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $19, 0x2C($29)
      addu       $19, $5, $0
      sw         $22, 0x38($29)
      addu       $22, $6, $0
      sw         $23, 0x3C($29)
      lw         $23, 0x60($29)
      lui        $3, %hi(D_80137BB8)
      sw         $31, 0x44($29)
      sw         $20, 0x30($29)
      sw         $18, 0x28($29)
      sw         $16, 0x20($29)
      lw         $2, 0x4A4($17)
      lw         $3, %lo(D_80137BB8)($3)
      addu       $20, $7, $0
      beqz       $2, .L8007264C
       sw        $3, 0x18($29)
      j          .L80072A60
       addiu     $2, $0, 0x1
  .L8007264C:
      addu       $4, $17, $0
      addiu      $5, $29, 0x10
      jal        func_80072420
       addiu     $6, $29, 0x14
      lbu        $2, 0xAD1($17)
      beqz       $2, .L80072674
       addu      $4, $17, $0
      jal        func_8006F414
       addu      $4, $17, $0
      addu       $4, $17, $0
  .L80072674:
      jal        func_8006E54C
       addiu     $5, $0, 0x22
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bne        $18, $2, .L80072A60
       addu      $2, $18, $0
      lw         $16, 0x18($17)
      beqz       $19, .L8007270C
       addu      $4, $19, $0
      lui        $5, %hi(D_800ED2C0)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2C0)
      bnez       $2, .L800726C0
       addu      $4, $19, $0
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      j          .L8007271C
       addiu     $3, $0, 0x4
  .L800726C0:
      lui        $5, %hi(D_800ED318)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED318)
      bnez       $2, .L800726E8
       addu      $4, $19, $0
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      j          .L8007271C
       addiu     $3, $0, 0x5
  .L800726E8:
      lui        $5, %hi(D_800ED28C)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED28C)
      bnez       $2, .L80072710
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      j          .L8007271C
       addiu     $3, $0, 0xB
  .L8007270C:
      addu       $4, $16, $0
  .L80072710:
      jal        func_80058268
       addiu     $5, $0, 0x4
      addiu      $3, $0, 0x3
  .L8007271C:
      sb         $3, 0x0($2)
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x4
      beq        $3, $2, .L80072754
       addu      $4, $16, $0
      jal        func_80058268
       addu      $5, $2, $0
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x5
      bne        $3, $2, .L80072784
       nop
  .L80072754:
      addiu      $4, $0, 0x8
      jal        func_80052504
       addu      $5, $0, $0
      addu       $3, $2, $0
      beqz       $3, .L80072A60
       addiu     $2, $0, -0x5
      sw         $16, 0x0($3)
      lw         $2, 0x0($17)
      lw         $2, 0xBC($2)
      sw         $2, 0x4($3)
      lw         $2, 0x0($17)
      sw         $3, 0xBC($2)
  .L80072784:
      lw         $4, 0x0($17)
      lw         $19, 0x18($17)
      addiu      $2, $0, 0x1
      sb         $2, 0xAD0($17)
      addiu      $4, $4, 0x4C
      jal        func_8006D980
       addu      $5, $19, $0
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bne        $18, $2, .L80072A60
       addu      $2, $18, $0
      lw         $4, 0x0($17)
      jal        func_8006DB88
       addiu     $4, $4, 0x54
      addu       $16, $2, $0
      bgez       $16, .L800727D0
       addu      $4, $19, $0
      j          .L80072A60
       addiu     $2, $0, -0x5
  .L800727D0:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $19, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $16, 0x0($2)
      lw         $3, 0x0($2)
      lw         $4, 0x0($17)
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      lw         $3, 0x5C($4)
      sll        $2, $2, 3
      addu       $16, $3, $2
      addiu      $2, $0, -0x1
      sh         $2, 0x6E($16)
      addiu      $2, $0, 0xFF
      sb         $2, 0x7D($16)
      beqz       $22, .L80072840
       sb        $2, 0x7E($16)
      lbu        $2, 0x0($22)
      beqz       $2, .L80072840
       addu      $4, $22, $0
      lw         $5, 0x18($29)
      jal        func_8005339C
       sb        $18, 0x89($16)
      sw         $2, 0x64($16)
  .L80072840:
      lw         $8, 0x64($29)
      beql       $8, $0, .L80072860
       sb        $0, 0x8A($16)
      lw         $8, 0x68($29)
      bnel       $8, $0, .L80072860
       sb        $0, 0x8A($16)
      addiu      $2, $0, 0x1
      sb         $2, 0x8A($16)
  .L80072860:
      lui        $2, %hi(D_80137AEB)
      lbu        $2, %lo(D_80137AEB)($2)
      sb         $2, 0x88($16)
      andi       $2, $2, 0xFF
      bnez       $2, .L80072888
       addiu     $2, $0, 0x1
      addiu      $2, $0, 0x2
      sb         $2, 0x86($16)
      j          .L80072894
       sb        $0, 0x87($16)
  .L80072888:
      sb         $2, 0x86($16)
      addiu      $2, $0, 0x2
      sb         $2, 0x87($16)
  .L80072894:
      lbu        $2, 0x88($16)
      beqz       $2, .L80072908
       nop
      beqz       $21, .L800728D4
       nop
      lbu        $2, 0x0($21)
      beqz       $2, .L800728D4
       nop
      jal        func_80072330
       addu      $4, $21, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800728D4
       nop
      jal        func_80024000
       addu      $4, $21, $0
      sb         $2, 0x86($16)
  .L800728D4:
      beqz       $23, .L80072908
       nop
      lbu        $2, 0x0($23)
      beqz       $2, .L80072908
       nop
      jal        func_80072330
       addu      $4, $23, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80072908
       nop
      jal        func_80024000
       addu      $4, $23, $0
      sb         $2, 0x87($16)
  .L80072908:
      beqz       $20, .L8007295C
       addu      $17, $0, $0
      lbu        $2, 0x0($20)
      beqz       $2, .L8007295C
       addiu     $17, $0, 0x1
      jal        func_80072330
       addu      $4, $20, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8007295C
       nop
      lbu        $2, 0x88($16)
      beqz       $2, .L8007294C
       nop
      jal        func_80024000
       addu      $4, $20, $0
      j          .L8007295C
       addu      $17, $2, $0
  .L8007294C:
      jal        func_80024000
       addu      $4, $20, $0
      beql       $2, $0, .L8007295C
       addu      $17, $0, $0
  .L8007295C:
      beqz       $30, .L800729C4
       sb        $0, 0x7F($16)
      addu       $4, $30, $0
      lui        $5, %hi(D_800ED278)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED278)
      bnez       $2, .L80072988
       addu      $4, $30, $0
      addiu      $2, $0, 0x1
      j          .L800729C4
       sb        $2, 0x7F($16)
  .L80072988:
      lui        $5, %hi(D_800ED2A8)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2A8)
      bnez       $2, .L800729A8
       addu      $4, $30, $0
      addiu      $2, $0, 0x3
      j          .L800729C4
       sb        $2, 0x7F($16)
  .L800729A8:
      lui        $5, %hi(D_800ED2D0)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2D0)
      bnez       $2, .L800729C4
       addiu     $2, $0, 0x2
      sb         $2, 0x7F($16)
      addu       $17, $0, $0
  .L800729C4:
      lbu        $3, 0x88($16)
      addiu      $2, $0, 0x1
      beq        $3, $2, .L800729F8
       slti      $2, $3, 0x2
      beql       $2, $0, .L80072A10
       sb        $17, 0x82($16)
      bnel       $3, $0, .L80072A10
       sb        $17, 0x82($16)
      sb         $0, 0x82($16)
      sb         $17, 0x83($16)
      sb         $17, 0x84($16)
      j          .L80072A1C
       sb        $0, 0x85($16)
  .L800729F8:
      slt        $2, $0, $17
      sb         $17, 0x82($16)
      sb         $17, 0x83($16)
      sb         $2, 0x84($16)
      j          .L80072A1C
       sb        $2, 0x85($16)
  .L80072A10:
      sb         $17, 0x83($16)
      sb         $17, 0x84($16)
      sb         $17, 0x85($16)
  .L80072A1C:
      addu       $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addiu      $5, $16, 0x5C
      lw         $4, 0x68($29)
      addiu      $6, $16, 0x60
      jal        func_80072364
       sb        $17, 0xC($2)
      lbu        $2, 0x10($29)
      sb         $2, 0x94($16)
      lhu        $3, 0x16($29)
      addu       $2, $18, $0
      sh         $0, 0x74($16)
      sh         $0, 0x76($16)
      sw         $0, 0x48($16)
      sw         $0, 0x4C($16)
      sh         $3, 0x96($16)
  .L80072A60:
      lw         $31, 0x44($29)
      lw         $30, 0x40($29)
      lw         $23, 0x3C($29)
      lw         $22, 0x38($29)
      lw         $21, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_800725E8

.globl func_80072A90
.ent func_80072A90
func_80072A90:
      addiu      $29, $29, -0x48
      sw         $20, 0x30($29)
      addu       $20, $4, $0
      sw         $23, 0x3C($29)
      addu       $23, $5, $0
      sw         $31, 0x40($29)
      sw         $22, 0x38($29)
      sw         $21, 0x34($29)
      sw         $19, 0x2C($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      sw         $16, 0x20($29)
      lw         $2, 0x4A4($20)
      bnez       $2, .L80072DD4
       addiu     $22, $0, 0x1
      addu       $4, $20, $0
      addiu      $16, $29, 0x18
      jal        func_8006DC84
       addu      $5, $16, $0
      addu       $18, $2, $0
      lbu        $3, 0x18($29)
      addiu      $2, $0, 0x22
      beq        $3, $2, .L80072B14
       addiu     $2, $0, 0x24
      bne        $3, $2, .L80072DD8
       addiu     $2, $0, 0x1
      addu       $4, $20, $0
      jal        func_80071E50
       addu      $5, $18, $0
      addu       $4, $20, $0
      jal        func_8006DC84
       addu      $5, $16, $0
      addu       $18, $2, $0
  .L80072B14:
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x0($2)
      lw         $4, 0x0($20)
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      lw         $3, 0x5C($4)
      sll        $2, $2, 3
      addu       $19, $3, $2
      lh         $2, 0x6E($19)
      addu       $21, $0, $0
      nor        $2, $0, $2
      sltiu      $2, $2, 0x1
      beqz       $23, .L80072B74
       addu      $16, $2, $0
      addu       $4, $23, $0
      lui        $5, %hi(D_800ED27C)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED27C)
      beql       $2, $0, .L80072B84
       addiu     $21, $0, 0x1
  .L80072B74:
      andi       $2, $16, 0xFF
      bnez       $2, .L80072B88
       andi      $16, $21, 0xFF
      addiu      $21, $0, 0x1
  .L80072B84:
      andi       $16, $21, 0xFF
  .L80072B88:
      beqz       $16, .L80072B94
       addiu     $2, $0, 0x1
      sb         $2, 0x7C($19)
  .L80072B94:
      sw         $0, 0x10($29)
      addu       $4, $20, $0
      lui        $5, %hi(D_800ED28C)
      addiu      $5, $5, %lo(D_800ED28C)
      addu       $6, $0, $0
      jal        func_80072E04
       addu      $7, $6, $0
      addu       $4, $20, $0
      jal        func_800720D8
       addu      $5, $18, $0
      addu       $17, $2, $0
      bnez       $17, .L80072BD0
       addu      $4, $17, $0
      j          .L80072DD8
       addiu     $2, $0, -0x5
  .L80072BD0:
      jal        func_80058268
       addiu     $5, $0, 0x2
      bnez       $16, .L80072C38
       sb        $0, 0x20($2)
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x0($2)
      lw         $4, 0x0($20)
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      lw         $3, 0x5C($4)
      sll        $2, $2, 3
      addu       $19, $3, $2
      addiu      $16, $19, 0x40
      jal        func_8006DAA4
       addu      $4, $16, $0
      addu       $4, $16, $0
      jal        func_8006D980
       addiu     $5, $0, -0x1
      addu       $22, $2, $0
      addiu      $2, $0, 0x1
      bne        $22, $2, .L80072DD8
       addu      $2, $22, $0
  .L80072C38:
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x8($2)
      beqz       $2, .L80072CA0
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sh        $0, 0x10($2)
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      addiu      $3, $0, 0x1
      jal        func_80058268
       sh        $3, 0x12($2)
      addu       $4, $17, $0
      lhu        $3, 0x6E($19)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sh        $3, 0x14($2)
      lhu        $3, 0x6E($19)
      addiu      $3, $3, 0x1
      j          .L80072DD4
       sh        $3, 0x16($2)
  .L80072CA0:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sh        $0, 0x10($2)
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      addiu      $16, $0, -0x1
      jal        func_80058268
       sh        $16, 0x12($2)
      sw         $17, 0x8($2)
      andi       $2, $21, 0xFF
      beqz       $2, .L80072CFC
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sh        $16, 0x14($2)
      j          .L80072D20
       addiu     $3, $0, -0x2
  .L80072CFC:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      lhu        $3, 0x6E($19)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sh        $3, 0x14($2)
      lhu        $3, 0x6E($19)
      addiu      $3, $3, 0x1
  .L80072D20:
      sh         $3, 0x16($2)
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      lbu        $3, 0xAC1($20)
      addiu      $5, $0, 0x2
      sb         $3, 0x1E($2)
      addiu      $2, $0, 0x1
      jal        func_80058268
       sb        $2, 0xAC1($20)
      addu       $4, $23, $0
      addiu      $5, $0, 0xFF
      addiu      $6, $0, 0x1
      jal        func_800721C0
       addu      $16, $2, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $2, 0x1D($16)
      addu       $4, $23, $0
      addiu      $6, $0, 0xB
      lbu        $5, 0x7D($19)
      jal        func_80072278
       addu      $16, $2, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $2, 0x1C($16)
      lbu        $3, 0x1C($2)
      addiu      $2, $0, 0xB
      bne        $3, $2, .L80072DB4
       addu      $4, $17, $0
      jal        func_8006F50C
       addu      $4, $20, $0
      j          .L80072DD8
       addu      $2, $22, $0
  .L80072DB4:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $3, 0x1C($2)
      addiu      $2, $0, 0x5
      bne        $3, $2, .L80072DD8
       addu      $2, $22, $0
      jal        func_8006F54C
       addu      $4, $20, $0
  .L80072DD4:
      addu       $2, $22, $0
  .L80072DD8:
      lw         $31, 0x40($29)
      lw         $23, 0x3C($29)
      lw         $22, 0x38($29)
      lw         $21, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_80072A90

.globl func_80072E04
.ent func_80072E04
func_80072E04:
      addiu      $29, $29, -0x38
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $20, 0x28($29)
      addu       $20, $5, $0
      sw         $21, 0x2C($29)
      addu       $21, $6, $0
      sw         $19, 0x24($29)
      sw         $31, 0x30($29)
      sw         $18, 0x20($29)
      sw         $16, 0x18($29)
      lw         $2, 0x4A4($17)
      lw         $18, 0x48($29)
      bnez       $2, .L80072FC4
       addu      $19, $7, $0
      addu       $4, $17, $0
      addiu      $16, $29, 0x10
      jal        func_8006DC84
       addu      $5, $16, $0
      addu       $5, $2, $0
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x22
      beq        $3, $2, .L80072E84
       addiu     $2, $0, 0x24
      bne        $3, $2, .L80072FC8
       addiu     $2, $0, 0x1
      jal        func_80071E50
       addu      $4, $17, $0
      addu       $4, $17, $0
      jal        func_8006DC84
       addu      $5, $16, $0
      addu       $5, $2, $0
  .L80072E84:
      addu       $4, $5, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x0($2)
      lw         $4, 0x0($17)
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      lw         $3, 0x5C($4)
      sll        $2, $2, 3
      addu       $16, $3, $2
      lbu        $3, 0x7C($16)
      addiu      $2, $0, 0x1
      beq        $3, $2, .L80072F40
       sh        $0, 0x6C($16)
      lhu        $2, 0x6E($16)
      addiu      $2, $2, 0x1
      sh         $2, 0x6E($16)
      sll        $2, $2, 16
      blez       $2, .L80072F40
       addiu     $17, $16, 0x40
      jal        func_8006DA98
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80072F44
       addu      $4, $19, $0
      lw         $2, 0x40($16)
      lw         $3, 0x0($2)
      addiu      $2, $0, -0x1
      beq        $3, $2, .L80072F48
       addiu     $5, $0, 0xFF
      lhu        $2, 0x6($17)
      beqz       $2, .L80072F40
       addu      $4, $0, $0
  .L80072F10:
      lw         $3, 0x0($17)
      sll        $2, $4, 2
      addu       $3, $2, $3
      lw         $2, 0x0($3)
      blez       $2, .L80072F2C
       addiu     $2, $2, -0x1
      sw         $2, 0x0($3)
  .L80072F2C:
      lhu        $2, 0x6($17)
      addiu      $4, $4, 0x1
      slt        $2, $4, $2
      bnez       $2, .L80072F10
       nop
  .L80072F40:
      addu       $4, $19, $0
  .L80072F44:
      addiu      $5, $0, 0xFF
  .L80072F48:
      addu       $6, $5, $0
      addiu      $2, $0, 0x2
      jal        func_800721C0
       sb        $2, 0x7C($16)
      addu       $4, $20, $0
      addiu      $5, $0, 0xFF
      addu       $6, $5, $0
      jal        func_80072278
       sb        $2, 0x7E($16)
      beqz       $21, .L80072F8C
       sb        $2, 0x7D($16)
      lw         $2, 0x60($16)
      bnel       $2, $0, .L80072F90
       sb        $0, 0x8B($16)
      addiu      $2, $0, 0x1
      j          .L80072F90
       sb        $2, 0x8B($16)
  .L80072F8C:
      sb         $0, 0x8B($16)
  .L80072F90:
      beql       $18, $0, .L80072FC4
       sb        $0, 0x8C($16)
      lbu        $2, 0x0($18)
      beqz       $2, .L80072FC0
       addu      $4, $18, $0
      lui        $2, %hi(D_80137BB8)
      lw         $5, %lo(D_80137BB8)($2)
      addiu      $2, $0, 0x1
      jal        func_8005339C
       sb        $2, 0x8C($16)
      j          .L80072FC4
       sw        $2, 0x90($16)
  .L80072FC0:
      sb         $0, 0x8C($16)
  .L80072FC4:
      addiu      $2, $0, 0x1
  .L80072FC8:
      lw         $31, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80072E04

.globl func_80072FEC
.ent func_80072FEC
func_80072FEC:
      addiu      $29, $29, -0x40
      sw         $23, 0x34($29)
      addu       $23, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      addu       $4, $6, $0
      sw         $18, 0x20($29)
      addiu      $18, $0, 0x1
      sw         $19, 0x24($29)
      addiu      $19, $23, 0x40
      sw         $31, 0x3C($29)
      sw         $30, 0x38($29)
      sw         $22, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $17, 0x1C($29)
      sw         $7, 0x4C($29)
      beqz       $4, .L80073054
       sw        $0, 0x10($29)
      lbu        $2, 0x0($4)
      beqz       $2, .L80073058
       addiu     $20, $0, 0x1
      jal        func_80024000
       nop
      j          .L80073058
       addu      $20, $2, $0
  .L80073054:
      addiu      $20, $0, 0x1
  .L80073058:
      blezl      $20, .L80073060
       addiu     $20, $0, 0x1
  .L80073060:
      beqz       $16, .L80073080
       addiu     $22, $0, 0x1
      lbu        $2, 0x0($16)
      beqz       $2, .L80073080
       nop
      jal        func_80024000
       addu      $4, $16, $0
      addu       $22, $2, $0
  .L80073080:
      blezl      $22, .L80073088
       addiu     $22, $0, 0x1
  .L80073088:
      lh         $17, 0x6C($23)
      addu       $4, $19, $0
  .L80073090:
      addu       $5, $17, $0
      jal        func_8006DAC8
       addiu     $6, $29, 0x10
      andi       $2, $2, 0xFF
      beqz       $2, .L800730BC
       addu      $4, $19, $0
      lw         $2, 0x10($29)
      blez       $2, .L800730C0
       addu      $5, $17, $0
      j          .L80073090
       addiu     $17, $17, 0x1
  .L800730BC:
      addu       $5, $17, $0
  .L800730C0:
      jal        func_8006DAC8
       addiu     $6, $29, 0x10
      andi       $2, $2, 0xFF
      bnel       $2, $0, .L80073120
       addu      $4, $19, $0
      addu       $16, $17, $0
      addu       $3, $16, $22
      slt        $2, $16, $3
      beql       $2, $0, .L800731A8
       sh        $16, 0x6C($23)
      addiu      $30, $0, 0x1
      addu       $21, $3, $0
      addu       $4, $19, $0
  .L800730F4:
      addu       $5, $16, $0
      jal        func_8006DAF8
       addu      $6, $20, $0
      addu       $18, $2, $0
      bne        $18, $30, .L800731F8
       addiu     $16, $16, 0x1
      slt        $2, $16, $21
      bnez       $2, .L800730F4
       addu      $4, $19, $0
      j          .L800731A8
       sh        $16, 0x6C($23)
  .L80073120:
      addu       $5, $17, $0
      jal        func_8006DAF8
       addu      $6, $20, $0
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bne        $18, $2, .L800731FC
       addu      $2, $18, $0
      addiu      $16, $17, 0x1
      addu       $3, $17, $22
      slt        $2, $16, $3
      beql       $2, $0, .L800731A8
       sh        $16, 0x6C($23)
      addiu      $30, $0, 0x1
      addu       $21, $3, $0
      addu       $4, $19, $0
  .L8007315C:
      addu       $5, $16, $0
      jal        func_8006DAC8
       addiu     $6, $29, 0x10
      andi       $2, $2, 0xFF
      beqz       $2, .L80073180
       addu      $4, $19, $0
      lw         $2, 0x10($29)
      bgtzl      $2, .L800731A8
       sh        $16, 0x6C($23)
  .L80073180:
      addu       $5, $16, $0
      jal        func_8006DAF8
       addu      $6, $20, $0
      addu       $18, $2, $0
      bne        $18, $30, .L800731F8
       addiu     $16, $16, 0x1
      slt        $2, $16, $21
      bnez       $2, .L8007315C
       addu      $4, $19, $0
      sh         $16, 0x6C($23)
  .L800731A8:
      lw         $8, 0x4C($29)
      sh         $17, 0x10($8)
      sh         $16, 0x12($8)
      lhu        $2, 0x6E($23)
      sh         $2, 0x14($8)
      lhu        $2, 0x6E($23)
      addu       $2, $2, $20
      sh         $2, 0x16($8)
      slti       $2, $20, 0x2
      bnez       $2, .L800731E4
       slti      $2, $22, 0x2
      lhu        $2, 0x74($23)
      addiu      $2, $2, 0x1
      sh         $2, 0x74($23)
      slti       $2, $22, 0x2
  .L800731E4:
      bnez       $2, .L800731FC
       addu      $2, $18, $0
      lhu        $2, 0x76($23)
      addiu      $2, $2, 0x1
      sh         $2, 0x76($23)
  .L800731F8:
      addu       $2, $18, $0
  .L800731FC:
      lw         $31, 0x3C($29)
      lw         $30, 0x38($29)
      lw         $23, 0x34($29)
      lw         $22, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_80072FEC

.globl func_8007322C
.ent func_8007322C
func_8007322C:
      addiu      $29, $29, -0x58
      sw         $23, 0x4C($29)
      addu       $23, $4, $0
      sw         $21, 0x44($29)
      addu       $21, $6, $0
      sw         $19, 0x3C($29)
      sw         $30, 0x50($29)
      lw         $30, 0x78($29)
      lui        $3, %hi(D_80137BB8)
      sw         $31, 0x54($29)
      sw         $22, 0x48($29)
      sw         $20, 0x40($29)
      sw         $18, 0x38($29)
      sw         $17, 0x34($29)
      sw         $16, 0x30($29)
      sw         $5, 0x5C($29)
      sw         $7, 0x64($29)
      lw         $2, 0x4A4($23)
      lw         $22, %lo(D_80137BB8)($3)
      bnez       $2, .L800736F0
       addiu     $19, $0, 0x1
      addu       $4, $23, $0
      addiu      $17, $29, 0x10
      jal        func_8006DC84
       addu      $5, $17, $0
      addu       $16, $2, $0
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x22
      beq        $3, $2, .L800732C8
       addiu     $2, $0, 0x24
      bne        $3, $2, .L800736F4
       addiu     $2, $0, 0x1
      addu       $4, $23, $0
      jal        func_80071E50
       addu      $5, $16, $0
      addu       $4, $23, $0
      jal        func_8006DC84
       addu      $5, $17, $0
      addu       $16, $2, $0
  .L800732C8:
      addu       $4, $23, $0
      jal        func_800720D8
       addu      $5, $16, $0
      addu       $18, $2, $0
      bnez       $18, .L800732E8
       addu      $4, $16, $0
      j          .L800736F4
       addiu     $2, $0, -0x5
  .L800732E8:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x0($2)
      lw         $4, 0x0($23)
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      lw         $3, 0x5C($4)
      sll        $2, $2, 3
      beqz       $21, .L80073358
       addu      $20, $3, $2
      lbu        $2, 0x0($21)
      beqz       $2, .L80073358
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      addiu      $3, $0, 0x1
      jal        func_80058268
       sb        $3, 0x23($2)
      addu       $4, $21, $0
      addu       $5, $22, $0
      jal        func_8005339C
       addu      $16, $2, $0
      j          .L80073388
       sw        $2, 0xC($16)
  .L80073358:
      lbu        $2, 0x89($20)
      beqz       $2, .L80073388
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      addiu      $3, $0, 0x1
      jal        func_80058268
       sb        $3, 0x23($2)
      lw         $3, 0x64($20)
      sw         $3, 0xC($2)
  .L80073388:
      beqz       $30, .L800733A0
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      j          .L800733D0
       sb        $0, 0x22($2)
  .L800733A0:
      lw         $8, 0x6C($29)
      beql       $8, $0, .L800733BC
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      j          .L800733CC
       addiu     $3, $0, 0x1
  .L800733BC:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lhu        $3, 0x8A($20)
      sltu       $3, $0, $3
  .L800733CC:
      sb         $3, 0x22($2)
  .L800733D0:
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      lbu        $3, 0x84($20)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $3, 0x20($2)
      addu       $4, $20, $0
      lw         $5, 0x64($29)
      lw         $6, 0x70($29)
      jal        func_80072FEC
       addu      $7, $2, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $0, 0x21($2)
      addiu      $3, $0, -0x1
      beqz       $30, .L80073560
       sh        $3, 0x18($2)
      addu       $4, $30, $0
      addiu      $16, $29, 0x14
      addu       $5, $16, $0
      addiu      $17, $29, 0x18
      jal        func_80072364
       addu      $6, $17, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      lbu        $3, 0x3($16)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $3, 0x21($2)
      addu       $4, $18, $0
      lhu        $3, 0x2($17)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sh        $3, 0x18($2)
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       addu      $16, $2, $0
      lh         $3, 0x12($16)
      lh         $2, 0x10($2)
      subu       $17, $3, $2
      addiu      $2, $0, 0x1
      bne        $17, $2, .L80073564
       addu      $4, $18, $0
      lw         $2, 0x14($29)
      beqz       $2, .L80073564
       nop
      jal        func_80058268
       addiu     $5, $0, 0x2
      addiu      $22, $20, 0x28
      addu       $4, $22, $0
      lh         $16, 0x10($2)
      addiu      $6, $29, 0x1C
      sw         $0, 0x1C($29)
      sw         $0, 0x20($29)
      jal        func_8006DAC8
       addu      $5, $16, $0
      andi       $19, $2, 0xFF
      bnel       $19, $17, .L800734E0
       sw        $0, 0x1C($29)
  .L800734E0:
      addiu      $21, $20, 0x30
      addu       $4, $21, $0
      addu       $5, $16, $0
      jal        func_8006DAC8
       addiu     $6, $29, 0x20
      andi       $19, $2, 0xFF
      addiu      $17, $0, 0x1
      beq        $19, $17, .L8007350C
       nop
      sw         $0, 0x1C($29)
      sw         $0, 0x20($29)
  .L8007350C:
      lw         $2, 0x1C($29)
      lw         $6, 0x14($29)
      bne        $2, $6, .L8007352C
       addiu     $3, $0, 0x1
      lw         $2, 0x18($29)
      lw         $3, 0x20($29)
      slt        $2, $2, $3
      xori       $3, $2, 0x1
  .L8007352C:
      beqz       $3, .L80073560
       addu      $4, $22, $0
      jal        func_8006DAF8
       addu      $5, $16, $0
      addu       $19, $2, $0
      bne        $19, $17, .L800736F4
       addu      $4, $21, $0
      lw         $6, 0x18($29)
      jal        func_8006DAF8
       addu      $5, $16, $0
      addu       $19, $2, $0
      bne        $19, $17, .L800736F4
       nop
  .L80073560:
      addu       $4, $18, $0
  .L80073564:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      lbu        $3, 0xAC1($23)
      addiu      $5, $0, 0x2
      sb         $3, 0x1E($2)
      addiu      $2, $0, 0x1
      jal        func_80058268
       sb        $2, 0xAC1($23)
      addiu      $6, $0, 0x2
      lw         $4, 0x74($29)
      lbu        $5, 0x7E($20)
      jal        func_800721C0
       addu      $16, $2, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $2, 0x1D($16)
      addiu      $6, $0, 0xB
      lw         $4, 0x5C($29)
      lbu        $5, 0x7D($20)
      jal        func_80072278
       addu      $16, $2, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $2, 0x1C($16)
      lbu        $3, 0x1C($2)
      addiu      $2, $0, 0xB
      bne        $3, $2, .L800735F0
       addu      $4, $18, $0
      jal        func_8006F50C
       addu      $4, $23, $0
      j          .L80073614
       addu      $4, $18, $0
  .L800735F0:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $3, 0x1C($2)
      addiu      $2, $0, 0x5
      bne        $3, $2, .L80073614
       addu      $4, $18, $0
      jal        func_8006F54C
       addu      $4, $23, $0
      addu       $4, $18, $0
  .L80073614:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addiu      $3, $0, -0x1
      sh         $3, 0x1A($2)
      lw         $8, 0x68($29)
      beqz       $8, .L800736F0
       addu      $4, $8, $0
      addiu      $5, $29, 0x24
      addiu      $16, $29, 0x28
      jal        func_80072364
       addu      $6, $16, $0
      lw         $3, 0x24($29)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L800736F4
       addu      $2, $19, $0
      lw         $2, 0x28($29)
      blez       $2, .L800736F0
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      lh         $17, 0x14($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      lhu        $3, 0x2($16)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sh        $3, 0x1A($2)
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       addu      $16, $2, $0
      lh         $3, 0x16($16)
      lh         $2, 0x14($2)
      addiu      $3, $3, -0x1
      bne        $2, $3, .L800736F4
       addu      $2, $19, $0
      addiu      $16, $20, 0x38
      addu       $4, $16, $0
      addu       $5, $17, $0
      jal        func_8006DAC8
       addiu     $6, $29, 0x2C
      andi       $2, $2, 0xFF
      beqz       $2, .L800736E0
       addu      $4, $16, $0
      lw         $3, 0x28($29)
      lw         $2, 0x2C($29)
      slt        $2, $2, $3
      beqz       $2, .L800736F4
       addu      $2, $19, $0
  .L800736E0:
      lw         $6, 0x28($29)
      jal        func_8006DAF8
       addu      $5, $17, $0
      addu       $19, $2, $0
  .L800736F0:
      addu       $2, $19, $0
  .L800736F4:
      lw         $31, 0x54($29)
      lw         $30, 0x50($29)
      lw         $23, 0x4C($29)
      lw         $22, 0x48($29)
      lw         $21, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x58
.end func_8007322C

.globl func_80073724
.ent func_80073724
func_80073724:
      addiu      $29, $29, -0x58
      sw         $23, 0x4C($29)
      addu       $23, $4, $0
      sw         $21, 0x44($29)
      addu       $21, $6, $0
      sw         $20, 0x40($29)
      sw         $30, 0x50($29)
      lw         $30, 0x78($29)
      lui        $3, %hi(D_80137BB8)
      sw         $31, 0x54($29)
      sw         $22, 0x48($29)
      sw         $19, 0x3C($29)
      sw         $18, 0x38($29)
      sw         $17, 0x34($29)
      sw         $16, 0x30($29)
      sw         $5, 0x5C($29)
      sw         $7, 0x64($29)
      lw         $2, 0x4A4($23)
      lw         $22, %lo(D_80137BB8)($3)
      bnez       $2, .L80073C18
       addiu     $20, $0, 0x1
      addu       $4, $23, $0
      addiu      $17, $29, 0x10
      jal        func_8006DC84
       addu      $5, $17, $0
      addu       $16, $2, $0
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x22
      beq        $3, $2, .L800737C0
       addiu     $2, $0, 0x24
      bne        $3, $2, .L80073C1C
       addiu     $2, $0, 0x1
      addu       $4, $23, $0
      jal        func_80071E50
       addu      $5, $16, $0
      addu       $4, $23, $0
      jal        func_8006DC84
       addu      $5, $17, $0
      addu       $16, $2, $0
  .L800737C0:
      addu       $4, $23, $0
      jal        func_800720D8
       addu      $5, $16, $0
      addu       $18, $2, $0
      bnez       $18, .L800737E0
       addu      $4, $16, $0
      j          .L80073C1C
       addiu     $2, $0, -0x5
  .L800737E0:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x0($2)
      lw         $4, 0x0($23)
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      lw         $3, 0x5C($4)
      sll        $2, $2, 3
      beqz       $21, .L80073850
       addu      $19, $3, $2
      lbu        $2, 0x0($21)
      beqz       $2, .L80073850
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      addiu      $3, $0, 0x1
      jal        func_80058268
       sb        $3, 0x23($2)
      addu       $4, $21, $0
      addu       $5, $22, $0
      jal        func_8005339C
       addu      $16, $2, $0
      j          .L800738B4
       sw        $2, 0xC($16)
  .L80073850:
      lbu        $2, 0x8C($19)
      beqz       $2, .L80073884
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      addiu      $3, $0, 0x1
      jal        func_80058268
       sb        $3, 0x23($2)
      lw         $3, 0x90($19)
      j          .L800738B4
       sw        $3, 0xC($2)
  .L80073884:
      lbu        $2, 0x89($19)
      beqz       $2, .L800738B4
       nop
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      addiu      $3, $0, 0x1
      jal        func_80058268
       sb        $3, 0x23($2)
      lw         $3, 0x64($19)
      sw         $3, 0xC($2)
  .L800738B4:
      beqz       $30, .L800738CC
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      j          .L800738FC
       sb        $0, 0x22($2)
  .L800738CC:
      lw         $8, 0x6C($29)
      beql       $8, $0, .L800738E8
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      j          .L800738F8
       addiu     $3, $0, 0x1
  .L800738E8:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lhu        $3, 0x8A($19)
      sltu       $3, $0, $3
  .L800738F8:
      sb         $3, 0x22($2)
  .L800738FC:
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      lbu        $3, 0x84($19)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $3, 0x20($2)
      addu       $4, $19, $0
      lw         $5, 0x64($29)
      lw         $6, 0x70($29)
      jal        func_80072FEC
       addu      $7, $2, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $0, 0x21($2)
      addiu      $3, $0, -0x1
      beqz       $30, .L80073A8C
       sh        $3, 0x18($2)
      addu       $4, $30, $0
      addiu      $16, $29, 0x14
      addu       $5, $16, $0
      addiu      $17, $29, 0x18
      jal        func_80072364
       addu      $6, $17, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      lbu        $3, 0x3($16)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $3, 0x21($2)
      addu       $4, $18, $0
      lhu        $3, 0x2($17)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sh        $3, 0x18($2)
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       addu      $16, $2, $0
      lh         $3, 0x12($16)
      lh         $2, 0x10($2)
      subu       $17, $3, $2
      addiu      $2, $0, 0x1
      bne        $17, $2, .L80073A90
       addu      $4, $18, $0
      lw         $2, 0x14($29)
      beqz       $2, .L80073A90
       nop
      jal        func_80058268
       addiu     $5, $0, 0x2
      addiu      $22, $19, 0x28
      addu       $4, $22, $0
      lh         $16, 0x10($2)
      addiu      $6, $29, 0x1C
      sw         $0, 0x1C($29)
      sw         $0, 0x20($29)
      jal        func_8006DAC8
       addu      $5, $16, $0
      andi       $20, $2, 0xFF
      bnel       $20, $17, .L80073A0C
       sw        $0, 0x1C($29)
  .L80073A0C:
      addiu      $21, $19, 0x30
      addu       $4, $21, $0
      addu       $5, $16, $0
      jal        func_8006DAC8
       addiu     $6, $29, 0x20
      andi       $20, $2, 0xFF
      addiu      $17, $0, 0x1
      beq        $20, $17, .L80073A38
       nop
      sw         $0, 0x1C($29)
      sw         $0, 0x20($29)
  .L80073A38:
      lw         $2, 0x1C($29)
      lw         $6, 0x14($29)
      bne        $2, $6, .L80073A58
       addiu     $3, $0, 0x1
      lw         $2, 0x18($29)
      lw         $3, 0x20($29)
      slt        $2, $2, $3
      xori       $3, $2, 0x1
  .L80073A58:
      beqz       $3, .L80073A8C
       addu      $4, $22, $0
      jal        func_8006DAF8
       addu      $5, $16, $0
      addu       $20, $2, $0
      bne        $20, $17, .L80073C1C
       addu      $4, $21, $0
      lw         $6, 0x18($29)
      jal        func_8006DAF8
       addu      $5, $16, $0
      addu       $20, $2, $0
      bne        $20, $17, .L80073C1C
       nop
  .L80073A8C:
      addu       $4, $18, $0
  .L80073A90:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      lbu        $3, 0xAC1($23)
      addiu      $5, $0, 0x2
      sb         $3, 0x1E($2)
      jal        func_80058268
       sb        $0, 0xAC1($23)
      addiu      $6, $0, 0x2
      lw         $4, 0x74($29)
      lbu        $5, 0x7E($19)
      jal        func_800721C0
       addu      $16, $2, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $2, 0x1D($16)
      addiu      $6, $0, 0x4
      lw         $4, 0x5C($29)
      lbu        $5, 0x7D($19)
      jal        func_80072278
       addu      $16, $2, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $2, 0x1C($16)
      lbu        $3, 0x1C($2)
      addiu      $2, $0, 0xB
      bne        $3, $2, .L80073B18
       addu      $4, $18, $0
      jal        func_8006F50C
       addu      $4, $23, $0
      j          .L80073B3C
       addu      $4, $18, $0
  .L80073B18:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $3, 0x1C($2)
      addiu      $2, $0, 0x5
      bne        $3, $2, .L80073B3C
       addu      $4, $18, $0
      jal        func_8006F54C
       addu      $4, $23, $0
      addu       $4, $18, $0
  .L80073B3C:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addiu      $3, $0, -0x1
      sh         $3, 0x1A($2)
      lw         $8, 0x68($29)
      beqz       $8, .L80073C18
       addu      $4, $8, $0
      addiu      $5, $29, 0x24
      addiu      $16, $29, 0x28
      jal        func_80072364
       addu      $6, $16, $0
      lw         $3, 0x24($29)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L80073C1C
       addu      $2, $20, $0
      lw         $2, 0x28($29)
      blez       $2, .L80073C18
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      lh         $17, 0x14($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      lhu        $3, 0x2($16)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sh        $3, 0x1A($2)
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       addu      $16, $2, $0
      lh         $3, 0x16($16)
      lh         $2, 0x14($2)
      addiu      $3, $3, -0x1
      bne        $2, $3, .L80073C1C
       addu      $2, $20, $0
      addiu      $16, $19, 0x38
      addu       $4, $16, $0
      addu       $5, $17, $0
      jal        func_8006DAC8
       addiu     $6, $29, 0x2C
      andi       $2, $2, 0xFF
      beqz       $2, .L80073C08
       addu      $4, $16, $0
      lw         $3, 0x28($29)
      lw         $2, 0x2C($29)
      slt        $2, $2, $3
      beqz       $2, .L80073C1C
       addu      $2, $20, $0
  .L80073C08:
      lw         $6, 0x28($29)
      jal        func_8006DAF8
       addu      $5, $17, $0
      addu       $20, $2, $0
  .L80073C18:
      addu       $2, $20, $0
  .L80073C1C:
      lw         $31, 0x54($29)
      lw         $30, 0x50($29)
      lw         $23, 0x4C($29)
      lw         $22, 0x48($29)
      lw         $21, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x58
.end func_80073724

.globl func_80073C4C
.ent func_80073C4C
func_80073C4C:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $31, 0x28($29)
      sw         $17, 0x24($29)
      lw         $2, 0x4A4($16)
      bnez       $2, .L80073D04
       addiu     $2, $0, 0x1
      addu       $4, $16, $0
      addiu      $17, $29, 0x18
      jal        func_8006DC84
       addu      $5, $17, $0
      addu       $5, $2, $0
      lbu        $3, 0x18($29)
      addiu      $2, $0, 0x22
      beq        $3, $2, .L80073CB0
       addiu     $2, $0, 0x24
      bne        $3, $2, .L80073D04
       addiu     $2, $0, 0x1
      jal        func_80071E50
       addu      $4, $16, $0
      addu       $4, $16, $0
      jal        func_8006DC84
       addu      $5, $17, $0
      addu       $5, $2, $0
  .L80073CB0:
      addu       $4, $5, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $16, $0
      lw         $5, 0x0($4)
      lw         $3, 0x0($2)
      lw         $16, 0x5C($5)
      addu       $5, $0, $0
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      sll        $2, $2, 3
      addu       $6, $5, $0
      addu       $7, $5, $0
      sw         $0, 0x10($29)
      jal        func_80072E04
       addu      $16, $16, $2
      addiu      $2, $0, 0x1
      addu       $3, $2, $0
      sb         $3, 0x7C($16)
  .L80073D04:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80073C4C

.globl func_80073D18
.ent func_80073D18
func_80073D18:
      addiu      $29, $29, -0x40
      sw         $21, 0x34($29)
      addu       $21, $4, $0
      sw         $31, 0x3C($29)
      sw         $22, 0x38($29)
      sw         $20, 0x30($29)
      sw         $19, 0x2C($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      sw         $16, 0x20($29)
      lw         $2, 0x4A4($21)
      bnez       $2, .L8007425C
       addiu     $2, $0, 0x1
      addu       $4, $21, $0
      addiu      $16, $29, 0x10
      jal        func_8006DC84
       addu      $5, $16, $0
      addu       $20, $2, $0
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x22
      beq        $3, $2, .L80073D94
       addiu     $2, $0, 0x24
      bne        $3, $2, .L8007425C
       addiu     $2, $0, 0x1
      addu       $4, $21, $0
      jal        func_80071E50
       addu      $5, $20, $0
      addu       $4, $21, $0
      jal        func_8006DC84
       addu      $5, $16, $0
      addu       $20, $2, $0
  .L80073D94:
      addu       $4, $21, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x23
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8007425C
       addu      $2, $16, $0
      addu       $4, $20, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x18($21)
      addu       $22, $2, $0
      sw         $3, 0x4($22)
      lw         $4, 0x18($21)
      jal        func_80058268
       addiu     $5, $0, 0x2
      sw         $20, 0x0($2)
      lw         $4, 0x0($21)
      jal        func_8006DA88
       addiu     $4, $4, 0x4C
      addu       $5, $20, $0
      addu       $6, $0, $0
      lw         $4, 0x0($21)
      addiu      $7, $0, 0x1
      jal        func_80071D80
       sb        $0, 0xAD0($21)
      addiu      $6, $0, 0x1
      lw         $4, 0x0($21)
      lw         $5, 0x18($21)
      jal        func_80071D80
       addu      $7, $0, $0
      addu       $6, $0, $0
      lw         $3, 0x0($22)
      lw         $4, 0x0($21)
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      lw         $3, 0x5C($4)
      sll        $2, $2, 3
      addu       $19, $3, $2
      lhu        $2, 0x46($19)
      addu       $4, $19, $0
      sll        $5, $2, 16
      sra        $5, $5, 16
      jal        func_8006DAF8
       sh        $2, 0x68($19)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8007425C
       addu      $2, $16, $0
      addiu      $4, $19, 0x10
      lh         $5, 0x68($19)
      jal        func_8006DAF8
       addu      $6, $0, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8007425C
       addu      $2, $16, $0
      addiu      $4, $19, 0x18
      lh         $5, 0x68($19)
      jal        func_8006DAF8
       addu      $6, $0, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8007425C
       addu      $2, $16, $0
      addiu      $4, $19, 0x28
      lh         $5, 0x68($19)
      jal        func_8006DAF8
       addu      $6, $0, $0
      addu       $16, $2, $0
      addiu      $17, $0, 0x1
      bne        $16, $17, .L8007425C
       addiu     $4, $19, 0x30
      lh         $5, 0x68($19)
      jal        func_8006DAF8
       addu      $6, $0, $0
      addu       $16, $2, $0
      bne        $16, $17, .L8007425C
       addu      $18, $20, $0
      beqz       $18, .L80074074
       nop
  .L80073EE0:
      lw         $2, 0x18($21)
      beq        $18, $2, .L80074074
       addiu     $2, $0, 0x24
      lbu        $3, 0x10($18)
      bne        $3, $2, .L80074068
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x4($2)
      bne        $2, $20, .L80074068
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $2, 0x18($2)
      blez       $2, .L80074068
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       addu      $16, $2, $0
      lh         $3, 0x12($16)
      lh         $2, 0x10($2)
      subu       $3, $3, $2
      slti       $3, $3, 0x2
      bnez       $3, .L80074068
       addu      $17, $0, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $16, 0x10($2)
  .L80073F60:
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $2, 0x12($2)
      slt        $2, $16, $2
      beqz       $2, .L80073FAC
       addiu     $4, $19, 0x28
      addu       $5, $16, $0
      jal        func_8006DAC8
       addiu     $6, $29, 0x14
      addiu      $4, $19, 0x30
      addu       $5, $16, $0
      jal        func_8006DAC8
       addiu     $6, $29, 0x18
      lw         $2, 0x14($29)
      bnel       $2, $0, .L80073FA4
       addiu     $17, $0, 0x1
  .L80073FA4:
      j          .L80073F60
       addiu     $16, $16, 0x1
  .L80073FAC:
      bnez       $17, .L80074068
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       addu      $17, $2, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $18, $0
      lh         $3, 0x12($16)
      lh         $6, 0x10($2)
      lh         $2, 0x18($17)
      subu       $3, $3, $6
      div        $zero, $2, $3
      bnez       $3, .L80074000
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L80074000:
      addiu      $1, $0, -0x1
      bne        $3, $1, .L80074018
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L80074018
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L80074018:
      mflo       $17
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $16, 0x10($2)
  .L80074028:
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $2, 0x12($2)
      slt        $2, $16, $2
      beqz       $2, .L80074068
       addiu     $4, $19, 0x28
      addu       $5, $16, $0
      jal        func_8006DAF8
       addiu     $6, $0, 0x2
      addiu      $4, $19, 0x30
      addu       $5, $16, $0
      jal        func_8006DAF8
       addu      $6, $17, $0
      j          .L80074028
       addiu     $16, $16, 0x1
  .L80074068:
      lw         $18, 0x8($18)
      bnez       $18, .L80073EE0
       nop
  .L80074074:
      lbu        $3, 0x7C($19)
      addiu      $2, $0, 0x1
      beq        $3, $2, .L80074090
       nop
      lhu        $2, 0x6E($19)
      addiu      $2, $2, 0x1
      sh         $2, 0x6E($19)
  .L80074090:
      lhu        $2, 0x6E($19)
      addu       $18, $20, $0
      beqz       $18, .L80074108
       sh        $2, 0x6A($19)
      addiu      $16, $0, 0x24
  .L800740A4:
      lw         $2, 0x18($21)
      beq        $18, $2, .L80074108
       nop
      lbu        $2, 0x10($18)
      bne        $2, $16, .L800740FC
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x4($2)
      bne        $2, $20, .L800740FC
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $3, 0x16($2)
      lh         $2, 0x6A($19)
      slt        $2, $2, $3
      beqz       $2, .L800740FC
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lhu        $3, 0x6A($19)
      sh         $3, 0x16($2)
  .L800740FC:
      lw         $18, 0x8($18)
      bnez       $18, .L800740A4
       nop
  .L80074108:
      lw         $4, 0x8($22)
      beql       $4, $0, .L8007417C
       addiu     $4, $19, 0x8
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $2, $0
      lhu        $3, 0x68($19)
      lh         $2, 0x10($4)
      sh         $3, 0x12($4)
      sll        $3, $3, 16
      sra        $3, $3, 16
      subu       $3, $3, $2
      slti       $3, $3, 0x2
      bnez       $3, .L80074150
       nop
      lhu        $2, 0x76($19)
      addiu      $2, $2, 0x1
      sh         $2, 0x76($19)
  .L80074150:
      lh         $3, 0x14($4)
      addiu      $2, $0, -0x1
      bnel       $3, $2, .L8007417C
       addiu     $4, $19, 0x8
      lhu        $2, 0x6A($19)
      addiu      $3, $2, 0x1
      sh         $3, 0x6A($19)
      sh         $2, 0x14($4)
      lhu        $2, 0x6A($19)
      sh         $2, 0x16($4)
      addiu      $4, $19, 0x8
  .L8007417C:
      lh         $5, 0x6A($19)
      jal        func_8006DAF8
       addu      $6, $0, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8007425C
       addu      $2, $16, $0
      addiu      $4, $19, 0x20
      lh         $5, 0x6A($19)
      jal        func_8006DAF8
       addu      $6, $0, $0
      addu       $16, $2, $0
      addiu      $17, $0, 0x1
      bne        $16, $17, .L8007425C
       addiu     $4, $19, 0x38
      lh         $5, 0x6A($19)
      jal        func_8006DAF8
       addu      $6, $0, $0
      addu       $16, $2, $0
      bne        $16, $17, .L8007425C
       nop
      lh         $4, 0x74($19)
      beqz       $4, .L800741EC
       sll       $4, $4, 3
      jal        func_80052504
       addu      $5, $0, $0
      beqz       $2, .L80074208
       sw        $2, 0x48($19)
  .L800741EC:
      lh         $4, 0x76($19)
      beqz       $4, .L80074210
       sll       $4, $4, 3
      jal        func_80052504
       addu      $5, $0, $0
      bnez       $2, .L80074210
       sw        $2, 0x4C($19)
  .L80074208:
      j          .L8007425C
       addiu     $2, $0, -0x5
  .L80074210:
      lw         $4, 0x0($21)
      lbu        $2, 0xDA($4)
      beqz       $2, .L8007425C
       addu      $2, $16, $0
      jal        func_8006DA98
       addiu     $4, $4, 0x4C
      andi       $2, $2, 0xFF
      beqz       $2, .L80074258
       addu      $4, $21, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x26
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8007425C
       addu      $2, $16, $0
      addu       $4, $21, $0
      jal        func_800540C4
       addu      $5, $0, $0
  .L80074258:
      addu       $2, $16, $0
  .L8007425C:
      lw         $31, 0x3C($29)
      lw         $22, 0x38($29)
      lw         $21, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_80073D18

.globl func_80074284
.ent func_80074284
func_80074284:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      lw         $2, 0x4A4($16)
      bnez       $2, .L800742D4
       addiu     $2, $0, 0x1
      addu       $4, $16, $0
      jal        func_8006DC84
       addiu     $5, $29, 0x10
      addu       $5, $2, $0
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x22
      beq        $3, $2, .L800742D0
       addiu     $2, $0, 0x24
      bne        $3, $2, .L800742D4
       addiu     $2, $0, 0x1
      jal        func_80071E50
       addu      $4, $16, $0
  .L800742D0:
      addiu      $2, $0, 0x1
  .L800742D4:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80074284

.globl func_800742E4
.ent func_800742E4
func_800742E4:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800742E4

.globl func_800742EC
.ent func_800742EC
func_800742EC:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800742EC

.globl func_800742F4
.ent func_800742F4
func_800742F4:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800742F4

.globl func_800742FC
.ent func_800742FC
func_800742FC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x0($16)
      jal        func_80052540
       nop
      sw         $0, 0x0($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800742FC

.globl func_8007432C
.ent func_8007432C
func_8007432C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80052540
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8007432C

.globl func_80074348
.ent func_80074348
func_80074348:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      sw         $31, 0x14($29)
      jal        func_800742FC
       addu      $16, $4, $0
      jal        func_800742FC
       addiu     $4, $16, 0x8
      jal        func_800742FC
       addiu     $4, $16, 0x10
      jal        func_800742FC
       addiu     $4, $16, 0x18
      jal        func_800742FC
       addiu     $4, $16, 0x20
      jal        func_800742FC
       addiu     $4, $16, 0x40
      jal        func_800742FC
       addiu     $4, $16, 0x28
      jal        func_800742FC
       addiu     $4, $16, 0x30
      jal        func_800742FC
       addiu     $4, $16, 0x38
      lw         $4, 0x48($16)
      jal        func_8007432C
       nop
      lw         $4, 0x4C($16)
      jal        func_8007432C
       nop
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80074348

.globl func_800743C4
.ent func_800743C4
func_800743C4:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x8($18)
      beqz       $2, .L80074428
       nop
      lw         $2, 0x4($18)
      blez       $2, .L80074418
       addu      $16, $0, $0
      addu       $17, $16, $0
  .L800743F8:
      lw         $4, 0x8($18)
      addiu      $16, $16, 0x1
      jal        func_80074348
       addu      $4, $4, $17
      lw         $2, 0x4($18)
      slt        $2, $16, $2
      bnez       $2, .L800743F8
       addiu     $17, $17, 0x98
  .L80074418:
      lw         $4, 0x8($18)
      jal        func_80052540
       nop
      sw         $0, 0x8($18)
  .L80074428:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800743C4

.globl func_80074440
.ent func_80074440
func_80074440:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      jal        func_800742FC
       addiu     $4, $16, 0x4C
      jal        func_800743C4
       addiu     $4, $16, 0x54
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80074440

.globl func_80074470
.ent func_80074470
func_80074470:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $16, 0x18($29)
      addiu      $16, $29, 0x10
      sw         $31, 0x20($29)
      jal        func_80074C68
       addu      $4, $16, $0
      addiu      $4, $17, 0xABC
      jal        func_80074C94
       addu      $5, $16, $0
      bgtz       $2, .L800744A8
       addu      $5, $2, $0
      addiu      $5, $0, 0x1
  .L800744A8:
      jal        func_8006DF18
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800744EC
       nop
      lw         $2, 0x4A8($17)
      sltiu      $2, $2, 0x10
      beqz       $2, .L800744D4
       addu      $5, $0, $0
      j          .L800744DC
       addu      $4, $17, $0
  .L800744D4:
      addu       $4, $17, $0
      addiu      $5, $0, 0x1
  .L800744DC:
      jal        func_800540C4
       nop
      jal        func_80074C68
       addiu     $4, $17, 0xABC
  .L800744EC:
      lw         $2, 0x4A8($17)
      addiu      $2, $2, 0x1
      sw         $2, 0x4A8($17)
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80074470

.globl func_8007450C
.ent func_8007450C
func_8007450C:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $31, 0x18($29)
      jal        func_80058434
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L8007484C
       nop
  .L80074530:
      lbu        $3, 0x10($16)
      addiu      $2, $0, 0x29
      beq        $3, $2, .L800746F8
       slti      $2, $3, 0x2A
      beqz       $2, .L80074558
       addiu     $2, $0, 0x2
      beq        $3, $2, .L80074574
       addu      $4, $16, $0
      j          .L80074758
       nop
  .L80074558:
      addiu      $2, $0, 0x2B
      beq        $3, $2, .L8007468C
       addiu     $2, $0, 0x33
      beq        $3, $2, .L80074750
       nop
      j          .L80074758
       nop
  .L80074574:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x0($2)
      beqz       $2, .L80074654
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x0($2)
      lw         $4, 0x20($2)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x0($2)
      lw         $4, 0x24($2)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x0($2)
      lw         $4, 0x28($2)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x0($2)
      lw         $4, 0x2C($2)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x0($2)
      lw         $4, 0x30($2)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x0($2)
      lw         $4, 0x34($2)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x0($2)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      sw         $0, 0x0($2)
  .L80074654:
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x8($2)
      beqz       $2, .L80074758
       nop
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x8($2)
      jal        func_80056630
       nop
      j          .L80074758
       nop
  .L8007468C:
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x4($2)
      beqz       $2, .L800746B8
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x4($2)
      jal        func_80056630
       nop
  .L800746B8:
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x8($2)
      beqz       $2, .L80074758
       nop
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x8($2)
      lw         $4, 0x20($2)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      j          .L80074728
       addiu     $5, $0, 0x2
  .L800746F8:
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x4($2)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $16, $0
      addiu      $5, $0, 0x2
      sw         $0, 0x4($2)
  .L80074728:
      jal        func_80058268
       nop
      lw         $4, 0x8($2)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      j          .L80074758
       sw        $0, 0x8($2)
  .L80074750:
      jal        func_80064C90
       addu      $4, $16, $0
  .L80074758:
      lhu        $2, 0x0($16)
      andi       $2, $2, 0x20
      beqz       $2, .L800747D4
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      beqz       $2, .L800747D4
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $2, 0x8($2)
      beqz       $2, .L800747AC
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $4, 0x8($2)
      jal        func_80056630
       nop
  .L800747AC:
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $4, 0x0($2)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      sw         $0, 0x0($2)
  .L800747D4:
      lhu        $2, 0x0($16)
      andi       $2, $2, 0x100
      beqz       $2, .L80074840
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $2, 0x0($2)
      beqz       $2, .L80074840
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $2, 0x0($2)
      beq        $17, $2, .L80074830
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      addu       $4, $16, $0
      lw         $17, 0x0($2)
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $4, 0x0($2)
      jal        func_800657C0
       nop
  .L80074830:
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      sw         $0, 0x0($2)
  .L80074840:
      lw         $16, 0x8($16)
      bnez       $16, .L80074530
       nop
  .L8007484C:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8007450C

.globl func_80074860
.ent func_80074860
func_80074860:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      beqz       $17, .L8007498C
       sw        $16, 0x10($29)
      lw         $4, 0x2C($17)
      jal        func_80052540
       nop
      lw         $4, 0xC4($17)
      jal        func_80052540
       sw        $0, 0x2C($17)
      addiu      $4, $17, 0x34
      jal        func_80062FD4
       sw        $0, 0xC4($17)
      lw         $4, 0x68($17)
      beqz       $4, .L800748B8
       nop
      jal        func_80060C80
       nop
      sw         $0, 0x68($17)
      sw         $0, 0x7C($17)
  .L800748B8:
      lw         $4, 0x84($17)
      jal        func_80052540
       nop
      lw         $2, 0xB8($17)
      beqz       $2, .L80074908
       sw        $0, 0x84($17)
      lw         $2, 0x0($2)
      beqz       $2, .L800748F8
       nop
      lw         $4, 0x20($2)
      jal        func_80052540
       nop
      lw         $2, 0xB8($17)
      lw         $4, 0x0($2)
      jal        func_80052540
       nop
  .L800748F8:
      lw         $4, 0xB8($17)
      jal        func_80052540
       nop
      sw         $0, 0xB8($17)
  .L80074908:
      lw         $4, 0x44($17)
      jal        func_8007450C
       nop
      lw         $4, 0x44($17)
      jal        func_800582DC
       nop
      lw         $4, 0x44($17)
      jal        func_80052540
       nop
      lw         $4, 0x30($17)
      jal        func_80052540
       sw        $0, 0x44($17)
      addu       $4, $17, $0
      jal        func_80074440
       sw        $0, 0x30($17)
      lw         $4, 0x60($17)
      jal        func_80062840
       nop
      lw         $4, 0xBC($17)
      beqz       $4, .L80074974
       nop
  .L8007495C:
      lw         $16, 0x4($4)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      bnez       $4, .L8007495C
       nop
  .L80074974:
      jal        func_80064830
       addu      $4, $17, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0xEC
  .L8007498C:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80074860

.globl func_800749A0
.ent func_800749A0
func_800749A0:
      beqz       $4, .L800749DC
       nop
      beqz       $5, .L800749DC
       nop
      lw         $3, 0xC0($4)
      bnez       $3, .L800749C8
       nop
      j          .L800749D8
       sw        $5, 0xC0($4)
  .L800749C4:
      lw         $3, 0x10($3)
  .L800749C8:
      lw         $2, 0x10($3)
      bnez       $2, .L800749C4
       nop
      sw         $5, 0x10($3)
  .L800749D8:
      sw         $0, 0x10($5)
  .L800749DC:
      jr         $31
       nop
.end func_800749A0

.globl func_800749E4
.ent func_800749E4
func_800749E4:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x0($16)
      lw         $2, 0xC4($2)
      bnez       $2, .L80074A24
       addu      $4, $5, $0
      jal        func_800523C0
       nop
      lw         $3, 0x0($16)
      sw         $2, 0xC4($3)
      lw         $2, 0x0($16)
      lw         $3, 0xC4($2)
      beqz       $3, .L80074A28
       addiu     $2, $0, -0x5
  .L80074A24:
      addiu      $2, $0, 0x1
  .L80074A28:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800749E4

.globl func_80074A38
.ent func_80074A38
func_80074A38:
      addiu      $2, $0, 0x1
      sb         $2, 0xACE($4)
      addiu      $2, $0, 0x1
      jr         $31
       sb        $0, 0xACF($4)
.end func_80074A38

.globl func_80074A4C
.ent func_80074A4C
func_80074A4C:
      addiu      $2, $0, 0x1
      sb         $0, 0xACF($4)
      jr         $31
       sb        $0, 0xACE($4)
.end func_80074A4C

.globl func_80074A5C
.ent func_80074A5C
func_80074A5C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lbu        $2, 0xACE($16)
      beqz       $2, .L80074A94
       lui       $5, %hi(D_800EC600)
      addiu      $5, $5, %lo(D_800EC600)
      sb         $0, 0xACF($16)
      jal        func_8006ED08
       sb        $0, 0xACE($16)
      addiu      $2, $0, 0x1
      sb         $0, 0xACF($16)
      sb         $2, 0xACE($16)
  .L80074A94:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_80074A5C

.globl func_80074AA8
.ent func_80074AA8
func_80074AA8:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $2, 0x478($16)
      slti       $2, $2, 0x20
      beqz       $2, .L80074B8C
       addu      $17, $5, $0
      beqz       $17, .L80074B1C
       addu      $4, $17, $0
      lui        $5, %hi(D_800ED2C0)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2C0)
      beqz       $2, .L80074B1C
       addu      $4, $17, $0
      lui        $5, %hi(D_800ED28C)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED28C)
      bnez       $2, .L80074B04
       addu      $4, $17, $0
      j          .L80074B20
       addiu     $3, $0, 0x1
  .L80074B04:
      lui        $5, %hi(D_800ED318)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED318)
      sltiu      $2, $2, 0x1
      j          .L80074B20
       sll       $3, $2, 1
  .L80074B1C:
      addu       $3, $0, $0
  .L80074B20:
      lw         $2, 0x478($16)
      sll        $2, $2, 2
      addu       $2, $16, $2
      sw         $3, 0x3F8($2)
      lw         $2, 0x478($16)
      sb         $0, 0xACF($16)
      addiu      $2, $2, 0x1
      sw         $2, 0x478($16)
      addiu      $2, $0, 0x1
      beq        $3, $2, .L80074B74
       nop
      beqz       $3, .L80074B64
       addiu     $2, $0, 0x2
      beq        $3, $2, .L80074B84
       nop
      j          .L80074B8C
       nop
  .L80074B64:
      jal        func_8006F4CC
       addu      $4, $16, $0
      j          .L80074B8C
       nop
  .L80074B74:
      jal        func_8006F50C
       addu      $4, $16, $0
      j          .L80074B8C
       nop
  .L80074B84:
      jal        func_8006F54C
       addu      $4, $16, $0
  .L80074B8C:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_80074AA8

.globl func_80074BA4
.ent func_80074BA4
func_80074BA4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x478($4)
      addiu      $2, $2, -0x1
      sw         $2, 0x478($4)
      sll        $2, $2, 2
      addu       $2, $4, $2
      lw         $3, 0x3F8($2)
      addiu      $2, $0, 0x1
      beq        $3, $2, .L80074C08
       slti      $2, $3, 0x2
      beqz       $2, .L80074BE8
       addiu     $2, $0, 0x2
      beqz       $3, .L80074BF8
       nop
      j          .L80074C20
       nop
  .L80074BE8:
      beq        $3, $2, .L80074C18
       nop
      j          .L80074C20
       nop
  .L80074BF8:
      jal        func_8006F4E8
       nop
      j          .L80074C20
       nop
  .L80074C08:
      jal        func_8006F528
       nop
      j          .L80074C20
       nop
  .L80074C18:
      jal        func_8006F568
       nop
  .L80074C20:
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_80074BA4

.globl func_80074C30
.ent func_80074C30
func_80074C30:
      sra        $3, $3, 16
      subu       $3, $3, $2
      slti       $3, $3, 0x2
      bnez       $3, .L80074C50
.end func_80074C30

.globl func_80074C40
.ent func_80074C40
func_80074C40:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      sw         $31, 0x14($29)
      jal        func_80006584
  .L80074C50:
       addu      $16, $4, $0
      sw         $2, 0x0($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80074C40

.globl func_80074C68
.ent func_80074C68
func_80074C68:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80074C40
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80074C68

.globl func_80074C84
.ent func_80074C84
func_80074C84:
      lw         $2, 0x0($5)
      addu       $2, $2, $6
      jr         $31
       sw        $2, 0x0($4)
.end func_80074C84

.globl func_80074C94
.ent func_80074C94
func_80074C94:
      lw         $3, 0x0($5)
      lw         $2, 0x0($4)
      jr         $31
       subu      $2, $3, $2
.end func_80074C94

.globl func_80074CA4
.ent func_80074CA4
func_80074CA4:
      addu       $6, $0, $0
      addu       $16, $2, $0
      addiu      $17, $0, 0x1
      bne        $16, $17, .L80074D5C
       addiu     $4, $19, 0x38
      lh         $5, 0x6A($19)
      jal        func_8006E5F8
.end func_80074CA4

.globl func_80074CC0
.ent func_80074CC0
func_80074CC0:
      sltiu      $2, $4, 0x8
      beqz       $2, .L80074D24
       lui       $2, %hi(jtbl_800F04C0)
      addiu      $2, $2, %lo(jtbl_800F04C0)
      sll        $3, $4, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80074CE4
.L80074CE4:
      jr         $31
       addiu     $2, $0, 0x4
  .globl .L80074CEC
.L80074CEC:
      jr         $31
       addiu     $2, $0, 0x5
  .globl .L80074CF4
.L80074CF4:
      jr         $31
       addiu     $2, $0, 0x6
  .globl .L80074CFC
.L80074CFC:
      jr         $31
       addiu     $2, $0, 0x7
  .globl .L80074D04
.L80074D04:
      jr         $31
       addiu     $2, $0, 0x1
  .globl .L80074D0C
.L80074D0C:
      jr         $31
       addiu     $2, $0, 0x2
  .globl .L80074D14
.L80074D14:
      jr         $31
       addiu     $2, $0, 0x8
  .globl .L80074D1C
.L80074D1C:
      jr         $31
       addiu     $2, $0, 0x3
  .L80074D24:
      jr         $31
       addiu     $2, $0, -0x1
.end func_80074CC0

.globl func_80074D2C
.ent func_80074D2C
func_80074D2C:
      addiu      $29, $29, -0x18
      addu       $4, $5, $0
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lhu        $2, 0x0($4)
      andi       $2, $2, 0x1
      beqz       $2, .L80074D78
       addu      $16, $6, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $16, $0
      addu       $5, $2, $0
  .L80074D5C:
      jal        func_8008A290
       addu      $6, $4, $0
      andi       $4, $2, 0xFF
      addiu      $2, $0, 0x1
      addu       $3, $2, $0
      bne        $4, $3, .L80074D7C
       nop
  .L80074D78:
      addiu      $2, $0, 0x1
  .L80074D7C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80074D2C

.globl func_80074D8C
.ent func_80074D8C
func_80074D8C:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x18($29)
      jal        func_800778B4
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80074DCC
       addu      $4, $17, $0
      jal        func_8007802C
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80074E0C
       addiu     $2, $0, 0x1
  .L80074DCC:
      jal        func_800778F4
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80074E0C
       addiu     $2, $0, 0x1
      jal        func_80077960
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80074E0C
       addiu     $2, $0, 0x1
      jal        func_80077848
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80074E0C
       addiu     $2, $0, 0x1
      addu       $2, $0, $0
  .L80074E0C:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80074D8C

.globl func_80074E20
.ent func_80074E20
func_80074E20:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      sw         $31, 0x14($29)
      jal        func_800778B4
       addu      $16, $4, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80074E80
       addiu     $2, $0, 0x1
      jal        func_800778F4
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80074E80
       addiu     $2, $0, 0x1
      jal        func_80077960
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80074E80
       addiu     $2, $0, 0x1
      jal        func_80077848
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80074E80
       addiu     $2, $0, 0x1
      addu       $2, $0, $0
  .L80074E80:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80074E20

.globl func_80074E90
.ent func_80074E90
func_80074E90:
      beqz       $4, .L80074EB8
       nop
      lw         $3, 0xC($4)
      lw         $2, 0x4($4)
      bne        $3, $2, .L80074EC0
       nop
      lw         $3, 0x8($4)
      lw         $2, 0x0($4)
      bne        $3, $2, .L80074EC0
       nop
  .L80074EB8:
      jr         $31
       addu      $2, $0, $0
  .L80074EC0:
      jr         $31
       addiu     $2, $0, 0x1
.end func_80074E90

.globl func_80074EC8
.ent func_80074EC8
func_80074EC8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lhu        $2, 0x0($4)
      andi       $2, $2, 0x1
      beqz       $2, .L80074EF4
       addu      $2, $0, $0
      jal        func_80058268
       addu      $5, $0, $0
      jal        func_80074E90
       addu      $4, $2, $0
      andi       $2, $2, 0xFF
  .L80074EF4:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80074EC8

.globl func_80074F00
.ent func_80074F00
func_80074F00:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      jal        func_80060B40
       sw        $18, 0x18($29)
      andi       $2, $2, 0xFF
      beqz       $2, .L80074F40
       addu      $20, $0, $0
      jal        func_80074EC8
       addu      $4, $16, $0
      addu       $20, $2, $0
  .L80074F40:
      andi       $2, $20, 0xFF
      beqz       $2, .L80074FF4
       addiu     $19, $0, 0x1
      lhu        $2, 0x0($16)
      andi       $2, $2, 0x2
      beqz       $2, .L80074FF0
       addiu     $2, $0, 0x1
      lbu        $3, 0x10($16)
      bnel       $3, $2, .L80074FF4
       andi      $2, $20, 0xFF
      addu       $4, $16, $0
      jal        func_80058268
       addu      $5, $2, $0
      addu       $4, $16, $0
      lw         $18, 0x4($2)
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $3, 0x4($17)
      addu       $16, $0, $0
      lw         $4, 0x0($3)
      lw         $5, 0x0($2)
      jal        func_80063054
       addiu     $4, $4, 0x34
      addu       $17, $2, $0
      beqz       $17, .L80074FF4
       andi      $2, $20, 0xFF
      beqz       $18, .L80074FF0
       sltu      $2, $16, $18
      beqz       $2, .L80074FF0
       addu      $19, $16, $0
      addu       $3, $17, $16
  .L80074FBC:
      lb         $2, 0x0($3)
      bltzl      $2, .L80074FF0
       addiu     $19, $0, 0x1
      lbu        $4, 0x0($3)
      jal        func_800126C0
       nop
      bnez       $2, .L80074FE4
       addiu     $16, $16, 0x1
      j          .L80074FF0
       addiu     $19, $0, 0x1
  .L80074FE4:
      sltu       $2, $16, $18
      bnez       $2, .L80074FBC
       addu      $3, $17, $16
  .L80074FF0:
      andi       $2, $20, 0xFF
  .L80074FF4:
      beqz       $2, .L80075000
       addu      $3, $0, $0
      addu       $3, $19, $0
  .L80075000:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x28
.end func_80074F00

.globl func_80075024
.ent func_80075024
func_80075024:
      sltiu      $2, $6, 0x4
      bnez       $2, .L8007515C
       addu      $9, $0, $0
      sltiu      $2, $6, 0x6
      bnez       $2, .L800750D0
       sltiu     $2, $6, 0x8
      beqz       $2, .L8007515C
       nop
      lw         $7, 0x0($5)
      lw         $8, 0x0($4)
      slt        $2, $8, $7
      bnez       $2, .L8007506C
       slt       $2, $7, $8
      lw         $2, 0x8($5)
      lw         $3, 0x8($4)
      slt        $2, $2, $3
      beqz       $2, .L800750A4
       slt       $2, $7, $8
  .L8007506C:
      bnez       $2, .L80075084
       nop
      lw         $2, 0x8($4)
      slt        $2, $2, $7
      beqz       $2, .L800750A8
       addiu     $2, $0, 0x6
  .L80075084:
      lw         $3, 0x8($5)
      slt        $2, $3, $8
      bnez       $2, .L8007515C
       nop
      lw         $2, 0x8($4)
      slt        $2, $2, $3
      bnez       $2, .L8007515C
       nop
  .L800750A4:
      addiu      $2, $0, 0x6
  .L800750A8:
      bne        $6, $2, .L800750C0
       nop
      lw         $3, 0x4($4)
      lw         $2, 0xC($5)
      j          .L80075154
       nop
  .L800750C0:
      lw         $3, 0xC($4)
      lw         $2, 0x4($5)
      j          .L80075154
       nop
  .L800750D0:
      lw         $7, 0x4($5)
      lw         $8, 0x4($4)
      slt        $2, $8, $7
      bnez       $2, .L800750F8
       slt       $2, $7, $8
      lw         $2, 0xC($5)
      lw         $3, 0xC($4)
      slt        $2, $2, $3
      beqz       $2, .L80075130
       slt       $2, $7, $8
  .L800750F8:
      bnez       $2, .L80075110
       nop
      lw         $2, 0xC($4)
      slt        $2, $2, $7
      beqz       $2, .L80075134
       addiu     $2, $0, 0x4
  .L80075110:
      lw         $3, 0xC($5)
      slt        $2, $3, $8
      bnez       $2, .L8007515C
       nop
      lw         $2, 0xC($4)
      slt        $2, $2, $3
      bnez       $2, .L8007515C
       nop
  .L80075130:
      addiu      $2, $0, 0x4
  .L80075134:
      bne        $6, $2, .L8007514C
       nop
      lw         $3, 0x8($5)
      lw         $2, 0x0($4)
      j          .L80075154
       nop
  .L8007514C:
      lw         $3, 0x0($5)
      lw         $2, 0x8($4)
  .L80075154:
      beql       $3, $2, .L8007515C
       addiu     $9, $0, 0x1
  .L8007515C:
      jr         $31
       addu      $2, $9, $0
.end func_80075024

.globl func_80075164
.ent func_80075164
func_80075164:
      addu       $8, $4, $0
      addu       $3, $5, $0
      addiu      $2, $0, 0x5
      beq        $7, $2, .L80075294
       addiu     $4, $0, -0x1
      sltiu      $2, $7, 0x6
      beqz       $2, .L80075194
       addiu     $2, $0, 0x4
      beq        $7, $2, .L80075248
       addu      $2, $4, $0
      j          .L800752E8
       nop
  .L80075194:
      addiu      $2, $0, 0x6
      beq        $7, $2, .L800751B0
       addiu     $2, $0, 0x7
      beq        $7, $2, .L800751FC
       addu      $2, $4, $0
      j          .L800752E8
       nop
  .L800751B0:
      lw         $5, 0xC($3)
      lw         $4, 0x4($3)
      lw         $7, 0x4($8)
      subu       $2, $5, $4
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $2, $2, 1
      addu       $3, $4, $2
      slt        $2, $3, $7
      beqz       $2, .L800751E0
       subu      $4, $7, $5
      addiu      $6, $0, 0x1
  .L800751E0:
      bgtz       $4, .L800752E8
       addu      $2, $4, $0
      andi       $2, $6, 0xFF
      bnel       $2, $0, .L800752E4
       subu      $4, $7, $3
      jr         $31
       addu      $2, $4, $0
  .L800751FC:
      lw         $2, 0xC($3)
      lw         $4, 0x4($3)
      lw         $5, 0xC($8)
      subu       $2, $2, $4
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $2, $2, 1
      addu       $3, $4, $2
      slt        $2, $5, $3
      beqz       $2, .L8007522C
       subu      $4, $4, $5
      addiu      $6, $0, 0x1
  .L8007522C:
      bgtz       $4, .L800752E8
       addu      $2, $4, $0
      andi       $2, $6, 0xFF
      bnel       $2, $0, .L800752E4
       subu      $4, $3, $5
      jr         $31
       addu      $2, $4, $0
  .L80075248:
      lw         $4, 0x8($3)
      lw         $5, 0x0($3)
      lw         $7, 0x0($8)
      subu       $2, $4, $5
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $2, $2, 1
      addu       $3, $5, $2
      slt        $2, $3, $7
      beqz       $2, .L80075278
       subu      $4, $7, $4
      addiu      $6, $0, 0x1
  .L80075278:
      bgtz       $4, .L800752E8
       addu      $2, $4, $0
      andi       $2, $6, 0xFF
      beqz       $2, .L800752E8
       addu      $2, $4, $0
      j          .L800752DC
       subu      $4, $7, $3
  .L80075294:
      lw         $7, 0x8($3)
      lw         $4, 0x0($3)
      lw         $5, 0x8($8)
      subu       $2, $7, $4
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $2, $2, 1
      addu       $3, $4, $2
      slt        $2, $5, $3
      beqz       $2, .L800752C4
       subu      $4, $4, $5
      addiu      $6, $0, 0x1
  .L800752C4:
      bgtz       $4, .L800752E8
       addu      $2, $4, $0
      andi       $2, $6, 0xFF
      beqz       $2, .L800752E8
       addu      $2, $4, $0
      subu       $4, $3, $5
  .L800752DC:
      blezl      $4, .L800752E4
       subu      $4, $7, $5
  .L800752E4:
      addu       $2, $4, $0
  .L800752E8:
      jr         $31
       nop
.end func_80075164

.globl func_800752F0
.ent func_800752F0
func_800752F0:
      slt        $2, $5, $4
      bnel       $2, $0, .L800752FC
       addu      $4, $5, $0
  .L800752FC:
      slt        $2, $6, $4
      bnel       $2, $0, .L80075308
       addu      $4, $6, $0
  .L80075308:
      jr         $31
       addu      $2, $4, $0
.end func_800752F0

.globl func_80075310
.ent func_80075310
func_80075310:
      addiu      $29, $29, -0x48
      sw         $19, 0x3C($29)
      addu       $19, $4, $0
      sw         $18, 0x38($29)
      addu       $18, $5, $0
      sw         $17, 0x34($29)
      addu       $17, $6, $0
      addu       $6, $0, $0
      sltiu      $2, $7, 0x4
      sw         $31, 0x40($29)
      sw         $16, 0x30($29)
      lw         $8, 0x0($18)
      lw         $9, 0x4($18)
      lw         $10, 0x8($18)
      lw         $11, 0xC($18)
      sw         $8, 0x20($29)
      sw         $9, 0x24($29)
      sw         $10, 0x28($29)
      sw         $11, 0x2C($29)
      bnez       $2, .L80075614
       addiu     $5, $29, 0x20
      sltiu      $2, $7, 0x6
      bnez       $2, .L800754A0
       addiu     $4, $29, 0x10
      sltiu      $2, $7, 0x8
      beqz       $2, .L80075614
       nop
      lw         $6, 0xC($18)
      lw         $3, 0x4($18)
      lw         $2, 0x4($17)
      subu       $6, $6, $3
      sw         $2, 0x24($29)
      addu       $2, $2, $6
      sw         $2, 0x2C($29)
      lw         $2, 0x8($18)
      lw         $7, 0x0($18)
      addu       $6, $17, $0
      subu       $2, $2, $7
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $2, $2, 1
      jal        func_8008A3BC
       addu      $16, $7, $2
      andi       $2, $2, 0xFF
      beqz       $2, .L80075448
       nop
      sb         $0, 0x0($19)
      lw         $6, 0x18($29)
      lw         $5, 0x10($29)
      subu       $4, $6, $5
      srl        $2, $4, 31
      addu       $4, $4, $2
      sra        $4, $4, 1
      addu       $4, $5, $4
      subu       $4, $16, $4
      bltzl      $4, .L800753F4
       negu      $4, $4
  .L800753F4:
      subu       $5, $16, $5
      bltzl      $5, .L80075400
       negu      $5, $5
  .L80075400:
      subu       $6, $16, $6
      bltzl      $6, .L8007540C
       negu      $6, $6
  .L8007540C:
      jal        func_800752F0
       nop
      addu       $6, $2, $0
      slti       $2, $6, 0x65
      beql       $2, $0, .L80075424
       addiu     $6, $0, 0x64
  .L80075424:
      lw         $2, 0x18($29)
      lw         $3, 0x10($29)
      lw         $4, 0x0($18)
      subu       $2, $2, $3
      sll        $3, $2, 4
      subu       $3, $3, $2
      lw         $2, 0x8($18)
      j          .L80075568
       sll       $3, $3, 1
  .L80075448:
      lw         $6, 0x8($17)
      lw         $5, 0x0($17)
      subu       $2, $6, $5
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $2, $2, 1
      addu       $2, $5, $2
      subu       $4, $16, $2
      bltzl      $4, .L80075470
       negu      $4, $4
  .L80075470:
      subu       $5, $16, $5
      bltzl      $5, .L8007547C
       negu      $5, $5
  .L8007547C:
      subu       $6, $16, $6
      bltzl      $6, .L80075488
       negu      $6, $6
  .L80075488:
      jal        func_800752F0
       nop
      addiu      $6, $2, 0x1E
      addiu      $2, $0, 0x1
      j          .L80075614
       sb        $2, 0x0($19)
  .L800754A0:
      lw         $6, 0x8($18)
      lw         $3, 0x0($18)
      lw         $2, 0x0($17)
      subu       $6, $6, $3
      sw         $2, 0x20($29)
      addu       $2, $2, $6
      sw         $2, 0x28($29)
      lw         $2, 0xC($18)
      lw         $7, 0x4($18)
      addu       $6, $17, $0
      subu       $2, $2, $7
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $2, $2, 1
      jal        func_8008A3BC
       addu      $16, $7, $2
      andi       $2, $2, 0xFF
      beqz       $2, .L800755C4
       addiu     $2, $0, 0x1
      sb         $0, 0x0($19)
      lw         $6, 0x1C($29)
      lw         $5, 0x14($29)
      subu       $4, $6, $5
      srl        $2, $4, 31
      addu       $4, $4, $2
      sra        $4, $4, 1
      addu       $4, $5, $4
      subu       $4, $16, $4
      bltzl      $4, .L80075518
       negu      $4, $4
  .L80075518:
      subu       $5, $16, $5
      bltzl      $5, .L80075524
       negu      $5, $5
  .L80075524:
      subu       $6, $16, $6
      bltzl      $6, .L80075530
       negu      $6, $6
  .L80075530:
      jal        func_800752F0
       nop
      addu       $6, $2, $0
      slti       $2, $6, 0x65
      beql       $2, $0, .L80075548
       addiu     $6, $0, 0x64
  .L80075548:
      lw         $2, 0x1C($29)
      lw         $3, 0x14($29)
      lw         $4, 0x4($18)
      subu       $2, $2, $3
      sll        $3, $2, 4
      subu       $3, $3, $2
      lw         $2, 0xC($18)
      sll        $3, $3, 1
  .L80075568:
      subu       $2, $2, $4
      div        $zero, $3, $2
      bnez       $2, .L8007557C
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8007557C:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L80075594
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L80075594
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L80075594:
      mflo       $3
      lui        $2, (0x88888889 >> 16)
      ori        $2, $2, (0x88888889 & 0xFFFF)
      mult       $6, $2
      sra        $4, $6, 31
      mfhi       $12
      addu       $2, $12, $6
      sra        $2, $2, 4
      subu       $2, $2, $4
      addiu      $3, $3, -0x1E
      j          .L80075614
       subu      $6, $2, $3
  .L800755C4:
      sb         $2, 0x0($19)
      lw         $6, 0xC($17)
      lw         $5, 0x4($17)
      subu       $2, $6, $5
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $2, $2, 1
      addu       $2, $5, $2
      subu       $4, $16, $2
      bltzl      $4, .L800755F0
       negu      $4, $4
  .L800755F0:
      subu       $5, $16, $5
      bltzl      $5, .L800755FC
       negu      $5, $5
  .L800755FC:
      subu       $6, $16, $6
      bltzl      $6, .L80075608
       negu      $6, $6
  .L80075608:
      jal        func_800752F0
       nop
      addiu      $6, $2, 0x1E
  .L80075614:
      lw         $31, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      addu       $2, $6, $0
      jr         $31
       addiu     $29, $29, 0x48
.end func_80075310

.globl func_80075634
.ent func_80075634
func_80075634:
      addiu      $29, $29, -0x60
      sw         $20, 0x50($29)
      addu       $20, $4, $0
      sw         $21, 0x54($29)
      addu       $21, $5, $0
      addu       $4, $6, $0
      sw         $18, 0x48($29)
      lw         $18, 0x70($29)
      addu       $5, $0, $0
      sw         $16, 0x40($29)
      addu       $16, $7, $0
      sw         $31, 0x58($29)
      sw         $19, 0x4C($29)
      jal        func_80058268
       sw        $17, 0x44($29)
      addu       $4, $16, $0
      lw         $3, 0x0($2)
      lw         $8, 0x4($2)
      lw         $9, 0x8($2)
      lw         $10, 0xC($2)
      sw         $3, 0x20($29)
      sw         $8, 0x24($29)
      sw         $9, 0x28($29)
      sw         $10, 0x2C($29)
      jal        func_80058268
       addu      $5, $0, $0
      addu       $19, $0, $0
      addiu      $4, $29, 0x10
      addiu      $17, $29, 0x20
      addu       $5, $17, $0
      addiu      $16, $29, 0x30
      lw         $3, 0x0($2)
      lw         $8, 0x4($2)
      lw         $9, 0x8($2)
      lw         $10, 0xC($2)
      sw         $3, 0x30($29)
      sw         $8, 0x34($29)
      sw         $9, 0x38($29)
      sw         $10, 0x3C($29)
      jal        func_8008A3BC
       addu      $6, $16, $0
      andi       $2, $2, 0xFF
      bnel       $2, $0, .L80075700
       addiu     $19, $0, 0x1
      addu       $4, $17, $0
      addu       $5, $16, $0
      jal        func_80075024
       addu      $6, $18, $0
      beqz       $2, .L80075704
       addiu     $2, $0, -0x1
      addiu      $19, $0, 0x1
  .L80075700:
      addiu      $2, $0, -0x1
  .L80075704:
      sw         $2, 0x4($20)
      sw         $2, 0x0($20)
      sltiu      $2, $18, 0x4
      bnez       $2, .L80075794
       sltiu     $2, $18, 0x6
      bnez       $2, .L80075760
       addiu     $17, $29, 0x20
      sltiu      $2, $18, 0x8
      beqz       $2, .L80075794
       addu      $4, $17, $0
      addiu      $16, $29, 0x30
      addu       $5, $16, $0
      addu       $6, $19, $0
      jal        func_80075164
       addu      $7, $18, $0
      addu       $4, $21, $0
      addu       $5, $17, $0
      addu       $6, $16, $0
      addu       $7, $18, $0
      jal        func_80075310
       sw        $2, 0x4($20)
      j          .L80075794
       sw        $2, 0x0($20)
  .L80075760:
      addu       $4, $17, $0
      addiu      $16, $29, 0x30
      addu       $5, $16, $0
      addu       $6, $19, $0
      jal        func_80075164
       addu      $7, $18, $0
      addu       $4, $21, $0
      addu       $5, $17, $0
      addu       $6, $16, $0
      addu       $7, $18, $0
      jal        func_80075310
       sw        $2, 0x0($20)
      sw         $2, 0x4($20)
  .L80075794:
      lw         $31, 0x58($29)
      lw         $21, 0x54($29)
      lw         $20, 0x50($29)
      lw         $19, 0x4C($29)
      lw         $18, 0x48($29)
      lw         $17, 0x44($29)
      lw         $16, 0x40($29)
      jr         $31
       addiu     $29, $29, 0x60
.end func_80075634

.globl func_800757B8
.ent func_800757B8
func_800757B8:
      addiu      $29, $29, -0x40
      sw         $16, 0x30($29)
      addu       $16, $4, $0
      addu       $4, $5, $0
      sw         $17, 0x34($29)
      addiu      $17, $0, 0x1
      sltiu      $2, $6, 0x6
      beqz       $2, .L80075858
       sw        $31, 0x38($29)
      sltiu      $2, $6, 0x4
      bnez       $2, .L8007585C
       addu      $2, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $16, $0
      lw         $7, 0x0($2)
      lw         $8, 0x4($2)
      lw         $9, 0x8($2)
      lw         $10, 0xC($2)
      sw         $7, 0x20($29)
      sw         $8, 0x24($29)
      sw         $9, 0x28($29)
      sw         $10, 0x2C($29)
      jal        func_8008BB94
       addiu     $5, $29, 0x10
      lw         $5, 0x50($16)
      lw         $6, 0x4C($16)
      jal        func_8008A204
       addiu     $4, $29, 0x10
      lw         $3, 0x2C($29)
      lw         $2, 0x14($29)
      slt        $2, $2, $3
      beql       $2, $0, .L80075858
       addu      $17, $0, $0
      lw         $2, 0x24($29)
      lw         $3, 0x1C($29)
      slt        $2, $2, $3
      bnez       $2, .L8007585C
       addu      $2, $17, $0
      addu       $17, $0, $0
  .L80075858:
      addu       $2, $17, $0
  .L8007585C:
      lw         $31, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800757B8

.globl func_80075870
.ent func_80075870
func_80075870:
      sltiu      $2, $5, 0x4
      bnez       $2, .L800758AC
       addu      $3, $0, $0
      sltiu      $2, $5, 0x6
      bnez       $2, .L800758A0
       sltiu     $2, $5, 0x8
      beqz       $2, .L800758AC
       nop
      lw         $2, 0x4($4)
      slt        $2, $0, $2
      j          .L800758AC
       addu      $3, $2, $0
  .L800758A0:
      lw         $2, 0x0($4)
      bgtzl      $2, .L800758AC
       addiu     $3, $0, 0x1
  .L800758AC:
      jr         $31
       addu      $2, $3, $0
.end func_80075870

.globl func_800758B4
.ent func_800758B4
func_800758B4:
      sltiu      $2, $5, 0x4
      bnez       $2, .L800758E0
       addu      $3, $0, $0
      sltiu      $2, $5, 0x6
      beqz       $2, .L800758E0
       andi      $2, $6, 0xFF
      beqz       $2, .L800758E0
       nop
      lw         $2, 0x4($4)
      slti       $2, $2, 0x191
      xori       $3, $2, 0x1
  .L800758E0:
      jr         $31
       addu      $2, $3, $0
.end func_800758B4

.globl func_800758E8
.ent func_800758E8
func_800758E8:
      addiu      $9, $0, 0x64
      addu       $8, $9, $0
      addu       $11, $9, $0
      lw         $3, 0x10($29)
      sltiu      $2, $3, 0x4
      bnez       $2, .L80075978
       addu      $10, $9, $0
      sltiu      $2, $3, 0x6
      bnez       $2, .L8007594C
       andi      $2, $5, 0xFF
      sltiu      $2, $3, 0x8
      beqz       $2, .L80075978
       andi      $2, $5, 0xFF
      beqz       $2, .L80075938
       andi      $2, $7, 0xFF
      beqz       $2, .L80075978
       addiu     $9, $0, 0x320
      addiu      $11, $0, 0x12C
      j          .L80075978
       addu      $9, $11, $0
  .L80075938:
      bnez       $2, .L80075978
       addiu     $11, $0, 0x320
      addiu      $11, $0, 0xA
      j          .L80075978
       addu      $9, $11, $0
  .L8007594C:
      beqz       $2, .L80075968
       andi      $2, $7, 0xFF
      beqz       $2, .L80075978
       addiu     $8, $0, 0x2710
      addiu      $10, $0, 0x258
      j          .L80075978
       addu      $8, $10, $0
  .L80075968:
      bnez       $2, .L80075978
       addiu     $10, $0, 0x2710
      addiu      $10, $0, 0xA
      addu       $8, $10, $0
  .L80075978:
      lui        $3, (0x7FFFFFFF >> 16)
      lw         $2, 0x0($4)
      ori        $3, $3, (0x7FFFFFFF & 0xFFFF)
      beql       $2, $3, .L800759A0
       lui       $4, (0x7FFFFFFF >> 16)
      lw         $4, 0x4($4)
      mult       $8, $4
      bne        $4, $3, .L800759A8
       nop
      lui        $4, (0x7FFFFFFF >> 16)
  .L800759A0:
      j          .L800759E0
       ori       $4, $4, (0x7FFFFFFF & 0xFFFF)
  .L800759A8:
      mflo       $3
      nop
      nop
      mult       $9, $2
      mflo       $5
      nop
      nop
      mult       $3, $4
      mflo       $3
      nop
      nop
      mult       $5, $2
      mflo       $8
      addu       $4, $3, $8
  .L800759E0:
      lui        $3, (0x7FFFFFFF >> 16)
      lw         $2, 0x0($6)
      ori        $3, $3, (0x7FFFFFFF & 0xFFFF)
      beql       $2, $3, .L80075A08
       lui       $6, (0x7FFFFFFF >> 16)
      lw         $6, 0x4($6)
      mult       $10, $6
      bne        $6, $3, .L80075A10
       nop
      lui        $6, (0x7FFFFFFF >> 16)
  .L80075A08:
      j          .L80075A48
       ori       $6, $6, (0x7FFFFFFF & 0xFFFF)
  .L80075A10:
      mflo       $3
      nop
      nop
      mult       $11, $2
      mflo       $5
      nop
      nop
      mult       $3, $6
      mflo       $3
      nop
      nop
      mult       $5, $2
      mflo       $8
      addu       $6, $3, $8
  .L80075A48:
      lui        $2, (0x51EB851F >> 16)
      ori        $2, $2, (0x51EB851F & 0xFFFF)
      mult       $4, $2
      mfhi       $3
      nop
      nop
      mult       $6, $2
      sra        $3, $3, 5
      sra        $2, $4, 31
      subu       $4, $3, $2
      sra        $2, $6, 31
      mfhi       $5
      sra        $3, $5, 5
      subu       $6, $3, $2
      slt        $2, $4, $6
      bnez       $2, .L80075A94
       xor       $2, $4, $6
      jr         $31
       sltu      $2, $0, $2
  .L80075A94:
      jr         $31
       addiu     $2, $0, -0x1
.end func_800758E8

.globl func_80075A9C
.ent func_80075A9C
func_80075A9C:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sltiu      $2, $6, 0x5
      sw         $31, 0x1C($29)
      beqz       $2, .L80075B48
       sw        $16, 0x10($29)
      lui        $2, %hi(jtbl_800F04E0)
      addiu      $2, $2, %lo(jtbl_800F04E0)
      sll        $3, $6, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80075ADC
.L80075ADC:
      j          .L80075B4C
       addiu     $2, $0, 0x1
  .globl .L80075AE4
.L80075AE4:
      addu       $16, $0, $0
      jal        func_800778B4
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80075B0C
       addu      $4, $18, $0
      jal        func_8007802C
       addu      $5, $17, $0
      andi       $2, $2, 0xFF
      sltu       $16, $16, $2
  .L80075B0C:
      j          .L80075B4C
       addu      $2, $16, $0
  .globl .L80075B14
.L80075B14:
      jal        func_800778F4
       addu      $4, $17, $0
      j          .L80075B4C
       andi      $2, $2, 0xFF
  .globl .L80075B24
.L80075B24:
      jal        func_80077960
       addu      $4, $17, $0
      j          .L80075B4C
       andi      $2, $2, 0xFF
  .globl .L80075B34
.L80075B34:
      addu       $4, $18, $0
      jal        func_80074D8C
       addu      $5, $17, $0
      j          .L80075B4C
       andi      $2, $2, 0xFF
  .L80075B48:
      addu       $2, $0, $0
  .L80075B4C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80075A9C

.globl func_80075B64
.ent func_80075B64
func_80075B64:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      addu       $4, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      addu       $5, $16, $0
      sw         $31, 0x18($29)
      jal        func_80075A9C
       addu      $6, $7, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80075BAC
       addu      $4, $17, $0
      jal        func_80074F00
       addu      $5, $16, $0
      andi       $3, $2, 0xFF
      bnez       $3, .L80075BB0
       addiu     $2, $0, 0x1
  .L80075BAC:
      addu       $2, $0, $0
  .L80075BB0:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80075B64

.globl func_80075BC4
.ent func_80075BC4
func_80075BC4:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $16, 0x10($29)
      lw         $16, 0x8($17)
      beqz       $16, .L80075C1C
       addu      $19, $6, $0
      addu       $4, $18, $0
  .L80075BF4:
      addu       $5, $17, $0
      addu       $6, $16, $0
      jal        func_80075B64
       addu      $7, $19, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80075C20
       addu      $2, $16, $0
      lw         $16, 0x8($16)
      bnez       $16, .L80075BF4
       addu      $4, $18, $0
  .L80075C1C:
      addu       $2, $17, $0
  .L80075C20:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80075BC4

.globl func_80075C3C
.ent func_80075C3C
func_80075C3C:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $31, 0x20($29)
      jal        func_80075BC4
       sw        $17, 0x14($29)
      addu       $17, $2, $0
      bne        $17, $16, .L80075CC0
       addu      $2, $17, $0
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $4, 0x44($2)
      jal        func_80058434
       nop
      addu       $4, $18, $0
      addu       $5, $17, $0
      addu       $16, $2, $0
      addu       $6, $16, $0
      jal        func_80075B64
       addu      $7, $19, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80075CBC
       addu      $17, $16, $0
      addu       $4, $18, $0
      addu       $5, $16, $0
      jal        func_80075BC4
       addu      $6, $19, $0
      addu       $17, $2, $0
  .L80075CBC:
      addu       $2, $17, $0
  .L80075CC0:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80075C3C

.globl func_80075CDC
.ent func_80075CDC
func_80075CDC:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $16, 0x10($29)
      lw         $16, 0xC($17)
      beqz       $16, .L80075D34
       addu      $19, $6, $0
      addu       $4, $18, $0
  .L80075D0C:
      addu       $5, $17, $0
      addu       $6, $16, $0
      jal        func_80075B64
       addu      $7, $19, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80075D38
       addu      $2, $16, $0
      lw         $16, 0xC($16)
      bnez       $16, .L80075D0C
       addu      $4, $18, $0
  .L80075D34:
      addu       $2, $17, $0
  .L80075D38:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80075CDC

.globl func_80075D54
.ent func_80075D54
func_80075D54:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $31, 0x20($29)
      jal        func_80075CDC
       sw        $17, 0x14($29)
      addu       $17, $2, $0
      bne        $17, $16, .L80075DD8
       addu      $2, $17, $0
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $4, 0x44($2)
      jal        func_80058448
       nop
      addu       $4, $18, $0
      addu       $5, $17, $0
      addu       $16, $2, $0
      addu       $6, $16, $0
      jal        func_80075B64
       addu      $7, $19, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80075DD4
       addu      $17, $16, $0
      addu       $4, $18, $0
      addu       $5, $16, $0
      jal        func_80075CDC
       addu      $6, $19, $0
      addu       $17, $2, $0
  .L80075DD4:
      addu       $2, $17, $0
  .L80075DD8:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80075D54

.globl func_80075DF4
.ent func_80075DF4
func_80075DF4:
      addiu      $29, $29, -0x18
      addiu      $2, $0, 0x6
      beq        $7, $2, .L80075E14
       sw        $31, 0x10($29)
      jal        func_80075BC4
       nop
      j          .L80075E1C
       nop
  .L80075E14:
      jal        func_80075CDC
       nop
  .L80075E1C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80075DF4

.globl func_80075E28
.ent func_80075E28
func_80075E28:
      addiu      $29, $29, -0x38
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $23, 0x2C($29)
      addu       $23, $5, $0
      sw         $22, 0x28($29)
      addu       $22, $6, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $18, 0x18($29)
      addu       $18, $17, $0
      sw         $31, 0x30($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($19)
      lui        $20, (0x7FFFFFFF >> 16)
      lw         $2, 0x0($2)
      ori        $20, $20, (0x7FFFFFFF & 0xFFFF)
      lw         $4, 0x44($2)
      jal        func_80058434
       addu      $21, $7, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x6
      bne        $22, $2, .L80075EA8
       addu      $4, $19, $0
      addu       $5, $16, $0
      addu       $6, $23, $0
      jal        func_80075DF4
       addu      $7, $2, $0
      j          .L80075F58
       addu      $18, $2, $0
  .L80075EA8:
      jal        func_80074E20
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80075ED0
       addu      $4, $19, $0
      addu       $5, $16, $0
      addu       $6, $23, $0
      jal        func_80075DF4
       addu      $7, $22, $0
      addu       $16, $2, $0
  .L80075ED0:
      beqz       $16, .L80075F58
       andi      $21, $21, 0xFF
  .L80075ED8:
      beq        $17, $16, .L80075F58
       nop
      beqz       $21, .L80075EFC
       addu      $4, $19, $0
      jal        func_80078430
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80075F38
       addu      $17, $16, $0
  .L80075EFC:
      lhu        $2, 0x0($16)
      andi       $2, $2, 0x1
      beqz       $2, .L80075F34
       addu      $4, $16, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $2, 0x4($2)
      slt        $2, $2, $20
      beqz       $2, .L80075F34
       addu      $4, $16, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $20, 0x4($2)
      addu       $18, $16, $0
  .L80075F34:
      addu       $17, $16, $0
  .L80075F38:
      addu       $4, $19, $0
      addu       $5, $17, $0
      addu       $6, $23, $0
      jal        func_80075DF4
       addu      $7, $22, $0
      addu       $16, $2, $0
      bnez       $16, .L80075ED8
       nop
  .L80075F58:
      jal        func_80074E20
       addu      $4, $18, $0
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80075F6C
       addu      $18, $0, $0
  .L80075F6C:
      addu       $2, $18, $0
      lw         $31, 0x30($29)
      lw         $23, 0x2C($29)
      lw         $22, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80075E28

.globl func_80075F9C
.ent func_80075F9C
func_80075F9C:
      addiu      $29, $29, -0x20
      lw         $3, 0x30($29)
      sltiu      $2, $3, 0x6
      beqz       $2, .L80075FDC
       sw        $31, 0x18($29)
      sltiu      $2, $3, 0x4
      bnel       $2, $0, .L80075FE0
       sw        $3, 0x10($29)
      lw         $3, 0x4($4)
      lw         $2, 0x4($6)
      bltzl      $3, .L80075FCC
       negu      $3, $3
  .L80075FCC:
      bltzl      $2, .L80075FD4
       negu      $2, $2
  .L80075FD4:
      j          .L80075FF4
       slt       $2, $3, $2
  .L80075FDC:
      sw         $3, 0x10($29)
  .L80075FE0:
      andi       $5, $5, 0xFF
      jal        func_800758E8
       andi      $7, $7, 0xFF
      sll        $2, $2, 16
      srl        $2, $2, 31
  .L80075FF4:
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80075F9C

.globl func_80076000
.ent func_80076000
func_80076000:
      addiu      $29, $29, -0x58
      sw         $22, 0x48($29)
      addu       $22, $4, $0
      sw         $20, 0x40($29)
      addu       $20, $0, $0
      sw         $31, 0x54($29)
      sw         $30, 0x50($29)
      sw         $23, 0x4C($29)
      sw         $21, 0x44($29)
      sw         $19, 0x3C($29)
      sw         $18, 0x38($29)
      sw         $17, 0x34($29)
      sw         $16, 0x30($29)
      lui        $2, (0x7FFFFFFF >> 16)
      ori        $2, $2, (0x7FFFFFFF & 0xFFFF)
      addu       $19, $20, $0
      addu       $23, $6, $0
      lw         $21, 0x6C($29)
      addu       $30, $7, $0
      sw         $2, 0x18($29)
      jal        func_800781AC
       sw        $2, 0x1C($29)
      addu       $16, $2, $0
      beqz       $16, .L800760E0
       lui       $18, (0x7FFFFFFF >> 16)
      ori        $18, $18, (0x7FFFFFFF & 0xFFFF)
      addiu      $17, $29, 0x20
      addu       $4, $17, $0
  .L80076070:
      addiu      $5, $29, 0x28
      addu       $6, $16, $0
      addu       $7, $23, $0
      sw         $18, 0x20($29)
      sw         $18, 0x24($29)
      sb         $0, 0x28($29)
      jal        func_80075634
       sw        $21, 0x10($29)
      addu       $4, $17, $0
      addiu      $6, $29, 0x18
      lbu        $5, 0x28($29)
      addu       $7, $19, $0
      jal        func_80075F9C
       sw        $21, 0x10($29)
      andi       $2, $2, 0xFF
      beqz       $2, .L800760CC
       addu      $4, $22, $0
      lbu        $19, 0x28($29)
      addu       $20, $16, $0
      lw         $8, 0x20($29)
      lw         $9, 0x24($29)
      sw         $8, 0x18($29)
      sw         $9, 0x1C($29)
  .L800760CC:
      jal        func_80078258
       addu      $5, $16, $0
      addu       $16, $2, $0
      bnez       $16, .L80076070
       addu      $4, $17, $0
  .L800760E0:
      lw         $8, 0x18($29)
      lw         $9, 0x1C($29)
      sw         $8, 0x0($30)
      sw         $9, 0x4($30)
      lw         $3, 0x68($29)
      addu       $2, $20, $0
      sb         $19, 0x0($3)
      lw         $31, 0x54($29)
      lw         $30, 0x50($29)
      lw         $23, 0x4C($29)
      lw         $22, 0x48($29)
      lw         $21, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x58
.end func_80076000

.globl func_8007612C
.ent func_8007612C
func_8007612C:
      addiu      $29, $29, -0x58
      sw         $18, 0x38($29)
      addu       $18, $4, $0
      sw         $21, 0x44($29)
      addu       $21, $0, $0
      sw         $31, 0x54($29)
      sw         $30, 0x50($29)
      sw         $23, 0x4C($29)
      sw         $22, 0x48($29)
      sw         $20, 0x40($29)
      sw         $19, 0x3C($29)
      sw         $17, 0x34($29)
      sw         $16, 0x30($29)
      lui        $2, (0x7FFFFFFF >> 16)
      ori        $2, $2, (0x7FFFFFFF & 0xFFFF)
      addu       $20, $21, $0
      lw         $22, 0x6C($29)
      lbu        $3, 0x73($29)
      addu       $16, $5, $0
      sw         $2, 0x18($29)
      sw         $2, 0x1C($29)
      sw         $6, 0x60($29)
      beqz       $16, .L8007624C
       sw        $7, 0x64($29)
      andi       $30, $3, 0xFF
      lui        $19, (0x7FFFFFFF >> 16)
      ori        $19, $19, (0x7FFFFFFF & 0xFFFF)
      addiu      $17, $29, 0x20
      addiu      $23, $29, 0x28
  .L800761A0:
      beqz       $30, .L800761BC
       addu      $4, $18, $0
      jal        func_8007837C
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80076238
       addu      $4, $18, $0
  .L800761BC:
      addu       $4, $18, $0
      addu       $5, $16, $0
      jal        func_800757B8
       addu      $6, $22, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80076238
       addu      $4, $18, $0
      addu       $6, $16, $0
      lw         $5, 0x60($29)
      addu       $7, $17, $0
      sw         $19, 0x20($29)
      sw         $19, 0x24($29)
      sb         $0, 0x28($29)
      sw         $23, 0x10($29)
      jal        func_80076000
       sw        $22, 0x14($29)
      addu       $4, $17, $0
      addiu      $6, $29, 0x18
      lbu        $5, 0x28($29)
      addu       $7, $20, $0
      jal        func_80075F9C
       sw        $22, 0x10($29)
      andi       $2, $2, 0xFF
      beqz       $2, .L80076238
       addu      $4, $18, $0
      lbu        $20, 0x28($29)
      addu       $21, $16, $0
      lw         $8, 0x20($29)
      lw         $9, 0x24($29)
      sw         $8, 0x18($29)
      sw         $9, 0x1C($29)
  .L80076238:
      jal        func_80078258
       addu      $5, $16, $0
      addu       $16, $2, $0
      bnez       $16, .L800761A0
       nop
  .L8007624C:
      lw         $12, 0x64($29)
      lw         $8, 0x18($29)
      lw         $9, 0x1C($29)
      sw         $8, 0x0($12)
      sw         $9, 0x4($12)
      lw         $3, 0x68($29)
      addu       $2, $21, $0
      sb         $20, 0x0($3)
      lw         $31, 0x54($29)
      lw         $30, 0x50($29)
      lw         $23, 0x4C($29)
      lw         $22, 0x48($29)
      lw         $21, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x58
.end func_8007612C

.globl func_8007629C
.ent func_8007629C
func_8007629C:
      addiu      $29, $29, -0x60
      sw         $21, 0x4C($29)
      addu       $21, $4, $0
      sw         $30, 0x58($29)
      addu       $30, $5, $0
      sw         $31, 0x5C($29)
      sw         $23, 0x54($29)
      sw         $22, 0x50($29)
      sw         $20, 0x48($29)
      sw         $19, 0x44($29)
      sw         $18, 0x40($29)
      sw         $17, 0x3C($29)
      sw         $16, 0x38($29)
      sw         $6, 0x68($29)
      lui        $2, (0x7FFFFFFF >> 16)
      lbu        $3, 0x73($29)
      ori        $2, $2, (0x7FFFFFFF & 0xFFFF)
      sw         $2, 0x20($29)
      sw         $2, 0x24($29)
      sb         $3, 0x31($29)
      lw         $2, 0x4($21)
      addu       $19, $7, $0
      lw         $2, 0x0($2)
      addu       $23, $0, $0
      lw         $4, 0x44($2)
      jal        func_80058434
       addu      $22, $23, $0
      addu       $16, $2, $0
      beqz       $16, .L800763FC
       lui       $20, (0x7FFFFFFF >> 16)
      ori        $20, $20, (0x7FFFFFFF & 0xFFFF)
      addiu      $17, $29, 0x28
  .L8007631C:
      beq        $30, $16, .L800763F0
       addu      $4, $21, $0
      addu       $5, $30, $0
      lw         $7, 0x68($29)
      jal        func_80075B64
       addu      $6, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800763F0
       addu      $4, $21, $0
      addu       $5, $16, $0
      addu       $6, $30, $0
      addiu      $2, $29, 0x30
      sw         $20, 0x28($29)
      sw         $20, 0x2C($29)
      sb         $0, 0x30($29)
      sw         $2, 0x10($29)
      lbu        $2, 0x31($29)
      addu       $7, $17, $0
      sw         $19, 0x14($29)
      jal        func_8007612C
       sw        $2, 0x18($29)
      addu       $4, $17, $0
      addu       $5, $19, $0
      jal        func_80075870
       addu      $18, $2, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800763E0
       addu      $4, $17, $0
      addiu      $6, $29, 0x20
      lbu        $5, 0x30($29)
      addu       $7, $22, $0
      jal        func_800758E8
       sw        $19, 0x10($29)
      sll        $2, $2, 16
      bgez       $2, .L800763E4
       addu      $4, $21, $0
      addu       $4, $17, $0
      lbu        $6, 0x30($29)
      jal        func_800758B4
       addu      $5, $19, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L800763E4
       addu      $4, $21, $0
      lbu        $22, 0x30($29)
      addu       $23, $18, $0
      lw         $8, 0x28($29)
      lw         $9, 0x2C($29)
      sw         $8, 0x20($29)
      sw         $9, 0x24($29)
  .L800763E0:
      addu       $4, $21, $0
  .L800763E4:
      jal        func_800782E8
       addu      $5, $16, $0
      addu       $16, $2, $0
  .L800763F0:
      lw         $16, 0x8($16)
      bnez       $16, .L8007631C
       nop
  .L800763FC:
      addu       $2, $23, $0
      lw         $31, 0x5C($29)
      lw         $30, 0x58($29)
      lw         $23, 0x54($29)
      lw         $22, 0x50($29)
      lw         $21, 0x4C($29)
      lw         $20, 0x48($29)
      lw         $19, 0x44($29)
      lw         $18, 0x40($29)
      lw         $17, 0x3C($29)
      lw         $16, 0x38($29)
      jr         $31
       addiu     $29, $29, 0x60
.end func_8007629C

.globl func_80076430
.ent func_80076430
func_80076430:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addu       $4, $7, $0
      addu       $3, $0, $0
      beqz       $6, .L80076454
       sw        $31, 0x14($29)
      bne        $5, $6, .L8007649C
       nop
  .L80076454:
      sltiu      $2, $4, 0x2
      bnez       $2, .L8007649C
       nop
      lw         $2, 0x2C($16)
      beqz       $2, .L8007649C
       nop
      lw         $2, 0x30($16)
      beqz       $2, .L8007649C
       nop
      jal        func_80074CC0
       nop
      lw         $3, 0x30($16)
      lw         $4, 0x2C($16)
      lw         $5, 0xC($16)
      lw         $3, 0x34($3)
      jalr       $3
       addu      $6, $2, $0
      addu       $3, $2, $0
  .L8007649C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_80076430

.globl func_800764B0
.ent func_800764B0
func_800764B0:
      addiu      $29, $29, -0x38
      sw         $18, 0x28($29)
      lbu        $18, 0x4F($29)
      addu       $4, $6, $0
      sw         $19, 0x2C($29)
      addu       $19, $7, $0
      sw         $17, 0x24($29)
      addu       $17, $0, $0
      sw         $31, 0x30($29)
      beqz       $4, .L8007653C
       sw        $16, 0x20($29)
      beq        $5, $4, .L80076540
       addu      $2, $17, $0
      jal        func_8007D4AC
       nop
      addu       $16, $2, $0
      beqz       $16, .L80076540
       addu      $2, $17, $0
      lw         $2, 0x8($16)
      beqz       $2, .L80076540
       addu      $2, $17, $0
      lw         $4, 0x4($16)
      jal        func_80077848
       nop
      andi       $2, $2, 0xFF
      beqz       $2, .L8007653C
       addu      $5, $19, $0
      addiu      $7, $29, 0x18
      lw         $2, 0x8($16)
      lw         $6, 0x48($29)
      lw         $4, 0x8($2)
      andi       $2, $18, 0xFF
      jal        func_80077CD0
       sw        $2, 0x10($29)
      addu       $17, $2, $0
  .L8007653C:
      addu       $2, $17, $0
  .L80076540:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800764B0

.globl func_8007655C
.ent func_8007655C
func_8007655C:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      addiu      $2, $0, 0x1
      sw         $31, 0x28($29)
      jal        func_8007629C
       sw        $2, 0x10($29)
      bnez       $2, .L800765B4
       addu      $4, $17, $0
      sw         $0, 0x10($29)
      addu       $5, $16, $0
      addu       $6, $18, $0
      jal        func_8007629C
       addu      $7, $19, $0
      beql       $2, $0, .L800765B4
       addu      $2, $16, $0
  .L800765B4:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8007655C

.globl func_800765D0
.ent func_800765D0
func_800765D0:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $19, 0x1C($29)
      addu       $19, $7, $0
      addu       $4, $16, $0
      addiu      $5, $0, 0x3
      sw         $31, 0x24($29)
      jal        func_80058268
       sw        $17, 0x14($29)
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      addu       $4, $16, $0
      addiu      $5, $0, 0x3
      jal        func_80058268
       addu      $17, $2, $0
      lw         $3, 0x4($20)
      addu       $5, $18, $0
      lw         $4, 0x0($3)
      lw         $6, 0x0($17)
      lw         $3, 0x40($4)
      lw         $7, 0x4($2)
      lw         $2, 0x8($3)
      jalr       $2
       addiu     $4, $4, 0x34
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      addu       $4, $16, $0
      lw         $2, 0x4($2)
      addiu      $5, $0, 0x3
      addu       $18, $18, $2
      jal        func_80058268
       sb        $0, 0x0($18)
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      addu       $4, $16, $0
      addiu      $5, $0, 0x3
      jal        func_80058268
       addu      $17, $2, $0
      lw         $3, 0x4($20)
      addu       $5, $19, $0
      lw         $4, 0x0($3)
      lw         $6, 0x8($17)
      lw         $3, 0x40($4)
      lw         $7, 0xC($2)
      lw         $2, 0x8($3)
      jalr       $2
       addiu     $4, $4, 0x34
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $3, 0xC($2)
      addu       $19, $19, $3
      sb         $0, 0x0($19)
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x28
.end func_800765D0

.globl func_800766E8
.ent func_800766E8
func_800766E8:
      addiu      $29, $29, -0x78
      sw         $18, 0x68($29)
      addu       $18, $4, $0
      sw         $16, 0x60($29)
      addu       $16, $5, $0
      sw         $19, 0x6C($29)
      addu       $19, $6, $0
      sw         $17, 0x64($29)
      addiu      $17, $0, 0x1
      beqz       $16, .L80076768
       sw        $31, 0x70($29)
      lbu        $2, 0x0($16)
      beqz       $2, .L80076768
       addiu     $4, $29, 0x20
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x3C
      sw         $16, 0x20($29)
      addu       $4, $18, $0
      jal        func_800791D4
       addu      $5, $16, $0
      xor        $2, $2, $17
      beqz       $2, .L80076768
       addu      $4, $18, $0
      addu       $5, $0, $0
      addiu      $6, $29, 0x20
      addu       $7, $5, $0
      sw         $19, 0x10($29)
      sw         $0, 0x14($29)
      jal        func_8007F304
       sw        $0, 0x18($29)
      addu       $17, $2, $0
  .L80076768:
      addu       $2, $17, $0
      lw         $31, 0x70($29)
      lw         $19, 0x6C($29)
      lw         $18, 0x68($29)
      lw         $17, 0x64($29)
      lw         $16, 0x60($29)
      jr         $31
       addiu     $29, $29, 0x78
.end func_800766E8

.globl func_80076788
.ent func_80076788
func_80076788:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $5, $0
      addu       $5, $6, $0
      sw         $31, 0x24($29)
      jal        func_800780B4
       addiu     $6, $29, 0x10
      lw         $2, 0x18($29)
      lw         $4, 0x10($29)
      subu       $2, $2, $4
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $2, $2, 1
      addu       $4, $4, $2
      sw         $4, 0x0($16)
      lw         $2, 0x1C($29)
      lw         $4, 0x14($29)
      subu       $2, $2, $4
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $2, $2, 1
      addu       $4, $4, $2
      sw         $4, 0x4($16)
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80076788

.globl func_800767F4
.ent func_800767F4
func_800767F4:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $31, 0x20($29)
      sw         $17, 0x1C($29)
      lw         $2, 0xB0($16)
      bnez       $2, .L8007683C
       addu      $17, $5, $0
      lw         $2, 0xB4($16)
      bnel       $2, $0, .L80076840
       addu      $4, $16, $0
      addiu      $5, $29, 0x10
      jal        func_80076788
       addu      $6, $17, $0
      lw         $3, 0x10($29)
      lw         $7, 0x14($29)
      sw         $3, 0xB0($16)
      sw         $7, 0xB4($16)
  .L8007683C:
      addu       $4, $16, $0
  .L80076840:
      lhu        $2, 0x2($17)
      addiu      $5, $0, 0x3
      ori        $2, $2, 0x1000
      jal        func_80077720
       sh        $2, 0x2($17)
      addu       $4, $16, $0
      jal        func_80077720
       addiu     $5, $0, 0x5
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800767F4

.globl func_80076874
.ent func_80076874
func_80076874:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      jal        func_80077720
       addiu     $5, $0, 0x6
      sw         $0, 0xB0($16)
      sw         $0, 0xB4($16)
      lhu        $3, 0x2($17)
      andi       $3, $3, 0xEFFF
      sh         $3, 0x2($17)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80076874

.globl func_800768BC
.ent func_800768BC
func_800768BC:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $16, 0x10($29)
      addiu      $16, $0, 0x1
      addiu      $5, $0, 0x2
      sw         $31, 0x24($29)
      sw         $18, 0x18($29)
      jal        func_80077720
       sw        $17, 0x14($29)
      lui        $2, %hi(D_80137108)
      addiu      $4, $2, %lo(D_80137108)
      lbu        $2, 0x72A($4)
      bne        $2, $16, .L80076918
       addu      $18, $0, $0
      addu       $2, $18, $0
      lui        $3, %hi(D_80133AA8)
      sb         $0, 0x72A($4)
      sw         $0, %lo(D_80133AA8)($3)
      j          .L800769F4
       sb        $16, 0x4A0($4)
  .L80076918:
      lbu        $2, 0x728($4)
      bne        $2, $16, .L80076934
       addu      $5, $20, $0
      addu       $2, $0, $0
      sb         $0, 0x728($4)
      j          .L800769F4
       sb        $16, 0x486($4)
  .L80076934:
      lw         $4, 0x4($19)
      addiu      $6, $0, 0x4
      jal        func_800656D4
       addu      $7, $0, $0
      bnez       $2, .L80076954
       addiu     $4, $0, 0x401
      j          .L800769F4
       addiu     $2, $0, 0x1
  .L80076954:
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      beqz       $17, .L800769B0
       addiu     $4, $0, 0x401
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $18, $2, $0
      beqz       $18, .L800769B0
       addu      $4, $19, $0
      addu       $5, $20, $0
      addu       $6, $17, $0
      lhu        $2, 0x2($5)
      addu       $7, $18, $0
      ori        $2, $2, 0x1
      jal        func_800765D0
       sh        $2, 0x2($5)
      addu       $4, $19, $0
      addu       $5, $17, $0
      jal        func_800766E8
       addu      $6, $18, $0
      j          .L800769B4
       addu      $16, $2, $0
  .L800769B0:
      addiu      $16, $0, -0x5
  .L800769B4:
      jal        func_80052540
       addu      $4, $18, $0
      jal        func_80052540
       addu      $4, $17, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800769F4
       addu      $2, $16, $0
      lw         $3, 0x60($19)
      addiu      $2, $0, 0x3
      bne        $3, $2, .L800769F4
       addu      $2, $16, $0
      addu       $4, $19, $0
      jal        func_8007777C
       addiu     $5, $0, 0x2
      addu       $16, $2, $0
      addu       $2, $16, $0
  .L800769F4:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800768BC

.globl func_80076A14
.ent func_80076A14
func_80076A14:
      addiu      $29, $29, -0x38
      sw         $19, 0x24($29)
      addu       $19, $5, $0
      sw         $31, 0x34($29)
      sw         $22, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      lhu        $2, 0x2($19)
      andi       $2, $2, 0x1000
      beqz       $2, .L80076B98
       addu      $21, $4, $0
      addu       $22, $0, $0
      jal        func_80077720
       addiu     $5, $0, 0x2
      lw         $4, 0x4($21)
      addu       $5, $19, $0
      addiu      $6, $0, 0x4
      jal        func_800656D4
       addu      $7, $22, $0
      bnez       $2, .L80076A7C
       addiu     $4, $0, 0x401
      j          .L80076BAC
       addiu     $2, $0, 0x1
  .L80076A7C:
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $20, $2, $0
      beqz       $20, .L80076B7C
       addiu     $4, $0, 0x401
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $22, $2, $0
      beqz       $22, .L80076B7C
       addu      $4, $21, $0
      lw         $8, 0xB0($21)
      lw         $9, 0xB4($21)
      sw         $8, 0x10($29)
      sw         $9, 0x14($29)
      addu       $5, $19, $0
      addu       $6, $20, $0
      jal        func_800765D0
       addu      $7, $22, $0
      addu       $4, $21, $0
      jal        func_80076874
       addu      $5, $19, $0
      jal        func_80017780
       addu      $4, $20, $0
      addu       $18, $2, $0
      beqz       $18, .L80076B68
       addiu     $2, $18, 0x20
      sltiu      $2, $2, 0x400
      beqz       $2, .L80076B68
       addu      $4, $19, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $19, $0
      jal        func_8005845C
       addu      $17, $2, $0
      addu       $4, $19, $0
      lw         $16, 0x10($29)
      lw         $3, 0x0($17)
      addu       $5, $0, $0
      subu       $16, $16, $3
      jal        func_80058268
       subu      $16, $16, $2
      addu       $4, $19, $0
      jal        func_8005845C
       addu      $17, $2, $0
      addu       $4, $20, $18
      lui        $5, %hi(D_800ED640)
      addiu      $5, $5, %lo(D_800ED640)
      lw         $7, 0x14($29)
      lw         $3, 0x4($17)
      addu       $6, $16, $0
      subu       $7, $7, $3
      jal        func_80016580
       subu      $7, $7, $2
      addu       $4, $21, $0
      addu       $5, $20, $0
      jal        func_800766E8
       addu      $6, $22, $0
      j          .L80076B80
       addu      $16, $2, $0
  .L80076B68:
      addu       $4, $21, $0
      jal        func_80077720
       addiu     $5, $0, 0x1
      j          .L80076B80
       addiu     $16, $0, -0x4
  .L80076B7C:
      addiu      $16, $0, -0x5
  .L80076B80:
      jal        func_80052540
       addu      $4, $22, $0
      jal        func_80052540
       addu      $4, $20, $0
      j          .L80076BAC
       addu      $2, $16, $0
  .L80076B98:
      addu       $4, $21, $0
      jal        func_800767F4
       addu      $5, $19, $0
      addu       $16, $2, $0
      addu       $2, $16, $0
  .L80076BAC:
      lw         $31, 0x34($29)
      lw         $22, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80076A14

.globl func_80076BD4
.ent func_80076BD4
func_80076BD4:
      addiu      $29, $29, -0x40
      sw         $22, 0x38($29)
      addu       $22, $4, $0
      sw         $19, 0x2C($29)
      addu       $19, $5, $0
      sw         $31, 0x3C($29)
      sw         $21, 0x34($29)
      sw         $20, 0x30($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      sw         $16, 0x20($29)
      lhu        $2, 0x2($19)
      andi       $2, $2, 0x1000
      beqz       $2, .L80076D5C
       addiu     $21, $0, 0x1
      lw         $4, 0x4($22)
      addiu      $6, $0, 0x4
      jal        func_800656D4
       addu      $7, $0, $0
      beqz       $2, .L80076D6C
       addu      $20, $0, $0
      addu       $4, $19, $0
      sw         $0, 0x18($29)
      lw         $8, 0xB0($22)
      lw         $9, 0xB4($22)
      sw         $8, 0x10($29)
      sw         $9, 0x14($29)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $19, $0
      addu       $5, $20, $0
      jal        func_80058268
       addu      $18, $2, $0
      addu       $4, $19, $0
      jal        func_8005845C
       addu      $17, $2, $0
      addu       $4, $19, $0
      lw         $16, 0x10($29)
      lw         $3, 0x0($17)
      addu       $5, $20, $0
      subu       $16, $16, $3
      jal        func_80058268
       subu      $16, $16, $2
      addu       $4, $19, $0
      jal        func_8005845C
       addu      $17, $2, $0
      addu       $5, $16, $0
      addiu      $7, $29, 0x18
      lw         $6, 0x14($29)
      lw         $3, 0x4($17)
      lw         $4, 0x4($18)
      subu       $6, $6, $3
      jal        func_80055D90
       subu      $6, $6, $2
      addiu      $4, $0, 0x401
      addiu      $5, $0, 0x2
      jal        func_800524E8
       addu      $17, $2, $0
      addu       $16, $2, $0
      beqz       $16, .L80076D40
       addiu     $4, $0, 0x401
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $20, $2, $0
      beql       $20, $0, .L80076D44
       addiu     $21, $0, -0x5
      sb         $0, 0x0($20)
      beqz       $17, .L80076CF4
       sb        $0, 0x0($16)
      addu       $4, $16, $0
      jal        func_80017640
       addu      $5, $17, $0
  .L80076CF4:
      lw         $5, 0x18($29)
      beqz       $5, .L80076D08
       nop
      jal        func_80017640
       addu      $4, $20, $0
  .L80076D08:
      lbu        $2, 0x0($16)
      beqz       $2, .L80076D44
       addu      $4, $22, $0
      jal        func_80076874
       addu      $5, $19, $0
      addu       $4, $22, $0
      jal        func_80077720
       addiu     $5, $0, 0x4
      addu       $4, $22, $0
      addu       $5, $16, $0
      jal        func_800766E8
       addu      $6, $20, $0
      j          .L80076D44
       addu      $21, $2, $0
  .L80076D40:
      addiu      $21, $0, -0x5
  .L80076D44:
      jal        func_80052540
       addu      $4, $20, $0
      jal        func_80052540
       addu      $4, $16, $0
      j          .L80076D70
       addu      $2, $21, $0
  .L80076D5C:
      addu       $4, $22, $0
      jal        func_800767F4
       addu      $5, $19, $0
      addu       $21, $2, $0
  .L80076D6C:
      addu       $2, $21, $0
  .L80076D70:
      lw         $31, 0x3C($29)
      lw         $22, 0x38($29)
      lw         $21, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_80076BD4

.globl func_80076D98
.ent func_80076D98
func_80076D98:
      addiu      $29, $29, -0x18
      lui        $2, %hi(D_80137108)
      addiu      $3, $2, %lo(D_80137108)
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lbu        $2, 0x728($3)
      beqz       $2, .L80076DDC
       addu      $16, $4, $0
      jal        func_80003688
       sb        $0, 0x728($3)
      andi       $2, $2, 0xFF
      beqz       $2, .L80076E3C
       addu      $2, $0, $0
      jal        func_800879AC
       addu      $4, $16, $0
      j          .L80076E3C
       addiu     $2, $0, 0x1
  .L80076DDC:
      lbu        $2, 0x72A($3)
      addiu      $4, $0, 0x1
      bne        $2, $4, .L80076E10
       nop
      jal        func_80003688
       sb        $0, 0x72A($3)
      andi       $2, $2, 0xFF
      beqz       $2, .L80076E3C
       addu      $2, $0, $0
      jal        func_800881BC
       addu      $4, $16, $0
      j          .L80076E3C
       addiu     $2, $0, 0x1
  .L80076E10:
      lbu        $2, 0x729($3)
      bne        $2, $4, .L80076E3C
       addu      $2, $0, $0
      jal        func_80003688
       sb        $0, 0x729($3)
      andi       $2, $2, 0xFF
      beqz       $2, .L80076E3C
       addu      $2, $0, $0
      jal        func_80088114
       addu      $4, $16, $0
      addiu      $2, $0, 0x1
  .L80076E3C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80076D98

.globl func_80076E4C
.ent func_80076E4C
func_80076E4C:
      addiu      $29, $29, -0x30
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $31, 0x28($29)
      sw         $19, 0x24($29)
      sw         $16, 0x18($29)
      lbu        $2, 0x10($17)
      addiu      $3, $2, -0x2
      sltiu      $2, $3, 0x34
      beqz       $2, .L80077040
       addiu     $19, $0, 0x1
      lui        $2, %hi(jtbl_800F04F8)
      addiu      $2, $2, %lo(jtbl_800F04F8)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80076E9C
.L80076E9C:
      addu       $4, $18, $0
      jal        func_800870D4
       addu      $5, $17, $0
      j          .L80076F58
       nop
  .globl .L80076EB0
.L80076EB0:
      addu       $4, $18, $0
      jal        func_80077720
       addiu     $5, $0, 0x2
      jal        func_80076D98
       addu      $4, $18, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80077050
       addu      $4, $18, $0
      addu       $5, $17, $0
      jal        func_80086D20
       addu      $6, $0, $0
      j          .L80077050
       nop
  .globl .L80076EE4
.L80076EE4:
      addu       $4, $18, $0
      jal        func_80077720
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      jal        func_8008699C
       addu      $5, $17, $0
      j          .L80077050
       nop
  .globl .L80076F04
.L80076F04:
      addu       $4, $18, $0
      jal        func_80077720
       addiu     $5, $0, 0x2
      lw         $4, 0x4($18)
      addu       $5, $17, $0
      addiu      $6, $0, 0x4
      jal        func_800656D4
       addu      $7, $0, $0
      addu       $4, $18, $0
      jal        func_8006D1A4
       addu      $5, $17, $0
      j          .L80077050
       nop
  .globl .L80076F38
.L80076F38:
      addu       $4, $18, $0
      jal        func_8008669C
       addu      $5, $17, $0
      addu       $4, $18, $0
      addu       $5, $17, $0
      andi       $2, $2, 0xFF
      jal        func_800865F0
       sltiu     $6, $2, 0x1
  .L80076F58:
      lw         $4, 0x4($18)
      addu       $5, $17, $0
      addiu      $6, $0, 0x4
      jal        func_800656D4
       addu      $7, $0, $0
      j          .L80077050
       nop
  .globl .L80076F74
.L80076F74:
      lhu        $2, 0x2($17)
      andi       $2, $2, 0x1000
      beqz       $2, .L8007702C
       addu      $4, $17, $0
      lw         $8, 0xB0($18)
      lw         $9, 0xB4($18)
      sw         $8, 0x10($29)
      sw         $9, 0x14($29)
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      jal        func_8005845C
       addu      $16, $2, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      lw         $3, 0x0($16)
      lw         $6, 0x10($29)
      subu       $3, $3, $2
      subu       $6, $6, $3
      jal        func_80058268
       sw        $6, 0x10($29)
      addu       $4, $17, $0
      jal        func_8005845C
       addu      $16, $2, $0
      addu       $4, $18, $0
      addu       $5, $17, $0
      lw         $3, 0x4($16)
      lw         $6, 0x14($29)
      subu       $3, $3, $2
      subu       $6, $6, $3
      jal        func_80076874
       sw        $6, 0x14($29)
      addu       $4, $18, $0
      jal        func_80077720
       addiu     $5, $0, 0x4
      jal        func_80076D98
       addu      $4, $18, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80077050
       addiu     $16, $29, 0x10
      addu       $4, $18, $0
      addu       $5, $17, $0
      jal        func_80086D20
       addu      $6, $16, $0
      j          .L80077050
       nop
  .L8007702C:
      addu       $4, $18, $0
      jal        func_800767F4
       addu      $5, $17, $0
      j          .L80077050
       addu      $19, $2, $0
  .globl .L80077040
.L80077040:
      addu       $4, $18, $0
      addu       $5, $17, $0
      jal        func_8007F674
       addu      $6, $0, $0
  .globl .L80077050
.L80077050:
      jal        func_800809B8
       addu      $4, $18, $0
      addu       $2, $19, $0
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80076E4C

.globl func_80077078
.ent func_80077078
func_80077078:
      beqz       $4, .L8007708C
       nop
      lhu        $2, 0x2($4)
      andi       $2, $2, 0xEFFF
      sh         $2, 0x2($4)
  .L8007708C:
      jr         $31
       addiu     $2, $0, 0x1
.end func_80077078

.globl func_80077094
.ent func_80077094
func_80077094:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $31, 0x28($29)
      sw         $17, 0x24($29)
      lw         $2, 0x14($6)
      addiu      $17, $0, 0x1
      bnez       $2, .L800770C0
       sw        $0, 0x18($29)
      j          .L80077300
       addu      $2, $0, $0
  .L800770C0:
      lui        $3, (0xFFFF02F7 >> 16)
      lhu        $2, 0x0($2)
      ori        $3, $3, (0xFFFF02F7 & 0xFFFF)
      addu       $3, $2, $3
      sltiu      $2, $3, 0x61
      beqz       $2, .L800772F8
       lui       $2, %hi(jtbl_800F05C8)
      addiu      $2, $2, %lo(jtbl_800F05C8)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800770F4
.L800770F4:
      lbu        $2, 0x24($6)
      bnez       $2, .L800772FC
       addu      $17, $0, $0
      jal        func_80077E84
       addu      $4, $16, $0
      j          .L800772FC
       addu      $17, $2, $0
  .globl .L80077110
.L80077110:
      sw         $0, 0x10($29)
      addu       $4, $16, $0
      j          .L80077174
       addiu     $5, $0, 0x6
  .globl .L80077120
.L80077120:
      sw         $0, 0x10($29)
      addu       $4, $16, $0
      j          .L80077174
       addiu     $5, $0, 0x7
  .globl .L80077130
.L80077130:
      sw         $0, 0x10($29)
      addu       $4, $16, $0
      j          .L80077174
       addiu     $5, $0, 0x4
  .globl .L80077140
.L80077140:
      sw         $0, 0x10($29)
      addu       $4, $16, $0
      j          .L80077174
       addiu     $5, $0, 0x5
  .globl .L80077150
.L80077150:
      lw         $2, 0xC($6)
      andi       $2, $2, 0x1
      beqz       $2, .L8007716C
       addu      $4, $16, $0
      sw         $0, 0x10($29)
      j          .L80077174
       addiu     $5, $0, 0x3
  .L8007716C:
      sw         $0, 0x10($29)
      addiu      $5, $0, 0x2
  .L80077174:
      addiu      $6, $0, 0x1
      jal        func_80077BA4
       addiu     $7, $29, 0x18
      j          .L80077300
       addu      $2, $17, $0
  .globl .L80077188
.L80077188:
      lw         $2, 0xC($6)
      andi       $2, $2, 0x3
      beqz       $2, .L800771A8
       addu      $4, $16, $0
      jal        func_8008BFF8
       addiu     $5, $0, 0x8
      j          .L80077300
       addu      $2, $17, $0
  .L800771A8:
      jal        func_8008BFF8
       addiu     $5, $0, 0x6
      j          .L80077300
       addu      $2, $17, $0
  .globl .L800771B8
.L800771B8:
      lw         $2, 0xC($6)
      andi       $2, $2, 0x3
      beqz       $2, .L800771D8
       addu      $4, $16, $0
      jal        func_8008BFF8
       addiu     $5, $0, 0x9
      j          .L80077300
       addu      $2, $17, $0
  .L800771D8:
      jal        func_8008BFF8
       addiu     $5, $0, 0x7
      j          .L80077300
       addu      $2, $17, $0
  .globl .L800771E8
.L800771E8:
      jal        func_80078570
       addu      $4, $16, $0
      lui        $2, %hi(D_80137164)
      sb         $0, %lo(D_80137164)($2)
      j          .L800772FC
       addiu     $17, $0, 0x1
  .globl .L80077200
.L80077200:
      jal        func_8008BFDC
       addu      $4, $16, $0
      j          .L80077300
       addu      $2, $17, $0
  .globl .L80077210
.L80077210:
      lui        $2, %hi(D_80137170)
      lw         $2, %lo(D_80137170)($2)
      bgez       $2, .L80077228
       addu      $4, $16, $0
      j          .L80077230
       addiu     $5, $0, 0xA
  .L80077228:
      blez       $2, .L80077238
       addiu     $5, $0, 0xB
  .L80077230:
      jal        func_8008BFF8
       nop
  .L80077238:
      lui        $2, %hi(D_8013716C)
      lw         $2, %lo(D_8013716C)($2)
      bgez       $2, .L80077250
       addu      $4, $16, $0
      j          .L80077258
       addiu     $5, $0, 0xC
  .L80077250:
      blez       $2, .L80077260
       addiu     $5, $0, 0xD
  .L80077258:
      jal        func_8008BFF8
       nop
  .L80077260:
      jal        func_800809B8
       addu      $4, $16, $0
      j          .L800772FC
       addiu     $17, $0, 0x1
  .globl .L80077270
.L80077270:
      lw         $2, 0xC($6)
      andi       $2, $2, 0x3
      beqz       $2, .L80077290
       addu      $4, $16, $0
      jal        func_8008BFF8
       addiu     $5, $0, 0x4
      j          .L80077300
       addu      $2, $17, $0
  .L80077290:
      jal        func_8008BFF8
       addiu     $5, $0, 0x2
      j          .L80077300
       addu      $2, $17, $0
  .globl .L800772A0
.L800772A0:
      lw         $2, 0xC($6)
      andi       $2, $2, 0x3
      beqz       $2, .L800772C0
       addu      $4, $16, $0
      jal        func_8008BFF8
       addiu     $5, $0, 0x5
      j          .L80077300
       addu      $2, $17, $0
  .L800772C0:
      jal        func_8008BFF8
       addiu     $5, $0, 0x3
      j          .L80077300
       addu      $2, $17, $0
  .globl .L800772D0
.L800772D0:
      addu       $4, $16, $0
      jal        func_8008BFF8
       addu      $5, $0, $0
      j          .L80077300
       addu      $2, $17, $0
  .globl .L800772E4
.L800772E4:
      addu       $4, $16, $0
      jal        func_8008BFF8
       addiu     $5, $0, 0x1
      j          .L80077300
       addu      $2, $17, $0
  .globl .L800772F8
.L800772F8:
      addu       $17, $0, $0
  .L800772FC:
      addu       $2, $17, $0
  .L80077300:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80077094

.globl func_80077314
.ent func_80077314
func_80077314:
      lbu        $3, 0x24($4)
      lui        $2, (0xCCCCCCCD >> 16)
      ori        $2, $2, (0xCCCCCCCD & 0xFFFF)
      multu      $3, $2
      mfhi       $5
      srl        $2, $5, 2
      andi       $3, $2, 0x1FE
      sltiu      $2, $3, 0x9
      beql       $2, $0, .L8007733C
       addiu     $3, $0, 0x8
  .L8007733C:
      addiu      $2, $3, 0x1
      jr         $31
       sll       $2, $2, 1
.end func_80077314

.globl func_80077348
.ent func_80077348
func_80077348:
      addiu      $29, $29, -0x38
      sw         $18, 0x28($29)
      addu       $18, $4, $0
      sw         $20, 0x30($29)
      addu       $20, $5, $0
      sw         $19, 0x2C($29)
      addu       $19, $6, $0
      sw         $17, 0x24($29)
      addu       $17, $0, $0
      addu       $4, $20, $0
      addu       $5, $17, $0
      sw         $31, 0x34($29)
      jal        func_80058268
       sw        $16, 0x20($29)
      lw         $7, 0x0($2)
      lw         $8, 0x4($2)
      lw         $9, 0x8($2)
      lw         $10, 0xC($2)
      sw         $7, 0x10($29)
      sw         $8, 0x14($29)
      sw         $9, 0x18($29)
      sw         $10, 0x1C($29)
      lw         $2, 0x14($19)
      lui        $3, (0xFFFF02F3 >> 16)
      lhu        $2, 0x0($2)
      ori        $3, $3, (0xFFFF02F3 & 0xFFFF)
      addu       $3, $2, $3
      sltiu      $2, $3, 0x1C
      beqz       $2, .L800774E4
       addu      $16, $17, $0
      lui        $2, %hi(jtbl_800F0750)
      addiu      $2, $2, %lo(jtbl_800F0750)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800773DC
.L800773DC:
      jal        func_80077E84
       addu      $4, $18, $0
      j          .L800774E4
       addiu     $17, $0, 0x1
  .globl .L800773EC
.L800773EC:
      addu       $4, $18, $0
      jal        func_80077720
       addiu     $5, $0, 0x6
      jal        func_80077314
       addu      $4, $19, $0
      lw         $3, 0xB4($18)
      lw         $4, 0x14($29)
      subu       $3, $3, $2
      slt        $2, $3, $4
      bnel       $2, $0, .L80077418
       addu      $3, $4, $0
  .L80077418:
      j          .L800774DC
       sw        $3, 0xB4($18)
  .globl .L80077420
.L80077420:
      addu       $4, $18, $0
      jal        func_80077720
       addiu     $5, $0, 0x6
      jal        func_80077314
       addu      $4, $19, $0
      lw         $3, 0xB4($18)
      lw         $4, 0x1C($29)
      addu       $3, $3, $2
      slt        $2, $4, $3
      bnel       $2, $0, .L8007744C
       addu      $3, $4, $0
  .L8007744C:
      j          .L800774DC
       sw        $3, 0xB4($18)
  .globl .L80077454
.L80077454:
      addu       $4, $18, $0
      jal        func_80077720
       addiu     $5, $0, 0x6
      jal        func_80077314
       addu      $4, $19, $0
      lw         $3, 0xB0($18)
      lw         $4, 0x10($29)
      subu       $3, $3, $2
      slt        $2, $3, $4
      bnel       $2, $0, .L80077480
       addu      $3, $4, $0
  .L80077480:
      j          .L800774DC
       sw        $3, 0xB0($18)
  .globl .L80077488
.L80077488:
      addu       $4, $18, $0
      jal        func_80077720
       addiu     $5, $0, 0x6
      jal        func_80077314
       addu      $4, $19, $0
      lw         $3, 0xB0($18)
      lw         $4, 0x18($29)
      addu       $3, $3, $2
      slt        $2, $4, $3
      bnel       $2, $0, .L800774B4
       addu      $3, $4, $0
  .L800774B4:
      j          .L800774DC
       sw        $3, 0xB0($18)
  .globl .L800774BC
.L800774BC:
      addu       $4, $18, $0
      jal        func_80077720
       addiu     $5, $0, 0x1
      addu       $4, $18, $0
      jal        func_80077720
       addiu     $5, $0, 0x6
      jal        func_80077078
       addu      $4, $20, $0
  .L800774DC:
      addiu      $17, $0, 0x1
      addu       $16, $17, $0
  .globl .L800774E4
.L800774E4:
      andi       $2, $16, 0xFF
      beqz       $2, .L80077538
       lui       $2, %hi(D_80137734)
      lw         $3, %lo(D_80137734)($2)
      addiu      $2, $0, 0x2
      beq        $3, $2, .L80077508
       addiu     $2, $0, 0x5
      bne        $3, $2, .L80077530
       lui       $3, %hi(D_80137A88)
  .L80077508:
      lui        $2, %hi(D_80125C00)
      lbu        $2, %lo(D_80125C00)($2)
      bnez       $2, .L80077530
       lui       $3, %hi(D_80137A88)
      jal        func_8001CA64
       addiu     $4, $0, 0x7D0
      lui        $3, %hi(D_80125C01)
      addiu      $2, $0, 0x1
      sb         $2, %lo(D_80125C01)($3)
      lui        $3, %hi(D_80137A88)
  .L80077530:
      addiu      $2, $0, 0x1
      sb         $2, %lo(D_80137A88)($3)
  .L80077538:
      beqz       $17, .L80077548
       addu      $4, $18, $0
      jal        func_80077720
       addiu     $5, $0, 0x5
  .L80077548:
      addu       $2, $17, $0
      lw         $31, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80077348

.globl func_8007756C
.ent func_8007756C
func_8007756C:
      addiu      $29, $29, -0x58
      sw         $16, 0x30($29)
      addu       $16, $4, $0
      sw         $18, 0x38($29)
      addu       $18, $5, $0
      sw         $20, 0x40($29)
      addu       $20, $0, $0
      addu       $4, $18, $0
      sw         $31, 0x50($29)
      sw         $23, 0x4C($29)
      sw         $22, 0x48($29)
      sw         $21, 0x44($29)
      sw         $19, 0x3C($29)
      jal        func_80074E90
       sw        $17, 0x34($29)
      andi       $2, $2, 0xFF
      beqz       $2, .L800776F0
       addu      $4, $16, $0
      jal        func_8008BB94
       addiu     $5, $29, 0x10
      lw         $5, 0x50($16)
      lw         $6, 0x4C($16)
      jal        func_8008A204
       addiu     $4, $29, 0x10
      lw         $10, 0x1C($29)
      lw         $9, 0x14($29)
      lw         $6, 0x18($29)
      lw         $7, 0x10($29)
      lw         $8, 0xC($18)
      lw         $5, 0x4($18)
      lw         $3, 0x8($18)
      lw         $4, 0x0($18)
      subu       $16, $10, $9
      subu       $17, $6, $7
      subu       $22, $8, $5
      subu       $23, $3, $4
      slt        $2, $17, $23
      addu       $21, $2, $0
      slt        $2, $16, $22
      addu       $19, $2, $0
      andi       $2, $21, 0xFF
      bnel       $2, $0, .L80077654
       addiu     $4, $29, 0x20
      andi       $2, $19, 0xFF
      bnel       $2, $0, .L80077654
       addiu     $4, $29, 0x20
      slt        $2, $6, $3
      bnez       $2, .L800776F4
       addu      $2, $20, $0
      slt        $2, $4, $7
      bnez       $2, .L800776F4
       addu      $2, $20, $0
      slt        $2, $5, $9
      bnez       $2, .L800776F4
       addu      $2, $20, $0
      slt        $2, $10, $8
      j          .L800776F0
       xori      $20, $2, 0x1
  .L80077654:
      addu       $5, $18, $0
      jal        func_8008A3BC
       addiu     $6, $29, 0x10
      andi       $2, $2, 0xFF
      beqz       $2, .L800776F4
       addu      $2, $20, $0
      lw         $5, 0x2C($29)
      lw         $3, 0x24($29)
      lw         $4, 0x28($29)
      lw         $2, 0x20($29)
      subu       $4, $4, $2
      andi       $2, $19, 0xFF
      beqz       $2, .L800776D0
       subu      $5, $5, $3
      andi       $2, $21, 0xFF
      beqz       $2, .L800776B4
       srl       $2, $16, 31
      addu       $2, $16, $2
      sra        $2, $2, 1
      slt        $2, $2, $5
      beqz       $2, .L800776F0
       srl       $2, $17, 31
      j          .L800776E0
       addu      $2, $17, $2
  .L800776B4:
      bnel       $4, $23, .L800776F4
       addu      $2, $20, $0
      srl        $2, $16, 31
      addu       $2, $16, $2
      sra        $2, $2, 1
      j          .L800776E8
       slt       $2, $2, $5
  .L800776D0:
      bne        $5, $22, .L800776F4
       addu      $2, $20, $0
      srl        $2, $17, 31
      addu       $2, $17, $2
  .L800776E0:
      sra        $2, $2, 1
      slt        $2, $2, $4
  .L800776E8:
      bnel       $2, $0, .L800776F0
       addiu     $20, $0, 0x1
  .L800776F0:
      addu       $2, $20, $0
  .L800776F4:
      lw         $31, 0x50($29)
      lw         $23, 0x4C($29)
      lw         $22, 0x48($29)
      lw         $21, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x58
.end func_8007756C

.globl func_80077720
.ent func_80077720
func_80077720:
      addiu      $29, $29, -0x18
      addu       $6, $5, $0
      sw         $31, 0x10($29)
      lw         $5, 0x24($4)
      beqz       $5, .L8007776C
       addiu     $7, $0, 0x1
      jal        func_800841E8
       nop
      addu       $7, $2, $0
      lui        $2, %hi(D_80137108)
      addiu      $4, $2, %lo(D_80137108)
      lw         $3, 0x62C($4)
      addiu      $2, $0, 0x2
      beq        $3, $2, .L80077764
       addiu     $2, $0, 0x5
      bne        $3, $2, .L8007776C
       nop
  .L80077764:
      addiu      $2, $0, 0x1
      sb         $2, 0x5C($4)
  .L8007776C:
      lw         $31, 0x10($29)
      addu       $2, $7, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_80077720

.globl func_8007777C
.ent func_8007777C
func_8007777C:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      lw         $2, 0x4($16)
      bnez       $2, .L800777A8
       addiu     $17, $0, 0x1
      addiu      $17, $0, -0x1
  .L800777A8:
      lw         $2, 0x0($2)
      lbu        $2, 0xD9($2)
      bnez       $2, .L80077810
       addu      $2, $17, $0
      lw         $3, 0x20($16)
      lw         $2, 0xC($16)
      bne        $3, $2, .L80077810
       addu      $2, $17, $0
      jal        func_80077B54
       addu      $4, $16, $0
      bnez       $2, .L80077810
       addu      $2, $17, $0
      jal        func_8007A084
       addu      $4, $16, $0
      addu       $4, $2, $0
      beqz       $4, .L80077810
       addu      $2, $17, $0
      lw         $2, 0x4($4)
      lw         $2, 0x0($2)
      lbu        $2, 0xD9($2)
      beqz       $2, .L80077810
       addu      $2, $17, $0
      jal        func_80077720
       addu      $5, $18, $0
      addu       $17, $2, $0
      addu       $2, $17, $0
  .L80077810:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8007777C

.globl func_80077828
.ent func_80077828
func_80077828:
      beqz       $4, .L8007783C
       addiu     $3, $0, 0x2B
      lbu        $4, 0x10($4)
      beq        $4, $3, .L80077840
       addiu     $2, $0, 0x1
  .L8007783C:
      addu       $2, $0, $0
  .L80077840:
      jr         $31
       nop
.end func_80077828

.globl func_80077848
.ent func_80077848
func_80077848:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      sw         $31, 0x14($29)
      jal        func_80077828
       addu      $16, $4, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800778A4
       addu      $2, $0, $0
      jal        func_8007D4AC
       addu      $4, $16, $0
      lw         $3, 0xC($2)
      beqz       $3, .L800778A0
       addiu     $5, $0, 0x17
      lw         $4, 0x8($2)
      lw         $2, 0x20($3)
      jalr       $2
       addu      $6, $0, $0
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      addu       $3, $2, $0
      beq        $4, $3, .L800778A4
       nop
  .L800778A0:
      addu       $2, $0, $0
  .L800778A4:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80077848

.globl func_800778B4
.ent func_800778B4
func_800778B4:
      addiu      $29, $29, -0x18
      beqz       $4, .L800778E4
       sw        $31, 0x10($29)
      lhu        $2, 0x2($4)
      andi       $2, $2, 0x2
      beql       $2, $0, .L800778E8
       addu      $2, $0, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $3, 0x4($2)
      bnez       $3, .L800778E8
       addiu     $2, $0, 0x1
  .L800778E4:
      addu       $2, $0, $0
  .L800778E8:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800778B4

.globl func_800778F4
.ent func_800778F4
func_800778F4:
      beqz       $4, .L80077910
       addu      $2, $0, $0
      lhu        $3, 0x2($4)
      andi       $3, $3, 0x18
      bnez       $3, .L80077910
       addiu     $2, $0, 0x1
      addu       $2, $0, $0
  .L80077910:
      jr         $31
       nop
.end func_800778F4

.globl func_80077918
.ent func_80077918
func_80077918:
      addiu      $29, $29, -0x18
      beqz       $4, .L80077950
       sw        $31, 0x10($29)
      lbu        $3, 0x10($4)
      addiu      $2, $0, 0x2
      bnel       $3, $2, .L80077954
       addu      $2, $0, $0
      jal        func_80058268
       addu      $5, $2, $0
      lbu        $3, 0x18($2)
      addiu      $2, $0, 0x1
      and        $3, $3, $2
      bnez       $3, .L80077954
       nop
  .L80077950:
      addu       $2, $0, $0
  .L80077954:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80077918

.globl func_80077960
.ent func_80077960
func_80077960:
      addiu      $29, $29, -0x18
      beqz       $4, .L800779BC
       sw        $31, 0x10($29)
      lbu        $3, 0x10($4)
      addiu      $2, $3, -0x9
      sltiu      $2, $2, 0x9
      bnez       $2, .L800779C0
       addiu     $2, $0, 0x1
      andi       $3, $3, 0xFF
      addiu      $2, $0, 0x35
      beq        $3, $2, .L800779B4
       addiu     $2, $0, 0x34
      beq        $3, $2, .L800779B4
       addiu     $2, $0, 0x16
      beq        $3, $2, .L800779C0
       addiu     $2, $0, 0x1
      jal        func_80077918
       nop
      andi       $2, $2, 0xFF
      beqz       $2, .L800779C0
       addu      $2, $0, $0
  .L800779B4:
      j          .L800779C0
       addiu     $2, $0, 0x1
  .L800779BC:
      addu       $2, $0, $0
  .L800779C0:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80077960

.globl func_800779CC
.ent func_800779CC
func_800779CC:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      jal        func_80077B54
       sw        $16, 0x10($29)
      beqz       $17, .L800779F8
       addu      $16, $2, $0
      lw         $2, 0x4($17)
      bnez       $2, .L80077A00
       nop
  .L800779F8:
      j          .L80077ABC
       addiu     $2, $0, -0x4
  .L80077A00:
      beqz       $16, .L80077AB4
       addu      $4, $17, $0
      lw         $2, 0x0($2)
      lbu        $2, 0xD9($2)
      bnez       $2, .L80077AB4
       nop
      lw         $5, 0xC($17)
      jal        func_8007F548
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80077A44
       nop
      jal        func_80077848
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80077AB4
       addu      $4, $17, $0
  .L80077A44:
      jal        func_800778F4
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80077A6C
       nop
      jal        func_80077918
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80077A8C
       addu      $4, $17, $0
  .L80077A6C:
      lhu        $2, 0x2($16)
      andi       $2, $2, 0x1000
      beqz       $2, .L80077A84
       addu      $4, $17, $0
      j          .L80077A90
       addiu     $5, $0, 0x4
  .L80077A84:
      j          .L80077A90
       addiu     $5, $0, 0x3
  .L80077A8C:
      addiu      $5, $0, 0x1
  .L80077A90:
      jal        func_80077720
       nop
      lhu        $2, 0x2($16)
      andi       $2, $2, 0x1000
      beqz       $2, .L80077AB0
       addu      $4, $17, $0
      jal        func_80077720
       addiu     $5, $0, 0x5
  .L80077AB0:
      addu       $4, $17, $0
  .L80077AB4:
      jal        func_8007777C
       addiu     $5, $0, 0x1
  .L80077ABC:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800779CC

.globl func_80077AD0
.ent func_80077AD0
func_80077AD0:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      jal        func_80077B54
       sw        $17, 0x14($29)
      bnez       $16, .L80077AF8
       addu      $17, $2, $0
      j          .L80077B40
       addiu     $2, $0, -0x4
  .L80077AF8:
      beqz       $17, .L80077B38
       addu      $4, $16, $0
      lw         $2, 0x4($16)
      lw         $2, 0x0($2)
      lbu        $2, 0xD9($2)
      bnez       $2, .L80077B38
       nop
      jal        func_80077720
       addu      $5, $0, $0
      lhu        $2, 0x2($17)
      andi       $2, $2, 0x1000
      beqz       $2, .L80077B34
       addu      $4, $16, $0
      jal        func_80077720
       addiu     $5, $0, 0x6
  .L80077B34:
      addu       $4, $16, $0
  .L80077B38:
      jal        func_8007777C
       addu      $5, $0, $0
  .L80077B40:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80077AD0

.globl func_80077B54
.ent func_80077B54
func_80077B54:
      beqz       $4, .L80077B60
       addu      $2, $0, $0
      lw         $2, 0x24($4)
  .L80077B60:
      jr         $31
       nop
.end func_80077B54

.globl func_80077B68
.ent func_80077B68
func_80077B68:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      beqz       $4, .L80077B90
       sw        $31, 0x1C($29)
      sw         $16, 0x24($4)
      jal        func_80077F50
       addiu     $6, $29, 0x10
      j          .L80077B94
       addu      $2, $16, $0
  .L80077B90:
      addu       $2, $0, $0
  .L80077B94:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80077B68

.globl func_80077BA4
.ent func_80077BA4
func_80077BA4:
      addiu      $29, $29, -0x38
      sw         $19, 0x24($29)
      lbu        $19, 0x4B($29)
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $21, 0x2C($29)
      addu       $21, $5, $0
      sw         $22, 0x30($29)
      addu       $22, $6, $0
      sw         $20, 0x28($29)
      addu       $20, $7, $0
      sw         $16, 0x18($29)
      addiu      $16, $0, 0x1
      sw         $31, 0x34($29)
      beqz       $17, .L80077BF0
       sw        $18, 0x20($29)
      lw         $2, 0x4($17)
      bnez       $2, .L80077BF8
       nop
  .L80077BF0:
      j          .L80077CA8
       addiu     $2, $0, -0x4
  .L80077BF8:
      lw         $2, 0x34($17)
      andi       $2, $2, 0x4
      beqz       $2, .L80077CA8
       addu      $2, $16, $0
      jal        func_80077B54
       addu      $4, $17, $0
      addu       $4, $17, $0
      jal        func_80077AD0
       addu      $18, $2, $0
      addu       $16, $2, $0
      jal        func_80077078
       addu      $4, $18, $0
      or         $16, $16, $2
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80077CA8
       addu      $2, $16, $0
      addu       $4, $17, $0
      addu       $5, $21, $0
      andi       $2, $19, 0xFF
      addu       $6, $22, $0
      addu       $7, $20, $0
      jal        func_80077CD0
       sw        $2, 0x10($29)
      lw         $5, 0x0($20)
      beqz       $5, .L80077C98
       addu      $16, $2, $0
      beq        $5, $18, .L80077C98
       addiu     $2, $0, 0x2
      lw         $3, 0x64($17)
      beq        $3, $2, .L80077C9C
       nop
      lw         $2, 0x4($17)
      lw         $2, 0x0($2)
      lbu        $2, 0xD9($2)
      bnez       $2, .L80077C9C
       nop
      jal        func_8008B918
       addu      $4, $17, $0
      j          .L80077C9C
       nop
  .L80077C98:
      addu       $16, $0, $0
  .L80077C9C:
      jal        func_800779CC
       addu      $4, $17, $0
      addu       $2, $16, $0
  .L80077CA8:
      lw         $31, 0x34($29)
      lw         $22, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80077BA4

.globl func_80077CD0
.ent func_80077CD0
func_80077CD0:
      addiu      $29, $29, -0x40
      sw         $22, 0x30($29)
      lbu        $22, 0x53($29)
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $20, 0x28($29)
      addu       $20, $6, $0
      sw         $23, 0x34($29)
      addu       $23, $7, $0
      sw         $19, 0x24($29)
      addiu      $19, $0, 0x1
      sw         $31, 0x38($29)
      sw         $21, 0x2C($29)
      beqz       $17, .L80077D20
       sw        $16, 0x18($29)
      lw         $2, 0x4($17)
      bnez       $2, .L80077D28
       nop
  .L80077D20:
      j          .L80077E58
       addiu     $2, $0, -0x4
  .L80077D28:
      lw         $2, 0x34($17)
      andi       $2, $2, 0x4
      beqz       $2, .L80077E58
       addu      $2, $19, $0
      jal        func_80077B54
       addu      $4, $17, $0
      addu       $16, $2, $0
      jal        func_80077078
       addu      $4, $16, $0
      addu       $19, $2, $0
      addiu      $2, $0, 0x1
      bne        $19, $2, .L80077E54
       addu      $21, $16, $0
      beqz       $16, .L80077DEC
       sltiu     $2, $18, 0x8
      beqz       $2, .L80077E08
       lui       $2, %hi(jtbl_800F07C0)
      addiu      $2, $2, %lo(jtbl_800F07C0)
      sll        $3, $18, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80077D84
.L80077D84:
      j          .L80077E08
       addu      $16, $0, $0
  .globl .L80077D8C
.L80077D8C:
      addu       $4, $17, $0
      addu       $5, $20, $0
      addu       $6, $18, $0
      j          .L80077DFC
       addiu     $7, $0, 0x1
  .globl .L80077DA0
.L80077DA0:
      addu       $4, $17, $0
      addu       $5, $16, $0
      jal        func_80075C3C
       addu      $6, $20, $0
      j          .L80077E08
       addu      $16, $2, $0
  .globl .L80077DB8
.L80077DB8:
      addu       $4, $17, $0
      addu       $5, $16, $0
      jal        func_80075D54
       addu      $6, $20, $0
      j          .L80077E08
       addu      $16, $2, $0
  .globl .L80077DD0
.L80077DD0:
      addu       $4, $17, $0
      addu       $5, $16, $0
      addu       $6, $20, $0
      jal        func_8007655C
       addu      $7, $18, $0
      j          .L80077E08
       addu      $16, $2, $0
  .L80077DEC:
      addu       $4, $17, $0
      addu       $5, $20, $0
      addu       $6, $18, $0
  .globl .L80077DF8
.L80077DF8:
      andi       $7, $22, 0xFF
  .L80077DFC:
      jal        func_80075E28
       nop
      addu       $16, $2, $0
  .L80077E08:
      addiu      $2, $0, 0x1
      bne        $18, $2, .L80077E34
       addu      $4, $17, $0
      addu       $5, $21, $0
      addu       $6, $16, $0
      addu       $7, $2, $0
      andi       $2, $22, 0xFF
      sw         $20, 0x10($29)
      jal        func_800764B0
       sw        $2, 0x14($29)
      addu       $4, $17, $0
  .L80077E34:
      addu       $5, $21, $0
      addu       $6, $16, $0
      jal        func_80076430
       addu      $7, $18, $0
      addu       $4, $17, $0
      jal        func_80077B68
       addu      $5, $16, $0
      sw         $16, 0x0($23)
  .L80077E54:
      addu       $2, $19, $0
  .L80077E58:
      lw         $31, 0x38($29)
      lw         $23, 0x34($29)
      lw         $22, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_80077CD0

.globl func_80077E84
.ent func_80077E84
func_80077E84:
      lui        $2, %hi(D_800FEF70)
      lbu        $2, %lo(D_800FEF70)($2)
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addiu      $17, $0, 0x1
      sw         $31, 0x1C($29)
      bnez       $2, .L80077F34
       sw        $16, 0x10($29)
      beqz       $18, .L80077F38
       addiu     $2, $0, -0x4
      lw         $16, 0x24($18)
      beqz       $16, .L80077F38
       addu      $2, $17, $0
      jal        func_80077960
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80077EE4
       addu      $4, $18, $0
      jal        func_80076E4C
       addu      $5, $16, $0
      j          .L80077F34
       addu      $17, $2, $0
  .L80077EE4:
      lhu        $3, 0x2($16)
      andi       $2, $3, 0x10
      beqz       $2, .L80077F04
       andi      $2, $3, 0x8
      jal        func_80076BD4
       addu      $5, $16, $0
      j          .L80077F34
       addu      $17, $2, $0
  .L80077F04:
      beqz       $2, .L80077F1C
       addu      $4, $18, $0
      jal        func_80076A14
       addu      $5, $16, $0
      j          .L80077F34
       addu      $17, $2, $0
  .L80077F1C:
      andi       $2, $3, 0x2
      beqz       $2, .L80077F38
       addu      $2, $17, $0
      jal        func_800768BC
       addu      $5, $16, $0
      addu       $17, $2, $0
  .L80077F34:
      addu       $2, $17, $0
  .L80077F38:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80077E84

.globl func_80077F50
.ent func_80077F50
func_80077F50:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $17, 0x14($29)
      addiu      $17, $0, 0x1
      sw         $31, 0x24($29)
      sw         $16, 0x10($29)
      beqz       $18, .L80078008
       sw        $0, 0x0($20)
      lbu        $3, 0x10($18)
      addiu      $2, $0, 0x2B
      bne        $3, $2, .L8007800C
       addu      $2, $17, $0
      jal        func_8007D4AC
       addu      $4, $18, $0
      addu       $16, $2, $0
      beqz       $16, .L8007800C
       addu      $2, $17, $0
      lw         $2, 0x8($16)
      beql       $2, $0, .L8007800C
       addu      $2, $17, $0
      sw         $2, 0x0($20)
      lw         $4, 0x20($19)
      beqz       $4, .L80077FE0
       addiu     $2, $0, 0x1
      lw         $2, 0x8($16)
      beq        $4, $2, .L80077FE0
       addiu     $2, $0, 0x1
      jal        func_8007F884
       addiu     $5, $0, 0x3
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
  .L80077FE0:
      bne        $17, $2, .L8007800C
       addu      $2, $17, $0
      lw         $3, 0x20($19)
      lw         $2, 0x8($16)
      beq        $3, $2, .L80078008
       addu      $4, $19, $0
      addu       $5, $18, $0
      jal        func_8007F430
       addiu     $6, $0, 0x1
      addu       $17, $2, $0
  .L80078008:
      addu       $2, $17, $0
  .L8007800C:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80077F50

.globl func_8007802C
.ent func_8007802C
func_8007802C:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lhu        $2, 0x0($16)
      andi       $2, $2, 0x8
      beqz       $2, .L8007809C
       addu      $17, $4, $0
      lhu        $2, 0x0($17)
      andi       $2, $2, 0x8
      beqz       $2, .L8007809C
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $2, 0x4($2)
      beqz       $2, .L8007809C
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      addu       $4, $16, $0
      addiu      $5, $0, 0x3
      jal        func_80058268
       addu      $16, $2, $0
      lw         $4, 0x0($16)
      lw         $3, 0x0($2)
      beq        $4, $3, .L800780A0
       addu      $2, $0, $0
  .L8007809C:
      addiu      $2, $0, 0x1
  .L800780A0:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8007802C

.globl func_800780B4
.ent func_800780B4
func_800780B4:
      addiu      $29, $29, -0x38
      sw         $18, 0x28($29)
      addu       $18, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $19, 0x2C($29)
      addu       $19, $6, $0
      addiu      $4, $29, 0x10
      addu       $5, $0, $0
      addiu      $6, $0, 0x10
      sw         $31, 0x30($29)
      jal        func_80016140
       sw        $16, 0x20($29)
      beqz       $17, .L80078190
       addiu     $2, $0, -0x4
      beqz       $19, .L80078190
       nop
      lhu        $2, 0x0($17)
      andi       $2, $2, 0x1
      beqz       $2, .L80078130
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $3, 0x0($2)
      lw         $7, 0x4($2)
      lw         $8, 0x8($2)
      lw         $9, 0xC($2)
      sw         $3, 0x10($29)
      sw         $7, 0x14($29)
      sw         $8, 0x18($29)
      sw         $9, 0x1C($29)
  .L80078130:
      addu       $4, $18, $0
      jal        func_800781AC
       addu      $5, $17, $0
      addu       $16, $2, $0
      beqz       $16, .L8007816C
       addu      $4, $17, $0
  .L80078148:
      addu       $5, $16, $0
      jal        func_80074D2C
       addiu     $6, $29, 0x10
      addu       $4, $18, $0
      jal        func_80078258
       addu      $5, $16, $0
      addu       $16, $2, $0
      bnez       $16, .L80078148
       addu      $4, $17, $0
  .L8007816C:
      lw         $3, 0x10($29)
      lw         $7, 0x14($29)
      lw         $8, 0x18($29)
      lw         $9, 0x1C($29)
      sw         $3, 0x0($19)
      sw         $7, 0x4($19)
      sw         $8, 0x8($19)
      sw         $9, 0xC($19)
      addiu      $2, $0, 0x1
  .L80078190:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800780B4

.globl func_800781AC
.ent func_800781AC
func_800781AC:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $31, 0x20($29)
      sw         $17, 0x14($29)
      bnez       $18, .L800781D8
       sw        $16, 0x10($29)
      j          .L8007823C
       addu      $2, $0, $0
  .L800781D8:
      addu       $17, $18, $0
      lw         $16, 0xC($17)
      beqz       $16, .L80078214
       addu      $4, $19, $0
      addu       $4, $18, $0
  .L800781EC:
      jal        func_8007802C
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80078214
       addu      $4, $19, $0
      addu       $17, $16, $0
      lw         $16, 0xC($17)
      bnez       $16, .L800781EC
       addu      $4, $18, $0
      addu       $4, $19, $0
  .L80078214:
      jal        func_80074F00
       addu      $5, $17, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L8007823C
       addu      $2, $17, $0
      addu       $4, $19, $0
      jal        func_80078258
       addu      $5, $17, $0
      addu       $17, $2, $0
      addu       $2, $17, $0
  .L8007823C:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800781AC

.globl func_80078258
.ent func_80078258
func_80078258:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x20($29)
      sw         $18, 0x18($29)
      bnez       $17, .L80078284
       sw        $16, 0x10($29)
      j          .L800782CC
       addu      $2, $0, $0
  .L80078284:
      lw         $16, 0x8($17)
      beqz       $16, .L800782C8
       addu      $18, $0, $0
      addu       $4, $17, $0
  .L80078294:
      jal        func_8007802C
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L800782C8
       addu      $4, $19, $0
      jal        func_80074F00
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      bnel       $2, $0, .L800782C8
       addu      $18, $16, $0
      lw         $16, 0x8($16)
      bnez       $16, .L80078294
       addu      $4, $17, $0
  .L800782C8:
      addu       $2, $18, $0
  .L800782CC:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80078258

.globl func_800782E8
.ent func_800782E8
func_800782E8:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $31, 0x20($29)
      sw         $17, 0x14($29)
      bnez       $18, .L80078314
       sw        $16, 0x10($29)
      j          .L80078360
       addu      $2, $0, $0
  .L80078314:
      addu       $17, $18, $0
      lw         $16, 0x8($17)
      beqz       $16, .L80078360
       addu      $2, $17, $0
      addu       $4, $18, $0
  .L80078328:
      jal        func_8007802C
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L8007835C
       addu      $4, $19, $0
      jal        func_80074F00
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      bnel       $2, $0, .L80078350
       addu      $17, $16, $0
  .L80078350:
      lw         $16, 0x8($16)
      bnez       $16, .L80078328
       addu      $4, $18, $0
  .L8007835C:
      addu       $2, $17, $0
  .L80078360:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800782E8

.globl func_8007837C
.ent func_8007837C
func_8007837C:
      addiu      $29, $29, -0x50
      sw         $16, 0x40($29)
      addu       $16, $4, $0
      sw         $17, 0x44($29)
      addu       $17, $5, $0
      sw         $18, 0x48($29)
      addiu      $18, $29, 0x30
      addu       $4, $18, $0
      addu       $5, $0, $0
      sw         $31, 0x4C($29)
      jal        func_80016140
       addiu     $6, $0, 0x10
      lhu        $2, 0x0($17)
      andi       $2, $2, 0x1
      beql       $2, $0, .L800783EC
       addu      $4, $16, $0
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $3, 0x0($2)
      lw         $7, 0x4($2)
      lw         $8, 0x8($2)
      lw         $9, 0xC($2)
      sw         $3, 0x30($29)
      sw         $7, 0x34($29)
      sw         $8, 0x38($29)
      sw         $9, 0x3C($29)
      addu       $4, $16, $0
  .L800783EC:
      jal        func_8008BB94
       addiu     $5, $29, 0x10
      lw         $5, 0x50($16)
      lw         $6, 0x4C($16)
      jal        func_8008A204
       addiu     $4, $29, 0x10
      addiu      $4, $29, 0x20
      addu       $5, $18, $0
      jal        func_8008A3BC
       addiu     $6, $29, 0x10
      lw         $31, 0x4C($29)
      lw         $18, 0x48($29)
      lw         $17, 0x44($29)
      lw         $16, 0x40($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x50
.end func_8007837C

.globl func_80078430
.ent func_80078430
func_80078430:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $16, 0x20($29)
      addu       $16, $5, $0
      addiu      $4, $29, 0x10
      addu       $5, $0, $0
      sw         $31, 0x28($29)
      jal        func_80016140
       addiu     $6, $0, 0x10
      addu       $4, $17, $0
      addu       $5, $16, $0
      jal        func_800780B4
       addiu     $6, $29, 0x10
      addu       $4, $17, $0
      jal        func_8007756C
       addiu     $5, $29, 0x10
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x30
.end func_80078430

.globl func_8007848C
.ent func_8007848C
func_8007848C:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      sw         $31, 0x20($29)
      jal        func_80077B54
       sw        $17, 0x14($29)
      lui        $3, %hi(D_800FEF7C)
      addiu      $5, $0, 0x1
      sw         $5, %lo(D_800FEF7C)($3)
      lw         $3, 0x14($19)
      addu       $17, $2, $0
      lhu        $3, 0x0($3)
      ori        $2, $0, 0xFCF0
      bne        $3, $2, .L800784F4
       addu      $4, $18, $0
      lui        $2, %hi(D_80137108)
      addiu      $2, $2, %lo(D_80137108)
      sb         $0, 0x72A($2)
      sb         $0, 0x729($2)
      jal        func_80076D98
       sb        $5, 0x728($2)
      addiu      $16, $0, 0x1
  .L800784F4:
      lw         $3, 0x60($18)
      addiu      $2, $0, 0x3
      bne        $3, $2, .L80078554
       addu      $2, $16, $0
      lw         $2, 0x4($19)
      addiu      $2, $2, -0x1
      sltiu      $2, $2, 0x2
      beqz       $2, .L80078554
       addu      $2, $16, $0
      beqz       $17, .L80078540
       addu      $4, $18, $0
      lhu        $2, 0x2($17)
      andi       $2, $2, 0x1000
      beqz       $2, .L80078540
       addu      $5, $17, $0
      jal        func_80077348
       addu      $6, $19, $0
      j          .L80078550
       addu      $16, $2, $0
  .L80078540:
      addu       $5, $17, $0
      jal        func_80077094
       addu      $6, $19, $0
      addu       $16, $2, $0
  .L80078550:
      addu       $2, $16, $0
  .L80078554:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8007848C

.globl func_80078570
.ent func_80078570
func_80078570:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      beqz       $16, .L800785B0
       sw        $31, 0x24($29)
      jal        func_8008B620
       nop
      addu       $4, $16, $0
      jal        func_8008BB94
       addiu     $5, $29, 0x10
      addu       $4, $16, $0
      addiu      $5, $29, 0x10
      jal        func_8008BB08
       addiu     $6, $0, 0x1
      jal        func_800809B8
       addu      $4, $16, $0
  .L800785B0:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80078570

.globl func_800785C0
.ent func_800785C0
func_800785C0:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $17, 0x14($29)
      addiu      $17, $0, 0x1
      sw         $31, 0x24($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $16, 0x8($4)
      bnez       $16, .L800785FC
       addu      $18, $0, $0
      j          .L80078870
       addiu     $2, $0, -0x4
  .L800785FC:
      addiu      $3, $20, -0x1
      sltiu      $2, $3, 0x17
      beqz       $2, .L80078814
       lui       $2, %hi(jtbl_800F0800)
      addiu      $2, $2, %lo(jtbl_800F0800)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80078624
.L80078624:
      addu       $4, $16, $0
      jal        func_80078B40
       addu      $5, $19, $0
      j          .L80078818
       addu      $17, $2, $0
  .globl .L80078638
.L80078638:
      lw         $5, 0xC($16)
      jal        func_8007F548
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80078818
       addiu     $18, $0, 0x1
      jal        func_800798C8
       addu      $4, $16, $0
      j          .L80078818
       addu      $17, $2, $0
  .globl .L80078660
.L80078660:
      lw         $5, 0xC($16)
      jal        func_8007F548
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80078818
       addiu     $18, $0, 0x1
      jal        func_80079900
       addu      $4, $16, $0
      j          .L80078818
       addu      $17, $2, $0
  .globl .L80078688
.L80078688:
      lw         $5, 0xC($16)
      jal        func_8007F548
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80078818
       addiu     $18, $0, 0x1
      jal        func_80079938
       addu      $4, $16, $0
      j          .L80078818
       addu      $17, $2, $0
  .globl .L800786B0
.L800786B0:
      lw         $5, 0xC($16)
      jal        func_8007F548
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80078818
       addiu     $18, $0, 0x1
      jal        func_80079970
       addu      $4, $16, $0
      j          .L80078818
       addu      $17, $2, $0
  .globl .L800786D8
.L800786D8:
      lw         $5, 0xC($16)
      jal        func_8007F548
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80078818
       addiu     $18, $0, 0x1
      jal        func_800799A8
       addu      $4, $16, $0
      j          .L80078818
       addu      $17, $2, $0
  .globl .L80078700
.L80078700:
      lw         $5, 0xC($16)
      jal        func_8007F548
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80078818
       addiu     $18, $0, 0x1
      jal        func_80079890
       addu      $4, $16, $0
      j          .L80078818
       addu      $17, $2, $0
  .globl .L80078728
.L80078728:
      lw         $5, 0xC($16)
      jal        func_8007F548
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80078750
       addu      $4, $16, $0
      jal        func_80079A00
       addu      $5, $19, $0
      j          .L80078818
       addu      $17, $2, $0
  .L80078750:
      j          .L80078818
       addiu     $18, $0, 0x1
  .globl .L80078758
.L80078758:
      addu       $4, $16, $0
      jal        func_8007AE58
       addu      $5, $19, $0
      j          .L80078818
       addu      $17, $2, $0
  .globl .L8007876C
.L8007876C:
      jal        func_8007AF24
       addu      $4, $16, $0
      j          .L80078818
       addu      $17, $2, $0
  .globl .L8007877C
.L8007877C:
      jal        func_800794E0
       addu      $4, $16, $0
      j          .L80078818
       addu      $17, $2, $0
  .globl .L8007878C
.L8007878C:
      jal        func_800794BC
       addu      $4, $16, $0
      j          .L80078818
       addu      $17, $2, $0
  .globl .L8007879C
.L8007879C:
      jal        func_800601E8
       addu      $4, $16, $0
      j          .L80078818
       addu      $17, $2, $0
  .globl .L800787AC
.L800787AC:
      lw         $2, 0x18($16)
      bgtz       $2, .L80078818
       addiu     $17, $0, 0x1
      j          .L800787D0
       addu      $4, $16, $0
  .globl .L800787C0
.L800787C0:
      lw         $2, 0x90($16)
      bnez       $2, .L80078818
       addiu     $17, $0, 0x1
      addu       $4, $16, $0
  .L800787D0:
      addu       $5, $20, $0
      jal        func_80079750
       addu      $6, $19, $0
      j          .L80078818
       addu      $17, $2, $0
  .globl .L800787E4
.L800787E4:
      addu       $4, $16, $0
      jal        func_800659A4
       addu      $5, $19, $0
      j          .L80078818
       addu      $17, $2, $0
  .globl .L800787F8
.L800787F8:
      addu       $4, $16, $0
      jal        func_80065A10
       addu      $5, $19, $0
      j          .L80078818
       addu      $17, $2, $0
  .globl .L8007880C
.L8007880C:
      j          .L80078818
       addiu     $17, $0, 0x1
  .globl .L80078814
.L80078814:
      addu       $17, $0, $0
  .L80078818:
      andi       $2, $18, 0xFF
      beqz       $2, .L80078870
       addu      $2, $17, $0
      jal        func_8007F558
       addu      $4, $16, $0
      beqz       $2, .L80078870
       addu      $2, $17, $0
      jal        func_8007F558
       addu      $4, $16, $0
      jal        func_8007D4AC
       addu      $4, $2, $0
      lw         $4, 0x8($2)
      beql       $4, $0, .L80078870
       addu      $2, $17, $0
      lw         $2, 0xC($2)
      beqz       $2, .L8007886C
       addu      $5, $20, $0
      lw         $2, 0x20($2)
      jalr       $2
       addu      $6, $19, $0
      addu       $17, $2, $0
  .L8007886C:
      addu       $2, $17, $0
  .L80078870:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800785C0

.globl func_80078890
.ent func_80078890
func_80078890:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $18, 0x18($29)
      sw         $31, 0x24($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $16, 0x8($4)
      jal        func_800785C0
       addu      $18, $0, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L80078B20
       addiu     $2, $0, -0x4
      addiu      $3, $20, -0x1
      sltiu      $2, $3, 0x16
      beqz       $2, .L80078AC4
       lui       $2, %hi(jtbl_800F0860)
      addiu      $2, $2, %lo(jtbl_800F0860)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800788F8
.L800788F8:
      addu       $4, $16, $0
      jal        func_80078E00
       addu      $5, $19, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L8007890C
.L8007890C:
      lw         $5, 0xC($16)
      jal        func_8007F548
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80078AC8
       addiu     $18, $0, 0x1
      jal        func_800798E4
       addu      $4, $16, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L80078934
.L80078934:
      lw         $5, 0xC($16)
      jal        func_8007F548
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80078AC8
       addiu     $18, $0, 0x1
      jal        func_8007991C
       addu      $4, $16, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L8007895C
.L8007895C:
      lw         $5, 0xC($16)
      jal        func_8007F548
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80078AC8
       addiu     $18, $0, 0x1
      jal        func_80079954
       addu      $4, $16, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L80078984
.L80078984:
      lw         $5, 0xC($16)
      jal        func_8007F548
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80078AC8
       addiu     $18, $0, 0x1
      jal        func_8007998C
       addu      $4, $16, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L800789AC
.L800789AC:
      lw         $5, 0xC($16)
      jal        func_8007F548
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80078AC8
       addiu     $18, $0, 0x1
      jal        func_800799C4
       addu      $4, $16, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L800789D4
.L800789D4:
      lw         $5, 0xC($16)
      jal        func_8007F548
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80078AC8
       addiu     $18, $0, 0x1
      jal        func_800798AC
       addu      $4, $16, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L800789FC
.L800789FC:
      addu       $4, $16, $0
      jal        func_8007BB60
       addu      $5, $19, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L80078A10
.L80078A10:
      addu       $4, $16, $0
      jal        func_80078FC0
       addu      $5, $19, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L80078A24
.L80078A24:
      jal        func_8007F1D8
       addu      $4, $16, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L80078A34
.L80078A34:
      jal        func_8007EE8C
       addu      $4, $16, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L80078A44
.L80078A44:
      jal        func_8007961C
       addu      $4, $16, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L80078A54
.L80078A54:
      jal        func_80079504
       addu      $4, $16, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L80078A64
.L80078A64:
      jal        func_80060228
       addu      $4, $16, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L80078A74
.L80078A74:
      addu       $4, $16, $0
      addu       $5, $20, $0
      jal        func_800797F8
       addu      $6, $19, $0
      addu       $4, $16, $0
      addu       $5, $20, $0
      jal        func_8008048C
       addu      $6, $19, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L80078A9C
.L80078A9C:
      addu       $4, $16, $0
      jal        func_80065AF0
       addu      $5, $19, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L80078AB0
.L80078AB0:
      addu       $4, $16, $0
      jal        func_80065CF8
       addu      $5, $19, $0
      j          .L80078AC8
       addu      $17, $2, $0
  .globl .L80078AC4
.L80078AC4:
      addiu      $17, $0, -0x4
  .L80078AC8:
      andi       $2, $18, 0xFF
      beqz       $2, .L80078B20
       addu      $2, $17, $0
      jal        func_8007F558
       addu      $4, $16, $0
      beqz       $2, .L80078B20
       addu      $2, $17, $0
      jal        func_8007F558
       addu      $4, $16, $0
      jal        func_8007D4AC
       addu      $4, $2, $0
      lw         $4, 0x8($2)
      beql       $4, $0, .L80078B20
       addu      $2, $17, $0
      lw         $2, 0xC($2)
      beqz       $2, .L80078B1C
       addu      $5, $20, $0
      lw         $2, 0x24($2)
      jalr       $2
       addu      $6, $19, $0
      addu       $17, $2, $0
  .L80078B1C:
      addu       $2, $17, $0
  .L80078B20:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80078890

.globl func_80078B40
.ent func_80078B40
func_80078B40:
      addiu      $29, $29, -0x48
      sw         $20, 0x40($29)
      addu       $20, $5, $0
      sw         $31, 0x44($29)
      sw         $19, 0x3C($29)
      sw         $18, 0x38($29)
      sw         $17, 0x34($29)
      beqz       $4, .L80078B84
       sw        $16, 0x30($29)
      lw         $4, 0x4($4)
      beqz       $4, .L80078C68
       addu      $2, $0, $0
      lw         $2, 0x14($4)
      beqz       $2, .L80078C68
       addu      $2, $0, $0
      bnez       $20, .L80078B8C
       nop
  .L80078B84:
      j          .L80078C68
       addu      $2, $0, $0
  .L80078B8C:
      jal        func_8008DF3C
       addiu     $4, $29, 0x10
      addiu      $16, $29, 0x20
      jal        func_8008DF84
       addu      $4, $16, $0
      lw         $2, 0x0($20)
      blez       $2, .L80078C14
       addu      $19, $0, $0
      addiu      $18, $29, 0x10
      addu       $17, $19, $0
  .L80078BB4:
      lw         $5, 0x0($18)
      beqz       $5, .L80078C14
       nop
      lw         $2, 0x0($16)
      beqz       $2, .L80078C14
       addiu     $19, $19, 0x1
      lw         $4, 0x4($20)
      jal        func_80017640
       addu      $4, $4, $17
      lw         $4, 0x0($18)
      jal        func_80052540
       addiu     $18, $18, 0x4
      lw         $4, 0x4($20)
      lw         $5, 0x0($16)
      addu       $4, $4, $17
      jal        func_80017640
       addiu     $4, $4, 0x100
      lw         $4, 0x0($16)
      jal        func_80052540
       addiu     $16, $16, 0x4
      lw         $2, 0x0($20)
      slt        $2, $19, $2
      bnez       $2, .L80078BB4
       addiu     $17, $17, 0x10B
  .L80078C14:
      lw         $2, 0x10($29)
      beqz       $2, .L80078C5C
       addiu     $19, $29, 0x10
      addu       $18, $0, $0
      addiu      $17, $29, 0x20
  .L80078C28:
      lw         $2, 0x0($17)
      beqz       $2, .L80078C5C
       addu      $2, $19, $18
      lw         $4, 0x0($2)
      jal        func_80052540
       addiu     $18, $18, 0x4
      lw         $4, 0x0($17)
      jal        func_80052540
       addu      $16, $19, $0
      addu       $16, $16, $18
      lw         $2, 0x0($16)
      bnez       $2, .L80078C28
       addiu     $17, $17, 0x4
  .L80078C5C:
      addiu      $2, $0, 0x2
      sw         $2, 0xC($20)
      addiu      $2, $0, 0x1
  .L80078C68:
      lw         $31, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_80078B40

.globl func_80078C88
.ent func_80078C88
func_80078C88:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $19, 0x1C($29)
      addiu      $19, $0, 0x1
      addu       $4, $5, $0
      lui        $5, %hi(D_800ED81C)
      addiu      $5, $5, %lo(D_800ED81C)
      sw         $31, 0x20($29)
      sw         $18, 0x18($29)
      jal        func_800183A4
       sw        $16, 0x10($29)
      addu       $18, $2, $0
      bnez       $18, .L80078CCC
       nop
      j          .L80078D18
       addiu     $19, $0, -0x20
  .L80078CCC:
      beqz       $17, .L80078D18
       nop
  .L80078CD4:
      lw         $4, 0x0($17)
      jal        func_8004FAD0
       nop
      lw         $4, 0x0($17)
      jal        func_8004FA7C
       addu      $16, $2, $0
      addu       $4, $16, $0
      addiu      $5, $0, 0x1
      addu       $16, $2, $0
      addu       $6, $16, $0
      jal        func_80018AF4
       addu      $7, $18, $0
      bnel       $2, $16, .L80078D18
       addiu     $19, $0, -0x21
      lw         $17, 0x4($17)
      bnez       $17, .L80078CD4
       nop
  .L80078D18:
      beqz       $18, .L80078D2C
       addu      $2, $19, $0
      jal        func_80018620
       addu      $4, $18, $0
      addu       $2, $19, $0
  .L80078D2C:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80078C88

.globl func_80078D48
.ent func_80078D48
func_80078D48:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $18, 0x18($29)
      addiu      $18, $0, 0x1
      addu       $4, $5, $0
      lui        $5, %hi(D_800ED81C)
      addiu      $5, $5, %lo(D_800ED81C)
      sw         $31, 0x20($29)
      sw         $17, 0x14($29)
      jal        func_800183A4
       sw        $16, 0x10($29)
      addu       $17, $2, $0
      bnez       $17, .L80078D8C
       nop
      j          .L80078DD0
       addiu     $18, $0, -0x20
  .L80078D8C:
      jal        func_8005160C
       addu      $4, $19, $0
      addu       $16, $2, $0
      bnez       $16, .L80078DA8
       nop
      j          .L80078DD0
       addiu     $18, $0, -0x1
  .L80078DA8:
      jal        func_80051620
       addu      $4, $19, $0
      addu       $4, $16, $0
      addiu      $5, $0, 0x1
      addu       $16, $2, $0
      addu       $6, $16, $0
      jal        func_80018AF4
       addu      $7, $17, $0
      bnel       $2, $16, .L80078DD0
       addiu     $18, $0, -0x21
  .L80078DD0:
      beqz       $17, .L80078DE4
       addu      $2, $18, $0
      jal        func_80018620
       addu      $4, $17, $0
      addu       $2, $18, $0
  .L80078DE4:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80078D48

.globl func_80078E00
.ent func_80078E00
func_80078E00:
      addiu      $29, $29, -0x238
      sw         $16, 0x220($29)
      addu       $16, $4, $0
      sw         $31, 0x234($29)
      sw         $20, 0x230($29)
      sw         $19, 0x22C($29)
      sw         $18, 0x228($29)
      beqz       $16, .L80078E38
       sw        $17, 0x224($29)
      lw         $2, 0x4($16)
      beqz       $2, .L80078FA0
       addiu     $2, $0, -0x4
      bnez       $5, .L80078E40
       nop
  .L80078E38:
      j          .L80078FA0
       addiu     $2, $0, -0x4
  .L80078E40:
      jal        func_80014E3C
       nop
      bnez       $2, .L80078E60
       lui       $4, %hi(D_800F08B8)
      jal        func_80000AAC
       addiu     $4, $4, %lo(D_800F08B8)
      j          .L80078FA0
       addu      $2, $0, $0
  .L80078E60:
      lw         $2, 0x4($16)
      lw         $16, 0x14($2)
      beqz       $16, .L80078F9C
       addiu     $4, $29, 0x18
      sb         $0, 0x120($29)
      lui        $5, %hi(D_8013718C)
      jal        func_80005A10
       addiu     $5, $5, %lo(D_8013718C)
      addiu      $4, $29, 0x120
      lui        $5, %hi(D_800F08C8)
      addiu      $5, $5, %lo(D_800F08C8)
      jal        func_80016580
       addiu     $6, $29, 0x18
      lui        $4, %hi(D_800F08D0)
      addiu      $4, $4, %lo(D_800F08D0)
      jal        func_800009D8
       addiu     $5, $29, 0x18
      addu       $4, $16, $0
      lui        $5, %hi(D_800FEF9C)
      addiu      $5, $5, %lo(D_800FEF9C)
      jal        func_80078C88
       addu      $6, $0, $0
      addu       $20, $2, $0
      addiu      $2, $0, 0x1
      bne        $20, $2, .L80078F8C
       lui       $4, %hi(D_800F095C)
      addu       $16, $0, $0
      lui        $19, %hi(D_800FF548)
      lui        $2, %hi(D_800FF540)
      addu       $17, $2, $0
      lui        $2, %hi(D_800FF544)
      addu       $18, $2, $0
      sw         $0, %lo(D_800FF544)($18)
      sw         $0, %lo(D_800FF540)($17)
      addiu      $4, $19, %lo(D_800FF548)
  .L80078EEC:
      addiu      $5, $17, %lo(D_800FF540)
      jal        func_80018F7C
       addiu     $6, $18, %lo(D_800FF544)
      lw         $2, %lo(D_800FF540)($17)
      bgtz       $2, .L80078F10
       addiu     $16, $16, 0x1
      slti       $2, $16, 0x8
      bnez       $2, .L80078EEC
       addiu     $4, $19, %lo(D_800FF548)
  .L80078F10:
      lui        $2, %hi(D_800FEF9C)
      addiu      $19, $2, %lo(D_800FEF9C)
      jal        func_800063C4
       addu      $4, $19, $0
      lui        $3, %hi(D_800FEF63)
      lbu        $3, %lo(D_800FEF63)($3)
      beqz       $3, .L80078F4C
       addu      $16, $2, $0
      lui        $4, %hi(D_800F08EC)
      addiu      $4, $4, %lo(D_800F08EC)
      lw         $6, %lo(D_800FF540)($17)
      lw         $7, %lo(D_800FF544)($18)
      addu       $5, $0, $0
      jal        func_80002E80
       sw        $16, 0x10($29)
  .L80078F4C:
      lw         $3, %lo(D_800FF540)($17)
      addiu      $2, $16, 0x80
      slt        $2, $2, $3
      beqz       $2, .L80078F74
       addiu     $4, $29, 0x120
      jal        func_80005C5C
       addu      $5, $19, $0
      lui        $4, %hi(D_800F092C)
      j          .L80078F7C
       addiu     $4, $4, %lo(D_800F092C)
  .L80078F74:
      lui        $4, %hi(D_800F0940)
      addiu      $4, $4, %lo(D_800F0940)
  .L80078F7C:
      jal        func_800009D8
       addiu     $5, $29, 0x18
      j          .L80078FA0
       addu      $2, $20, $0
  .L80078F8C:
      jal        func_80000AAC
       addiu     $4, $4, %lo(D_800F095C)
      j          .L80078FA0
       addu      $2, $20, $0
  .L80078F9C:
      addu       $2, $0, $0
  .L80078FA0:
      lw         $31, 0x234($29)
      lw         $20, 0x230($29)
      lw         $19, 0x22C($29)
      lw         $18, 0x228($29)
      lw         $17, 0x224($29)
      lw         $16, 0x220($29)
      jr         $31
       addiu     $29, $29, 0x238
.end func_80078E00

.globl func_80078FC0
.ent func_80078FC0
func_80078FC0:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      beqz       $16, .L80078FFC
       sw        $31, 0x18($29)
      lw         $2, 0x4($16)
      beql       $2, $0, .L80079098
       addiu     $2, $0, -0x4
      lw         $2, 0x0($2)
      beqz       $2, .L80079098
       addiu     $2, $0, -0x4
      bnez       $17, .L80079004
       nop
  .L80078FFC:
      j          .L80079098
       addiu     $2, $0, -0x4
  .L80079004:
      lw         $4, 0xA4($16)
      jal        func_80052540
       nop
      addu       $4, $17, $0
      jal        func_80017780
       sw        $0, 0xA4($16)
      addiu      $4, $2, 0x1
      jal        func_800524E8
       addu      $5, $0, $0
      bnez       $2, .L80079038
       sw        $2, 0xA4($16)
      j          .L80079098
       addiu     $2, $0, -0x5
  .L80079038:
      addu       $4, $17, $0
      lui        $5, %hi(D_800ED80C)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED80C)
      bnez       $2, .L80079064
       addu      $4, $17, $0
      addu       $4, $16, $0
      jal        func_8008BFF8
       addiu     $5, $0, 0x7
      j          .L80079098
       addiu     $2, $0, 0x1
  .L80079064:
      lui        $5, %hi(D_800ED800)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED800)
      bnez       $2, .L80079088
       addu      $4, $16, $0
      jal        func_8008BFF8
       addiu     $5, $0, 0x6
      j          .L80079098
       addiu     $2, $0, 0x1
  .L80079088:
      lw         $4, 0xA4($16)
      jal        func_80017640
       addu      $5, $17, $0
      addiu      $2, $0, 0x1
  .L80079098:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80078FC0

.globl func_800790AC
.ent func_800790AC
func_800790AC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L800790CC
       sw        $31, 0x14($29)
      lw         $5, 0xA4($16)
      bnez       $5, .L800790D4
       nop
  .L800790CC:
      j          .L800790F8
       addiu     $2, $0, -0x4
  .L800790D4:
      lw         $2, 0x4($16)
      lw         $4, 0x0($2)
      jal        func_80079108
       nop
      beqz       $2, .L800790F4
       addu      $4, $16, $0
      jal        func_8008B7CC
       addu      $5, $2, $0
  .L800790F4:
      addiu      $2, $0, 0x1
  .L800790F8:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800790AC

.globl func_80079108
.ent func_80079108
func_80079108:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      sw         $31, 0x20($29)
      beqz       $19, .L800791B4
       sw        $17, 0x14($29)
      jal        func_80017780
       addu      $4, $19, $0
      lw         $4, 0x44($18)
      beqz       $4, .L800791B4
       addu      $17, $2, $0
      jal        func_80058434
       nop
      addu       $16, $2, $0
      beqz       $16, .L800791B8
       addu      $2, $16, $0
  .L80079158:
      lhu        $2, 0x2($16)
      andi       $2, $2, 0x4
      beqz       $2, .L800791A8
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x6
      lw         $2, 0x4($2)
      bne        $2, $17, .L800791A8
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x6
      addiu      $4, $18, 0x34
      addu       $5, $19, $0
      lw         $3, 0x40($18)
      lw         $6, 0x0($2)
      lw         $3, 0x1C($3)
      jalr       $3
       addu      $7, $17, $0
      beqz       $2, .L800791B8
       addu      $2, $16, $0
  .L800791A8:
      lw         $16, 0x8($16)
      bnez       $16, .L80079158
       nop
  .L800791B4:
      addu       $2, $16, $0
  .L800791B8:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80079108

.globl func_800791D4
.ent func_800791D4
func_800791D4:
      addiu      $29, $29, -0x38
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $20, 0x28($29)
      addu       $20, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $0, $0
      sw         $21, 0x2C($29)
      addu       $21, $17, $0
      addu       $4, $20, $0
      addiu      $5, $0, 0x23
      sw         $31, 0x34($29)
      sw         $22, 0x30($29)
      sw         $18, 0x20($29)
      jal        func_800563C0
       sw        $16, 0x18($29)
      addu       $18, $2, $0
      beqz       $18, .L80079488
       addiu     $4, $0, 0x401
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $21, $2, $0
      beqz       $21, .L80079484
       addu      $4, $21, $0
      addu       $5, $20, $0
      subu       $16, $18, $20
      jal        func_80052310
       addu      $6, $16, $0
      addu       $16, $21, $16
      beq        $18, $20, .L8007926C
       sb        $0, 0x0($16)
      lw         $2, 0x4($19)
      lw         $2, 0x0($2)
      lw         $5, 0x2C($2)
      jal        func_800175C0
       addu      $4, $21, $0
      bnez       $2, .L80079488
       nop
  .L8007926C:
      lw         $2, 0x4($19)
      lw         $4, 0x0($2)
      jal        func_80079108
       addiu     $5, $18, 0x1
      addu       $22, $2, $0
      beqz       $22, .L8007947C
       addu      $4, $19, $0
      jal        func_8008B7CC
       addu      $5, $22, $0
      lw         $2, 0xAC($19)
      bnez       $2, .L8007934C
       addiu     $5, $0, 0x2
      addiu      $4, $0, 0x32
      lui        $5, %hi(D_80079C5C)
      addiu      $5, $5, %lo(D_80079C5C)
      jal        func_80051B88
       addiu     $6, $19, 0xAC
      addu       $17, $2, $0
      bltz       $17, .L80079488
       nop
      jal        func_80079C3C
       nop
      addu       $18, $2, $0
      beql       $18, $0, .L80079488
       addiu     $17, $0, -0x5
      lw         $5, 0xA4($19)
      beqz       $5, .L800792F4
       nop
      lw         $2, 0x4($19)
      lw         $4, 0x0($2)
      jal        func_80079108
       nop
      j          .L8007930C
       sw        $2, 0x8($18)
  .L800792F4:
      lw         $2, 0x4($19)
      lw         $2, 0x0($2)
      lw         $4, 0x44($2)
      jal        func_80058434
       nop
      sw         $2, 0x8($18)
  .L8007930C:
      beqz       $20, .L8007932C
       lui       $16, %hi(D_80138B70)
      addiu      $16, $16, %lo(D_80138B70)
      addu       $4, $16, $0
      addu       $5, $20, $0
      jal        func_80052310
       addiu     $6, $0, 0x100
      sb         $0, 0xFF($16)
  .L8007932C:
      lw         $4, 0xAC($19)
      jal        func_80051CF4
       addu      $5, $18, $0
      addu       $17, $2, $0
      lui        $2, %hi(D_80138B70)
      bltz       $17, .L80079404
       sb        $0, %lo(D_80138B70)($2)
      addiu      $5, $0, 0x2
  .L8007934C:
      lw         $4, 0xAC($19)
      jal        func_80051C70
       addiu     $6, $29, 0x10
      lw         $3, 0x10($29)
      lw         $2, 0x8($3)
      bnez       $2, .L80079414
       nop
      lw         $2, 0x0($3)
      bnez       $2, .L80079414
       nop
      jal        func_80079C3C
       nop
      addu       $18, $2, $0
      beql       $18, $0, .L80079488
       addiu     $17, $0, -0x5
      lw         $5, 0xA4($19)
      beqz       $5, .L800793AC
       nop
      lw         $2, 0x4($19)
      lw         $4, 0x0($2)
      jal        func_80079108
       nop
      j          .L800793C4
       sw        $2, 0x8($18)
  .L800793AC:
      lw         $2, 0x4($19)
      lw         $2, 0x0($2)
      lw         $4, 0x44($2)
      jal        func_80058434
       nop
      sw         $2, 0x8($18)
  .L800793C4:
      lw         $2, 0x10($29)
      lw         $5, 0x0($2)
      beqz       $5, .L800793E8
       lui       $16, %hi(D_80138B70)
      addiu      $16, $16, %lo(D_80138B70)
      addu       $4, $16, $0
      jal        func_80052310
       addiu     $6, $0, 0x100
      sb         $0, 0xFF($16)
  .L800793E8:
      lw         $4, 0xAC($19)
      jal        func_80051CF4
       addu      $5, $18, $0
      addu       $17, $2, $0
      lui        $2, %hi(D_80138B70)
      bgez       $17, .L80079414
       sb        $0, %lo(D_80138B70)($2)
  .L80079404:
      jal        func_80052540
       addu      $4, $18, $0
      j          .L80079488
       nop
  .L80079414:
      jal        func_80079C3C
       nop
      beqz       $2, .L80079484
       sw        $2, 0x10($29)
      lw         $5, 0x0($2)
      beqz       $5, .L80079448
       sw        $22, 0x8($2)
      lui        $16, %hi(D_80138B70)
      addiu      $16, $16, %lo(D_80138B70)
      addu       $4, $16, $0
      jal        func_80052310
       addiu     $6, $0, 0x100
      sb         $0, 0xFF($16)
  .L80079448:
      lw         $4, 0xAC($19)
      lw         $5, 0x10($29)
      jal        func_80051CF4
       nop
      addu       $17, $2, $0
      lui        $2, %hi(D_80138B70)
      bgez       $17, .L8007947C
       sb        $0, %lo(D_80138B70)($2)
      lw         $4, 0x10($29)
      jal        func_80052540
       nop
      j          .L80079488
       nop
  .L8007947C:
      j          .L80079488
       addiu     $17, $0, 0x1
  .L80079484:
      addiu      $17, $0, -0x5
  .L80079488:
      jal        func_80052540
       addu      $4, $21, $0
      addu       $2, $17, $0
      lw         $31, 0x34($29)
      lw         $22, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800791D4

.globl func_800794BC
.ent func_800794BC
func_800794BC:
      beqz       $4, .L800794D0
       nop
      lw         $2, 0xAC($4)
      bnez       $2, .L800794D8
       nop
  .L800794D0:
      jr         $31
       addu      $2, $0, $0
  .L800794D8:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800794BC

.globl func_800794E0
.ent func_800794E0
func_800794E0:
      beqz       $4, .L800794F4
       nop
      lw         $2, 0xAC($4)
      bnez       $2, .L800794FC
       nop
  .L800794F4:
      jr         $31
       addu      $2, $0, $0
  .L800794FC:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800794E0

.globl func_80079504
.ent func_80079504
func_80079504:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $31, 0x20($29)
      bnez       $17, .L80079524
       sw        $16, 0x18($29)
      j          .L80079608
       addiu     $2, $0, -0x4
  .L80079524:
      lw         $4, 0xAC($17)
      beqz       $4, .L8007957C
       addiu     $5, $0, 0x2
      jal        func_80051C70
       addiu     $6, $29, 0x10
      addu       $3, $2, $0
      addiu      $16, $0, 0x1
      bne        $3, $16, .L80079608
       addu      $5, $0, $0
      lw         $4, 0xAC($17)
      jal        func_80051C70
       addiu     $6, $29, 0x14
      addu       $3, $2, $0
      bne        $3, $16, .L80079608
       nop
      lw         $3, 0x14($29)
      lw         $2, 0x8($3)
      bnez       $2, .L80079584
       nop
      lw         $2, 0x0($3)
      bnez       $2, .L80079584
       nop
  .L8007957C:
      j          .L80079608
       addu      $2, $0, $0
  .L80079584:
      lw         $2, 0x10($29)
      lw         $3, 0x14($29)
      lw         $4, 0x4($2)
      lw         $5, 0x4($3)
      jal        func_800175C0
       nop
      beqz       $2, .L800795C0
       addu      $5, $0, $0
      lw         $4, 0xAC($17)
      jal        func_80051C70
       addiu     $6, $29, 0x14
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80079608
       addu      $2, $3, $0
  .L800795C0:
      lw         $2, 0x14($29)
      lbu        $16, 0xD($2)
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800795EC
       addu      $5, $0, $0
      lw         $4, 0xAC($17)
      jal        func_80051C70
       addiu     $6, $29, 0x14
      addu       $3, $2, $0
      bne        $3, $16, .L80079608
       nop
  .L800795EC:
      lw         $2, 0x14($29)
      addu       $4, $17, $0
      lw         $5, 0x4($2)
      lw         $6, 0x0($2)
      jal        func_800800A4
       addiu     $7, $0, 0x40
      addiu      $2, $0, 0x1
  .L80079608:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80079504

.globl func_8007961C
.ent func_8007961C
func_8007961C:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $31, 0x20($29)
      bnez       $17, .L8007963C
       sw        $16, 0x18($29)
      j          .L8007973C
       addiu     $2, $0, -0x4
  .L8007963C:
      lw         $4, 0xAC($17)
      beqz       $4, .L8007967C
       addiu     $5, $0, 0x2
      jal        func_80051C70
       addiu     $6, $29, 0x10
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8007973C
       addu      $2, $3, $0
      lw         $3, 0x10($29)
      lw         $2, 0x0($3)
      bnez       $2, .L80079684
       nop
      lw         $2, 0x8($3)
      bnez       $2, .L80079684
       nop
  .L8007967C:
      j          .L8007973C
       addu      $2, $0, $0
  .L80079684:
      lw         $4, 0xAC($17)
      addiu      $5, $0, 0x1
      jal        func_80051C70
       addiu     $6, $29, 0x14
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8007973C
       addu      $2, $3, $0
      lw         $2, 0x10($29)
      lw         $4, 0x4($2)
      beqz       $4, .L800796D4
       nop
      lw         $2, 0x14($29)
      lw         $5, 0x4($2)
      beqz       $5, .L800796D4
       nop
      jal        func_800175C0
       nop
      beqz       $2, .L800796F4
       nop
  .L800796D4:
      lw         $4, 0xAC($17)
      addiu      $5, $0, 0x1
      jal        func_80051C70
       addiu     $6, $29, 0x14
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8007973C
       addu      $2, $3, $0
  .L800796F4:
      lw         $2, 0x14($29)
      lbu        $16, 0xC($2)
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80079720
       addu      $5, $2, $0
      lw         $4, 0xAC($17)
      jal        func_80051C70
       addiu     $6, $29, 0x14
      addu       $3, $2, $0
      bne        $3, $16, .L8007973C
       nop
  .L80079720:
      lw         $2, 0x14($29)
      addu       $4, $17, $0
      lw         $5, 0x4($2)
      lw         $6, 0x0($2)
      jal        func_800800A4
       addiu     $7, $0, 0x20
      addiu      $2, $0, 0x1
  .L8007973C:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8007961C

.globl func_80079750
.ent func_80079750
func_80079750:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $31, 0x20($29)
      sw         $17, 0x14($29)
      beqz       $4, .L8007978C
       sw        $16, 0x10($29)
      lw         $4, 0x4($4)
      beqz       $4, .L800797DC
       addiu     $2, $0, -0x1
      lw         $4, 0x0($4)
      bnez       $4, .L80079794
       nop
  .L8007978C:
      j          .L800797DC
       addiu     $2, $0, -0x1
  .L80079794:
      lw         $16, 0xC0($4)
      beqz       $16, .L800797D8
       addiu     $17, $0, 0x1
  .L800797A0:
      lw         $2, 0xC($16)
      beqz       $2, .L800797CC
       nop
      lw         $2, 0x20($2)
      beqz       $2, .L800797CC
       addu      $5, $18, $0
      lw         $4, 0x8($16)
      jalr       $2
       addu      $6, $19, $0
      beq        $2, $17, .L800797DC
       addiu     $2, $0, 0x1
  .L800797CC:
      lw         $16, 0x10($16)
      bnez       $16, .L800797A0
       nop
  .L800797D8:
      addu       $2, $0, $0
  .L800797DC:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80079750

.globl func_800797F8
.ent func_800797F8
func_800797F8:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $31, 0x1C($29)
      beqz       $4, .L80079830
       sw        $16, 0x10($29)
      lw         $4, 0x4($4)
      beqz       $4, .L80079878
       addiu     $2, $0, -0x1
      lw         $4, 0x0($4)
      bnez       $4, .L80079838
       nop
  .L80079830:
      j          .L80079878
       addiu     $2, $0, -0x1
  .L80079838:
      lw         $16, 0xC0($4)
      beqz       $16, .L80079878
       addiu     $2, $0, 0x1
  .L80079844:
      lw         $3, 0xC($16)
      beqz       $3, .L8007986C
       nop
      lw         $2, 0x20($3)
      beqz       $2, .L8007986C
       addu      $5, $17, $0
      lw         $2, 0x24($3)
      lw         $4, 0x8($16)
      jalr       $2
       addu      $6, $18, $0
  .L8007986C:
      lw         $16, 0x10($16)
      bnez       $16, .L80079844
       addiu     $2, $0, 0x1
  .L80079878:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800797F8

.globl func_80079890
.ent func_80079890
func_80079890:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80080700
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80079890

.globl func_800798AC
.ent func_800798AC
func_800798AC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80080708
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800798AC

.globl func_800798C8
.ent func_800798C8
func_800798C8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80080710
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800798C8

.globl func_800798E4
.ent func_800798E4
func_800798E4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80080718
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800798E4

.globl func_80079900
.ent func_80079900
func_80079900:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80080720
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80079900

.globl func_8007991C
.ent func_8007991C
func_8007991C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80080728
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8007991C

.globl func_80079938
.ent func_80079938
func_80079938:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80080730
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80079938

.globl func_80079954
.ent func_80079954
func_80079954:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80080738
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80079954

.globl func_80079970
.ent func_80079970
func_80079970:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80080740
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80079970

.globl func_8007998C
.ent func_8007998C
func_8007998C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80080748
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8007998C

.globl func_800799A8
.ent func_800799A8
func_800799A8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80080750
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800799A8

.globl func_800799C4
.ent func_800799C4
func_800799C4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80080758
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800799C4

.globl func_800799E0
.ent func_800799E0
func_800799E0:
      sw         $0, 0xAC4($18)
      sw         $0, 0xAC0($17)
      addiu      $4, $19, 0xAC8
  .L800799EC:
      addiu      $5, $17, 0xAC0
      jal        func_80019A7C
       addiu     $6, $18, 0xAC4
      lw         $2, 0xAC0($17)
      bgtz       $2, .L80079A10
.end func_800799E0
