.include "macro.inc"

.set noat
.set noreorder
.set gp=64

.section .text, "ax"

.globl func_802016A0
.ent func_802016A0
func_802016A0:
      addi       $29, $29, -0x4
      sw         $27, 0x0($29)
      lw         $2, 0x4($4)
      sw         $2, -0x4($29)
      sll        $2, $2, 24
      lbu        $27, -0x2($29)
      sll        $27, $27, 16
      or         $2, $2, $27
      lbu        $27, -0x3($29)
      sll        $27, $27, 8
      or         $2, $2, $27
      lbu        $27, -0x4($29)
      or         $2, $2, $27
      lw         $27, 0x0($29)
      addi       $29, $29, 0x4
      jr         $31
       nop
.end func_802016A0

.globl func_802016E4
.ent func_802016E4
func_802016E4:
      addi       $29, $29, -0x4
      sw         $16, 0x0($29)
      addi       $29, $29, -0x4
      sw         $17, 0x0($29)
      addi       $29, $29, -0x4
      sw         $18, 0x0($29)
      addi       $29, $29, -0x4
      sw         $19, 0x0($29)
      addi       $29, $29, -0x4
      sw         $20, 0x0($29)
      addi       $29, $29, -0x4
      sw         $21, 0x0($29)
      addi       $29, $29, -0x4
      sw         $22, 0x0($29)
      addi       $29, $29, -0x4
      sw         $23, 0x0($29)
      addi       $29, $29, -0x4
      sw         $2, 0x0($29)
      addi       $29, $29, -0x4
      sw         $3, 0x0($29)
      addi       $29, $29, -0x4
      sw         $26, 0x0($29)
      addi       $29, $29, -0x4
      sw         $27, 0x0($29)
      addu       $2, $4, $0
      addu       $3, $5, $0
      lui        $26, (0x80201918 >> 16)
      ori        $26, $26, (0x80201918 & 0xFFFF)
      addiu      $7, $0, 0x1010
      addiu      $4, $0, 0x0
  .L8020175C:
      sb         $4, 0x0($26)
      addi       $26, $26, 0x1
      addi       $7, $7, -0x1
      bnez       $7, .L8020175C
       nop
      lw         $4, 0x8($2)
      addi       $2, $2, 0xC
      sw         $4, -0x4($29)
      sll        $4, $4, 24
      lbu        $27, -0x2($29)
      sll        $27, $27, 16
      or         $4, $4, $27
      lbu        $27, -0x3($29)
      sll        $27, $27, 8
      or         $4, $4, $27
      lbu        $27, -0x4($29)
      or         $4, $4, $27
      addi       $4, $4, 0x1
      xor        $5, $5, $5
      xor        $7, $7, $7
      addiu      $26, $0, 0xFEE
  .L802017B0:
      srl        $7, $7, 1
      andi       $27, $7, 0xFF00
      bnez       $27, .L802017E0
       nop
      lb         $22, 0x0($2)
      andi       $7, $7, 0xFF00
      andi       $22, $22, 0xFF
      or         $7, $7, $22
      addi       $4, $4, -0x1
      beqz       $4, .L802018B0
       addi      $2, $2, 0x1
      ori        $7, $7, 0xFF00
  .L802017E0:
      andi       $27, $7, 0x1
      beqz       $27, .L80201820
       nop
      lb         $20, 0x0($2)
      addi       $4, $4, -0x1
      beqz       $4, .L802018B0
       addi      $2, $2, 0x1
      lui        $27, (0x80201918 >> 16)
      ori        $27, $27, (0x80201918 & 0xFFFF)
      add        $27, $27, $26
      sb         $20, 0x0($27)
      addi       $26, $26, 0x1
      andi       $26, $26, 0xFFF
      sb         $20, 0x0($3)
      j          .L802017B0
       addi      $3, $3, 0x1
  .L80201820:
      lb         $18, 0x0($2)
      andi       $5, $5, 0xFF00
      andi       $18, $18, 0xFF
      or         $5, $5, $18
      addi       $4, $4, -0x1
      beqz       $4, .L802018B0
       addi      $2, $2, 0x1
      lb         $20, 0x0($2)
      addi       $4, $4, -0x1
      beqz       $4, .L802018B0
       addi      $2, $2, 0x1
      addi       $27, $20, 0x0
      srl        $27, $27, 4
      sll        $27, $27, 8
      andi       $5, $5, 0xFF
      or         $5, $5, $27
      andi       $20, $20, 0xF
      addi       $20, $20, 0x3
  .L80201868:
      andi       $5, $5, 0xFFF
      lui        $27, (0x80201918 >> 16)
      ori        $27, $27, (0x80201918 & 0xFFFF)
      add        $27, $27, $5
      lb         $21, 0x0($27)
      lui        $27, (0x80201918 >> 16)
      ori        $27, $27, (0x80201918 & 0xFFFF)
      add        $27, $27, $26
      sb         $21, 0x0($27)
      addi       $26, $26, 0x1
      andi       $26, $26, 0xFFF
      sb         $21, 0x0($3)
      addi       $3, $3, 0x1
      addi       $20, $20, -0x1
      bnez       $20, .L80201868
       addi      $5, $5, 0x1
      j          .L802017B0
       nop
  .L802018B0:
      lw         $27, 0x0($29)
      addi       $29, $29, 0x4
      lw         $26, 0x0($29)
      addi       $29, $29, 0x4
      lw         $3, 0x0($29)
      addi       $29, $29, 0x4
      lw         $2, 0x0($29)
      addi       $29, $29, 0x4
      lw         $23, 0x0($29)
      addi       $29, $29, 0x4
      lw         $22, 0x0($29)
      addi       $29, $29, 0x4
      lw         $21, 0x0($29)
      addi       $29, $29, 0x4
      lw         $20, 0x0($29)
      addi       $29, $29, 0x4
      lw         $19, 0x0($29)
      addi       $29, $29, 0x4
      lw         $18, 0x0($29)
      addi       $29, $29, 0x4
      lw         $17, 0x0($29)
      addi       $29, $29, 0x4
      lw         $16, 0x0($29)
      addi       $29, $29, 0x4
      jr         $31
       nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
      nop
.end func_802016E4
