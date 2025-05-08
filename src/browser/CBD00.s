.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

.globl func_800CC100
.ent func_800CC100
func_800CC100:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800D2814
       addu      $4, $5, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CC100

.globl func_800CC11C
.ent func_800CC11C
func_800CC11C:
      lui        $3, %hi(D_800FAEC0)
      lw         $2, %lo(D_800FAEC0)($3)
      slt        $2, $4, $2
      bnez       $2, .L800CC160
       addu      $5, $0, $0
      addiu      $3, $3, %lo(D_800FAEC0)
  .L800CC134:
      lw         $2, 0x0($3)
      bne        $2, $4, .L800CC14C
       slt       $2, $4, $2
      lw         $2, 0x4($3)
      jr         $31
       nop
  .L800CC14C:
      bnez       $2, .L800CC160
       addiu     $5, $5, 0x1
      sltiu      $2, $5, 0x16
      bnez       $2, .L800CC134
       addiu     $3, $3, 0x8
  .L800CC160:
      jr         $31
       addu      $2, $0, $0
.end func_800CC11C

.globl func_800CC168
.ent func_800CC168
func_800CC168:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addiu      $16, $0, 0x16D
      andi       $2, $4, 0x3
      bnez       $2, .L800CC1DC
       sw        $31, 0x14($29)
      lui        $2, (0x51EB851F >> 16)
      ori        $2, $2, (0x51EB851F & 0xFFFF)
      mult       $4, $2
      sra        $5, $4, 31
      mfhi       $6
      sra        $3, $6, 5
      subu       $3, $3, $5
      sll        $2, $3, 1
      addu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $3
      sll        $2, $2, 2
      bnel       $4, $2, .L800CC1DC
       addiu     $16, $0, 0x16E
      sra        $3, $6, 7
      subu       $3, $3, $5
      sll        $2, $3, 1
      addu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $3
      sll        $2, $2, 4
      beql       $4, $2, .L800CC1DC
       addiu     $16, $0, 0x16E
  .L800CC1DC:
      jal        func_800CC11C
       nop
      sll        $3, $16, 1
      addu       $3, $3, $16
      sll        $4, $3, 4
      subu       $4, $4, $3
      sll        $3, $4, 4
      subu       $3, $3, $4
      sll        $3, $3, 7
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $3, $2
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CC168

.globl func_800CC214
.ent func_800CC214
func_800CC214:
      addiu      $29, $29, -0xB0
      sw         $18, 0xA0($29)
      addu       $18, $4, $0
      sw         $16, 0x98($29)
      addu       $16, $5, $0
      sw         $19, 0xA4($29)
      addu       $19, $6, $0
      sw         $31, 0xA8($29)
      bnez       $18, .L800CC268
       sw        $17, 0x9C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FAF70)
      addiu      $4, $4, %lo(D_800FAF70)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FAFE0)
      addiu      $6, $6, %lo(D_800FAFE0)
      jal        func_80002E80
       addiu     $7, $0, 0x114
  .L800CC268:
      bnez       $19, .L800CC29C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FAFF0)
      addiu      $4, $4, %lo(D_800FAFF0)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FAFE0)
      addiu      $6, $6, %lo(D_800FAFE0)
      jal        func_80002E80
       addiu     $7, $0, 0x115
  .L800CC29C:
      beqz       $16, .L800CC2F4
       addiu     $6, $16, 0x1
  .L800CC2A4:
      lbu        $4, 0x0($18)
      jal        func_800126C0
       nop
      beqz       $2, .L800CC2C4
       nop
      addiu      $16, $16, -0x1
      bnez       $16, .L800CC2A4
       addiu     $18, $18, 0x1
  .L800CC2C4:
      beqz       $16, .L800CC2F4
       addiu     $6, $16, 0x1
      addu       $2, $16, $18
  .L800CC2D0:
      lbu        $4, -0x1($2)
      jal        func_800126C0
       nop
      beqz       $2, .L800CC2F4
       addiu     $6, $16, 0x1
      addiu      $16, $16, -0x1
      bnez       $16, .L800CC2D0
       addu      $2, $16, $18
      addiu      $6, $16, 0x1
  .L800CC2F4:
      sltiu      $2, $6, 0x81
      bnez       $2, .L800CC310
       addiu     $17, $29, 0x18
      addu       $4, $0, $0
      jal        func_800D27B4
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
  .L800CC310:
      beqz       $17, .L800CC368
       addu      $4, $17, $0
      addu       $5, $18, $0
      jal        func_80052310
       addu      $6, $16, $0
      addu       $2, $17, $16
      sb         $0, 0x0($2)
      jal        func_800523C0
       addu      $4, $17, $0
      addu       $16, $2, $0
      beqz       $16, .L800CC368
       addu      $4, $19, $0
      jal        func_800CD370
       addu      $5, $16, $0
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      beq        $18, $2, .L800CC370
       addiu     $2, $29, 0x18
      jal        func_800D2814
       addu      $4, $16, $0
      j          .L800CC370
       addiu     $2, $29, 0x18
  .L800CC368:
      addiu      $18, $0, -0x5
      addiu      $2, $29, 0x18
  .L800CC370:
      beq        $17, $2, .L800CC384
       addu      $2, $18, $0
      jal        func_800D2814
       addu      $4, $17, $0
      addu       $2, $18, $0
  .L800CC384:
      lw         $31, 0xA8($29)
      lw         $19, 0xA4($29)
      lw         $18, 0xA0($29)
      lw         $17, 0x9C($29)
      lw         $16, 0x98($29)
      jr         $31
       addiu     $29, $29, 0xB0
.end func_800CC214

.globl func_800CC3A0
.ent func_800CC3A0
func_800CC3A0:
      jr         $31
       addu      $2, $4, $0
.end func_800CC3A0

.globl func_800CC3A8
.ent func_800CC3A8
func_800CC3A8:
      jr         $31
       addu      $2, $4, $0
.end func_800CC3A8

.globl func_800CC3B0
.ent func_800CC3B0
func_800CC3B0:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $20, 0x28($29)
      addu       $20, $6, $0
      sw         $19, 0x24($29)
      addiu      $19, $0, 0x1
      sw         $31, 0x2C($29)
      bnez       $17, .L800CC40C
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB040)
      addiu      $4, $4, %lo(D_800FB040)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB08C)
      addiu      $6, $6, %lo(D_800FB08C)
      jal        func_80002E80
       addiu     $7, $0, 0x17F
  .L800CC40C:
      beqz       $18, .L800CC42C
       addiu     $16, $0, 0x1
      lbu        $2, 0x0($18)
      beqz       $2, .L800CC42C
       nop
      jal        func_80017780
       addu      $4, $18, $0
      addiu      $16, $2, 0x1
  .L800CC42C:
      lw         $2, 0x0($17)
      beql       $2, $0, .L800CC488
       sw        $16, 0x4($17)
      lw         $3, 0x4($17)
      sltu       $2, $3, $16
      beqz       $2, .L800CC458
       nop
      bnez       $20, .L800CC458
       addu      $16, $3, $0
      j          .L800CC488
       addiu     $19, $0, -0x9
  .L800CC458:
      beqz       $18, .L800CC47C
       nop
      beqz       $16, .L800CC47C
       addu      $5, $18, $0
      lw         $4, 0x0($17)
      jal        func_80013F00
       addu      $6, $16, $0
      j          .L800CC488
       sw        $16, 0x4($17)
  .L800CC47C:
      lw         $2, 0x0($17)
      sb         $0, 0x0($2)
      sw         $16, 0x4($17)
  .L800CC488:
      addu       $2, $19, $0
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800CC3B0

.globl func_800CC4AC
.ent func_800CC4AC
func_800CC4AC:
      addiu      $29, $29, -0x40
      lui        $2, %hi(D_800FAC84)
      sw         $23, 0x34($29)
      lbu        $23, %lo(D_800FAC84)($2)
      sw         $20, 0x28($29)
      addu       $20, $4, $0
      sw         $21, 0x2C($29)
      addu       $21, $5, $0
      sw         $31, 0x38($29)
      sw         $22, 0x30($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      bnez       $20, .L800CC514
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB0A0)
      addiu      $4, $4, %lo(D_800FB0A0)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB0EC)
      addiu      $6, $6, %lo(D_800FB0EC)
      jal        func_80002E80
       addiu     $7, $0, 0x1AC
  .L800CC514:
      bnez       $21, .L800CC548
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB104)
      addiu      $4, $4, %lo(D_800FB104)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB0EC)
      addiu      $6, $6, %lo(D_800FB0EC)
      jal        func_80002E80
       addiu     $7, $0, 0x1AD
  .L800CC548:
      lbu        $18, 0x0($20)
      beqz       $18, .L800CC60C
       nop
      andi       $22, $23, 0xFF
  .L800CC558:
      lbu        $19, 0x0($21)
      andi       $17, $19, 0xFF
      beqz       $17, .L800CC60C
       andi      $16, $18, 0xFF
      jal        func_800CD8C0
       addu      $4, $16, $0
      beqz       $2, .L800CC584
       nop
      jal        func_80019100
       addu      $4, $16, $0
      addu       $18, $2, $0
  .L800CC584:
      jal        func_800CD8C0
       addu      $4, $17, $0
      beqz       $2, .L800CC5A4
       andi      $4, $18, 0xFF
      jal        func_80019100
       addu      $4, $17, $0
      addu       $19, $2, $0
      andi       $4, $18, 0xFF
  .L800CC5A4:
      andi       $2, $19, 0xFF
      bne        $4, $2, .L800CC5BC
       nop
      addiu      $20, $20, 0x1
      j          .L800CC600
       addiu     $21, $21, 0x1
  .L800CC5BC:
      bne        $4, $22, .L800CC5E0
       nop
      lbu        $3, 0x1($20)
      beql       $3, $0, .L800CC600
       addiu     $21, $21, 0x1
      beql       $2, $3, .L800CC600
       addiu     $20, $20, 0x1
      j          .L800CC600
       addiu     $21, $21, 0x1
  .L800CC5E0:
      bne        $2, $22, .L800CC60C
       nop
      lbu        $3, 0x1($21)
      beql       $3, $0, .L800CC600
       addiu     $20, $20, 0x1
      beql       $4, $3, .L800CC600
       addiu     $21, $21, 0x1
      addiu      $20, $20, 0x1
  .L800CC600:
      lbu        $18, 0x0($20)
      bnez       $18, .L800CC558
       nop
  .L800CC60C:
      lbu        $2, 0x0($20)
      bne        $2, $23, .L800CC624
       nop
      lbu        $2, 0x1($20)
      beql       $2, $0, .L800CC624
       addiu     $20, $20, 0x1
  .L800CC624:
      lbu        $2, 0x0($21)
      bne        $2, $23, .L800CC63C
       nop
      lbu        $2, 0x1($21)
      beql       $2, $0, .L800CC63C
       addiu     $21, $21, 0x1
  .L800CC63C:
      lbu        $2, 0x0($20)
      bnez       $2, .L800CC650
       addu      $3, $0, $0
      lbu        $2, 0x0($21)
      sltiu      $3, $2, 0x1
  .L800CC650:
      lw         $31, 0x38($29)
      lw         $23, 0x34($29)
      lw         $22, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x40
.end func_800CC4AC

.globl func_800CC680
.ent func_800CC680
func_800CC680:
      addiu      $29, $29, -0x38
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $19, 0x24($29)
      addu       $19, $0, $0
      sw         $20, 0x28($29)
      addu       $20, $7, $0
      sw         $16, 0x18($29)
      addu       $16, $6, $0
      sw         $31, 0x30($29)
      bnez       $17, .L800CC6E4
       sw        $21, 0x2C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB150)
      addiu      $4, $4, %lo(D_800FB150)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB1A0)
      addiu      $6, $6, %lo(D_800FB1A0)
      jal        func_80002E80
       addiu     $7, $0, 0x1E2
  .L800CC6E4:
      bnez       $20, .L800CC71C
       addu      $4, $17, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FAFF0)
      addiu      $4, $4, %lo(D_800FAFF0)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB1A0)
      addiu      $6, $6, %lo(D_800FB1A0)
      jal        func_80002E80
       addiu     $7, $0, 0x1E3
      addu       $4, $17, $0
  .L800CC71C:
      addu       $17, $4, $18
      sltu       $2, $4, $17
      beqz       $2, .L800CC784
       andi      $18, $16, 0xFF
      addiu      $21, $0, 0x1
  .L800CC730:
      beqz       $2, .L800CC754
       addu      $16, $4, $0
  .L800CC738:
      lbu        $2, 0x0($16)
      beq        $2, $18, .L800CC758
       subu      $5, $16, $4
      addiu      $16, $16, 0x1
      sltu       $2, $16, $17
      bnez       $2, .L800CC738
       nop
  .L800CC754:
      subu       $5, $16, $4
  .L800CC758:
      jal        func_800CC214
       addu      $6, $20, $0
      addu       $19, $2, $0
      bne        $19, $21, .L800CC788
       addu      $2, $19, $0
      beq        $16, $17, .L800CC788
       nop
      addiu      $4, $16, 0x1
      sltu       $2, $4, $17
      bnez       $2, .L800CC730
       nop
  .L800CC784:
      addu       $2, $19, $0
  .L800CC788:
      lw         $31, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800CC680

.globl func_800CC7AC
.ent func_800CC7AC
func_800CC7AC:
      addiu      $29, $29, -0x40
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $30, 0x38($29)
      addu       $30, $5, $0
      sw         $31, 0x3C($29)
      sw         $23, 0x34($29)
      sw         $22, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      bnez       $19, .L800CC814
       sw        $6, 0x48($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FAFF0)
      addiu      $4, $4, %lo(D_800FAFF0)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB1B4)
      addiu      $6, $6, %lo(D_800FB1B4)
      jal        func_80002E80
       addiu     $7, $0, 0x20E
  .L800CC814:
      bnez       $30, .L800CC848
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB1C8)
      addiu      $4, $4, %lo(D_800FB1C8)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB1B4)
      addiu      $6, $6, %lo(D_800FB1B4)
      jal        func_80002E80
       addiu     $7, $0, 0x20F
  .L800CC848:
      lw         $3, 0x48($29)
      bnez       $3, .L800CC880
       addu      $17, $0, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB218)
      addiu      $4, $4, %lo(D_800FB218)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB1B4)
      addiu      $6, $6, %lo(D_800FB1B4)
      jal        func_80002E80
       addiu     $7, $0, 0x210
  .L800CC880:
      addu       $18, $17, $0
      jal        func_80017780
       addu      $4, $30, $0
      addu       $20, $2, $0
      lui        $23, %hi(D_800FB26C)
      lui        $22, %hi(D_800FAFC0)
      lui        $21, %hi(D_800FB1B4)
  .L800CC89C:
      jal        func_800CD26C
       addu      $4, $19, $0
      sltu       $2, $17, $2
      beqz       $2, .L800CC908
       addu      $4, $19, $0
      jal        func_800CD394
       addu      $5, $17, $0
      addu       $16, $2, $0
      bnez       $16, .L800CC8E4
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      addiu      $4, $23, %lo(D_800FB26C)
      addiu      $5, $22, %lo(D_800FAFC0)
      addiu      $6, $21, %lo(D_800FB1B4)
      jal        func_80002E80
       addiu     $7, $0, 0x213
  .L800CC8E4:
      jal        func_80017780
       addu      $4, $16, $0
      beql       $18, $0, .L800CC900
       addu      $18, $2, $0
      addu       $2, $20, $2
      addu       $2, $18, $2
      addu       $18, $2, $0
  .L800CC900:
      j          .L800CC89C
       addiu     $17, $17, 0x1
  .L800CC908:
      beqz       $18, .L800CC9B0
       lui       $4, %hi(D_800FAC80)
      addu       $4, $0, $0
      addu       $5, $4, $0
      jal        func_800D27B4
       addiu     $6, $18, 0x1
      addu       $18, $2, $0
      beqz       $18, .L800CC9BC
       addu      $17, $0, $0
      sb         $0, 0x0($18)
      lui        $22, %hi(D_800FB26C)
      lui        $21, %hi(D_800FAFC0)
      lui        $20, %hi(D_800FB1B4)
  .L800CC93C:
      jal        func_800CD26C
       addu      $4, $19, $0
      sltu       $2, $17, $2
      beqz       $2, .L800CC9BC
       nop
      addu       $4, $19, $0
      jal        func_800CD394
       addu      $5, $17, $0
      addu       $16, $2, $0
      bnez       $16, .L800CC988
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      addiu      $4, $22, %lo(D_800FB26C)
      addiu      $5, $21, %lo(D_800FAFC0)
      addiu      $6, $20, %lo(D_800FB1B4)
      jal        func_80002E80
       addiu     $7, $0, 0x21B
  .L800CC988:
      lbu        $2, 0x0($18)
      beqz       $2, .L800CC99C
       addu      $4, $18, $0
      jal        func_80017500
       addu      $5, $30, $0
  .L800CC99C:
      addu       $4, $18, $0
      jal        func_80017500
       addu      $5, $16, $0
      j          .L800CC93C
       addiu     $17, $17, 0x1
  .L800CC9B0:
      jal        func_800523C0
       addiu     $4, $4, %lo(D_800FAC80)
      addu       $18, $2, $0
  .L800CC9BC:
      lw         $3, 0x48($29)
      addiu      $2, $0, 0x1
      bnez       $18, .L800CC9D0
       sw        $18, 0x0($3)
      addiu      $2, $0, -0x5
  .L800CC9D0:
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
.end func_800CC7AC

.globl func_800CCA00
.ent func_800CCA00
func_800CCA00:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      lui        $2, %hi(D_800FADD8)
      sw         $18, 0x18($29)
      addiu      $18, $2, %lo(D_800FADD8)
      sw         $31, 0x20($29)
      jal        func_80017780
       addu      $4, $18, $0
      addiu      $6, $2, 0xA
      sltu       $16, $16, $6
      bnez       $16, .L800CCA50
       addu      $4, $0, $0
      bnez       $17, .L800CCA64
       addu      $4, $17, $0
      addu       $4, $0, $0
  .L800CCA50:
      jal        func_800D27B4
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      beqz       $17, .L800CCA70
       addu      $4, $17, $0
  .L800CCA64:
      addu       $5, $18, $0
      jal        func_80016580
       addu      $6, $19, $0
  .L800CCA70:
      addu       $2, $17, $0
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CCA00

.globl func_800CCA90
.ent func_800CCA90
func_800CCA90:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      bnez       $16, .L800CCAD8
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB2BC)
      addiu      $4, $4, %lo(D_800FB2BC)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB308)
      addiu      $6, $6, %lo(D_800FB308)
      jal        func_80002E80
       addiu     $7, $0, 0x260
  .L800CCAD8:
      bnez       $17, .L800CCB0C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB318)
      addiu      $4, $4, %lo(D_800FB318)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB308)
      addiu      $6, $6, %lo(D_800FB308)
      jal        func_80002E80
       addiu     $7, $0, 0x261
  .L800CCB0C:
      lw         $4, 0x0($16)
      lw         $3, 0x0($17)
      slt        $2, $4, $3
      bnez       $2, .L800CCB64
       addiu     $2, $0, -0x1
      slt        $2, $3, $4
      bnez       $2, .L800CCB64
       addiu     $2, $0, 0x1
      lw         $4, 0x4($16)
      lw         $3, 0x4($17)
      sltu       $2, $4, $3
      bnez       $2, .L800CCB64
       addiu     $2, $0, -0x1
      sltu       $2, $3, $4
      bnez       $2, .L800CCB64
       addiu     $2, $0, 0x1
      lw         $4, 0x8($16)
      lw         $5, 0x8($17)
      sltu       $2, $4, $5
      bnez       $2, .L800CCB64
       addiu     $2, $0, -0x1
      sltu       $2, $5, $4
  .L800CCB64:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CCA90

.globl func_800CCB78
.ent func_800CCB78
func_800CCB78:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L800CCBB8
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB364)
      lui        $5, %hi(D_800FAFC0)
      lui        $6, %hi(D_800FB3B0)
      addiu      $4, $4, %lo(D_800FB364)
      addiu      $5, $5, %lo(D_800FAFC0)
      addiu      $6, $6, %lo(D_800FB3B0)
      jal        func_80002E80
       addiu     $7, $0, 0x28D
  .L800CCBB8:
      lui        $3, (0x7FFFFFFF >> 16)
      ori        $3, $3, (0x7FFFFFFF & 0xFFFF)
      lui        $2, (0x80000000 >> 16)
      sw         $2, 0x0($16)
      sw         $3, 0x4($16)
      sw         $3, 0x8($16)
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CCB78

.globl func_800CCBE0
.ent func_800CCBE0
func_800CCBE0:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L800CCC20
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB364)
      lui        $5, %hi(D_800FAFC0)
      lui        $6, %hi(D_800FB3C0)
      addiu      $4, $4, %lo(D_800FB364)
      addiu      $5, $5, %lo(D_800FAFC0)
      addiu      $6, $6, %lo(D_800FB3C0)
      jal        func_80002E80
       addiu     $7, $0, 0x2AE
  .L800CCC20:
      lui        $2, (0x7FFFFFFF >> 16)
      ori        $2, $2, (0x7FFFFFFF & 0xFFFF)
      sw         $2, 0x0($16)
      sw         $2, 0x4($16)
      sw         $2, 0x8($16)
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CCBE0

.globl func_800CCC44
.ent func_800CCC44
func_800CCC44:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      bnez       $17, .L800CCC94
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB364)
      addiu      $4, $4, %lo(D_800FB364)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB3D0)
      addiu      $6, $6, %lo(D_800FB3D0)
      jal        func_80002E80
       addiu     $7, $0, 0x2CF
  .L800CCC94:
      lui        $2, (0x1E28501 >> 16)
      ori        $2, $2, (0x1E28501 & 0xFFFF)
      sltu       $2, $2, $16
      beqz       $2, .L800CCCD4
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB3E0)
      addiu      $4, $4, %lo(D_800FB3E0)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB3D0)
      addiu      $6, $6, %lo(D_800FB3D0)
      jal        func_80002E80
       addiu     $7, $0, 0x2D0
  .L800CCCD4:
      beqz       $18, .L800CCD14
       nop
      lw         $4, 0x0($17)
      jal        func_800CC168
       nop
      lw         $4, 0x4($17)
      subu       $3, $2, $4
      sltu       $2, $16, $3
      bnez       $2, .L800CCD44
       addu      $2, $4, $16
      lw         $2, 0x0($17)
      subu       $3, $16, $3
      sw         $3, 0x4($17)
      addiu      $2, $2, 0x1
      j          .L800CCD48
       sw        $2, 0x0($17)
  .L800CCD14:
      lw         $3, 0x4($17)
      sltu       $2, $16, $3
      bnez       $2, .L800CCD3C
       nop
      lw         $4, 0x0($17)
      subu       $16, $16, $3
      addiu      $4, $4, -0x1
      jal        func_800CC168
       sw        $4, 0x0($17)
      sw         $2, 0x4($17)
  .L800CCD3C:
      lw         $2, 0x4($17)
      subu       $2, $2, $16
  .L800CCD44:
      sw         $2, 0x4($17)
  .L800CCD48:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CCC44

.globl func_800CCD60
.ent func_800CCD60
func_800CCD60:
      addiu      $29, $29, -0x28
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $16, 0x18($29)
      addu       $16, $6, $0
      bnez       $18, .L800CCDB0
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB434)
      addiu      $4, $4, %lo(D_800FB434)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB488)
      addiu      $6, $6, %lo(D_800FB488)
      jal        func_80002E80
       addiu     $7, $0, 0x303
  .L800CCDB0:
      bnez       $16, .L800CCDE4
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB4A0)
      addiu      $4, $4, %lo(D_800FB4A0)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB488)
      addiu      $6, $6, %lo(D_800FB488)
      jal        func_80002E80
       addiu     $7, $0, 0x304
  .L800CCDE4:
      beqz       $17, .L800CCE1C
       addu      $4, $16, $0
      lw         $3, 0x0($17)
      lw         $8, 0x4($17)
      lw         $9, 0x8($17)
      sw         $3, 0x0($16)
      sw         $8, 0x4($16)
      sw         $9, 0x8($16)
      lui        $5, (0x15180 >> 16)
      ori        $5, $5, (0x15180 & 0xFFFF)
      jal        func_800CCC44
       addiu     $6, $0, 0x1
      j          .L800CCE28
       addu      $4, $18, $0
  .L800CCE1C:
      jal        func_800CCBE0
       addu      $4, $16, $0
      addu       $4, $18, $0
  .L800CCE28:
      addu       $5, $0, $0
      lui        $6, %hi(D_800FAE20)
      addiu      $6, $6, %lo(D_800FAE20)
      jal        func_8005446C
       addu      $7, $5, $0
      bnez       $2, .L800CCE4C
       addu      $4, $16, $0
      j          .L800CCE5C
       addu      $2, $0, $0
  .L800CCE4C:
      addiu      $5, $0, 0x7
      addu       $6, $2, $0
      jal        func_8009CFA4
       addu      $7, $0, $0
  .L800CCE5C:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CCD60

.globl func_800CCE74
.ent func_800CCE74
func_800CCE74:
      addiu      $29, $29, -0x28
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $16, 0x18($29)
      addu       $16, $6, $0
      bnez       $18, .L800CCEC4
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
.end func_800CCE74

.globl func_800CCEA0
.ent func_800CCEA0
func_800CCEA0:
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB434)
      addiu      $4, $4, %lo(D_800FB434)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB4F4)
      addiu      $6, $6, %lo(D_800FB4F4)
      jal        func_80002E80
       addiu     $7, $0, 0x331
  .L800CCEC4:
      bnez       $16, .L800CCEF8
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB50C)
      addiu      $4, $4, %lo(D_800FB50C)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB4F4)
      addiu      $6, $6, %lo(D_800FB4F4)
      jal        func_80002E80
       addiu     $7, $0, 0x332
  .L800CCEF8:
      beqz       $17, .L800CCF1C
       nop
      lw         $3, 0x0($17)
      lw         $8, 0x4($17)
      lw         $9, 0x8($17)
      sw         $3, 0x0($16)
      sw         $8, 0x4($16)
      j          .L800CCF24
       sw        $9, 0x8($16)
  .L800CCF1C:
      jal        func_800CCB78
       addu      $4, $16, $0
  .L800CCF24:
      addu       $4, $18, $0
      addu       $5, $0, $0
      lui        $6, %hi(D_800FAE3C)
      addiu      $6, $6, %lo(D_800FAE3C)
      jal        func_8005446C
       addu      $7, $5, $0
      bnez       $2, .L800CCF4C
       addu      $4, $16, $0
      j          .L800CCF5C
       addu      $2, $0, $0
  .L800CCF4C:
      addiu      $5, $0, 0x7
      addu       $6, $2, $0
      jal        func_8009CFA4
       addu      $7, $0, $0
  .L800CCF5C:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CCEA0

.globl func_800CCF74
.ent func_800CCF74
func_800CCF74:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      bnez       $16, .L800CCFBC
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB434)
      addiu      $4, $4, %lo(D_800FB434)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB564)
      addiu      $6, $6, %lo(D_800FB564)
      jal        func_80002E80
       addiu     $7, $0, 0x359
  .L800CCFBC:
      bnez       $17, .L800CCFF4
       addu      $4, $16, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB26C)
      addiu      $4, $4, %lo(D_800FB26C)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB564)
      addiu      $6, $6, %lo(D_800FB564)
      jal        func_80002E80
       addiu     $7, $0, 0x35A
      addu       $4, $16, $0
  .L800CCFF4:
      addu       $5, $0, $0
      lui        $6, %hi(D_800FAE5C)
      addiu      $6, $6, %lo(D_800FAE5C)
      jal        func_8005446C
       addu      $7, $5, $0
      bnez       $2, .L800CD018
       addu      $4, $2, $0
      j          .L800CD024
       addu      $2, $0, $0
  .L800CD018:
      jal        func_8005211C
       addu      $5, $17, $0
      sltiu      $2, $2, 0x1
  .L800CD024:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CCF74

.globl func_800CD038
.ent func_800CD038
func_800CD038:
      addiu      $29, $29, -0x40
      lui        $2, %hi(D_800FAC88)
      sw         $17, 0x2C($29)
      lbu        $17, %lo(D_800FAC88)($2)
      sw         $16, 0x28($29)
      addu       $16, $4, $0
      sw         $18, 0x30($29)
      addu       $18, $5, $0
      sw         $19, 0x34($29)
      addu       $19, $0, $0
      bnez       $16, .L800CD094
       sw        $31, 0x38($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB574)
      addiu      $4, $4, %lo(D_800FB574)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB5C8)
      addiu      $6, $6, %lo(D_800FB5C8)
      jal        func_80002E80
       addiu     $7, $0, 0x37F
  .L800CD094:
      bnel       $18, $0, .L800CD0CC
       addiu     $4, $29, 0x18
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB26C)
      addiu      $4, $4, %lo(D_800FB26C)
      lui        $5, %hi(D_800FAFC0)
      addiu      $5, $5, %lo(D_800FAFC0)
      lui        $6, %hi(D_800FB5C8)
      addiu      $6, $6, %lo(D_800FB5C8)
      jal        func_80002E80
       addiu     $7, $0, 0x380
      addiu      $4, $29, 0x18
  .L800CD0CC:
      jal        func_800CD1EC
       addu      $5, $0, $0
      jal        func_80017780
       addu      $4, $16, $0
      addu       $4, $16, $0
      addu       $5, $2, $0
      addu       $6, $17, $0
      jal        func_800CC680
       addiu     $7, $29, 0x18
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800CD15C
       addu      $2, $19, $0
      jal        func_80017780
       addu      $4, $18, $0
      addu       $17, $2, $0
      addu       $16, $0, $0
  .L800CD10C:
      jal        func_800CD26C
       addiu     $4, $29, 0x18
      sltu       $2, $16, $2
      beqz       $2, .L800CD144
       addiu     $4, $29, 0x18
      jal        func_800CD394
       addu      $5, $16, $0
      addu       $4, $2, $0
      addu       $5, $18, $0
      jal        func_80052224
       addu      $6, $17, $0
      bnez       $2, .L800CD10C
       addiu     $16, $16, 0x1
      addiu      $19, $0, 0x1
  .L800CD144:
      addiu      $4, $29, 0x18
      lui        $5, %hi(func_800CC100)
      addiu      $5, $5, %lo(func_800CC100)
      jal        func_800CD234
       addu      $6, $0, $0
      addu       $2, $19, $0
  .L800CD15C:
      lw         $31, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800CD038

.globl func_800CD178
.ent func_800CD178
func_800CD178:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      addu       $5, $0, $0
      sw         $16, 0x18($29)
      lui        $16, %hi(D_800FAE4C)
      sw         $31, 0x24($29)
  .L800CD19C:
      addu       $4, $17, $0
      addiu      $6, $16, %lo(D_800FAE4C)
      jal        func_8005446C
       addiu     $7, $29, 0x10
      beqz       $2, .L800CD1D0
       addu      $4, $2, $0
      jal        func_800CD038
       addu      $5, $18, $0
      bnez       $2, .L800CD1D4
       addiu     $2, $0, 0x1
      lw         $2, 0x10($29)
      j          .L800CD19C
       addiu     $5, $2, 0x1
  .L800CD1D0:
      addu       $2, $0, $0
  .L800CD1D4:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CD178

.globl func_800CD1EC
.ent func_800CD1EC
func_800CD1EC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDA80
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD1EC

.globl func_800CD210
.ent func_800CD210
func_800CD210:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDAF0
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD210

.globl func_800CD234
.ent func_800CD234
func_800CD234:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDB4C
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD234

.globl func_800CD250
.ent func_800CD250
func_800CD250:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDBFC
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD250

.globl func_800CD26C
.ent func_800CD26C
func_800CD26C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDC70
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD26C

.globl func_800CD288
.ent func_800CD288
func_800CD288:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDC84
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD288

.globl func_800CD2A4
.ent func_800CD2A4
func_800CD2A4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDC98
       nop
      lw         $31, 0x10($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD2A4

.globl func_800CD2C4
.ent func_800CD2C4
func_800CD2C4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDCB8
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD2C4

.globl func_800CD2E8
.ent func_800CD2E8
func_800CD2E8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDD84
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD2E8

.globl func_800CD30C
.ent func_800CD30C
func_800CD30C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDDB8
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD30C

.globl func_800CD330
.ent func_800CD330
func_800CD330:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDE14
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD330

.globl func_800CD34C
.ent func_800CD34C
func_800CD34C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDEB8
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD34C

.globl func_800CD370
.ent func_800CD370
func_800CD370:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDF4C
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD370

.globl func_800CD394
.ent func_800CD394
func_800CD394:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDF80
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD394

.globl func_800CD3B0
.ent func_800CD3B0
func_800CD3B0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDFBC
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD3B0

.globl func_800CD3CC
.ent func_800CD3CC
func_800CD3CC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CDFF8
       nop
      lw         $31, 0x10($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD3CC

.globl func_800CD3EC
.ent func_800CD3EC
func_800CD3EC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE044
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD3EC

.globl func_800CD410
.ent func_800CD410
func_800CD410:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE0D4
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD410

.globl func_800CD434
.ent func_800CD434
func_800CD434:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE130
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD434

.globl func_800CD450
.ent func_800CD450
func_800CD450:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE18C
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD450

.globl func_800CD46C
.ent func_800CD46C
func_800CD46C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE200
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD46C

.globl func_800CD488
.ent func_800CD488
func_800CD488:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE214
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD488

.globl func_800CD4A4
.ent func_800CD4A4
func_800CD4A4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE228
       nop
      lw         $31, 0x10($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD4A4

.globl func_800CD4C4
.ent func_800CD4C4
func_800CD4C4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE248
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD4C4

.globl func_800CD4E8
.ent func_800CD4E8
func_800CD4E8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE314
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD4E8

.globl func_800CD50C
.ent func_800CD50C
func_800CD50C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE348
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD50C

.globl func_800CD530
.ent func_800CD530
func_800CD530:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE3A4
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD530

.globl func_800CD54C
.ent func_800CD54C
func_800CD54C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE400
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD54C

.globl func_800CD570
.ent func_800CD570
func_800CD570:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE498
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD570

.globl func_800CD594
.ent func_800CD594
func_800CD594:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE4CC
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD594

.globl func_800CD5B0
.ent func_800CD5B0
func_800CD5B0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE510
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD5B0

.globl func_800CD5CC
.ent func_800CD5CC
func_800CD5CC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE558
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD5CC

.globl func_800CD5F0
.ent func_800CD5F0
func_800CD5F0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE610
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD5F0

.globl func_800CD614
.ent func_800CD614
func_800CD614:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE6A0
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD614

.globl func_800CD638
.ent func_800CD638
func_800CD638:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE7C8
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD638

.globl func_800CD654
.ent func_800CD654
func_800CD654:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE898
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD654

.globl func_800CD670
.ent func_800CD670
func_800CD670:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE900
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD670

.globl func_800CD68C
.ent func_800CD68C
func_800CD68C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE934
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD68C

.globl func_800CD6A8
.ent func_800CD6A8
func_800CD6A8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE948
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD6A8

.globl func_800CD6C4
.ent func_800CD6C4
func_800CD6C4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CE95C
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD6C4

.globl func_800CD6E0
.ent func_800CD6E0
func_800CD6E0:
      lui        $2, %hi(D_800FB600)
      jr         $31
       addiu     $2, $2, %lo(D_800FB600)
.end func_800CD6E0

.globl func_800CD6EC
.ent func_800CD6EC
func_800CD6EC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80093280
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD6EC

.globl func_800CD710
.ent func_800CD710
func_800CD710:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80093320
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD710

.globl func_800CD72C
.ent func_800CD72C
func_800CD72C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800A28EC
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD72C

.globl func_800CD750
.ent func_800CD750
func_800CD750:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BC34
       andi      $5, $5, 0xFFFF
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD750

.globl func_800CD76C
.ent func_800CD76C
func_800CD76C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BC88
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD76C

.globl func_800CD788
.ent func_800CD788
func_800CD788:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BCDC
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD788

.globl func_800CD7A4
.ent func_800CD7A4
func_800CD7A4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BD0C
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD7A4

.globl func_800CD7C0
.ent func_800CD7C0
func_800CD7C0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BD90
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD7C0

.globl func_800CD7DC
.ent func_800CD7DC
func_800CD7DC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BE10
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD7DC

.globl func_800CD7F8
.ent func_800CD7F8
func_800CD7F8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BE90
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD7F8

.globl func_800CD814
.ent func_800CD814
func_800CD814:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BEEC
       andi      $6, $6, 0xFF
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD814

.globl func_800CD830
.ent func_800CD830
func_800CD830:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BFCC
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD830

.globl func_800CD84C
.ent func_800CD84C
func_800CD84C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BFE8
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD84C

.globl func_800CD868
.ent func_800CD868
func_800CD868:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009C004
       andi      $4, $4, 0xFFFF
      lw         $31, 0x10($29)
      andi       $2, $2, 0xFFFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD868

.globl func_800CD888
.ent func_800CD888
func_800CD888:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009C024
       andi      $4, $4, 0xFFFF
      lw         $31, 0x10($29)
      andi       $2, $2, 0xFFFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD888

.globl func_800CD8A8
.ent func_800CD8A8
func_800CD8A8:
      jal        func_80003704
       addiu     $7, $0, 0x303
      bnez       $16, .L800CD8E4
       nop
      jal        func_800148C8
       nop
.end func_800CD8A8

.globl func_800CD8C0
.ent func_800CD8C0
func_800CD8C0:
      addiu      $2, $4, -0x41
      jr         $31
       sltiu     $2, $2, 0x1A
      lui        $5, %hi(D_800FC540)
      addiu      $5, $5, %lo(D_800FC540)
      lui        $6, %hi(D_800FCA08)
      addiu      $6, $6, %lo(D_800FCA08)
      jal        func_80003704
       addiu     $7, $0, 0x304
  .L800CD8E4:
      beqz       $17, .L800CD91C
       addu      $4, $16, $0
      lw         $3, 0x0($17)
      lw         $8, 0x4($17)
      lw         $9, 0x8($17)
      sw         $3, 0x0($16)
      sw         $8, 0x4($16)
  .globl D_800CD900
D_800CD900:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x0($17)
  .L800CD91C:
      beqz       $2, .L800CD96C
       nop
      lw         $16, 0x8($17)
      lw         $2, 0xC($17)
      sltu       $2, $16, $2
      beqz       $2, .L800CD96C
       sll       $2, $16, 2
      addu       $18, $2, $5
  .L800CD93C:
      lw         $5, 0x0($18)
      beqz       $5, .L800CD958
       nop
      lw         $2, 0x0($17)
      lw         $4, 0x4($17)
      jalr       $2
       nop
  .L800CD958:
      lw         $2, 0xC($17)
      addiu      $16, $16, 0x1
      sltu       $2, $16, $2
      bnez       $2, .L800CD93C
       addiu     $18, $18, 0x4
  .L800CD96C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CD8C0

.globl func_800CD988
.ent func_800CD988
func_800CD988:
      addiu      $29, $29, -0x28
      lw         $2, 0x38($29)
      sw         $5, 0x18($29)
      lui        $5, %hi(D_800CD900)
      addiu      $5, $5, %lo(D_800CD900)
      sw         $31, 0x20($29)
      sw         $7, 0x10($29)
      sw         $6, 0x1C($29)
      sw         $2, 0x14($29)
      lw         $4, 0x0($4)
      jal        func_8009A73C
       addiu     $6, $29, 0x10
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CD988

.globl func_800CD9C4
.ent func_800CD9C4
func_800CD9C4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $6, 0x4($4)
      lw         $3, 0x8($4)
      sltu       $2, $3, $6
      beqz       $2, .L800CD9F4
       sll       $4, $3, 2
      subu       $6, $6, $3
      addu       $4, $5, $4
      addu       $5, $0, $0
      jal        func_80016140
       sll       $6, $6, 2
  .L800CD9F4:
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CD9C4

.globl func_800CDA04
.ent func_800CDA04
func_800CDA04:
      lw         $3, 0x4($4)
      beqz       $3, .L800CDA24
       nop
      lw         $2, 0x0($4)
      sll        $2, $2, 2
      addu       $2, $2, $5
      lw         $2, 0x0($2)
      sw         $2, 0x0($3)
  .L800CDA24:
      lw         $3, 0x8($4)
      beqz       $3, .L800CDA44
       nop
      lw         $2, 0x0($4)
      lw         $3, 0x0($3)
      sll        $2, $2, 2
      addu       $2, $2, $5
      sw         $3, 0x0($2)
  .L800CDA44:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800CDA04

.globl func_800CDA4C
.ent func_800CDA4C
func_800CDA4C:
      addiu      $29, $29, -0x28
      sw         $5, 0x10($29)
      lui        $5, %hi(func_800CDA04)
      addiu      $5, $5, %lo(func_800CDA04)
      sw         $31, 0x20($29)
      sw         $6, 0x14($29)
      sw         $7, 0x18($29)
      lw         $4, 0x0($4)
      jal        func_8009A73C
       addiu     $6, $29, 0x10
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CDA4C

.globl func_800CDA80
.ent func_800CDA80
func_800CDA80:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      bnez       $16, .L800CDAA4
       sw        $31, 0x18($29)
      j          .L800CDADC
       addiu     $2, $0, -0x4
  .L800CDAA4:
      addu       $4, $16, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x10
      beqz       $17, .L800CDAD4
       sll       $4, $17, 2
      jal        func_80052504
       addu      $5, $0, $0
      bnez       $2, .L800CDAD4
       sw        $2, 0x0($16)
      j          .L800CDADC
       addiu     $2, $0, -0x5
  .L800CDAD4:
      sw         $17, 0x4($16)
      addiu      $2, $0, 0x1
  .L800CDADC:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CDA80

.globl func_800CDAF0
.ent func_800CDAF0
func_800CDAF0:
      addiu      $29, $29, -0x18
      bnez       $4, .L800CDB04
       sw        $31, 0x10($29)
      j          .L800CDB40
       addiu     $2, $0, -0x4
  .L800CDB04:
      beql       $5, $0, .L800CDB34
       addu      $5, $0, $0
      lw         $3, 0x0($5)
      lw         $7, 0x4($5)
      lw         $8, 0x8($5)
      lw         $9, 0xC($5)
      sw         $3, 0x0($4)
      sw         $7, 0x4($4)
      sw         $8, 0x8($4)
      sw         $9, 0xC($4)
      addu       $4, $5, $0
      addu       $5, $0, $0
  .L800CDB34:
      jal        func_80016140
       addiu     $6, $0, 0x10
      addiu      $2, $0, 0x1
  .L800CDB40:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CDAF0

.globl func_800CDB4C
.ent func_800CDB4C
func_800CDB4C:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $31, 0x20($29)
      beqz       $17, .L800CDBE0
       sw        $16, 0x10($29)
      lw         $2, 0x0($17)
      beql       $2, $0, .L800CDBDC
       sw        $0, 0x4($17)
      beqz       $18, .L800CDBC8
       nop
      lw         $2, 0x8($17)
      beqz       $2, .L800CDBC8
       addu      $16, $0, $0
  .L800CDB94:
      lw         $3, 0x0($17)
      sll        $2, $16, 2
      addu       $2, $2, $3
      lw         $5, 0x0($2)
      beqz       $5, .L800CDBB4
       nop
      jalr       $18
       addu      $4, $19, $0
  .L800CDBB4:
      lw         $2, 0x8($17)
      addiu      $16, $16, 0x1
      sltu       $2, $16, $2
      bnez       $2, .L800CDB94
       nop
  .L800CDBC8:
      lw         $4, 0x0($17)
      jal        func_80052540
       nop
      sw         $0, 0x0($17)
      sw         $0, 0x4($17)
  .L800CDBDC:
      sw         $0, 0x8($17)
  .L800CDBE0:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CDB4C

.globl func_800CDBFC
.ent func_800CDBFC
func_800CDBFC:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      addu       $5, $6, $0
      addu       $6, $7, $0
      beqz       $16, .L800CDC5C
       sw        $31, 0x18($29)
      jal        func_800CDB4C
       nop
      beqz       $17, .L800CDC5C
       addu      $4, $17, $0
      lw         $3, 0x0($17)
      lw         $8, 0x4($17)
      lw         $9, 0x8($17)
      lw         $10, 0xC($17)
      sw         $3, 0x0($16)
      sw         $8, 0x4($16)
      sw         $9, 0x8($16)
      sw         $10, 0xC($16)
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x10
  .L800CDC5C:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CDBFC

.globl func_800CDC70
.ent func_800CDC70
func_800CDC70:
      beqz       $4, .L800CDC7C
       addu      $2, $0, $0
      lw         $2, 0x8($4)
  .L800CDC7C:
      jr         $31
       nop
.end func_800CDC70

.globl func_800CDC84
.ent func_800CDC84
func_800CDC84:
      beqz       $4, .L800CDC90
       addu      $2, $0, $0
      lw         $2, 0x4($4)
  .L800CDC90:
      jr         $31
       nop
.end func_800CDC84

.globl func_800CDC98
.ent func_800CDC98
func_800CDC98:
      beqz       $4, .L800CDCAC
       addu      $3, $0, $0
      lw         $2, 0x8($4)
      bnez       $2, .L800CDCB0
       nop
  .L800CDCAC:
      addiu      $3, $0, 0x1
  .L800CDCB0:
      jr         $31
       addu      $2, $3, $0
.end func_800CDC98

.globl func_800CDCB8
.ent func_800CDCB8
func_800CDCB8:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      beqz       $16, .L800CDD74
       addiu     $2, $0, -0x4
      lw         $2, 0x8($16)
      lw         $3, 0x4($16)
      sltu       $2, $2, $3
      beqz       $2, .L800CDCEC
       sltu      $2, $3, $5
      beqz       $2, .L800CDD40
       nop
  .L800CDCEC:
      bnez       $3, .L800CDCF8
       addiu     $2, $3, 0x10
      addiu      $2, $0, 0x10
  .L800CDCF8:
      sw         $2, 0x4($16)
      lw         $2, 0x4($16)
      sltu       $2, $2, $5
      bnel       $2, $0, .L800CDD0C
       sw        $5, 0x4($16)
  .L800CDD0C:
      lw         $4, 0x0($16)
      bnez       $4, .L800CDD30
       addu      $6, $0, $0
      lw         $4, 0x4($16)
      addu       $5, $0, $0
      jal        func_800524E8
       sll       $4, $4, 2
      j          .L800CDD40
       sw        $2, 0x0($16)
  .L800CDD30:
      lw         $5, 0x4($16)
      jal        func_80052524
       sll       $5, $5, 2
      sw         $2, 0x0($16)
  .L800CDD40:
      lw         $3, 0x0($16)
      beqz       $3, .L800CDD70
       addu      $5, $0, $0
      lw         $2, 0x8($16)
      lw         $6, 0x4($16)
      sll        $4, $2, 2
      addu       $4, $3, $4
      subu       $6, $6, $2
      jal        func_80016140
       sll       $6, $6, 2
      j          .L800CDD74
       addiu     $2, $0, 0x1
  .L800CDD70:
      addiu      $2, $0, -0x5
  .L800CDD74:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CDCB8

.globl func_800CDD84
.ent func_800CDD84
func_800CDD84:
      addiu      $29, $29, -0x18
      bnez       $4, .L800CDD98
       sw        $31, 0x10($29)
      j          .L800CDDAC
       addiu     $2, $0, -0x4
  .L800CDD98:
      lw         $5, 0x8($4)
      beql       $5, $0, .L800CDDA4
       addiu     $5, $0, 0x1
  .L800CDDA4:
      jal        func_800CDCB8
       nop
  .L800CDDAC:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CDD84

.globl func_800CDDB8
.ent func_800CDDB8
func_800CDDB8:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $2, 0x8($16)
      addu       $17, $5, $0
      sltu       $2, $2, $17
      beqz       $2, .L800CDE00
       addiu     $2, $0, 0x1
      jal        func_800CDCB8
       nop
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800CDE00
       addu      $2, $3, $0
      sw         $17, 0x8($16)
      addiu      $2, $0, 0x1
  .L800CDE00:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CDDB8

.globl func_800CDE14
.ent func_800CDE14
func_800CDE14:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $20, 0x20($29)
      addu       $20, $7, $0
      sw         $31, 0x24($29)
      beqz       $17, .L800CDE98
       sw        $16, 0x10($29)
      lw         $2, 0x8($17)
      beqz       $2, .L800CDE98
       sltu      $2, $19, $2
      beqz       $2, .L800CDE98
       nop
      beqz       $18, .L800CDE94
       addu      $16, $19, $0
  .L800CDE60:
      lw         $3, 0x0($17)
      sll        $2, $16, 2
      addu       $2, $2, $3
      lw         $5, 0x0($2)
      beqz       $5, .L800CDE80
       nop
      jalr       $18
       addu      $4, $20, $0
  .L800CDE80:
      lw         $2, 0x8($17)
      addiu      $16, $16, 0x1
      sltu       $2, $16, $2
      bnez       $2, .L800CDE60
       nop
  .L800CDE94:
      sw         $19, 0x8($17)
  .L800CDE98:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CDE14

.globl func_800CDEB8
.ent func_800CDEB8
func_800CDEB8:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $31, 0x1C($29)
      beqz       $16, .L800CDF34
       addiu     $2, $0, -0x4
      lw         $2, 0x4($16)
      sltu       $2, $17, $2
      bnez       $2, .L800CDF08
       addu      $4, $16, $0
      jal        func_800CDCB8
       addiu     $5, $17, 0x1
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800CDF34
       addu      $2, $3, $0
  .L800CDF08:
      lw         $2, 0x8($16)
      sltu       $2, $17, $2
      bnez       $2, .L800CDF24
       addiu     $2, $0, 0x1
      addiu      $2, $17, 0x1
      sw         $2, 0x8($16)
      addiu      $2, $0, 0x1
  .L800CDF24:
      lw         $4, 0x0($16)
      sll        $3, $17, 2
      addu       $3, $3, $4
      sw         $18, 0x0($3)
  .L800CDF34:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CDEB8

.globl func_800CDF4C
.ent func_800CDF4C
func_800CDF4C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      beqz       $4, .L800CDF70
       addu      $6, $5, $0
      lw         $5, 0x8($4)
      jal        func_800CDEB8
       nop
      j          .L800CDF74
       nop
  .L800CDF70:
      addiu      $2, $0, -0x4
  .L800CDF74:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CDF4C

.globl func_800CDF80
.ent func_800CDF80
func_800CDF80:
      beqz       $4, .L800CDFA4
       nop
      lw         $2, 0x8($4)
      sltu       $2, $5, $2
      beqz       $2, .L800CDFA4
       nop
      lw         $4, 0x0($4)
      bnez       $4, .L800CDFAC
       sll       $2, $5, 2
  .L800CDFA4:
      jr         $31
       addu      $2, $0, $0
  .L800CDFAC:
      addu       $2, $2, $4
      lw         $2, 0x0($2)
      jr         $31
       nop
.end func_800CDF80

.globl func_800CDFBC
.ent func_800CDFBC
func_800CDFBC:
      beqz       $4, .L800CDFE0
       nop
      lw         $2, 0x8($4)
      sltu       $2, $5, $2
      beqz       $2, .L800CDFE0
       nop
      lw         $4, 0x0($4)
      bnez       $4, .L800CDFE8
       sll       $3, $5, 2
  .L800CDFE0:
      jr         $31
       addu      $2, $0, $0
  .L800CDFE8:
      addu       $3, $3, $4
      lw         $2, 0x0($3)
      jr         $31
       sw        $0, 0x0($3)
.end func_800CDFBC

.globl func_800CDFF8
.ent func_800CDFF8
func_800CDFF8:
      lw         $2, 0x8($4)
      beqz       $2, .L800CE03C
       addu      $7, $0, $0
  .L800CE004:
      lw         $2, 0x0($4)
      sll        $3, $7, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      bnel       $2, $5, .L800CE02C
       addiu     $7, $7, 0x1
      bnel       $6, $0, .L800CE024
       sw        $7, 0x0($6)
  .L800CE024:
      jr         $31
       addiu     $2, $0, 0x1
  .L800CE02C:
      lw         $2, 0x8($4)
      sltu       $2, $7, $2
      bnez       $2, .L800CE004
       nop
  .L800CE03C:
      jr         $31
       addu      $2, $0, $0
.end func_800CDFF8

.globl func_800CE044
.ent func_800CE044
func_800CE044:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      bnez       $16, .L800CE070
       sw        $31, 0x1C($29)
      j          .L800CE0BC
       addiu     $2, $0, -0x4
  .L800CE070:
      addu       $4, $16, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x10
      beqz       $17, .L800CE0A8
       sw        $18, 0xC($16)
      addu       $4, $0, $0
      addu       $5, $18, $0
      jal        func_8009A450
       sll       $6, $17, 2
      bnez       $2, .L800CE0A8
       sw        $2, 0x0($16)
      j          .L800CE0BC
       addiu     $2, $0, -0x5
  .L800CE0A8:
      lw         $4, 0x0($16)
      jal        func_8009A7BC
       nop
      addiu      $2, $0, 0x1
      sw         $17, 0x4($16)
  .L800CE0BC:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CE044

.globl func_800CE0D4
.ent func_800CE0D4
func_800CE0D4:
      addiu      $29, $29, -0x18
      bnez       $4, .L800CE0E8
       sw        $31, 0x10($29)
      j          .L800CE124
       addiu     $2, $0, -0x4
  .L800CE0E8:
      beql       $5, $0, .L800CE118
       addu      $5, $0, $0
      lw         $3, 0x0($5)
      lw         $7, 0x4($5)
      lw         $8, 0x8($5)
      lw         $9, 0xC($5)
      sw         $3, 0x0($4)
      sw         $7, 0x4($4)
      sw         $8, 0x8($4)
      sw         $9, 0xC($4)
      addu       $4, $5, $0
      addu       $5, $0, $0
  .L800CE118:
      jal        func_80016140
       addiu     $6, $0, 0x10
      addiu      $2, $0, 0x1
  .L800CE124:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CE0D4

.globl func_800CE130
.ent func_800CE130
func_800CE130:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      addu       $7, $5, $0
      beqz       $16, .L800CE17C
       sw        $31, 0x1C($29)
      lw         $2, 0x0($16)
      beql       $2, $0, .L800CE178
       sw        $0, 0x4($16)
      sw         $6, 0x10($29)
      lw         $6, 0x8($16)
      jal        func_800CD988
       addu      $5, $0, $0
      lw         $4, 0x0($16)
      jal        func_8009A56C
       nop
.end func_800CE130

.globl func_800CE170
.ent func_800CE170
func_800CE170:
      sw         $0, 0x0($16)
      sw         $0, 0x4($16)
  .L800CE178:
      sw         $0, 0x8($16)
  .L800CE17C:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CE170

.globl func_800CE18C
.ent func_800CE18C
func_800CE18C:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      addu       $5, $6, $0
      addu       $6, $7, $0
      beqz       $16, .L800CE1EC
       sw        $31, 0x18($29)
      jal        func_800CE130
       nop
      beqz       $17, .L800CE1EC
       addu      $4, $17, $0
      lw         $3, 0x0($17)
      lw         $8, 0x4($17)
      lw         $9, 0x8($17)
      lw         $10, 0xC($17)
      sw         $3, 0x0($16)
      sw         $8, 0x4($16)
      sw         $9, 0x8($16)
      sw         $10, 0xC($16)
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x10
  .L800CE1EC:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CE18C

.globl func_800CE200
.ent func_800CE200
func_800CE200:
      beqz       $4, .L800CE20C
       addu      $2, $0, $0
      lw         $2, 0x8($4)
  .L800CE20C:
      jr         $31
       nop
.end func_800CE200

.globl func_800CE214
.ent func_800CE214
func_800CE214:
      beqz       $4, .L800CE220
       addu      $2, $0, $0
      lw         $2, 0x4($4)
  .L800CE220:
      jr         $31
       nop
.end func_800CE214

.globl func_800CE228
.ent func_800CE228
func_800CE228:
      beqz       $4, .L800CE23C
       addu      $3, $0, $0
      lw         $2, 0x8($4)
      bnez       $2, .L800CE240
       nop
  .L800CE23C:
      addiu      $3, $0, 0x1
  .L800CE240:
      jr         $31
       addu      $2, $3, $0
.end func_800CE228

.globl func_800CE248
.ent func_800CE248
func_800CE248:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      beqz       $16, .L800CE304
       addiu     $2, $0, -0x4
      lw         $2, 0x8($16)
      lw         $3, 0x4($16)
      sltu       $2, $2, $3
      beqz       $2, .L800CE27C
       sltu      $2, $3, $5
      beqz       $2, .L800CE2E4
       nop
  .L800CE27C:
      bnez       $3, .L800CE288
       addiu     $2, $3, 0x10
      addiu      $2, $0, 0x10
  .L800CE288:
      sw         $2, 0x4($16)
      lw         $2, 0x4($16)
      sltu       $2, $2, $5
      bnel       $2, $0, .L800CE29C
       sw        $5, 0x4($16)
  .L800CE29C:
      lw         $4, 0x0($16)
      bnez       $4, .L800CE2D4
       nop
      addu       $4, $0, $0
      lw         $6, 0x4($16)
      lw         $5, 0xC($16)
      jal        func_8009A450
       sll       $6, $6, 2
      beqz       $2, .L800CE2E4
       sw        $2, 0x0($16)
      jal        func_8009A7BC
       addu      $4, $2, $0
      j          .L800CE2E4
       nop
  .L800CE2D4:
      lw         $5, 0x4($16)
      jal        func_8009A5C8
       sll       $5, $5, 2
      sw         $2, 0x0($16)
  .L800CE2E4:
      lw         $4, 0x0($16)
      bnez       $4, .L800CE2F8
       lui       $5, %hi(func_800CD9C4)
      j          .L800CE304
       addiu     $2, $0, -0x5
  .L800CE2F8:
      addiu      $5, $5, %lo(func_800CD9C4)
      jal        func_8009A73C
       addu      $6, $16, $0
  .L800CE304:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CE248

.globl func_800CE314
.ent func_800CE314
func_800CE314:
      addiu      $29, $29, -0x18
      bnez       $4, .L800CE328
       sw        $31, 0x10($29)
      j          .L800CE33C
       addiu     $2, $0, -0x4
  .L800CE328:
      lw         $5, 0x8($4)
      beql       $5, $0, .L800CE334
       addiu     $5, $0, 0x1
  .L800CE334:
      jal        func_800CE248
       nop
  .L800CE33C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CE314

.globl func_800CE348
.ent func_800CE348
func_800CE348:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $2, 0x8($16)
      addu       $17, $5, $0
      sltu       $2, $2, $17
      beqz       $2, .L800CE390
       addiu     $2, $0, 0x1
      jal        func_800CE248
       nop
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800CE390
       addu      $2, $3, $0
      sw         $17, 0x8($16)
      addiu      $2, $0, 0x1
  .L800CE390:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CE348

.globl func_800CE3A4
.ent func_800CE3A4
func_800CE3A4:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      addu       $3, $6, $0
      beqz       $16, .L800CE3EC
       sw        $31, 0x20($29)
      lw         $2, 0x8($16)
      beqz       $2, .L800CE3EC
       sltu      $2, $17, $2
      beqz       $2, .L800CE3EC
       nop
      sw         $7, 0x10($29)
      lw         $6, 0x8($16)
      jal        func_800CD988
       addu      $7, $3, $0
      sw         $17, 0x8($16)
  .L800CE3EC:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CE3A4

.globl func_800CE400
.ent func_800CE400
func_800CE400:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $16, 0x20($29)
      addu       $16, $5, $0
      sw         $31, 0x28($29)
      sw         $6, 0x38($29)
      beqz       $17, .L800CE484
       addiu     $2, $0, -0x4
      lw         $2, 0x4($17)
      sltu       $2, $16, $2
      bnez       $2, .L800CE44C
       addu      $4, $17, $0
      jal        func_800CE248
       addiu     $5, $16, 0x1
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800CE484
       addu      $2, $3, $0
  .L800CE44C:
      lw         $2, 0x8($17)
      sltu       $2, $16, $2
      bnez       $2, .L800CE464
       lui       $5, %hi(func_800CDA04)
      addiu      $2, $16, 0x1
      sw         $2, 0x8($17)
  .L800CE464:
      addiu      $5, $5, %lo(func_800CDA04)
      addiu      $2, $29, 0x38
      sw         $16, 0x10($29)
      sw         $0, 0x14($29)
      sw         $2, 0x18($29)
      lw         $4, 0x0($17)
      jal        func_8009A73C
       addiu     $6, $29, 0x10
  .L800CE484:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800CE400

.globl func_800CE498
.ent func_800CE498
func_800CE498:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      beqz       $4, .L800CE4BC
       addu      $6, $5, $0
      lw         $5, 0x8($4)
      jal        func_800CE400
       nop
      j          .L800CE4C0
       nop
  .L800CE4BC:
      addiu      $2, $0, -0x4
  .L800CE4C0:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CE498

.globl func_800CE4CC
.ent func_800CE4CC
func_800CE4CC:
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      beqz       $4, .L800CE500
       sw        $0, 0x10($29)
      lw         $2, 0x8($4)
      sltu       $2, $5, $2
      beqz       $2, .L800CE500
       nop
      lw         $2, 0x0($4)
      beqz       $2, .L800CE500
       addiu     $6, $29, 0x10
      jal        func_800CDA4C
       addu      $7, $0, $0
  .L800CE500:
      lw         $2, 0x10($29)
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CE4CC

.globl func_800CE510
.ent func_800CE510
func_800CE510:
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      sw         $0, 0x10($29)
      beqz       $4, .L800CE548
       sw        $0, 0x14($29)
      lw         $2, 0x8($4)
      sltu       $2, $5, $2
      beqz       $2, .L800CE548
       nop
      lw         $2, 0x0($4)
      beqz       $2, .L800CE548
       addiu     $6, $29, 0x10
      jal        func_800CDA4C
       addiu     $7, $29, 0x14
  .L800CE548:
      lw         $2, 0x10($29)
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CE510

.globl func_800CE558
.ent func_800CE558
func_800CE558:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $18, 0x18($29)
      addiu      $18, $0, 0x1
      sw         $31, 0x24($29)
      sw         $17, 0x14($29)
      bnez       $19, .L800CE58C
       sw        $16, 0x10($29)
      j          .L800CE5F0
       addiu     $2, $0, -0x4
  .L800CE58C:
      addu       $4, $19, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x14
      beqz       $20, .L800CE5EC
       sll       $17, $20, 2
      addu       $4, $17, $0
      jal        func_80052504
       addu      $5, $0, $0
      addu       $16, $2, $0
      beql       $16, $0, .L800CE5EC
       addiu     $18, $0, -0x5
      addu       $4, $17, $0
      jal        func_80052504
       addu      $5, $0, $0
      beqz       $2, .L800CE5E0
       nop
      sw         $20, 0x8($19)
      sw         $16, 0x0($19)
      j          .L800CE5EC
       sw        $2, 0x4($19)
  .L800CE5E0:
      jal        func_80052540
       addu      $4, $16, $0
      addiu      $18, $0, -0x5
  .L800CE5EC:
      addu       $2, $18, $0
  .L800CE5F0:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CE558

.globl func_800CE610
.ent func_800CE610
func_800CE610:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $19, 0x1C($29)
      addu       $19, $7, $0
      beqz       $16, .L800CE654
       sw        $31, 0x20($29)
      beql       $17, $0, .L800CE65C
       addu      $4, $16, $0
      beqz       $18, .L800CE684
       addiu     $2, $0, -0x4
      bnez       $19, .L800CE65C
       addu      $4, $16, $0
  .L800CE654:
      j          .L800CE684
       addiu     $2, $0, -0x4
  .L800CE65C:
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x14
      addiu      $2, $0, 0x1
      addu       $3, $2, $0
      sw         $18, 0x0($16)
      sw         $19, 0x4($16)
      sw         $17, 0x8($16)
      sw         $17, 0xC($16)
      sb         $3, 0x10($16)
  .L800CE684:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CE610

.globl func_800CE6A0
.ent func_800CE6A0
func_800CE6A0:
      addiu      $29, $29, -0x30
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      bnez       $19, .L800CE6DC
       sw        $16, 0x10($29)
      j          .L800CE7A4
       addiu     $2, $0, -0x4
  .L800CE6D4:
      j          .L800CE780
       addiu     $21, $0, -0x5
  .L800CE6DC:
      beqz       $20, .L800CE6E8
       addu      $5, $0, $0
      lw         $5, 0xC($20)
  .L800CE6E8:
      jal        func_800CE558
       addu      $4, $19, $0
      addu       $21, $2, $0
      addiu      $2, $0, 0x1
      bne        $21, $2, .L800CE78C
       nop
      lw         $2, 0xC($20)
      beql       $2, $0, .L800CE784
       addiu     $2, $0, 0x1
      beqz       $2, .L800CE780
       addu      $17, $0, $0
      sll        $16, $17, 2
  .L800CE718:
      lw         $3, 0x0($20)
      lw         $2, 0x4($20)
      addu       $3, $16, $3
      addu       $2, $16, $2
      lw         $4, 0x0($3)
      lw         $18, 0x0($2)
      jal        func_800523C0
       nop
      lw         $3, 0x0($19)
      addu       $3, $16, $3
      beqz       $2, .L800CE6D4
       sw        $2, 0x0($3)
      jal        func_800523C0
       addu      $4, $18, $0
      lw         $3, 0x4($19)
      addu       $3, $16, $3
      beqz       $2, .L800CE6D4
       sw        $2, 0x0($3)
      lw         $2, 0xC($19)
      addiu      $2, $2, 0x1
      sw         $2, 0xC($19)
      lw         $2, 0xC($20)
      addiu      $17, $17, 0x1
      sltu       $2, $17, $2
      bnez       $2, .L800CE718
       sll       $16, $17, 2
  .L800CE780:
      addiu      $2, $0, 0x1
  .L800CE784:
      beq        $21, $2, .L800CE7A4
       addu      $2, $21, $0
  .L800CE78C:
      jal        func_800CE7C8
       addu      $4, $19, $0
      addu       $4, $19, $0
      jal        func_800CE558
       addu      $5, $0, $0
      addu       $2, $21, $0
  .L800CE7A4:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800CE6A0

.globl func_800CE7C8
.ent func_800CE7C8
func_800CE7C8:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      beqz       $18, .L800CE880
       sw        $16, 0x10($29)
      lbu        $2, 0x10($18)
      bnez       $2, .L800CE880
       nop
      lw         $2, 0x8($18)
      beqz       $2, .L800CE880
       nop
      lw         $2, 0xC($18)
      beqz       $2, .L800CE858
       addu      $17, $0, $0
      sll        $2, $17, 2
  .L800CE80C:
      lw         $3, 0x0($18)
      lw         $4, 0x4($18)
      addu       $3, $2, $3
      addu       $2, $2, $4
      lw         $4, 0x0($3)
      lw         $16, 0x0($2)
      beqz       $4, .L800CE834
       nop
      jal        func_80052540
       nop
  .L800CE834:
      beqz       $16, .L800CE844
       nop
      jal        func_80052540
       addu      $4, $16, $0
  .L800CE844:
      lw         $2, 0xC($18)
      addiu      $17, $17, 0x1
      sltu       $2, $17, $2
      bnez       $2, .L800CE80C
       sll       $2, $17, 2
  .L800CE858:
      lw         $4, 0x0($18)
      beqz       $4, .L800CE86C
       nop
      jal        func_80052540
       nop
  .L800CE86C:
      lw         $4, 0x4($18)
      beqz       $4, .L800CE880
       nop
      jal        func_80052540
       nop
  .L800CE880:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CE7C8

.globl func_800CE898
.ent func_800CE898
func_800CE898:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      addiu      $4, $0, 0x14
      addu       $5, $0, $0
      sw         $31, 0x18($29)
      jal        func_800524E8
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L800CE8EC
       addu      $2, $16, $0
      addu       $4, $16, $0
      jal        func_800CE558
       addu      $5, $17, $0
      addiu      $3, $0, 0x1
      beq        $2, $3, .L800CE8EC
       addu      $2, $16, $0
      jal        func_80052540
       addu      $4, $16, $0
      addu       $16, $0, $0
      addu       $2, $16, $0
  .L800CE8EC:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CE898

.globl func_800CE900
.ent func_800CE900
func_800CE900:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L800CE924
       sw        $31, 0x14($29)
      jal        func_800CE7C8
       nop
      jal        func_80052540
       addu      $4, $16, $0
  .L800CE924:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CE900

.globl func_800CE934
.ent func_800CE934
func_800CE934:
      beqz       $4, .L800CE940
       addu      $2, $0, $0
      lw         $2, 0xC($4)
  .L800CE940:
      jr         $31
       nop
.end func_800CE934

.globl func_800CE948
.ent func_800CE948
func_800CE948:
      beqz       $4, .L800CE954
       addu      $2, $0, $0
      lw         $2, 0x0($4)
  .L800CE954:
      jr         $31
       nop
.end func_800CE948

.globl func_800CE95C
.ent func_800CE95C
func_800CE95C:
      beqz       $4, .L800CE968
       addu      $2, $0, $0
      lw         $2, 0x4($4)
  .L800CE968:
      jr         $31
       nop
.end func_800CE95C

.globl func_800CE970
.ent func_800CE970
func_800CE970:
      beqz       $5, func_800CE980
       nop
      jalr       $18
       addu      $4, $20, $0
.end func_800CE970

.globl func_800CE980
.ent func_800CE980
func_800CE980:
      addiu      $29, $29, -0x18
      beqz       $4, .L800CE9A8
       sw        $31, 0x10($29)
      jal        func_800CB154
       nop
      beql       $2, $0, .L800CE9AC
       addu      $2, $0, $0
      lw         $2, 0x4($2)
      j          .L800CE9AC
       nop
  .L800CE9A8:
      addu       $2, $0, $0
  .L800CE9AC:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CE980

.globl func_800CE9B8
.ent func_800CE9B8
func_800CE9B8:
      addiu      $29, $29, -0x38
      sw         $21, 0x2C($29)
      addu       $21, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $31, 0x30($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $17, 0x1C($29)
      bnez       $18, .L800CEA10
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB724)
      addiu      $4, $4, %lo(D_800FB724)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FB794)
      addiu      $6, $6, %lo(D_800FB794)
      jal        func_80002E80
       addiu     $7, $0, 0x17F
  .L800CEA10:
      bnez       $21, .L800CEA44
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB7A4)
      addiu      $4, $4, %lo(D_800FB7A4)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FB794)
      addiu      $6, $6, %lo(D_800FB794)
      jal        func_80002E80
       addiu     $7, $0, 0x180
  .L800CEA44:
      lw         $19, 0x4($18)
      lw         $20, 0x8($18)
      bnez       $19, .L800CEA80
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB7F4)
      addiu      $4, $4, %lo(D_800FB7F4)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FB794)
      addiu      $6, $6, %lo(D_800FB794)
      jal        func_80002E80
       addiu     $7, $0, 0x185
  .L800CEA80:
      bnez       $20, .L800CEAB4
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB848)
      addiu      $4, $4, %lo(D_800FB848)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FB794)
      addiu      $6, $6, %lo(D_800FB794)
      jal        func_80002E80
       addiu     $7, $0, 0x186
  .L800CEAB4:
      lw         $16, 0x0($21)
      beql       $16, $0, .L800CEAD0
       sw        $0, 0x0($19)
      lw         $17, 0x4($21)
      bnez       $17, .L800CEAD8
       nop
      sw         $0, 0x0($19)
  .L800CEAD0:
      j          .L800CEB38
       sw        $0, 0x0($20)
  .L800CEAD8:
      lw         $4, 0x8($21)
      beqz       $4, .L800CEAF8
       nop
      lw         $5, 0x0($18)
      jal        func_8005211C
       nop
      beql       $2, $0, .L800CEB1C
       sw        $16, 0x0($19)
  .L800CEAF8:
      lw         $4, 0xC($21)
      beql       $4, $0, .L800CEB24
       addu      $4, $16, $0
      lw         $5, 0x0($18)
      jal        func_8005211C
       nop
      bnez       $2, .L800CEB24
       addu      $4, $16, $0
      sw         $16, 0x0($19)
  .L800CEB1C:
      j          .L800CEB38
       sw        $17, 0x0($20)
  .L800CEB24:
      lui        $5, %hi(func_800CE9B8)
      addiu      $5, $5, %lo(func_800CE9B8)
      lw         $2, 0x38($17)
      jalr       $2
       addu      $6, $18, $0
  .L800CEB38:
      lw         $2, 0x0($19)
      beqz       $2, .L800CEB50
       addu      $3, $0, $0
      lw         $2, 0x0($20)
      bnez       $2, .L800CEB54
       nop
  .L800CEB50:
      addiu      $3, $0, 0x1
  .L800CEB54:
      lw         $31, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x38
.end func_800CE9B8

.globl func_800CEB7C
.ent func_800CEB7C
func_800CEB7C:
      addiu      $29, $29, -0x48
      sw         $17, 0x34($29)
      addu       $17, $4, $0
      sw         $16, 0x30($29)
      addu       $16, $6, $0
      sw         $31, 0x44($29)
      sw         $20, 0x40($29)
      sw         $19, 0x3C($29)
      bnez       $17, .L800CEBD0
       sw        $18, 0x38($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB89C)
      addiu      $4, $4, %lo(D_800FB89C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FB8E8)
      addiu      $6, $6, %lo(D_800FB8E8)
      jal        func_80002E80
       addiu     $7, $0, 0x1B2
  .L800CEBD0:
      bnez       $16, .L800CEC04
       addiu     $16, $16, 0x4
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB908)
      addiu      $4, $4, %lo(D_800FB908)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FB8E8)
      addiu      $6, $6, %lo(D_800FB8E8)
      jal        func_80002E80
       addiu     $7, $0, 0x1B3
  .L800CEC04:
      lw         $20, -0x4($16)
      addiu      $16, $16, 0x4
      lw         $18, -0x4($16)
      lw         $19, 0x0($16)
      bnez       $20, .L800CEC48
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB958)
      addiu      $4, $4, %lo(D_800FB958)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FB8E8)
      addiu      $6, $6, %lo(D_800FB8E8)
      jal        func_80002E80
       addiu     $7, $0, 0x1B9
  .L800CEC48:
      bnez       $18, .L800CEC7C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB7F4)
      addiu      $4, $4, %lo(D_800FB7F4)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FB8E8)
      addiu      $6, $6, %lo(D_800FB8E8)
      jal        func_80002E80
       addiu     $7, $0, 0x1BA
  .L800CEC7C:
      bnez       $19, .L800CECB0
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB848)
      addiu      $4, $4, %lo(D_800FB848)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FB8E8)
      addiu      $6, $6, %lo(D_800FB8E8)
      jal        func_80002E80
       addiu     $7, $0, 0x1BB
  .L800CECB0:
      lw         $2, 0x4($17)
      addu       $4, $17, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $29, 0x28
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800CED4C
       nop
      lw         $4, 0x28($29)
      beqz       $4, .L800CED4C
       nop
      jal        func_800CB124
       nop
      lw         $4, 0x28($29)
      jal        func_800CB0F4
       addu      $16, $2, $0
      beqz       $16, .L800CED4C
       addu      $17, $2, $0
      beqz       $17, .L800CED4C
       nop
      lw         $4, 0x28($29)
      jal        func_800CB038
       nop
      addu       $4, $2, $0
      jal        func_8005211C
       addu      $5, $20, $0
      bnez       $2, .L800CED2C
       addu      $4, $16, $0
      sw         $16, 0x0($18)
      j          .L800CED4C
       sw        $17, 0x0($19)
  .L800CED2C:
      lui        $5, %hi(func_800CE9B8)
      addiu      $5, $5, %lo(func_800CE9B8)
      sw         $20, 0x18($29)
      sw         $18, 0x1C($29)
      sw         $19, 0x20($29)
      lw         $2, 0x38($17)
      jalr       $2
       addiu     $6, $29, 0x18
  .L800CED4C:
      lw         $2, 0x0($18)
      beqz       $2, .L800CED64
       addu      $3, $0, $0
      lw         $2, 0x0($19)
      bnez       $2, .L800CED68
       nop
  .L800CED64:
      addiu      $3, $0, 0x1
  .L800CED68:
      lw         $31, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x48
.end func_800CEB7C

.globl func_800CED8C
.ent func_800CED8C
func_800CED8C:
      addiu      $2, $0, 0x2
      beq        $4, $2, .L800CEDCC
       slti      $2, $4, 0x3
      beqz       $2, .L800CEDB0
       addiu     $2, $0, 0x1
      beq        $4, $2, .L800CEDC4
       nop
      j          .L800CEDDC
       nop
  .L800CEDB0:
      addiu      $2, $0, 0x3
      beq        $4, $2, .L800CEDD4
       addiu     $2, $0, 0x1
      j          .L800CEDDC
       nop
  .L800CEDC4:
      jr         $31
       addiu     $2, $0, 0x2
  .L800CEDCC:
      jr         $31
       addiu     $2, $0, 0x3
  .L800CEDD4:
      jr         $31
       addu      $2, $0, $0
  .L800CEDDC:
      jr         $31
       nop
.end func_800CED8C

.globl func_800CEDE4
.ent func_800CEDE4
func_800CEDE4:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $31, 0x20($29)
      bnez       $17, .L800CEE28
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB9A8)
      addiu      $4, $4, %lo(D_800FB9A8)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FB9F4)
      addiu      $6, $6, %lo(D_800FB9F4)
      jal        func_80002E80
       addiu     $7, $0, 0x216
  .L800CEE28:
      addu       $4, $0, $0
      addu       $5, $4, $0
      jal        func_800D27D0
       addiu     $6, $0, 0x1C
      addu       $16, $2, $0
      beqz       $16, .L800CEE68
       addiu     $4, $16, 0xC
      addu       $5, $0, $0
      lui        $2, %hi(D_800FB69C)
      addiu      $2, $2, %lo(D_800FB69C)
      sw         $2, 0x0($16)
      sw         $16, 0x4($16)
      jal        func_800CD1EC
       sw        $17, 0x8($16)
      j          .L800CEE6C
       addu      $2, $16, $0
  .L800CEE68:
      addu       $2, $0, $0
  .L800CEE6C:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CEDE4

.globl func_800CEE80
.ent func_800CEE80
func_800CEE80:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800D0888
       addu      $4, $5, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800CEE80

.globl func_800CEE9C
.ent func_800CEE9C
func_800CEE9C:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L800CEEDC
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBA08)
      addiu      $4, $4, %lo(D_800FBA08)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBA58)
      addiu      $6, $6, %lo(D_800FBA58)
      jal        func_80002E80
       addiu     $7, $0, 0x254
  .L800CEEDC:
      lui        $5, %hi(func_800CEE80)
      addiu      $5, $5, %lo(func_800CEE80)
      lw         $16, 0x4($16)
      addu       $6, $0, $0
      jal        func_800CD234
       addiu     $4, $16, 0xC
      jal        func_800D2814
       addu      $4, $16, $0
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800CEE9C

.globl func_800CEF0C
.ent func_800CEF0C
func_800CEF0C:
      addiu      $29, $29, -0x38
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $18, 0x28($29)
      addu       $18, $6, $0
      sw         $19, 0x2C($29)
      addu       $19, $7, $0
      bnez       $16, .L800CEF64
       sw        $31, 0x30($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBA6C)
      addiu      $4, $4, %lo(D_800FBA6C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBAB8)
      addiu      $6, $6, %lo(D_800FBAB8)
      jal        func_80002E80
       addiu     $7, $0, 0x276
  .L800CEF64:
      lw         $2, 0x8($16)
      bnez       $2, .L800CEF9C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBAC4)
      addiu      $4, $4, %lo(D_800FBAC4)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBAB8)
      addiu      $6, $6, %lo(D_800FBAB8)
      jal        func_80002E80
       addiu     $7, $0, 0x277
  .L800CEF9C:
      lw         $4, 0x8($16)
      lw         $2, 0x0($4)
      lw         $2, 0xC($2)
      jalr       $2
       addiu     $5, $29, 0x18
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800CEFEC
       addu      $5, $17, $0
      lw         $4, 0x18($29)
      lw         $2, 0x48($29)
      lw         $3, 0x0($4)
      sw         $2, 0x10($29)
      lw         $2, 0x4C($29)
      addu       $6, $18, $0
      sw         $2, 0x14($29)
      lw         $2, 0x10($3)
      jalr       $2
       addu      $7, $19, $0
      addu       $3, $2, $0
  .L800CEFEC:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x38
.end func_800CEF0C

.globl func_800CF00C
.ent func_800CF00C
func_800CF00C:
      addiu      $29, $29, -0x50
      sw         $19, 0x34($29)
      addu       $19, $5, $0
      sw         $18, 0x30($29)
      addiu      $18, $0, -0x4
      sw         $31, 0x4C($29)
      sw         $30, 0x48($29)
      sw         $23, 0x44($29)
      sw         $22, 0x40($29)
      sw         $21, 0x3C($29)
      sw         $20, 0x38($29)
      sw         $17, 0x2C($29)
      sw         $16, 0x28($29)
      bnez       $19, .L800CF074
       sw        $6, 0x58($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBB14)
      addiu      $4, $4, %lo(D_800FBB14)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBB64)
      addiu      $6, $6, %lo(D_800FBB64)
      jal        func_80002E80
       addiu     $7, $0, 0x29E
  .L800CF074:
      jal        func_800CB0C4
       addu      $4, $19, $0
      addu       $30, $2, $0
      beqz       $30, .L800CF1F4
       addu      $2, $18, $0
      jal        func_800CB0F4
       addu      $4, $19, $0
      addu       $20, $2, $0
      beqz       $20, .L800CF1F4
       addu      $2, $18, $0
      jal        func_800CB184
       addu      $4, $19, $0
      sltiu      $17, $2, 0x1
      addu       $22, $0, $0
      addu       $23, $22, $0
      addu       $21, $22, $0
      jal        func_800CB08C
       addu      $4, $19, $0
      addu       $16, $2, $0
      beql       $16, $0, .L800CF0F0
       ori       $17, $17, 0x2
      jal        func_800CD68C
       addu      $4, $16, $0
      addu       $22, $2, $0
      jal        func_800CD6A8
       addu      $4, $16, $0
      addu       $23, $2, $0
      jal        func_800CD6C4
       addu      $4, $16, $0
      addu       $21, $2, $0
      ori        $17, $17, 0x2
  .L800CF0F0:
      jal        func_800CB094
       addu      $4, $19, $0
      addu       $4, $2, $0
      beqz       $4, .L800CF1F4
       addu      $2, $18, $0
      lw         $2, 0x4($4)
      lw         $2, 0x50($2)
      jalr       $2
       addiu     $5, $29, 0x20
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bne        $18, $2, .L800CF1F0
       addu      $16, $18, $0
      lw         $3, 0x20($29)
      andi       $2, $3, 0x4
      bnel       $2, $0, .L800CF134
       ori       $17, $17, 0x4
  .L800CF134:
      andi       $2, $3, 0x8
      bnel       $2, $0, .L800CF140
       ori       $17, $17, 0x8
  .L800CF140:
      addu       $4, $30, $0
      addu       $5, $17, $0
      lw         $8, 0x58($29)
      addu       $6, $22, $0
      sw         $21, 0x10($29)
      sw         $0, 0x14($29)
      sw         $8, 0x18($29)
      lw         $2, 0x0($20)
      jalr       $2
       addu      $7, $23, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $18, $2, $0
      bne        $18, $16, .L800CF1F4
       addu      $2, $18, $0
      jal        func_800CB080
       addu      $4, $19, $0
      addu       $16, $2, $0
      beqz       $16, .L800CF1F4
       addu      $2, $18, $0
      lw         $8, 0x58($29)
      lw         $2, 0x0($8)
      bnez       $2, .L800CF1D4
       addiu     $5, $0, 0xA
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBB78)
      addiu      $4, $4, %lo(D_800FBB78)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBB64)
      addiu      $6, $6, %lo(D_800FBB64)
      jal        func_80002E80
       addiu     $7, $0, 0x2CC
      addiu      $5, $0, 0xA
      lw         $8, 0x58($29)
  .L800CF1D4:
      lw         $2, 0x24($20)
      lw         $4, 0x0($8)
      jalr       $2
       addu      $6, $16, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $18, $2, $0
  .L800CF1F0:
      addu       $2, $18, $0
  .L800CF1F4:
      lw         $31, 0x4C($29)
      lw         $30, 0x48($29)
      lw         $23, 0x44($29)
      lw         $22, 0x40($29)
      lw         $21, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_800CF00C

.globl func_800CF224
.ent func_800CF224
func_800CF224:
      addiu      $29, $29, -0x38
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $22, 0x30($29)
      addu       $22, $6, $0
      sw         $19, 0x24($29)
      addiu      $19, $0, -0x4
      addu       $4, $17, $0
      sw         $31, 0x34($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $18, 0x20($29)
      jal        func_800CB1E8
       sw        $16, 0x18($29)
      addu       $16, $2, $0
      beqz       $16, .L800CF318
       addu      $2, $19, $0
      jal        func_800CB0F4
       addu      $4, $16, $0
      addu       $21, $2, $0
      beqz       $21, .L800CF318
       addu      $2, $19, $0
      jal        func_800CB124
       addu      $4, $16, $0
      addu       $20, $2, $0
      beqz       $20, .L800CF318
       addu      $2, $19, $0
      jal        func_800CB074
       addu      $4, $17, $0
      beqz       $2, .L800CF318
       addu      $2, $19, $0
      jal        func_800CB0F4
       addu      $4, $17, $0
      addu       $18, $2, $0
      beqz       $18, .L800CF318
       addu      $2, $19, $0
      jal        func_800CB124
       addu      $4, $17, $0
      addu       $16, $2, $0
      beqz       $16, .L800CF318
       addu      $2, $19, $0
      jal        func_800CB074
       addu      $4, $17, $0
      addu       $7, $2, $0
      andi       $2, $22, 0x4
      bnez       $2, .L800CF2F0
       addiu     $2, $0, 0x6
      andi       $2, $22, 0x2
      bnez       $2, .L800CF2F0
       addiu     $2, $0, 0x5
      addiu      $2, $0, 0x1
  .L800CF2F0:
      sw         $2, 0x10($29)
      addu       $4, $20, $0
      lw         $2, 0x34($21)
      addu       $5, $16, $0
      jalr       $2
       addu      $6, $18, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $19, $2, $0
      addu       $2, $19, $0
  .L800CF318:
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
.end func_800CF224

.globl func_800CF340
.ent func_800CF340
func_800CF340:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $20, 0x28($29)
      addu       $20, $6, $0
      sw         $19, 0x24($29)
      addiu      $19, $0, -0x4
      sw         $31, 0x2C($29)
      sw         $18, 0x20($29)
      bnez       $17, .L800CF398
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBB14)
      addiu      $4, $4, %lo(D_800FBB14)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBBBC)
      addiu      $6, $6, %lo(D_800FBBBC)
      jal        func_80002E80
       addiu     $7, $0, 0x31F
  .L800CF398:
      jal        func_800CAFF4
       addu      $4, $17, $0
      addiu      $3, $0, 0x1
      beq        $2, $3, .L800CF3D8
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBBD4)
      addiu      $4, $4, %lo(D_800FBBD4)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBBBC)
      addiu      $6, $6, %lo(D_800FBBBC)
      jal        func_80002E80
       addiu     $7, $0, 0x320
  .L800CF3D8:
      jal        func_800CB074
       addu      $4, $17, $0
      bnez       $2, .L800CF414
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBC30)
      addiu      $4, $4, %lo(D_800FBC30)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBBBC)
      addiu      $6, $6, %lo(D_800FBBBC)
      jal        func_80002E80
       addiu     $7, $0, 0x321
  .L800CF414:
      jal        func_800CB1E8
       addu      $4, $17, $0
      addu       $16, $2, $0
      beqz       $16, .L800CF4B0
       addu      $2, $19, $0
      jal        func_800CB0F4
       addu      $4, $16, $0
      addu       $18, $2, $0
      beqz       $18, .L800CF4B0
       addu      $2, $19, $0
      jal        func_800CB124
       addu      $4, $16, $0
      addu       $16, $2, $0
      beqz       $16, .L800CF4B0
       addu      $2, $19, $0
      jal        func_800CB074
       addu      $4, $17, $0
      beqz       $2, .L800CF4B0
       addu      $2, $19, $0
      jal        func_800CB074
       addu      $4, $17, $0
      bgez       $20, .L800CF480
       addu      $17, $2, $0
      jal        func_800CC3A8
       addu      $4, $20, $0
      j          .L800CF488
       addu      $4, $16, $0
  .L800CF480:
      addiu      $2, $0, -0x7
      addu       $4, $16, $0
  .L800CF488:
      addu       $5, $0, $0
      addu       $6, $5, $0
      sw         $2, 0x10($29)
      lw         $2, 0x34($18)
      jalr       $2
       addu      $7, $17, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $19, $2, $0
      addu       $2, $19, $0
  .L800CF4B0:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800CF340

.globl func_800CF4D0
.ent func_800CF4D0
func_800CF4D0:
      addiu      $29, $29, -0x38
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $20, 0x28($29)
      addu       $20, $5, $0
      sw         $21, 0x2C($29)
      addu       $21, $6, $0
      sw         $22, 0x30($29)
      addu       $22, $7, $0
      sw         $16, 0x18($29)
      addiu      $16, $0, 0x1
      sw         $31, 0x34($29)
      sw         $18, 0x20($29)
      beqz       $20, .L800CF510
       sw        $17, 0x1C($29)
      addiu      $16, $0, -0x4
  .L800CF510:
      bnez       $19, .L800CF544
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBB14)
      addiu      $4, $4, %lo(D_800FBB14)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBC9C)
      addiu      $6, $6, %lo(D_800FBC9C)
      jal        func_80002E80
       addiu     $7, $0, 0x346
  .L800CF544:
      jal        func_800CB094
       addu      $4, $19, $0
      addu       $17, $2, $0
      beqz       $17, .L800CF5EC
       addu      $2, $16, $0
      jal        func_800CB0F4
       addu      $4, $19, $0
      addu       $18, $2, $0
      beqz       $18, .L800CF5EC
       addu      $2, $16, $0
      jal        func_800CB124
       addu      $4, $19, $0
      beql       $2, $0, .L800CF5EC
       addu      $2, $16, $0
      beqz       $20, .L800CF5AC
       addiu     $16, $0, 0x1
      beqz       $21, .L800CF5AC
       addu      $4, $2, $0
      addu       $5, $20, $0
      lui        $6, %hi(D_800FB640)
      lw         $2, 0x4($18)
      jalr       $2
       addiu     $6, $6, %lo(D_800FB640)
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
  .L800CF5AC:
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800CF5EC
       addu      $2, $16, $0
      beqz       $22, .L800CF5D0
       addu      $4, $17, $0
      lw         $2, 0x4($17)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $22, $0
  .L800CF5D0:
      lw         $2, 0x4($17)
      addu       $4, $17, $0
      lw         $2, 0x8($2)
      jalr       $2
       addu      $5, $20, $0
      addu       $16, $2, $0
      addu       $2, $16, $0
  .L800CF5EC:
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
.end func_800CF4D0

.globl func_800CF614
.ent func_800CF614
func_800CF614:
      addiu      $29, $29, -0x70
      sw         $19, 0x5C($29)
      addu       $19, $4, $0
      sw         $22, 0x68($29)
      addu       $22, $5, $0
      sw         $16, 0x50($29)
      addiu      $16, $0, -0x4
      sw         $31, 0x6C($29)
      sw         $21, 0x64($29)
      sw         $20, 0x60($29)
      sw         $18, 0x58($29)
      bnez       $19, .L800CF674
       sw        $17, 0x54($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBB14)
      addiu      $4, $4, %lo(D_800FBB14)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBCB0)
      addiu      $6, $6, %lo(D_800FBCB0)
      jal        func_80002E80
       addiu     $7, $0, 0x374
  .L800CF674:
      jal        func_800CB094
       addu      $4, $19, $0
      addu       $17, $2, $0
      beqz       $17, .L800CF800
       addu      $2, $16, $0
      jal        func_800CB0F4
       addu      $4, $19, $0
      addu       $21, $2, $0
      beqz       $21, .L800CF800
       addu      $2, $16, $0
      jal        func_800CB124
       addu      $4, $19, $0
      addu       $20, $2, $0
      beqz       $20, .L800CF800
       addu      $2, $16, $0
      lw         $2, 0x4($17)
      addu       $4, $17, $0
      lw         $2, 0xC($2)
      jalr       $2
       addiu     $5, $29, 0x48
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800CF7FC
       addu      $18, $16, $0
      lw         $2, 0x4($17)
      addu       $4, $17, $0
      lw         $2, 0x50($2)
      jalr       $2
       addiu     $5, $29, 0x4C
      addu       $16, $2, $0
      bne        $16, $18, .L800CF800
       addu      $2, $16, $0
      jal        func_800CB038
       addu      $4, $19, $0
      lw         $5, 0x48($29)
      addiu      $4, $0, 0x2
      sw         $4, 0x10($29)
      lw         $3, 0x4C($29)
      addu       $6, $2, $0
      andi       $2, $3, 0x1
      bnel       $2, $0, .L800CF734
       sw        $16, 0x14($29)
      and        $2, $3, $4
      beqz       $2, .L800CF730
       addiu     $2, $0, 0x3
      j          .L800CF734
       sw        $2, 0x14($29)
  .L800CF730:
      sw         $4, 0x14($29)
  .L800CF734:
      addu       $4, $20, $0
      lw         $2, 0x8($21)
      jalr       $2
       addiu     $7, $0, 0x1
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800CF7FC
       addu      $18, $16, $0
      lw         $2, 0x4($17)
      addu       $4, $17, $0
      lw         $2, 0x10($2)
      jalr       $2
       addiu     $5, $29, 0x18
      addu       $16, $2, $0
      bne        $16, $18, .L800CF7FC
       addu      $17, $16, $0
      addu       $4, $20, $0
      addiu      $5, $29, 0x28
      lw         $2, 0x18($29)
      lw         $3, 0x1C($29)
      lw         $7, 0x20($29)
      lw         $8, 0x24($29)
      addiu      $6, $29, 0x38
      sw         $2, 0x28($29)
      sw         $3, 0x2C($29)
      sw         $7, 0x30($29)
      sw         $8, 0x34($29)
      sw         $2, 0x38($29)
      sw         $3, 0x3C($29)
      sw         $7, 0x40($29)
      sw         $8, 0x44($29)
      lw         $2, 0xC($21)
      jalr       $2
       addiu     $7, $0, 0x2
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      bne        $16, $17, .L800CF800
       addu      $2, $16, $0
      beqz       $22, .L800CF7E4
       addiu     $5, $0, 0x2
      addiu      $5, $0, 0x1
  .L800CF7E4:
      lw         $2, 0x18($21)
      jalr       $2
       addu      $4, $20, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
  .L800CF7FC:
      addu       $2, $16, $0
  .L800CF800:
      lw         $31, 0x6C($29)
      lw         $22, 0x68($29)
      lw         $21, 0x64($29)
      lw         $20, 0x60($29)
      lw         $19, 0x5C($29)
      lw         $18, 0x58($29)
      lw         $17, 0x54($29)
      lw         $16, 0x50($29)
      jr         $31
       addiu     $29, $29, 0x70
.end func_800CF614

.globl func_800CF828
.ent func_800CF828
func_800CF828:
      addiu      $29, $29, -0x30
      sw         $20, 0x28($29)
      addu       $20, $4, $0
      sw         $19, 0x24($29)
      addu       $19, $5, $0
      sw         $16, 0x18($29)
      addiu      $16, $0, -0x4
      sw         $31, 0x2C($29)
      sw         $18, 0x20($29)
      bnez       $20, .L800CF880
       sw        $17, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBA6C)
      addiu      $4, $4, %lo(D_800FBA6C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBCC4)
      addiu      $6, $6, %lo(D_800FBCC4)
      jal        func_80002E80
       addiu     $7, $0, 0x3AC
  .L800CF880:
      bnez       $19, .L800CF8B4
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBB14)
      addiu      $4, $4, %lo(D_800FBB14)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBCC4)
      addiu      $6, $6, %lo(D_800FBCC4)
      jal        func_80002E80
       addiu     $7, $0, 0x3AD
  .L800CF8B4:
      jal        func_800CB094
       addu      $4, $19, $0
      addu       $17, $2, $0
      beqz       $17, .L800CF918
       addu      $4, $17, $0
      lw         $2, 0x4($17)
      lw         $2, 0x48($2)
      jalr       $2
       addiu     $5, $0, 0x1
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800CF918
       addu      $18, $16, $0
      addu       $4, $20, $0
      addu       $5, $19, $0
      jal        func_800D1724
       addu      $6, $2, $0
      addu       $16, $2, $0
      beq        $16, $18, .L800CF918
       addu      $4, $17, $0
      lw         $2, 0x4($17)
      lw         $2, 0x48($2)
      jalr       $2
       addu      $5, $0, $0
      addu       $16, $2, $0
  .L800CF918:
      addu       $2, $16, $0
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800CF828

.globl func_800CF93C
.ent func_800CF93C
func_800CF93C:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $19, 0x24($29)
      addu       $19, $6, $0
      sw         $18, 0x20($29)
      addiu      $18, $0, -0x4
      sw         $31, 0x28($29)
      bnez       $17, .L800CF990
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBB14)
      addiu      $4, $4, %lo(D_800FBB14)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBCDC)
      addiu      $6, $6, %lo(D_800FBCDC)
      jal        func_80002E80
       addiu     $7, $0, 0x3D2
  .L800CF990:
      jal        func_800CB0F4
       addu      $4, $17, $0
      addu       $16, $2, $0
      beqz       $16, .L800CF9E0
       addu      $2, $18, $0
      jal        func_800CB124
       addu      $4, $17, $0
      addu       $4, $2, $0
      beqz       $4, .L800CF9DC
       andi      $2, $19, 0x1
      beqz       $2, .L800CF9C4
       addiu     $5, $0, 0x2
      addiu      $5, $0, 0x1
  .L800CF9C4:
      lw         $2, 0x18($16)
      jalr       $2
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $18, $2, $0
  .L800CF9DC:
      addu       $2, $18, $0
  .L800CF9E0:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800CF93C

.globl func_800CF9FC
.ent func_800CF9FC
func_800CF9FC:
      addiu      $29, $29, -0x38
      sw         $20, 0x30($29)
      addu       $20, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $18, 0x28($29)
      addu       $18, $6, $0
      sw         $31, 0x34($29)
      sw         $19, 0x2C($29)
      sw         $16, 0x20($29)
      bnez       $17, .L800CFA58
       sw        $0, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBB14)
      addiu      $4, $4, %lo(D_800FBB14)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBCF4)
      addiu      $6, $6, %lo(D_800FBCF4)
      jal        func_80002E80
       addiu     $7, $0, 0x3F0
  .L800CFA58:
      jal        func_800CB000
       addu      $4, $17, $0
      bnez       $2, .L800CFA98
       addu      $4, $17, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBD0C)
      addiu      $4, $4, %lo(D_800FBD0C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBCF4)
      addiu      $6, $6, %lo(D_800FBCF4)
      jal        func_80002E80
       addiu     $7, $0, 0x3F1
      addu       $4, $17, $0
  .L800CFA98:
      addu       $5, $17, $0
      addiu      $6, $0, 0x1
      jal        func_800CF4D0
       addiu     $7, $29, 0x18
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800CFB18
       addu      $19, $16, $0
      addu       $4, $17, $0
      jal        func_800CF614
       and       $5, $18, $2
      addu       $16, $2, $0
      bne        $16, $19, .L800CFB04
       addu      $18, $16, $0
      addu       $4, $20, $0
      jal        func_800CF828
       addu      $5, $17, $0
      addu       $16, $2, $0
      bne        $16, $18, .L800CFB04
       addu      $19, $16, $0
      addu       $4, $20, $0
      addu       $5, $17, $0
      jal        func_800D17D8
       addiu     $6, $0, 0x3
      addu       $16, $2, $0
      beq        $16, $19, .L800CFB18
       nop
  .L800CFB04:
      addu       $4, $17, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      jal        func_800CF4D0
       addu      $7, $5, $0
  .L800CFB18:
      lw         $4, 0x18($29)
      beqz       $4, .L800CFB6C
       addiu     $17, $0, 0x1
      beq        $16, $17, .L800CFB40
       addu      $5, $4, $0
      addu       $6, $0, $0
      jal        func_800CF4D0
       addu      $7, $6, $0
      j          .L800CFB70
       addu      $2, $16, $0
  .L800CFB40:
      jal        func_800CAF30
       nop
      bnez       $2, .L800CFB70
       addu      $2, $16, $0
      addu       $4, $20, $0
      lw         $5, 0x18($29)
      jal        func_800CF93C
       addu      $6, $0, $0
      addu       $16, $2, $0
      bnel       $16, $17, .L800CFB6C
       addiu     $16, $0, 0x1
  .L800CFB6C:
      addu       $2, $16, $0
  .L800CFB70:
      lw         $31, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800CF9FC

.globl func_800CFB90
.ent func_800CFB90
func_800CFB90:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $16, 0x20($29)
      addu       $16, $0, $0
      bnez       $17, .L800CFBD8
       sw        $31, 0x28($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBB14)
      addiu      $4, $4, %lo(D_800FBB14)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBD64)
      addiu      $6, $6, %lo(D_800FBD64)
      jal        func_80002E80
       addiu     $7, $0, 0x41D
  .L800CFBD8:
      jal        func_800CB000
       addu      $4, $17, $0
      bnez       $2, .L800CFC14
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBD0C)
      addiu      $4, $4, %lo(D_800FBD0C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBD64)
      addiu      $6, $6, %lo(D_800FBD64)
      jal        func_80002E80
       addiu     $7, $0, 0x41E
  .L800CFC14:
      jal        func_800CB094
       addu      $4, $17, $0
      addu       $4, $2, $0
      beqz       $4, .L800CFC70
       addu      $2, $16, $0
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $29, 0x18
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800CFC70
       addu      $2, $16, $0
      lw         $2, 0x18($29)
      bne        $17, $2, .L800CFC70
       addu      $2, $16, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      jal        func_800CF4D0
       addu      $7, $5, $0
      addu       $16, $2, $0
      addu       $2, $16, $0
  .L800CFC70:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800CFB90

.globl func_800CFC84
.ent func_800CFC84
func_800CFC84:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $18, 0x20($29)
      addiu      $18, $0, -0x4
      bnez       $16, .L800CFCD4
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBB14)
      addiu      $4, $4, %lo(D_800FBB14)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBD80)
      addiu      $6, $6, %lo(D_800FBD80)
      jal        func_80002E80
       addiu     $7, $0, 0x43E
  .L800CFCD4:
      bnez       $17, .L800CFD08
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBD9C)
      addiu      $4, $4, %lo(D_800FBD9C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBD80)
      addiu      $6, $6, %lo(D_800FBD80)
      jal        func_80002E80
       addiu     $7, $0, 0x43F
  .L800CFD08:
      jal        func_800CB124
       addu      $4, $16, $0
      beq        $2, $17, .L800CFD44
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBDEC)
      addiu      $4, $4, %lo(D_800FBDEC)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBD80)
      addiu      $6, $6, %lo(D_800FBD80)
      jal        func_80002E80
       addiu     $7, $0, 0x440
  .L800CFD44:
      jal        func_800CB000
       addu      $4, $16, $0
      bnez       $2, .L800CFD80
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBD0C)
      addiu      $4, $4, %lo(D_800FBD0C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBD80)
      addiu      $6, $6, %lo(D_800FBD80)
      jal        func_80002E80
       addiu     $7, $0, 0x441
  .L800CFD80:
      jal        func_800CB0F4
       addu      $4, $16, $0
      beql       $2, $0, .L800CFDAC
       addu      $2, $18, $0
      lw         $2, 0x50($2)
      jalr       $2
       addu      $4, $17, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $18, $2, $0
      addu       $2, $18, $0
  .L800CFDAC:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CFC84

.globl func_800CFDC4
.ent func_800CFDC4
func_800CFDC4:
      beqz       $5, .L800CFDE4
       nop
      lbu        $5, 0x0($5)
      beqz       $5, .L800CFDEC
       addu      $2, $0, $0
      xori       $2, $5, 0x5F
      jr         $31
       sltu      $2, $0, $2
  .L800CFDE4:
      jr         $31
       addu      $2, $0, $0
  .L800CFDEC:
      jr         $31
       nop
.end func_800CFDC4

.globl func_800CFDF4
.ent func_800CFDF4
func_800CFDF4:
      addiu      $29, $29, -0x28
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $16, 0x18($29)
      addu       $16, $6, $0
      sw         $31, 0x24($29)
      bnez       $18, func_800CFE40
       sw        $17, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBE48)
      addiu      $4, $4, %lo(D_800FBE48)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBE8C)
      addiu      $6, $6, %lo(D_800FBE8C)
      jal        func_80002E80
       addiu     $7, $0, 0x47C
.end func_800CFDF4

.globl func_800CFE40
.ent func_800CFE40
func_800CFE40:
      beqz       $16, .L800CFEA0
       addu      $17, $0, $0
      lbu        $2, 0x0($16)
      beqz       $2, .L800CFEA0
       addu      $4, $16, $0
      lui        $5, %hi(D_800FAD28)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FAD28)
      beql       $2, $0, .L800CFEA4
       addiu     $17, $0, 0x1
      jal        func_800CB000
       addu      $4, $18, $0
      beqz       $2, .L800CFEA4
       addu      $4, $16, $0
      lui        $5, %hi(D_800FAD18)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FAD18)
      beqz       $2, .L800CFEA0
       addu      $4, $16, $0
      lui        $5, %hi(D_800FAD20)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FAD20)
      bnez       $2, .L800CFEA8
       addu      $2, $17, $0
  .L800CFEA0:
      addiu      $17, $0, 0x1
  .L800CFEA4:
      addu       $2, $17, $0
  .L800CFEA8:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800CFE40

.globl func_800CFEC0
.ent func_800CFEC0
func_800CFEC0:
      addiu      $29, $29, -0x30
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $19, 0x24($29)
      addu       $19, $5, $0
      sw         $16, 0x18($29)
      addu       $16, $6, $0
      sw         $17, 0x1C($29)
      addu       $17, $7, $0
      bnez       $18, .L800CFF18
       sw        $31, 0x28($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBA6C)
      addiu      $4, $4, %lo(D_800FBA6C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBE9C)
      addiu      $6, $6, %lo(D_800FBE9C)
      jal        func_80002E80
       addiu     $7, $0, 0x49F
  .L800CFF18:
      bnez       $19, .L800CFF4C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBEAC)
      addiu      $4, $4, %lo(D_800FBEAC)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBE9C)
      addiu      $6, $6, %lo(D_800FBE9C)
      jal        func_80002E80
       addiu     $7, $0, 0x4A0
  .L800CFF4C:
      bnez       $16, .L800CFF80
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB7F4)
      addiu      $4, $4, %lo(D_800FB7F4)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBE9C)
      addiu      $6, $6, %lo(D_800FBE9C)
      jal        func_80002E80
       addiu     $7, $0, 0x4A1
  .L800CFF80:
      bnez       $17, .L800CFFB8
       lui       $5, %hi(func_800CEB7C)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB848)
      addiu      $4, $4, %lo(D_800FB848)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBE9C)
      addiu      $6, $6, %lo(D_800FBE9C)
      jal        func_80002E80
       addiu     $7, $0, 0x4A2
      lui        $5, %hi(func_800CEB7C)
  .L800CFFB8:
      sw         $0, 0x0($16)
      sw         $0, 0x0($17)
      lw         $2, 0x8($18)
      addiu      $5, $5, %lo(func_800CEB7C)
      lw         $2, 0x0($2)
      addu       $6, $0, $0
      sw         $16, 0x10($29)
      sw         $17, 0x14($29)
      lw         $4, 0x8($18)
      lw         $2, 0x20($2)
      jalr       $2
       addu      $7, $19, $0
      lw         $2, 0x0($16)
      beqz       $2, .L800CFFFC
       addu      $3, $0, $0
      lw         $2, 0x0($17)
      sltu       $3, $3, $2
  .L800CFFFC:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x30
.end func_800CFEC0

.globl func_800D001C
.ent func_800D001C
func_800D001C:
      addiu      $29, $29, -0x30
      sw         $20, 0x28($29)
      lw         $20, 0x40($29)
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $19, 0x24($29)
      addu       $19, $6, $0
      sw         $18, 0x20($29)
      addu       $18, $7, $0
      bnez       $16, .L800D007C
       sw        $31, 0x2C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBA6C)
      addiu      $4, $4, %lo(D_800FBA6C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBF00)
      addiu      $6, $6, %lo(D_800FBF00)
      jal        func_80002E80
       addiu     $7, $0, 0x4C4
  .L800D007C:
      bnez       $17, .L800D00B0
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBB14)
      addiu      $4, $4, %lo(D_800FBB14)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBF00)
      addiu      $6, $6, %lo(D_800FBF00)
      jal        func_80002E80
       addiu     $7, $0, 0x4C5
  .L800D00B0:
      bnez       $18, .L800D00E4
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB7F4)
      addiu      $4, $4, %lo(D_800FB7F4)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBF00)
      addiu      $6, $6, %lo(D_800FBF00)
      jal        func_80002E80
       addiu     $7, $0, 0x4C6
  .L800D00E4:
      bnez       $20, .L800D011C
       addu      $4, $16, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FB848)
      addiu      $4, $4, %lo(D_800FB848)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBF00)
      addiu      $6, $6, %lo(D_800FBF00)
      jal        func_80002E80
       addiu     $7, $0, 0x4C7
      addu       $4, $16, $0
  .L800D011C:
      jal        func_800CFDC4
       addu      $5, $19, $0
      beqz       $2, .L800D0144
       addu      $4, $16, $0
      addu       $5, $19, $0
      addu       $6, $18, $0
      jal        func_800CFEC0
       addu      $7, $20, $0
      j          .L800D0188
       nop
  .L800D0144:
      addu       $5, $17, $0
      jal        func_800CFDF4
       addu      $6, $19, $0
      beqz       $2, .L800D0188
       addu      $2, $0, $0
      jal        func_800CB124
       addu      $4, $17, $0
      addu       $4, $17, $0
      jal        func_800CB0F4
       sw        $2, 0x0($18)
      addu       $4, $2, $0
      sw         $4, 0x0($20)
      lw         $2, 0x0($18)
      beqz       $2, .L800D0184
       addu      $3, $0, $0
      sltu       $3, $3, $4
  .L800D0184:
      addu       $2, $3, $0
  .L800D0188:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D001C

.globl func_800D01A8
.ent func_800D01A8
func_800D01A8:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $5, $0
      sw         $17, 0x24($29)
      addu       $17, $6, $0
      sw         $18, 0x28($29)
      addu       $18, $7, $0
      bnez       $16, .L800D01F8
       sw        $31, 0x2C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBD9C)
      addiu      $4, $4, %lo(D_800FBD9C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBF14)
      addiu      $6, $6, %lo(D_800FBF14)
      jal        func_80002E80
       addiu     $7, $0, 0x4EA
  .L800D01F8:
      bnez       $17, .L800D0230
       lui       $2, %hi(D_800FAD28)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBF2C)
      addiu      $4, $4, %lo(D_800FBF2C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBF14)
      addiu      $6, $6, %lo(D_800FBF14)
      jal        func_80002E80
       addiu     $7, $0, 0x4EB
      lui        $2, %hi(D_800FAD28)
  .L800D0230:
      lw         $6, 0x40($29)
      addiu      $2, $2, %lo(D_800FAD28)
      sw         $2, 0x10($29)
      lw         $2, 0x48($29)
      lw         $7, 0x44($29)
      addu       $4, $16, $0
      sw         $0, 0x14($29)
      sw         $2, 0x18($29)
      lw         $2, 0x4C($17)
      jalr       $2
       addu      $5, $18, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D01A8

.globl func_800D027C
.ent func_800D027C
func_800D027C:
      addiu      $3, $4, -0x1
      sltiu      $2, $3, 0x7
      beqz       $2, .L800D02DC
       lui       $2, %hi(jtbl_800FBF80)
      addiu      $2, $2, %lo(jtbl_800FBF80)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800D02A4
.L800D02A4:
      jr         $31
       addiu     $2, $0, 0x4
  .globl .L800D02AC
.L800D02AC:
      jr         $31
       addiu     $2, $0, 0x6
  .globl .L800D02B4
.L800D02B4:
      jr         $31
       addiu     $2, $0, 0x2
  .globl .L800D02BC
.L800D02BC:
      jr         $31
       addiu     $2, $0, 0x3
  .globl .L800D02C4
.L800D02C4:
      jr         $31
       addiu     $2, $0, 0xA
  .globl .L800D02CC
.L800D02CC:
      jr         $31
       addiu     $2, $0, 0x8
  .globl .L800D02D4
.L800D02D4:
      jr         $31
       addiu     $2, $0, 0x9
  .L800D02DC:
      jr         $31
       addu      $2, $0, $0
.end func_800D027C

.globl func_800D02E4
.ent func_800D02E4
func_800D02E4:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      sw         $31, 0x14($29)
      jal        func_800D027C
       addu      $16, $4, $0
      bnez       $2, .L800D0360
       addiu     $3, $16, -0x8
      sltiu      $2, $3, 0x7
      beqz       $2, .L800D035C
       lui       $2, %hi(jtbl_800FBFA0)
      addiu      $2, $2, %lo(jtbl_800FBFA0)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800D0324
.L800D0324:
      j          .L800D0360
       addiu     $2, $0, 0x1
  .globl .L800D032C
.L800D032C:
      j          .L800D0360
       addiu     $2, $0, 0x5
  .globl .L800D0334
.L800D0334:
      j          .L800D0360
       addiu     $2, $0, 0x7
  .globl .L800D033C
.L800D033C:
      j          .L800D0360
       addiu     $2, $0, 0xB
  .globl .L800D0344
.L800D0344:
      j          .L800D0360
       addiu     $2, $0, 0xC
  .globl .L800D034C
.L800D034C:
      j          .L800D0360
       addiu     $2, $0, 0xD
  .globl .L800D0354
.L800D0354:
      j          .L800D0360
       addiu     $2, $0, 0xE
  .L800D035C:
      addu       $2, $0, $0
  .L800D0360:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D02E4

.globl func_800D0370
.ent func_800D0370
func_800D0370:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      bnez       $4, .L800D0394
       sw        $31, 0x14($29)
      beqz       $5, .L800D03AC
       addu      $2, $16, $0
      j          .L800D03B4
       nop
  .L800D0394:
      beqz       $5, .L800D03B4
       addu      $2, $16, $0
      jal        func_8005211C
       nop
      bnez       $2, .L800D03B4
       addu      $2, $16, $0
  .L800D03AC:
      addiu      $16, $0, 0x1
      addu       $2, $16, $0
  .L800D03B4:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D0370

.globl func_800D03C4
.ent func_800D03C4
func_800D03C4:
      addiu      $29, $29, -0x40
      sw         $22, 0x30($29)
      lw         $22, 0x50($29)
      sw         $19, 0x24($29)
      lw         $19, 0x54($29)
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $23, 0x34($29)
      addu       $23, $5, $0
      sw         $20, 0x28($29)
      addu       $20, $6, $0
      sw         $21, 0x2C($29)
      addu       $21, $7, $0
      sw         $31, 0x38($29)
      sw         $18, 0x20($29)
      bnez       $16, .L800D0434
       sw        $17, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBA6C)
      addiu      $4, $4, %lo(D_800FBA6C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBFBC)
      addiu      $6, $6, %lo(D_800FBFBC)
      jal        func_80002E80
       addiu     $7, $0, 0x56D
  .L800D0434:
      bnez       $20, .L800D0478
       nop
      bnez       $21, .L800D0478
       nop
      bnez       $22, .L800D0478
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBFD0)
      addiu      $4, $4, %lo(D_800FBFD0)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBFBC)
      addiu      $6, $6, %lo(D_800FBFBC)
      jal        func_80002E80
       addiu     $7, $0, 0x56E
  .L800D0478:
      bnez       $19, .L800D04AC
       addiu     $18, $16, 0xC
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC02C)
      addiu      $4, $4, %lo(D_800FC02C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FBFBC)
      addiu      $6, $6, %lo(D_800FBFBC)
      jal        func_80002E80
       addiu     $7, $0, 0x56F
  .L800D04AC:
      addu       $17, $0, $0
  .L800D04B0:
      jal        func_800CD26C
       addu      $4, $18, $0
      sltu       $2, $17, $2
      beqz       $2, .L800D0534
       addu      $4, $18, $0
      jal        func_800CD394
       addu      $5, $17, $0
      addu       $16, $2, $0
      beql       $16, $0, .L800D04B0
       addiu     $17, $17, 0x1
      lw         $2, 0x0($16)
      bnel       $23, $2, .L800D04B0
       addiu     $17, $17, 0x1
      lw         $5, 0xC($16)
      jal        func_800D0370
       addu      $4, $20, $0
      beql       $2, $0, .L800D04B0
       addiu     $17, $17, 0x1
      lw         $5, 0x10($16)
      jal        func_800D0370
       addu      $4, $21, $0
      beql       $2, $0, .L800D04B0
       addiu     $17, $17, 0x1
      lw         $5, 0x14($16)
      jal        func_800D0370
       addu      $4, $22, $0
      beqz       $2, .L800D04B0
       addiu     $17, $17, 0x1
      lw         $2, 0x18($16)
      bne        $19, $2, .L800D04B0
       addu      $2, $16, $0
      j          .L800D0538
       nop
  .L800D0534:
      addu       $2, $0, $0
  .L800D0538:
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
.end func_800D03C4

.globl func_800D0564
.ent func_800D0564
func_800D0564:
      addiu      $29, $29, -0x48
      sw         $21, 0x34($29)
      lw         $21, 0x58($29)
      sw         $22, 0x38($29)
      lw         $22, 0x5C($29)
      sw         $23, 0x3C($29)
      lw         $23, 0x60($29)
      sw         $30, 0x40($29)
      lw         $30, 0x64($29)
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $19, 0x2C($29)
      addu       $19, $6, $0
      sw         $20, 0x30($29)
      addu       $20, $7, $0
      sw         $18, 0x28($29)
      addu       $18, $0, $0
      sw         $31, 0x44($29)
      sw         $17, 0x24($29)
      bnez       $16, .L800D05E4
       sw        $5, 0x4C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBA6C)
      addiu      $4, $4, %lo(D_800FBA6C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FC074)
      addiu      $6, $6, %lo(D_800FC074)
      jal        func_80002E80
       addiu     $7, $0, 0x59B
  .L800D05E4:
      bnez       $23, .L800D0618
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC088)
      addiu      $4, $4, %lo(D_800FC088)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FC074)
      addiu      $6, $6, %lo(D_800FC074)
      jal        func_80002E80
       addiu     $7, $0, 0x59C
  .L800D0618:
      bnez       $19, .L800D065C
       nop
      bnez       $20, .L800D065C
       nop
      bnez       $21, .L800D065C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBFD0)
      addiu      $4, $4, %lo(D_800FBFD0)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FC074)
      addiu      $6, $6, %lo(D_800FC074)
      jal        func_80002E80
       addiu     $7, $0, 0x59D
  .L800D065C:
      bnez       $22, .L800D0694
       addu      $4, $16, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC02C)
      addiu      $4, $4, %lo(D_800FC02C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FC074)
      addiu      $6, $6, %lo(D_800FC074)
      jal        func_80002E80
       addiu     $7, $0, 0x59E
      addu       $4, $16, $0
  .L800D0694:
      addu       $6, $19, $0
      addu       $7, $20, $0
      lw         $5, 0x4C($29)
      addiu      $17, $4, 0xC
      sw         $21, 0x10($29)
      jal        func_800D03C4
       sw        $22, 0x14($29)
      addu       $16, $2, $0
      beqz       $16, .L800D06CC
       addu      $4, $0, $0
      addiu      $18, $0, 0x1
      sw         $23, 0x4($16)
      j          .L800D0778
       sw        $30, 0x8($16)
  .L800D06CC:
      addu       $5, $4, $0
      jal        func_800D27D0
       addiu     $6, $0, 0x1C
      addu       $16, $2, $0
      beqz       $16, .L800D077C
       addiu     $2, $0, 0x1
      beqz       $19, .L800D06FC
       nop
      jal        func_800523C0
       addu      $4, $19, $0
      beqz       $2, .L800D0778
       sw        $2, 0xC($16)
  .L800D06FC:
      beqz       $20, .L800D0714
       nop
      jal        func_800523C0
       addu      $4, $20, $0
      beqz       $2, .L800D0778
       sw        $2, 0x10($16)
  .L800D0714:
      beqz       $21, .L800D0730
       addu      $4, $17, $0
      jal        func_800523C0
       addu      $4, $21, $0
      beqz       $2, .L800D0778
       sw        $2, 0x14($16)
      addu       $4, $17, $0
  .L800D0730:
      addu       $5, $0, $0
      sw         $22, 0x18($16)
      sw         $23, 0x4($16)
      sw         $30, 0x8($16)
      lw         $3, 0x4C($29)
      addiu      $6, $29, 0x18
      jal        func_800CD3CC
       sw        $3, 0x0($16)
      beqz       $2, .L800D076C
       addu      $4, $17, $0
      lw         $5, 0x18($29)
      jal        func_800CD34C
       addu      $6, $16, $0
      j          .L800D0778
       addu      $18, $2, $0
  .L800D076C:
      jal        func_800CD370
       addu      $5, $16, $0
      addu       $18, $2, $0
  .L800D0778:
      addiu      $2, $0, 0x1
  .L800D077C:
      beq        $18, $2, .L800D079C
       addu      $2, $16, $0
      beqz       $16, .L800D079C
       nop
      jal        func_800D0888
       addu      $4, $16, $0
      addu       $16, $0, $0
      addu       $2, $16, $0
  .L800D079C:
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
.end func_800D0564

.globl func_800D07CC
.ent func_800D07CC
func_800D07CC:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      bnez       $16, .L800D0814
       sw        $31, 0x28($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBA6C)
      addiu      $4, $4, %lo(D_800FBA6C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FC0CC)
      addiu      $6, $6, %lo(D_800FC0CC)
      jal        func_80002E80
       addiu     $7, $0, 0x5D5
  .L800D0814:
      bnez       $17, .L800D0848
       addiu     $16, $16, 0xC
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC0E4)
      addiu      $4, $4, %lo(D_800FC0E4)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FC0CC)
      addiu      $6, $6, %lo(D_800FC0CC)
      jal        func_80002E80
       addiu     $7, $0, 0x5D6
  .L800D0848:
      addu       $4, $16, $0
      addu       $5, $17, $0
      jal        func_800CD3CC
       addiu     $6, $29, 0x18
      beqz       $2, .L800D086C
       addu      $4, $16, $0
      lw         $5, 0x18($29)
      jal        func_800CD34C
       addu      $6, $0, $0
  .L800D086C:
      jal        func_800D0888
       addu      $4, $17, $0
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D07CC

.globl func_800D0888
.ent func_800D0888
func_800D0888:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L800D08C8
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC0E4)
      addiu      $4, $4, %lo(D_800FC0E4)
      lui        $5, %hi(D_800FB774)
      lui        $6, %hi(D_800FC130)
      addiu      $5, $5, %lo(D_800FB774)
      addiu      $6, $6, %lo(D_800FC130)
      jal        func_80002E80
       addiu     $7, $0, 0x5F5
  .L800D08C8:
      lw         $4, 0xC($16)
      beqz       $4, .L800D08DC
       nop
      jal        func_800D2814
       nop
  .L800D08DC:
      lw         $4, 0x10($16)
      beqz       $4, .L800D08F0
       nop
      jal        func_800D2814
       nop
  .L800D08F0:
      lw         $4, 0x14($16)
      beqz       $4, .L800D0904
       nop
      jal        func_800D2814
       nop
  .L800D0904:
      jal        func_800D2814
       addu      $4, $16, $0
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D0888

.globl func_800D091C
.ent func_800D091C
func_800D091C:
      addiu      $29, $29, -0x30
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $20, 0x28($29)
      lw         $20, 0x48($29)
      addu       $4, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $18, 0x20($29)
      addiu      $18, $0, -0x4
      beqz       $16, .L800D0A64
       sw        $31, 0x2C($29)
      lw         $5, 0x10($16)
      jal        func_800D0370
       nop
      beqz       $2, .L800D0A68
       addu      $2, $18, $0
      lw         $5, 0x14($16)
      lw         $4, 0x40($29)
      jal        func_800D0370
       nop
      beqz       $2, .L800D0A68
       addu      $2, $18, $0
      lw         $4, 0x18($16)
      jal        func_800D02E4
       nop
      bne        $20, $2, .L800D0A68
       addu      $2, $18, $0
      lw         $2, 0x4($16)
      beqz       $2, .L800D0A64
       addiu     $2, $0, 0x2
      beq        $17, $2, .L800D09D4
       slti      $2, $17, 0x3
      beqz       $2, .L800D09C0
       addiu     $2, $0, 0x1
      beq        $17, $2, .L800D0A04
       addu      $2, $18, $0
      j          .L800D0A68
       nop
  .L800D09C0:
      addiu      $2, $0, 0x3
      beq        $17, $2, .L800D0A2C
       nop
      j          .L800D0A64
       addiu     $18, $0, -0x4
  .L800D09D4:
      bne        $19, $17, .L800D0A68
       addu      $2, $18, $0
      lw         $2, 0x14($16)
      sw         $2, 0x10($29)
      lw         $2, 0x18($16)
      sw         $2, 0x14($29)
      lw         $4, 0x8($16)
      lw         $5, 0x0($16)
      lw         $6, 0xC($16)
      lw         $7, 0x10($16)
      j          .L800D0A4C
       nop
  .L800D0A04:
      bne        $19, $17, .L800D0A68
       nop
      lw         $2, 0x18($16)
      sw         $2, 0x10($29)
      lw         $4, 0x8($16)
      lw         $5, 0x0($16)
      lw         $6, 0xC($16)
      lw         $7, 0x14($16)
      j          .L800D0A4C
       nop
  .L800D0A2C:
      bne        $19, $17, .L800D0A68
       addu      $2, $18, $0
      lw         $2, 0x18($16)
      lw         $7, 0x44($29)
      sw         $2, 0x10($29)
      lw         $4, 0x8($16)
      lw         $5, 0x0($16)
      lw         $6, 0xC($16)
  .L800D0A4C:
      lw         $2, 0x4($16)
      jalr       $2
       nop
      jal        func_800CC3A8
       addu      $4, $2, $0
      addu       $18, $2, $0
  .L800D0A64:
      addu       $2, $18, $0
  .L800D0A68:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D091C

.globl func_800D0A88
.ent func_800D0A88
func_800D0A88:
      addiu      $29, $29, -0x70
      sw         $18, 0x50($29)
      lw         $18, 0x80($29)
      sw         $19, 0x54($29)
      lw         $19, 0x88($29)
      sw         $16, 0x48($29)
      lw         $16, 0x8C($29)
      sw         $23, 0x64($29)
      lw         $23, 0x90($29)
      sw         $30, 0x68($29)
      lw         $30, 0x98($29)
      sw         $20, 0x58($29)
      addu       $20, $4, $0
      sw         $22, 0x60($29)
      addu       $22, $5, $0
      sw         $17, 0x4C($29)
      addu       $17, $6, $0
      sw         $21, 0x5C($29)
      addu       $21, $7, $0
      bnez       $20, .L800D0B08
       sw        $31, 0x6C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBA6C)
      addiu      $4, $4, %lo(D_800FBA6C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FC148)
      addiu      $6, $6, %lo(D_800FC148)
      jal        func_80002E80
       addiu     $7, $0, 0x64F
  .L800D0B08:
      bnez       $23, .L800D0B3C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC088)
      addiu      $4, $4, %lo(D_800FC088)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FC148)
      addiu      $6, $6, %lo(D_800FC148)
      jal        func_80002E80
       addiu     $7, $0, 0x650
  .L800D0B3C:
      bnez       $17, .L800D0B80
       nop
      bnez       $18, .L800D0B80
       nop
      bnez       $19, .L800D0B80
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBFD0)
      addiu      $4, $4, %lo(D_800FBFD0)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FC148)
      addiu      $6, $6, %lo(D_800FC148)
      jal        func_80002E80
       addiu     $7, $0, 0x651
  .L800D0B80:
      bnez       $16, .L800D0BB8
       addiu     $2, $29, 0x44
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC02C)
      addiu      $4, $4, %lo(D_800FC02C)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FC148)
      addiu      $6, $6, %lo(D_800FC148)
      jal        func_80002E80
       addiu     $7, $0, 0x652
      addiu      $2, $29, 0x44
  .L800D0BB8:
      sw         $2, 0x10($29)
      addu       $4, $20, $0
      addu       $5, $22, $0
      addu       $6, $17, $0
      jal        func_800D001C
       addiu     $7, $29, 0x40
      beql       $2, $0, .L800D0CFC
       addu      $16, $0, $0
      lw         $2, 0x84($29)
      sw         $21, 0x20($29)
      sw         $18, 0x24($29)
      sw         $19, 0x2C($29)
      sw         $2, 0x28($29)
      addiu      $2, $0, 0x3
      bne        $21, $2, .L800D0C08
       nop
      jal        func_800D02E4
       addu      $4, $16, $0
      j          .L800D0C14
       sw        $2, 0x30($29)
  .L800D0C08:
      jal        func_800D027C
       addu      $4, $16, $0
      sw         $2, 0x30($29)
  .L800D0C14:
      lui        $2, %hi(func_800D091C)
      addiu      $2, $2, %lo(func_800D091C)
      sw         $2, 0x34($29)
      jal        func_800CB094
       addu      $4, $22, $0
      bnez       $30, .L800D0C5C
       addu      $4, $20, $0
      addu       $5, $2, $0
      addu       $6, $17, $0
      lw         $2, 0x94($29)
      addu       $7, $18, $0
      sw         $19, 0x10($29)
      sw         $16, 0x14($29)
      sw         $23, 0x18($29)
      jal        func_800D0564
       sw        $2, 0x1C($29)
      j          .L800D0C78
       addiu     $17, $0, 0x15
  .L800D0C5C:
      addu       $5, $2, $0
      addu       $6, $17, $0
      addu       $7, $18, $0
      sw         $19, 0x10($29)
      jal        func_800D03C4
       sw        $16, 0x14($29)
      addiu      $17, $0, 0x16
  .L800D0C78:
      sw         $2, 0x38($29)
      lw         $2, 0x38($29)
      beqz       $2, .L800D0CF0
       addu      $5, $17, $0
      lw         $2, 0x44($29)
      lw         $4, 0x40($29)
      lw         $2, 0x20($2)
      jalr       $2
       addiu     $6, $29, 0x20
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      addiu      $18, $0, 0x1
      bne        $16, $18, .L800D0CDC
       addu      $5, $17, $0
      lw         $2, 0x44($29)
      lw         $4, 0x40($29)
      lw         $2, 0x24($2)
      jalr       $2
       addiu     $6, $29, 0x20
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      beq        $16, $18, .L800D0D00
       addu      $2, $16, $0
  .L800D0CDC:
      lw         $5, 0x38($29)
      jal        func_800D07CC
       addu      $4, $20, $0
      j          .L800D0D00
       addu      $2, $16, $0
  .L800D0CF0:
      bnez       $30, .L800D0CFC
       addu      $16, $0, $0
      addiu      $16, $0, -0x5
  .L800D0CFC:
      addu       $2, $16, $0
  .L800D0D00:
      lw         $31, 0x6C($29)
      lw         $30, 0x68($29)
      lw         $23, 0x64($29)
      lw         $22, 0x60($29)
      lw         $21, 0x5C($29)
      lw         $20, 0x58($29)
      lw         $19, 0x54($29)
      lw         $18, 0x50($29)
      lw         $17, 0x4C($29)
      lw         $16, 0x48($29)
      jr         $31
       addiu     $29, $29, 0x70
.end func_800D0A88

.globl func_800D0D30
.ent func_800D0D30
func_800D0D30:
      jr         $31
       addu      $2, $0, $0
.end func_800D0D30

.globl func_800D0D38
.ent func_800D0D38
func_800D0D38:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      bnez       $4, .L800D0D54
       sw        $31, 0x14($29)
      j          .L800D0D8C
       addiu     $2, $0, -0x4
  .L800D0D54:
      jal        func_800CB094
       nop
      bnez       $2, .L800D0D6C
       addu      $4, $2, $0
      j          .L800D0D8C
       addiu     $2, $0, 0x1
  .L800D0D6C:
      addu       $5, $0, $0
      lw         $2, 0x4($4)
      addu       $6, $5, $0
      lw         $2, 0x30($2)
      jalr       $2
       addu      $7, $16, $0
      jal        func_800CC3A8
       addu      $4, $2, $0
  .L800D0D8C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D0D38

.globl func_800D0D9C
.ent func_800D0D9C
func_800D0D9C:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800D0D9C

.globl func_800D0DA4
.ent func_800D0DA4
func_800D0DA4:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800D0DA4

.globl func_800D0DAC
.ent func_800D0DAC
func_800D0DAC:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $6, $0
      beqz       $4, .L800D0DD0
       sw        $31, 0x1C($29)
      jal        func_800CE980
       nop
      bnez       $2, .L800D0DD8
       nop
  .L800D0DD0:
      j          .L800D0E1C
       addiu     $2, $0, -0x4
  .L800D0DD8:
      lw         $4, 0x8($2)
      lw         $2, 0x0($4)
      lw         $2, 0x10($2)
      jalr       $2
       addiu     $5, $29, 0x10
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      bne        $4, $2, .L800D0E14
       nop
      lw         $4, 0x10($29)
      lw         $2, 0x0($4)
      lw         $2, 0x1C($2)
      jalr       $2
       addu      $5, $16, $0
      addu       $4, $2, $0
  .L800D0E14:
      jal        func_800CC3A8
       nop
  .L800D0E1C:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D0DAC

.globl func_800D0E2C
.ent func_800D0E2C
func_800D0E2C:
      addiu      $29, $29, -0x58
      sw         $22, 0x48($29)
      lw         $22, 0x68($29)
      sw         $19, 0x3C($29)
      lw         $19, 0x6C($29)
      sw         $23, 0x4C($29)
      lw         $23, 0x74($29)
      sw         $18, 0x38($29)
      addu       $18, $4, $0
      sw         $17, 0x34($29)
      addu       $17, $6, $0
      sw         $21, 0x44($29)
      addu       $21, $7, $0
      sw         $31, 0x50($29)
      sw         $20, 0x40($29)
      beqz       $18, .L800D0E84
       sw        $16, 0x30($29)
      jal        func_800CE980
       nop
      addu       $16, $2, $0
      bnez       $16, .L800D0E8C
       addu      $4, $16, $0
  .L800D0E84:
      j          .L800D0F6C
       addiu     $2, $0, -0x4
  .L800D0E8C:
      jal        func_800CFDC4
       addu      $5, $19, $0
      beqz       $2, .L800D0EF0
       addu      $4, $16, $0
      addu       $5, $19, $0
      addiu      $6, $29, 0x20
      jal        func_800CFEC0
       addiu     $7, $29, 0x24
      beqz       $2, .L800D0EE8
       addu      $4, $16, $0
      lw         $5, 0x20($29)
      lw         $6, 0x24($29)
      addu       $7, $17, $0
      sw         $21, 0x10($29)
      sw         $22, 0x14($29)
      jal        func_800D01A8
       sw        $23, 0x18($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800D0F64
       addu      $17, $0, $0
      j          .L800D0F54
       nop
  .L800D0EE8:
      j          .L800D0F48
       addu      $16, $0, $0
  .L800D0EF0:
      lw         $4, 0x8($16)
      lw         $2, 0x0($4)
      lw         $2, 0x10($2)
      jalr       $2
       addiu     $5, $29, 0x28
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800D0F64
       addu      $20, $16, $0
      lw         $4, 0x28($29)
      addu       $5, $18, $0
      lw         $2, 0x0($4)
      addu       $6, $21, $0
      sw         $19, 0x10($29)
      sw         $17, 0x14($29)
      sw         $23, 0x18($29)
      lw         $2, 0x20($2)
      jalr       $2
       addu      $7, $22, $0
      addu       $16, $2, $0
      beql       $16, $20, .L800D0F48
       addu      $17, $0, $0
  .L800D0F48:
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800D0F64
       nop
  .L800D0F54:
      beqz       $17, .L800D0F64
       nop
      jal        func_800D2814
       addu      $4, $17, $0
  .L800D0F64:
      jal        func_800CC3A8
       addu      $4, $16, $0
  .L800D0F6C:
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
.end func_800D0E2C

.globl func_800D0F98
.ent func_800D0F98
func_800D0F98:
      jr         $31
       addu      $2, $0, $0
.end func_800D0F98

.globl func_800D0FA0
.ent func_800D0FA0
func_800D0FA0:
      addiu      $29, $29, -0x38
      sw         $16, 0x28($29)
      addu       $16, $4, $0
      sw         $18, 0x30($29)
      addu       $18, $6, $0
      sw         $17, 0x2C($29)
      addu       $17, $7, $0
      beqz       $16, .L800D0FD4
       sw        $31, 0x34($29)
      jal        func_800CE980
       nop
      bnez       $2, .L800D0FDC
       nop
  .L800D0FD4:
      j          .L800D1040
       addiu     $2, $0, -0x4
  .L800D0FDC:
      lw         $4, 0x8($2)
      lw         $2, 0x0($4)
      lw         $2, 0x10($2)
      jalr       $2
       addiu     $5, $29, 0x20
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      bne        $4, $2, .L800D1038
       addu      $5, $16, $0
      lw         $4, 0x20($29)
      lw         $2, 0x4C($29)
      lw         $7, 0x48($29)
      lw         $3, 0x0($4)
      sw         $2, 0x14($29)
      lw         $2, 0x50($29)
      sw         $2, 0x18($29)
      lw         $2, 0x54($29)
      sw         $17, 0x10($29)
      sw         $2, 0x1C($29)
      lw         $2, 0x24($3)
      jalr       $2
       addu      $6, $18, $0
      addu       $4, $2, $0
  .L800D1038:
      jal        func_800CC3A8
       nop
  .L800D1040:
      lw         $31, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800D0FA0

.globl func_800D1058
.ent func_800D1058
func_800D1058:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $16, 0x18($29)
      addu       $16, $7, $0
      bnez       $4, .L800D107C
       sw        $31, 0x20($29)
      j          .L800D10B4
       addiu     $2, $0, -0x4
  .L800D107C:
      jal        func_800CB094
       nop
      addu       $4, $2, $0
      bnel       $4, $0, .L800D1098
       sw        $16, 0x10($29)
      j          .L800D10B4
       addu      $2, $0, $0
  .L800D1098:
      sw         $17, 0x14($29)
      lw         $2, 0x4($4)
      lw         $2, 0x38($2)
      jalr       $2
       addiu     $5, $29, 0x10
      jal        func_800CC3A8
       addu      $4, $2, $0
  .L800D10B4:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D1058

.globl func_800D10C8
.ent func_800D10C8
func_800D10C8:
      jr         $31
       addu      $2, $0, $0
.end func_800D10C8

.globl func_800D10D0
.ent func_800D10D0
func_800D10D0:
      jr         $31
       addu      $2, $0, $0
.end func_800D10D0

.globl func_800D10D8
.ent func_800D10D8
func_800D10D8:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800D10D8

.globl func_800D10E0
.ent func_800D10E0
func_800D10E0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      bnez       $4, .L800D10F8
       addu      $2, $4, $0
      j          .L800D1124
       addiu     $2, $0, -0x4
  .L800D10F8:
      jal        func_800CB094
       addu      $4, $2, $0
      addu       $4, $2, $0
      beqz       $4, .L800D1124
       addu      $2, $0, $0
      lw         $2, 0x4($4)
      lw         $2, 0x48($2)
      jalr       $2
       addiu     $5, $0, 0x1
      jal        func_800CC3A8
       addu      $4, $2, $0
  .L800D1124:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D10E0

.globl func_800D1130
.ent func_800D1130
func_800D1130:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $31, 0x18($29)
      bnez       $4, .L800D1150
       sw        $16, 0x10($29)
      j          .L800D1188
       addiu     $2, $0, -0x4
  .L800D1150:
      jal        func_800CB094
       nop
      addu       $16, $2, $0
      beqz       $16, .L800D1188
       addu      $2, $0, $0
      jal        func_800CED8C
       addu      $4, $17, $0
      lw         $3, 0x4($16)
      addu       $4, $16, $0
      lw         $3, 0x48($3)
      jalr       $3
       addu      $5, $2, $0
      jal        func_800CC3A8
       addu      $4, $2, $0
  .L800D1188:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D1130

.globl func_800D119C
.ent func_800D119C
func_800D119C:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      beqz       $4, .L800D11C0
       sw        $31, 0x1C($29)
      jal        func_800CE980
       nop
      bnez       $2, .L800D11C8
       nop
  .L800D11C0:
      j          .L800D1210
       addiu     $2, $0, -0x4
  .L800D11C8:
      lw         $4, 0x8($2)
      lw         $2, 0x0($4)
      lw         $2, 0x10($2)
      jalr       $2
       addiu     $5, $29, 0x10
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      bne        $4, $2, .L800D1208
       nop
      lw         $4, 0x10($29)
      lw         $2, 0x0($4)
      lw         $2, 0x28($2)
      jalr       $2
       addu      $5, $16, $0
      j          .L800D1210
       sltiu     $2, $2, 0x1
  .L800D1208:
      jal        func_800CC3A8
       nop
  .L800D1210:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D119C

.globl func_800D1220
.ent func_800D1220
func_800D1220:
      jr         $31
       addu      $2, $0, $0
.end func_800D1220

.globl func_800D1228
.ent func_800D1228
func_800D1228:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800D1228

.globl func_800D1230
.ent func_800D1230
func_800D1230:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800D1230

.globl func_800D1238
.ent func_800D1238
func_800D1238:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $31, 0x24($29)
      beqz       $17, .L800D1268
       sw        $16, 0x18($29)
      jal        func_800CE980
       nop
      bnez       $2, .L800D1270
       nop
  .L800D1268:
      j          .L800D12B4
       addiu     $2, $0, -0x4
  .L800D1270:
      lw         $4, 0x8($2)
      lw         $2, 0x0($4)
      lw         $2, 0x10($2)
      jalr       $2
       addiu     $5, $29, 0x10
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800D12AC
       addu      $4, $17, $0
      jal        func_800CB204
       addu      $5, $18, $0
      beqz       $2, .L800D12AC
       nop
      jal        func_800CB2CC
       addu      $4, $2, $0
  .L800D12AC:
      jal        func_800CC3A8
       addu      $4, $16, $0
  .L800D12B4:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D1238

.globl func_800D12CC
.ent func_800D12CC
func_800D12CC:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $6, $0
      beqz       $4, .L800D12F8
       sw        $31, 0x1C($29)
      jal        func_800CE980
       nop
      beql       $2, $0, .L800D1344
       addiu     $2, $0, -0x4
      bnez       $16, .L800D1300
       nop
  .L800D12F8:
      j          .L800D1344
       addiu     $2, $0, -0x4
  .L800D1300:
      lw         $4, 0x8($2)
      lw         $2, 0x0($4)
      lw         $2, 0x10($2)
      jalr       $2
       addiu     $5, $29, 0x10
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      bne        $4, $2, .L800D133C
       addu      $5, $16, $0
      lw         $4, 0x10($29)
      lw         $2, 0x0($4)
      lw         $2, 0xC($2)
      jalr       $2
       addu      $6, $0, $0
      addu       $4, $2, $0
  .L800D133C:
      jal        func_800CC3A8
       nop
  .L800D1344:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D12CC

.globl func_800D1354
.ent func_800D1354
func_800D1354:
      jr         $31
       addu      $2, $0, $0
.end func_800D1354

.globl func_800D135C
.ent func_800D135C
func_800D135C:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $16, 0x18($29)
      addu       $16, $6, $0
      beqz       $4, .L800D1388
       sw        $31, 0x20($29)
      jal        func_800CE980
       nop
      bnez       $2, .L800D1390
       addu      $4, $2, $0
  .L800D1388:
      j          .L800D13B0
       addiu     $2, $0, -0x4
  .L800D1390:
      addiu      $5, $0, 0x8
      addu       $6, $17, $0
      addiu      $7, $0, 0x2016
      sw         $16, 0x10($29)
      jal        func_800CEF0C
       sw        $0, 0x14($29)
      jal        func_800CC3A8
       addu      $4, $2, $0
  .L800D13B0:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D135C

.globl func_800D13C4
.ent func_800D13C4
func_800D13C4:
      jr         $31
       addu      $2, $0, $0
.end func_800D13C4

.globl func_800D13CC
.ent func_800D13CC
func_800D13CC:
      addiu      $29, $29, -0x18
      beqz       $4, .L800D13E8
       sw        $31, 0x10($29)
      jal        func_800CEE9C
       nop
      j          .L800D13EC
       addiu     $2, $0, 0x1
  .L800D13E8:
      addiu      $2, $0, -0x4
  .L800D13EC:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D13CC

.globl func_800D13F8
.ent func_800D13F8
func_800D13F8:
      addiu      $29, $29, -0x18
      beqz       $4, .L800D1414
       sw        $31, 0x10($29)
      beqz       $5, .L800D1428
       addiu     $2, $0, -0x4
      bnez       $6, .L800D141C
       nop
  .L800D1414:
      j          .L800D1428
       addiu     $2, $0, -0x4
  .L800D141C:
      lw         $4, 0x4($4)
      jal        func_800CF00C
       nop
  .L800D1428:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D13F8

.globl func_800D1434
.ent func_800D1434
func_800D1434:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      beqz       $17, .L800D1494
       sw        $31, 0x1C($29)
      beqz       $16, .L800D14A8
       addiu     $2, $0, -0x4
      jal        func_800CB000
       addu      $4, $16, $0
      beqz       $2, .L800D1484
       addu      $5, $16, $0
      lw         $4, 0x4($17)
      jal        func_800CF9FC
       addu      $6, $18, $0
      j          .L800D14A8
       nop
  .L800D1484:
      jal        func_800CB01C
       addu      $4, $16, $0
      bnez       $2, .L800D149C
       addu      $5, $16, $0
  .L800D1494:
      j          .L800D14A8
       addiu     $2, $0, -0x4
  .L800D149C:
      lw         $4, 0x4($17)
      jal        func_800CF224
       addu      $6, $18, $0
  .L800D14A8:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D1434

.globl func_800D14C0
.ent func_800D14C0
func_800D14C0:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      beqz       $17, .L800D1508
       sw        $31, 0x18($29)
      beqz       $16, .L800D151C
       addiu     $2, $0, -0x4
      jal        func_800CB000
       addu      $4, $16, $0
      bnez       $2, .L800D1510
       nop
      jal        func_800CB01C
       addu      $4, $16, $0
      addu       $3, $2, $0
      bnez       $3, .L800D151C
       addiu     $2, $0, 0x1
  .L800D1508:
      j          .L800D151C
       addiu     $2, $0, -0x4
  .L800D1510:
      lw         $4, 0x4($17)
      jal        func_800CFB90
       addu      $5, $16, $0
  .L800D151C:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D14C0

.globl func_800D1530
.ent func_800D1530
func_800D1530:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      beqz       $16, .L800D155C
       sw        $31, 0x1C($29)
      bnez       $18, .L800D1564
       nop
  .L800D155C:
      j          .L800D1588
       addiu     $2, $0, -0x4
  .L800D1564:
      jal        func_800CB000
       addu      $4, $17, $0
      bnez       $2, .L800D157C
       addu      $5, $17, $0
      j          .L800D1588
       addiu     $2, $0, 0x1
  .L800D157C:
      lw         $4, 0x4($16)
      jal        func_800CFC84
       addu      $6, $18, $0
  .L800D1588:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D1530

.globl func_800D15A0
.ent func_800D15A0
func_800D15A0:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      beqz       $17, .L800D1608
       sw        $31, 0x1C($29)
      jal        func_800CB000
       addu      $4, $16, $0
      bnez       $2, .L800D160C
       addiu     $2, $0, 0x1
      jal        func_800CB01C
       addu      $4, $16, $0
      beqz       $2, .L800D160C
       addiu     $2, $0, -0x4
      jal        func_800CB074
       addu      $4, $16, $0
      beqz       $2, .L800D1608
       addu      $5, $16, $0
      lw         $4, 0x4($17)
      jal        func_800CF340
       addu      $6, $18, $0
      j          .L800D160C
       nop
  .L800D1608:
      addiu      $2, $0, -0x4
  .L800D160C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D15A0

.globl func_800D1624
.ent func_800D1624
func_800D1624:
      jr         $31
       addiu     $2, $0, -0x3
.end func_800D1624

.globl func_800D162C
.ent func_800D162C
func_800D162C:
      jr         $31
       addiu     $2, $0, -0x3
.end func_800D162C

.globl func_800D1634
.ent func_800D1634
func_800D1634:
      jr         $31
       addiu     $2, $0, -0x3
.end func_800D1634

.globl func_800D163C
.ent func_800D163C
func_800D163C:
      jr         $31
       addiu     $2, $0, -0x3
.end func_800D163C

.globl func_800D1644
.ent func_800D1644
func_800D1644:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      lw         $17, 0x40($29)
      sw         $18, 0x28($29)
      lw         $18, 0x44($29)
      sw         $31, 0x2C($29)
      beqz       $4, .L800D167C
       sw        $16, 0x20($29)
      beqz       $5, .L800D170C
       addiu     $2, $0, -0x4
      beqz       $17, .L800D170C
       nop
      bnez       $18, .L800D1684
       addiu     $7, $29, 0x18
  .L800D167C:
      j          .L800D170C
       addiu     $2, $0, -0x4
  .L800D1684:
      lw         $4, 0x4($4)
      addiu      $2, $29, 0x1C
      jal        func_800D001C
       sw        $2, 0x10($29)
      beqz       $2, .L800D170C
       addu      $2, $0, $0
      lw         $2, 0x1C($29)
      lw         $4, 0x18($29)
      lw         $2, 0x48($2)
      jalr       $2
       addu      $5, $17, $0
      addu       $16, $2, $0
      blez       $16, .L800D1704
       nop
      lw         $7, 0x4($18)
      sltu       $2, $7, $16
      bnez       $2, .L800D16FC
       addiu     $2, $0, -0x9
      lw         $6, 0x0($18)
      beql       $6, $0, .L800D170C
       sw        $16, 0x4($18)
      lw         $2, 0x1C($29)
      lw         $4, 0x18($29)
      lw         $2, 0x44($2)
      jalr       $2
       addu      $5, $17, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      j          .L800D170C
       sw        $16, 0x4($18)
  .L800D16FC:
      j          .L800D170C
       sw        $16, 0x4($18)
  .L800D1704:
      jal        func_800CC3A0
       addu      $4, $16, $0
  .L800D170C:
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D1644

.globl func_800D1724
.ent func_800D1724
func_800D1724:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $19, 0x24($29)
      addu       $19, $6, $0
      sw         $18, 0x20($29)
      addiu      $18, $0, -0x4
      sw         $31, 0x28($29)
      bnez       $17, .L800D1778
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBB14)
      addiu      $4, $4, %lo(D_800FBB14)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FC160)
      addiu      $6, $6, %lo(D_800FC160)
      jal        func_80002E80
       addiu     $7, $0, 0xAE3
  .L800D1778:
      jal        func_800CB0F4
       addu      $4, $17, $0
      addu       $16, $2, $0
      beqz       $16, .L800D17BC
       addu      $2, $18, $0
      jal        func_800CB124
       addu      $4, $17, $0
      beql       $2, $0, .L800D17BC
       addu      $2, $18, $0
      addu       $4, $2, $0
      lw         $2, 0x14($16)
      jalr       $2
       addu      $5, $19, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $18, $2, $0
      addu       $2, $18, $0
  .L800D17BC:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D1724

.globl func_800D17D8
.ent func_800D17D8
func_800D17D8:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $19, 0x24($29)
      addu       $19, $6, $0
      sw         $18, 0x20($29)
      addiu      $18, $0, -0x4
      sw         $31, 0x28($29)
      bnez       $17, .L800D182C
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBB14)
      addiu      $4, $4, %lo(D_800FBB14)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FC170)
      addiu      $6, $6, %lo(D_800FC170)
      jal        func_80002E80
       addiu     $7, $0, 0xB05
  .L800D182C:
      jal        func_800CB0F4
       addu      $4, $17, $0
      addu       $16, $2, $0
      beqz       $16, .L800D1870
       addu      $2, $18, $0
      jal        func_800CB124
       addu      $4, $17, $0
      beql       $2, $0, .L800D1870
       addu      $2, $18, $0
      addu       $4, $2, $0
      lw         $2, 0x10($16)
      jalr       $2
       addu      $5, $19, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $18, $2, $0
      addu       $2, $18, $0
  .L800D1870:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D17D8

.globl func_800D188C
.ent func_800D188C
func_800D188C:
      jr         $31
       addiu     $2, $0, -0x3
.end func_800D188C

.globl func_800D1894
.ent func_800D1894
func_800D1894:
      addiu      $29, $29, -0x60
      sw         $16, 0x48($29)
      addu       $16, $5, $0
      sw         $18, 0x50($29)
      addu       $18, $6, $0
      sw         $19, 0x54($29)
      addiu      $19, $0, -0x4
      sw         $31, 0x58($29)
      bnez       $16, .L800D18E8
       sw        $17, 0x4C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FBB14)
      addiu      $4, $4, %lo(D_800FBB14)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FC188)
      addiu      $6, $6, %lo(D_800FC188)
      jal        func_80002E80
       addiu     $7, $0, 0xB42
  .L800D18E8:
      bnez       $18, .L800D191C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC198)
      addiu      $4, $4, %lo(D_800FC198)
      lui        $5, %hi(D_800FB774)
      addiu      $5, $5, %lo(D_800FB774)
      lui        $6, %hi(D_800FC188)
      addiu      $6, $6, %lo(D_800FC188)
      jal        func_80002E80
       addiu     $7, $0, 0xB43
  .L800D191C:
      jal        func_800CB094
       addu      $4, $16, $0
      beqz       $2, .L800D19B4
       addu      $2, $19, $0
      jal        func_800CB0F4
       addu      $4, $16, $0
      addu       $17, $2, $0
      beqz       $17, .L800D19B4
       addu      $2, $19, $0
      jal        func_800CB124
       addu      $4, $16, $0
      beqz       $2, .L800D19B0
       addiu     $5, $29, 0x28
      addu       $4, $2, $0
      sw         $0, 0x1C($29)
      sw         $0, 0x18($29)
      sw         $0, 0x24($29)
      sw         $0, 0x20($29)
      lw         $2, 0x0($18)
      sw         $2, 0x20($29)
      lw         $3, 0x4($18)
      addiu      $6, $29, 0x38
      sw         $0, 0x28($29)
      sw         $0, 0x2C($29)
      sw         $2, 0x30($29)
      sw         $0, 0x38($29)
      sw         $0, 0x3C($29)
      sw         $2, 0x40($29)
      sw         $3, 0x24($29)
      sw         $3, 0x34($29)
      sw         $3, 0x44($29)
      lw         $2, 0xC($17)
      jalr       $2
       addiu     $7, $0, 0x2
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $19, $2, $0
  .L800D19B0:
      addu       $2, $19, $0
  .L800D19B4:
      lw         $31, 0x58($29)
      lw         $19, 0x54($29)
      lw         $18, 0x50($29)
      lw         $17, 0x4C($29)
      lw         $16, 0x48($29)
      jr         $31
       addiu     $29, $29, 0x60
.end func_800D1894

.globl func_800D19D0
.ent func_800D19D0
func_800D19D0:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      lw         $17, 0x40($29)
      sw         $16, 0x20($29)
      lw         $16, 0x44($29)
      beqz       $4, .L800D1A04
       sw        $31, 0x28($29)
      beqz       $5, .L800D1A50
       addiu     $2, $0, -0x4
      beqz       $17, .L800D1A50
       nop
      bnez       $16, .L800D1A0C
       addiu     $7, $29, 0x18
  .L800D1A04:
      j          .L800D1A50
       addiu     $2, $0, -0x4
  .L800D1A0C:
      lw         $4, 0x4($4)
      addiu      $2, $29, 0x1C
      jal        func_800D001C
       sw        $2, 0x10($29)
      beqz       $2, .L800D1A50
       addu      $2, $0, $0
      jal        func_80017780
       addu      $4, $16, $0
      addu       $5, $17, $0
      addu       $6, $16, $0
      lw         $3, 0x1C($29)
      lw         $4, 0x18($29)
      lw         $3, 0x40($3)
      jalr       $3
       addiu     $7, $2, 0x1
      jal        func_800CC3A0
       addu      $4, $2, $0
  .L800D1A50:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D19D0

.globl func_800D1A64
.ent func_800D1A64
func_800D1A64:
      addiu      $29, $29, -0x38
      lw         $3, 0x48($29)
      lw         $8, 0x4C($29)
      lw         $9, 0x50($29)
      beqz       $4, .L800D1A9C
       sw        $31, 0x30($29)
      beqz       $5, .L800D1AD0
       addiu     $2, $0, -0x4
      beqz       $3, .L800D1AD0
       nop
      beqz       $8, .L800D1AD0
       nop
      bnez       $9, .L800D1AA4
       addiu     $2, $0, 0x2
  .L800D1A9C:
      j          .L800D1AD0
       addiu     $2, $0, -0x4
  .L800D1AA4:
      sw         $2, 0x14($29)
      lw         $2, 0x54($29)
      sw         $7, 0x10($29)
      sw         $3, 0x18($29)
      sw         $8, 0x1C($29)
      sw         $9, 0x20($29)
      sw         $0, 0x28($29)
      sw         $2, 0x24($29)
      lw         $4, 0x4($4)
      jal        func_800D0A88
       addiu     $7, $0, 0x2
  .L800D1AD0:
      lw         $31, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800D1A64

.globl func_800D1ADC
.ent func_800D1ADC
func_800D1ADC:
      addiu      $29, $29, -0x38
      lw         $3, 0x48($29)
      lw         $8, 0x4C($29)
      lw         $9, 0x50($29)
      beqz       $4, .L800D1B14
       sw        $31, 0x30($29)
      beqz       $5, .L800D1B4C
       addiu     $2, $0, -0x4
      beqz       $3, .L800D1B4C
       nop
      beqz       $8, .L800D1B4C
       nop
      bnez       $9, .L800D1B1C
       addiu     $2, $0, 0x2
  .L800D1B14:
      j          .L800D1B4C
       addiu     $2, $0, -0x4
  .L800D1B1C:
      sw         $2, 0x14($29)
      lw         $2, 0x54($29)
      sw         $7, 0x10($29)
      sw         $3, 0x18($29)
      sw         $8, 0x1C($29)
      sw         $9, 0x20($29)
      sw         $2, 0x24($29)
      addiu      $2, $0, 0x1
      sw         $2, 0x28($29)
      lw         $4, 0x4($4)
      jal        func_800D0A88
       addiu     $7, $0, 0x2
  .L800D1B4C:
      lw         $31, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800D1ADC

.globl func_800D1B58
.ent func_800D1B58
func_800D1B58:
      addiu      $29, $29, -0x38
      lw         $3, 0x48($29)
      lw         $8, 0x4C($29)
      beqz       $4, .L800D1B8C
       sw        $31, 0x30($29)
      beqz       $5, .L800D1BC0
       addiu     $2, $0, -0x4
      beqz       $7, .L800D1BC0
       nop
      beqz       $3, .L800D1BC0
       nop
      bnez       $8, .L800D1B94
       addiu     $2, $0, 0x1
  .L800D1B8C:
      j          .L800D1BC0
       addiu     $2, $0, -0x4
  .L800D1B94:
      sw         $2, 0x14($29)
      lw         $2, 0x50($29)
      sw         $0, 0x10($29)
      sw         $7, 0x18($29)
      sw         $3, 0x1C($29)
      sw         $8, 0x20($29)
      sw         $0, 0x28($29)
      sw         $2, 0x24($29)
      lw         $4, 0x4($4)
      jal        func_800D0A88
       addiu     $7, $0, 0x1
  .L800D1BC0:
      lw         $31, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800D1B58

.globl func_800D1BCC
.ent func_800D1BCC
func_800D1BCC:
      addiu      $29, $29, -0x38
      lw         $2, 0x48($29)
      lw         $8, 0x4C($29)
      beqz       $4, .L800D1C00
       sw        $31, 0x30($29)
      beql       $5, $0, .L800D1C34
       addiu     $2, $0, -0x4
      beql       $7, $0, .L800D1C34
       addiu     $2, $0, -0x4
      beql       $2, $0, .L800D1C34
       addiu     $2, $0, -0x4
      bnel       $8, $0, .L800D1C08
       sw        $2, 0x1C($29)
  .L800D1C00:
      j          .L800D1C34
       addiu     $2, $0, -0x4
  .L800D1C08:
      lw         $2, 0x50($29)
      addiu      $3, $0, 0x1
      sw         $0, 0x10($29)
      sw         $3, 0x14($29)
      sw         $7, 0x18($29)
      sw         $8, 0x20($29)
      sw         $3, 0x28($29)
      sw         $2, 0x24($29)
      lw         $4, 0x4($4)
      jal        func_800D0A88
       addu      $7, $3, $0
  .L800D1C34:
      lw         $31, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800D1BCC

.globl func_800D1C40
.ent func_800D1C40
func_800D1C40:
      addiu      $29, $29, -0x38
      lw         $3, 0x48($29)
      beqz       $4, .L800D1C68
       sw        $31, 0x30($29)
      beqz       $5, .L800D1C9C
       addiu     $2, $0, -0x4
      beqz       $7, .L800D1C9C
       nop
      bnez       $3, .L800D1C70
       addiu     $2, $0, 0x3
  .L800D1C68:
      j          .L800D1C9C
       addiu     $2, $0, -0x4
  .L800D1C70:
      sw         $2, 0x14($29)
      lw         $2, 0x4C($29)
      sw         $0, 0x10($29)
      sw         $0, 0x18($29)
      sw         $7, 0x1C($29)
      sw         $3, 0x20($29)
      sw         $0, 0x28($29)
      sw         $2, 0x24($29)
      lw         $4, 0x4($4)
      jal        func_800D0A88
       addiu     $7, $0, 0x3
  .L800D1C9C:
      lw         $31, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800D1C40

.globl func_800D1CA8
.ent func_800D1CA8
func_800D1CA8:
      addiu      $29, $29, -0x38
      lw         $3, 0x48($29)
      beqz       $4, .L800D1CD0
       sw        $31, 0x30($29)
      beqz       $5, .L800D1D08
       addiu     $2, $0, -0x4
      beqz       $7, .L800D1D08
       nop
      bnez       $3, .L800D1CD8
       addiu     $2, $0, 0x3
  .L800D1CD0:
      j          .L800D1D08
       addiu     $2, $0, -0x4
  .L800D1CD8:
      sw         $2, 0x14($29)
      lw         $2, 0x4C($29)
      sw         $0, 0x10($29)
      sw         $0, 0x18($29)
      sw         $7, 0x1C($29)
      sw         $3, 0x20($29)
      sw         $2, 0x24($29)
      addiu      $2, $0, 0x1
      sw         $2, 0x28($29)
      lw         $4, 0x4($4)
      jal        func_800D0A88
       addiu     $7, $0, 0x3
  .L800D1D08:
      lw         $31, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800D1CA8

.globl func_800D1D14
.ent func_800D1D14
func_800D1D14:
      addiu      $29, $29, -0x18
      beqz       $4, .L800D1D28
       sw        $31, 0x10($29)
      bnez       $5, .L800D1D30
       nop
  .L800D1D28:
      j          .L800D1D3C
       addiu     $2, $0, -0x4
  .L800D1D30:
      lw         $4, 0x4($4)
      jal        func_800CF93C
       nop
  .L800D1D3C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D1D14

.globl func_800D1D48
.ent func_800D1D48
func_800D1D48:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $6, $0
      beqz       $4, .L800D1D64
       sw        $31, 0x24($29)
      bnez       $5, .L800D1D6C
       addu      $6, $0, $0
  .L800D1D64:
      j          .L800D1DF0
       addiu     $2, $0, -0x4
  .L800D1D6C:
      addiu      $2, $29, 0x1C
      lw         $4, 0x4($4)
      addiu      $7, $29, 0x18
      jal        func_800D001C
       sw        $2, 0x10($29)
      beqz       $2, .L800D1DEC
       addiu     $2, $0, 0x4
      beq        $16, $2, .L800D1DA0
       addiu     $2, $0, 0x5
      beq        $16, $2, .L800D1DBC
       addiu     $2, $0, -0x3
      j          .L800D1DF0
       nop
  .L800D1DA0:
      addiu      $5, $0, 0xA
      lui        $6, %hi(D_800FACB8)
      lw         $2, 0x1C($29)
      lw         $4, 0x18($29)
      lw         $2, 0x24($2)
      j          .L800D1DD4
       addiu     $6, $6, %lo(D_800FACB8)
  .L800D1DBC:
      addiu      $5, $0, 0xA
      lui        $6, %hi(D_800FACC4)
      lw         $2, 0x1C($29)
      lw         $4, 0x18($29)
      lw         $2, 0x24($2)
      addiu      $6, $6, %lo(D_800FACC4)
  .L800D1DD4:
      jalr       $2
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      j          .L800D1DF0
       nop
  .L800D1DEC:
      addu       $2, $0, $0
  .L800D1DF0:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D1D48

.globl func_800D1E00
.ent func_800D1E00
func_800D1E00:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $6, $0
      sw         $16, 0x20($29)
      addu       $16, $0, $0
      beqz       $4, .L800D1E24
       sw        $31, 0x28($29)
      bnez       $5, .L800D1E2C
       addu      $6, $0, $0
  .L800D1E24:
      j          .L800D1E94
       addiu     $2, $0, -0x4
  .L800D1E2C:
      addiu      $2, $29, 0x1C
      lw         $4, 0x4($4)
      addiu      $7, $29, 0x18
      jal        func_800D001C
       sw        $2, 0x10($29)
      beqz       $2, .L800D1E90
       xori      $2, $16, 0x1
      beqz       $17, .L800D1E60
       addiu     $2, $0, 0x1
      beq        $17, $2, .L800D1E68
       addiu     $16, $0, -0x3
      j          .L800D1E90
       xori      $2, $16, 0x1
  .L800D1E60:
      j          .L800D1E6C
       addiu     $5, $0, 0x11
  .L800D1E68:
      addiu      $5, $0, 0x10
  .L800D1E6C:
      lw         $2, 0x1C($29)
      lw         $4, 0x18($29)
      lw         $2, 0x24($2)
      jalr       $2
       addu      $6, $0, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      xori       $2, $16, 0x1
  .L800D1E90:
      sltiu      $2, $2, 0x1
  .L800D1E94:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D1E00

.globl func_800D1EA8
.ent func_800D1EA8
func_800D1EA8:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $6, $0
      beqz       $4, .L800D1EC4
       sw        $31, 0x24($29)
      bnez       $5, .L800D1ECC
       addu      $6, $0, $0
  .L800D1EC4:
      j          .L800D1F00
       addiu     $2, $0, -0x4
  .L800D1ECC:
      addiu      $2, $29, 0x1C
      lw         $4, 0x4($4)
      addiu      $7, $29, 0x18
      jal        func_800D001C
       sw        $2, 0x10($29)
      beqz       $2, .L800D1EFC
       addiu     $5, $0, 0x9
      lw         $2, 0x1C($29)
      lw         $4, 0x18($29)
      lw         $2, 0x24($2)
      jalr       $2
       addu      $6, $16, $0
  .L800D1EFC:
      addu       $2, $0, $0
  .L800D1F00:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D1EA8

.globl func_800D1F10
.ent func_800D1F10
func_800D1F10:
      jr         $31
       addiu     $2, $0, -0x3
.end func_800D1F10

.globl func_800D1F18
.ent func_800D1F18
func_800D1F18:
      jr         $31
       addiu     $2, $0, -0x3
.end func_800D1F18

.globl func_800D1F20
.ent func_800D1F20
func_800D1F20:
      jr         $31
       addiu     $2, $0, -0x3
.end func_800D1F20

.globl func_800D1F28
.ent func_800D1F28
func_800D1F28:
      jr         $31
       addiu     $2, $0, -0x3
.end func_800D1F28

.globl func_800D1F30
.ent func_800D1F30
func_800D1F30:
      jr         $31
       addiu     $2, $0, -0x3
.end func_800D1F30

.globl func_800D1F38
.ent func_800D1F38
func_800D1F38:
      addiu      $29, $29, -0x28
      beqz       $4, .L800D1F4C
       sw        $31, 0x20($29)
      bnez       $5, .L800D1F54
       addu      $6, $0, $0
  .L800D1F4C:
      j          .L800D1F98
       addiu     $2, $0, -0x4
  .L800D1F54:
      addiu      $2, $29, 0x1C
      lw         $4, 0x4($4)
      addiu      $7, $29, 0x18
      jal        func_800D001C
       sw        $2, 0x10($29)
      beqz       $2, .L800D1F94
       addiu     $5, $0, 0xB
      lw         $2, 0x1C($29)
      lw         $4, 0x18($29)
      lw         $2, 0x24($2)
      jalr       $2
       addu      $6, $0, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      j          .L800D1F98
       nop
  .L800D1F94:
      addu       $2, $0, $0
  .L800D1F98:
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D1F38

.globl func_800D1FA4
.ent func_800D1FA4
func_800D1FA4:
      addiu      $29, $29, -0x28
      beqz       $4, .L800D1FB8
       sw        $31, 0x20($29)
      bnez       $5, .L800D1FC0
       addu      $6, $0, $0
  .L800D1FB8:
      j          .L800D2004
       addiu     $2, $0, -0x4
  .L800D1FC0:
      addiu      $2, $29, 0x1C
      lw         $4, 0x4($4)
      addiu      $7, $29, 0x18
      jal        func_800D001C
       sw        $2, 0x10($29)
      beqz       $2, .L800D2000
       addiu     $5, $0, 0xC
      lw         $2, 0x1C($29)
      lw         $4, 0x18($29)
      lw         $2, 0x24($2)
      jalr       $2
       addu      $6, $0, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      j          .L800D2004
       nop
  .L800D2000:
      addu       $2, $0, $0
  .L800D2004:
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D1FA4

.globl func_800D2010
.ent func_800D2010
func_800D2010:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $6, $0
      beqz       $4, .L800D2034
       sw        $31, 0x24($29)
      beqz       $5, .L800D2074
       addiu     $2, $0, -0x4
      bnez       $16, .L800D203C
       addiu     $2, $29, 0x1C
  .L800D2034:
      j          .L800D2074
       addiu     $2, $0, -0x4
  .L800D203C:
      addu       $6, $0, $0
      sw         $2, 0x10($29)
      lw         $4, 0x4($4)
      jal        func_800D001C
       addiu     $7, $29, 0x18
      beqz       $2, .L800D2074
       addu      $2, $0, $0
      lw         $2, 0x1C($29)
      lw         $4, 0x18($29)
      lw         $2, 0x28($2)
      jalr       $2
       addu      $5, $16, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
  .L800D2074:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D2010

.globl func_800D2084
.ent func_800D2084
func_800D2084:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      beqz       $4, .L800D20A0
       sw        $31, 0x14($29)
      bnez       $16, .L800D20A8
       nop
  .L800D20A0:
      j          .L800D20C0
       addiu     $2, $0, -0x4
  .L800D20A8:
      jal        func_800CEDE4
       nop
      beql       $2, $0, .L800D20C0
       addiu     $2, $0, -0x5
      sw         $2, 0x0($16)
      addiu      $2, $0, 0x1
  .L800D20C0:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D2084

.globl func_800D20D0
.ent func_800D20D0
func_800D20D0:
      addiu      $2, $0, 0x1
      jal        func_800CBB1C
       addu      $4, $16, $0
      beqz       $2, .L800D210C
       addiu     $2, $0, -0x4
      jal        func_800CBB74
       addu      $4, $16, $0
      beqz       $2, .L800D2108
       addu      $5, $16, $0
      lw         $4, 0x4($17)
      jal        func_800CFE40
       addu      $6, $18, $0
.end func_800D20D0

.globl func_800D2100
.ent func_800D2100
func_800D2100:
      addiu      $29, $29, -0x40
      sw         $20, 0x30($29)
  .L800D2108:
      addu       $20, $4, $0
  .L800D210C:
      sw         $31, 0x38($29)
      sw         $21, 0x34($29)
      sw         $19, 0x2C($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      bnez       $20, .L800D2154
       sw        $16, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC200)
      addiu      $4, $4, %lo(D_800FC200)
      lui        $5, %hi(D_800FC254)
      addiu      $5, $5, %lo(D_800FC254)
      lui        $6, %hi(D_800FC274)
      addiu      $6, $6, %lo(D_800FC274)
      jal        func_80002E80
       addiu     $7, $0, 0x7C
  .L800D2154:
      addiu      $19, $0, 0x8
      addu       $18, $0, $0
      addiu      $16, $0, 0x1
  .L800D2160:
      addu       $4, $20, $0
      addu       $5, $18, $0
      addu       $6, $0, $0
      jal        func_8005492C
       addu      $7, $6, $0
      bnel       $2, $16, .L800D2184
       addiu     $19, $19, 0x4
      j          .L800D2160
       addiu     $18, $18, 0x1
  .L800D2184:
      beqz       $18, .L800D21E4
       addu      $17, $0, $0
      addiu      $21, $0, 0x1
      addu       $4, $20, $0
  .L800D2194:
      addu       $5, $17, $0
      addiu      $6, $29, 0x18
      jal        func_8005492C
       addiu     $7, $29, 0x1C
      jal        func_800CC3A0
       addu      $4, $2, $0
      bne        $2, $21, .L800D21D8
       addiu     $17, $17, 0x1
      lw         $4, 0x18($29)
      jal        func_80017780
       nop
      lw         $4, 0x1C($29)
      jal        func_80017780
       addu      $16, $2, $0
      addiu      $2, $2, 0x8
      addu       $16, $16, $2
      addu       $19, $19, $16
  .L800D21D8:
      sltu       $2, $17, $18
      bnez       $2, .L800D2194
       addu      $4, $20, $0
  .L800D21E4:
      addiu      $19, $19, 0x10
      lui        $2, (0x10000 >> 16)
      sltu       $2, $2, $19
      bnez       $2, .L800D21FC
       addu      $3, $0, $0
      addu       $3, $19, $0
  .L800D21FC:
      lw         $31, 0x38($29)
      lw         $21, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x40
.end func_800D2100

.globl func_800D2224
.ent func_800D2224
func_800D2224:
      addiu      $29, $29, -0x48
      sw         $16, 0x28($29)
      addu       $16, $4, $0
      sw         $21, 0x3C($29)
      addu       $21, $5, $0
      sw         $31, 0x44($29)
      sw         $22, 0x40($29)
      sw         $20, 0x38($29)
      sw         $19, 0x34($29)
      sw         $18, 0x30($29)
      sw         $17, 0x2C($29)
      bnez       $16, .L800D2284
       sw        $0, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC290)
      addiu      $4, $4, %lo(D_800FC290)
      lui        $5, %hi(D_800FC254)
      addiu      $5, $5, %lo(D_800FC254)
      lui        $6, %hi(D_800FC2E0)
      addiu      $6, $6, %lo(D_800FC2E0)
      jal        func_80002E80
       addiu     $7, $0, 0xA4
  .L800D2284:
      bnel       $21, $0, .L800D22BC
       addu      $4, $16, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC200)
      addiu      $4, $4, %lo(D_800FC200)
      lui        $5, %hi(D_800FC254)
      addiu      $5, $5, %lo(D_800FC254)
      lui        $6, %hi(D_800FC2E0)
      addiu      $6, $6, %lo(D_800FC2E0)
      jal        func_80002E80
       addiu     $7, $0, 0xA5
      addu       $4, $16, $0
  .L800D22BC:
      addiu      $5, $0, 0x5
      addiu      $6, $0, 0x12
      jal        func_800A28EC
       addiu     $7, $29, 0x18
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800D2440
       addu      $18, $16, $0
      lw         $4, 0x18($29)
      lui        $5, (0x444D4844 >> 16)
      jal        func_8009BC88
       ori       $5, $5, (0x444D4844 & 0xFFFF)
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      bne        $16, $18, .L800D2440
       addu      $17, $16, $0
      lw         $4, 0x18($29)
      jal        func_8009BC88
       lui       $5, (0x10000 >> 16)
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      bne        $16, $17, .L800D2440
       addu      $20, $0, $0
      addiu      $17, $0, 0x1
  .L800D232C:
      addu       $4, $21, $0
      addu       $5, $20, $0
      addu       $6, $0, $0
      jal        func_8005492C
       addu      $7, $6, $0
      bne        $2, $17, .L800D2350
       sltiu     $2, $20, 0x401
      j          .L800D232C
       addiu     $20, $20, 0x1
  .L800D2350:
      beqz       $2, .L800D2440
       addiu     $16, $0, -0x2D
      lw         $4, 0x18($29)
      jal        func_8009BC88
       addu      $5, $20, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      bne        $16, $17, .L800D2440
       nop
      beqz       $20, .L800D2404
       addu      $17, $0, $0
      addiu      $22, $0, 0x1
      addu       $4, $21, $0
  .L800D2388:
      addu       $5, $17, $0
      addiu      $6, $29, 0x1C
      jal        func_8005492C
       addiu     $7, $29, 0x20
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      bne        $16, $22, .L800D23F4
       addu      $19, $16, $0
      lw         $4, 0x18($29)
      lw         $5, 0x1C($29)
      jal        func_8009BD0C
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      bne        $16, $19, .L800D2404
       addu      $18, $16, $0
      lw         $4, 0x18($29)
      lw         $5, 0x20($29)
      jal        func_8009BD0C
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      bne        $16, $18, .L800D2408
       addiu     $2, $0, 0x1
  .L800D23F4:
      addiu      $17, $17, 0x1
      sltu       $2, $17, $20
      bnel       $2, $0, .L800D2388
       addu      $4, $21, $0
  .L800D2404:
      addiu      $2, $0, 0x1
  .L800D2408:
      bne        $16, $2, .L800D2440
       nop
      jal        func_800CC3A8
       addu      $4, $2, $0
      lw         $4, 0x18($29)
      lw         $3, 0x4($4)
      addu       $5, $2, $0
      lw         $2, 0x4($3)
      jalr       $2
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      sw         $0, 0x18($29)
  .L800D2440:
      lw         $2, 0x18($29)
      beqz       $2, .L800D2470
       addu      $2, $16, $0
      jal        func_800CC3A8
       addu      $4, $16, $0
      lw         $4, 0x18($29)
      lw         $3, 0x4($4)
      addu       $5, $2, $0
      lw         $2, 0x4($3)
      jalr       $2
       nop
      addu       $2, $16, $0
  .L800D2470:
      lw         $31, 0x44($29)
      lw         $22, 0x40($29)
      lw         $21, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_800D2224

.globl func_800D2498
.ent func_800D2498
func_800D2498:
      addiu      $29, $29, -0x40
      sw         $20, 0x38($29)
      addu       $20, $5, $0
      addiu      $5, $0, 0x5
      addiu      $6, $0, 0x11
      addiu      $7, $29, 0x10
      sw         $31, 0x3C($29)
      sw         $19, 0x34($29)
      sw         $18, 0x30($29)
      sw         $17, 0x2C($29)
      sw         $16, 0x28($29)
      jal        func_800A28EC
       sw        $0, 0x10($29)
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800D2674
       addu      $17, $16, $0
      lw         $4, 0x10($29)
      jal        func_8009BE10
       addiu     $5, $29, 0x14
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      bne        $16, $17, .L800D2674
       addu      $18, $16, $0
      lui        $3, (0x444D4844 >> 16)
      lw         $2, 0x14($29)
      ori        $3, $3, (0x444D4844 & 0xFFFF)
      bne        $2, $3, .L800D2674
       addiu     $16, $0, -0x25
      lw         $4, 0x10($29)
      jal        func_8009BE10
       addiu     $5, $29, 0x18
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      bne        $16, $18, .L800D2674
       addu      $17, $16, $0
      lw         $3, 0x18($29)
      lui        $2, (0x10000 >> 16)
      bne        $3, $2, .L800D2674
       addiu     $16, $0, -0x25
      lw         $4, 0x10($29)
      jal        func_8009BE10
       addiu     $5, $29, 0x1C
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      bne        $16, $17, .L800D2674
       nop
      lw         $3, 0x1C($29)
      sltiu      $2, $3, 0x401
      beql       $2, $0, .L800D2674
       addiu     $16, $0, -0x2D
      beqz       $3, .L800D2638
       addu      $18, $0, $0
      addiu      $19, $0, 0x1
      addu       $5, $0, $0
  .L800D2588:
      addiu      $6, $0, 0x1
      lw         $4, 0x10($29)
      addiu      $7, $29, 0x20
      sw         $0, 0x20($29)
      jal        func_8009BEEC
       sw        $0, 0x24($29)
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      bne        $16, $19, .L800D25F8
       addu      $17, $16, $0
      lw         $4, 0x10($29)
      addu       $5, $0, $0
      addiu      $6, $0, 0x1
      jal        func_8009BEEC
       addiu     $7, $29, 0x24
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      bne        $16, $17, .L800D25F8
       addu      $4, $20, $0
      lw         $5, 0x20($29)
      lw         $6, 0x24($29)
      jal        func_80054530
       addiu     $7, $0, -0x1
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
  .L800D25F8:
      lw         $4, 0x20($29)
      beqz       $4, .L800D260C
       nop
      jal        func_800D2814
       nop
  .L800D260C:
      lw         $4, 0x24($29)
      beqz       $4, .L800D2620
       nop
      jal        func_800D2814
       nop
  .L800D2620:
      bne        $16, $19, .L800D2674
       addiu     $18, $18, 0x1
      lw         $2, 0x1C($29)
      sltu       $2, $18, $2
      bnez       $2, .L800D2588
       addu      $5, $0, $0
  .L800D2638:
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800D2674
       nop
      jal        func_800CC3A8
       addu      $4, $2, $0
      lw         $4, 0x10($29)
      lw         $3, 0x4($4)
      addu       $5, $2, $0
      lw         $2, 0x4($3)
      jalr       $2
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      sw         $0, 0x10($29)
  .L800D2674:
      lw         $2, 0x10($29)
      beqz       $2, .L800D26A4
       addu      $2, $16, $0
      jal        func_800CC3A8
       addu      $4, $16, $0
      lw         $4, 0x10($29)
      lw         $3, 0x4($4)
      addu       $5, $2, $0
      lw         $2, 0x4($3)
      jalr       $2
       nop
      addu       $2, $16, $0
  .L800D26A4:
      lw         $31, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800D2498

.globl func_800D26C4
.ent func_800D26C4
func_800D26C4:
      jr         $31
       addiu     $29, $29, 0x38
.end func_800D26C4

.globl func_800D26CC
.ent func_800D26CC
func_800D26CC:
      addiu      $29, $29, -0x38
      lw         $2, 0x48($29)
      lw         $8, 0x4C($29)
      beqz       $4, func_800D2700
       sw        $31, 0x30($29)
      beql       $5, $0, .L800D2734
       addiu     $2, $0, -0x4
      beql       $7, $0, .L800D2734
       addiu     $2, $0, -0x4
      beql       $2, $0, .L800D2734
       addiu     $2, $0, -0x4
      bnel       $8, $0, .L800D2708
       sw        $2, 0x1C($29)
.end func_800D26CC

.globl func_800D2700
.ent func_800D2700
func_800D2700:
      addiu      $29, $29, -0x18
      beqz       $4, .L800D2710
  .L800D2708:
       sw        $31, 0x10($29)
      sw         $0, 0x0($4)
  .L800D2710:
      jal        func_800524C0
       nop
      andi       $2, $2, 0xFF
      beqz       $2, .L800D2728
       addiu     $3, $0, -0x5
      addiu      $3, $0, 0x1
  .L800D2728:
      lw         $31, 0x10($29)
      addu       $2, $3, $0
      jr         $31
  .L800D2734:
       addiu     $29, $29, 0x18
.end func_800D2700

.globl func_800D2738
.ent func_800D2738
func_800D2738:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800524C8
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D2738

.globl func_800D2754
.ent func_800D2754
func_800D2754:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800524D0
       addu      $4, $5, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D2754

.globl func_800D2770
.ent func_800D2770
func_800D2770:
      addiu      $29, $29, -0x18
      addu       $4, $5, $0
      slti       $2, $4, 0x8
      beqz       $2, .L800D278C
       sw        $31, 0x10($29)
      jal        func_800524D8
       nop
  .L800D278C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D2770

.globl func_800D2798
.ent func_800D2798
func_800D2798:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800524E0
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D2798

.globl func_800D27B4
.ent func_800D27B4
func_800D27B4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800524E8
       addu      $4, $6, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D27B4

.globl func_800D27D0
.ent func_800D27D0
func_800D27D0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80052504
       addu      $4, $6, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D27D0

.globl func_800D27EC
.ent func_800D27EC
func_800D27EC:
      addiu      $29, $29, -0x18
      addu       $2, $5, $0
      addu       $4, $6, $0
      addu       $5, $7, $0
      sw         $31, 0x10($29)
      jal        func_80052524
       addu      $6, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D27EC

.globl func_800D2814
.ent func_800D2814
func_800D2814:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80052540
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D2814

.globl func_800D2830
.ent func_800D2830
func_800D2830:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800525D8
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D2830

.globl func_800D284C
.ent func_800D284C
func_800D284C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800D3968
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D284C

.globl func_800D2868
.ent func_800D2868
func_800D2868:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800D31A8
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D2868

.globl func_800D2884
.ent func_800D2884
func_800D2884:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009A450
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D2884

.globl func_800D28A0
.ent func_800D28A0
func_800D28A0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009A56C
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D28A0

.globl func_800D28BC
.ent func_800D28BC
func_800D28BC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009A5B4
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D28BC

.globl func_800D28D8
.ent func_800D28D8
func_800D28D8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009A5C8
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D28D8

.globl func_800D28F4
.ent func_800D28F4
func_800D28F4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009A6F8
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D28F4

.globl func_800D2910
.ent func_800D2910
func_800D2910:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009A71C
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D2910

.globl func_800D292C
.ent func_800D292C
func_800D292C:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      beqz       $17, .L800D2958
       sw        $31, 0x1C($29)
      bnez       $16, .L800D2960
       nop
  .L800D2958:
      j          .L800D2990
       addiu     $16, $0, -0x4
  .L800D2960:
      jal        func_800D28F4
       addu      $4, $17, $0
      beqz       $2, .L800D298C
       addu      $4, $18, $0
      jalr       $16
       addu      $5, $2, $0
      addu       $16, $2, $0
      jal        func_800D2910
       addu      $4, $17, $0
      j          .L800D2994
       addu      $2, $16, $0
  .L800D298C:
      addiu      $16, $0, -0x2F
  .L800D2990:
      addu       $2, $16, $0
  .L800D2994:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D292C

.globl func_800D29AC
.ent func_800D29AC
func_800D29AC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009A7BC
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D29AC

.globl func_800D29C8
.ent func_800D29C8
func_800D29C8:
      jr         $31
       nop
.end func_800D29C8

.globl func_800D29D0
.ent func_800D29D0
func_800D29D0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800D35D8
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D29D0

.globl func_800D29EC
.ent func_800D29EC
func_800D29EC:
      lw         $4, 0x18($29)
      lw         $2, 0x24($2)
      jalr       $2
       addu      $6, $16, $0
      addu       $2, $0, $0
.end func_800D29EC

.globl func_800D2A00
.ent func_800D2A00
func_800D2A00:
      addiu      $29, $29, -0x18
      addiu      $4, $0, 0x20
      addu       $5, $0, $0
      sw         $31, 0x14($29)
      jal        func_80052504
       sw        $16, 0x10($29)
      addu       $3, $2, $0
      beqz       $3, .L800D2A5C
       addiu     $4, $0, 0x1010
      addu       $5, $0, $0
      lui        $2, (0x10000 >> 16)
      sw         $2, 0x0($3)
      lui        $2, %hi(D_800FC300)
      addiu      $2, $2, %lo(D_800FC300)
      addu       $16, $3, $0
      sw         $2, 0x4($3)
      jal        func_80052504
       sw        $16, 0x8($16)
      addu       $3, $2, $0
      bnez       $3, .L800D2A64
       sw        $3, 0xC($16)
      jal        func_80052540
       addu      $4, $16, $0
  .L800D2A5C:
      j          .L800D2A9C
       addu      $2, $0, $0
  .L800D2A64:
      addiu      $2, $0, 0x1000
      sw         $2, 0x1000($3)
      lw         $2, 0xC($16)
      sw         $0, 0x1004($2)
      lw         $2, 0xC($16)
      sw         $0, 0x1008($2)
      lw         $2, 0xC($16)
      sw         $0, 0x100C($2)
      lw         $2, 0xC($16)
      sw         $0, 0x18($16)
      addu       $3, $2, $0
      sw         $2, 0x10($16)
      sw         $3, 0x14($16)
      addu       $2, $16, $0
  .L800D2A9C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D2A00

.globl func_800D2AAC
.ent func_800D2AAC
func_800D2AAC:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0xC($4)
      beqz       $2, .L800D2ACC
       addu      $16, $4, $0
      jal        func_800D3154
       nop
  .L800D2ACC:
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D2AAC

.globl func_800D2AE4
.ent func_800D2AE4
func_800D2AE4:
      addiu      $29, $29, -0x18
      bnez       $4, .L800D2AF8
       sw        $31, 0x10($29)
      j          .L800D2B04
       addiu     $2, $0, -0x4
  .L800D2AF8:
      jal        func_800D2AAC
       nop
      addiu      $2, $0, 0x1
  .L800D2B04:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D2AE4

.globl func_800D2B10
.ent func_800D2B10
func_800D2B10:
      addiu      $29, $29, -0x38
      sw         $22, 0x28($29)
      addu       $22, $5, $0
      sw         $23, 0x2C($29)
      addu       $23, $6, $0
      sw         $21, 0x24($29)
      sw         $31, 0x30($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $19, 0x0($22)
      beqz       $4, .L800D2B5C
       addiu     $21, $0, 0x1
      beql       $22, $0, .L800D2C5C
       addiu     $21, $0, -0x4
      bnez       $19, .L800D2B64
       addu      $18, $4, $0
  .L800D2B5C:
      j          .L800D2C5C
       addiu     $21, $0, -0x4
  .L800D2B64:
      lw         $5, 0x14($18)
      lw         $2, 0x1008($5)
      lw         $17, 0x4($22)
      beqz       $2, .L800D2BF4
       addu      $20, $0, $0
  .L800D2B78:
      beqz       $17, .L800D2C54
       nop
      lw         $2, 0x1004($5)
      lw         $3, 0x18($18)
      subu       $16, $2, $3
      sltu       $2, $16, $17
      bnez       $2, .L800D2BBC
       addu      $4, $19, $0
      addu       $5, $5, $3
      jal        func_80013F00
       addu      $6, $17, $0
      lw         $2, 0x18($18)
      addu       $20, $20, $17
      addu       $2, $2, $17
      addu       $17, $0, $0
      j          .L800D2BE4
       sw        $2, 0x18($18)
  .L800D2BBC:
      addu       $5, $5, $3
      jal        func_80013F00
       addu      $6, $16, $0
      addu       $19, $19, $16
      lw         $2, 0x14($18)
      subu       $17, $17, $16
      lw         $2, 0x1008($2)
      addu       $20, $20, $16
      sw         $0, 0x18($18)
      sw         $2, 0x14($18)
  .L800D2BE4:
      lw         $5, 0x14($18)
      lw         $2, 0x1008($5)
      bnez       $2, .L800D2B78
       nop
  .L800D2BF4:
      beqz       $17, .L800D2C54
       nop
      lw         $5, 0x14($18)
      lw         $3, 0x18($18)
      lw         $2, 0x1004($5)
      subu       $16, $2, $3
      sltu       $2, $16, $17
      bnez       $2, .L800D2C34
       addu      $5, $5, $3
      lw         $4, 0x0($22)
      jal        func_80013F00
       addu      $6, $17, $0
      lw         $2, 0x18($18)
      addu       $20, $20, $17
      j          .L800D2C50
       addu      $2, $2, $17
  .L800D2C34:
      addu       $6, $16, $0
      lw         $4, 0x0($22)
      jal        func_80013F00
       addu      $20, $20, $16
      lw         $2, 0x18($18)
      addu       $21, $0, $0
      addu       $2, $2, $16
  .L800D2C50:
      sw         $2, 0x18($18)
  .L800D2C54:
      bnel       $23, $0, .L800D2C5C
       sw        $20, 0x0($23)
  .L800D2C5C:
      addu       $2, $21, $0
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
.end func_800D2B10

.globl func_800D2C8C
.ent func_800D2C8C
func_800D2C8C:
      addiu      $29, $29, -0x38
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $23, 0x2C($29)
      addu       $23, $6, $0
      sw         $31, 0x30($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      beqz       $4, .L800D2CD4
       sw        $16, 0x10($29)
      beqz       $20, .L800D2D9C
       addiu     $2, $0, -0x4
      lw         $2, 0x0($20)
      bnez       $2, .L800D2CDC
       addu      $19, $0, $0
  .L800D2CD4:
      j          .L800D2D9C
       addiu     $2, $0, -0x4
  .L800D2CDC:
      lw         $18, 0x4($20)
      beqz       $18, .L800D2D90
       addu      $17, $4, $0
      addiu      $22, $0, 0x1000
      addiu      $21, $0, 0x1
  .L800D2CF0:
      lw         $4, 0x14($17)
      lw         $3, 0x18($17)
      lw         $2, 0x1000($4)
      subu       $16, $2, $3
      sltu       $2, $16, $18
      bnez       $2, .L800D2D48
       addu      $4, $4, $3
      lw         $5, 0x0($20)
      addu       $6, $18, $0
      jal        func_80013F00
       addu      $5, $5, $19
      lw         $2, 0x18($17)
      lw         $4, 0x14($17)
      addu       $3, $2, $18
      sw         $3, 0x18($17)
      lw         $2, 0x1004($4)
      sltu       $2, $2, $3
      beqz       $2, .L800D2D88
       addu      $19, $19, $18
      sw         $3, 0x1004($4)
      j          .L800D2D88
       addu      $18, $0, $0
  .L800D2D48:
      addu       $6, $16, $0
      lw         $5, 0x0($20)
      subu       $18, $18, $16
      jal        func_80013F00
       addu      $5, $5, $19
      addu       $19, $19, $16
      addu       $4, $17, $0
      lw         $2, 0x18($17)
      lw         $3, 0x14($17)
      addu       $2, $2, $16
      sw         $2, 0x18($17)
      jal        func_800D30EC
       sw        $22, 0x1004($3)
      bne        $2, $21, .L800D2D9C
       addu      $2, $0, $0
      sw         $0, 0x18($17)
  .L800D2D88:
      bnez       $18, .L800D2CF0
       nop
  .L800D2D90:
      bnel       $23, $0, .L800D2D98
       sw        $19, 0x0($23)
  .L800D2D98:
      addiu      $2, $0, 0x1
  .L800D2D9C:
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
.end func_800D2C8C

.globl func_800D2DC8
.ent func_800D2DC8
func_800D2DC8:
      bnez       $4, .L800D2DD8
       addiu     $2, $0, 0x1
      jr         $31
       addiu     $2, $0, -0x4
  .L800D2DD8:
      lw         $3, 0xC($4)
      lw         $6, 0x14($4)
      beq        $3, $6, .L800D2DF4
       nop
  .L800D2DE8:
      lw         $3, 0x1008($3)
      bne        $3, $6, .L800D2DE8
       addiu     $2, $2, 0x1
  .L800D2DF4:
      beqz       $5, .L800D2E0C
       addiu     $2, $2, -0x1
      lw         $3, 0x18($4)
      sll        $2, $2, 12
      addu       $2, $2, $3
      sw         $2, 0x0($5)
  .L800D2E0C:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800D2DC8

.globl func_800D2E14
.ent func_800D2E14
func_800D2E14:
      addiu      $8, $0, 0x1
      beqz       $4, .L800D3084
       addu      $3, $8, $0
      beq        $5, $8, .L800D2EAC
       nop
      beqz       $5, .L800D2E40
       addiu     $2, $0, 0x2
      beq        $5, $2, .L800D2FBC
       addiu     $8, $0, -0x4
      j          .L800D3088
       nop
  .L800D2E40:
      lw         $2, 0xC($4)
      sw         $2, 0x14($4)
      addiu      $2, $0, 0x1000
      slt        $2, $2, $6
      beqz       $2, .L800D2E8C
       addiu     $2, $3, -0x1
  .L800D2E58:
      lw         $2, 0x14($4)
      lw         $2, 0x1008($2)
      beql       $2, $0, .L800D2E80
       sll       $2, $3, 12
      sw         $2, 0x14($4)
      addiu      $3, $3, 0x1
      sll        $2, $3, 12
      slt        $2, $2, $6
      bnez       $2, .L800D2E58
       sll       $2, $3, 12
  .L800D2E80:
      slt        $2, $2, $6
      bnez       $2, .L800D2E9C
       addiu     $2, $3, -0x1
  .L800D2E8C:
      sll        $2, $2, 12
      subu       $2, $6, $2
      j          .L800D3088
       sw        $2, 0x18($4)
  .L800D2E9C:
      lw         $2, 0x14($4)
      lw         $2, 0x1004($2)
      j          .L800D3088
       sw        $2, 0x18($4)
  .L800D2EAC:
      bltz       $6, .L800D2F40
       nop
      j          .L800D2EF8
       nop
  .L800D2EBC:
      beqz       $6, .L800D3088
       nop
      lw         $2, 0x1004($7)
      lw         $5, 0x18($4)
      subu       $3, $2, $5
      slt        $2, $6, $3
      beqz       $2, .L800D2EE8
       addu      $2, $5, $6
      sw         $2, 0x18($4)
      j          .L800D2EF8
       addu      $6, $0, $0
  .L800D2EE8:
      lw         $2, 0x1008($7)
      subu       $6, $6, $3
      sw         $0, 0x18($4)
      sw         $2, 0x14($4)
  .L800D2EF8:
      lw         $7, 0x14($4)
      lw         $2, 0x1008($7)
      bnez       $2, .L800D2EBC
       nop
      beqz       $6, .L800D3088
       nop
      lw         $2, 0x14($4)
      lw         $5, 0x18($4)
      lw         $7, 0x1004($2)
      subu       $3, $7, $5
      slt        $2, $6, $3
      beqz       $2, .L800D2F34
       addu      $2, $5, $6
      j          .L800D3088
       sw        $2, 0x18($4)
  .L800D2F34:
      addu       $2, $5, $7
      j          .L800D3088
       sw        $2, 0x18($4)
  .L800D2F40:
      lw         $2, 0x14($4)
      lw         $2, 0x100C($2)
      beqz       $2, .L800D2F9C
       negu      $6, $6
      addiu      $5, $0, 0x1000
  .L800D2F54:
      beqz       $6, .L800D3088
       addiu     $8, $0, 0x1
      lw         $3, 0x18($4)
      slt        $2, $6, $3
      beqz       $2, .L800D2F78
       subu      $2, $3, $6
      sw         $2, 0x18($4)
      j          .L800D2F8C
       addu      $6, $0, $0
  .L800D2F78:
      lw         $2, 0x14($4)
      lw         $2, 0x100C($2)
      subu       $6, $6, $3
      sw         $5, 0x18($4)
      sw         $2, 0x14($4)
  .L800D2F8C:
      lw         $2, 0x14($4)
      lw         $2, 0x100C($2)
      bnez       $2, .L800D2F54
       nop
  .L800D2F9C:
      beqz       $6, .L800D3088
       addiu     $8, $0, 0x1
      lw         $3, 0x18($4)
      slt        $2, $6, $3
      beqz       $2, .L800D306C
       subu      $2, $3, $6
      j          .L800D3088
       sw        $2, 0x18($4)
  .L800D2FBC:
      lw         $5, 0x14($4)
      lw         $2, 0x1008($5)
      beqz       $2, .L800D2FE0
       nop
  .L800D2FCC:
      lw         $2, 0x1008($5)
      sw         $2, 0x14($4)
      lw         $3, 0x1008($2)
      bnez       $3, .L800D2FCC
       addu      $5, $2, $0
  .L800D2FE0:
      lw         $2, 0x14($4)
      lw         $2, 0x1004($2)
      blez       $6, .L800D2FF8
       sw        $2, 0x18($4)
      j          .L800D3088
       addu      $8, $0, $0
  .L800D2FF8:
      lw         $2, 0x14($4)
      lw         $2, 0x100C($2)
      beqz       $2, .L800D3054
       negu      $6, $6
      addiu      $5, $0, 0x1000
  .L800D300C:
      beqz       $6, .L800D3088
       addiu     $8, $0, 0x1
      lw         $3, 0x18($4)
      slt        $2, $6, $3
      beqz       $2, .L800D3030
       subu      $2, $3, $6
      sw         $2, 0x18($4)
      j          .L800D3044
       addu      $6, $0, $0
  .L800D3030:
      lw         $2, 0x14($4)
      lw         $2, 0x100C($2)
      subu       $6, $6, $3
      sw         $5, 0x18($4)
      sw         $2, 0x14($4)
  .L800D3044:
      lw         $2, 0x14($4)
      lw         $2, 0x100C($2)
      bnez       $2, .L800D300C
       nop
  .L800D3054:
      beqz       $6, .L800D3088
       addiu     $8, $0, 0x1
      lw         $3, 0x18($4)
      slt        $2, $6, $3
      bnez       $2, .L800D3078
       subu      $2, $3, $6
  .L800D306C:
      lw         $2, 0x14($4)
      lw         $2, 0x1004($2)
      subu       $2, $3, $2
  .L800D3078:
      sw         $2, 0x18($4)
      j          .L800D3088
       addiu     $8, $0, 0x1
  .L800D3084:
      addiu      $8, $0, -0x4
  .L800D3088:
      jr         $31
       addu      $2, $8, $0
.end func_800D2E14

.globl func_800D3090
.ent func_800D3090
func_800D3090:
      bnez       $4, .L800D30A0
       addiu     $3, $0, 0x1
      jr         $31
       addiu     $2, $0, -0x4
  .L800D30A0:
      lw         $6, 0xC($4)
      lw         $2, 0x1008($6)
      beqz       $2, .L800D30C0
       nop
  .L800D30B0:
      lw         $6, 0x1008($6)
      lw         $2, 0x1008($6)
      bnez       $2, .L800D30B0
       addiu     $3, $3, 0x1
  .L800D30C0:
      beqz       $5, .L800D30DC
       addiu     $3, $3, -0x1
      lw         $2, 0x10($4)
      lw         $2, 0x1004($2)
      sll        $3, $3, 12
      addu       $3, $3, $2
      sw         $3, 0x0($5)
  .L800D30DC:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800D3090

.globl func_800D30E4
.ent func_800D30E4
func_800D30E4:
      jr         $31
       addiu     $2, $0, -0x3
.end func_800D30E4

.globl func_800D30EC
.ent func_800D30EC
func_800D30EC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addiu      $4, $0, 0x1010
      sw         $31, 0x14($29)
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $4, $2, $0
      beqz       $4, .L800D3140
       addiu     $2, $0, 0x1000
      sw         $2, 0x1000($4)
      sw         $0, 0x1004($4)
      lw         $2, 0x10($16)
      sw         $0, 0x1008($4)
      sw         $2, 0x100C($4)
      lw         $3, 0x10($16)
      addiu      $2, $0, 0x1
      sw         $4, 0x1008($3)
      sw         $4, 0x10($16)
      j          .L800D3144
       sw        $4, 0x14($16)
  .L800D3140:
      addiu      $2, $0, -0x5
  .L800D3144:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D30EC

.globl func_800D3154
.ent func_800D3154
func_800D3154:
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $16, 0x10($4)
      beqz       $16, .L800D318C
       addu      $17, $16, $0
      addu       $16, $17, $0
  .L800D3174:
      lw         $4, 0x1008($16)
      lw         $17, 0x100C($16)
      jal        func_80052540
       nop
      bnel       $17, $0, .L800D3174
       addu      $16, $17, $0
  .L800D318C:
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D3154

.globl func_800D31A8
.ent func_800D31A8
func_800D31A8:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      bnez       $16, .L800D31C4
       sw        $31, 0x14($29)
      j          .L800D31E4
       addiu     $2, $0, -0x4
  .L800D31C4:
      jal        func_800D2A00
       nop
      addu       $3, $2, $0
      beqz       $3, .L800D31E0
       addiu     $2, $0, 0x1
      j          .L800D31E4
       sw        $3, 0x0($16)
  .L800D31E0:
      addiu      $2, $0, -0x5
  .L800D31E4:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D31A8

.globl func_800D31F4
.ent func_800D31F4
func_800D31F4:
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
.end func_800D31F4

.globl func_800D3200
.ent func_800D3200
func_800D3200:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      addiu      $4, $0, 0x20
      sw         $31, 0x20($29)
      jal        func_80052504
       addu      $5, $16, $0
      beqz       $2, .L800D3270
       addu      $4, $17, $0
      addu       $16, $2, $0
      lui        $2, (0x10000 >> 16)
      sw         $2, 0x0($16)
      lui        $2, %hi(D_800FC340)
      addiu      $2, $2, %lo(D_800FC340)
      sw         $2, 0x4($16)
      sw         $16, 0x8($16)
      sw         $4, 0xC($16)
      jal        func_8009A5B4
       sw        $18, 0x10($16)
      sw         $2, 0x14($16)
      sw         $0, 0x18($16)
      sw         $19, 0x1C($16)
  .L800D3270:
      addu       $2, $16, $0
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D3200

.globl func_800D3290
.ent func_800D3290
func_800D3290:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0xC($4)
      beqz       $2, .L800D32B0
       addu      $16, $4, $0
      jal        func_8009A56C
       addu      $4, $2, $0
  .L800D32B0:
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D3290

.globl func_800D32C8
.ent func_800D32C8
func_800D32C8:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      bnez       $16, .L800D32E8
       sw        $17, 0x14($29)
      j          .L800D3348
       addiu     $2, $0, -0x4
  .L800D32E8:
      lw         $3, 0x1C($16)
      andi       $2, $3, 0x10
      beqz       $2, .L800D333C
       addu      $17, $16, $0
      addiu      $2, $0, 0x1
      bnel       $5, $2, .L800D333C
       sw        $0, 0xC($17)
      andi       $2, $3, 0x2
      beql       $2, $0, .L800D333C
       sw        $0, 0xC($17)
      lw         $5, 0x18($16)
.end func_800D32C8

.globl func_800D3314
.ent func_800D3314
func_800D3314:
      beql       $5, $0, .L800D333C
       sw        $0, 0xC($17)
      lw         $2, 0x14($16)
      sltu       $2, $5, $2
      beql       $2, $0, .L800D333C
       sw        $0, 0xC($17)
      lw         $4, 0xC($16)
      jal        func_8009A5C8
       nop
      sw         $0, 0xC($17)
  .L800D333C:
      jal        func_800D3290
       addu      $4, $16, $0
      addiu      $2, $0, 0x1
  .L800D3348:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D3314

.globl func_800D335C
.ent func_800D335C
func_800D335C:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $31, 0x20($29)
      beqz       $17, .L800D3398
       sw        $16, 0x10($29)
      beqz       $18, .L800D3410
       addiu     $2, $0, -0x4
      lw         $2, 0x0($18)
      bnez       $2, .L800D33A0
       nop
  .L800D3398:
      j          .L800D3410
       addiu     $2, $0, -0x4
  .L800D33A0:
      lw         $3, 0x14($17)
      lw         $2, 0x18($17)
      subu       $16, $3, $2
      beqz       $16, .L800D3410
       addu      $2, $0, $0
      lw         $3, 0x4($18)
      sltu       $2, $3, $16
      bnel       $2, $0, .L800D33C4
       addu      $16, $3, $0
  .L800D33C4:
      beqz       $16, .L800D3404
       nop
      lw         $4, 0xC($17)
      jal        func_8009A6F8
       nop
      beqz       $2, .L800D3404
       addu      $6, $16, $0
      lw         $5, 0x18($17)
      lw         $4, 0x0($18)
      jal        func_80013F00
       addu      $5, $2, $5
      lw         $2, 0x18($17)
      lw         $4, 0xC($17)
      addu       $2, $2, $16
      jal        func_8009A71C
       sw        $2, 0x18($17)
  .L800D3404:
      bnel       $19, $0, .L800D340C
       sw        $16, 0x0($19)
  .L800D340C:
      addiu      $2, $0, 0x1
  .L800D3410:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D335C

.globl func_800D342C
.ent func_800D342C
func_800D342C:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $31, 0x20($29)
      beqz       $17, .L800D3468
       sw        $16, 0x10($29)
      beqz       $18, .L800D34E0
       addiu     $2, $0, -0x4
      lw         $2, 0x0($18)
      bnez       $2, .L800D3470
       nop
  .L800D3468:
      j          .L800D34E0
       addiu     $2, $0, -0x4
  .L800D3470:
      lw         $3, 0x14($17)
      lw         $2, 0x18($17)
      subu       $16, $3, $2
      beqz       $16, .L800D34E0
       addu      $2, $0, $0
      lw         $3, 0x4($18)
      sltu       $2, $3, $16
      bnel       $2, $0, .L800D3494
       addu      $16, $3, $0
  .L800D3494:
      beqz       $16, .L800D34D4
       nop
      lw         $4, 0xC($17)
      jal        func_8009A6F8
       nop
      beqz       $2, .L800D34D4
       addu      $6, $16, $0
      lw         $4, 0x18($17)
      lw         $5, 0x0($18)
      jal        func_80013F00
       addu      $4, $2, $4
      lw         $2, 0x18($17)
      lw         $4, 0xC($17)
      addu       $2, $2, $16
      jal        func_8009A71C
       sw        $2, 0x18($17)
  .L800D34D4:
      bnel       $19, $0, .L800D34DC
       sw        $16, 0x0($19)
  .L800D34DC:
      addiu      $2, $0, 0x1
  .L800D34E0:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D342C

.globl func_800D34FC
.ent func_800D34FC
func_800D34FC:
      beqz       $4, .L800D351C
       addiu     $2, $0, -0x4
      beqz       $5, .L800D3514
       nop
      lw         $2, 0x18($4)
      sw         $2, 0x0($5)
  .L800D3514:
      jr         $31
       addiu     $2, $0, 0x1
  .L800D351C:
      jr         $31
       nop
.end func_800D34FC

.globl func_800D3524
.ent func_800D3524
func_800D3524:
      bnez       $4, .L800D3534
       addiu     $7, $0, 0x1
      j          .L800D35A0
       addiu     $7, $0, -0x4
  .L800D3534:
      beq        $5, $7, .L800D355C
       addu      $3, $0, $0
      beqz       $5, .L800D3554
       addiu     $2, $0, 0x2
      beq        $5, $2, .L800D3568
       nop
      j          .L800D3570
       addiu     $7, $0, -0x4
  .L800D3554:
      j          .L800D3570
       addu      $3, $6, $0
  .L800D355C:
      lw         $2, 0x18($4)
      j          .L800D3570
       addu      $3, $2, $6
  .L800D3568:
      lw         $2, 0x14($4)
      addu       $3, $2, $6
  .L800D3570:
      addiu      $2, $0, 0x1
      bne        $7, $2, .L800D35A0
       nop
      bgez       $3, .L800D358C
       nop
      j          .L800D359C
       addu      $3, $0, $0
  .L800D358C:
      lw         $5, 0x14($4)
      sltu       $2, $5, $3
      bnel       $2, $0, .L800D359C
       addu      $3, $5, $0
  .L800D359C:
      sw         $3, 0x18($4)
  .L800D35A0:
      jr         $31
       addu      $2, $7, $0
.end func_800D3524

.globl func_800D35A8
.ent func_800D35A8
func_800D35A8:
      beqz       $4, .L800D35C8
       addiu     $2, $0, -0x4
      beqz       $5, .L800D35C0
       nop
      lw         $2, 0x14($4)
      sw         $2, 0x0($5)
  .L800D35C0:
      jr         $31
       addiu     $2, $0, 0x1
  .L800D35C8:
      jr         $31
       nop
.end func_800D35A8

.globl func_800D35D0
.ent func_800D35D0
func_800D35D0:
      jr         $31
       addiu     $2, $0, -0x3
.end func_800D35D0

.globl func_800D35D8
.ent func_800D35D8
func_800D35D8:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $7, $0
      beqz       $4, .L800D35F4
       sw        $31, 0x14($29)
      bnez       $16, .L800D35FC
       nop
  .L800D35F4:
      j          .L800D361C
       addiu     $2, $0, -0x4
  .L800D35FC:
      jal        func_800D3200
       nop
      addu       $3, $2, $0
      beqz       $3, .L800D3618
       addiu     $2, $0, 0x1
      j          .L800D361C
       sw        $3, 0x0($16)
  .L800D3618:
      addiu      $2, $0, -0x5
  .L800D361C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D35D8

.globl func_800D362C
.ent func_800D362C
func_800D362C:
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
.end func_800D362C

.globl func_800D3640
.ent func_800D3640
func_800D3640:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      addiu      $4, $0, 0x1C
      sw         $31, 0x20($29)
      jal        func_80052504
       addu      $5, $16, $0
      beql       $2, $0, .L800D36AC
       addu      $2, $16, $0
      addu       $16, $2, $0
      lui        $2, (0x10000 >> 16)
      sw         $2, 0x0($16)
      lui        $2, %hi(D_800FC380)
      addiu      $2, $2, %lo(D_800FC380)
      sw         $2, 0x4($16)
      sw         $16, 0x8($16)
      sw         $17, 0xC($16)
      sw         $18, 0x10($16)
      sw         $0, 0x14($16)
      sw         $19, 0x18($16)
      addu       $2, $16, $0
  .L800D36AC:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D3640

.globl func_800D36C8
.ent func_800D36C8
func_800D36C8:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x18($16)
      andi       $2, $2, 0x10
      bnez       $2, .L800D36FC
       nop
      lw         $4, 0xC($16)
      beqz       $4, .L800D36FC
       nop
      jal        func_80052540
       nop
  .L800D36FC:
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D36C8

.globl func_800D3714
.ent func_800D3714
func_800D3714:
      addiu      $29, $29, -0x18
      bnez       $4, .L800D3728
       sw        $31, 0x10($29)
      j          .L800D3734
       addiu     $2, $0, -0x4
  .L800D3728:
      jal        func_800D36C8
       nop
      addiu      $2, $0, 0x1
  .L800D3734:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D3714

.globl func_800D3740
.ent func_800D3740
func_800D3740:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $31, 0x1C($29)
      beqz       $17, .L800D3774
       sw        $16, 0x10($29)
      beqz       $5, .L800D37CC
       addiu     $2, $0, -0x4
      lw         $4, 0x0($5)
      bnez       $4, .L800D377C
       nop
  .L800D3774:
      j          .L800D37CC
       addiu     $2, $0, -0x4
  .L800D377C:
      lw         $2, 0x10($17)
      lw         $3, 0x14($17)
      subu       $16, $2, $3
      beqz       $16, .L800D37CC
       addu      $2, $0, $0
      lw         $5, 0x4($5)
      sltu       $2, $5, $16
      bnel       $2, $0, .L800D37A0
       addu      $16, $5, $0
  .L800D37A0:
      beqz       $16, .L800D37C0
       addu      $6, $16, $0
      lw         $5, 0xC($17)
      jal        func_80013F00
       addu      $5, $5, $3
      lw         $2, 0x14($17)
      addu       $2, $2, $16
      sw         $2, 0x14($17)
  .L800D37C0:
      bnel       $18, $0, .L800D37C8
       sw        $16, 0x0($18)
  .L800D37C8:
      addiu      $2, $0, 0x1
  .L800D37CC:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D3740

.globl func_800D37E4
.ent func_800D37E4
func_800D37E4:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $31, 0x1C($29)
      beqz       $17, .L800D3818
       sw        $16, 0x10($29)
      beqz       $5, .L800D3874
       addiu     $2, $0, -0x4
      lw         $6, 0x0($5)
      bnez       $6, .L800D3820
       nop
  .L800D3818:
      j          .L800D3874
       addiu     $2, $0, -0x4
  .L800D3820:
      lw         $2, 0x10($17)
      lw         $3, 0x14($17)
      subu       $16, $2, $3
      beqz       $16, .L800D3874
       addu      $2, $0, $0
      lw         $5, 0x4($5)
      sltu       $2, $5, $16
      bnel       $2, $0, .L800D3844
       addu      $16, $5, $0
  .L800D3844:
      beqz       $16, .L800D3868
       addu      $5, $6, $0
      lw         $4, 0xC($17)
      addu       $6, $16, $0
      jal        func_80013F00
       addu      $4, $4, $3
      lw         $2, 0x14($17)
      addu       $2, $2, $16
      sw         $2, 0x14($17)
  .L800D3868:
      bnel       $18, $0, .L800D3870
       sw        $16, 0x0($18)
  .L800D3870:
      addiu      $2, $0, 0x1
  .L800D3874:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D37E4

.globl func_800D388C
.ent func_800D388C
func_800D388C:
      beqz       $4, .L800D38AC
       addiu     $2, $0, -0x4
      beqz       $5, .L800D38A4
       nop
      lw         $2, 0x14($4)
      sw         $2, 0x0($5)
  .L800D38A4:
      jr         $31
       addiu     $2, $0, 0x1
  .L800D38AC:
      jr         $31
       nop
.end func_800D388C

.globl func_800D38B4
.ent func_800D38B4
func_800D38B4:
      bnez       $4, .L800D38C4
       addiu     $7, $0, 0x1
      j          .L800D3930
       addiu     $7, $0, -0x4
  .L800D38C4:
      beq        $5, $7, .L800D38EC
       addu      $3, $0, $0
      beqz       $5, .L800D38E4
       addiu     $2, $0, 0x2
      beq        $5, $2, .L800D38F8
       nop
      j          .L800D3900
       addiu     $7, $0, -0x4
  .L800D38E4:
      j          .L800D3900
       addu      $3, $6, $0
  .L800D38EC:
      lw         $2, 0x14($4)
      j          .L800D3900
       addu      $3, $2, $6
  .L800D38F8:
      lw         $2, 0x10($4)
      addu       $3, $2, $6
  .L800D3900:
      addiu      $2, $0, 0x1
      bne        $7, $2, .L800D3930
       nop
      bgez       $3, .L800D391C
       nop
      j          .L800D392C
       addu      $3, $0, $0
  .L800D391C:
      lw         $5, 0x10($4)
      sltu       $2, $5, $3
      bnel       $2, $0, .L800D392C
       addu      $3, $5, $0
  .L800D392C:
      sw         $3, 0x14($4)
  .L800D3930:
      jr         $31
       addu      $2, $7, $0
.end func_800D38B4

.globl func_800D3938
.ent func_800D3938
func_800D3938:
      beqz       $4, .L800D3958
       addiu     $2, $0, -0x4
      beqz       $5, .L800D3950
       nop
      lw         $2, 0x10($4)
      sw         $2, 0x0($5)
  .L800D3950:
      jr         $31
       addiu     $2, $0, 0x1
  .L800D3958:
      jr         $31
       nop
.end func_800D3938

.globl func_800D3960
.ent func_800D3960
func_800D3960:
      jr         $31
       addiu     $2, $0, -0x3
.end func_800D3960

.globl func_800D3968
.ent func_800D3968
func_800D3968:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $7, $0
      beqz       $4, .L800D3984
       sw        $31, 0x14($29)
      bnez       $16, .L800D398C
       nop
  .L800D3984:
      j          .L800D39AC
       addiu     $2, $0, -0x4
  .L800D398C:
      jal        func_800D3640
       nop
      addu       $3, $2, $0
      beqz       $3, .L800D39A8
       addiu     $2, $0, 0x1
      j          .L800D39AC
       sw        $3, 0x0($16)
  .L800D39A8:
      addiu      $2, $0, -0x5
  .L800D39AC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D3968

.globl func_800D39BC
.ent func_800D39BC
func_800D39BC:
      beqz       $6, .L800D3B88
.end func_800D39BC

.globl func_800D39C0
.ent func_800D39C0
func_800D39C0:
      addiu      $29, $29, -0x48
      sw         $21, 0x34($29)
      addu       $21, $4, $0
      sw         $17, 0x24($29)
      addiu      $17, $0, 0x1
      sw         $31, 0x44($29)
      sw         $30, 0x40($29)
      sw         $23, 0x3C($29)
      sw         $22, 0x38($29)
      sw         $20, 0x30($29)
      sw         $19, 0x2C($29)
      sw         $18, 0x28($29)
      sw         $16, 0x20($29)
      bnez       $21, .L800D3A28
       sw        $5, 0x4C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC3D0)
      addiu      $4, $4, %lo(D_800FC3D0)
      lui        $5, %hi(D_800FC41C)
      addiu      $5, $5, %lo(D_800FC41C)
      lui        $6, %hi(D_800FC43C)
      addiu      $6, $6, %lo(D_800FC43C)
      jal        func_80002E80
       addiu     $7, $0, 0x8B
  .L800D3A28:
      lw         $3, 0x4C($29)
      bnez       $3, .L800D3A60
       addu      $18, $0, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC458)
      addiu      $4, $4, %lo(D_800FC458)
      lui        $5, %hi(D_800FC41C)
      addiu      $5, $5, %lo(D_800FC41C)
      lui        $6, %hi(D_800FC43C)
      addiu      $6, $6, %lo(D_800FC43C)
      jal        func_80002E80
       addiu     $7, $0, 0x8C
  .L800D3A60:
      addiu      $16, $0, 0x1
  .L800D3A64:
      lw         $4, 0x4C($29)
      addu       $5, $18, $0
      addu       $6, $0, $0
      jal        func_8005492C
       addu      $7, $6, $0
      bne        $2, $16, .L800D3A88
       nop
      j          .L800D3A64
       addiu     $18, $18, 0x1
  .L800D3A88:
      jal        func_800CD638
       addu      $4, $21, $0
      beqz       $18, .L800D3BB8
       addu      $4, $21, $0
      jal        func_800CD5CC
       addu      $5, $18, $0
      addu       $17, $2, $0
      bne        $17, $16, .L800D3BBC
       addiu     $2, $0, 0x1
      jal        func_800CD6A8
       addu      $4, $21, $0
      addu       $4, $21, $0
      jal        func_800CD6C4
       addu      $19, $2, $0
      beqz       $18, .L800D3BB8
       addu      $16, $0, $0
      addiu      $30, $0, 0x1
      lui        $23, %hi(D_800FC41C)
      lui        $22, %hi(D_800FC43C)
      addu       $20, $2, $0
  .L800D3AD8:
      addu       $5, $16, $0
      addiu      $6, $29, 0x18
      lw         $4, 0x4C($29)
      addiu      $7, $29, 0x1C
      sw         $0, 0x18($29)
      jal        func_8005492C
       sw        $0, 0x1C($29)
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $17, $2, $0
      bne        $17, $30, .L800D3BC4
       nop
      lw         $2, 0x18($29)
      bnez       $2, .L800D3B38
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC4AC)
      addiu      $4, $4, %lo(D_800FC4AC)
      addiu      $5, $23, %lo(D_800FC41C)
      addiu      $6, $22, %lo(D_800FC43C)
      jal        func_80002E80
       addiu     $7, $0, 0x98
  .L800D3B38:
      lw         $2, 0x1C($29)
      bnez       $2, .L800D3B68
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC4FC)
      addiu      $4, $4, %lo(D_800FC4FC)
      addiu      $5, $23, %lo(D_800FC41C)
      addiu      $6, $22, %lo(D_800FC43C)
      jal        func_80002E80
       addiu     $7, $0, 0x99
  .L800D3B68:
      lw         $4, 0x18($29)
      jal        func_800523C0
       nop
      beqz       $2, .L800D3B9C
       sw        $2, 0x0($19)
      lw         $4, 0x1C($29)
      jal        func_800523C0
       nop
  .L800D3B88:
      beqz       $2, .L800D3B9C
       sw        $2, 0x0($20)
      addiu      $2, $16, 0x1
      j          .L800D3BA0
       sw        $2, 0xC($21)
  .L800D3B9C:
      addiu      $17, $0, -0x5
  .L800D3BA0:
      bne        $17, $30, .L800D3BC4
       addiu     $20, $20, 0x4
      addiu      $16, $16, 0x1
      sltu       $2, $16, $18
      bnez       $2, .L800D3AD8
       addiu     $19, $19, 0x4
  .L800D3BB8:
      addiu      $2, $0, 0x1
  .L800D3BBC:
      beq        $17, $2, .L800D3BD0
       addu      $2, $17, $0
  .L800D3BC4:
      jal        func_800CD638
       addu      $4, $21, $0
      addu       $2, $17, $0
  .L800D3BD0:
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
.end func_800D39C0

.globl func_800D3C00
.ent func_800D3C00
func_800D3C00:
      addiu      $29, $29, -0x18
      addu       $4, $0, $0
      addu       $5, $4, $0
      sw         $31, 0x10($29)
      jal        func_800D27D0
       addiu     $6, $0, 0x1C
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D3C00

.globl func_800D3C24
.ent func_800D3C24
func_800D3C24:
      addiu      $29, $29, -0x30
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      bnez       $16, .L800D3C7C
       sw        $31, 0x28($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC54C)
      lui        $5, %hi(D_800FC41C)
      lui        $6, %hi(D_800FC598)
      addiu      $4, $4, %lo(D_800FC54C)
      addiu      $5, $5, %lo(D_800FC41C)
      addiu      $6, $6, %lo(D_800FC598)
      jal        func_80002E80
       addiu     $7, $0, 0xE1
  .L800D3C7C:
      sw         $17, 0x0($16)
      sw         $18, 0x4($16)
      sw         $19, 0x8($16)
      lw         $3, 0x40($29)
      sw         $3, 0xC($16)
      lw         $3, 0x44($29)
      sw         $3, 0x10($16)
      lw         $3, 0x48($29)
      sw         $0, 0x18($16)
      sw         $3, 0x14($16)
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D3C24

.globl func_800D3CC4
.ent func_800D3CC4
func_800D3CC4:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L800D3D04
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC54C)
      addiu      $4, $4, %lo(D_800FC54C)
      lui        $5, %hi(D_800FC41C)
      addiu      $5, $5, %lo(D_800FC41C)
      lui        $6, %hi(D_800FC5AC)
      addiu      $6, $6, %lo(D_800FC5AC)
      jal        func_80002E80
       addiu     $7, $0, 0x101
  .L800D3D04:
      lw         $4, 0xC($16)
      beqz       $4, .L800D3D2C
       nop
      lw         $2, 0x18($16)
      beqz       $2, .L800D3D2C
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, -0x1
  .L800D3D2C:
      jal        func_800D2814
       addu      $4, $16, $0
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D3CC4

.globl func_800D3D44
.ent func_800D3D44
func_800D3D44:
      jr         $31
       addiu     $2, $0, -0x2
.end func_800D3D44

.globl func_800D3D4C
.ent func_800D3D4C
func_800D3D4C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addiu      $3, $0, 0x1
      sw         $31, 0x14($29)
      beqz       $16, .L800D3DBC
       addiu     $2, $0, -0x4
      lw         $2, 0x0($16)
      bnel       $2, $0, .L800D3D74
       sw        $5, 0x0($2)
  .L800D3D74:
      lw         $4, 0x4($16)
      beqz       $4, .L800D3D98
       addu      $5, $6, $0
      jal        func_800CC3B0
       addiu     $6, $0, 0x1
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800D3DB4
       nop
  .L800D3D98:
      lw         $4, 0x8($16)
      beqz       $4, .L800D3DB4
       nop
      lw         $5, 0x28($29)
      jal        func_800D39C0
       nop
      addu       $3, $2, $0
  .L800D3DB4:
      jal        func_800CC3A8
       addu      $4, $3, $0
  .L800D3DBC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D3D4C

.globl func_800D3DCC
.ent func_800D3DCC
func_800D3DCC:
      addiu      $29, $29, -0x38
      sw         $19, 0x2C($29)
      addu       $19, $5, $0
      sw         $18, 0x28($29)
      addu       $18, $6, $0
      sw         $20, 0x30($29)
      addu       $20, $7, $0
      sw         $16, 0x20($29)
      addiu      $16, $0, 0x1
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      beqz       $17, .L800D3E08
       sw        $31, 0x34($29)
      bnez       $18, .L800D3E10
       nop
  .L800D3E08:
      j          .L800D3EB8
       addiu     $2, $0, -0x4
  .L800D3E10:
      lw         $2, 0xC($17)
      beqz       $2, .L800D3EA0
       nop
      jal        func_8004FAD0
       addu      $4, $18, $0
      addu       $2, $2, $19
      beqz       $2, .L800D3EA0
       sw        $2, 0x10($29)
      jal        func_8004FA7C
       addu      $4, $18, $0
      subu       $2, $2, $19
      beqz       $2, .L800D3E8C
       sw        $2, 0x14($29)
      addiu      $19, $0, 0x1
  .L800D3E48:
      lw         $4, 0xC($17)
      lw         $2, 0x4($4)
      addiu      $5, $29, 0x10
      lw         $2, 0xC($2)
      jalr       $2
       addiu     $6, $29, 0x18
      addu       $16, $2, $0
      bne        $16, $19, .L800D3E8C
       nop
      lw         $2, 0x10($29)
      lw         $4, 0x18($29)
      lw         $3, 0x14($29)
      addu       $2, $2, $4
      subu       $3, $3, $4
      sw         $2, 0x10($29)
      bnez       $3, .L800D3E48
       sw        $3, 0x14($29)
  .L800D3E8C:
      bnez       $16, .L800D3EA0
       nop
      lw         $2, 0x14($29)
      bnel       $2, $0, .L800D3EA0
       addiu     $16, $0, -0x9
  .L800D3EA0:
      jal        func_8004F810
       addu      $4, $18, $0
      bnel       $20, $0, .L800D3EB0
       sw        $0, 0x0($20)
  .L800D3EB0:
      jal        func_800CC3A8
       addu      $4, $16, $0
  .L800D3EB8:
      lw         $31, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800D3DCC

.globl func_800D3ED8
.ent func_800D3ED8
func_800D3ED8:
      addiu      $29, $29, -0x30
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addiu      $17, $0, 0x1
      addu       $4, $5, $0
      sw         $19, 0x24($29)
      addu       $19, $6, $0
      sw         $31, 0x28($29)
      jal        func_800CC3A0
       sw        $18, 0x20($29)
      addu       $18, $2, $0
      beqz       $16, .L800D3FB0
       addiu     $2, $0, -0x4
      lw         $2, 0x10($16)
      bnez       $2, .L800D3F48
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC5C0)
      addiu      $4, $4, %lo(D_800FC5C0)
      lui        $5, %hi(D_800FC41C)
      addiu      $5, $5, %lo(D_800FC41C)
      lui        $6, %hi(D_800FC618)
      addiu      $6, $6, %lo(D_800FC618)
      jal        func_80002E80
       addiu     $7, $0, 0x19F
  .L800D3F48:
      lw         $2, 0x18($16)
      beqz       $2, .L800D3F78
       nop
      lw         $4, 0xC($16)
      beqz       $4, .L800D3F78
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $18, $0
      addu       $17, $2, $0
      sw         $0, 0xC($16)
  .L800D3F78:
      lw         $4, 0x14($16)
      lw         $2, 0x10($16)
      jalr       $2
       addu      $5, $18, $0
      addu       $4, $16, $0
      jal        func_800D3CC4
       addu      $16, $2, $0
      bnel       $19, $0, .L800D3F9C
       sw        $0, 0x0($19)
  .L800D3F9C:
      bgez       $17, .L800D3FA8
       addu      $4, $16, $0
      addu       $4, $17, $0
  .L800D3FA8:
      jal        func_800CC3A8
       nop
  .L800D3FB0:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D3ED8

.globl func_800D3FCC
.ent func_800D3FCC
func_800D3FCC:
      addiu      $29, $29, -0x48
      sw         $17, 0x24($29)
      lw         $17, 0x58($29)
      sw         $19, 0x2C($29)
      lw         $19, 0x60($29)
      sw         $20, 0x30($29)
      lw         $20, 0x64($29)
      sw         $21, 0x34($29)
      addu       $21, $4, $0
      sw         $22, 0x38($29)
      addu       $22, $5, $0
      sw         $23, 0x3C($29)
      addu       $23, $6, $0
      sw         $18, 0x28($29)
      addu       $18, $7, $0
      sw         $31, 0x40($29)
      beqz       $17, .L800D4024
       sw        $16, 0x20($29)
      beql       $19, $0, .L800D4098
       addiu     $17, $0, -0x4
      bnez       $20, .L800D402C
       nop
  .L800D4024:
      j          .L800D4098
       addiu     $17, $0, -0x4
  .L800D402C:
      jal        func_800D3C00
       nop
      addu       $16, $2, $0
      beqz       $16, .L800D4084
       addu      $4, $16, $0
      addu       $5, $21, $0
      addu       $6, $22, $0
      lw         $2, 0x5C($29)
      addu       $7, $23, $0
      sw         $18, 0x10($29)
      sw         $17, 0x14($29)
      jal        func_800D3C24
       sw        $2, 0x18($29)
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800D4088
       lui       $2, %hi(D_800FC3C0)
      addiu      $2, $2, %lo(D_800FC3C0)
      sw         $2, 0x0($19)
      sw         $16, 0x0($20)
      j          .L800D4088
       addu      $16, $0, $0
  .L800D4084:
      addiu      $17, $0, -0x5
  .L800D4088:
      beqz       $16, .L800D409C
       addu      $2, $17, $0
      jal        func_800D3CC4
       addu      $4, $16, $0
  .L800D4098:
      addu       $2, $17, $0
  .L800D409C:
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
.end func_800D3FCC

.globl func_800D40C8
.ent func_800D40C8
func_800D40C8:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $4, .L800D4108
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC54C)
      lui        $5, %hi(D_800FC41C)
      lui        $6, %hi(D_800FC62C)
      addiu      $4, $4, %lo(D_800FC54C)
      addiu      $5, $5, %lo(D_800FC41C)
      addiu      $6, $6, %lo(D_800FC62C)
      jal        func_80002E80
       addiu     $7, $0, 0x1F8
  .L800D4108:
      addiu      $2, $0, 0x1
      sw         $2, 0x18($16)
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D40C8

.globl func_800D4120
.ent func_800D4120
func_800D4120:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L800D4160
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC648)
      addiu      $4, $4, %lo(D_800FC648)
      lui        $5, %hi(D_800FC41C)
      lui        $6, %hi(D_800FC698)
      addiu      $5, $5, %lo(D_800FC41C)
      addiu      $6, $6, %lo(D_800FC698)
      jal        func_80002E80
       addiu     $7, $0, 0x211
  .L800D4160:
      jal        func_800D3CC4
       addu      $4, $16, $0
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D4120

.globl func_800D4178
.ent func_800D4178
func_800D4178:
      addu       $2, $16, $0
      addu       $16, $2, $0
.end func_800D4178

.globl func_800D4180
.ent func_800D4180
func_800D4180:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $31, 0x2C($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      lw         $2, 0x1C($16)
      bnez       $2, .L800D41D0
       addu      $18, $5, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC6D8)
      addiu      $4, $4, %lo(D_800FC6D8)
      lui        $5, %hi(D_800FC730)
      addiu      $5, $5, %lo(D_800FC730)
      lui        $6, %hi(D_800FC750)
      addiu      $6, $6, %lo(D_800FC750)
      jal        func_80002E80
       addiu     $7, $0, 0xAA
  .L800D41D0:
      lw         $3, 0x1C($16)
      addiu      $2, $16, 0x40
      sw         $2, 0x10($29)
      addiu      $2, $16, 0x44
      addiu      $17, $16, 0x48
      sw         $2, 0x14($29)
      sw         $17, 0x18($29)
      lw         $4, 0x20($16)
      lw         $5, 0x2C($16)
      lw         $6, 0x30($16)
      lw         $2, 0x0($3)
      jalr       $2
       addu      $7, $18, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      bne        $4, $2, .L800D42D8
       nop
      lw         $2, 0x48($16)
      bnez       $2, .L800D428C
       nop
      lw         $2, 0x44($16)
      bnez       $2, .L800D4260
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC760)
      addiu      $4, $4, %lo(D_800FC760)
      lui        $5, %hi(D_800FC730)
      addiu      $5, $5, %lo(D_800FC730)
      lui        $6, %hi(D_800FC750)
      addiu      $6, $6, %lo(D_800FC750)
      jal        func_80002E80
       addiu     $7, $0, 0xAD
  .L800D4260:
      lw         $4, 0x20($16)
      lw         $2, 0x44($16)
      lw         $5, 0x40($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $6, $17, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $3, 0x48($16)
      beqz       $3, .L800D42D8
       addu      $4, $2, $0
  .L800D428C:
      lw         $2, 0x30($16)
      lw         $8, 0x44($16)
      sw         $2, 0x10($29)
      lui        $2, %hi(D_800FC6D0)
      lw         $3, 0x34($16)
      addiu      $2, $2, %lo(D_800FC6D0)
      sw         $2, 0x18($29)
      sw         $16, 0x1C($29)
      sw         $3, 0x14($29)
      lw         $4, 0x48($16)
      lw         $5, 0x24($16)
      lw         $6, 0x28($16)
      lw         $7, 0x2C($16)
      lw         $2, 0x4($8)
      jalr       $2
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $4, $2, $0
  .L800D42D8:
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D4180

.globl func_800D42F4
.ent func_800D42F4
func_800D42F4:
      addiu      $29, $29, -0x30
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $19, 0x24($29)
      addu       $19, $5, $0
      sw         $17, 0x1C($29)
      addiu      $17, $0, 0x1
      sw         $18, 0x20($29)
      addu       $18, $17, $0
      bnez       $16, .L800D434C
       sw        $31, 0x28($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC7BC)
      addiu      $4, $4, %lo(D_800FC7BC)
      lui        $5, %hi(D_800FC730)
      addiu      $5, $5, %lo(D_800FC730)
      lui        $6, %hi(D_800FC808)
      addiu      $6, $6, %lo(D_800FC808)
      jal        func_80002E80
       addiu     $7, $0, 0xCE
  .L800D434C:
      lw         $2, 0x14($16)
      beqz       $2, .L800D43A4
       addu      $2, $17, $0
      lw         $4, 0x4($16)
      beqz       $4, .L800D437C
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $19, $0
      addu       $17, $2, $0
      sw         $0, 0x4($16)
  .L800D437C:
      lw         $4, 0x8($16)
      beqz       $4, .L800D43A4
       addu      $2, $17, $0
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $19, $0
      addu       $18, $2, $0
      sw         $0, 0x8($16)
      addu       $2, $17, $0
  .L800D43A4:
      bgezl      $2, .L800D43AC
       addu      $2, $18, $0
  .L800D43AC:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D42F4

.globl func_800D43C8
.ent func_800D43C8
func_800D43C8:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L800D4408
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC7BC)
      addiu      $4, $4, %lo(D_800FC7BC)
      lui        $5, %hi(D_800FC730)
      addiu      $5, $5, %lo(D_800FC730)
      lui        $6, %hi(D_800FC81C)
      addiu      $6, $6, %lo(D_800FC81C)
      jal        func_80002E80
       addiu     $7, $0, 0xED
  .L800D4408:
      lw         $2, 0xC($16)
      beqz       $2, .L800D4424
       nop
      lw         $4, 0x10($16)
      lw         $5, 0x18($16)
      jalr       $2
       nop
  .L800D4424:
      jal        func_800D45AC
       addu      $4, $16, $0
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D43C8

.globl func_800D443C
.ent func_800D443C
func_800D443C:
      addiu      $29, $29, -0x18
      addu       $4, $0, $0
      addu       $5, $4, $0
      sw         $31, 0x10($29)
      jal        func_800D27D0
       addiu     $6, $0, 0x4C
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D443C

.globl func_800D4460
.ent func_800D4460
func_800D4460:
      addiu      $29, $29, -0x30
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      bnez       $16, .L800D44B8
       sw        $31, 0x28($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC7BC)
      addiu      $4, $4, %lo(D_800FC7BC)
      lui        $5, %hi(D_800FC730)
      addiu      $5, $5, %lo(D_800FC730)
      lui        $6, %hi(D_800FC834)
      addiu      $6, $6, %lo(D_800FC834)
      jal        func_80002E80
       addiu     $7, $0, 0x128
  .L800D44B8:
      bnez       $17, .L800D44EC
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC848)
      addiu      $4, $4, %lo(D_800FC848)
      lui        $5, %hi(D_800FC730)
      addiu      $5, $5, %lo(D_800FC730)
      lui        $6, %hi(D_800FC834)
      addiu      $6, $6, %lo(D_800FC834)
      jal        func_80002E80
       addiu     $7, $0, 0x129
  .L800D44EC:
      bnez       $18, .L800D4520
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC894)
      addiu      $4, $4, %lo(D_800FC894)
      lui        $5, %hi(D_800FC730)
      addiu      $5, $5, %lo(D_800FC730)
      lui        $6, %hi(D_800FC834)
      addiu      $6, $6, %lo(D_800FC834)
      jal        func_80002E80
       addiu     $7, $0, 0x12A
  .L800D4520:
      bnel       $19, $0, .L800D4558
       sw        $17, 0x0($16)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC8E8)
      addiu      $4, $4, %lo(D_800FC8E8)
      lui        $5, %hi(D_800FC730)
      addiu      $5, $5, %lo(D_800FC730)
      lui        $6, %hi(D_800FC834)
      addiu      $6, $6, %lo(D_800FC834)
      jal        func_80002E80
       addiu     $7, $0, 0x12B
      sw         $17, 0x0($16)
  .L800D4558:
      sw         $18, 0x4($16)
      sw         $19, 0x8($16)
      lw         $3, 0x40($29)
      sw         $3, 0xC($16)
      lw         $3, 0x44($29)
      addiu      $2, $0, 0x1
      sw         $0, 0x14($16)
      sw         $3, 0x10($16)
      addu       $3, $2, $0
      sw         $3, 0x18($16)
      lw         $3, 0x48($29)
      sw         $3, 0x1C($16)
      lw         $3, 0x4C($29)
      sw         $3, 0x20($16)
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D4460

.globl func_800D45AC
.ent func_800D45AC
func_800D45AC:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L800D45EC
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC7BC)
      addiu      $4, $4, %lo(D_800FC7BC)
      lui        $5, %hi(D_800FC730)
      addiu      $5, $5, %lo(D_800FC730)
      lui        $6, %hi(D_800FC938)
      addiu      $6, $6, %lo(D_800FC938)
      jal        func_80002E80
       addiu     $7, $0, 0x14D
  .L800D45EC:
      addu       $4, $16, $0
      jal        func_800D42F4
       addiu     $5, $0, -0x1
      lw         $4, 0x30($16)
      beqz       $4, .L800D4618
       nop
      lw         $2, 0x2C($16)
      beq        $4, $2, .L800D4618
       nop
      jal        func_800546DC
       nop
  .L800D4618:
      lw         $4, 0x2C($16)
      beqz       $4, .L800D462C
       nop
      jal        func_800546DC
       nop
  .L800D462C:
      lw         $4, 0x28($16)
      beqz       $4, .L800D4640
       nop
      jal        func_800D2814
       nop
  .L800D4640:
      jal        func_800D2814
       addu      $4, $16, $0
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D45AC

.globl func_800D4658
.ent func_800D4658
func_800D4658:
      jr         $31
       addiu     $2, $0, -0x2
.end func_800D4658

.globl func_800D4660
.ent func_800D4660
func_800D4660:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      lw         $19, 0x38($29)
      sw         $18, 0x18($29)
      addu       $18, $7, $0
      sw         $17, 0x14($29)
      addiu      $17, $0, 0x1
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      bnez       $16, .L800D4694
       sw        $31, 0x20($29)
      j          .L800D4760
       addiu     $17, $0, -0x4
  .L800D4694:
      lw         $2, 0x30($16)
      bnez       $2, .L800D4760
       nop
      sw         $5, 0x24($16)
      lw         $2, 0x3C($29)
      sw         $2, 0x34($16)
      lw         $2, 0x40($29)
      sw         $2, 0x38($16)
      lw         $2, 0x44($29)
      beqz       $6, .L800D46D0
       sw        $2, 0x3C($16)
      jal        func_800523C0
       addu      $4, $6, $0
      beqz       $2, .L800D475C
       sw        $2, 0x28($16)
  .L800D46D0:
      beqz       $18, .L800D46FC
       nop
      addu       $4, $18, $0
      jal        func_80054604
       addiu     $5, $16, 0x2C
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800D4760
       nop
  .L800D46FC:
      beqz       $19, .L800D473C
       nop
      bnel       $19, $18, .L800D471C
       addu      $4, $19, $0
      lw         $2, 0x2C($16)
      bnez       $2, .L800D473C
       sw        $2, 0x30($16)
      addu       $4, $19, $0
  .L800D471C:
      jal        func_80054604
       addiu     $5, $16, 0x30
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800D4760
       nop
  .L800D473C:
      lw         $5, 0x30($16)
      beqz       $5, .L800D4760
       nop
      lw         $4, 0x4($16)
      jal        func_800D2224
       nop
      j          .L800D4760
       addu      $17, $2, $0
  .L800D475C:
      addiu      $17, $0, -0x5
  .L800D4760:
      jal        func_800CC3A8
       addu      $4, $17, $0
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D4660

.globl func_800D4784
.ent func_800D4784
func_800D4784:
      addiu      $29, $29, -0x48
      sw         $20, 0x38($29)
      addu       $20, $5, $0
      sw         $19, 0x34($29)
      addu       $19, $6, $0
      sw         $21, 0x3C($29)
      addu       $21, $7, $0
      sw         $16, 0x28($29)
      addiu      $16, $0, 0x1
      sw         $17, 0x2C($29)
      addu       $17, $4, $0
      sw         $31, 0x40($29)
      beqz       $17, .L800D47C4
       sw        $18, 0x30($29)
      bnez       $19, .L800D47CC
       nop
  .L800D47C4:
      j          .L800D4928
       addiu     $16, $0, -0x4
  .L800D47CC:
      lw         $2, 0x8($17)
      beqz       $2, .L800D486C
       nop
      lw         $2, 0x18($17)
      bltz       $2, .L800D486C
       nop
      jal        func_8004FAD0
       addu      $4, $19, $0
      addu       $2, $2, $20
      beqz       $2, .L800D4868
       sw        $2, 0x18($29)
      jal        func_8004FA7C
       addu      $4, $19, $0
      subu       $2, $2, $20
      beqz       $2, .L800D4854
       sw        $2, 0x1C($29)
      addiu      $18, $0, 0x1
  .L800D4810:
      lw         $4, 0x8($17)
      lw         $2, 0x4($4)
      addiu      $5, $29, 0x18
      lw         $2, 0xC($2)
      jalr       $2
       addiu     $6, $29, 0x20
      addu       $16, $2, $0
      bne        $16, $18, .L800D4854
       nop
      lw         $2, 0x18($29)
      lw         $4, 0x20($29)
      lw         $3, 0x1C($29)
      addu       $2, $2, $4
      subu       $3, $3, $4
      sw         $2, 0x18($29)
      bnez       $3, .L800D4810
       sw        $3, 0x1C($29)
  .L800D4854:
      bnel       $16, $0, .L800D486C
       sw        $16, 0x18($17)
      lw         $2, 0x1C($29)
      bnel       $2, $0, .L800D4868
       addiu     $16, $0, -0x9
  .L800D4868:
      sw         $16, 0x18($17)
  .L800D486C:
      lw         $2, 0x48($17)
      bnez       $2, .L800D4890
       addu      $4, $17, $0
      jal        func_800D4180
       addu      $5, $19, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800D4928
       nop
  .L800D4890:
      lw         $2, 0x44($17)
      bnez       $2, .L800D48C8
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC760)
      addiu      $4, $4, %lo(D_800FC760)
      lui        $5, %hi(D_800FC730)
      addiu      $5, $5, %lo(D_800FC730)
      lui        $6, %hi(D_800FC94C)
      addiu      $6, $6, %lo(D_800FC94C)
      jal        func_80002E80
       addiu     $7, $0, 0x1D3
  .L800D48C8:
      lw         $2, 0x48($17)
      bnez       $2, .L800D4904
       addu      $5, $20, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC95C)
      addiu      $4, $4, %lo(D_800FC95C)
      lui        $5, %hi(D_800FC730)
      addiu      $5, $5, %lo(D_800FC730)
      lui        $6, %hi(D_800FC94C)
      addiu      $6, $6, %lo(D_800FC94C)
      jal        func_80002E80
       addiu     $7, $0, 0x1D4
      addu       $5, $20, $0
  .L800D4904:
      addu       $6, $19, $0
      lw         $2, 0x44($17)
      lw         $4, 0x48($17)
      lw         $2, 0x8($2)
      jalr       $2
       addu      $7, $21, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
  .L800D4928:
      jal        func_800CC3A8
       addu      $4, $16, $0
      lw         $31, 0x40($29)
      lw         $21, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_800D4784

.globl func_800D4954
.ent func_800D4954
func_800D4954:
      addiu      $29, $29, -0x38
      sw         $18, 0x28($29)
      addu       $18, $5, $0
      sw         $19, 0x2C($29)
      addu       $19, $6, $0
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $31, 0x30($29)
      bnez       $16, .L800D4984
       sw        $17, 0x24($29)
      j          .L800D4A58
       addiu     $17, $0, -0x4
  .L800D4984:
      addu       $4, $18, $0
      jal        func_800CC3A0
       sw        $0, 0x18($29)
      addu       $4, $16, $0
      jal        func_800D42F4
       addu      $5, $2, $0
      lw         $3, 0x48($16)
      beqz       $3, .L800D4A08
       addu      $17, $2, $0
      lw         $2, 0x44($16)
      bnez       $2, .L800D49E8
       addu      $5, $18, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC760)
      addiu      $4, $4, %lo(D_800FC760)
      lui        $5, %hi(D_800FC730)
      addiu      $5, $5, %lo(D_800FC730)
      lui        $6, %hi(D_800FC9B4)
      addiu      $6, $6, %lo(D_800FC9B4)
      jal        func_80002E80
       addiu     $7, $0, 0x1FB
      addu       $5, $18, $0
      lw         $2, 0x44($16)
  .L800D49E8:
      lw         $4, 0x48($16)
      lw         $2, 0xC($2)
      jalr       $2
       addiu     $6, $29, 0x18
      jal        func_800CC3A0
       addu      $4, $2, $0
      j          .L800D4A0C
       nop
  .L800D4A08:
      addiu      $2, $0, 0x1
  .L800D4A0C:
      bgezl      $17, .L800D4A14
       addu      $17, $2, $0
  .L800D4A14:
      lw         $2, 0x18($16)
      bltz       $2, .L800D4A34
       addiu     $2, $0, 0x1
      bne        $17, $2, .L800D4A34
       sw        $17, 0x18($16)
      jal        func_800CC3A0
       addu      $4, $18, $0
      sw         $2, 0x18($16)
  .L800D4A34:
      lw         $2, 0x18($29)
      bnez       $2, .L800D4A48
       nop
      jal        func_800D43C8
       addu      $4, $16, $0
  .L800D4A48:
      beqz       $19, .L800D4A58
       nop
      lw         $2, 0x18($29)
      sw         $2, 0x0($19)
  .L800D4A58:
      jal        func_800CC3A8
       addu      $4, $17, $0
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800D4954

.globl func_800D4A7C
.ent func_800D4A7C
func_800D4A7C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      beqz       $4, .L800D4AB0
       addiu     $2, $0, -0x4
      lw         $2, 0x38($4)
      beql       $2, $0, .L800D4AB0
       addiu     $2, $0, 0x1
      lw         $4, 0x3C($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
  .L800D4AB0:
      jal        func_800CC3A8
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D4A7C

.globl func_800D4AC4
.ent func_800D4AC4
func_800D4AC4:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      bnez       $17, .L800D4AE4
       sw        $16, 0x10($29)
      j          .L800D4B14
       addiu     $16, $0, -0x4
  .L800D4AE4:
      lw         $2, 0x38($17)
      beqz       $2, .L800D4B0C
       addiu     $16, $0, 0x1
      lw         $4, 0x3C($17)
      lw         $2, 0x4($2)
      jalr       $2
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
  .L800D4B0C:
      jal        func_800D43C8
       addu      $4, $17, $0
  .L800D4B14:
      jal        func_800CC3A8
       addu      $4, $16, $0
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D4AC4

.globl func_800D4B30
.ent func_800D4B30
func_800D4B30:
      addiu      $29, $29, -0x48
      sw         $18, 0x28($29)
      lw         $18, 0x5C($29)
      sw         $21, 0x34($29)
      lw         $21, 0x64($29)
      sw         $23, 0x3C($29)
      lw         $23, 0x68($29)
      sw         $30, 0x40($29)
      lw         $30, 0x6C($29)
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $19, 0x2C($29)
      addu       $19, $5, $0
      sw         $20, 0x30($29)
      addu       $20, $6, $0
      sw         $22, 0x38($29)
      addu       $22, $7, $0
      sw         $31, 0x44($29)
      beqz       $16, .L800D4BB0
       sw        $17, 0x24($29)
      beql       $19, $0, .L800D4C30
       addiu     $16, $0, -0x4
      beql       $20, $0, .L800D4C30
       addiu     $16, $0, -0x4
      beql       $18, $0, .L800D4C30
       addiu     $16, $0, -0x4
      beql       $21, $0, .L800D4C30
       addiu     $16, $0, -0x4
      beql       $23, $0, .L800D4C30
       addiu     $16, $0, -0x4
      bnez       $30, .L800D4BB8
       nop
  .L800D4BB0:
      j          .L800D4C30
       addiu     $16, $0, -0x4
  .L800D4BB8:
      jal        func_800D443C
       nop
      addu       $17, $2, $0
      beqz       $17, .L800D4C1C
       addu      $4, $17, $0
      addu       $5, $16, $0
      lw         $2, 0x58($29)
      addu       $6, $19, $0
      sw         $2, 0x14($29)
      lw         $2, 0x60($29)
      addu       $7, $20, $0
      sw         $22, 0x10($29)
      sw         $18, 0x18($29)
      jal        func_800D4460
       sw        $2, 0x1C($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800D4C20
       lui       $2, %hi(D_800FC6C0)
      addiu      $2, $2, %lo(D_800FC6C0)
      sw         $18, 0x0($21)
      sw         $2, 0x0($23)
      sw         $17, 0x0($30)
      j          .L800D4C20
       addu      $17, $0, $0
  .L800D4C1C:
      addiu      $16, $0, -0x5
  .L800D4C20:
      beqz       $17, .L800D4C34
       addu      $2, $16, $0
      jal        func_800D45AC
       addu      $4, $17, $0
  .L800D4C30:
      addu       $2, $16, $0
  .L800D4C34:
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
.end func_800D4B30

.globl func_800D4C64
.ent func_800D4C64
func_800D4C64:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $4, .L800D4CA4
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC7BC)
      lui        $5, %hi(D_800FC730)
      lui        $6, %hi(D_800FC9C8)
      addiu      $4, $4, %lo(D_800FC7BC)
      addiu      $5, $5, %lo(D_800FC730)
      addiu      $6, $6, %lo(D_800FC9C8)
      jal        func_80002E80
       addiu     $7, $0, 0x2A2
  .L800D4CA4:
      addiu      $2, $0, 0x1
      sw         $2, 0x14($16)
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D4C64

.globl func_800D4CBC
.ent func_800D4CBC
func_800D4CBC:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L800D4CFC
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800FC9E4)
      addiu      $4, $4, %lo(D_800FC9E4)
      lui        $5, %hi(D_800FC730)
      lui        $6, %hi(D_800FCA34)
      addiu      $5, $5, %lo(D_800FC730)
      addiu      $6, $6, %lo(D_800FCA34)
      jal        func_80002E80
       addiu     $7, $0, 0x2BB
  .L800D4CFC:
      jal        func_800D45AC
       addu      $4, $16, $0
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D4CBC

.globl func_800D4D14
.ent func_800D4D14
func_800D4D14:
      bne        $4, $2, .L800D4DD8
       nop
      lw         $2, 0x48($16)
      bnez       $2, .L800D4D8C
       nop
      lw         $2, 0x44($16)
      bnez       $2, .L800D4D60
       nop
      jal        func_800148C8
       nop
      sw         $2, 0x10($29)
.end func_800D4D14

.globl func_800D4D40
.ent func_800D4D40
func_800D4D40:
      jr         $31
       addu      $2, $4, $0
      lui        $5, %hi(D_800FDCB0)
      addiu      $5, $5, %lo(D_800FDCB0)
      lui        $6, %hi(D_800FDCD0)
      addiu      $6, $6, %lo(D_800FDCD0)
      jal        func_80003704
       addiu     $7, $0, 0xAD
  .L800D4D60:
      lw         $4, 0x20($16)
      lw         $2, 0x44($16)
      lw         $5, 0x40($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $6, $17, $0
      jal        func_800CCEA0
       addu      $4, $2, $0
.end func_800D4D40

.globl func_800D4D80
.ent func_800D4D80
func_800D4D80:
      lw         $8, 0x10($29)
      beqz       $7, .L800D4D94
       nop
  .L800D4D8C:
      bnel       $8, $0, .L800D4DB4
       sw        $0, 0x0($7)
  .L800D4D94:
      jr         $31
       addiu     $2, $0, -0x4
  .L800D4D9C:
      lw         $2, 0x4($4)
      sw         $2, 0x0($7)
      lw         $3, 0x8($4)
      addiu      $2, $0, 0x1
      jr         $31
       sw        $3, 0x0($8)
  .L800D4DB4:
      blez       $5, .L800D4DD4
       addu      $3, $0, $0
  .L800D4DBC:
      lw         $2, 0x0($4)
      beq        $2, $6, .L800D4D9C
       addiu     $3, $3, 0x1
      slt        $2, $3, $5
      bnez       $2, .L800D4DBC
       addiu     $4, $4, 0xC
  .L800D4DD4:
      jr         $31
  .L800D4DD8:
       addiu     $2, $0, -0x11
      addiu      $29, $29, -0x48
      sw         $17, 0x2C($29)
      addu       $17, $4, $0
      sw         $21, 0x3C($29)
      addu       $21, $5, $0
      sw         $20, 0x38($29)
      addu       $20, $6, $0
      sw         $31, 0x40($29)
      sw         $19, 0x34($29)
      sw         $18, 0x30($29)
      sw         $16, 0x28($29)
      beqz       $17, .L800D4E18
       sw        $0, 0x0($20)
      bnez       $20, .L800D4E20
       nop
  .L800D4E18:
      j          .L800D5020
       addiu     $2, $0, -0x4
  .L800D4E20:
      lw         $2, 0x10($17)
      beqz       $2, .L800D5020
       addiu     $2, $0, -0x11
      lw         $2, 0x14($17)
      bnez       $2, .L800D4E40
       addiu     $4, $0, 0x105
      j          .L800D5020
       addiu     $2, $0, -0x11
  .L800D4E40:
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $19, $2, $0
      beqz       $19, .L800D5020
       addiu     $2, $0, -0x5
      lw         $4, 0x0($17)
      jal        func_800D6128
       addu      $5, $19, $0
      addiu      $3, $0, 0x3
      bne        $2, $3, .L800D4EB8
       addiu     $6, $0, 0x2001
      addiu      $2, $29, 0x1C
      sw         $2, 0x10($29)
      lw         $4, 0x10($17)
      lw         $5, 0x14($17)
      jal        func_800D4D80
       addiu     $7, $29, 0x18
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800D5014
       ori       $2, $21, 0x100
      lw         $4, 0x18($29)
      lw         $5, 0x1C($29)
      sw         $2, 0x10($29)
      lw         $6, 0x0($17)
      lw         $7, 0x4($17)
      jal        func_800D6434
       nop
      j          .L800D5014
       addu      $16, $2, $0
  .L800D4EB8:
      jal        func_800D6784
       addu      $4, $19, $0
      addu       $16, $2, $0
      andi       $2, $16, 0xFF
      beql       $2, $0, .L800D4EF8
       addu      $4, $19, $0
      lw         $5, 0x4($17)
      beqz       $5, .L800D4EF4
       lui       $4, %hi(D_800EC638)
      jal        func_800175C0
       addiu     $4, $4, %lo(D_800EC638)
      beqz       $2, .L800D4EF8
       addu      $4, $19, $0
      j          .L800D5014
       addiu     $16, $0, -0x4
  .L800D4EF4:
      addu       $4, $19, $0
  .L800D4EF8:
      addiu      $2, $29, 0x20
      andi       $18, $16, 0xFF
      sw         $2, 0x10($29)
      sw         $18, 0x14($29)
      lw         $6, 0x10($17)
      lw         $7, 0x14($17)
      jal        func_800D61FC
       addu      $5, $21, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800D5014
       lui       $5, %hi(D_800EC694)
      addiu      $5, $5, %lo(D_800EC694)
      addiu      $7, $0, -0x1
      lw         $4, 0x20($29)
      lw         $6, 0x0($17)
      jal        func_80054530
       addiu     $4, $4, 0x1C
      beqz       $18, .L800D4F64
       lui       $5, %hi(D_800EC658)
      addiu      $5, $5, %lo(D_800EC658)
      lui        $6, %hi(D_800EC69C)
      addiu      $6, $6, %lo(D_800EC69C)
      lw         $4, 0x20($29)
      addiu      $7, $0, -0x1
      jal        func_80054530
       addiu     $4, $4, 0x1C
  .L800D4F64:
      lw         $4, 0x4($17)
      bnez       $4, .L800D4F78
       nop
      lui        $4, %hi(D_800EC638)
      addiu      $4, $4, %lo(D_800EC638)
  .L800D4F78:
      jal        func_800523C0
       nop
      lw         $3, 0x20($29)
      sw         $2, 0xC($3)
      addiu      $4, $0, 0x4
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $5, $2, $0
      beqz       $5, .L800D4FB0
       nop
      lw         $3, 0x20($29)
      lw         $2, 0xC($3)
      bnel       $2, $0, .L800D4FC4
       sw        $3, 0x0($5)
  .L800D4FB0:
      lw         $4, 0x20($29)
      jal        func_800D6390
       addiu     $16, $0, -0x5
      j          .L800D5014
       nop
  .L800D4FC4:
      lw         $2, 0x14($3)
      andi       $2, $2, 0x1
      beqz       $2, .L800D4FEC
       addu      $6, $0, $0
      lui        $4, %hi(func_800D5044)
      addiu      $4, $4, %lo(func_800D5044)
      jal        func_80051388
       addu      $7, $6, $0
      j          .L800D5000
       nop
  .L800D4FEC:
      lui        $4, %hi(func_800D5044)
      jal        func_800513C8
       addiu     $4, $4, %lo(func_800D5044)
      jal        func_8005133C
       nop
  .L800D5000:
      lw         $3, 0x20($29)
      sw         $2, 0x48($3)
      lw         $2, 0x20($29)
      addiu      $16, $0, 0x1
      sw         $2, 0x0($20)
  .L800D5014:
      jal        func_80052540
       addu      $4, $19, $0
      addu       $2, $16, $0
  .L800D5020:
      lw         $31, 0x40($29)
      lw         $21, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_800D4D80

.globl func_800D5044
.ent func_800D5044
func_800D5044:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x0($5)
      addu       $6, $4, $0
      lw         $4, 0x0($2)
      beqz       $4, .L800D5120
       addiu     $2, $0, -0x1
      lbu        $2, 0x54($4)
      beqz       $2, .L800D5078
       addiu     $2, $0, -0x7
      addiu      $6, $0, -0x1
      sw         $2, 0x50($4)
      sb         $0, 0x54($4)
  .L800D5078:
      addiu      $3, $6, 0x1
      sltiu      $2, $3, 0x9
      beqz       $2, .L800D511C
       lui       $2, %hi(jtbl_800FCA80)
      addiu      $2, $2, %lo(jtbl_800FCA80)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800D50A0
.L800D50A0:
      jal        func_800D512C
       nop
      j          .L800D5120
       nop
  .globl .L800D50B0
.L800D50B0:
      jal        func_800D55B4
       nop
      j          .L800D5120
       nop
  .globl .L800D50C0
.L800D50C0:
      jal        func_800D56D4
       nop
      j          .L800D5120
       nop
  .globl .L800D50D0
.L800D50D0:
      jal        func_800D5838
       nop
      j          .L800D5120
       nop
  .globl .L800D50E0
.L800D50E0:
      addiu      $2, $0, 0x1
      sw         $0, 0x58($4)
      jal        func_800D5EB0
       sw        $2, 0x50($4)
      j          .L800D5120
       nop
  .globl .L800D50F8
.L800D50F8:
      addiu      $2, $0, -0x1
      jal        func_800D5EB0
       sw        $2, 0x58($4)
      j          .L800D5120
       nop
  .globl .L800D510C
.L800D510C:
      jal        func_800D5F50
       nop
      j          .L800D5120
       nop
  .globl .L800D511C
.L800D511C:
      addu       $2, $6, $0
  .L800D5120:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D5044

.globl func_800D512C
.ent func_800D512C
func_800D512C:
      addiu      $29, $29, -0xB0
      sw         $16, 0xA0($29)
      addu       $16, $4, $0
      sw         $31, 0xAC($29)
      sw         $18, 0xA8($29)
      beqz       $16, .L800D5154
       sw        $17, 0xA4($29)
      lw         $2, 0x8($16)
      bnel       $2, $0, .L800D515C
       lui       $2, %hi(D_801259C0)
  .L800D5154:
      j          .L800D51B0
       addiu     $2, $0, -0x4
  .L800D515C:
      lw         $4, %lo(D_801259C0)($2)
      jal        func_8004F788
       nop
      bnez       $2, .L800D5178
       sw        $2, 0x18($16)
      j          .L800D51B0
       addiu     $2, $0, -0x5
  .L800D5178:
      lw         $2, 0x0($16)
      addiu      $17, $0, 0x1
      bne        $2, $17, .L800D5198
       nop
      jal        func_800D53A8
       addu      $4, $16, $0
      j          .L800D528C
       nop
  .L800D5198:
      lw         $5, 0x8($16)
      jal        func_800D5520
       addu      $4, $16, $0
      addu       $18, $2, $0
      beq        $18, $17, .L800D51BC
       addiu     $2, $0, -0x20
  .L800D51B0:
      sw         $2, 0x50($16)
      j          .L800D528C
       addiu     $2, $0, -0x1
  .L800D51BC:
      addiu      $4, $29, 0x10
      lui        $5, %hi(D_800FCAC0)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800FCAC0)
      lw         $2, 0x28($16)
      lw         $4, 0x2C($16)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $5, $29, 0x10
      lui        $5, %hi(D_800EC638)
      lw         $4, 0xC($16)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800EC638)
      bnez       $2, .L800D526C
       nop
      lw         $4, 0x10($16)
      lw         $2, 0x4($4)
      lw         $2, 0x18($2)
      jalr       $2
       addiu     $5, $16, 0x24
      bne        $2, $18, .L800D528C
       addiu     $2, $0, -0x1
      addiu      $17, $29, 0x90
      addu       $4, $17, $0
      lw         $6, 0x24($16)
      lui        $5, %hi(D_800EC6B4)
      jal        func_80016580
       addiu     $5, $5, %lo(D_800EC6B4)
      addiu      $16, $16, 0x1C
      addu       $4, $16, $0
      lui        $5, %hi(D_800EC668)
      addiu      $5, $5, %lo(D_800EC668)
      addu       $6, $17, $0
      jal        func_80054530
       addiu     $7, $0, -0x1
      addu       $4, $16, $0
      lui        $5, %hi(D_800EC678)
      addiu      $5, $5, %lo(D_800EC678)
      lui        $6, %hi(D_800EC688)
      addiu      $6, $6, %lo(D_800EC688)
      jal        func_80054530
       addiu     $7, $0, -0x1
      j          .L800D528C
       addiu     $2, $0, 0x2
  .L800D526C:
      lw         $4, 0x3C($16)
      beqz       $4, .L800D528C
       addiu     $2, $0, 0x5
      lw         $2, 0x38($16)
      lw         $2, 0x14($2)
      jalr       $2
       addiu     $5, $16, 0x24
      addiu      $2, $0, 0x5
  .L800D528C:
      lw         $31, 0xAC($29)
      lw         $18, 0xA8($29)
      lw         $17, 0xA4($29)
      lw         $16, 0xA0($29)
      jr         $31
       addiu     $29, $29, 0xB0
.end func_800D512C

.globl func_800D52A4
.ent func_800D52A4
func_800D52A4:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $19, 0x1C($29)
      sw         $31, 0x24($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x60($20)
      lw         $18, 0x5C($20)
      sll        $3, $2, 4
      addu       $3, $3, $2
      sll        $3, $3, 4
      addu       $16, $18, $3
      sltu       $2, $18, $16
      beqz       $2, .L800D5344
       addu      $19, $5, $0
      addiu      $17, $16, -0x110
  .L800D52EC:
      addu       $4, $17, $0
      jal        func_800175C0
       addu      $5, $19, $0
      bltz       $2, .L800D5344
       addu      $3, $16, $0
      addu       $2, $16, $0
      addu       $4, $17, $0
  .L800D5308:
      lw         $6, 0x0($4)
      lw         $7, 0x4($4)
      lw         $8, 0x8($4)
      lw         $9, 0xC($4)
      sw         $6, 0x0($2)
      sw         $7, 0x4($2)
      sw         $8, 0x8($2)
      sw         $9, 0xC($2)
      addiu      $4, $4, 0x10
      bne        $4, $3, .L800D5308
       addiu     $2, $2, 0x10
      addiu      $16, $16, -0x110
      sltu       $2, $18, $16
      bnez       $2, .L800D52EC
       addiu     $17, $16, -0x110
  .L800D5344:
      addu       $2, $16, $0
      addu       $5, $19, $0
      addiu      $3, $5, 0x110
  .L800D5350:
      lw         $6, 0x0($5)
      lw         $7, 0x4($5)
      lw         $8, 0x8($5)
      lw         $9, 0xC($5)
      sw         $6, 0x0($2)
      sw         $7, 0x4($2)
      sw         $8, 0x8($2)
      sw         $9, 0xC($2)
      addiu      $5, $5, 0x10
      bne        $5, $3, .L800D5350
       addiu     $2, $2, 0x10
      lw         $2, 0x60($20)
      addiu      $2, $2, 0x1
      sw         $2, 0x60($20)
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D52A4

.globl func_800D53A8
.ent func_800D53A8
func_800D53A8:
      addiu      $29, $29, -0x38
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $23, 0x2C($29)
      addiu      $23, $0, -0x1
      addiu      $4, $0, 0x110
      addiu      $5, $0, 0x2
      sw         $31, 0x30($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      jal        func_800524E8
       sw        $16, 0x10($29)
      addu       $19, $2, $0
      beqz       $19, .L800D5434
       addiu     $2, $0, -0x5
      lw         $4, 0x8($17)
      jal        func_800D678C
       nop
      addu       $18, $2, $0
      bnez       $18, .L800D5414
       addiu     $16, $0, 0x64
      addiu      $2, $0, -0x20
      j          .L800D54E8
       sw        $2, 0x50($17)
  .L800D5414:
      addiu      $4, $0, 0x6A40
      jal        func_80052504
       addu      $5, $0, $0
      bnez       $2, .L800D543C
       sw        $2, 0x5C($17)
      jal        func_800D679C
       addu      $4, $18, $0
      addiu      $2, $0, -0x5
  .L800D5434:
      j          .L800D54E8
       sw        $2, 0x50($17)
  .L800D543C:
      sw         $0, 0x60($17)
      lui        $21, %hi(D_800EC608)
      lui        $20, %hi(D_800FCC90)
      addiu      $22, $0, -0x5
  .L800D544C:
      addu       $4, $18, $0
  .L800D5450:
      jal        func_800D6794
       addu      $5, $19, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800D54DC
       addu      $4, $19, $0
      jal        func_800175C0
       addiu     $5, $21, %lo(D_800EC608)
      beqz       $2, .L800D5450
       addu      $4, $18, $0
      addu       $4, $19, $0
      jal        func_800175C0
       addiu     $5, $20, %lo(D_800FCC90)
      beqz       $2, .L800D5450
       addu      $4, $18, $0
      addu       $4, $17, $0
      jal        func_800D52A4
       addu      $5, $19, $0
      lw         $2, 0x60($17)
      subu       $2, $16, $2
      slti       $2, $2, 0xA
      beqz       $2, .L800D5450
       addu      $4, $18, $0
      sll        $16, $16, 1
      sll        $5, $16, 4
      addu       $5, $5, $16
      sll        $5, $5, 4
      lw         $4, 0x5C($17)
      jal        func_80052524
       addu      $6, $0, $0
      bnez       $2, .L800D544C
       sw        $2, 0x5C($17)
      jal        func_800D679C
       addu      $4, $18, $0
      j          .L800D54E8
       sw        $22, 0x50($17)
  .L800D54DC:
      jal        func_800D679C
       addu      $4, $18, $0
      addiu      $23, $0, 0x6
  .L800D54E8:
      jal        func_80052540
       addu      $4, $19, $0
      addu       $2, $23, $0
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
.end func_800D53A8

.globl func_800D5520
.ent func_800D5520
func_800D5520:
      addiu      $29, $29, -0x30
      sw         $18, 0x28($29)
      addu       $18, $4, $0
      addu       $7, $5, $0
      addiu      $5, $0, 0x3
      sw         $17, 0x24($29)
      lui        $17, %hi(D_801259C8)
      sw         $16, 0x20($29)
      lui        $16, %hi(D_801259C4)
      lw         $4, %lo(D_801259C8)($17)
      lw         $3, %lo(D_801259C4)($16)
      addiu      $2, $29, 0x18
      sw         $31, 0x2C($29)
      sw         $0, 0x10($29)
      sw         $2, 0x14($29)
      lw         $2, 0xC($3)
      jalr       $2
       addu      $6, $0, $0
      lui        $5, %hi(D_800EC638)
      lw         $4, 0xC($18)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800EC638)
      bnez       $2, .L800D5584
       addiu     $6, $0, 0x2
      addiu      $6, $0, 0x1
  .L800D5584:
      lw         $4, %lo(D_801259C8)($17)
      lw         $2, %lo(D_801259C4)($16)
      lw         $5, 0x18($29)
      lw         $2, 0x14($2)
      jalr       $2
       addiu     $7, $18, 0x10
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D5520

.globl func_800D55B4
.ent func_800D55B4
func_800D55B4:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $31, 0x24($29)
      lw         $2, 0x58($16)
      bltz       $2, .L800D5688
       addiu     $2, $0, -0x1
      lw         $2, 0x3C($16)
      beqz       $2, .L800D5688
       addiu     $2, $0, -0x1
      lw         $2, 0x18($16)
      bnez       $2, .L800D55F8
       lui       $2, %hi(D_801259C0)
      lw         $4, %lo(D_801259C0)($2)
      jal        func_8004F788
       nop
      sw         $2, 0x18($16)
  .L800D55F8:
      lw         $2, 0x38($16)
      lw         $4, 0x3C($16)
      lw         $2, 0x1C($2)
      jalr       $2
       nop
      andi       $2, $2, 0xFF
      bnez       $2, .L800D56AC
       nop
      lw         $4, 0x18($16)
      jal        func_8004FB00
       addu      $5, $0, $0
      lw         $4, 0x3C($16)
      lw         $2, 0x38($16)
      lw         $5, 0x18($16)
      lw         $2, 0x10($2)
      jalr       $2
       nop
      lw         $4, 0x18($16)
      jal        func_8004FAD0
       nop
      sw         $2, 0x10($29)
      lw         $4, 0x18($16)
      jal        func_8004FA7C
       nop
      sw         $2, 0x14($29)
      lw         $4, 0x10($16)
      lw         $2, 0x4($4)
      addiu      $5, $29, 0x10
      lw         $2, 0xC($2)
      jalr       $2
       addiu     $6, $29, 0x18
      lw         $5, 0x18($29)
      addiu      $3, $0, 0x1
      beq        $2, $3, .L800D5690
       sw        $5, 0x58($16)
      addiu      $2, $0, -0x1
  .L800D5688:
      j          .L800D56C4
       sw        $2, 0x50($16)
  .L800D5690:
      lw         $2, 0x20($16)
      addu       $4, $16, $0
      addu       $2, $2, $5
      jal        func_800D6004
       sw        $2, 0x20($4)
      j          .L800D56C4
       addiu     $2, $0, 0x5
  .L800D56AC:
      lw         $2, 0x38($16)
      lw         $4, 0x3C($16)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
      addiu      $2, $0, 0x7
  .L800D56C4:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D55B4

.globl func_800D56D4
.ent func_800D56D4
func_800D56D4:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $31, 0x24($29)
      lw         $2, 0x18($16)
      bnez       $2, .L800D5700
       lui       $2, %hi(D_801259C0)
      lw         $4, %lo(D_801259C0)($2)
      jal        func_8004F788
       nop
      sw         $2, 0x18($16)
  .L800D5700:
      lw         $4, 0x18($16)
      jal        func_8004FADC
       nop
      sw         $2, 0x10($29)
      lw         $4, 0x18($16)
      jal        func_8004FAE8
       nop
      sw         $2, 0x14($29)
      lw         $3, 0x24($16)
      sltu       $2, $3, $2
      bnel       $2, $0, .L800D5730
       sw        $3, 0x14($29)
  .L800D5730:
      lw         $4, 0x10($16)
      lw         $2, 0x4($4)
      addiu      $5, $29, 0x10
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $6, $29, 0x18
      sltiu      $2, $2, 0x2
      bnez       $2, .L800D5760
       addiu     $2, $0, -0x21
      sw         $2, 0x50($16)
      j          .L800D579C
       addiu     $2, $0, -0x1
  .L800D5760:
      lw         $5, 0x18($29)
      lw         $4, 0x18($16)
      jal        func_8004FA88
       sw        $5, 0x58($16)
      lbu        $2, 0x4C($16)
      bnez       $2, .L800D5794
       nop
      jal        func_800D5CCC
       addu      $4, $16, $0
      addu       $3, $2, $0
      addiu      $2, $0, 0x3
      bne        $3, $2, .L800D579C
       addu      $2, $3, $0
  .L800D5794:
      jal        func_800D5DF0
       addu      $4, $16, $0
  .L800D579C:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D56D4

.globl func_800D57AC
.ent func_800D57AC
func_800D57AC:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      lui        $5, %hi(D_800FCC94)
      addiu      $5, $5, %lo(D_800FCC94)
      sw         $31, 0x20($29)
      jal        func_80017640
       sw        $16, 0x10($29)
      jal        func_80017780
       addu      $4, $17, $0
      addu       $16, $17, $2
      addu       $4, $16, $0
      jal        func_80017500
       addu      $5, $18, $0
      addu       $4, $16, $0
      lui        $5, %hi(D_800EC614)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800EC614)
      addu       $4, $16, $0
      jal        func_80017500
       addu      $5, $19, $0
      jal        func_800D6740
       addu      $4, $16, $0
      addu       $2, $17, $0
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D57AC

.globl func_800D5838
.ent func_800D5838
func_800D5838:
      addiu      $29, $29, -0x58
      sw         $17, 0x34($29)
      addu       $17, $4, $0
      addiu      $8, $0, -0x1
      sw         $21, 0x44($29)
      addu       $21, $0, $0
      sw         $19, 0x3C($29)
      addu       $19, $21, $0
      lui        $2, %hi(D_800FCAA4)
      addiu      $4, $0, 0x168
      sw         $31, 0x54($29)
      sw         $30, 0x50($29)
      sw         $23, 0x4C($29)
      sw         $22, 0x48($29)
      sw         $20, 0x40($29)
      sw         $18, 0x38($29)
      sw         $16, 0x30($29)
      sw         $8, 0x28($29)
      addiu      $8, $2, %lo(D_800FCAA4)
      lw         $9, 0x0($8)
      lw         $10, 0x4($8)
      lw         $11, 0x8($8)
      sw         $9, 0x18($29)
      sw         $10, 0x1C($29)
      sw         $11, 0x20($29)
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $20, $2, $0
      beqz       $20, .L800D58D8
       addiu     $4, $0, 0x104
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $21, $2, $0
      beqz       $21, .L800D58D8
       addiu     $4, $0, 0x168
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $19, $2, $0
      bnez       $19, .L800D58E4
       nop
  .L800D58D8:
      addiu      $2, $0, -0x5
      j          .L800D5B30
       sw        $2, 0x50($17)
  .L800D58E4:
      jal        func_800D5CCC
       addu      $4, $17, $0
      lbu        $2, 0x4C($17)
      beqz       $2, .L800D5B30
       addu      $4, $17, $0
      lui        $5, %hi(D_800FCB18)
      addiu      $5, $5, %lo(D_800FCB18)
      addiu      $16, $0, 0x1
      jal        func_800D5BBC
       sw        $16, 0x50($17)
      lw         $18, 0x50($17)
      bne        $18, $16, .L800D5B30
       addu      $4, $19, $0
      lui        $5, %hi(D_800FCADC)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800FCADC)
      addu       $4, $20, $0
      lw         $6, 0x8($17)
      jal        func_80016580
       addu      $5, $19, $0
      addu       $4, $17, $0
      jal        func_800D5BBC
       addu      $5, $20, $0
      lw         $16, 0x50($17)
      bne        $16, $18, .L800D5B30
       addu      $4, $17, $0
      lui        $5, %hi(D_800FCB30)
      jal        func_800D5BBC
       addiu     $5, $5, %lo(D_800FCB30)
      lw         $18, 0x50($17)
      bne        $18, $16, .L800D5B30
       addu      $4, $20, $0
      lui        $5, %hi(D_800FCB4C)
      lw         $6, 0x8($17)
      jal        func_80016580
       addiu     $5, $5, %lo(D_800FCB4C)
      addu       $4, $17, $0
      jal        func_800D5BBC
       addu      $5, $20, $0
      lw         $16, 0x50($17)
      bne        $16, $18, .L800D5B30
       addu      $4, $17, $0
      lui        $5, %hi(D_800FCB80)
      jal        func_800D5BBC
       addiu     $5, $5, %lo(D_800FCB80)
      lw         $2, 0x50($17)
      bne        $2, $16, .L800D5B30
       addu      $18, $0, $0
      lui        $30, %hi(D_800FCB90)
      lui        $23, %hi(D_800FCB98)
      addiu      $22, $0, 0x1
      addiu      $16, $29, 0x18
  .L800D59B4:
      addu       $4, $19, $0
      jal        func_80017640
       addiu     $5, $30, %lo(D_800FCB90)
      lw         $5, 0x0($16)
      jal        func_80017500
       addu      $4, $19, $0
      addu       $4, $19, $0
      jal        func_80017500
       addiu     $5, $23, %lo(D_800FCB98)
      addu       $4, $17, $0
      jal        func_800D5BBC
       addu      $5, $19, $0
      lw         $2, 0x50($17)
      bne        $2, $22, .L800D5B30
       addiu     $18, $18, 0x1
      slti       $2, $18, 0x3
      bnez       $2, .L800D59B4
       addiu     $16, $16, 0x4
      addu       $4, $17, $0
      lui        $5, %hi(D_800FCB88)
      jal        func_800D5BBC
       addiu     $5, $5, %lo(D_800FCB88)
      lw         $3, 0x50($17)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800D5B30
       nop
      lw         $2, 0x60($17)
      blez       $2, .L800D5B00
       addu      $18, $0, $0
      addu       $16, $18, $0
  .L800D5A2C:
      addu       $4, $21, $0
      lw         $6, 0x5C($17)
      lw         $5, 0x8($17)
      jal        func_800D57AC
       addu      $6, $6, $16
      addu       $4, $19, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x4
      lw         $2, 0x5C($17)
      addu       $2, $16, $2
      lw         $3, 0x10C($2)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L800D5AA4
       addu      $4, $19, $0
      lui        $5, %hi(D_800FCB04)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800FCB04)
      addu       $4, $20, $0
      lui        $5, %hi(D_800FCBA0)
      lw         $7, 0x5C($17)
      addiu      $5, $5, %lo(D_800FCBA0)
      sw         $19, 0x10($29)
      lw         $2, 0x5C($17)
      addu       $6, $21, $0
      addu       $2, $16, $2
      lw         $2, 0x108($2)
      addu       $7, $7, $16
      j          .L800D5ACC
       sw        $2, 0x14($29)
  .L800D5AA4:
      lui        $5, %hi(D_800FCB0C)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800FCB0C)
      addu       $4, $20, $0
      lui        $5, %hi(D_800FCBEC)
      addiu      $5, $5, %lo(D_800FCBEC)
      lw         $7, 0x5C($17)
      addu       $6, $21, $0
      sw         $19, 0x10($29)
      addu       $7, $7, $16
  .L800D5ACC:
      jal        func_80016580
       nop
      addu       $4, $17, $0
      jal        func_800D5BBC
       addu      $5, $20, $0
      lw         $3, 0x50($17)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800D5B30
       addiu     $18, $18, 0x1
      lw         $2, 0x60($17)
      slt        $2, $18, $2
      bnez       $2, .L800D5A2C
       addiu     $16, $16, 0x110
  .L800D5B00:
      addu       $4, $17, $0
      lui        $5, %hi(D_800FCC38)
      jal        func_800D5BBC
       addiu     $5, $5, %lo(D_800FCC38)
      lw         $3, 0x50($17)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800D5B30
       nop
      jal        func_800D5B7C
       addu      $4, $17, $0
      addiu      $9, $0, 0x7
      sw         $9, 0x28($29)
  .L800D5B30:
      jal        func_80052540
       addu      $4, $19, $0
      jal        func_80052540
       addu      $4, $21, $0
      jal        func_80052540
       addu      $4, $20, $0
      lw         $2, 0x28($29)
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
.end func_800D5838

.globl func_800D5B7C
.ent func_800D5B7C
func_800D5B7C:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      addu       $5, $0, $0
      sw         $31, 0x1C($29)
      lw         $2, 0x30($16)
      lw         $4, 0x34($16)
      lw         $6, 0x18($16)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $7, $29, 0x10
      sw         $0, 0x18($16)
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D5B7C

.globl func_800D5BBC
.ent func_800D5BBC
func_800D5BBC:
      addiu      $29, $29, -0x40
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $19, 0x24($29)
      addu       $19, $5, $0
      sw         $31, 0x38($29)
      sw         $23, 0x34($29)
      sw         $22, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $18, 0x20($29)
      sw         $16, 0x18($29)
      lw         $2, 0x18($17)
      bnez       $2, .L800D5C18
       addu      $18, $0, $0
      lui        $2, %hi(D_801259C0)
      lw         $4, %lo(D_801259C0)($2)
      jal        func_8004F788
       nop
      bnez       $2, .L800D5C18
       sw        $2, 0x18($17)
      addiu      $2, $0, -0x5
      sw         $2, 0x50($17)
  .L800D5C18:
      jal        func_80017780
       addu      $4, $19, $0
      addu       $21, $2, $0
      slt        $2, $18, $21
      beqz       $2, .L800D5CA0
       addu      $20, $21, $0
      lui        $23, %hi(D_801259C0)
      addiu      $22, $0, -0x5
  .L800D5C38:
      lw         $4, 0x18($17)
      addu       $5, $19, $0
      jal        func_8004F8C8
       addu      $6, $20, $0
      addu       $16, $2, $0
      addu       $18, $18, $16
      beq        $18, $21, .L800D5C98
       slt       $2, $18, $21
      addu       $5, $0, $0
      lw         $4, 0x34($17)
      lw         $2, 0x30($17)
      lw         $6, 0x18($17)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $7, $29, 0x10
      lw         $4, %lo(D_801259C0)($23)
      jal        func_8004F788
       nop
      bnez       $2, .L800D5C8C
       sw        $2, 0x18($17)
      sw         $22, 0x50($17)
  .L800D5C8C:
      addu       $19, $19, $16
      subu       $20, $20, $16
      slt        $2, $18, $21
  .L800D5C98:
      bnez       $2, .L800D5C38
       nop
  .L800D5CA0:
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
.end func_800D5BBC

.globl func_800D5CCC
.ent func_800D5CCC
func_800D5CCC:
      addiu      $29, $29, -0x38
      sw         $16, 0x28($29)
      addu       $16, $4, $0
      sw         $31, 0x34($29)
      sw         $18, 0x30($29)
      sw         $17, 0x2C($29)
      lw         $2, 0x58($16)
      bgez       $2, .L800D5CFC
       addiu     $2, $29, 0x20
      addiu      $2, $0, -0x1
      j          .L800D5DD8
       sw        $2, 0x50($16)
  .L800D5CFC:
      lw         $3, 0x28($16)
      sw         $2, 0x10($29)
      addiu      $2, $16, 0x30
      addiu      $17, $16, 0x34
      sw         $2, 0x14($29)
      sw         $17, 0x18($29)
      lw         $4, 0x2C($16)
      lw         $5, 0x1C($16)
      lw         $7, 0x18($16)
      lw         $2, 0x0($3)
      jalr       $2
       addu      $6, $5, $0
      addiu      $18, $0, 0x1
      bne        $2, $18, .L800D5D44
       addiu     $2, $0, -0x1
      lw         $3, 0x30($16)
      bnez       $3, .L800D5D4C
       nop
  .L800D5D44:
      j          .L800D5DD0
       addiu     $3, $0, -0x17
  .L800D5D4C:
      lw         $2, 0x34($16)
      bnez       $2, .L800D5D74
       nop
      lw         $4, 0x2C($16)
      lw         $5, 0x20($29)
      lw         $2, 0x0($3)
      jalr       $2
       addu      $6, $17, $0
      bne        $2, $18, .L800D5DCC
       addiu     $2, $0, -0x1
  .L800D5D74:
      lw         $6, 0x30($16)
      lw         $2, 0x1C($16)
      addu       $5, $0, $0
      sw         $2, 0x10($29)
      lui        $2, %hi(D_801259E4)
      lw         $3, 0x14($16)
      addiu      $2, $2, %lo(D_801259E4)
      sw         $2, 0x18($29)
      sw         $16, 0x1C($29)
      sw         $3, 0x14($29)
      lw         $4, 0x34($16)
      lw         $7, 0x1C($16)
      lw         $2, 0x4($6)
      jalr       $2
       addu      $6, $5, $0
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800D5DCC
       addiu     $2, $0, -0x1
      sb         $3, 0x4C($16)
      j          .L800D5DD8
       addiu     $2, $0, 0x3
  .L800D5DCC:
      addiu      $3, $0, -0x18
  .L800D5DD0:
      sw         $0, 0x34($16)
      sw         $3, 0x50($16)
  .L800D5DD8:
      lw         $31, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800D5CCC

.globl func_800D5DF0
.ent func_800D5DF0
func_800D5DF0:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      lw         $2, 0x58($16)
      bgez       $2, .L800D5E18
       nop
      addiu      $2, $0, -0x1
      j          .L800D5EA0
       sw        $2, 0x50($16)
  .L800D5E18:
      blez       $2, .L800D5EA0
       addiu     $2, $0, 0x7
      lw         $4, 0x18($16)
      jal        func_8004FA7C
       nop
      addu       $3, $2, $0
      blez       $3, .L800D5E4C
       addu      $4, $16, $0
      lw         $2, 0x20($16)
      sw         $0, 0x58($16)
      addu       $2, $2, $3
      jal        func_800D6004
       sw        $2, 0x20($16)
  .L800D5E4C:
      addu       $5, $0, $0
      lw         $4, 0x34($16)
      lw         $2, 0x30($16)
      lw         $6, 0x18($16)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $7, $29, 0x10
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      beq        $3, $2, .L800D5E84
       sw        $0, 0x18($16)
      sw         $3, 0x50($16)
      j          .L800D5EA0
       addiu     $2, $0, -0x1
  .L800D5E84:
      lw         $2, 0x10($29)
      bne        $2, $3, .L800D5EA0
       addiu     $2, $0, 0x2
      lw         $4, 0x48($16)
      jal        func_800513F4
       nop
      addiu      $2, $0, 0x2
  .L800D5EA0:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D5DF0

.globl func_800D5EB0
.ent func_800D5EB0
func_800D5EB0:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $31, 0x20($29)
      sw         $17, 0x1C($29)
      lw         $3, 0x30($16)
      lw         $4, 0x34($16)
      beqz       $3, .L800D5F3C
       addiu     $2, $0, 0x4
      beqz       $4, .L800D5F3C
       addiu     $17, $0, 0x1
      lw         $2, 0x50($16)
      bne        $2, $17, .L800D5EEC
       addiu     $5, $0, -0x7
      addu       $5, $17, $0
  .L800D5EEC:
      lw         $2, 0xC($3)
      jalr       $2
       addiu     $6, $29, 0x10
      addu       $3, $2, $0
      bltz       $3, .L800D5F24
       nop
      lw         $2, 0x10($29)
      bne        $2, $17, .L800D5F34
       addiu     $2, $0, 0x4
      lw         $4, 0x48($16)
      jal        func_800513F4
       nop
      j          .L800D5F34
       addiu     $2, $0, 0x4
  .L800D5F24:
      lw         $2, 0x50($16)
      bgezl      $2, .L800D5F30
       sw        $3, 0x50($16)
  .L800D5F30:
      addiu      $2, $0, 0x4
  .L800D5F34:
      sw         $0, 0x30($16)
      sw         $0, 0x34($16)
  .L800D5F3C:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D5EB0

.globl func_800D5F50
.ent func_800D5F50
func_800D5F50:
      addiu      $29, $29, -0x98
      sw         $16, 0x90($29)
      addu       $16, $4, $0
      addiu      $4, $29, 0x10
      lui        $5, %hi(D_800FCAD0)
      addiu      $5, $5, %lo(D_800FCAD0)
      addiu      $2, $0, 0x1
      sw         $31, 0x94($29)
      jal        func_80017640
       sb        $2, 0x4($16)
      lw         $2, 0x28($16)
      beqz       $2, .L800D5FAC
       nop
      lw         $4, 0x2C($16)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $5, $29, 0x10
      lw         $4, 0x2C($16)
      lw         $2, 0x28($16)
      lw         $5, 0x50($16)
      lw         $2, 0xC($2)
      jalr       $2
       nop
  .L800D5FAC:
      lw         $31, 0x94($29)
      lw         $16, 0x90($29)
      addiu      $2, $0, 0x7FFF
      jr         $31
       addiu     $29, $29, 0x98
.end func_800D5F50

.globl func_800D5FC0
.ent func_800D5FC0
func_800D5FC0:
      sw         $5, 0x44($4)
      jr         $31
       addiu     $2, $0, 0x1
.end func_800D5FC0

.globl func_800D5FCC
.ent func_800D5FCC
func_800D5FCC:
      beqz       $4, .L800D5FDC
       nop
      bnez       $5, .L800D5FE4
       nop
  .L800D5FDC:
      jr         $31
       addiu     $2, $0, -0x1
  .L800D5FE4:
      lw         $2, 0x24($4)
      sw         $2, 0x0($5)
      lw         $2, 0x20($4)
      sw         $2, 0x4($5)
      lw         $3, 0x58($4)
      addiu      $2, $0, 0x1
      jr         $31
       sw        $3, 0x8($5)
.end func_800D5FCC

.globl func_800D6004
.ent func_800D6004
func_800D6004:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $31, 0x28($29)
      sw         $17, 0x24($29)
      lw         $2, 0x24($16)
      lw         $17, 0x2C($16)
      sw         $2, 0x10($29)
      lw         $2, 0x20($16)
      sw         $2, 0x14($29)
      lw         $2, 0x58($16)
      sw         $2, 0x18($29)
      lw         $2, 0x44($16)
      bnez       $2, .L800D6050
       addu      $4, $17, $0
      lw         $2, 0x28($16)
      lw         $2, 0x4($2)
      j          .L800D6080
       nop
  .L800D6050:
      jal        func_8002A000
       addu      $4, $0, $0
      lw         $3, 0x40($16)
      addu       $5, $2, $0
      slt        $3, $5, $3
      bnez       $3, .L800D6088
       addu      $4, $17, $0
      lw         $2, 0x44($16)
      lw         $3, 0x28($16)
      addu       $2, $5, $2
      sw         $2, 0x40($16)
      lw         $2, 0x4($3)
  .L800D6080:
      jalr       $2
       addiu     $5, $29, 0x10
  .L800D6088:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D6004

.globl func_800D609C
.ent func_800D609C
func_800D609C:
      addiu      $29, $29, -0x18
      addu       $6, $4, $0
      bnez       $6, .L800D60B4
       sw        $31, 0x10($29)
      j          .L800D60F0
       addiu     $2, $0, -0x4
  .L800D60B4:
      beqz       $5, .L800D60D4
       nop
      lw         $2, 0x24($6)
      sw         $2, 0x0($5)
      lw         $3, 0x20($6)
      addiu      $2, $0, -0x7
      sw         $2, 0x8($5)
      sw         $3, 0x4($5)
  .L800D60D4:
      lw         $4, 0x48($6)
      addiu      $2, $0, -0x7
      beqz       $4, .L800D60EC
       sw        $2, 0x50($6)
      jal        func_8005147C
       nop
  .L800D60EC:
      addiu      $2, $0, 0x1
  .L800D60F0:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D609C

.globl func_800D60FC
.ent func_800D60FC
func_800D60FC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800D6390
       nop
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D60FC

.globl func_800D611C
.ent func_800D611C
func_800D611C:
      lbu        $2, 0x4($4)
      jr         $31
       nop
.end func_800D611C

.globl func_800D6128
.ent func_800D6128
func_800D6128:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      lui        $2, %hi(D_800FCC94)
      sw         $17, 0x14($29)
      addiu      $17, $2, %lo(D_800FCC94)
      addu       $5, $17, $0
      sw         $31, 0x1C($29)
      jal        func_800177C0
       addiu     $6, $0, 0x7
      bnez       $2, .L800D6168
       addu      $4, $16, $0
      j          .L800D6180
       addiu     $4, $16, 0x7
  .L800D6168:
      addu       $5, $17, $0
      jal        func_800177C0
       addiu     $6, $0, 0x5
      bnez       $2, .L800D61E4
       addiu     $2, $0, -0x1
      addiu      $4, $16, 0x5
  .L800D6180:
      lbu        $3, 0x0($4)
      addiu      $2, $0, 0x2F
      bne        $3, $2, .L800D61E4
       addiu     $2, $0, 0x3
      addiu      $4, $4, 0x1
      lbu        $5, 0x0($4)
      beqz       $5, .L800D61B8
       addu      $3, $0, $0
  .L800D61A0:
      addiu      $4, $4, 0x1
      addu       $2, $18, $3
      sb         $5, 0x0($2)
      lbu        $5, 0x0($4)
      bnez       $5, .L800D61A0
       addiu     $3, $3, 0x1
  .L800D61B8:
      addu       $2, $18, $3
      sb         $0, 0x0($2)
      lbu        $2, 0x0($18)
      bnez       $2, .L800D61D8
       addu      $4, $18, $0
      lui        $5, %hi(D_800EC614)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800EC614)
  .L800D61D8:
      jal        func_800D67C0
       addu      $4, $18, $0
      addiu      $2, $0, 0x1
  .L800D61E4:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D6128

.globl func_800D61FC
.ent func_800D61FC
func_800D61FC:
      addiu      $29, $29, -0x30
      sw         $19, 0x1C($29)
      lw         $19, 0x40($29)
      sw         $17, 0x14($29)
      lbu        $17, 0x47($29)
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $21, 0x24($29)
      addu       $21, $5, $0
      sw         $22, 0x28($29)
      addu       $22, $6, $0
      sw         $18, 0x18($29)
      addu       $18, $7, $0
      sw         $31, 0x2C($29)
      bnez       $19, .L800D6244
       sw        $16, 0x10($29)
      j          .L800D6368
       addiu     $2, $0, -0x4
  .L800D6244:
      sw         $0, 0x0($19)
      addiu      $4, $0, 0x64
      jal        func_80052504
       addu      $5, $0, $0
      addu       $16, $2, $0
      beqz       $16, .L800D6368
       addiu     $2, $0, -0x5
      andi       $2, $17, 0xFF
      beqz       $2, .L800D6274
       addiu     $2, $0, 0x1
      j          .L800D6278
       sw        $2, 0x0($16)
  .L800D6274:
      sw         $0, 0x0($16)
  .L800D6278:
      jal        func_800523C0
       addu      $4, $20, $0
      bnez       $2, .L800D6298
       sw        $2, 0x8($16)
      jal        func_80052540
       addu      $4, $16, $0
      j          .L800D6368
       addiu     $2, $0, -0x5
  .L800D6298:
      addu       $4, $0, $0
      addu       $5, $4, $0
      addiu      $6, $16, 0x1C
      sw         $0, 0x10($16)
      sw         $0, 0x18($16)
      sw         $21, 0x14($16)
      sw         $0, 0x20($16)
      jal        func_80054380
       sw        $0, 0x24($16)
      lw         $2, 0x1C($16)
      bnez       $2, .L800D62D8
       nop
      jal        func_800D6390
       addu      $4, $16, $0
      j          .L800D6368
       addiu     $2, $0, -0x5
  .L800D62D8:
      blez       $18, .L800D6340
       addu      $3, $0, $0
      addiu      $5, $0, 0x2001
      addiu      $4, $0, 0x2015
      addu       $6, $22, $0
  .L800D62EC:
      lw         $2, 0x0($6)
      beq        $2, $5, .L800D6308
       nop
      beq        $2, $4, .L800D631C
       nop
      j          .L800D6330
       addiu     $6, $6, 0xC
  .L800D6308:
      lw         $2, 0x4($6)
      sw         $2, 0x28($16)
      lw         $2, 0x8($6)
      j          .L800D632C
       sw        $2, 0x2C($16)
  .L800D631C:
      lw         $2, 0x4($6)
      sw         $2, 0x38($16)
      lw         $2, 0x8($6)
      sw         $2, 0x3C($16)
  .L800D632C:
      addiu      $6, $6, 0xC
  .L800D6330:
      addiu      $3, $3, 0x1
      slt        $2, $3, $18
      bnez       $2, .L800D62EC
       nop
  .L800D6340:
      lw         $2, 0x28($16)
      beqz       $2, .L800D635C
       addiu     $2, $0, 0x1
      addu       $3, $2, $0
      sb         $3, 0x55($16)
      j          .L800D6368
       sw        $16, 0x0($19)
  .L800D635C:
      jal        func_800D6390
       addu      $4, $16, $0
      addiu      $2, $0, -0x11
  .L800D6368:
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
.end func_800D61FC

.globl func_800D6390
.ent func_800D6390
func_800D6390:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L800D6424
       sw        $31, 0x14($29)
      lw         $4, 0x8($16)
      jal        func_80052540
       nop
      lw         $4, 0xC($16)
      jal        func_80052540
       nop
      lw         $4, 0x10($16)
      beqz       $4, .L800D63D8
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
  .L800D63D8:
      lw         $4, 0x18($16)
      beqz       $4, .L800D63EC
       nop
      jal        func_8004F810
       nop
  .L800D63EC:
      lw         $4, 0x1C($16)
      beqz       $4, .L800D6400
       nop
      jal        func_800546DC
       nop
  .L800D6400:
      lw         $4, 0x5C($16)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x64
      jal        func_80052540
       addu      $4, $16, $0
  .L800D6424:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D6390

.globl func_800D6434
.ent func_800D6434
func_800D6434:
      addiu      $29, $29, -0x68
      sw         $21, 0x5C($29)
      addu       $21, $4, $0
      sw         $19, 0x54($29)
      addu       $19, $5, $0
      sw         $16, 0x48($29)
      addu       $16, $6, $0
      sw         $20, 0x58($29)
      addu       $20, $7, $0
      sw         $17, 0x4C($29)
      addu       $17, $0, $0
      addu       $4, $16, $0
      lui        $2, %hi(D_800FCC94)
      sw         $18, 0x50($29)
      addiu      $18, $2, %lo(D_800FCC94)
      addu       $5, $18, $0
      sw         $31, 0x60($29)
      jal        func_800177C0
       addiu     $6, $0, 0x7
      bnez       $2, .L800D6490
       addu      $4, $16, $0
      j          .L800D64A4
       addiu     $17, $16, 0x7
  .L800D6490:
      addu       $5, $18, $0
      jal        func_800177C0
       addiu     $6, $0, 0x5
      beql       $2, $0, .L800D64A4
       addiu     $17, $16, 0x5
  .L800D64A4:
      jal        func_80017780
       addu      $4, $17, $0
      addiu      $4, $2, 0x7
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $16, $2, $0
      beqz       $16, .L800D6528
       addu      $4, $16, $0
      lui        $5, %hi(D_800FCCA0)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800FCCA0)
      addu       $4, $16, $0
      jal        func_80017500
       addu      $5, $17, $0
      addiu      $4, $29, 0x10
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x38
      addu       $4, $19, $0
      sw         $16, 0x10($29)
      sw         $20, 0x14($29)
      lw         $2, 0x1C($21)
      lw         $6, 0x78($29)
      jalr       $2
       addiu     $5, $29, 0x10
      addu       $4, $16, $0
      jal        func_80052540
       addu      $16, $2, $0
      addiu      $3, $0, 0x1
      beq        $16, $3, .L800D652C
       addiu     $2, $0, 0x3
      j          .L800D652C
       addiu     $2, $0, -0x1
  .L800D6528:
      addiu      $2, $0, -0x5
  .L800D652C:
      lw         $31, 0x60($29)
      lw         $21, 0x5C($29)
      lw         $20, 0x58($29)
      lw         $19, 0x54($29)
      lw         $18, 0x50($29)
      lw         $17, 0x4C($29)
      lw         $16, 0x48($29)
      jr         $31
       addiu     $29, $29, 0x68
.end func_800D6434

.globl func_800D6550
.ent func_800D6550
func_800D6550:
      addiu      $29, $29, -0x18
      addiu      $2, $0, -0x7
      bne        $5, $2, .L800D6568
       sw        $31, 0x10($29)
      addiu      $2, $0, 0x1
      sb         $2, 0x54($4)
  .L800D6568:
      lw         $4, 0x48($4)
      jal        func_80051414
       nop
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D6550

.globl func_800D6584
.ent func_800D6584
func_800D6584:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $4, 0x48($4)
      jal        func_80051414
       nop
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D6584

.globl func_800D65A8
.ent func_800D65A8
func_800D65A8:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      addiu      $4, $0, 0xC
      addu       $5, $0, $0
      sw         $31, 0x18($29)
      jal        func_800524E8
       sw        $17, 0x14($29)
      addu       $17, $2, $0
      beqz       $17, .L800D6658
       addiu     $2, $0, 0x2005
      jal        func_800D6728
       sw        $2, 0x0($17)
      sw         $2, 0x4($17)
      addiu      $2, $0, 0x1
      addu       $4, $2, $0
      lui        $3, %hi(D_800FCC88)
      addiu      $3, $3, %lo(D_800FCC88)
      sw         $3, 0x8($16)
      lui        $3, %hi(D_800FCC80)
      addiu      $3, $3, %lo(D_800FCC80)
      sw         $3, 0x18($16)
      lui        $3, %hi(D_800EC7C0)
      addiu      $3, $3, %lo(D_800EC7C0)
      sw         $3, 0x1C($16)
      lui        $3, %hi(D_800EC7CC)
      addiu      $3, $3, %lo(D_800EC7CC)
      sw         $3, 0x20($16)
      lui        $3, %hi(D_800FCAB0)
      addiu      $3, $3, %lo(D_800FCAB0)
      sw         $3, 0x24($16)
      addiu      $3, $0, 0x4
      sw         $4, 0x0($16)
      sw         $4, 0x4($16)
      sw         $4, 0x10($16)
      sw         $17, 0x14($16)
      sw         $0, 0xC($16)
      sh         $3, 0x28($16)
      sh         $0, 0x2A($16)
      sh         $0, 0x2C($16)
      sh         $0, 0x2E($16)
      sw         $0, 0x30($16)
      j          .L800D665C
       sh        $4, 0x34($16)
  .L800D6658:
      addiu      $2, $0, -0x5
  .L800D665C:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D65A8

.globl func_800D6670
.ent func_800D6670
func_800D6670:
      addiu      $29, $29, -0x18
      beqz       $5, .L800D6698
       sw        $31, 0x10($29)
      lw         $3, 0x4($5)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800D669C
       nop
      lw         $4, 0x14($5)
      jal        func_80052540
       nop
  .L800D6698:
      addiu      $2, $0, 0x1
  .L800D669C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D6670

.globl func_800D66A8
.ent func_800D66A8
func_800D66A8:
      blez       $7, .L800D66E4
       addu      $4, $0, $0
      addiu      $10, $0, 0x2010
      lui        $9, %hi(D_801259C4)
      lui        $8, %hi(D_801259C8)
  .L800D66BC:
      lw         $2, 0x0($6)
      bne        $2, $10, .L800D66D8
       addiu     $4, $4, 0x1
      lw         $2, 0x4($6)
      lw         $3, 0x8($6)
      sw         $2, %lo(D_801259C4)($9)
      sw         $3, %lo(D_801259C8)($8)
  .L800D66D8:
      slt        $2, $4, $7
      bnez       $2, .L800D66BC
       addiu     $6, $6, 0xC
  .L800D66E4:
      lui        $4, %hi(D_801259C0)
      lw         $2, %lo(D_801259C0)($4)
      bnez       $2, .L800D6710
       addiu     $2, $0, -0x12
      beqz       $5, .L800D6708
       addiu     $2, $0, 0x1
      lw         $3, 0x0($5)
      jr         $31
       sw        $3, %lo(D_801259C0)($4)
  .L800D6708:
      jr         $31
       addiu     $2, $0, -0x4
  .L800D6710:
      jr         $31
       nop
.end func_800D66A8

.globl func_800D6718
.ent func_800D6718
func_800D6718:
      lui        $2, %hi(D_801259C0)
      sw         $0, %lo(D_801259C0)($2)
      jr         $31
       addiu     $2, $0, 0x1
.end func_800D6718

.globl func_800D6728
.ent func_800D6728
func_800D6728:
      lui        $2, %hi(D_801259CC)
      jr         $31
       addiu     $2, $2, %lo(D_801259CC)
.end func_800D6728

.globl func_800D6734
.ent func_800D6734
func_800D6734:
      addiu      $22, $0, -0x5
      lw         $4, 0x18($17)
      addu       $5, $19, $0
.end func_800D6734

.globl func_800D6740
.ent func_800D6740
func_800D6740:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addiu      $5, $0, 0x4
      sw         $31, 0x14($29)
      jal        func_80057A8C
       addiu     $6, $0, 0x2F
      addu       $4, $16, $0
      addu       $16, $2, $0
      jal        func_80017640
       addu      $5, $16, $0
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D6740

.globl func_800D6784
.ent func_800D6784
func_800D6784:
      jr         $31
       addu      $2, $0, $0
.end func_800D6784

.globl func_800D678C
.ent func_800D678C
func_800D678C:
      jr         $31
       addu      $2, $0, $0
.end func_800D678C

.globl func_800D6794
.ent func_800D6794
func_800D6794:
      jr         $31
       addu      $2, $0, $0
.end func_800D6794

.globl func_800D679C
.ent func_800D679C
func_800D679C:
      jr         $31
       nop
.end func_800D679C

.globl func_800D67A4
.ent func_800D67A4
func_800D67A4:
      lw         $23, 0x34($29)
      lw         $22, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
.end func_800D67A4

.globl func_800D67C0
.ent func_800D67C0
func_800D67C0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80057C34
       nop
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D67C0

.globl func_800D67E0
.ent func_800D67E0
func_800D67E0:
      sw         $17, 0x2C($29)
      lw         $2, 0x58($16)
      bgez       $2, .L800D67FC
       addiu     $2, $29, 0x20
      addiu      $2, $0, -0x1
      j          .L800D68D8
       sw        $2, 0x50($16)
  .L800D67FC:
      lw         $3, 0x28($16)
      addiu      $29, $29, -0x80
      sw         $17, 0x5C($29)
      addu       $17, $4, $0
      sw         $23, 0x74($29)
      addu       $23, $6, $0
      sw         $21, 0x6C($29)
      addu       $21, $0, $0
      sw         $16, 0x58($29)
      addiu      $16, $0, -0x1
      sw         $31, 0x78($29)
      sw         $22, 0x70($29)
      sw         $20, 0x68($29)
      sw         $19, 0x64($29)
      sw         $18, 0x60($29)
      sw         $5, 0x84($29)
      sw         $0, 0x44($29)
      sw         $0, 0x4C($29)
      beqz       $17, .L800D6854
       sw        $0, 0x50($29)
      bnez       $23, .L800D685C
       nop
  .L800D6854:
      j          .L800D6AAC
       addiu     $2, $0, -0x4
  .L800D685C:
      lw         $2, 0x10($17)
      beqz       $2, .L800D6AAC
       addiu     $2, $0, -0x11
      lw         $2, 0x14($17)
      bnez       $2, .L800D687C
       srl       $5, $5, 3
      j          .L800D6AAC
       addiu     $2, $0, -0x11
  .L800D687C:
      andi       $22, $5, 0x1
      addu       $20, $0, $0
      lui        $2, %hi(D_80137BE8)
      lw         $18, 0x0($17)
      lw         $2, %lo(D_80137BE8)($2)
      beqz       $2, .L800D68A4
       addu      $19, $18, $0
      lbu        $2, 0x0($2)
      sltu       $2, $0, $2
      addu       $20, $2, $0
  .L800D68A4:
      sw         $0, 0x0($23)
      lw         $2, 0x84($29)
      andi       $2, $2, 0x100
      beqz       $2, .L800D68D8
       addu      $5, $0, $0
      lw         $4, 0x8($17)
      lui        $6, %hi(D_800EC694)
      addiu      $6, $6, %lo(D_800EC694)
      jal        func_8005446C
       addiu     $7, $29, 0x40
      addu       $18, $2, $0
      beqz       $18, .L800D6A68
       nop
  .L800D68D8:
      andi       $2, $20, 0xFF
      beqz       $2, .L800D6928
       andi      $2, $22, 0xFF
      bnez       $2, .L800D692C
       addu      $4, $19, $0
      lw         $2, 0x84($29)
      andi       $2, $2, 0x200
      bnez       $2, .L800D6930
       addiu     $5, $29, 0x44
      addiu      $4, $0, 0x402
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $21, $2, $0
      beqz       $21, .L800D6A08
       addiu     $5, $29, 0x84
      lw         $4, 0x0($17)
      addu       $6, $21, $0
      addiu      $7, $0, 0x401
      jal        func_800D8014
       addu      $19, $21, $0
  .L800D6928:
      addu       $4, $19, $0
  .L800D692C:
      addiu      $5, $29, 0x44
  .L800D6930:
      addiu      $6, $29, 0x48
      lw         $2, 0x84($29)
      addiu      $7, $29, 0x4C
      jal        func_800D8188
       sw        $2, 0x10($29)
      addu       $16, $2, $0
      addiu      $20, $0, 0x1
      bne        $16, $20, .L800D6A68
       addu      $4, $19, $0
      lw         $2, 0x4($17)
      lw         $6, 0x44($29)
      lhu        $7, 0x48($29)
      sw         $2, 0x10($29)
      lw         $2, 0x4C($29)
      sw         $2, 0x14($29)
      lw         $2, 0x8($17)
      sw         $2, 0x18($29)
      lw         $2, 0x84($29)
      sw         $2, 0x1C($29)
      lw         $2, 0xC($17)
      sw         $2, 0x20($29)
      lw         $2, 0x10($17)
      sw         $2, 0x24($29)
      lw         $2, 0x14($17)
      sw         $2, 0x28($29)
      lw         $2, 0x1C($17)
      sw         $2, 0x2C($29)
      lw         $2, 0x20($17)
      sw         $2, 0x30($29)
      lw         $2, 0x24($17)
      addu       $5, $18, $0
      sw         $2, 0x34($29)
      lw         $3, 0x34($17)
      addiu      $2, $29, 0x50
      sw         $2, 0x3C($29)
      jal        func_800D7888
       sw        $3, 0x38($29)
      addu       $16, $2, $0
      bne        $16, $20, .L800D6A68
       nop
      lw         $3, 0x50($29)
      lw         $2, 0x14($3)
      beql       $2, $0, .L800D6A68
       addiu     $16, $0, -0x1
      lw         $2, 0x8($3)
      bnez       $2, .L800D69F4
       addiu     $4, $0, 0x4
      j          .L800D6A68
       addiu     $16, $0, -0x1
  .L800D69F4:
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $5, $2, $0
      bnez       $5, .L800D6A10
       nop
  .L800D6A08:
      j          .L800D6A68
       addiu     $16, $0, -0x5
  .L800D6A10:
      lw         $2, 0x50($29)
      sw         $2, 0x0($5)
      lw         $2, 0x18($2)
      andi       $2, $2, 0x1
      beqz       $2, .L800D6A40
       addu      $6, $0, $0
      lui        $4, %hi(func_800D6BD0)
      addiu      $4, $4, %lo(func_800D6BD0)
      jal        func_80051388
       addu      $7, $6, $0
      j          .L800D6A54
       nop
  .L800D6A40:
      lui        $4, %hi(func_800D6BD0)
      jal        func_800513C8
       addiu     $4, $4, %lo(func_800D6BD0)
      jal        func_8005133C
       nop
  .L800D6A54:
      lw         $3, 0x50($29)
      sw         $2, 0x88($3)
      lw         $2, 0x50($29)
      addiu      $16, $0, 0x1
      sw         $2, 0x0($23)
  .L800D6A68:
      jal        func_80052540
       addu      $4, $21, $0
      lw         $4, 0x44($29)
      jal        func_80052540
       nop
      lw         $4, 0x4C($29)
      jal        func_80052540
       nop
      addiu      $2, $0, 0x1
      beq        $16, $2, .L800D6AAC
       addu      $2, $16, $0
      lw         $4, 0x50($29)
      beqz       $4, .L800D6AAC
       nop
      jal        func_800D7E48
       nop
      addu       $2, $16, $0
  .L800D6AAC:
      lw         $31, 0x78($29)
      lw         $23, 0x74($29)
      lw         $22, 0x70($29)
      lw         $21, 0x6C($29)
      lw         $20, 0x68($29)
      lw         $19, 0x64($29)
      lw         $18, 0x60($29)
      lw         $17, 0x5C($29)
      lw         $16, 0x58($29)
      jr         $31
       addiu     $29, $29, 0x80
.end func_800D67E0

.globl func_800D6AD8
.ent func_800D6AD8
func_800D6AD8:
      beqz       $4, .L800D6AE4
       addiu     $2, $0, 0x1
      lbu        $2, 0xC2($4)
  .L800D6AE4:
      jr         $31
       nop
.end func_800D6AD8

.globl func_800D6AEC
.ent func_800D6AEC
func_800D6AEC:
      beqz       $4, .L800D6AFC
       nop
      bgezl      $5, .L800D6B04
       sw        $5, 0x80($4)
  .L800D6AFC:
      jr         $31
       addiu     $2, $0, -0x4
  .L800D6B04:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800D6AEC

.globl func_800D6B0C
.ent func_800D6B0C
func_800D6B0C:
      beqz       $4, .L800D6B1C
       nop
      bnez       $5, .L800D6B24
       nop
  .L800D6B1C:
      jr         $31
       addiu     $2, $0, -0x4
  .L800D6B24:
      lw         $2, 0x78($4)
      sw         $2, 0x0($5)
      lw         $2, 0x74($4)
      sw         $2, 0x4($5)
      lw         $3, 0x6C($4)
      addiu      $2, $0, 0x1
      jr         $31
       sw        $3, 0x8($5)
.end func_800D6B0C

.globl func_800D6B44
.ent func_800D6B44
func_800D6B44:
      addiu      $29, $29, -0x18
      addu       $6, $4, $0
      bnez       $6, .L800D6B5C
       sw        $31, 0x10($29)
      j          .L800D6B98
       addiu     $2, $0, -0x4
  .L800D6B5C:
      beqz       $5, .L800D6B7C
       nop
      lw         $2, 0x78($6)
      sw         $2, 0x0($5)
      lw         $3, 0x74($6)
      addiu      $2, $0, -0x7
      sw         $2, 0x8($5)
      sw         $3, 0x4($5)
  .L800D6B7C:
      lw         $4, 0x88($6)
      addiu      $2, $0, -0x7
      beqz       $4, .L800D6B94
       sw        $2, 0x84($6)
      jal        func_8005147C
       nop
  .L800D6B94:
      addiu      $2, $0, 0x1
  .L800D6B98:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D6B44

.globl func_800D6BA4
.ent func_800D6BA4
func_800D6BA4:
      addiu      $29, $29, -0x18
      beqz       $4, .L800D6BC0
       sw        $31, 0x10($29)
      jal        func_800D7E48
       nop
      j          .L800D6BC4
       addiu     $2, $0, 0x1
  .L800D6BC0:
      addiu      $2, $0, -0x4
  .L800D6BC4:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D6BA4

.globl func_800D6BD0
.ent func_800D6BD0
func_800D6BD0:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x0($5)
      lw         $16, 0x0($2)
      lbu        $2, 0xC1($16)
      beqz       $2, .L800D6BFC
       addiu     $2, $0, -0x7
      addiu      $4, $0, -0x1
      sw         $2, 0x84($16)
      sb         $0, 0xC1($16)
  .L800D6BFC:
      addiu      $3, $4, 0x1
      sltiu      $2, $3, 0x10
      beqz       $2, .L800D6D90
       lui       $2, %hi(jtbl_800FCCC0)
      addiu      $2, $2, %lo(jtbl_800FCCC0)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800D6C24
.L800D6C24:
      jal        func_800DA800
       addu      $4, $16, $0
      j          .L800D6D9C
       addu      $3, $2, $0
  .globl .L800D6C34
.L800D6C34:
      jal        func_800D6DB0
       addu      $4, $16, $0
      j          .L800D6D9C
       addu      $3, $2, $0
  .globl .L800D6C44
.L800D6C44:
      jal        func_800D6E2C
       addu      $4, $16, $0
      j          .L800D6D9C
       addu      $3, $2, $0
  .globl .L800D6C54
.L800D6C54:
      jal        func_800D6F2C
       addu      $4, $16, $0
      j          .L800D6D9C
       addu      $3, $2, $0
  .globl .L800D6C64
.L800D6C64:
      jal        func_800D70C4
       addu      $4, $16, $0
      j          .L800D6D9C
       addu      $3, $2, $0
  .globl .L800D6C74
.L800D6C74:
      jal        func_800D71CC
       addu      $4, $16, $0
      j          .L800D6D9C
       addu      $3, $2, $0
  .globl .L800D6C84
.L800D6C84:
      jal        func_800D6F24
       addu      $4, $16, $0
      j          .L800D6D9C
       addu      $3, $2, $0
  .globl .L800D6C94
.L800D6C94:
      jal        func_800D93C0
       addu      $4, $16, $0
      j          .L800D6D9C
       addu      $3, $2, $0
  .globl .L800D6CA4
.L800D6CA4:
      jal        func_800D9CC0
       addu      $4, $16, $0
      j          .L800D6D9C
       addu      $3, $2, $0
  .globl .L800D6CB4
.L800D6CB4:
      j          .L800D6D9C
       addiu     $3, $0, 0x9
  .globl .L800D6CBC
.L800D6CBC:
      addiu      $2, $0, 0x1
      sb         $2, 0xCD($16)
      jal        func_800DAE80
       addu      $4, $16, $0
      j          .L800D6D9C
       addu      $3, $2, $0
  .globl .L800D6CD4
.L800D6CD4:
      addu       $4, $16, $0
      jal        func_800D732C
       addiu     $5, $0, 0x1
      j          .L800D6D9C
       addu      $3, $2, $0
  .globl .L800D6CE8
.L800D6CE8:
      lw         $4, 0x3C($16)
      beql       $4, $0, .L800D6D44
       addu      $4, $16, $0
      jal        func_8004FA7C
       nop
      blez       $2, .L800D6D44
       addu      $4, $16, $0
      lw         $2, 0xA4($16)
      beqz       $2, .L800D6D30
       nop
      jal        func_800D732C
       addiu     $5, $0, 0x1
      addu       $3, $2, $0
      addiu      $2, $0, -0x1
      bnel       $3, $2, .L800D6D9C
       addiu     $3, $0, 0xB
      j          .L800D6DA0
       addu      $2, $3, $0
  .L800D6D30:
      lw         $4, 0x3C($16)
      jal        func_8004F810
       nop
      sw         $0, 0x3C($16)
      addu       $4, $16, $0
  .L800D6D44:
      addiu      $2, $0, 0x1
      sw         $0, 0x6C($4)
      j          .L800D6D70
       sw        $2, 0x84($4)
  .globl .L800D6D54
.L800D6D54:
      lw         $3, 0x84($16)
      addiu      $2, $0, -0x1
      bltz       $3, .L800D6D6C
       sw        $2, 0x6C($16)
      addiu      $2, $0, -0x7
      sw         $2, 0x84($16)
  .L800D6D6C:
      addu       $4, $16, $0
  .L800D6D70:
      jal        func_800D745C
       nop
      j          .L800D6D9C
       addu      $3, $2, $0
  .globl .L800D6D80
.L800D6D80:
      jal        func_800D7504
       addu      $4, $16, $0
      j          .L800D6D9C
       addu      $3, $2, $0
  .globl .L800D6D90
.L800D6D90:
      addiu      $2, $0, -0x4
      sw         $2, 0x84($16)
      addiu      $3, $0, -0x1
  .L800D6D9C:
      addu       $2, $3, $0
  .L800D6DA0:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D6BD0

.globl func_800D6DB0
.ent func_800D6DB0
func_800D6DB0:
      addiu      $29, $29, -0x98
      sw         $16, 0x90($29)
      addu       $16, $4, $0
      addiu      $4, $29, 0x10
      lui        $5, %hi(D_800FCD40)
      sw         $31, 0x94($29)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800FCD40)
      lw         $2, 0x90($16)
      lw         $4, 0x8C($16)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $5, $29, 0x10
      lw         $4, 0x98($16)
      addiu      $5, $16, 0x6C
      lw         $2, 0x0($4)
      lw         $6, 0x4($16)
      lw         $2, 0x30($2)
      jalr       $2
       addiu     $7, $16, 0x40
      bnez       $2, .L800D6E1C
       addiu     $2, $0, 0x2
      lw         $2, 0x84($16)
      bltz       $2, .L800D6E18
       addiu     $2, $0, -0x15
      sw         $2, 0x84($16)
  .L800D6E18:
      addiu      $2, $0, -0x1
  .L800D6E1C:
      lw         $31, 0x94($29)
      lw         $16, 0x90($29)
      jr         $31
       addiu     $29, $29, 0x98
.end func_800D6DB0

.globl func_800D6E2C
.ent func_800D6E2C
func_800D6E2C:
      addiu      $29, $29, -0xA8
      sw         $16, 0x98($29)
      addu       $16, $4, $0
      sw         $31, 0xA0($29)
      sw         $17, 0x9C($29)
      lw         $2, 0x6C($16)
      addiu      $17, $0, -0x1
      bnel       $2, $17, .L800D6E64
       addiu     $4, $29, 0x18
      lw         $2, 0x84($16)
      bltz       $2, .L800D6F0C
       addiu     $2, $0, -0x13
      j          .L800D6F0C
       sw        $2, 0x84($16)
  .L800D6E64:
      lui        $5, %hi(D_800FCD54)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800FCD54)
      lw         $2, 0x90($16)
      lw         $4, 0x8C($16)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $5, $29, 0x18
      lw         $5, 0xC8($16)
      beql       $5, $0, .L800D6EC8
       addiu     $5, $16, 0x6C
      lw         $5, 0x4($5)
      beq        $5, $17, .L800D6EC4
       sw        $5, 0x68($16)
      lw         $4, 0x94($16)
      lw         $2, 0x0($4)
      lw         $2, 0x3C($2)
      jalr       $2
       nop
      andi       $2, $2, 0xFF
      bnez       $2, .L800D6EF0
       addiu     $3, $0, 0x1
      j          .L800D6EF0
       addiu     $3, $0, -0x15
  .L800D6EC4:
      addiu      $5, $16, 0x6C
  .L800D6EC8:
      lw         $2, 0x94($16)
      lhu        $7, 0x0($16)
      lw         $3, 0x0($2)
      addiu      $2, $16, 0x68
      sw         $2, 0x10($29)
      lw         $4, 0x94($16)
      lw         $2, 0x8($3)
      jalr       $2
       addiu     $6, $16, 0x40
      addu       $3, $2, $0
  .L800D6EF0:
      addiu      $2, $0, 0x1
      beq        $3, $2, .L800D6F10
       addiu     $2, $0, 0x3
      lw         $2, 0x84($16)
      bltz       $2, .L800D6F0C
       addiu     $2, $0, -0x14
      sw         $2, 0x84($16)
  .L800D6F0C:
      addiu      $2, $0, -0x1
  .L800D6F10:
      lw         $31, 0xA0($29)
      lw         $17, 0x9C($29)
      lw         $16, 0x98($29)
      jr         $31
       addiu     $29, $29, 0xA8
.end func_800D6E2C

.globl func_800D6F24
.ent func_800D6F24
func_800D6F24:
      jr         $31
       addiu     $2, $0, -0x1
.end func_800D6F24

.globl func_800D6F2C
.ent func_800D6F2C
func_800D6F2C:
      addiu      $29, $29, -0xC0
      sw         $17, 0x9C($29)
      addu       $17, $4, $0
      sw         $16, 0x98($29)
      addiu      $16, $0, -0x1
      sw         $18, 0xA0($29)
      addu       $18, $0, $0
      sw         $21, 0xAC($29)
      addu       $21, $18, $0
      sw         $20, 0xA8($29)
      sw         $31, 0xB8($29)
      sw         $23, 0xB4($29)
      sw         $22, 0xB0($29)
      sw         $19, 0xA4($29)
      lw         $22, 0x94($17)
      lw         $2, 0x6C($17)
      lw         $23, 0x0($22)
      bne        $2, $16, .L800D6F84
       addiu     $20, $0, -0x5
      sb         $0, 0xC3($17)
      j          .L800D7074
       addiu     $20, $0, -0x14
  .L800D6F84:
      addiu      $4, $29, 0x18
      lui        $5, %hi(D_800FCD68)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800FCD68)
      lw         $2, 0x90($17)
      lw         $4, 0x8C($17)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $5, $29, 0x18
      lw         $4, 0x30($17)
      jal        func_80052540
       nop
      lui        $6, %hi(D_800FCEC8)
      lw         $4, 0x10($17)
      lw         $5, 0x14($17)
      addiu      $6, $6, %lo(D_800FCEC8)
      jal        func_800D76F0
       sw        $0, 0x30($17)
      addu       $18, $2, $0
      beqz       $18, .L800D7074
       nop
      lw         $4, 0x20($17)
      jal        func_8005481C
       nop
      addu       $21, $2, $0
      beqz       $21, .L800D7074
       nop
      jal        func_80017780
       addu      $4, $18, $0
      addu       $4, $21, $0
      jal        func_80017780
       addu      $16, $2, $0
      addu       $19, $16, $2
      addiu      $4, $19, 0x1
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $16, $2, $0
      beqz       $16, .L800D7074
       addu      $4, $16, $0
      jal        func_80017640
       addu      $5, $18, $0
      addu       $4, $16, $0
      jal        func_80017500
       addu      $5, $21, $0
      addu       $4, $22, $0
      sw         $16, 0x30($17)
      sw         $19, 0x10($29)
      lw         $6, 0x68($17)
      lw         $2, 0x18($23)
      lw         $7, 0x30($17)
      jalr       $2
       addiu     $5, $17, 0x6C
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800D7074
       addiu     $20, $0, -0x15
      lw         $2, 0xA8($17)
      beqz       $2, .L800D7084
       addiu     $16, $0, 0x6
      j          .L800D7084
       addiu     $16, $0, 0x5
  .L800D7074:
      lw         $2, 0x84($17)
      bgezl      $2, .L800D7080
       sw        $20, 0x84($17)
  .L800D7080:
      addiu      $16, $0, 0xD
  .L800D7084:
      jal        func_80052540
       addu      $4, $18, $0
      jal        func_80052540
       addu      $4, $21, $0
      addu       $2, $16, $0
      lw         $31, 0xB8($29)
      lw         $23, 0xB4($29)
      lw         $22, 0xB0($29)
      lw         $21, 0xAC($29)
      lw         $20, 0xA8($29)
      lw         $19, 0xA4($29)
      lw         $18, 0xA0($29)
      lw         $17, 0x9C($29)
      lw         $16, 0x98($29)
      jr         $31
       addiu     $29, $29, 0xC0
.end func_800D6F2C

.globl func_800D70C4
.ent func_800D70C4
func_800D70C4:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lw         $17, 0x94($16)
      lw         $3, 0x6C($16)
      lw         $18, 0x0($17)
      addiu      $2, $0, -0x1
      beq        $3, $2, .L800D7178
       sb        $0, 0xC3($16)
      lw         $2, 0x3C($16)
      bnez       $2, .L800D7110
       lui       $2, %hi(D_80125A00)
      lw         $4, %lo(D_80125A00)($2)
      jal        func_8004F788
       nop
      sw         $2, 0x3C($16)
  .L800D7110:
      lw         $2, 0xAC($16)
      lw         $4, 0xA8($16)
      lw         $2, 0x1C($2)
      jalr       $2
       nop
      andi       $2, $2, 0xFF
      bnez       $2, .L800D7190
       nop
      lw         $4, 0x3C($16)
      jal        func_8004FB00
       addu      $5, $0, $0
      lw         $4, 0xA8($16)
      lw         $2, 0xAC($16)
      lw         $5, 0x3C($16)
      lw         $2, 0x10($2)
      jalr       $2
       nop
      addu       $4, $17, $0
      lw         $2, 0x20($18)
      lw         $6, 0x68($16)
      lw         $7, 0x3C($16)
      jalr       $2
       addiu     $5, $16, 0x6C
      addiu      $3, $0, 0x1
      beq        $2, $3, .L800D71B4
       addiu     $2, $0, 0x5
  .L800D7178:
      lw         $2, 0x84($16)
      bltz       $2, .L800D7188
       addiu     $2, $0, -0x15
      sw         $2, 0x84($16)
  .L800D7188:
      j          .L800D71B4
       addiu     $2, $0, -0x1
  .L800D7190:
      lw         $4, 0x3C($16)
      jal        func_8004FB00
       addu      $5, $0, $0
      lw         $2, 0xAC($16)
      lw         $4, 0xA8($16)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
      addiu      $2, $0, 0x6
  .L800D71B4:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D70C4

.globl func_800D71CC
.ent func_800D71CC
func_800D71CC:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lw         $3, 0x6C($16)
      addiu      $2, $0, -0x1
      beq        $3, $2, .L800D7270
       nop
      lw         $17, 0x94($16)
      lw         $18, 0x0($17)
      lw         $5, 0x68($16)
      lw         $2, 0x3C($18)
      jalr       $2
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L800D7288
       nop
      lbu        $2, 0xC0($16)
      beqz       $2, .L800D7230
       nop
      lbu        $2, 0xCD($16)
      beqz       $2, .L800D7314
       addiu     $2, $0, 0xE
  .L800D7230:
      lw         $3, 0x78($16)
      addiu      $2, $0, -0x1
      beq        $3, $2, .L800D7314
       addiu     $2, $0, 0xB
      lw         $4, 0x3C($16)
      beqz       $4, .L800D7270
       nop
      jal        func_8004FA7C
       nop
      lw         $3, 0x74($16)
      lw         $4, 0x78($16)
      addu       $2, $2, $3
      bne        $2, $4, .L800D7288
       addiu     $2, $0, 0xB
      j          .L800D7314
       nop
  .L800D7270:
      lw         $2, 0x84($16)
      bltz       $2, .L800D7280
       addiu     $2, $0, -0x15
      sw         $2, 0x84($16)
  .L800D7280:
      j          .L800D7314
       addiu     $2, $0, 0xD
  .L800D7288:
      lw         $2, 0x3C($16)
      bnez       $2, .L800D72C0
       sb        $0, 0xC3($16)
      lui        $2, %hi(D_80125A00)
      lw         $4, %lo(D_80125A00)($2)
      jal        func_8004F788
       nop
      bnez       $2, .L800D72C0
       sw        $2, 0x3C($16)
      lw         $2, 0x84($16)
      bltz       $2, .L800D72F0
       addiu     $2, $0, -0x5
      j          .L800D72F0
       sw        $2, 0x84($16)
  .L800D72C0:
      addu       $4, $17, $0
      lw         $2, 0x1C($18)
      lw         $6, 0x68($16)
      lw         $7, 0x3C($16)
      jalr       $2
       addiu     $5, $16, 0x6C
      bnez       $2, .L800D72F8
       nop
      lw         $2, 0x84($16)
      bltz       $2, .L800D72F0
       addiu     $2, $0, -0x15
      sw         $2, 0x84($16)
  .L800D72F0:
      j          .L800D7314
       addiu     $2, $0, -0x1
  .L800D72F8:
      lbu        $2, 0xC0($16)
      beqz       $2, .L800D7314
       addiu     $2, $0, 0x7
      lbu        $3, 0xCD($16)
      beqz       $3, .L800D7314
       addiu     $2, $0, 0xE
      addiu      $2, $0, 0xA
  .L800D7314:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D71CC

.globl func_800D732C
.ent func_800D732C
func_800D732C:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $18, 0x18($29)
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      lw         $3, 0x6C($16)
      addiu      $2, $0, -0x1
      bne        $3, $2, .L800D7368
       addu      $18, $5, $0
      lw         $2, 0x84($16)
      bltz       $2, .L800D7404
       addiu     $2, $0, -0x15
      j          .L800D7404
       sw        $2, 0x84($16)
  .L800D7368:
      beql       $3, $0, .L800D7370
       addiu     $18, $0, 0x1
  .L800D7370:
      lw         $4, 0x3C($16)
      jal        func_8004FA7C
       nop
      addu       $17, $2, $0
      bltz       $17, .L800D740C
       nop
      lw         $4, 0x3C($16)
      jal        func_8004FAE8
       nop
      bnez       $17, .L800D73B0
       addu      $3, $2, $0
      lw         $4, 0x3C($16)
      jal        func_8004FB00
       addu      $5, $0, $0
      j          .L800D740C
       nop
  .L800D73B0:
      andi       $2, $18, 0xFF
      bnez       $2, .L800D73CC
       nop
      bgtz       $3, .L800D740C
       nop
      bnez       $3, .L800D740C
       nop
  .L800D73CC:
      lw         $2, 0x74($16)
      addu       $4, $16, $0
      addu       $2, $2, $17
      jal        func_800D7650
       sw        $2, 0x74($16)
      jal        func_800D75DC
       addu      $4, $16, $0
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      beq        $3, $2, .L800D740C
       nop
      lw         $2, 0x84($16)
      bgezl      $2, .L800D7404
       sw        $3, 0x84($16)
  .L800D7404:
      j          .L800D7444
       addiu     $2, $0, -0x1
  .L800D740C:
      lw         $2, 0x6C($16)
      beql       $2, $0, .L800D7440
       sw        $0, 0x6C($16)
      lw         $2, 0x74($16)
      lw         $3, 0x78($16)
      slt        $2, $2, $3
      bnez       $2, .L800D7438
       sw        $0, 0x6C($16)
      addiu      $2, $0, -0x1
      bne        $3, $2, .L800D7440
       nop
  .L800D7438:
      j          .L800D7444
       addiu     $2, $0, 0x6
  .L800D7440:
      addiu      $2, $0, 0xB
  .L800D7444:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D732C

.globl func_800D745C
.ent func_800D745C
func_800D745C:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $31, 0x24($29)
      sw         $18, 0x20($29)
      sw         $16, 0x18($29)
      lw         $3, 0xA4($17)
      beqz       $3, .L800D74EC
       addiu     $2, $0, 0xC
      lw         $4, 0xA0($17)
      beqz       $4, .L800D74EC
       addiu     $18, $0, 0x1
      lw         $2, 0x84($17)
      bne        $2, $18, .L800D749C
       addiu     $5, $0, -0x7
      addu       $5, $18, $0
  .L800D749C:
      lw         $2, 0xC($3)
      jalr       $2
       addiu     $6, $29, 0x10
      addu       $16, $2, $0
      bnel       $16, $18, .L800D74D0
       sw        $0, 0xA4($17)
      lw         $2, 0x10($29)
      bnel       $2, $16, .L800D74D0
       sw        $0, 0xA4($17)
      lw         $4, 0x88($17)
      jal        func_800513F4
       nop
      sw         $0, 0xA4($17)
  .L800D74D0:
      bgez       $16, .L800D74E8
       sw        $0, 0xA0($17)
      lw         $3, 0x84($17)
      addiu      $2, $0, -0x5
      bnel       $3, $2, .L800D74E8
       sw        $16, 0x84($17)
  .L800D74E8:
      addiu      $2, $0, 0xC
  .L800D74EC:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D745C

.globl func_800D7504
.ent func_800D7504
func_800D7504:
      addiu      $29, $29, -0x98
      sw         $16, 0x90($29)
      addu       $16, $4, $0
      addiu      $4, $29, 0x10
      lui        $5, %hi(D_800FCD88)
      sw         $31, 0x94($29)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800FCD88)
      lw         $2, 0x90($16)
      beqz       $2, .L800D7540
       nop
      lw         $4, 0x8C($16)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $5, $29, 0x10
  .L800D7540:
      lw         $4, 0x94($16)
      addiu      $2, $0, 0x1
      beqz       $4, .L800D7590
       sb        $2, 0xC2($16)
      lw         $5, 0x68($16)
      addiu      $2, $0, -0x1
      beq        $5, $2, .L800D7590
       nop
      lw         $2, 0xC8($16)
      bnel       $2, $0, .L800D7584
       sw        $4, 0x0($2)
      lw         $2, 0x0($4)
      lw         $2, 0x10($2)
      jalr       $2
       nop
      j          .L800D7590
       nop
  .L800D7584:
      lw         $3, 0xC8($16)
      lw         $2, 0x68($16)
      sw         $2, 0x4($3)
  .L800D7590:
      lw         $4, 0x3C($16)
      beqz       $4, .L800D75A8
       nop
      jal        func_8004F810
       nop
      sw         $0, 0x3C($16)
  .L800D75A8:
      lw         $2, 0x90($16)
      beqz       $2, .L800D75C8
       nop
      lw         $4, 0x8C($16)
      lw         $5, 0x84($16)
      lw         $2, 0xC($2)
      jalr       $2
       nop
  .L800D75C8:
      lw         $31, 0x94($29)
      lw         $16, 0x90($29)
      addiu      $2, $0, 0x7FFF
      jr         $31
       addiu     $29, $29, 0x98
.end func_800D7504

.globl func_800D75DC
.ent func_800D75DC
func_800D75DC:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      addu       $5, $0, $0
      sw         $31, 0x1C($29)
      lw         $4, 0xA0($16)
      lw         $2, 0xA4($16)
      lw         $6, 0x3C($16)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $7, $29, 0x10
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      beq        $3, $2, .L800D7624
       sw        $0, 0x3C($16)
      sw         $3, 0x84($16)
      j          .L800D7640
       addu      $2, $3, $0
  .L800D7624:
      lw         $2, 0x10($29)
      bne        $2, $3, .L800D7640
       addiu     $2, $0, 0x1
      lw         $4, 0x88($16)
      jal        func_800513F4
       nop
      addiu      $2, $0, 0x1
  .L800D7640:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D75DC

.globl func_800D7650
.ent func_800D7650
func_800D7650:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $31, 0x28($29)
      sw         $17, 0x24($29)
      lw         $17, 0x8C($16)
      beqz       $16, .L800D76DC
       nop
      lw         $2, 0x78($16)
      sw         $2, 0x10($29)
      lw         $2, 0x74($16)
      sw         $2, 0x14($29)
      lw         $2, 0x6C($16)
      sw         $2, 0x18($29)
      lw         $2, 0x80($16)
      bnez       $2, .L800D76A4
       addu      $4, $17, $0
      lw         $2, 0x90($16)
      lw         $2, 0x4($2)
      j          .L800D76D4
       nop
  .L800D76A4:
      jal        func_8002A000
       addu      $4, $0, $0
      lw         $3, 0x7C($16)
      addu       $5, $2, $0
      slt        $3, $5, $3
      bnez       $3, .L800D76DC
       addu      $4, $17, $0
      lw         $2, 0x80($16)
      lw         $3, 0x90($16)
      addu       $2, $5, $2
      sw         $2, 0x7C($16)
      lw         $2, 0x4($3)
  .L800D76D4:
      jalr       $2
       addiu     $5, $29, 0x10
  .L800D76DC:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D7650

.globl func_800D76F0
.ent func_800D76F0
func_800D76F0:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $19, 0x24($29)
      addu       $19, $6, $0
      sw         $31, 0x28($29)
      jal        func_80017780
       sw        $16, 0x18($29)
      addu       $4, $18, $0
      jal        func_80017780
       addu      $16, $2, $0
      addu       $16, $16, $2
      addiu      $4, $16, 0x14
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $16, $2, $0
      beqz       $16, .L800D7760
       addu      $4, $16, $0
      sw         $19, 0x10($29)
      lui        $5, %hi(D_800FCECC)
      addiu      $5, $5, %lo(D_800FCECC)
      addu       $6, $17, $0
      jal        func_80016580
       addu      $7, $18, $0
      j          .L800D7764
       addu      $2, $16, $0
  .L800D7760:
      addu       $2, $0, $0
  .L800D7764:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D76F0

.globl func_800D7780
.ent func_800D7780
func_800D7780:
      addiu      $29, $29, -0x30
      sw         $21, 0x24($29)
      addu       $21, $4, $0
      sw         $22, 0x28($29)
      addu       $22, $5, $0
      sw         $16, 0x10($29)
      sll        $16, $21, 2
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $31, 0x2C($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      blez       $21, .L800D77E4
       sw        $18, 0x18($29)
      addu       $18, $22, $0
  .L800D77BC:
      lw         $4, 0x0($18)
      beql       $4, $0, .L800D77D8
       addiu     $17, $17, 0x1
      jal        func_80017780
       addiu     $16, $16, 0x1
      addu       $16, $16, $2
      addiu      $17, $17, 0x1
  .L800D77D8:
      slt        $2, $17, $21
      bnez       $2, .L800D77BC
       addiu     $18, $18, 0x4
  .L800D77E4:
      addu       $4, $16, $0
      jal        func_80052504
       addu      $5, $0, $0
      addu       $20, $2, $0
      beqz       $20, .L800D7860
       addu      $2, $0, $0
      sll        $2, $21, 2
      addu       $19, $20, $2
      blez       $21, .L800D785C
       addu      $17, $0, $0
      addu       $16, $22, $0
      addu       $18, $20, $0
  .L800D7814:
      lw         $2, 0x0($16)
      bnel       $2, $0, .L800D7828
       sw        $19, 0x0($18)
      j          .L800D7848
       sw        $0, 0x0($18)
  .L800D7828:
      lw         $5, 0x0($16)
      jal        func_80017640
       addu      $4, $19, $0
      lw         $4, 0x0($16)
      jal        func_80017780
       nop
      addiu      $2, $2, 0x1
      addu       $19, $19, $2
  .L800D7848:
      addiu      $16, $16, 0x4
      addiu      $17, $17, 0x1
      slt        $2, $17, $21
      bnez       $2, .L800D7814
       addiu     $18, $18, 0x4
  .L800D785C:
      addu       $2, $20, $0
  .L800D7860:
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
.end func_800D7780

.globl func_800D7888
.ent func_800D7888
func_800D7888:
      addiu      $29, $29, -0x78
      sw         $22, 0x68($29)
      lw         $22, 0x94($29)
      sw         $18, 0x58($29)
      lw         $18, 0xA4($29)
      sw         $19, 0x5C($29)
      lw         $19, 0xB0($29)
      lw         $8, 0xB4($29)
      sw         $21, 0x64($29)
      addu       $21, $4, $0
      sw         $23, 0x6C($29)
      addu       $23, $5, $0
      sw         $30, 0x70($29)
      addu       $30, $6, $0
      sw         $20, 0x60($29)
      addu       $20, $7, $0
      sw         $17, 0x54($29)
      addiu      $17, $0, -0x5
      sw         $31, 0x74($29)
      beqz       $8, .L800D78E8
       sw        $16, 0x50($29)
      lw         $8, 0x98($29)
      bnez       $8, .L800D78F0
       addiu     $4, $0, 0xD0
  .L800D78E8:
      j          .L800D7DE0
       addiu     $2, $0, -0x4
  .L800D78F0:
      lw         $8, 0xB4($29)
      addu       $5, $0, $0
      jal        func_80052504
       sw        $0, 0x0($8)
      addu       $16, $2, $0
      beqz       $16, .L800D7DE0
       addu      $2, $17, $0
      jal        func_800523C0
       addu      $4, $21, $0
      beqz       $2, .L800D7DCC
       sw        $2, 0x8($16)
      jal        func_800523C0
       addu      $4, $23, $0
      beqz       $2, .L800D7DCC
       sw        $2, 0xC($16)
      jal        func_800523C0
       addu      $4, $30, $0
      beqz       $2, .L800D7DCC
       sw        $2, 0x4($16)
      addiu      $2, $0, -0x1
      sh         $20, 0x0($16)
      sw         $2, 0x68($16)
      blez       $18, .L800D7978
       sw        $18, 0x24($16)
      lw         $5, 0xA8($29)
      jal        func_800D7780
       addu      $4, $18, $0
      beqz       $2, .L800D7DCC
       sw        $2, 0x28($16)
      lw         $5, 0xAC($29)
      jal        func_800D7780
       addu      $4, $18, $0
      beqz       $2, .L800D7DCC
       sw        $2, 0x2C($16)
  .L800D7978:
      beqz       $19, .L800D798C
       sw        $19, 0xC8($16)
      lw         $2, 0x0($19)
      bnez       $2, .L800D79AC
       sw        $2, 0x98($16)
  .L800D798C:
      lw         $4, 0x98($29)
      jal        func_800CB75C
       nop
      beqz       $2, .L800D7DCC
       sw        $2, 0x9C($16)
      addu       $4, $2, $0
      jal        func_800CB858
       addiu     $5, $16, 0x98
  .L800D79AC:
      lw         $2, 0x98($16)
      lw         $3, 0x8($16)
      beqz       $3, .L800D7DCC
       sw        $2, 0x94($16)
      lw         $2, 0xC($16)
      beqz       $2, .L800D7DCC
       nop
      lw         $2, 0x4($16)
      beqz       $2, .L800D7DCC
       nop
      lw         $2, 0x98($16)
      beqz       $2, .L800D7DCC
       nop
      lw         $8, 0x88($29)
      bnez       $8, .L800D79F4
       lui       $4, %hi(D_800EC638)
      j          .L800D79F8
       addiu     $4, $4, %lo(D_800EC638)
  .L800D79F4:
      lw         $4, 0x88($29)
  .L800D79F8:
      jal        func_800523C0
       nop
      sw         $2, 0x10($16)
      lw         $2, 0x10($16)
      beqz       $2, .L800D7DCC
       nop
      lw         $4, 0x8C($29)
      jal        func_800523C0
       nop
      beqz       $2, .L800D7DCC
       sw        $2, 0x14($16)
      lw         $8, 0x90($29)
      beqz       $8, .L800D7A40
       addu      $4, $8, $0
      jal        func_80054604
       addiu     $5, $16, 0x1C
      j          .L800D7A54
       addu      $17, $2, $0
  .L800D7A40:
      addu       $4, $0, $0
      addu       $5, $4, $0
      jal        func_80054380
       addiu     $6, $16, 0x1C
      addu       $17, $2, $0
  .L800D7A54:
      addiu      $19, $0, 0x1
      bne        $17, $19, .L800D7DCC
       addiu     $18, $16, 0x20
      lw         $4, 0x1C($16)
      jal        func_80054604
       addu      $5, $18, $0
      addu       $17, $2, $0
      bne        $17, $19, .L800D7DCC
       addu      $5, $0, $0
      lw         $4, 0x20($16)
      lui        $2, %hi(D_800EC694)
      addiu      $17, $2, %lo(D_800EC694)
      addu       $6, $17, $0
      jal        func_8005446C
       addiu     $7, $29, 0x38
      beqz       $2, .L800D7AAC
       addu      $4, $18, $0
      lw         $6, 0x38($29)
      jal        func_800545BC
       addu      $5, $17, $0
      addiu      $2, $0, -0x101
      and        $22, $22, $2
  .L800D7AAC:
      sw         $22, 0x18($16)
      lw         $8, 0xA0($29)
      blez       $8, .L800D7BE8
       addu      $18, $0, $0
      lw         $17, 0x9C($29)
  .L800D7AC0:
      lw         $3, 0x0($17)
      addiu      $2, $0, 0x200D
      beq        $3, $2, .L800D7B24
       sltiu     $2, $3, 0x200E
      beqz       $2, .L800D7AE8
       addiu     $2, $0, 0x2001
      beq        $3, $2, .L800D7AFC
       nop
      j          .L800D7BD4
       addiu     $17, $17, 0xC
  .L800D7AE8:
      addiu      $2, $0, 0x2015
      beq        $3, $2, .L800D7B10
       nop
      j          .L800D7BD4
       addiu     $17, $17, 0xC
  .L800D7AFC:
      lw         $2, 0x4($17)
      sw         $2, 0x90($16)
      lw         $2, 0x8($17)
      j          .L800D7BD0
       sw        $2, 0x8C($16)
  .L800D7B10:
      lw         $2, 0x4($17)
      sw         $2, 0xAC($16)
      lw         $2, 0x8($17)
      j          .L800D7BD0
       sw        $2, 0xA8($16)
  .L800D7B24:
      addiu      $4, $0, 0xC
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $4, $2, $0
      beql       $4, $0, .L800D7DCC
       addiu     $17, $0, -0x5
      lw         $2, 0x4($17)
      sw         $2, 0x0($4)
      lw         $2, 0x8($17)
      sw         $2, 0x4($4)
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x2
      beq        $3, $2, .L800D7BA8
       sltiu     $2, $3, 0x3
      beqz       $2, .L800D7B74
       addiu     $2, $0, 0x1
      beq        $3, $2, .L800D7B98
       nop
      j          .L800D7BC8
       nop
  .L800D7B74:
      addiu      $2, $0, 0x3
      beq        $3, $2, .L800D7BB8
       addiu     $2, $0, 0x4
      bne        $3, $2, .L800D7BC8
       nop
      lw         $2, 0xB0($16)
      sw         $2, 0x8($4)
      j          .L800D7BD0
       sw        $4, 0xB0($16)
  .L800D7B98:
      lw         $2, 0xB4($16)
      sw         $2, 0x8($4)
      j          .L800D7BD0
       sw        $4, 0xB4($16)
  .L800D7BA8:
      lw         $2, 0xB8($16)
      sw         $2, 0x8($4)
      j          .L800D7BD0
       sw        $4, 0xB8($16)
  .L800D7BB8:
      lw         $2, 0xBC($16)
      sw         $2, 0x8($4)
      j          .L800D7BD0
       sw        $4, 0xBC($16)
  .L800D7BC8:
      jal        func_80052540
       nop
  .L800D7BD0:
      addiu      $17, $17, 0xC
  .L800D7BD4:
      lw         $8, 0xA0($29)
      addiu      $18, $18, 0x1
      slt        $2, $18, $8
      bnez       $2, .L800D7AC0
       nop
  .L800D7BE8:
      lw         $4, 0xA8($16)
      beqz       $4, .L800D7C74
       nop
      lw         $2, 0xAC($16)
      beqz       $2, .L800D7C74
       nop
      lw         $2, 0x18($2)
      jalr       $2
       nop
      andi       $2, $2, 0xFF
      beqz       $2, .L800D7C74
       nop
      lw         $2, 0xAC($16)
      lw         $4, 0xA8($16)
      lw         $2, 0x14($2)
      jalr       $2
       addiu     $5, $29, 0x3C
      addiu      $4, $29, 0x18
      lui        $5, %hi(D_800EC6B8)
      lw         $6, 0x3C($29)
      jal        func_80016580
       addiu     $5, $5, %lo(D_800EC6B8)
      addu       $5, $0, $0
      lui        $2, %hi(D_800FCF04)
      addiu      $17, $2, %lo(D_800FCF04)
      addu       $6, $17, $0
      lw         $4, 0x20($16)
      jal        func_8005446C
       addiu     $7, $29, 0x40
      bnez       $2, .L800D7C74
       addiu     $4, $16, 0x20
      addu       $5, $17, $0
      addiu      $6, $29, 0x18
      jal        func_80054530
       addiu     $7, $0, -0x1
  .L800D7C74:
      lw         $4, 0x4($16)
      jal        func_80017780
       nop
      addiu      $4, $2, 0xA
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      beqz       $17, .L800D7DC0
       andi      $2, $22, 0x8
      beqz       $2, .L800D7D1C
       addiu     $6, $29, 0x48
      addiu      $5, $29, 0x44
      sw         $0, 0x10($29)
      lw         $4, 0xC($16)
      jal        func_800D8188
       addiu     $7, $29, 0x4C
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800D7D30
       nop
      jal        func_80052540
       addu      $4, $17, $0
      lw         $4, 0x44($29)
      jal        func_80017780
       nop
      addiu      $4, $2, 0xA
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      beqz       $17, .L800D7DC0
       addu      $4, $17, $0
      lui        $5, %hi(D_800FCEF8)
      lw         $6, 0x44($29)
      jal        func_80016580
       addiu     $5, $5, %lo(D_800FCEF8)
      lw         $4, 0x44($29)
      jal        func_80052540
       nop
      lw         $4, 0x4C($29)
      jal        func_80052540
       nop
      j          .L800D7D30
       nop
  .L800D7D1C:
      addu       $4, $17, $0
      lw         $6, 0x4($16)
      lui        $5, %hi(D_800FCEF8)
      jal        func_80016580
       addiu     $5, $5, %lo(D_800FCEF8)
  .L800D7D30:
      lw         $4, 0x20($16)
      addu       $5, $0, $0
      lui        $2, %hi(D_800FCF28)
      addiu      $18, $2, %lo(D_800FCF28)
      addu       $6, $18, $0
      jal        func_8005446C
       addiu     $7, $29, 0x38
      beqz       $2, .L800D7D6C
       addiu     $2, $0, -0x1
      addiu      $4, $16, 0x20
      lw         $6, 0x38($29)
      jal        func_800545BC
       addu      $5, $18, $0
      j          .L800D7D74
       addiu     $4, $16, 0x20
  .L800D7D6C:
      sw         $2, 0x38($29)
      addiu      $4, $16, 0x20
  .L800D7D74:
      lui        $5, %hi(D_800FCF28)
      addiu      $5, $5, %lo(D_800FCF28)
      lw         $7, 0x38($29)
      jal        func_80054530
       addu      $6, $17, $0
      jal        func_80052540
       addu      $4, $17, $0
      lw         $3, 0x90($16)
      addiu      $2, $0, 0x1
      sb         $0, 0xC2($16)
      sb         $2, 0xC3($16)
      sw         $0, 0xC4($16)
      sb         $2, 0xCC($16)
      beqz       $3, .L800D7DC8
       sb        $0, 0xCD($16)
      lw         $8, 0xB4($29)
      sw         $16, 0x0($8)
      j          .L800D7DE0
       addiu     $2, $0, 0x1
  .L800D7DC0:
      j          .L800D7DCC
       addiu     $17, $0, -0x5
  .L800D7DC8:
      addiu      $17, $0, -0x11
  .L800D7DCC:
      beqz       $16, .L800D7DE0
       addu      $2, $17, $0
      jal        func_800D7E48
       addu      $4, $16, $0
      addu       $2, $17, $0
  .L800D7DE0:
      lw         $31, 0x74($29)
      lw         $30, 0x70($29)
      lw         $23, 0x6C($29)
      lw         $22, 0x68($29)
      lw         $21, 0x64($29)
      lw         $20, 0x60($29)
      lw         $19, 0x5C($29)
      lw         $18, 0x58($29)
      lw         $17, 0x54($29)
      lw         $16, 0x50($29)
      jr         $31
       addiu     $29, $29, 0x78
.end func_800D7888

.globl func_800D7E10
.ent func_800D7E10
func_800D7E10:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      beqz       $4, .L800D7E38
       sw        $16, 0x10($29)
  .L800D7E20:
      lw         $16, 0x8($4)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      bnez       $4, .L800D7E20
       nop
  .L800D7E38:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D7E10

.globl func_800D7E48
.ent func_800D7E48
func_800D7E48:
      addiu      $29, $29, -0x40
      sw         $18, 0x38($29)
      addu       $18, $4, $0
      sw         $31, 0x3C($29)
      sw         $17, 0x34($29)
      beqz       $18, .L800D7FFC
       sw        $16, 0x30($29)
      lw         $2, 0x4($18)
      sw         $2, 0x10($29)
      lw         $2, 0x8($18)
      sw         $2, 0x14($29)
      lw         $2, 0xC($18)
      sw         $2, 0x18($29)
      lw         $2, 0x10($18)
      sw         $2, 0x1C($29)
      lw         $2, 0x14($18)
      sw         $2, 0x20($29)
      lw         $2, 0x28($18)
      sw         $2, 0x24($29)
      lw         $2, 0x2C($18)
      addu       $17, $0, $0
      sw         $2, 0x28($29)
      lw         $2, 0x30($18)
      addiu      $16, $29, 0x10
      sw         $2, 0x2C($29)
  .L800D7EAC:
      lw         $4, 0x0($16)
      addiu      $16, $16, 0x4
      jal        func_80052540
       addiu     $17, $17, 0x1
      slti       $2, $17, 0x8
      bnez       $2, .L800D7EAC
       nop
      lw         $4, 0x9C($18)
      beqz       $4, .L800D7EDC
       nop
      jal        func_800CB7E8
       nop
  .L800D7EDC:
      lw         $4, 0x98($18)
      beqz       $4, .L800D7EFC
       nop
      lw         $2, 0xC8($18)
      bnez       $2, .L800D7EFC
       nop
      jal        func_800CB8E4
       nop
  .L800D7EFC:
      lw         $4, 0x20($18)
      beqz       $4, .L800D7F10
       nop
      jal        func_800546DC
       nop
  .L800D7F10:
      lw         $4, 0x1C($18)
      beqz       $4, .L800D7F24
       nop
      jal        func_800546DC
       nop
  .L800D7F24:
      lw         $4, 0x34($18)
      beqz       $4, .L800D7F54
       nop
      lbu        $2, 0x11($4)
      beqz       $2, .L800D7F4C
       nop
      lw         $4, 0x0($4)
      jal        func_80052540
       nop
      lw         $4, 0x34($18)
  .L800D7F4C:
      jal        func_80052540
       nop
  .L800D7F54:
      lw         $4, 0x38($18)
      beqz       $4, .L800D7F90
       nop
      lw         $4, 0xC($4)
      beqz       $4, .L800D7F74
       nop
      jal        func_800546DC
       nop
  .L800D7F74:
      lw         $2, 0x38($18)
      lw         $4, 0x8($2)
      jal        func_80052540
       nop
      lw         $4, 0x38($18)
      jal        func_80052540
       nop
  .L800D7F90:
      lw         $4, 0x3C($18)
      beqz       $4, .L800D7FA4
       nop
      jal        func_8004F810
       nop
  .L800D7FA4:
      lw         $4, 0xB0($18)
      beqz       $4, .L800D7FB8
       nop
      jal        func_800D7E10
       nop
  .L800D7FB8:
      lw         $4, 0xB4($18)
      beqz       $4, .L800D7FCC
       nop
      jal        func_800D7E10
       nop
  .L800D7FCC:
      lw         $4, 0xB8($18)
      beqz       $4, .L800D7FE0
       nop
      jal        func_800D7E10
       nop
  .L800D7FE0:
      lw         $4, 0xBC($18)
      beqz       $4, .L800D7FF4
       nop
      jal        func_800D7E10
       nop
  .L800D7FF4:
      jal        func_80052540
       addu      $4, $18, $0
  .L800D7FFC:
      lw         $31, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800D7E48

.globl func_800D8014
.ent func_800D8014
func_800D8014:
      addiu      $29, $29, -0x40
      sw         $30, 0x38($29)
      addu       $30, $4, $0
      sw         $21, 0x2C($29)
      addu       $21, $5, $0
      sw         $22, 0x30($29)
      addu       $22, $6, $0
      sw         $31, 0x3C($29)
      sw         $23, 0x34($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      lw         $2, 0x0($21)
      andi       $2, $2, 0x8
      beqz       $2, .L800D8064
       addu      $23, $7, $0
      j          .L800D8158
       addiu     $2, $0, 0x1
  .L800D8064:
      lui        $3, %hi(D_80137BE8)
      addiu      $2, $3, %lo(D_80137BE8)
      lw         $4, 0x4($2)
      lw         $20, %lo(D_80137BE8)($3)
      beqz       $4, .L800D808C
       lui       $2, %hi(D_800FCDAC)
      lbu        $2, 0x0($4)
      bnez       $2, .L800D8090
       addu      $18, $4, $0
      lui        $2, %hi(D_800FCDAC)
  .L800D808C:
      addiu      $18, $2, %lo(D_800FCDAC)
  .L800D8090:
      lui        $2, %hi(D_80137BF0)
      lw         $3, %lo(D_80137BF0)($2)
      beqz       $3, .L800D80B0
       lui       $2, %hi(D_800EC604)
      lbu        $2, 0x0($3)
      bnez       $2, .L800D80B4
       addu      $19, $3, $0
      lui        $2, %hi(D_800EC604)
  .L800D80B0:
      addiu      $19, $2, %lo(D_800EC604)
  .L800D80B4:
      jal        func_80017780
       addu      $4, $18, $0
      addu       $4, $20, $0
      jal        func_80017780
       addu      $16, $2, $0
      addu       $16, $16, $2
      addiu      $4, $16, 0x4
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      bnez       $17, .L800D80EC
       addu      $4, $17, $0
      j          .L800D8158
       addiu     $2, $0, -0x5
  .L800D80EC:
      jal        func_80017640
       addu      $5, $20, $0
      addu       $4, $17, $0
      lui        $5, %hi(D_800EC60C)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800EC60C)
      addu       $4, $17, $0
      jal        func_80017500
       addu      $5, $18, $0
      addu       $4, $22, $0
      addu       $5, $23, $0
      addu       $6, $30, $0
      addu       $7, $21, $0
      sw         $17, 0x10($29)
      jal        func_800D8988
       sw        $19, 0x14($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      beq        $16, $2, .L800D814C
       addiu     $3, $0, -0x9
      addu       $16, $0, $0
      lw         $2, 0x0($21)
      and        $2, $2, $3
      sw         $2, 0x0($21)
  .L800D814C:
      jal        func_80052540
       addu      $4, $17, $0
      addu       $2, $16, $0
  .L800D8158:
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
.end func_800D8014

.globl func_800D8188
.ent func_800D8188
func_800D8188:
      addiu      $29, $29, -0x48
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $22, 0x38($29)
      addu       $22, $5, $0
      sw         $20, 0x30($29)
      addu       $20, $6, $0
      sw         $21, 0x34($29)
      addu       $21, $7, $0
      sw         $23, 0x3C($29)
      addiu      $23, $0, -0x5
      sw         $17, 0x24($29)
      addu       $17, $0, $0
      sw         $18, 0x28($29)
      addu       $18, $17, $0
      sw         $31, 0x40($29)
      beqz       $16, .L800D81E8
       sw        $19, 0x2C($29)
      beqz       $22, .L800D83E4
       addiu     $2, $0, -0x4
      beqz       $20, .L800D83E4
       nop
      bnez       $21, .L800D81F0
       nop
  .L800D81E8:
      j          .L800D83E4
       addiu     $2, $0, -0x4
  .L800D81F0:
      jal        func_80017780
       addu      $4, $16, $0
      addiu      $4, $2, 0x1
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $19, $2, $0
      beqz       $19, .L800D83C8
       nop
      jal        func_80017780
       addu      $4, $16, $0
      addiu      $4, $2, 0x1
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $18, $2, $0
      beqz       $18, .L800D83C8
       addiu     $2, $0, 0x50
      sh         $2, 0x0($20)
      addu       $4, $18, $0
      lui        $5, %hi(D_800EC614)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800EC614)
      addiu      $23, $0, -0x1
      addu       $4, $16, $0
      jal        func_80017580
       addiu     $5, $0, 0x3A
      addu       $16, $2, $0
      beqz       $16, .L800D83C8
       addiu     $16, $16, 0x1
      lbu        $3, 0x0($16)
      addiu      $2, $0, 0x2F
      bne        $3, $2, .L800D8280
       addu      $3, $2, $0
      addiu      $16, $16, 0x1
  .L800D8274:
      lbu        $2, 0x0($16)
      beql       $2, $3, .L800D8274
       addiu     $16, $16, 0x1
  .L800D8280:
      lbu        $3, 0x0($16)
      andi       $4, $3, 0xFF
      beqz       $4, .L800D83C8
       addiu     $2, $0, 0x3A
      beq        $4, $2, .L800D83C8
       addiu     $2, $0, 0x2F
      beq        $4, $2, .L800D82CC
       addiu     $5, $0, 0x3A
      addu       $4, $2, $0
  .L800D82A4:
      beqz       $3, .L800D82CC
       addu      $2, $19, $17
      addiu      $16, $16, 0x1
      sb         $3, 0x0($2)
      lbu        $3, 0x0($16)
      andi       $2, $3, 0xFF
      beq        $2, $5, .L800D82CC
       addiu     $17, $17, 0x1
      bne        $2, $4, .L800D82A4
       nop
  .L800D82CC:
      addu       $4, $19, $0
      addu       $2, $19, $17
      jal        func_80057C34
       sb        $0, 0x0($2)
      sw         $19, 0x0($22)
      lbu        $3, 0x0($16)
      addiu      $2, $0, 0x3A
      bnel       $3, $2, .L800D8358
       sw        $18, 0x0($21)
      addiu      $16, $16, 0x1
      lbu        $3, 0x0($16)
      addiu      $2, $0, 0x2F
      andi       $4, $3, 0xFF
      beq        $4, $2, .L800D8340
       addu      $17, $0, $0
      beqz       $4, .L800D8340
       addiu     $4, $29, 0x10
      addu       $5, $2, $0
      slti       $2, $17, 0x10
  .L800D8318:
      beqz       $2, .L800D8340
       addu      $2, $4, $17
      addiu      $16, $16, 0x1
      sb         $3, 0x0($2)
      lbu        $3, 0x0($16)
      andi       $2, $3, 0xFF
      beq        $2, $5, .L800D8340
       addiu     $17, $17, 0x1
      bnez       $2, .L800D8318
       slti      $2, $17, 0x10
  .L800D8340:
      addiu      $4, $29, 0x10
      addu       $2, $4, $17
      jal        func_80024000
       sb        $0, 0x0($2)
      sh         $2, 0x0($20)
      sw         $18, 0x0($21)
  .L800D8358:
      lbu        $3, 0x0($16)
      addiu      $2, $0, 0x2F
      bne        $3, $2, .L800D83E4
       addiu     $2, $0, 0x1
      lw         $2, 0x58($29)
      andi       $2, $2, 0x8
      beqz       $2, .L800D837C
       addu      $17, $0, $0
      addiu      $16, $16, 0x1
  .L800D837C:
      lbu        $3, 0x0($16)
      beqz       $3, .L800D83A4
       addu      $4, $18, $0
  .L800D8388:
      addiu      $16, $16, 0x1
      addu       $2, $18, $17
      sb         $3, 0x0($2)
      lbu        $3, 0x0($16)
      bnez       $3, .L800D8388
       addiu     $17, $17, 0x1
      addu       $4, $18, $0
  .L800D83A4:
      addu       $2, $18, $17
      jal        func_800D8410
       sb        $0, 0x0($2)
      beqz       $2, .L800D83C8
       sw        $2, 0x0($21)
      jal        func_80052540
       addu      $4, $18, $0
      j          .L800D83E4
       addiu     $2, $0, 0x1
  .L800D83C8:
      jal        func_80052540
       addu      $4, $19, $0
      jal        func_80052540
       addu      $4, $18, $0
      addu       $2, $23, $0
      sw         $0, 0x0($21)
      sw         $0, 0x0($22)
  .L800D83E4:
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
.end func_800D8188

.globl func_800D8410
.ent func_800D8410
func_800D8410:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      jal        func_80017780
       sw        $17, 0x14($29)
      sll        $4, $2, 1
      addu       $4, $4, $2
      addiu      $4, $4, 0x1
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $18, $2, $0
      beqz       $18, .L800D84CC
       addu      $2, $0, $0
      lbu        $2, 0x0($16)
      beqz       $2, .L800D84C4
       addu      $17, $18, $0
      lui        $20, %hi(D_800FCD00)
      lui        $19, %hi(D_800FCEFC)
      addiu      $2, $2, -0x21
  .L800D846C:
      sltiu      $2, $2, 0x5E
      beqz       $2, .L800D848C
       addu      $4, $17, $0
      lbu        $5, 0x0($16)
      jal        func_80017580
       addiu     $4, $20, %lo(D_800FCD00)
      beqz       $2, .L800D84A8
       addu      $4, $17, $0
  .L800D848C:
      addiu      $5, $19, %lo(D_800FCEFC)
      lbu        $6, 0x0($16)
      addiu      $16, $16, 0x1
      jal        func_80016580
       addiu     $17, $17, 0x3
      j          .L800D84B8
       nop
  .L800D84A8:
      lbu        $2, 0x0($16)
      addiu      $16, $16, 0x1
      sb         $2, 0x0($17)
      addiu      $17, $17, 0x1
  .L800D84B8:
      lbu        $2, 0x0($16)
      bnez       $2, .L800D846C
       addiu     $2, $2, -0x21
  .L800D84C4:
      sb         $0, 0x0($17)
      addu       $2, $18, $0
  .L800D84CC:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D8410

.globl func_800D84EC
.ent func_800D84EC
func_800D84EC:
      addiu      $29, $29, -0x18
      addiu      $2, $0, -0x7
      bne        $5, $2, .L800D8504
       sw        $31, 0x10($29)
      addiu      $2, $0, 0x1
      sb         $2, 0xC1($4)
  .L800D8504:
      lw         $4, 0x88($4)
      jal        func_80051414
       nop
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D84EC

.globl func_800D8520
.ent func_800D8520
func_800D8520:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $4, 0x88($4)
      jal        func_80051414
       nop
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D8520

.globl func_800D8544
.ent func_800D8544
func_800D8544:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      addiu      $4, $0, 0x18
      addu       $5, $0, $0
      sw         $31, 0x18($29)
      jal        func_800524E8
       sw        $17, 0x14($29)
      addu       $17, $2, $0
      beqz       $17, .L800D8608
       addiu     $2, $0, 0x2005
      jal        func_800D8710
       sw        $2, 0x0($17)
      sw         $2, 0x4($17)
      addiu      $2, $0, 0x200C
      jal        func_800D9358
       sw        $2, 0xC($17)
      sw         $2, 0x10($17)
      addiu      $2, $0, 0x1
      addu       $4, $2, $0
      lui        $3, %hi(D_800EC644)
      addiu      $3, $3, %lo(D_800EC644)
      sw         $3, 0x8($16)
      addiu      $3, $0, 0x2
      sw         $3, 0x10($16)
      lui        $3, %hi(D_800FCEC0)
      addiu      $3, $3, %lo(D_800FCEC0)
      sw         $3, 0x18($16)
      lui        $3, %hi(D_800EC7C0)
      addiu      $3, $3, %lo(D_800EC7C0)
      sw         $3, 0x1C($16)
      lui        $3, %hi(D_800EC7CC)
      addiu      $3, $3, %lo(D_800EC7CC)
      sw         $3, 0x20($16)
      lui        $3, %hi(D_800FCD08)
      addiu      $3, $3, %lo(D_800FCD08)
      sw         $3, 0x24($16)
      addiu      $3, $0, 0x4
      sw         $4, 0x0($16)
      sw         $4, 0x4($16)
      sw         $17, 0x14($16)
      sw         $0, 0xC($16)
      sh         $3, 0x28($16)
      sh         $0, 0x2A($16)
      sh         $0, 0x2C($16)
      sh         $0, 0x2E($16)
      sw         $0, 0x30($16)
      j          .L800D860C
       sh        $4, 0x34($16)
  .L800D8608:
      addiu      $2, $0, -0x5
  .L800D860C:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D8544

.globl func_800D8620
.ent func_800D8620
func_800D8620:
      addiu      $29, $29, -0x18
      beqz       $5, .L800D8648
       sw        $31, 0x10($29)
      lw         $3, 0x4($5)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800D864C
       nop
      lw         $4, 0x14($5)
      jal        func_80052540
       nop
  .L800D8648:
      addiu      $2, $0, 0x1
  .L800D864C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D8620

.globl func_800D8658
.ent func_800D8658
func_800D8658:
      lui        $3, %hi(D_80125A00)
      lw         $2, %lo(D_80125A00)($3)
      addiu      $29, $29, -0x18
      beqz       $2, .L800D8674
       sw        $31, 0x10($29)
      j          .L800D868C
       addiu     $2, $0, -0x12
  .L800D8674:
      beql       $5, $0, .L800D868C
       addiu     $2, $0, -0x4
      lw         $2, 0x0($5)
      jal        func_800D9020
       sw        $2, %lo(D_80125A00)($3)
      addiu      $2, $0, 0x1
  .L800D868C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D8658

.globl func_800D8698
.ent func_800D8698
func_800D8698:
      lui        $3, %hi(D_80125A00)
      lw         $2, %lo(D_80125A00)($3)
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      beqz       $2, .L800D86F8
       sw        $16, 0x10($29)
      lui        $16, %hi(D_80137BE8)
      lw         $4, %lo(D_80137BE8)($16)
      jal        func_80052540
       sw        $0, %lo(D_80125A00)($3)
      addiu      $17, $16, %lo(D_80137BE8)
      lw         $4, 0x4($17)
      jal        func_80052540
       sw        $0, %lo(D_80137BE8)($16)
      lw         $4, 0x8($17)
      jal        func_80052540
       sw        $0, 0x4($17)
      lw         $4, 0xC($17)
      jal        func_80052540
       sw        $0, 0x8($17)
      addiu      $2, $0, 0x1
      j          .L800D86FC
       sw        $0, 0xC($17)
  .L800D86F8:
      addiu      $2, $0, -0x1
  .L800D86FC:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D8698

.globl func_800D8710
.ent func_800D8710
func_800D8710:
      lui        $2, %hi(D_80125A04)
      jr         $31
       addiu     $2, $2, %lo(D_80125A04)
.end func_800D8710

.globl func_800D871C
.ent func_800D871C
func_800D871C:
      lui        $2, %hi(D_80125A1C)
      jr         $31
       addiu     $2, $2, %lo(D_80125A1C)
.end func_800D871C

.globl func_800D8728
.ent func_800D8728
func_800D8728:
      addiu      $5, $29, 0x3C
      addiu      $4, $29, 0x18
      lui        $5, %hi(D_800EDC38)
      lw         $6, 0x3C($29)
      jal        func_80017080
       addiu     $5, $5, %lo(D_800EDC38)
.end func_800D8728

.globl func_800D8740
.ent func_800D8740
func_800D8740:
      addiu      $29, $29, -0x38
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addu       $4, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $20, 0x20($29)
      addu       $20, $0, $0
      sw         $31, 0x30($29)
      sw         $23, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $19, 0x1C($29)
      beqz       $18, .L800D8958
       sw        $17, 0x14($29)
      lbu        $2, 0x0($18)
      beql       $2, $0, .L800D895C
       addu      $2, $0, $0
      beqz       $4, .L800D8958
       lui       $5, %hi(D_800EC604)
      addiu      $5, $5, %lo(D_800EC604)
      jal        func_80057334
       addiu     $6, $0, 0x8
      addu       $19, $2, $0
      beqz       $19, .L800D895C
       addu      $2, $0, $0
      lbu        $2, 0x0($19)
      beqz       $2, .L800D8950
       addu      $4, $19, $0
      jal        func_80017580
       addiu     $5, $0, 0x3A
      beqz       $2, .L800D87D8
       nop
      sb         $0, 0x0($2)
      jal        func_80024000
       addiu     $4, $2, 0x1
      j          .L800D8848
       addu      $20, $2, $0
  .L800D87D8:
      beqz       $16, .L800D8848
       addu      $4, $16, $0
      lui        $5, %hi(D_800EC644)
      jal        func_800175C0
       addiu     $5, $5, %lo(D_800EC644)
      bnez       $2, .L800D87FC
       addu      $4, $16, $0
      j          .L800D8848
       addiu     $20, $0, 0x50
  .L800D87FC:
      lui        $5, %hi(D_800EC900)
      jal        func_800175C0
       addiu     $5, $5, %lo(D_800EC900)
      bnez       $2, .L800D8818
       addu      $4, $16, $0
      j          .L800D8848
       addiu     $20, $0, 0x46
  .L800D8818:
      lui        $5, %hi(D_800EC908)
      jal        func_800175C0
       addiu     $5, $5, %lo(D_800EC908)
      bnez       $2, .L800D8834
       addu      $4, $16, $0
      j          .L800D8848
       addiu     $20, $0, 0x15
  .L800D8834:
      lui        $5, %hi(D_800EC90C)
      jal        func_800175C0
       addiu     $5, $5, %lo(D_800EC90C)
      beql       $2, $0, .L800D8848
       addiu     $20, $0, 0x1BB
  .L800D8848:
      beql       $20, $0, .L800D8850
       addiu     $20, $0, 0x50
  .L800D8850:
      jal        func_80017780
       addu      $4, $19, $0
      lbu        $3, 0x0($18)
      beqz       $3, .L800D8950
       addu      $21, $2, $0
      addiu      $22, $0, 0x2C
      addiu      $23, $0, 0x3A
  .L800D886C:
      addu       $17, $0, $0
      lbu        $2, 0x0($18)
      beqz       $2, .L800D88A4
       addu      $4, $17, $0
      andi       $3, $2, 0xFF
  .L800D8880:
      sltiu      $2, $3, 0x21
      bnel       $2, $0, .L800D8898
       addiu     $18, $18, 0x1
      bnel       $3, $22, .L800D88C4
       addu      $16, $18, $0
      addiu      $18, $18, 0x1
  .L800D8898:
      lbu        $2, 0x0($18)
      bnez       $2, .L800D8880
       andi      $3, $2, 0xFF
  .L800D88A4:
      j          .L800D88C4
       addu      $16, $18, $0
  .L800D88AC:
      lbu        $2, 0x0($16)
      beq        $2, $22, .L800D88D4
       nop
      beql       $2, $23, .L800D88C0
       addu      $17, $16, $0
  .L800D88C0:
      addiu      $16, $16, 0x1
  .L800D88C4:
      lbu        $2, 0x0($16)
      sltiu      $2, $2, 0x21
      beqz       $2, .L800D88AC
       nop
  .L800D88D4:
      beqz       $17, .L800D88EC
       subu      $6, $16, $18
      jal        func_80024000
       addiu     $4, $17, 0x1
      addu       $4, $2, $0
      subu       $6, $17, $18
  .L800D88EC:
      beqz       $4, .L800D88FC
       nop
      bne        $4, $20, .L800D8938
       nop
  .L800D88FC:
      beqz       $6, .L800D8928
       nop
      blez       $6, .L800D8938
       slt       $2, $21, $6
      bnez       $2, .L800D8938
       addu      $4, $19, $21
      subu       $4, $4, $6
      jal        func_800177C0
       addu      $5, $18, $0
      bnez       $2, .L800D8938
       nop
  .L800D8928:
      jal        func_80052540
       addu      $4, $19, $0
      j          .L800D895C
       addiu     $2, $0, 0x1
  .L800D8938:
      lbu        $2, 0x0($16)
      beqz       $2, .L800D8950
       nop
      lbu        $2, 0x1($16)
      bnez       $2, .L800D886C
       addiu     $18, $16, 0x1
  .L800D8950:
      jal        func_80052540
       addu      $4, $19, $0
  .L800D8958:
      addu       $2, $0, $0
  .L800D895C:
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
.end func_800D8740

.globl func_800D8988
.ent func_800D8988
func_800D8988:
      addiu      $29, $29, -0x30
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $18, 0x18($29)
      sw         $21, 0x24($29)
      addu       $21, $7, $0
      sw         $31, 0x28($29)
      sw         $20, 0x20($29)
      sw         $17, 0x14($29)
      lw         $2, 0x0($21)
      lw         $20, 0x40($29)
      andi       $2, $2, 0x8
      bnez       $2, .L800D8B04
       addu      $18, $6, $0
      beqz       $16, .L800D8B08
       addiu     $2, $0, -0x1
      beqz       $19, .L800D8B08
       nop
      beqz       $18, .L800D8B08
       nop
      lbu        $2, 0x0($18)
      bnez       $2, .L800D89F4
       nop
      j          .L800D8B04
       sb        $0, 0x0($16)
  .L800D89F4:
      beqz       $20, .L800D8B08
       addiu     $2, $0, 0x1
      lbu        $2, 0x0($20)
      beqz       $2, .L800D8B04
       addu      $4, $18, $0
      jal        func_80017580
       addiu     $5, $0, 0x3A
      beqz       $2, .L800D8A28
       addu      $4, $16, $0
      lbu        $2, 0x0($2)
      bnel       $2, $0, .L800D8A3C
       addu      $4, $18, $0
      addu       $4, $16, $0
  .L800D8A28:
      addu       $5, $18, $0
      jal        func_80052310
       addiu     $6, $19, -0x1
      j          .L800D8AFC
       addu      $4, $0, $0
  .L800D8A3C:
      lui        $5, %hi(D_800EC604)
      addiu      $5, $5, %lo(D_800EC604)
      jal        func_80057334
       addiu     $6, $0, 0x10
      addu       $17, $2, $0
      bnez       $17, .L800D8A60
       addu      $4, $17, $0
      j          .L800D8B08
       addiu     $2, $0, -0x5
  .L800D8A60:
      lw         $6, 0x44($29)
      jal        func_800D8740
       addu      $5, $18, $0
      bnez       $2, .L800D8AEC
       addu      $4, $16, $0
      lui        $5, %hi(D_800EC928)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800EC928)
      jal        func_80017780
       addu      $4, $16, $0
      addu       $4, $16, $0
      addu       $5, $20, $0
      addiu      $2, $2, 0x1
      jal        func_80063140
       subu      $6, $19, $2
      jal        func_80017780
       addu      $4, $16, $0
      addu       $4, $16, $0
      lui        $5, %hi(D_800EC614)
      addiu      $5, $5, %lo(D_800EC614)
      addiu      $2, $2, 0x1
      jal        func_80063140
       subu      $6, $19, $2
      jal        func_80017780
       addu      $4, $16, $0
      addu       $4, $16, $0
      addu       $5, $18, $0
      addiu      $2, $2, 0x1
      jal        func_80063140
       subu      $6, $19, $2
      lw         $2, 0x0($21)
      addu       $4, $17, $0
      ori        $2, $2, 0x8
      j          .L800D8AFC
       sw        $2, 0x0($21)
  .L800D8AEC:
      addu       $5, $18, $0
      jal        func_80052310
       addiu     $6, $19, -0x1
      addu       $4, $17, $0
  .L800D8AFC:
      jal        func_80052540
       nop
  .L800D8B04:
      addiu      $2, $0, 0x1
  .L800D8B08:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D8988

.globl func_800D8B2C
.ent func_800D8B2C
func_800D8B2C:
      addu       $22, $6, $0
      sw         $31, 0x3C($29)
      sw         $23, 0x34($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
.end func_800D8B2C

.globl func_800D8B40
.ent func_800D8B40
func_800D8B40:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      bnez       $16, .L800D8B5C
       sw        $31, 0x14($29)
      j          .L800D8BB4
       addiu     $2, $0, -0x4
  .L800D8B5C:
      addu       $4, $16, $0
      lui        $5, %hi(D_800FCF50)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF50)
      beqz       $2, .L800D8BB0
       addu      $4, $16, $0
      lui        $5, %hi(D_800FCF58)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF58)
      beqz       $2, .L800D8BB0
       addu      $4, $16, $0
      lui        $5, %hi(D_800FCF54)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF54)
      beqz       $2, .L800D8BB0
       addu      $4, $16, $0
      lui        $5, %hi(D_800FCF5C)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF5C)
      bnez       $2, .L800D8BB4
       addiu     $2, $0, -0x1
  .L800D8BB0:
      addiu      $2, $0, 0x1
  .L800D8BB4:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D8B40

.globl func_800D8BC4
.ent func_800D8BC4
func_800D8BC4:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addiu      $18, $0, 0x1
      lui        $5, %hi(D_800FCF50)
      sw         $31, 0x1C($29)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF50)
      bnel       $2, $0, .L800D8C2C
       addu      $4, $16, $0
      lui        $16, %hi(D_80137BE8)
      lw         $4, %lo(D_80137BE8)($16)
      jal        func_80052540
       nop
      jal        func_80017780
       addu      $4, $17, $0
      addu       $4, $2, $18
      jal        func_800524E8
       addu      $5, $0, $0
      beqz       $2, .L800D8D08
       sw        $2, %lo(D_80137BE8)($16)
      j          .L800D8D14
       addu      $4, $2, $0
  .L800D8C2C:
      lui        $5, %hi(D_800FCF54)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF54)
      bnel       $2, $0, .L800D8C78
       addu      $4, $16, $0
      lui        $16, %hi(D_80137BE8)
      addiu      $16, $16, %lo(D_80137BE8)
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
      jal        func_80017780
       addu      $4, $17, $0
      addiu      $4, $2, 0x1
      jal        func_800524E8
       addu      $5, $0, $0
      beqz       $2, .L800D8D08
       sw        $2, 0x4($16)
      j          .L800D8D14
       addu      $4, $2, $0
  .L800D8C78:
      lui        $5, %hi(D_800FCF58)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF58)
      bnel       $2, $0, .L800D8CC4
       addu      $4, $16, $0
      lui        $16, %hi(D_80137BE8)
      addiu      $16, $16, %lo(D_80137BE8)
      lw         $4, 0x8($16)
      jal        func_80052540
       nop
      jal        func_80017780
       addu      $4, $17, $0
      addiu      $4, $2, 0x1
      jal        func_800524E8
       addu      $5, $0, $0
      beqz       $2, .L800D8D08
       sw        $2, 0x8($16)
      j          .L800D8D14
       addu      $4, $2, $0
  .L800D8CC4:
      lui        $5, %hi(D_800FCF5C)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF5C)
      bnel       $2, $0, .L800D8D24
       addu      $18, $0, $0
      lui        $16, %hi(D_80137BE8)
      addiu      $16, $16, %lo(D_80137BE8)
      lw         $4, 0xC($16)
      jal        func_80052540
       nop
      jal        func_80017780
       addu      $4, $17, $0
      addiu      $4, $2, 0x1
      jal        func_800524E8
       addu      $5, $0, $0
      bnez       $2, .L800D8D10
       sw        $2, 0xC($16)
  .L800D8D08:
      j          .L800D8D24
       addiu     $18, $0, -0x5
  .L800D8D10:
      addu       $4, $2, $0
  .L800D8D14:
      jal        func_80017640
       addu      $5, $17, $0
      j          .L800D8D28
       addu      $2, $18, $0
  .L800D8D24:
      addu       $2, $18, $0
  .L800D8D28:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D8BC4

.globl func_800D8D40
.ent func_800D8D40
func_800D8D40:
      addiu      $29, $29, -0x30
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $19, 0x1C($29)
      addiu      $19, $0, 0x1
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      bnez       $20, .L800D8D74
       sw        $16, 0x10($29)
      j          .L800D8DD8
       addiu     $2, $0, -0x4
  .L800D8D74:
      lw         $2, 0x0($20)
      lw         $16, 0x4($20)
      blez       $2, .L800D8DD4
       addu      $18, $0, $0
      addiu      $21, $0, 0x1
  .L800D8D88:
      beqz       $16, .L800D8DD8
       addu      $2, $19, $0
      lw         $4, 0x0($16)
      jal        func_800D8B40
       nop
      addu       $17, $2, $0
      bne        $17, $21, .L800D8DC4
       addiu     $18, $18, 0x1
      lw         $4, 0x0($16)
      lw         $5, 0x4($16)
      jal        func_800D8BC4
       nop
      addu       $19, $2, $0
      bne        $19, $17, .L800D8DD8
       addu      $2, $19, $0
  .L800D8DC4:
      lw         $2, 0x0($20)
      slt        $2, $18, $2
      bnez       $2, .L800D8D88
       addiu     $16, $16, 0xC
  .L800D8DD4:
      addu       $2, $19, $0
  .L800D8DD8:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800D8D40

.globl func_800D8DFC
.ent func_800D8DFC
func_800D8DFC:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      bnez       $16, .L800D8E20
       sw        $31, 0x18($29)
      j          .L800D8EC4
       addiu     $2, $0, -0x4
  .L800D8E20:
      addu       $4, $16, $0
      lui        $5, %hi(D_800FCF50)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF50)
      bnez       $2, .L800D8E48
       addu      $4, $16, $0
      lui        $2, %hi(D_80137BE8)
      lw         $4, %lo(D_80137BE8)($2)
      j          .L800D8EAC
       nop
  .L800D8E48:
      lui        $5, %hi(D_800FCF54)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF54)
      bnez       $2, .L800D8E6C
       addu      $4, $16, $0
      lui        $2, %hi(D_80137BEC)
      lw         $4, %lo(D_80137BEC)($2)
      j          .L800D8EAC
       nop
  .L800D8E6C:
      lui        $5, %hi(D_800FCF58)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF58)
      bnez       $2, .L800D8E90
       addu      $4, $16, $0
      lui        $2, %hi(D_80137BF0)
      lw         $4, %lo(D_80137BF0)($2)
      j          .L800D8EAC
       nop
  .L800D8E90:
      lui        $5, %hi(D_800FCF5C)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF5C)
      bnez       $2, .L800D8EC4
       addu      $2, $17, $0
      lui        $2, %hi(D_80137BF4)
      lw         $4, %lo(D_80137BF4)($2)
  .L800D8EAC:
      beqz       $4, .L800D8EC4
       addu      $2, $17, $0
      jal        func_80017780
       nop
      addiu      $17, $2, 0x1
      addu       $2, $17, $0
  .L800D8EC4:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D8DFC

.globl func_800D8ED8
.ent func_800D8ED8
func_800D8ED8:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $19, 0x1C($29)
      addiu      $19, $0, 0x1
      beqz       $16, .L800D8F14
       sw        $31, 0x20($29)
      beqz       $17, .L800D9004
       addiu     $2, $0, -0x4
      bnez       $18, .L800D8F1C
       nop
  .L800D8F14:
      j          .L800D9004
       addiu     $2, $0, -0x4
  .L800D8F1C:
      jal        func_800D8B40
       addu      $4, $16, $0
      bne        $2, $19, .L800D9004
       addu      $2, $19, $0
      jal        func_800D8DFC
       addu      $4, $16, $0
      slt        $2, $18, $2
      bnez       $2, .L800D8FF0
       addu      $4, $17, $0
      addu       $4, $16, $0
      lui        $5, %hi(D_800FCF50)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF50)
      bnez       $2, .L800D8F70
       addu      $4, $16, $0
      lui        $2, %hi(D_80137BE8)
      lw         $5, %lo(D_80137BE8)($2)
      beqz       $5, .L800D8FEC
       addu      $4, $17, $0
      j          .L800D8FF8
       nop
  .L800D8F70:
      lui        $5, %hi(D_800FCF54)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF54)
      bnez       $2, .L800D8F9C
       addu      $4, $16, $0
      lui        $2, %hi(D_80137BEC)
      lw         $5, %lo(D_80137BEC)($2)
      beqz       $5, .L800D8FEC
       addu      $4, $17, $0
      j          .L800D8FF8
       nop
  .L800D8F9C:
      lui        $5, %hi(D_800FCF58)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF58)
      bnez       $2, .L800D8FC8
       addu      $4, $16, $0
      lui        $2, %hi(D_80137BF0)
      lw         $5, %lo(D_80137BF0)($2)
      beqz       $5, .L800D8FEC
       addu      $4, $17, $0
      j          .L800D8FF8
       nop
  .L800D8FC8:
      lui        $5, %hi(D_800FCF5C)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCF5C)
      bnez       $2, .L800D9004
       addu      $2, $19, $0
      lui        $2, %hi(D_80137BF4)
      lw         $5, %lo(D_80137BF4)($2)
      bnez       $5, .L800D8FF8
       addu      $4, $17, $0
  .L800D8FEC:
      addu       $4, $17, $0
  .L800D8FF0:
      lui        $5, %hi(D_800EC604)
      addiu      $5, $5, %lo(D_800EC604)
  .L800D8FF8:
      jal        func_80017640
       nop
      addu       $2, $19, $0
  .L800D9004:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D8ED8

.globl func_800D9020
.ent func_800D9020
func_800D9020:
      addiu      $29, $29, -0x20
      lui        $4, %hi(D_800FCF50)
      addiu      $4, $4, %lo(D_800FCF50)
      lui        $2, %hi(D_800EC604)
      sw         $17, 0x14($29)
      addiu      $17, $2, %lo(D_800EC604)
      addu       $5, $17, $0
      sw         $31, 0x18($29)
      jal        func_800D8BC4
       sw        $16, 0x10($29)
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800D90C0
       addu      $2, $3, $0
      lui        $4, %hi(D_800FCF54)
      addiu      $4, $4, %lo(D_800FCF54)
      lui        $5, %hi(D_800FCDAC)
      jal        func_800D8BC4
       addiu     $5, $5, %lo(D_800FCDAC)
      addu       $3, $2, $0
      addiu      $16, $0, 0x1
      bne        $3, $16, .L800D90C0
       lui       $4, %hi(D_800FCF58)
      addiu      $4, $4, %lo(D_800FCF58)
      jal        func_800D8BC4
       addu      $5, $17, $0
      addu       $3, $2, $0
      bne        $3, $16, .L800D90BC
       addiu     $17, $0, 0x1
      lui        $4, %hi(D_800FCF5C)
      addiu      $4, $4, %lo(D_800FCF5C)
      lui        $5, %hi(D_800FCDA4)
      jal        func_800D8BC4
       addiu     $5, $5, %lo(D_800FCDA4)
      addu       $3, $2, $0
      beql       $3, $17, .L800D90C0
       addu      $2, $17, $0
      j          .L800D90C0
       nop
  .L800D90BC:
      addu       $2, $3, $0
  .L800D90C0:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D9020

.globl func_800D90D4
.ent func_800D90D4
func_800D90D4:
      addiu      $29, $29, -0x38
      sw         $30, 0x30($29)
      addu       $30, $4, $0
      sw         $21, 0x24($29)
      addiu      $21, $0, 0x1
      addiu      $4, $0, 0x8
      addu       $5, $0, $0
      sw         $31, 0x34($29)
      sw         $23, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      jal        func_80052504
       sw        $16, 0x10($29)
      addu       $22, $2, $0
      bnez       $22, .L800D9128
       sw        $0, 0x0($30)
      j          .L800D9278
       addiu     $2, $0, -0x5
  .L800D9128:
      addiu      $4, $0, 0x30
      jal        func_80052504
       addu      $5, $0, $0
      bnez       $2, .L800D9158
       sw        $2, 0x4($22)
      jal        func_80052540
       addu      $4, $22, $0
      sw         $0, 0x0($30)
      j          .L800D9278
       addiu     $2, $0, -0x5
  .L800D9150:
      j          .L800D9208
       addiu     $21, $0, -0x5
  .L800D9158:
      addu       $23, $0, $0
      addu       $19, $23, $0
      lui        $2, %hi(D_80125A5C)
      addiu      $18, $2, %lo(D_80125A5C)
      lw         $17, 0x4($22)
      addiu      $2, $0, 0x4
      sw         $2, 0x0($22)
      addiu      $20, $17, 0x8
  .L800D9178:
      beqz       $17, .L800D920C
       addiu     $2, $0, 0x1
      lw         $4, 0x0($18)
      jal        func_800523C0
       nop
      beqz       $2, .L800D9150
       sw        $2, 0x0($17)
      lw         $4, 0x0($18)
      jal        func_800D8DFC
       nop
      addiu      $16, $2, 0x1
      addu       $4, $16, $0
      jal        func_800524E8
       addu      $5, $0, $0
      beqz       $2, .L800D9150
       sw        $2, -0x4($20)
      lw         $4, 0x0($18)
      addu       $5, $2, $0
      jal        func_800D8ED8
       addu      $6, $16, $0
      addu       $21, $2, $0
      addiu      $3, $0, 0x1
      bne        $21, $3, .L800D9214
       nop
      lw         $4, 0x4($18)
      jal        func_800523C0
       nop
      beqz       $2, .L800D9150
       sw        $2, 0x0($20)
      addiu      $18, $18, 0x8
      addiu      $19, $19, 0x1
      addiu      $20, $20, 0xC
      addiu      $17, $17, 0xC
      slti       $2, $19, 0x4
      bnez       $2, .L800D9178
       addiu     $23, $23, 0x1
  .L800D9208:
      addiu      $2, $0, 0x1
  .L800D920C:
      beql       $21, $2, .L800D9274
       sw        $22, 0x0($30)
  .L800D9214:
      lw         $17, 0x4($22)
      blez       $23, .L800D9254
       addu      $19, $0, $0
      addiu      $16, $17, 0x8
  .L800D9224:
      lw         $4, 0x0($17)
      jal        func_80052540
       addiu     $19, $19, 0x1
      lw         $4, -0x4($16)
      jal        func_80052540
       addiu     $17, $17, 0xC
      lw         $4, 0x0($16)
      jal        func_80052540
       addiu     $16, $16, 0xC
      slt        $2, $19, $23
      bnez       $2, .L800D9224
       nop
  .L800D9254:
      lw         $4, 0x4($22)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $22, $0
      addu       $2, $21, $0
      j          .L800D9278
       sw        $0, 0x0($30)
  .L800D9274:
      addiu      $2, $0, 0x1
  .L800D9278:
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
.end func_800D90D4

.globl func_800D92A8
.ent func_800D92A8
func_800D92A8:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $0, $0
      sw         $31, 0x20($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      beqz       $19, .L800D933C
       addiu     $2, $0, -0x4
      lw         $2, 0x0($19)
      beqz       $2, .L800D9324
       slt       $2, $18, $2
      lw         $17, 0x4($19)
      beqz       $2, .L800D9324
       addiu     $16, $17, 0x8
  .L800D92E8:
      beqz       $17, .L800D9324
       nop
      lw         $4, 0x0($17)
      jal        func_80052540
       addiu     $18, $18, 0x1
      lw         $4, -0x4($16)
      jal        func_80052540
       addiu     $17, $17, 0xC
      lw         $4, 0x0($16)
      jal        func_80052540
       addiu     $16, $16, 0xC
      lw         $2, 0x0($19)
      slt        $2, $18, $2
      bnez       $2, .L800D92E8
       nop
  .L800D9324:
      lw         $4, 0x4($19)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $19, $0
      addiu      $2, $0, 0x1
  .L800D933C:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800D92A8

.globl func_800D9358
.ent func_800D9358
func_800D9358:
      lui        $2, %hi(D_80125A40)
      jr         $31
       addiu     $2, $2, %lo(D_80125A40)
.end func_800D9358

.globl func_800D9364
.ent func_800D9364
func_800D9364:
      addiu      $29, $29, -0x18
      lui        $4, %hi(D_80137BE8)
      addiu      $4, $4, %lo(D_80137BE8)
      addu       $5, $0, $0
      sw         $31, 0x10($29)
      jal        func_80016140
       addiu     $6, $0, 0x10
  .L800D9380:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D9364

.globl func_800D938C
.ent func_800D938C
func_800D938C:
      bnel       $3, $22, .L800D93C4
       addu      $16, $18, $0
      addiu      $18, $18, 0x1
      lbu        $2, 0x0($18)
      bnez       $2, .L800D9380
       andi      $3, $2, 0xFF
      j          .L800D93C4
       addu      $16, $18, $0
      lbu        $2, 0x0($16)
      beq        $2, $22, .L800D93D4
       nop
      beql       $2, $23, func_800D93C0
       addu      $17, $16, $0
.end func_800D938C

.globl func_800D93C0
.ent func_800D93C0
func_800D93C0:
      addiu      $29, $29, -0x98
  .L800D93C4:
      sw         $16, 0x90($29)
      addu       $16, $4, $0
      sw         $31, 0x94($29)
      lw         $3, 0x6C($16)
  .L800D93D4:
      addiu      $2, $0, -0x1
      bne        $3, $2, .L800D93EC
       addiu     $4, $29, 0x10
      addiu      $2, $0, -0x15
      j          .L800D9464
       sw        $2, 0x84($16)
  .L800D93EC:
      lui        $5, %hi(D_800FCD78)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800FCD78)
      lw         $2, 0x90($16)
      lw         $4, 0x8C($16)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $5, $29, 0x10
      lw         $2, 0x38($16)
      bnez       $2, .L800D942C
       nop
      jal        func_800D9478
       addu      $4, $16, $0
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800D9468
       addiu     $2, $0, -0x1
  .L800D942C:
      jal        func_800D954C
       addu      $4, $16, $0
      addu       $3, $2, $0
      bnez       $3, .L800D944C
       addiu     $2, $0, 0x1
      sw         $0, 0x3C($16)
      j          .L800D9468
       addiu     $2, $0, 0x6
  .L800D944C:
      bne        $3, $2, .L800D9468
       addiu     $2, $0, -0x1
      jal        func_800D9B4C
       addu      $4, $16, $0
      j          .L800D9468
       addiu     $2, $0, 0x8
  .L800D9464:
      addiu      $2, $0, -0x1
  .L800D9468:
      lw         $31, 0x94($29)
      lw         $16, 0x90($29)
      jr         $31
       addiu     $29, $29, 0x98
.end func_800D93C0

.globl func_800D9478
.ent func_800D9478
func_800D9478:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addiu      $4, $0, 0x10
      sw         $31, 0x14($29)
      jal        func_80052504
       addu      $5, $0, $0
      beqz       $2, .L800D9534
       sw        $2, 0x38($16)
      addiu      $3, $0, -0x1
      sh         $3, 0x0($2)
      lw         $2, 0x38($16)
      sh         $3, 0x2($2)
      lw         $3, 0x38($16)
      addiu      $2, $0, -0x1
      sw         $2, 0x4($3)
      lw         $2, 0x38($16)
      addu       $4, $0, $0
      sw         $0, 0x8($2)
      lw         $6, 0x38($16)
      addu       $5, $4, $0
      jal        func_80054380
       addiu     $6, $6, 0xC
      lw         $2, 0x38($16)
      lw         $2, 0xC($2)
      beqz       $2, .L800D9534
       addiu     $4, $0, 0x118
      jal        func_80052504
       addu      $5, $0, $0
      addu       $3, $2, $0
      beqz       $3, .L800D9534
       sw        $3, 0x34($16)
      addiu      $2, $0, 0x100
      sw         $2, 0x4($3)
      lw         $2, 0x34($16)
      sw         $0, 0x8($2)
      lw         $2, 0x34($16)
      sw         $0, 0xC($2)
      lw         $3, 0x34($16)
      addiu      $2, $3, 0x17
      sw         $2, 0x0($3)
      lw         $2, 0x34($16)
      sb         $0, 0x10($2)
      lw         $3, 0x34($16)
      addiu      $2, $0, 0x1
      j          .L800D953C
       sb        $0, 0x11($3)
  .L800D9534:
      addiu      $2, $0, -0x5
      sw         $2, 0x84($16)
  .L800D953C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D9478

.globl func_800D954C
.ent func_800D954C
func_800D954C:
      addiu      $29, $29, -0x38
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $18, 0x18($29)
      addiu      $18, $0, 0x1
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $20, 0x20($29)
      addu       $20, $18, $0
      sw         $21, 0x24($29)
      addiu      $21, $0, 0x100
      sw         $31, 0x34($29)
      sw         $30, 0x30($29)
      sw         $23, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $19, 0x1C($29)
      lw         $19, 0x3C($16)
      lw         $30, 0x38($16)
      jal        func_8004FA7C
       addu      $4, $19, $0
      addu       $4, $19, $0
      jal        func_8004FAD0
       addu      $23, $2, $0
      addu       $22, $2, $0
  .L800D95AC:
      lw         $4, 0x34($16)
      lw         $5, 0x4($4)
      lw         $3, 0xC($4)
      addiu      $2, $5, -0x1
      slt        $2, $2, $3
      beqz       $2, .L800D9628
       addiu     $2, $5, 0x80
      sw         $2, 0x4($4)
      lw         $3, 0x34($16)
      lbu        $2, 0x11($3)
      beqz       $2, .L800D95F4
       nop
      lw         $4, 0x0($3)
      lw         $5, 0x4($3)
      jal        func_80052524
       addiu     $6, $0, 0x2
      j          .L800D9600
       nop
  .L800D95F4:
      lw         $4, 0x4($3)
      jal        func_800524E8
       addiu     $5, $0, 0x2
  .L800D9600:
      lw         $3, 0x34($16)
      sw         $2, 0x0($3)
      lw         $3, 0x34($16)
      lw         $2, 0x0($3)
      bnel       $2, $0, .L800D9628
       sb        $20, 0x11($3)
      addiu      $2, $0, -0x5
      sw         $2, 0x84($16)
      j          .L800D985C
       addu      $18, $2, $0
  .L800D9628:
      addiu      $2, $23, -0x1
      slt        $2, $2, $17
      beqz       $2, .L800D9648
       nop
      jal        func_8004F810
       addu      $4, $19, $0
      j          .L800D985C
       addu      $18, $0, $0
  .L800D9648:
      lw         $4, 0x34($16)
      lbu        $2, 0x10($4)
      bnez       $2, .L800D96CC
       addu      $2, $22, $17
      lw         $3, 0xC($4)
      addiu      $2, $0, 0x5
      bne        $3, $2, .L800D96CC
       addu      $2, $22, $17
      sb         $20, 0x10($4)
      jal        func_800D989C
       addu      $4, $16, $0
      bnez       $2, .L800D96CC
       addu      $2, $22, $17
      lw         $4, 0x34($16)
      lbu        $2, 0x11($4)
      beqz       $2, .L800D9698
       nop
      lw         $4, 0x0($4)
      jal        func_80052540
       nop
  .L800D9698:
      lw         $3, 0x34($16)
      addiu      $2, $3, 0x17
      sw         $2, 0x0($3)
      lw         $2, 0x34($16)
      sw         $0, 0xC($2)
      lw         $2, 0x34($16)
      sw         $21, 0x4($2)
      lw         $2, 0x34($16)
      sw         $0, 0x8($2)
      lw         $2, 0x34($16)
      sb         $0, 0x11($2)
      j          .L800D9868
       sb        $20, 0xC0($16)
  .L800D96CC:
      lbu        $5, 0x0($2)
      addiu      $2, $0, 0xD
      andi       $3, $5, 0xFF
      beq        $3, $2, .L800D96E8
       addiu     $2, $0, 0xA
      bnel       $3, $2, .L800D9838
       addiu     $17, $17, 0x1
  .L800D96E8:
      lw         $4, 0x34($16)
      lw         $3, 0x8($4)
      bnez       $3, .L800D9780
       addu      $2, $4, $3
      addiu      $2, $0, 0x1
      sb         $5, 0x12($4)
      sw         $2, 0x8($4)
      lw         $3, 0x34($16)
      lw         $2, 0x0($3)
      lw         $3, 0xC($3)
      addu       $2, $2, $3
      sb         $0, 0x0($2)
      lh         $2, 0x0($30)
      bgez       $2, .L800D9734
       addiu     $17, $17, 0x1
      jal        func_800D98CC
       addu      $4, $16, $0
      j          .L800D973C
       nop
  .L800D9734:
      jal        func_800D9A94
       addu      $4, $16, $0
  .L800D973C:
      lw         $4, 0x34($16)
      lbu        $2, 0x11($4)
      beqz       $2, .L800D9758
       nop
      lw         $4, 0x0($4)
      jal        func_80052540
       nop
  .L800D9758:
      lw         $3, 0x34($16)
      addiu      $2, $3, 0x17
      sw         $2, 0x0($3)
      lw         $2, 0x34($16)
      sw         $0, 0xC($2)
      lw         $2, 0x34($16)
      sw         $21, 0x4($2)
      lw         $2, 0x34($16)
      j          .L800D985C
       sb        $0, 0x11($2)
  .L800D9780:
      sb         $5, 0x12($2)
      addiu      $2, $3, 0x1
      sw         $2, 0x8($4)
      lw         $2, 0x34($16)
      addiu      $17, $17, 0x1
      lw         $3, 0x8($2)
      lui        $5, %hi(D_800FCDC0)
      addu       $2, $2, $3
      sb         $0, 0x12($2)
      lw         $4, 0x34($16)
      addiu      $5, $5, %lo(D_800FCDC0)
      jal        func_800175C0
       addiu     $4, $4, 0x12
      beqz       $2, .L800D981C
       lui       $5, %hi(D_800FCDC4)
      lw         $4, 0x34($16)
      addiu      $5, $5, %lo(D_800FCDC4)
      jal        func_800175C0
       addiu     $4, $4, 0x12
      beqz       $2, .L800D981C
       lui       $5, %hi(D_800FCDC8)
      lw         $4, 0x34($16)
      addiu      $5, $5, %lo(D_800FCDC8)
      jal        func_800175C0
       addiu     $4, $4, 0x12
      beqz       $2, .L800D981C
       lui       $5, %hi(D_800FCDCC)
      lw         $4, 0x34($16)
      addiu      $5, $5, %lo(D_800FCDCC)
      jal        func_800175C0
       addiu     $4, $4, 0x12
      beqz       $2, .L800D981C
       lui       $5, %hi(D_800FCDD0)
      lw         $4, 0x34($16)
      addiu      $5, $5, %lo(D_800FCDD0)
      jal        func_800175C0
       addiu     $4, $4, 0x12
      bnez       $2, .L800D9860
       addiu     $2, $0, 0x1
  .L800D981C:
      addu       $4, $19, $0
      addu       $5, $17, $0
      jal        func_8004FB58
       sb        $20, 0xC0($16)
      lw         $2, 0x34($16)
      j          .L800D9868
       sw        $0, 0x8($2)
  .L800D9838:
      lw         $4, 0x34($16)
      lw         $3, 0xC($4)
      lw         $2, 0x0($4)
      addu       $2, $2, $3
      addiu      $3, $3, 0x1
      sb         $5, 0x0($2)
      sw         $3, 0xC($4)
      lw         $2, 0x34($16)
      sw         $0, 0x8($2)
  .L800D985C:
      addiu      $2, $0, 0x1
  .L800D9860:
      beq        $18, $2, .L800D95AC
       nop
  .L800D9868:
      addu       $2, $18, $0
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
.end func_800D954C

.globl func_800D989C
.ent func_800D989C
func_800D989C:
      addiu      $29, $29, -0x18
      lui        $5, %hi(D_800FCDD8)
      sw         $31, 0x10($29)
      lw         $2, 0x34($4)
      addiu      $5, $5, %lo(D_800FCDD8)
      lw         $4, 0x0($2)
      jal        func_800177C0
       addiu     $6, $0, 0x5
      lw         $31, 0x10($29)
      sltiu      $2, $2, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D989C

.globl func_800D98CC
.ent func_800D98CC
func_800D98CC:
      addiu      $29, $29, -0x38
      sw         $21, 0x2C($29)
      addu       $21, $4, $0
      sw         $31, 0x30($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      lw         $2, 0x34($21)
      addiu      $20, $0, 0x1
      lw         $17, 0x0($2)
.end func_800D98CC

.globl func_800D98FC
.ent func_800D98FC
func_800D98FC:
      lw         $19, 0x38($21)
      jal        func_80017780
       addu      $4, $17, $0
      addu       $4, $17, $0
      lui        $5, %hi(D_800FCDD8)
      addiu      $5, $5, %lo(D_800FCDD8)
      addu       $18, $2, $0
      jal        func_800177C0
       addiu     $6, $0, 0x5
      beqz       $2, .L800D9930
       addiu     $16, $0, 0x5
      j          .L800D9A68
       addiu     $20, $0, -0x1
  .L800D9930:
      jal        func_80024000
       addu      $4, $17, $16
      sh         $2, 0x0($19)
      lbu        $3, 0x5($17)
      addiu      $2, $0, 0x2E
      beq        $3, $2, .L800D996C
       addu      $3, $2, $0
      slt        $2, $16, $18
  .L800D9950:
      beqz       $2, .L800D998C
       addiu     $2, $0, -0x1
      addiu      $16, $16, 0x1
      addu       $2, $17, $16
      lbu        $2, 0x0($2)
      bne        $2, $3, .L800D9950
       slt       $2, $16, $18
  .L800D996C:
      slt        $2, $16, $18
      beqz       $2, .L800D9988
       addiu     $4, $16, 0x1
      jal        func_80024000
       addu      $4, $17, $4
      j          .L800D9990
       sh        $2, 0x2($19)
  .L800D9988:
      addiu      $2, $0, -0x1
  .L800D998C:
      sh         $2, 0x2($19)
  .L800D9990:
      addu       $2, $17, $16
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x20
      beq        $3, $2, .L800D99C0
       addu      $3, $2, $0
      slt        $2, $16, $18
  .L800D99A8:
      beqz       $2, .L800D99C4
       addiu     $16, $16, 0x1
      addu       $2, $17, $16
      lbu        $2, 0x0($2)
      bne        $2, $3, .L800D99A8
       slt       $2, $16, $18
  .L800D99C0:
      addiu      $16, $16, 0x1
  .L800D99C4:
      addu       $5, $0, $0
      addiu      $4, $29, 0x10
  .L800D99CC:
      slt        $2, $16, $18
      beqz       $2, .L800D99F4
       addu      $2, $17, $16
      addu       $3, $4, $5
      lbu        $2, 0x0($2)
      addiu      $5, $5, 0x1
      sb         $2, 0x0($3)
      slti       $2, $5, 0x3
      bnez       $2, .L800D99CC
       addiu     $16, $16, 0x1
  .L800D99F4:
      addiu      $4, $29, 0x10
      addu       $2, $4, $5
      jal        func_80024000
       sb        $0, 0x0($2)
      subu       $4, $18, $16
      addiu      $4, $4, 0x1
      addu       $5, $0, $0
      jal        func_800524E8
       sw        $2, 0x4($19)
      bnez       $2, .L800D9A28
       sw        $2, 0x8($19)
      j          .L800D9A68
       addiu     $20, $0, -0x5
  .L800D9A28:
      addiu      $16, $16, 0x1
      slt        $2, $16, $18
      beqz       $2, .L800D9A5C
       addu      $5, $0, $0
  .L800D9A38:
      addu       $3, $17, $16
      addiu      $16, $16, 0x1
      lw         $2, 0x8($19)
      lbu        $3, 0x0($3)
      addu       $2, $2, $5
      sb         $3, 0x0($2)
      slt        $2, $16, $18
      bnez       $2, .L800D9A38
       addiu     $5, $5, 0x1
  .L800D9A5C:
      lw         $2, 0x8($19)
      addu       $2, $2, $5
      sb         $0, 0x0($2)
  .L800D9A68:
      addu       $2, $20, $0
      sw         $20, 0x84($21)
      lw         $31, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800D98FC

.globl func_800D9A94
.ent func_800D9A94
func_800D9A94:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addiu      $16, $0, 0x1
      sw         $31, 0x18($29)
      lw         $2, 0x34($17)
      lw         $4, 0x38($17)
      lw         $6, 0x0($2)
      addiu      $2, $0, 0x3A
      lbu        $3, 0x0($6)
      beq        $3, $2, .L800D9ADC
       addu      $5, $6, $0
  .L800D9AC8:
      beqz       $3, .L800D9AE8
       addiu     $6, $6, 0x1
      lbu        $3, 0x0($6)
      bne        $3, $2, .L800D9AC8
       nop
  .L800D9ADC:
      lbu        $2, 0x0($6)
      bnel       $2, $0, .L800D9AFC
       sb        $0, 0x0($6)
  .L800D9AE8:
      j          .L800D9B30
       addiu     $16, $0, -0x1
  .L800D9AF0:
      lbu        $2, 0x0($6)
      beqz       $2, .L800D9B18
       nop
  .L800D9AFC:
      addiu      $6, $6, 0x1
      lbu        $3, 0x0($6)
      addiu      $2, $0, 0x20
      beq        $3, $2, .L800D9AF0
       addiu     $2, $0, 0x9
      beq        $3, $2, .L800D9AF0
       nop
  .L800D9B18:
      beqz       $5, .L800D9B34
       addu      $2, $16, $0
      beqz       $6, .L800D9B34
       addiu     $4, $4, 0xC
      jal        func_80054530
       addiu     $7, $0, -0x1
  .L800D9B30:
      addu       $2, $16, $0
  .L800D9B34:
      sw         $16, 0x84($17)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D9A94

.globl func_800D9B4C
.ent func_800D9B4C
func_800D9B4C:
      addiu      $29, $29, -0x38
      sw         $18, 0x28($29)
      addu       $18, $4, $0
      lui        $5, %hi(D_800EC694)
      addiu      $5, $5, %lo(D_800EC694)
      addiu      $7, $0, -0x1
      sw         $31, 0x30($29)
      sw         $19, 0x2C($29)
      sw         $17, 0x24($29)
      sw         $16, 0x20($29)
      lw         $16, 0x38($18)
      lw         $6, 0xC($18)
      addiu      $19, $16, 0xC
      jal        func_80054530
       addu      $4, $19, $0
      lh         $2, 0x0($16)
      bltz       $2, .L800D9C18
       lui       $5, %hi(D_800FCEF0)
      lh         $2, 0x2($16)
      bltz       $2, .L800D9C1C
       addiu     $5, $5, %lo(D_800FCEF0)
      lw         $4, 0x8($16)
      jal        func_80017780
       nop
      addiu      $4, $2, 0x100
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      bnez       $17, .L800D9BD0
       addu      $4, $17, $0
      addiu      $2, $0, -0x5
      j          .L800D9C68
       sw        $2, 0x84($18)
  .L800D9BD0:
      lh         $6, 0x0($16)
      lh         $7, 0x2($16)
      lw         $2, 0x4($16)
      lui        $5, %hi(D_800FCEDC)
      sw         $2, 0x10($29)
      lw         $2, 0x8($16)
      addiu      $5, $5, %lo(D_800FCEDC)
      jal        func_80016580
       sw        $2, 0x14($29)
      addu       $4, $19, $0
      lui        $5, %hi(D_800FCF3C)
      addiu      $5, $5, %lo(D_800FCF3C)
      addu       $6, $17, $0
      jal        func_80054530
       addiu     $7, $0, -0x1
      jal        func_80052540
       addu      $4, $17, $0
      lui        $5, %hi(D_800FCEF0)
  .L800D9C18:
      addiu      $5, $5, %lo(D_800FCEF0)
  .L800D9C1C:
      lw         $4, 0x10($18)
      addiu      $2, $0, -0x1
      jal        func_8005211C
       sw        $2, 0x78($18)
      bnez       $2, .L800D9C3C
       addu      $5, $0, $0
      j          .L800D9C64
       sw        $0, 0x78($18)
  .L800D9C3C:
      lw         $4, 0xC($16)
      lui        $6, %hi(D_800FCF04)
      addiu      $6, $6, %lo(D_800FCF04)
      jal        func_8005446C
       addiu     $7, $29, 0x18
  .L800D9C50:
      beql       $2, $0, .L800D9C68
       addiu     $2, $0, 0x1
      jal        func_80024040
       addu      $4, $2, $0
      sw         $2, 0x78($18)
  .L800D9C64:
      addiu      $2, $0, 0x1
  .L800D9C68:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800D9B4C

.globl func_800D9C84
.ent func_800D9C84
func_800D9C84:
      jal        func_80052EC0
       nop
      beqz       $2, .L800D9C50
       sw        $2, 0x0($17)
      lw         $4, 0x0($18)
      jal        func_800D98FC
       nop
      addiu      $16, $2, 0x1
      addu       $4, $16, $0
      jal        func_80052FE8
       addu      $5, $0, $0
      beqz       $2, .L800D9C50
       sw        $2, -0x4($20)
      lw         $4, 0x0($18)
      addu       $5, $2, $0
.end func_800D9C84

.globl func_800D9CC0
.ent func_800D9CC0
func_800D9CC0:
      lui        $3, %hi(D_80125A80)
      lbu        $2, %lo(D_80125A80)($3)
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      bnez       $2, .L800D9CE8
       sw        $16, 0x10($29)
      addiu      $2, $0, 0x1
      sb         $2, %lo(D_80125A80)($3)
  .L800D9CE8:
      addiu      $4, $0, 0x3C
      jal        func_80052504
       addiu     $5, $0, 0x2
      addu       $16, $2, $0
      beqz       $16, .L800D9DC8
       addiu     $2, $0, -0x5
      addiu      $4, $0, 0x14
      jal        func_80052504
       addiu     $5, $0, 0x2
      addu       $3, $2, $0
      beqz       $3, .L800D9DBC
       sw        $3, 0x2C($16)
      lw         $2, 0x90($17)
      sw         $2, 0xC($3)
      lw         $3, 0x2C($16)
      lw         $2, 0x8C($17)
      jal        func_8005133C
       sw        $2, 0x10($3)
      lw         $3, 0x2C($16)
      sw         $2, 0x0($3)
      lw         $2, 0xC($17)
      sw         $2, 0x0($16)
      lw         $2, 0x10($17)
      sw         $2, 0x4($16)
      lw         $2, 0x18($17)
      sw         $2, 0x34($16)
      lw         $2, 0x1C($17)
      sw         $2, 0x8($16)
      lw         $2, 0x20($17)
      sw         $2, 0xC($16)
      lw         $2, 0x38($17)
      jal        func_800DB6D0
       sw        $2, 0x10($16)
      sw         $2, 0x14($16)
      lw         $2, 0xB0($17)
      lui        $4, %hi(func_800D9DDC)
      sw         $2, 0x1C($16)
      lw         $2, 0xB4($17)
      addiu      $4, $4, %lo(func_800D9DDC)
      sw         $2, 0x20($16)
      lw         $2, 0xB8($17)
      addu       $5, $16, $0
      sw         $2, 0x24($5)
      lw         $3, 0xBC($17)
      addiu      $2, $17, 0xC1
      sw         $2, 0x38($5)
      jal        func_800513C8
       sw        $3, 0x28($5)
      addu       $3, $2, $0
      bnez       $3, .L800D9DC8
       addiu     $2, $0, 0xE
      j          .L800D9DC8
       addiu     $2, $0, -0x1
  .L800D9DBC:
      jal        func_80052540
       addu      $4, $16, $0
      addiu      $2, $0, -0x5
  .L800D9DC8:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800D9CC0

.globl func_800D9DDC
.ent func_800D9DDC
func_800D9DDC:
      addiu      $29, $29, -0x18
      addiu      $3, $4, 0x1
      sw         $31, 0x10($29)
      lw         $4, 0x0($5)
      sltiu      $2, $3, 0x8
      lw         $5, 0x2C($4)
      beqz       $2, .L800D9E7C
       lui       $2, %hi(jtbl_800FCE00)
      addiu      $2, $2, %lo(jtbl_800FCE00)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800D9E14
.L800D9E14:
      addiu      $2, $0, 0x4
      sw         $2, 0x8($5)
  .globl .L800D9E1C
.L800D9E1C:
      jal        func_800D9E8C
       nop
      j          .L800D9E80
       nop
  .globl .L800D9E2C
.L800D9E2C:
      jal        func_800DA008
       nop
      j          .L800D9E80
       nop
  .globl .L800D9E3C
.L800D9E3C:
      jal        func_800DA178
       nop
      j          .L800D9E80
       nop
  .globl .L800D9E4C
.L800D9E4C:
      jal        func_800DA2F8
       nop
      j          .L800D9E80
       nop
  .globl .L800D9E5C
.L800D9E5C:
      jal        func_800DA470
       nop
      j          .L800D9E80
       nop
  .globl .L800D9E6C
.L800D9E6C:
      jal        func_800DA66C
       nop
      j          .L800D9E80
       nop
  .L800D9E7C:
      addiu      $2, $0, -0x1
  .L800D9E80:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800D9DDC

.globl func_800D9E8C
.ent func_800D9E8C
func_800D9E8C:
      addiu      $29, $29, -0x80
      sw         $17, 0x6C($29)
      addu       $17, $4, $0
      sw         $19, 0x74($29)
      addu       $19, $5, $0
      addiu      $2, $0, 0x4
      sw         $31, 0x78($29)
      sw         $18, 0x70($29)
      sw         $16, 0x68($29)
      sw         $2, 0x8($19)
      lw         $5, 0x1C($17)
      beqz       $5, .L800D9FEC
       addiu     $2, $0, 0x2
      jal        func_800DA6A0
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800D9F78
       addiu     $16, $0, 0x1
      lw         $2, 0x1C($17)
      lw         $3, 0xC($17)
      lw         $7, 0x0($2)
      sw         $3, 0x10($29)
      lw         $2, 0x10($17)
      lw         $2, 0x4($2)
      sw         $2, 0x14($29)
      lw         $2, 0x10($17)
      lw         $2, 0x8($2)
      sw         $2, 0x18($29)
      lw         $2, 0x10($17)
      lw         $3, 0xC($2)
      addiu      $2, $17, 0x18
      sw         $2, 0x24($29)
      addiu      $2, $17, 0x30
      sw         $16, 0x20($29)
      sw         $2, 0x28($29)
      sw         $3, 0x1C($29)
      lw         $4, 0x14($17)
      lw         $5, 0x2C($17)
      lw         $6, 0x4($17)
      lw         $2, 0x4($7)
      lw         $7, 0x0($17)
      jalr       $2
       nop
      addu       $18, $2, $0
      bne        $18, $16, .L800D9F78
       addiu     $2, $0, 0x2
      lw         $3, 0x30($17)
      bnel       $3, $2, .L800D9F68
       addiu     $2, $0, 0x5
      jal        func_8005133C
       nop
      jal        func_800513F4
       addu      $4, $2, $0
      j          .L800D9FEC
       addiu     $2, $0, 0x5
  .L800D9F68:
      beq        $3, $2, .L800D9FEC
       addiu     $2, $0, 0x2
      bnez       $3, .L800D9F8C
       addiu     $4, $29, 0x30
  .L800D9F78:
      lw         $2, 0x1C($17)
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x1
      j          .L800D9FEC
       sw        $3, 0x1C($17)
  .L800D9F8C:
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x38
      lw         $2, 0x0($17)
      sw         $2, 0x30($29)
      lw         $2, 0x4($17)
      addiu      $5, $29, 0x30
      sw         $2, 0x34($29)
      lw         $2, 0x8($17)
      addiu      $3, $0, -0x9
      sw         $2, 0x38($29)
      lw         $4, 0x10($19)
      lw         $6, 0x34($17)
      lw         $2, 0xC($19)
      and        $6, $6, $3
      lw         $2, 0x1C($2)
      jalr       $2
       ori       $6, $6, 0x10
      addu       $3, $2, $0
      bne        $3, $18, .L800D9FEC
       addiu     $2, $0, 0x6
      lw         $2, 0x38($17)
      sb         $3, 0x0($2)
      addiu      $2, $0, 0x6
  .L800D9FEC:
      lw         $31, 0x78($29)
      lw         $19, 0x74($29)
      lw         $18, 0x70($29)
      lw         $17, 0x6C($29)
      lw         $16, 0x68($29)
      jr         $31
       addiu     $29, $29, 0x80
.end func_800D9E8C

.globl func_800DA008
.ent func_800DA008
func_800DA008:
      addiu      $29, $29, -0x80
      sw         $17, 0x6C($29)
      addu       $17, $4, $0
      sw         $19, 0x74($29)
      addu       $19, $5, $0
      sw         $31, 0x78($29)
      sw         $18, 0x70($29)
      sw         $16, 0x68($29)
      lw         $5, 0x20($17)
      beqz       $5, .L800DA15C
       addiu     $2, $0, 0x3
      jal        func_800DA6A0
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800DA0EC
       addiu     $16, $0, 0x1
      lw         $2, 0x20($17)
      lw         $3, 0xC($17)
      lw         $7, 0x0($2)
      sw         $3, 0x10($29)
      lw         $2, 0x10($17)
      lw         $2, 0x4($2)
      sw         $2, 0x14($29)
      lw         $2, 0x10($17)
      lw         $2, 0x8($2)
      sw         $2, 0x18($29)
      lw         $2, 0x10($17)
      lw         $3, 0xC($2)
      addiu      $2, $17, 0x18
      sw         $2, 0x24($29)
      addiu      $2, $17, 0x30
      sw         $16, 0x20($29)
      sw         $2, 0x28($29)
      sw         $3, 0x1C($29)
      lw         $4, 0x14($17)
      lw         $5, 0x2C($17)
      lw         $6, 0x4($17)
      lw         $2, 0x4($7)
      lw         $7, 0x0($17)
      jalr       $2
       nop
      addu       $18, $2, $0
      bne        $18, $16, .L800DA0EC
       addiu     $2, $0, 0x2
      lw         $3, 0x30($17)
      bnel       $3, $2, .L800DA0DC
       addiu     $2, $0, 0x5
      jal        func_8005133C
       nop
      jal        func_800513F4
       addu      $4, $2, $0
      j          .L800DA15C
       addiu     $2, $0, 0x5
  .L800DA0DC:
      beq        $3, $2, .L800DA15C
       addiu     $2, $0, 0x3
      bnez       $3, .L800DA100
       addiu     $4, $29, 0x30
  .L800DA0EC:
      lw         $2, 0x20($17)
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x2
      j          .L800DA15C
       sw        $3, 0x20($17)
  .L800DA100:
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x38
      lw         $2, 0x0($17)
      sw         $2, 0x30($29)
      lw         $2, 0x4($17)
      addiu      $5, $29, 0x30
      sw         $2, 0x34($29)
      lw         $2, 0x8($17)
      addiu      $3, $0, -0x9
      sw         $2, 0x38($29)
      lw         $4, 0x10($19)
      lw         $2, 0xC($19)
      lw         $6, 0x34($17)
      lw         $2, 0x1C($2)
      jalr       $2
       and       $6, $6, $3
      addu       $3, $2, $0
      bne        $3, $18, .L800DA15C
       addiu     $2, $0, 0x6
      lw         $2, 0x38($17)
      sb         $3, 0x0($2)
      addiu      $2, $0, 0x6
  .L800DA15C:
      lw         $31, 0x78($29)
      lw         $19, 0x74($29)
      lw         $18, 0x70($29)
      lw         $17, 0x6C($29)
      lw         $16, 0x68($29)
      jr         $31
       addiu     $29, $29, 0x80
.end func_800DA008

.globl func_800DA178
.ent func_800DA178
func_800DA178:
      addiu      $29, $29, -0x80
      sw         $17, 0x6C($29)
      addu       $17, $4, $0
      sw         $19, 0x74($29)
      addu       $19, $5, $0
      sw         $20, 0x78($29)
      addiu      $20, $0, 0x2
      sw         $31, 0x7C($29)
      sw         $18, 0x70($29)
      sw         $16, 0x68($29)
      sw         $20, 0x8($19)
      lw         $5, 0x24($17)
      beqz       $5, .L800DA2D8
       addiu     $2, $0, 0x4
      jal        func_800DA6A0
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800DA268
       addiu     $16, $0, 0x1
      lw         $2, 0x24($17)
      lw         $3, 0xC($17)
      lw         $7, 0x0($2)
      sw         $3, 0x10($29)
      lw         $2, 0x10($17)
      lw         $2, 0x4($2)
      sw         $2, 0x14($29)
      lw         $2, 0x10($17)
      lw         $2, 0x8($2)
      sw         $2, 0x18($29)
      lw         $2, 0x10($17)
      lw         $3, 0xC($2)
      addiu      $2, $17, 0x18
      sw         $2, 0x24($29)
      addiu      $2, $17, 0x30
      sw         $16, 0x20($29)
      sw         $2, 0x28($29)
      sw         $3, 0x1C($29)
      lw         $4, 0x14($17)
      lw         $5, 0x2C($17)
      lw         $6, 0x4($17)
      lw         $2, 0x4($7)
      lw         $7, 0x0($17)
      jalr       $2
       nop
      addu       $18, $2, $0
      bne        $18, $16, .L800DA268
       nop
      lw         $3, 0x30($17)
      bnel       $3, $20, .L800DA258
       addiu     $2, $0, 0x5
      jal        func_8005133C
       nop
      jal        func_800513F4
       addu      $4, $2, $0
      j          .L800DA2D8
       addiu     $2, $0, 0x5
  .L800DA258:
      beq        $3, $2, .L800DA2D8
       addiu     $2, $0, 0x4
      bnez       $3, .L800DA27C
       addiu     $4, $29, 0x30
  .L800DA268:
      lw         $2, 0x24($17)
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x3
      j          .L800DA2D8
       sw        $3, 0x24($17)
  .L800DA27C:
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x38
      lw         $2, 0x0($17)
      sw         $2, 0x30($29)
      lw         $2, 0x4($17)
      addiu      $5, $29, 0x30
      sw         $2, 0x34($29)
      lw         $2, 0x8($17)
      addiu      $3, $0, -0x9
      sw         $2, 0x38($29)
      lw         $4, 0x10($19)
      lw         $2, 0xC($19)
      lw         $6, 0x34($17)
      lw         $2, 0x1C($2)
      jalr       $2
       and       $6, $6, $3
      addu       $3, $2, $0
      bne        $3, $18, .L800DA2D8
       addiu     $2, $0, 0x6
      lw         $2, 0x38($17)
      sb         $3, 0x0($2)
      addiu      $2, $0, 0x6
  .L800DA2D8:
      lw         $31, 0x7C($29)
      lw         $20, 0x78($29)
      lw         $19, 0x74($29)
      lw         $18, 0x70($29)
      lw         $17, 0x6C($29)
      lw         $16, 0x68($29)
      jr         $31
       addiu     $29, $29, 0x80
.end func_800DA178

.globl func_800DA2F8
.ent func_800DA2F8
func_800DA2F8:
      addiu      $29, $29, -0x80
      sw         $17, 0x6C($29)
      addu       $17, $4, $0
      sw         $19, 0x74($29)
      addu       $19, $5, $0
      addiu      $2, $0, 0x3
      sw         $31, 0x78($29)
      sw         $18, 0x70($29)
      sw         $16, 0x68($29)
      sw         $2, 0x8($19)
      lw         $5, 0x28($17)
      beqz       $5, .L800DA454
       addiu     $2, $0, 0x6
      jal        func_800DA6A0
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800DA3E4
       addiu     $16, $0, 0x1
      lw         $2, 0x28($17)
      lw         $3, 0xC($17)
      lw         $7, 0x0($2)
      sw         $3, 0x10($29)
      lw         $2, 0x10($17)
      lw         $2, 0x4($2)
      sw         $2, 0x14($29)
      lw         $2, 0x10($17)
      lw         $2, 0x8($2)
      sw         $2, 0x18($29)
      lw         $2, 0x10($17)
      lw         $3, 0xC($2)
      addiu      $2, $17, 0x18
      sw         $2, 0x24($29)
      addiu      $2, $17, 0x30
      sw         $16, 0x20($29)
      sw         $2, 0x28($29)
      sw         $3, 0x1C($29)
      lw         $4, 0x14($17)
      lw         $5, 0x2C($17)
      lw         $6, 0x4($17)
      lw         $2, 0x4($7)
      lw         $7, 0x0($17)
      jalr       $2
       nop
      addu       $18, $2, $0
      bne        $18, $16, .L800DA3E4
       addiu     $2, $0, 0x2
      lw         $3, 0x30($17)
      bnel       $3, $2, .L800DA3D4
       addiu     $2, $0, 0x5
      jal        func_8005133C
       nop
      jal        func_800513F4
       addu      $4, $2, $0
      j          .L800DA454
       addiu     $2, $0, 0x5
  .L800DA3D4:
      beq        $3, $2, .L800DA454
       addiu     $2, $0, 0x6
      bnez       $3, .L800DA3F8
       addiu     $4, $29, 0x30
  .L800DA3E4:
      lw         $2, 0x28($17)
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x4
      j          .L800DA454
       sw        $3, 0x28($17)
  .L800DA3F8:
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x38
      lw         $2, 0x0($17)
      sw         $2, 0x30($29)
      lw         $2, 0x4($17)
      addiu      $5, $29, 0x30
      sw         $2, 0x34($29)
      lw         $2, 0x8($17)
      addiu      $3, $0, -0x9
      sw         $2, 0x38($29)
      lw         $4, 0x10($19)
      lw         $2, 0xC($19)
      lw         $6, 0x34($17)
      lw         $2, 0x1C($2)
      jalr       $2
       and       $6, $6, $3
      addu       $3, $2, $0
      bne        $3, $18, .L800DA454
       addiu     $2, $0, 0x6
      lw         $2, 0x38($17)
      sb         $3, 0x0($2)
      addiu      $2, $0, 0x6
  .L800DA454:
      lw         $31, 0x78($29)
      lw         $19, 0x74($29)
      lw         $18, 0x70($29)
      lw         $17, 0x6C($29)
      lw         $16, 0x68($29)
      jr         $31
       addiu     $29, $29, 0x80
.end func_800DA2F8

.globl func_800DA470
.ent func_800DA470
func_800DA470:
      addiu      $29, $29, -0x58
      sw         $16, 0x48($29)
      sw         $17, 0x4C($29)
      addu       $17, $5, $0
      sw         $31, 0x54($29)
      sw         $18, 0x50($29)
      lw         $3, 0x8($17)
      addiu      $18, $0, 0x1
      bne        $3, $18, .L800DA524
       addu      $16, $4, $0
      lw         $3, 0x4($17)
      addiu      $2, $0, 0x3
      beq        $3, $2, .L800DA5C8
       addiu     $2, $0, 0x5
      lw         $3, 0x30($16)
      beq        $3, $2, .L800DA654
       addiu     $2, $0, 0x3
      bnez       $3, .L800DA4D0
       addiu     $4, $29, 0x10
      lw         $2, 0x20($16)
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x2
      j          .L800DA654
       sw        $3, 0x20($16)
  .L800DA4D0:
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x38
      lw         $2, 0x0($16)
      sw         $2, 0x10($29)
      lw         $2, 0x4($16)
      addiu      $5, $29, 0x10
      sw         $2, 0x14($29)
      lw         $2, 0x8($16)
      addiu      $3, $0, -0x9
      sw         $2, 0x18($29)
      lw         $4, 0x10($17)
      lw         $2, 0xC($17)
      lw         $6, 0x34($16)
      lw         $2, 0x1C($2)
      jalr       $2
       and       $6, $6, $3
      beqz       $2, .L800DA654
       addiu     $2, $0, 0x6
      j          .L800DA5B0
       nop
  .L800DA524:
      addiu      $2, $0, 0x2
      bne        $3, $2, .L800DA5BC
       addiu     $2, $0, 0x3
      lw         $3, 0x4($17)
      beq        $3, $2, .L800DA5C8
       addiu     $2, $0, 0x5
      lw         $3, 0x30($16)
      beq        $3, $2, .L800DA654
       addiu     $2, $0, 0x4
      bnez       $3, .L800DA564
       addiu     $4, $29, 0x10
      lw         $2, 0x24($16)
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x3
      j          .L800DA654
       sw        $3, 0x24($16)
  .L800DA564:
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x38
      lw         $2, 0x0($16)
      sw         $2, 0x10($29)
      lw         $2, 0x4($16)
      addiu      $5, $29, 0x10
      sw         $2, 0x14($29)
      lw         $2, 0x8($16)
      addiu      $3, $0, -0x9
      sw         $2, 0x18($29)
      lw         $4, 0x10($17)
      lw         $2, 0xC($17)
      lw         $6, 0x34($16)
      lw         $2, 0x1C($2)
      jalr       $2
       and       $6, $6, $3
      bne        $2, $18, .L800DA654
       addiu     $2, $0, 0x6
  .L800DA5B0:
      lw         $2, 0x38($16)
      j          .L800DA650
       sb        $18, 0x0($2)
  .L800DA5BC:
      lw         $3, 0x4($17)
      bne        $3, $2, .L800DA5D0
       addiu     $2, $0, 0x5
  .L800DA5C8:
      j          .L800DA654
       addiu     $2, $0, -0x1
  .L800DA5D0:
      lw         $3, 0x30($16)
      beq        $3, $2, .L800DA654
       addiu     $2, $0, 0x6
      bnez       $3, .L800DA5F8
       addiu     $4, $29, 0x10
      lw         $2, 0x28($16)
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x4
      j          .L800DA654
       sw        $3, 0x28($16)
  .L800DA5F8:
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x38
      lw         $2, 0x0($16)
      sw         $2, 0x10($29)
      lw         $2, 0x4($16)
      addiu      $5, $29, 0x10
      sw         $2, 0x14($29)
      lw         $2, 0x8($16)
      addiu      $3, $0, -0x9
      sw         $2, 0x18($29)
      lw         $4, 0x10($17)
      lw         $2, 0xC($17)
      lw         $6, 0x34($16)
      lw         $2, 0x1C($2)
      jalr       $2
       and       $6, $6, $3
      addu       $3, $2, $0
      bne        $3, $18, .L800DA654
       addiu     $2, $0, 0x6
      lw         $2, 0x38($16)
      sb         $3, 0x0($2)
  .L800DA650:
      addiu      $2, $0, 0x6
  .L800DA654:
      lw         $31, 0x54($29)
      lw         $18, 0x50($29)
      lw         $17, 0x4C($29)
      lw         $16, 0x48($29)
      jr         $31
       addiu     $29, $29, 0x58
.end func_800DA470

.globl func_800DA66C
.ent func_800DA66C
func_800DA66C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      jal        func_80052540
       addu      $4, $5, $0
      bnel       $16, $0, .L800DA68C
       sw        $0, 0x2C($16)
  .L800DA68C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x7FFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DA66C

.globl func_800DA6A0
.ent func_800DA6A0
func_800DA6A0:
      addiu      $29, $29, -0x50
      sw         $22, 0x40($29)
      addu       $22, $5, $0
      sw         $31, 0x48($29)
      sw         $23, 0x44($29)
      sw         $21, 0x3C($29)
      sw         $20, 0x38($29)
      sw         $19, 0x34($29)
      sw         $18, 0x30($29)
      sw         $17, 0x2C($29)
      sw         $16, 0x28($29)
      lw         $2, 0x4($22)
      lw         $20, 0x4($2)
      lw         $19, 0x10($4)
      blez       $20, .L800DA7A8
       addu      $17, $0, $0
      addiu      $23, $0, -0x1
      lui        $21, %hi(D_800EC61C)
      addu       $18, $17, $0
  .L800DA6EC:
      lw         $2, 0x4($22)
      lw         $2, 0x8($2)
      addu       $2, $18, $2
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      sw         $8, 0x10($29)
      sw         $9, 0x14($29)
      sw         $10, 0x18($29)
      lw         $3, 0x10($29)
      lw         $2, 0x4($19)
      beq        $3, $2, .L800DA72C
       addu      $5, $0, $0
      bnel       $3, $23, .L800DA79C
       addiu     $17, $17, 0x1
      addu       $5, $0, $0
  .L800DA72C:
      lw         $4, 0xC($19)
      lw         $6, 0x14($29)
      jal        func_8005446C
       addiu     $7, $29, 0x20
      addu       $16, $2, $0
      bnez       $16, .L800DA75C
       nop
      lw         $4, 0x14($29)
      jal        func_8005211C
       addiu     $5, $21, %lo(D_800EC61C)
      bnel       $2, $0, .L800DA79C
       addiu     $17, $17, 0x1
  .L800DA75C:
      lw         $4, 0x18($29)
      jal        func_8005211C
       addiu     $5, $21, %lo(D_800EC61C)
      beqz       $2, .L800DA7AC
       addiu     $2, $0, 0x1
      lw         $4, 0x18($29)
      jal        func_80017780
       nop
      addu       $4, $16, $0
      lw         $5, 0x18($29)
      jal        func_80052224
       addu      $6, $2, $0
      bnez       $2, .L800DA79C
       addiu     $17, $17, 0x1
      j          .L800DA7AC
       addiu     $2, $0, 0x1
  .L800DA79C:
      slt        $2, $17, $20
      bnez       $2, .L800DA6EC
       addiu     $18, $18, 0xC
  .L800DA7A8:
      addu       $2, $0, $0
  .L800DA7AC:
      lw         $31, 0x48($29)
      lw         $23, 0x44($29)
      lw         $22, 0x40($29)
      lw         $21, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_800DA6A0

.globl func_800DA7D8
.ent func_800DA7D8
func_800DA7D8:
      bnez       $2, .L800DA7E8
       sw        $16, 0x10($29)
      addiu      $2, $0, 0x1
      sb         $2, 0x7000($3)
  .L800DA7E8:
      addiu      $4, $0, 0x3C
      jal        func_80053004
       addiu     $5, $0, 0x2
      addu       $16, $2, $0
      beqz       $16, .L800DA8C8
       addiu     $2, $0, -0x5
.end func_800DA7D8

.globl func_800DA800
.ent func_800DA800
func_800DA800:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      addiu      $4, $0, 0x44
      addiu      $5, $0, 0x2
      sw         $31, 0x18($29)
      jal        func_80052504
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L800DA928
       addiu     $2, $0, -0x5
      addiu      $4, $0, 0x14
      jal        func_80052504
       addiu     $5, $0, 0x2
      addu       $3, $2, $0
      beqz       $3, .L800DA91C
       sw        $3, 0x34($16)
      lw         $2, 0x90($17)
      sw         $2, 0xC($3)
      lw         $3, 0x34($16)
      lw         $2, 0x8C($17)
      jal        func_8005133C
       sw        $2, 0x10($3)
      lw         $3, 0x34($16)
      sw         $2, 0x0($3)
      lw         $2, 0xC($17)
      sw         $2, 0x0($16)
      lw         $2, 0x10($17)
      sw         $2, 0x4($16)
      lw         $2, 0x18($17)
      sw         $2, 0x3C($16)
      lw         $2, 0x24($17)
      sw         $2, 0x8($16)
      lw         $2, 0x28($17)
      sw         $2, 0xC($16)
      lw         $2, 0x2C($17)
      sw         $2, 0x10($16)
      lw         $2, 0x1C($17)
      sw         $2, 0x14($16)
      lw         $2, 0x20($17)
      jal        func_800DB6D0
       sw        $2, 0x18($16)
      sw         $2, 0x1C($16)
      lw         $2, 0xB0($17)
      sw         $2, 0x24($16)
      lw         $2, 0xB4($17)
      addiu      $4, $0, 0x4
      sw         $2, 0x28($16)
      lw         $2, 0xB8($17)
      addiu      $5, $0, 0x2
  .L800DA8C8:
      sw         $2, 0x2C($16)
      lw         $3, 0xBC($17)
      addiu      $2, $17, 0xC1
      sw         $2, 0x40($16)
      jal        func_800524E8
       sw        $3, 0x30($16)
      beqz       $2, .L800DA910
       nop
      sw         $16, 0x0($2)
      lui        $4, %hi(func_800DA93C)
      addiu      $4, $4, %lo(func_800DA93C)
      jal        func_800513C8
       addu      $5, $2, $0
      addu       $3, $2, $0
      bnez       $3, .L800DA928
       addiu     $2, $0, 0x1
      j          .L800DA928
       addiu     $2, $0, -0x1
  .L800DA910:
      lw         $4, 0x34($16)
      jal        func_80052540
       nop
  .L800DA91C:
      jal        func_80052540
       addu      $4, $16, $0
      addiu      $2, $0, -0x5
  .L800DA928:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DA800

.globl func_800DA93C
.ent func_800DA93C
func_800DA93C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x0($5)
      addiu      $3, $4, 0x1
      lw         $4, 0x0($2)
      sltiu      $2, $3, 0x8
      lw         $5, 0x34($4)
      beqz       $2, .L800DA9E0
       lui       $2, %hi(jtbl_800FCE40)
      addiu      $2, $2, %lo(jtbl_800FCE40)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800DA978
.L800DA978:
      addiu      $2, $0, 0x4
      sw         $2, 0x8($5)
  .globl .L800DA980
.L800DA980:
      jal        func_800DA9F0
       nop
      j          .L800DA9E4
       nop
  .globl .L800DA990
.L800DA990:
      jal        func_800DAB5C
       nop
      j          .L800DA9E4
       nop
  .globl .L800DA9A0
.L800DA9A0:
      jal        func_800DAC10
       nop
      j          .L800DA9E4
       nop
  .globl .L800DA9B0
.L800DA9B0:
      jal        func_800DACDC
       nop
      j          .L800DA9E4
       nop
  .globl .L800DA9C0
.L800DA9C0:
      jal        func_800DADA0
       nop
      j          .L800DA9E4
       nop
  .globl .L800DA9D0
.L800DA9D0:
      jal        func_800DAE4C
       nop
      j          .L800DA9E4
       nop
  .L800DA9E0:
      addiu      $2, $0, -0x1
  .L800DA9E4:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DA93C

.globl func_800DA9F0
.ent func_800DA9F0
func_800DA9F0:
      addiu      $29, $29, -0x70
      sw         $17, 0x5C($29)
      addu       $17, $4, $0
      sw         $19, 0x64($29)
      addu       $19, $5, $0
      sw         $20, 0x68($29)
      addiu      $20, $0, 0x4
      sw         $31, 0x6C($29)
      sw         $18, 0x60($29)
      sw         $16, 0x58($29)
      sw         $20, 0x8($19)
      lw         $7, 0x24($17)
      beqz       $7, .L800DAB38
       addiu     $16, $0, 0x1
      lw         $7, 0x0($7)
      lw         $3, 0x18($17)
      addiu      $2, $17, 0x20
      sw         $2, 0x18($29)
      addiu      $2, $17, 0x38
      sw         $16, 0x14($29)
      sw         $2, 0x1C($29)
      sw         $3, 0x10($29)
      lw         $4, 0x1C($17)
      lw         $5, 0x34($17)
      lw         $6, 0x4($17)
      lw         $2, 0x0($7)
      lw         $7, 0x0($17)
      jalr       $2
       nop
      addu       $18, $2, $0
      bne        $18, $16, .L800DAA9C
       addiu     $2, $0, 0x2
      lw         $3, 0x38($17)
      bne        $3, $2, .L800DAA94
       nop
      jal        func_8005133C
       nop
      jal        func_800513F4
       addu      $4, $2, $0
      j          .L800DAB3C
       addiu     $2, $0, 0x5
  .L800DAA94:
      bnez       $3, .L800DAAB0
       nop
  .L800DAA9C:
      lw         $2, 0x24($17)
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x1
      j          .L800DAB3C
       sw        $3, 0x24($17)
  .L800DAAB0:
      bne        $3, $20, .L800DAB3C
       addiu     $2, $0, 0x2
      addiu      $4, $29, 0x20
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x38
      lw         $2, 0x0($17)
      sw         $2, 0x20($29)
      lw         $2, 0x4($17)
      sw         $2, 0x24($29)
      lw         $2, 0x14($17)
      sw         $2, 0x28($29)
      lw         $2, 0x8($17)
      sw         $2, 0x3C($29)
      lw         $2, 0xC($17)
      addiu      $5, $29, 0x20
      sw         $2, 0x40($29)
      lw         $2, 0x10($17)
      addiu      $3, $0, -0x9
      sw         $2, 0x44($29)
      lw         $4, 0x10($19)
      lw         $6, 0x3C($17)
      lw         $2, 0xC($19)
      and        $6, $6, $3
      lw         $2, 0x1C($2)
      jalr       $2
       ori       $6, $6, 0x10
      addu       $3, $2, $0
      bnel       $3, $18, .L800DAB3C
       addiu     $2, $0, 0x6
      lw         $2, 0x40($17)
      sb         $3, 0x0($2)
      j          .L800DAB3C
       addiu     $2, $0, 0x6
  .L800DAB38:
      addiu      $2, $0, 0x2
  .L800DAB3C:
      lw         $31, 0x6C($29)
      lw         $20, 0x68($29)
      lw         $19, 0x64($29)
      lw         $18, 0x60($29)
      lw         $17, 0x5C($29)
      lw         $16, 0x58($29)
      jr         $31
       addiu     $29, $29, 0x70
.end func_800DA9F0

.globl func_800DAB5C
.ent func_800DAB5C
func_800DAB5C:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $31, 0x28($29)
      sw         $16, 0x20($29)
      lw         $5, 0x28($17)
      bnez       $5, .L800DAB84
       addiu     $16, $0, 0x1
      j          .L800DABFC
       addiu     $2, $0, 0x3
  .L800DAB84:
      lw         $5, 0x0($5)
      lw         $3, 0x18($17)
      addiu      $2, $17, 0x20
      sw         $2, 0x18($29)
      addiu      $2, $17, 0x38
      sw         $16, 0x14($29)
      sw         $2, 0x1C($29)
      sw         $3, 0x10($29)
      lw         $4, 0x1C($17)
      lw         $2, 0x0($5)
      lw         $5, 0x34($17)
      lw         $6, 0x4($17)
      lw         $7, 0x0($17)
      jalr       $2
       nop
      bne        $2, $16, .L800DABD4
       addiu     $2, $0, 0x2
      lw         $3, 0x38($17)
      beq        $3, $2, .L800DABE8
       nop
  .L800DABD4:
      lw         $2, 0x28($17)
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x2
      j          .L800DABFC
       sw        $3, 0x28($17)
  .L800DABE8:
      jal        func_8005133C
       nop
      jal        func_800513F4
       addu      $4, $2, $0
      addiu      $2, $0, 0x5
  .L800DABFC:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800DAB5C

.globl func_800DAC10
.ent func_800DAC10
func_800DAC10:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $18, 0x28($29)
      addiu      $18, $0, 0x2
      sw         $31, 0x2C($29)
      sw         $16, 0x20($29)
      sw         $18, 0x8($5)
      lw         $5, 0x2C($17)
      beqz       $5, .L800DACAC
       addiu     $16, $0, 0x1
      lw         $5, 0x0($5)
      lw         $3, 0x18($17)
      addiu      $2, $17, 0x20
      sw         $2, 0x18($29)
      addiu      $2, $17, 0x38
      sw         $16, 0x14($29)
      sw         $2, 0x1C($29)
      sw         $3, 0x10($29)
      lw         $4, 0x1C($17)
      lw         $2, 0x0($5)
      lw         $5, 0x34($17)
      lw         $6, 0x4($17)
      lw         $7, 0x0($17)
      jalr       $2
       nop
      bne        $2, $16, .L800DACB4
       nop
      lw         $2, 0x38($17)
      bne        $2, $18, .L800DACA4
       nop
      jal        func_8005133C
       nop
      jal        func_800513F4
       addu      $4, $2, $0
      j          .L800DACC4
       addiu     $2, $0, 0x5
  .L800DACA4:
      beqz       $2, .L800DACB4
       nop
  .L800DACAC:
      j          .L800DACC4
       addiu     $2, $0, 0x4
  .L800DACB4:
      lw         $2, 0x2C($17)
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x3
      sw         $3, 0x2C($17)
  .L800DACC4:
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800DAC10

.globl func_800DACDC
.ent func_800DACDC
func_800DACDC:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      addiu      $2, $0, 0x3
      sw         $31, 0x28($29)
      sw         $16, 0x20($29)
      sw         $2, 0x8($5)
      lw         $5, 0x30($17)
      beqz       $5, .L800DAD74
       addiu     $16, $0, 0x1
      lw         $5, 0x0($5)
      lw         $3, 0x18($17)
      addiu      $2, $17, 0x20
      sw         $2, 0x18($29)
      addiu      $2, $17, 0x38
      sw         $16, 0x14($29)
      sw         $2, 0x1C($29)
      sw         $3, 0x10($29)
      lw         $4, 0x1C($17)
      lw         $2, 0x0($5)
      lw         $5, 0x34($17)
      lw         $6, 0x4($17)
      lw         $7, 0x0($17)
      jalr       $2
       nop
      bne        $2, $16, .L800DAD7C
       addiu     $2, $0, 0x2
      lw         $3, 0x38($17)
      bne        $3, $2, .L800DAD6C
       nop
      jal        func_8005133C
       nop
      jal        func_800513F4
       addu      $4, $2, $0
      j          .L800DAD8C
       addiu     $2, $0, 0x5
  .L800DAD6C:
      beqz       $3, .L800DAD7C
       nop
  .L800DAD74:
      j          .L800DAD8C
       addiu     $2, $0, 0x6
  .L800DAD7C:
      lw         $2, 0x30($17)
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x4
      sw         $3, 0x30($17)
  .L800DAD8C:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800DACDC

.globl func_800DADA0
.ent func_800DADA0
func_800DADA0:
      lw         $3, 0x8($5)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800DADD4
       addiu     $2, $0, 0x2
      lw         $3, 0x4($5)
      addiu      $2, $0, 0x3
      beq        $3, $2, .L800DAE1C
       nop
      lw         $2, 0x28($4)
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x2
      jr         $31
       sw        $3, 0x28($4)
  .L800DADD4:
      bne        $3, $2, .L800DAE10
       addiu     $2, $0, 0x3
      lw         $3, 0x4($5)
      beq        $3, $2, .L800DAE1C
       nop
      lw         $2, 0x38($4)
      bnez       $2, .L800DAE08
       nop
      lw         $2, 0x2C($4)
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x3
      jr         $31
       sw        $3, 0x2C($4)
  .L800DAE08:
      jr         $31
       addiu     $2, $0, 0x4
  .L800DAE10:
      lw         $3, 0x4($5)
      bne        $3, $2, .L800DAE24
       nop
  .L800DAE1C:
      jr         $31
       addiu     $2, $0, -0x1
  .L800DAE24:
      lw         $2, 0x38($4)
      bnez       $2, .L800DAE44
       addiu     $2, $0, 0x6
      lw         $2, 0x30($4)
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x4
      jr         $31
       sw        $3, 0x30($4)
  .L800DAE44:
      jr         $31
       nop
.end func_800DADA0

.globl func_800DAE4C
.ent func_800DAE4C
func_800DAE4C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      jal        func_80052540
       addu      $4, $5, $0
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x7FFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DAE4C

.globl func_800DAE80
.ent func_800DAE80
func_800DAE80:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $31, 0x20($29)
      sw         $17, 0x1C($29)
      lw         $2, 0x38($16)
      lw         $3, 0x4($2)
      addiu      $2, $0, -0x1
      bne        $3, $2, .L800DAF18
       lui       $2, (0x51EB851F >> 16)
      lw         $4, 0x14($16)
      jal        func_80017780
       nop
      lw         $3, 0x14($16)
      addu       $2, $2, $3
      lbu        $3, -0x1($2)
      addiu      $2, $0, 0x2F
      bne        $3, $2, .L800DAF08
       addu      $5, $0, $0
      lui        $2, %hi(D_800EC658)
      addiu      $17, $2, %lo(D_800EC658)
      lw         $2, 0x38($16)
      addu       $6, $17, $0
      lw         $4, 0xC($2)
      jal        func_8005446C
       addiu     $7, $29, 0x10
      bnez       $2, .L800DAF08
       addu      $5, $17, $0
      lui        $6, %hi(D_800EC69C)
      addiu      $6, $6, %lo(D_800EC69C)
      lw         $4, 0x38($16)
      addiu      $7, $0, -0x1
      jal        func_80054530
       addiu     $4, $4, 0xC
  .L800DAF08:
      jal        func_800DB10C
       addu      $4, $16, $0
      j          .L800DAFB4
       nop
  .L800DAF18:
      ori        $2, $2, (0x51EB851F & 0xFFFF)
      mult       $3, $2
      sra        $3, $3, 31
      mfhi       $8
      sra        $2, $8, 5
      subu       $2, $2, $3
      addiu      $3, $2, -0x1
      sltiu      $2, $3, 0x5
      beqz       $2, .L800DAFA8
       lui       $2, %hi(jtbl_800FCE80)
      addiu      $2, $2, %lo(jtbl_800FCE80)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800DAF58
.L800DAF58:
      jal        func_800DAFC8
       addu      $4, $16, $0
      j          .L800DAFB4
       nop
  .globl .L800DAF68
.L800DAF68:
      jal        func_800DAFE4
       addu      $4, $16, $0
      j          .L800DAFB4
       nop
  .globl .L800DAF78
.L800DAF78:
      jal        func_800DB000
       addu      $4, $16, $0
      j          .L800DAFB4
       nop
  .globl .L800DAF88
.L800DAF88:
      jal        func_800DB08C
       addu      $4, $16, $0
      j          .L800DAFB4
       nop
  .globl .L800DAF98
.L800DAF98:
      jal        func_800DB0CC
       addu      $4, $16, $0
      j          .L800DAFB4
       nop
  .L800DAFA8:
      addiu      $2, $0, -0x1A
      sw         $2, 0x84($16)
      addiu      $2, $0, -0x1
  .L800DAFB4:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800DAE80

.globl func_800DAFC8
.ent func_800DAFC8
func_800DAFC8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800DB10C
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DAFC8

.globl func_800DAFE4
.ent func_800DAFE4
func_800DAFE4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800DB10C
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DAFE4

.globl func_800DB000
.ent func_800DB000
func_800DB000:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x38($4)
      lw         $3, 0x4($2)
      slti       $2, $3, 0x12C
      bnez       $2, .L800DB078
       negu      $2, $3
      slti       $2, $3, 0x12F
      bnez       $2, .L800DB038
       addiu     $2, $0, 0x130
      beq        $3, $2, .L800DB068
       negu      $2, $3
      j          .L800DB07C
       sw        $2, 0x84($4)
  .L800DB038:
      lw         $2, 0x18($4)
      andi       $2, $2, 0x2
      beqz       $2, .L800DB058
       nop
      jal        func_800DB24C
       nop
      j          .L800DB080
       nop
  .L800DB058:
      jal        func_800DB10C
       nop
      j          .L800DB080
       nop
  .L800DB068:
      jal        func_800DB57C
       nop
      j          .L800DB080
       nop
  .L800DB078:
      sw         $2, 0x84($4)
  .L800DB07C:
      addiu      $2, $0, -0x1
  .L800DB080:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DB000

.globl func_800DB08C
.ent func_800DB08C
func_800DB08C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x18($4)
      lw         $3, 0x38($4)
      andi       $2, $2, 0x4
      lw         $3, 0x4($3)
      bnez       $2, .L800DB0B8
       negu      $2, $3
      sw         $2, 0x84($4)
      j          .L800DB0C0
       addiu     $2, $0, -0x1
  .L800DB0B8:
      jal        func_800DB10C
       nop
  .L800DB0C0:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DB08C

.globl func_800DB0CC
.ent func_800DB0CC
func_800DB0CC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x18($4)
      lw         $3, 0x38($4)
      andi       $2, $2, 0x4
      lw         $3, 0x4($3)
      bnez       $2, .L800DB0F8
       negu      $2, $3
      sw         $2, 0x84($4)
      j          .L800DB100
       addiu     $2, $0, -0x1
  .L800DB0F8:
      jal        func_800DB10C
       nop
  .L800DB100:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DB0CC

.globl func_800DB10C
.ent func_800DB10C
func_800DB10C:
      addiu      $29, $29, -0x40
      sw         $16, 0x28($29)
      addu       $16, $4, $0
      sw         $31, 0x38($29)
      sw         $19, 0x34($29)
      sw         $18, 0x30($29)
      sw         $17, 0x2C($29)
      lw         $3, 0x90($16)
      lw         $17, 0x38($16)
      addiu      $2, $29, 0x20
      sw         $2, 0x10($29)
      addiu      $2, $16, 0xA4
      addiu      $18, $16, 0xA0
      sw         $2, 0x14($29)
      sw         $18, 0x18($29)
      lw         $4, 0x8C($16)
      lw         $7, 0x3C($16)
      lw         $5, 0xC($17)
      lw         $2, 0x0($3)
      jalr       $2
       addu      $6, $5, $0
      addiu      $19, $0, 0x1
      bne        $2, $19, .L800DB178
       addiu     $2, $0, -0x1
      lw         $3, 0xA4($16)
      bnez       $3, .L800DB188
       nop
  .L800DB178:
      addiu      $3, $0, -0x17
      sw         $0, 0xA0($16)
      j          .L800DB230
       sw        $3, 0x84($16)
  .L800DB188:
      lw         $2, 0xA0($16)
      bnez       $2, .L800DB1C4
       nop
      lw         $4, 0x8C($16)
      lw         $5, 0x20($29)
      lw         $2, 0x0($3)
      jalr       $2
       addu      $6, $18, $0
      addu       $3, $2, $0
      beq        $3, $19, .L800DB1C4
       addiu     $2, $0, -0x5
      beq        $3, $2, .L800DB21C
       sw        $0, 0xA0($16)
      j          .L800DB228
       addiu     $2, $0, -0x18
  .L800DB1C4:
      jal        func_800D871C
       nop
      lw         $3, 0xC($17)
      lw         $8, 0xA4($16)
      sw         $3, 0x10($29)
      lw         $3, 0x18($16)
      sw         $2, 0x18($29)
      sw         $16, 0x1C($29)
      sw         $3, 0x14($29)
      lw         $4, 0xA0($16)
      lw         $5, 0x4($17)
      lw         $6, 0x8($17)
      lw         $7, 0xC($17)
      lw         $2, 0x4($8)
      jalr       $2
       nop
      addu       $3, $2, $0
      bgtz       $3, .L800DB230
       addiu     $2, $0, 0xA
      addiu      $2, $0, -0x5
      bne        $3, $2, .L800DB224
       sw        $0, 0xA0($16)
  .L800DB21C:
      j          .L800DB22C
       sw        $3, 0x84($16)
  .L800DB224:
      addiu      $2, $0, -0x18
  .L800DB228:
      sw         $2, 0x84($16)
  .L800DB22C:
      addiu      $2, $0, -0x1
  .L800DB230:
      lw         $31, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800DB10C

.globl func_800DB24C
.ent func_800DB24C
func_800DB24C:
      addiu      $29, $29, -0x60
      sw         $16, 0x50($29)
      addu       $16, $4, $0
      addu       $5, $0, $0
      lui        $6, %hi(D_800EC64C)
      addiu      $6, $6, %lo(D_800EC64C)
      sw         $31, 0x5C($29)
      sw         $18, 0x58($29)
      sw         $17, 0x54($29)
      lw         $2, 0x38($16)
      lw         $4, 0xC($2)
      lw         $18, 0x90($16)
      jal        func_8005446C
       addiu     $7, $29, 0x48
      bnez       $2, .L800DB29C
       sw        $2, 0x4C($29)
      jal        func_800DB10C
       addu      $4, $16, $0
      j          .L800DB3C0
       nop
  .L800DB29C:
      lw         $4, 0xC($16)
      lw         $5, 0x14($16)
      jal        func_800DB3D8
       addiu     $6, $29, 0x4C
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      beq        $3, $2, .L800DB2C4
       nop
      j          .L800DB3BC
       sw        $3, 0x84($16)
  .L800DB2C4:
      lw         $4, 0x4C($29)
      lw         $5, 0xC($16)
      jal        func_800175C0
       nop
      bnez       $2, .L800DB2F8
       addiu     $4, $29, 0x10
      lw         $4, 0x4C($29)
      jal        func_80052540
       nop
      addiu      $2, $0, -0x1
      addu       $3, $2, $0
      j          .L800DB3C0
       sw        $3, 0x84($16)
  .L800DB2F8:
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x38
      lw         $2, 0x4C($29)
      sw         $2, 0x10($29)
      lw         $2, 0x1C($16)
      sw         $2, 0x18($29)
      lw         $2, 0x38($16)
      lw         $2, 0xC($2)
      lui        $5, %hi(D_800EC63C)
      sw         $2, 0x38($29)
      lw         $4, 0x10($16)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800EC63C)
      bnez       $2, .L800DB358
       lui       $2, %hi(D_80137BF4)
      lw         $4, %lo(D_80137BF4)($2)
      lui        $5, %hi(D_800FCDA4)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FCDA4)
      bnez       $2, .L800DB358
       lui       $2, %hi(D_800EC638)
      j          .L800DB35C
       addiu     $2, $2, %lo(D_800EC638)
  .L800DB358:
      lw         $2, 0x10($16)
  .L800DB35C:
      sw         $2, 0x14($29)
      lw         $4, 0x18($29)
      addu       $5, $0, $0
      lui        $2, %hi(D_800FCF04)
      addiu      $17, $2, %lo(D_800FCF04)
      addu       $6, $17, $0
      jal        func_8005446C
       addiu     $7, $29, 0x48
      beqz       $2, .L800DB390
       addiu     $4, $29, 0x18
      lw         $6, 0x48($29)
      jal        func_800545BC
       addu      $5, $17, $0
  .L800DB390:
      addiu      $5, $29, 0x10
      addiu      $3, $0, -0x9
      lw         $4, 0x8C($16)
      lw         $6, 0x18($16)
      lw         $2, 0x1C($18)
      jalr       $2
       and       $6, $6, $3
      lw         $4, 0x4C($29)
      addiu      $2, $0, -0x7
      jal        func_80052540
       sw        $2, 0x84($16)
  .L800DB3BC:
      addiu      $2, $0, -0x1
  .L800DB3C0:
      lw         $31, 0x5C($29)
      lw         $18, 0x58($29)
      lw         $17, 0x54($29)
      lw         $16, 0x50($29)
      jr         $31
       addiu     $29, $29, 0x60
.end func_800DB24C

.globl func_800DB3D8
.ent func_800DB3D8
func_800DB3D8:
      addiu      $29, $29, -0x30
      sw         $21, 0x24($29)
      addu       $21, $4, $0
      sw         $22, 0x28($29)
      addu       $22, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $18, 0x18($29)
      addu       $18, $0, $0
      sw         $19, 0x1C($29)
      addu       $19, $18, $0
      sw         $20, 0x20($29)
      addu       $20, $18, $0
      lui        $5, %hi(D_800FCF4C)
      sw         $31, 0x2C($29)
      sw         $16, 0x10($29)
      lw         $4, 0x0($17)
      jal        func_80017880
       addiu     $5, $5, %lo(D_800FCF4C)
      beqz       $2, .L800DB434
       nop
      j          .L800DB44C
       addiu     $18, $0, 0x1
  .L800DB434:
      lw         $2, 0x0($17)
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x2F
      bnel       $3, $2, .L800DB44C
       addiu     $20, $0, 0x1
      addiu      $19, $0, 0x1
  .L800DB44C:
      jal        func_80017780
       addu      $4, $21, $0
      lw         $4, 0x0($17)
      jal        func_80017780
       addu      $16, $2, $0
      addu       $16, $16, $2
      addiu      $4, $16, 0x2
      jal        func_80052504
       addu      $5, $0, $0
      addu       $16, $2, $0
      bnez       $16, .L800DB488
       addu      $4, $16, $0
      sw         $0, 0x0($17)
      j          .L800DB554
       addiu     $2, $0, -0x5
  .L800DB488:
      jal        func_80017640
       addu      $5, $21, $0
      beqz       $18, .L800DB4AC
       nop
      lw         $5, 0x0($17)
      jal        func_80017640
       addu      $4, $16, $0
      j          .L800DB53C
       addiu     $2, $0, 0x1
  .L800DB4AC:
      beqz       $19, .L800DB4FC
       addu      $4, $22, $0
      lui        $5, %hi(D_800EC614)
      jal        func_800175C0
       addiu     $5, $5, %lo(D_800EC614)
      bnez       $2, .L800DB4D4
       addu      $4, $16, $0
      lw         $5, 0x0($17)
      j          .L800DB4E8
       addiu     $5, $5, 0x1
  .L800DB4D4:
      jal        func_80017880
       addu      $5, $22, $0
      sb         $0, 0x0($2)
      lw         $5, 0x0($17)
      addu       $4, $16, $0
  .L800DB4E8:
      jal        func_80017500
       nop
      sw         $16, 0x0($17)
      j          .L800DB554
       addiu     $2, $0, 0x1
  .L800DB4FC:
      beqz       $20, .L800DB544
       addu      $4, $16, $0
      jal        func_800563C0
       addiu     $5, $0, 0x3F
      bnel       $2, $0, .L800DB514
       sb        $0, 0x0($2)
  .L800DB514:
      addu       $4, $16, $0
      jal        func_800563C0
       addiu     $5, $0, 0x2F
      beqz       $2, .L800DB544
       nop
      sb         $0, 0x1($2)
      lw         $5, 0x0($17)
      jal        func_80017500
       addu      $4, $16, $0
      addiu      $2, $0, 0x1
  .L800DB53C:
      j          .L800DB554
       sw        $16, 0x0($17)
  .L800DB544:
      jal        func_80052540
       addu      $4, $16, $0
      sw         $0, 0x0($17)
      addiu      $2, $0, -0x1
  .L800DB554:
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
.end func_800DB3D8

.globl func_800DB57C
.ent func_800DB57C
func_800DB57C:
      addiu      $29, $29, -0x60
      sw         $16, 0x50($29)
      addu       $16, $4, $0
      addiu      $4, $29, 0x10
      addu       $5, $0, $0
      sw         $31, 0x5C($29)
      sw         $18, 0x58($29)
      sw         $17, 0x54($29)
      lw         $18, 0x90($16)
      jal        func_80016140
       addiu     $6, $0, 0x38
      lw         $2, 0xC($16)
      sw         $2, 0x10($29)
      lw         $2, 0x10($16)
      addu       $5, $0, $0
      sw         $2, 0x14($29)
      lui        $2, %hi(D_800FCF14)
      lw         $4, 0x1C($16)
      addiu      $17, $2, %lo(D_800FCF14)
      sw         $4, 0x18($29)
      lw         $2, 0x38($16)
      addiu      $7, $29, 0x48
      lw         $2, 0xC($2)
      addu       $6, $17, $0
      jal        func_8005446C
       sw        $2, 0x38($29)
      beqz       $2, .L800DB5F8
       addiu     $4, $29, 0x18
      lw         $6, 0x48($29)
      jal        func_800545BC
       addu      $5, $17, $0
  .L800DB5F8:
      addiu      $5, $29, 0x10
      addiu      $2, $0, -0x9
      lw         $6, 0x18($16)
      lw         $4, 0x8C($16)
      and        $6, $6, $2
      lw         $2, 0x1C($18)
      jalr       $2
       ori       $6, $6, 0x10
      addiu      $3, $0, -0x7
      sw         $3, 0x84($16)
      lw         $31, 0x5C($29)
      lw         $18, 0x58($29)
      lw         $17, 0x54($29)
      lw         $16, 0x50($29)
      addiu      $2, $0, -0x1
      jr         $31
       addiu     $29, $29, 0x60
.end func_800DB57C

.globl func_800DB63C
.ent func_800DB63C
func_800DB63C:
      lw         $31, 0x6C($29)
      beqz       $4, .L800DB670
       addiu     $2, $0, -0x4
      beqz       $5, .L800DB658
       nop
      lw         $2, 0xC($4)
      sw         $2, 0x0($5)
  .L800DB658:
      beqz       $6, .L800DB668
       nop
      lw         $2, 0x10($4)
      sw         $2, 0x0($6)
  .L800DB668:
      jr         $31
       addiu     $2, $0, 0x1
  .L800DB670:
      jr         $31
       nop
.end func_800DB63C

.globl func_800DB678
.ent func_800DB678
func_800DB678:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $4, 0x0($16)
      jal        func_80051414
       addu      $17, $5, $0
      sw         $17, 0x4($16)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DB678

.globl func_800DB6B4
.ent func_800DB6B4
func_800DB6B4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800DB678
       addu      $5, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DB6B4

.globl func_800DB6D0
.ent func_800DB6D0
func_800DB6D0:
      lui        $2, %hi(D_80125AC0)
      jr         $31
       addiu     $2, $2, %lo(D_80125AC0)
.end func_800DB6D0

.globl func_800DB6DC
.ent func_800DB6DC
func_800DB6DC:
      addiu      $2, $0, 0x2
      j          .L800DB6FC
       sw        $3, 0x28($17)
      jal        func_80051E3C
       nop
      jal        func_80051EF4
       addu      $4, $2, $0
      addiu      $2, $0, 0x5
  .L800DB6FC:
      lw         $31, 0x28($29)
.end func_800DB6DC

.globl func_800DB700
.ent func_800DB700
func_800DB700:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addiu      $18, $17, 0xC
      sw         $31, 0x24($29)
      sw         $16, 0x18($29)
      lw         $2, 0x4($17)
      addu       $16, $6, $0
      sw         $18, 0x14($29)
      sw         $2, 0x10($29)
      lw         $4, 0x0($17)
      lw         $7, 0x8($17)
      jal        func_800DC440
       addiu     $6, $0, -0x1
      andi       $16, $16, 0xFF
      beqz       $16, .L800DB768
       lui       $5, %hi(D_800FE410)
      lw         $2, 0x4($17)
      addiu      $5, $5, %lo(D_800FE410)
      sw         $18, 0x14($29)
      sw         $2, 0x10($29)
      lw         $4, 0x0($17)
      lw         $7, 0x8($17)
      jal        func_800DC440
       addiu     $6, $0, -0x1
  .L800DB768:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x28
.end func_800DB700

.globl func_800DB784
.ent func_800DB784
func_800DB784:
      addiu      $29, $29, -0x90
      sw         $18, 0x88($29)
      addiu      $18, $0, 0xF
      addiu      $2, $4, 0x8
      sw         $17, 0x84($29)
      addu       $17, $0, $0
      sw         $16, 0x80($29)
      addiu      $16, $29, 0x20
      lui        $3, %hi(D_800FE44C)
      sw         $31, 0x8C($29)
      sw         $2, 0x10($29)
      lw         $2, 0x1C($4)
      addiu      $3, $3, %lo(D_800FE44C)
      sw         $2, 0x14($29)
      lui        $2, %hi(D_800FE414)
      lw         $5, 0x18($4)
      addiu      $2, $2, %lo(D_800FE414)
      sw         $2, 0x20($29)
      lui        $2, %hi(D_800FD400)
      addiu      $2, $2, %lo(D_800FD400)
      sw         $2, 0x24($29)
      lui        $2, %hi(D_800FE41C)
      addiu      $2, $2, %lo(D_800FE41C)
      sw         $2, 0x28($29)
      lui        $2, %hi(D_800FE428)
      addiu      $2, $2, %lo(D_800FE428)
      lui        $4, %hi(D_800FE464)
      addiu      $4, $4, %lo(D_800FE464)
      sw         $2, 0x2C($29)
      lui        $2, %hi(D_800FE454)
      addiu      $2, $2, %lo(D_800FE454)
      sw         $2, 0x38($29)
      lui        $2, %hi(D_800FE45C)
      addiu      $2, $2, %lo(D_800FE45C)
      sw         $2, 0x40($29)
      lui        $2, %hi(D_800FE47C)
      addiu      $2, $2, %lo(D_800FE47C)
      sw         $2, 0x50($29)
      lui        $2, %hi(D_800FE4B4)
      addiu      $2, $2, %lo(D_800FE4B4)
      sw         $2, 0x54($29)
      lui        $2, %hi(D_800FE4D8)
      addiu      $2, $2, %lo(D_800FE4D8)
      sw         $2, 0x58($29)
      lui        $2, %hi(D_80137734)
      sw         $0, 0x1C($29)
      sw         $4, 0x30($29)
      sw         $3, 0x34($29)
      sw         $6, 0x3C($29)
      sw         $4, 0x44($29)
      sw         $7, 0x48($29)
      sw         $3, 0x4C($29)
      sw         $0, %lo(D_80137734)($2)
      sw         $5, 0x18($29)
  .L800DB85C:
      lw         $5, 0x0($16)
      addiu      $16, $16, 0x4
      addiu      $17, $17, 0x1
      addiu      $4, $29, 0x10
      jal        func_800DB700
       addiu     $6, $0, 0x1
      slt        $2, $17, $18
      bnez       $2, .L800DB85C
       addiu     $2, $0, 0x1
      lw         $31, 0x8C($29)
      lw         $18, 0x88($29)
      lw         $17, 0x84($29)
      lw         $16, 0x80($29)
      jr         $31
       addiu     $29, $29, 0x90
.end func_800DB784

.globl func_800DB898
.ent func_800DB898
func_800DB898:
      addiu      $29, $29, -0x40
      sw         $16, 0x28($29)
      addu       $16, $4, $0
      sw         $19, 0x34($29)
      addu       $19, $5, $0
      sw         $17, 0x2C($29)
      lw         $17, 0x50($29)
      sw         $31, 0x38($29)
      sw         $18, 0x30($29)
      jal        func_800DB784
       sw        $17, 0x10($29)
      andi       $2, $2, 0xFF
      beqz       $2, .L800DB970
       addiu     $2, $16, 0x8
      sw         $2, 0x18($29)
      lw         $2, 0x1C($16)
      sw         $2, 0x1C($29)
      lw         $2, 0x18($16)
      sw         $0, 0x24($29)
      beqz       $17, .L800DB968
       sw        $2, 0x20($29)
      lui        $2, %hi(D_800FD420)
      addiu      $18, $2, %lo(D_800FD420)
      jal        func_80017780
       addu      $4, $18, $0
      addiu      $4, $29, 0x18
      lui        $5, %hi(D_800FE464)
      addiu      $5, $5, %lo(D_800FE464)
      addiu      $6, $0, 0x1
      jal        func_800DB700
       addiu     $17, $2, 0x10
      addu       $4, $17, $0
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $16, $2, $0
      beqz       $16, .L800DB954
       addu      $4, $16, $0
      addu       $5, $17, $0
      addu       $6, $18, $0
      jal        func_800520A4
       addu      $7, $19, $0
      addiu      $4, $29, 0x18
      addu       $5, $16, $0
      jal        func_800DB700
       addiu     $6, $0, 0x1
      jal        func_80052540
       addu      $4, $16, $0
  .L800DB954:
      addiu      $4, $29, 0x18
      lui        $5, %hi(D_800FE44C)
      addiu      $5, $5, %lo(D_800FE44C)
      jal        func_800DB700
       addiu     $6, $0, 0x1
  .L800DB968:
      j          .L800DB974
       addiu     $2, $0, 0x1
  .L800DB970:
      addu       $2, $0, $0
  .L800DB974:
      lw         $31, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800DB898

.globl func_800DB990
.ent func_800DB990
func_800DB990:
      addiu      $29, $29, -0x40
      sw         $16, 0x28($29)
      addu       $16, $4, $0
      sw         $18, 0x30($29)
      lw         $18, 0x50($29)
      sw         $31, 0x3C($29)
      sw         $20, 0x38($29)
      sw         $19, 0x34($29)
      sw         $17, 0x2C($29)
      jal        func_800DB784
       sw        $18, 0x10($29)
      andi       $2, $2, 0xFF
      beqz       $2, .L800DBAD4
       addiu     $2, $16, 0x8
      sw         $2, 0x18($29)
      lw         $2, 0x1C($16)
      sw         $2, 0x1C($29)
      lw         $2, 0x18($16)
      sw         $0, 0x24($29)
      beqz       $18, .L800DBACC
       sw        $2, 0x20($29)
      lui        $2, %hi(D_800FE468)
      addiu      $19, $2, %lo(D_800FE468)
      addu       $4, $19, $0
      lui        $2, %hi(D_800FD408)
      jal        func_80017780
       addiu     $20, $2, %lo(D_800FD408)
      addu       $4, $18, $0
      jal        func_80017780
       addu      $16, $2, $0
      addiu      $4, $29, 0x18
      lui        $5, %hi(D_800FE464)
      addiu      $5, $5, %lo(D_800FE464)
      addiu      $6, $0, 0x1
      sllv       $2, $2, $6
      addu       $16, $16, $2
      jal        func_800DB700
       addu      $16, $16, $6
      addu       $4, $16, $0
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      beqz       $17, .L800DBAB8
       addu      $4, $17, $0
      sw         $18, 0x10($29)
      addu       $5, $16, $0
      addu       $6, $19, $0
      jal        func_800520A4
       addu      $7, $18, $0
      jal        func_80017780
       addu      $4, $20, $0
      addu       $4, $17, $0
      jal        func_80017780
       addu      $16, $2, $0
      addu       $16, $16, $2
      addiu      $18, $16, 0x1
      addu       $4, $18, $0
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $16, $2, $0
      beqz       $16, .L800DBAB0
       addu      $4, $16, $0
      addu       $5, $18, $0
      addu       $6, $20, $0
      jal        func_800520A4
       addu      $7, $17, $0
      addiu      $4, $29, 0x18
      addu       $5, $16, $0
      jal        func_800DB700
       addiu     $6, $0, 0x1
      jal        func_80052540
       addu      $4, $16, $0
  .L800DBAB0:
      jal        func_80052540
       addu      $4, $17, $0
  .L800DBAB8:
      addiu      $4, $29, 0x18
      lui        $5, %hi(D_800FE44C)
      addiu      $5, $5, %lo(D_800FE44C)
      jal        func_800DB700
       addiu     $6, $0, 0x1
  .L800DBACC:
      j          .L800DBAD8
       addiu     $2, $0, 0x1
  .L800DBAD4:
      addu       $2, $0, $0
  .L800DBAD8:
      lw         $31, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800DB990

.globl func_800DBAF8
.ent func_800DBAF8
func_800DBAF8:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      addiu      $4, $0, 0x34
      addu       $5, $17, $0
      sw         $31, 0x24($29)
      jal        func_80052504
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L800DBBA0
       addiu     $6, $16, 0xC
      addu       $4, $0, $0
      addu       $5, $4, $0
      sw         $0, 0x8($16)
      jal        func_80054380
       sw        $19, 0x4($16)
      slt        $2, $17, $18
      beqz       $2, .L800DBB8C
       nop
      addiu      $3, $0, 0x2001
      addu       $5, $20, $0
  .L800DBB64:
      lw         $2, 0x0($5)
      bne        $2, $3, .L800DBB80
       addiu     $17, $17, 0x1
      lw         $2, 0x4($5)
      sw         $2, 0x10($16)
      lw         $2, 0x8($5)
      sw         $2, 0x14($16)
  .L800DBB80:
      slt        $2, $17, $18
      bnez       $2, .L800DBB64
       addiu     $5, $5, 0xC
  .L800DBB8C:
      lw         $2, 0xC($16)
      bnez       $2, .L800DBBA4
       addu      $2, $16, $0
      jal        func_800DBBC4
       addu      $4, $16, $0
  .L800DBBA0:
      addu       $2, $0, $0
  .L800DBBA4:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800DBAF8

.globl func_800DBBC4
.ent func_800DBBC4
func_800DBBC4:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L800DBC10
       sw        $31, 0x14($29)
      lw         $4, 0x8($16)
      beqz       $4, .L800DBBF0
       nop
      jal        func_8004F810
       nop
      sw         $0, 0x8($16)
  .L800DBBF0:
      lw         $4, 0xC($16)
      beqz       $4, .L800DBC08
       nop
      jal        func_800546DC
       nop
      sw         $0, 0xC($16)
  .L800DBC08:
      jal        func_80052540
       addu      $4, $16, $0
  .L800DBC10:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DBBC4

.globl func_800DBC20
.ent func_800DBC20
func_800DBC20:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      bnez       $16, .L800DBC3C
       sw        $31, 0x14($29)
      j          .L800DBC60
       addiu     $2, $0, -0x4
  .L800DBC3C:
      lui        $2, %hi(D_80125B00)
      lw         $4, %lo(D_80125B00)($2)
      jal        func_8004F788
       nop
      beqz       $2, .L800DBC5C
       sw        $2, 0x8($16)
      j          .L800DBC68
       addu      $2, $0, $0
  .L800DBC5C:
      addiu      $2, $0, -0x5
  .L800DBC60:
      sw         $2, 0x2C($16)
      addiu      $2, $0, -0x1
  .L800DBC68:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DBC20

.globl func_800DBC78
.ent func_800DBC78
func_800DBC78:
      addiu      $29, $29, -0x38
      sw         $16, 0x28($29)
      addu       $16, $4, $0
      addiu      $4, $16, 0xC
      lui        $5, %hi(D_800EC658)
      addiu      $5, $5, %lo(D_800EC658)
      lui        $6, %hi(D_800EC69C)
      addiu      $6, $6, %lo(D_800EC69C)
      addiu      $7, $0, -0x1
      sw         $31, 0x34($29)
      sw         $18, 0x30($29)
      jal        func_80054530
       sw        $17, 0x2C($29)
      lw         $3, 0x10($16)
      addiu      $2, $29, 0x20
      sw         $2, 0x10($29)
      addiu      $2, $16, 0x18
      addiu      $17, $16, 0x1C
      sw         $2, 0x14($29)
      sw         $17, 0x18($29)
      lw         $4, 0x14($16)
      lw         $5, 0xC($16)
      lw         $7, 0x8($16)
      lw         $2, 0x0($3)
      jalr       $2
       addu      $6, $5, $0
      addu       $3, $2, $0
      addiu      $18, $0, 0x1
      bne        $3, $18, .L800DBD78
       addiu     $2, $0, -0x1
      lw         $2, 0x1C($16)
      bnez       $2, .L800DBD20
       nop
      lw         $4, 0x14($16)
      lw         $2, 0x18($16)
      lw         $5, 0x20($29)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $6, $17, $0
      addu       $3, $2, $0
      bne        $3, $18, .L800DBD78
       addiu     $2, $0, -0x1
  .L800DBD20:
      lw         $6, 0x18($16)
      lw         $2, 0xC($16)
      addu       $5, $0, $0
      sw         $2, 0x10($29)
      lui        $2, %hi(D_800FCF98)
      lw         $3, 0x4($16)
      addiu      $2, $2, %lo(D_800FCF98)
      sw         $2, 0x18($29)
      sw         $16, 0x1C($29)
      sw         $3, 0x14($29)
      lw         $4, 0x1C($16)
      lw         $7, 0xC($16)
      lw         $2, 0x4($6)
      jalr       $2
       addu      $6, $5, $0
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800DBD78
       addiu     $2, $0, -0x1
      sb         $3, 0x28($16)
      j          .L800DBD80
       addu      $2, $0, $0
  .L800DBD78:
      sw         $0, 0x1C($16)
      sw         $3, 0x2C($16)
  .L800DBD80:
      lw         $31, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800DBC78

.globl func_800DBD98
.ent func_800DBD98
func_800DBD98:
      addiu      $29, $29, -0x20
      addu       $9, $5, $0
      lui        $2, %hi(D_800FCFA0)
      lw         $3, %lo(D_800FCFA0)($2)
      addiu      $8, $2, %lo(D_800FCFA0)
      beqz       $3, .L800DBDE0
       sw        $31, 0x18($29)
      lw         $3, 0x20($4)
      lw         $2, 0x0($8)
  .L800DBDBC:
      beq        $2, $3, .L800DBDD4
       nop
      addiu      $8, $8, 0x18
      lw         $2, 0x0($8)
      bnez       $2, .L800DBDBC
       nop
  .L800DBDD4:
      bnez       $2, .L800DBDE0
       lui       $2, %hi(D_800FCFA0)
      addiu      $8, $2, %lo(D_800FCFA0)
  .L800DBDE0:
      lw         $5, 0x0($8)
      lw         $6, 0xC($8)
      lw         $7, 0x14($8)
      bnel       $5, $0, .L800DBDFC
       sw        $9, 0x10($29)
      lw         $5, 0x20($4)
      sw         $9, 0x10($29)
  .L800DBDFC:
      lw         $2, 0x4($8)
      jalr       $2
       nop
      lw         $31, 0x18($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DBD98

.globl func_800DBE18
.ent func_800DBE18
func_800DBE18:
      addiu      $29, $29, -0x30
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $31, 0x28($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      lw         $18, 0x18($19)
      lw         $17, 0x1C($19)
      beqz       $18, .L800DBEB0
       addiu     $2, $0, 0x1
      beqz       $17, .L800DBEB0
       addu      $4, $17, $0
      addu       $5, $0, $0
      addiu      $16, $29, 0x10
      lw         $6, 0x8($19)
      lw         $2, 0x8($18)
      jalr       $2
       addu      $7, $16, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x1
      sw         $0, 0x8($19)
      lw         $2, 0xC($18)
      jalr       $2
       addu      $6, $16, $0
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bnel       $3, $2, .L800DBEAC
       sw        $0, 0x18($19)
      lw         $2, 0x10($29)
      bne        $2, $3, .L800DBEA8
       addiu     $2, $0, 0x1
      lw         $4, 0x24($19)
      jal        func_800513F4
       nop
      addiu      $2, $0, 0x1
  .L800DBEA8:
      sw         $0, 0x18($19)
  .L800DBEAC:
      sw         $0, 0x1C($19)
  .L800DBEB0:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800DBE18

.globl func_800DBECC
.ent func_800DBECC
func_800DBECC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $3, 0x10($4)
      addiu      $2, $0, 0x1
      sb         $2, 0x0($4)
      lw         $4, 0x14($4)
      lw         $2, 0xC($3)
      jalr       $2
       addiu     $5, $0, 0x1
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x7FFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DBECC

.globl func_800DBF00
.ent func_800DBF00
func_800DBF00:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x0($18)
      lw         $17, 0x0($2)
      lw         $2, 0x4($2)
      beqz       $17, .L800DBFAC
       addiu     $16, $0, -0x1
      beql       $4, $0, .L800DBF5C
       addu      $4, $2, $0
      bgtz       $4, .L800DBF4C
       addiu     $2, $0, 0x1
      beq        $4, $16, .L800DBF94
       addu      $2, $16, $0
      j          .L800DBFB0
       nop
  .L800DBF4C:
      beq        $4, $2, .L800DBF94
       addu      $2, $16, $0
      j          .L800DBFB0
       nop
  .L800DBF5C:
      jal        func_80017580
       addiu     $5, $0, 0x3F
      addu       $16, $2, $0
      bnel       $16, $0, .L800DBF70
       addiu     $16, $16, 0x1
  .L800DBF70:
      jal        func_800DBC78
       addu      $4, $17, $0
      addu       $4, $17, $0
      jal        func_800DBD98
       addu      $5, $16, $0
      jal        func_800DBE18
       addu      $4, $17, $0
      j          .L800DBFAC
       addu      $16, $2, $0
  .L800DBF94:
      jal        func_800DBECC
       addu      $4, $17, $0
      lw         $3, 0x0($18)
      lw         $4, 0x4($3)
      jal        func_80052540
       addu      $16, $2, $0
  .L800DBFAC:
      addu       $2, $16, $0
  .L800DBFB0:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DBF00

.globl func_800DBFC8
.ent func_800DBFC8
func_800DBFC8:
      addiu      $29, $29, -0x130
      sw         $20, 0x120($29)
      addu       $20, $4, $0
      addu       $4, $5, $0
      sw         $31, 0x12C($29)
      sw         $22, 0x128($29)
      sw         $21, 0x124($29)
      sw         $19, 0x11C($29)
      sw         $18, 0x118($29)
      sw         $17, 0x114($29)
      sw         $16, 0x110($29)
      lw         $2, 0x10($20)
      beqz       $2, .L800DC02C
       addu      $22, $6, $0
      lw         $2, 0x14($20)
      beqz       $2, .L800DC1C8
       addiu     $2, $0, -0x1
      sw         $0, 0x0($22)
      lw         $5, 0x10($20)
      lw         $6, 0x14($20)
      jal        func_800DBAF8
       nop
      addu       $18, $2, $0
      bnez       $18, .L800DC034
       addiu     $2, $0, -0x1
  .L800DC02C:
      j          .L800DC1C8
       addiu     $2, $0, -0x1
  .L800DC034:
      sw         $18, 0x0($22)
      sw         $2, 0x20($18)
      lw         $4, 0x0($20)
      jal        func_80017580
       addiu     $5, $0, 0x3A
      addu       $16, $2, $0
      beqz       $16, .L800DC0D8
       addiu     $16, $16, 0x1
      lbu        $3, 0x0($16)
      addiu      $2, $0, 0x2D
      beql       $3, $2, .L800DC064
       addiu     $16, $16, 0x1
  .L800DC064:
      addiu      $19, $0, 0x1
      lbu        $2, 0x0($16)
      beqz       $2, .L800DC0AC
       addiu     $17, $29, 0x10
      addiu      $21, $0, 0x3F
  .L800DC078:
      beq        $2, $21, .L800DC0B0
       andi      $2, $19, 0xFF
      lbu        $4, 0x0($16)
      jal        func_80012680
       nop
      beql       $2, $0, .L800DC094
       addu      $19, $0, $0
  .L800DC094:
      lbu        $2, 0x0($16)
      addiu      $16, $16, 0x1
      sb         $2, 0x0($17)
      lbu        $2, 0x0($16)
      bnez       $2, .L800DC078
       addiu     $17, $17, 0x1
  .L800DC0AC:
      andi       $2, $19, 0xFF
  .L800DC0B0:
      beqz       $2, .L800DC0D8
       sb        $0, 0x0($17)
      jal        func_80024040
       addiu     $4, $29, 0x10
      negu       $2, $2
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800DC0D8
       sw        $2, 0x20($18)
      addiu      $2, $0, -0x1
      sw         $2, 0x20($18)
  .L800DC0D8:
      lw         $4, 0x0($20)
      jal        func_80017580
       addiu     $5, $0, 0x3F
      addu       $16, $2, $0
      beqz       $16, .L800DC104
       addiu     $16, $16, 0x1
      beqz       $16, .L800DC104
       nop
      lbu        $2, 0x0($16)
      bnez       $2, .L800DC10C
       addiu     $4, $18, 0xC
  .L800DC104:
      lw         $16, 0x0($20)
      addiu      $4, $18, 0xC
  .L800DC10C:
      lui        $5, %hi(D_800EC694)
      addiu      $5, $5, %lo(D_800EC694)
      addu       $6, $16, $0
      jal        func_80054530
       addiu     $7, $0, -0x1
      addiu      $4, $0, 0x8
      jal        func_80052504
       addu      $5, $0, $0
      addu       $16, $2, $0
      bnel       $16, $0, .L800DC148
       sw        $18, 0x0($16)
      jal        func_800DBBC4
       addu      $4, $18, $0
      j          .L800DC170
       sw        $0, 0x0($22)
  .L800DC148:
      lw         $4, 0x0($20)
      jal        func_800523C0
       nop
      bnez       $2, .L800DC178
       sw        $2, 0x4($16)
      jal        func_800DBBC4
       addu      $4, $18, $0
      jal        func_80052540
       addu      $4, $16, $0
      sw         $0, 0x0($22)
  .L800DC170:
      j          .L800DC1C8
       addiu     $2, $0, -0x5
  .L800DC178:
      jal        func_800DBC20
       addu      $4, $18, $0
      lw         $2, 0x4($18)
      andi       $2, $2, 0x1
      beqz       $2, .L800DC1AC
       lui       $4, %hi(func_800DBF00)
      addiu      $4, $4, %lo(func_800DBF00)
      addu       $5, $16, $0
      addu       $6, $0, $0
      jal        func_80051388
       addu      $7, $6, $0
      j          .L800DC1C4
       sw        $2, 0x24($18)
  .L800DC1AC:
      addiu      $4, $4, %lo(func_800DBF00)
      jal        func_800513C8
       addu      $5, $16, $0
      jal        func_8005133C
       nop
      sw         $2, 0x24($18)
  .L800DC1C4:
      addiu      $2, $0, 0x1
  .L800DC1C8:
      lw         $31, 0x12C($29)
      lw         $22, 0x128($29)
      lw         $21, 0x124($29)
      lw         $20, 0x120($29)
      lw         $19, 0x11C($29)
      lw         $18, 0x118($29)
      lw         $17, 0x114($29)
      lw         $16, 0x110($29)
      jr         $31
       addiu     $29, $29, 0x130
.end func_800DBFC8

.globl func_800DC1F0
.ent func_800DC1F0
func_800DC1F0:
      lbu        $2, 0x0($4)
      jr         $31
       nop
.end func_800DC1F0

.globl func_800DC1FC
.ent func_800DC1FC
func_800DC1FC:
      jr         $31
.end func_800DC1FC

.globl func_800DC200
.ent func_800DC200
func_800DC200:
      addiu      $2, $0, 0x1
      beqz       $4, .L800DC214
       nop
      bnez       $5, .L800DC21C
       nop
  .L800DC214:
      jr         $31
       addiu     $2, $0, -0x1
  .L800DC21C:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800DC200

.globl func_800DC224
.ent func_800DC224
func_800DC224:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $4, 0x24($4)
      beqz       $4, .L800DC240
       nop
      jal        func_8005147C
       nop
  .L800DC240:
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DC224

.globl func_800DC250
.ent func_800DC250
func_800DC250:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800DBBC4
       nop
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DC250

.globl func_800DC270
.ent func_800DC270
func_800DC270:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $4, 0x24($4)
      jal        func_80051414
       nop
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DC270

.globl func_800DC294
.ent func_800DC294
func_800DC294:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $4, 0x24($4)
      jal        func_80051414
       nop
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DC294

.globl func_800DC2B8
.ent func_800DC2B8
func_800DC2B8:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      addu       $4, $16, $0
      addu       $5, $0, $0
      sw         $31, 0x14($29)
      jal        func_80016140
       addiu     $6, $0, 0x38
      addiu      $4, $0, 0xC
      jal        func_80052504
       addu      $5, $0, $0
      addu       $5, $2, $0
      beqz       $5, .L800DC378
       addiu     $2, $0, 0x1
      addiu      $3, $0, 0x2005
      sw         $3, 0x0($5)
      lui        $3, %hi(D_800FCF80)
      addiu      $3, $3, %lo(D_800FCF80)
      addu       $4, $2, $0
      sw         $3, 0x4($5)
      lui        $3, %hi(D_800FE408)
      addiu      $3, $3, %lo(D_800FE408)
      sw         $3, 0x8($16)
      lui        $3, %hi(D_800FE400)
      addiu      $3, $3, %lo(D_800FE400)
      sw         $3, 0x18($16)
      lui        $3, %hi(D_800EC7C0)
      addiu      $3, $3, %lo(D_800EC7C0)
      sw         $3, 0x1C($16)
      lui        $3, %hi(D_800EC7CC)
      addiu      $3, $3, %lo(D_800EC7CC)
      sw         $3, 0x20($16)
      lui        $3, %hi(D_800FD3F0)
      addiu      $3, $3, %lo(D_800FD3F0)
      sw         $3, 0x24($16)
      addiu      $3, $0, 0x4
      sw         $4, 0x0($16)
      sw         $4, 0x4($16)
      sw         $4, 0x10($16)
      sw         $5, 0x14($16)
      sw         $0, 0xC($16)
      sh         $3, 0x28($16)
      sh         $0, 0x2A($16)
      sh         $0, 0x2C($16)
      sh         $0, 0x2E($16)
      sw         $0, 0x30($16)
      j          .L800DC37C
       sh        $4, 0x34($16)
  .L800DC378:
      addiu      $2, $0, -0x5
  .L800DC37C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DC2B8

.globl func_800DC38C
.ent func_800DC38C
func_800DC38C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $3, 0x4($5)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800DC3B0
       nop
      lw         $4, 0x14($5)
      jal        func_80052540
       nop
  .L800DC3B0:
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DC38C

.globl func_800DC3C0
.ent func_800DC3C0
func_800DC3C0:
      lui        $4, %hi(D_80125B00)
      lw         $2, %lo(D_80125B00)($4)
      bnez       $2, .L800DC3EC
       addiu     $2, $0, -0x12
      beqz       $5, .L800DC3E4
       addiu     $2, $0, 0x1
      lw         $3, 0x0($5)
      jr         $31
       sw        $3, %lo(D_80125B00)($4)
  .L800DC3E4:
      jr         $31
       addiu     $2, $0, -0x4
  .L800DC3EC:
      jr         $31
       nop
.end func_800DC3C0

.globl func_800DC3F4
.ent func_800DC3F4
func_800DC3F4:
      lui        $2, %hi(D_80125B00)
      sw         $0, %lo(D_80125B00)($2)
      jr         $31
       addiu     $2, $0, 0x1
.end func_800DC3F4

.globl func_800DC404
.ent func_800DC404
func_800DC404:
      addiu      $5, $5, -0x61C
      addiu      $6, $0, 0x1
      jal        func_800DC200
       addiu     $17, $2, 0x10
      addu       $4, $17, $0
      jal        func_80052FE8
       addiu     $5, $0, 0x2
      addu       $16, $2, $0
      beqz       $16, .L800DC454
       addu      $4, $16, $0
      addu       $5, $17, $0
      addu       $6, $18, $0
      jal        func_80052BA4
       addu      $7, $19, $0
      addiu      $4, $29, 0x18
.end func_800DC404

.globl func_800DC440
.ent func_800DC440
func_800DC440:
      addiu      $29, $29, -0x38
      sw         $21, 0x24($29)
      addu       $21, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
  .L800DC454:
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $17, 0x14($29)
      sw         $31, 0x34($29)
      sw         $30, 0x30($29)
      sw         $23, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $20, 0x20($29)
      sw         $16, 0x10($29)
      sw         $7, 0x44($29)
      lw         $4, 0x0($21)
      lw         $30, 0x48($29)
      lw         $23, 0x4C($29)
      jal        func_8004F774
       addu      $17, $0, $0
      addu       $22, $2, $0
      addiu      $2, $0, -0x1
      bne        $18, $2, .L800DC4B0
       addu      $20, $18, $0
      jal        func_80017780
       addu      $4, $19, $0
      addu       $18, $2, $0
      addu       $20, $18, $0
  .L800DC4B0:
      slt        $2, $17, $18
      beqz       $2, .L800DC508
       addu      $5, $19, $0
      lw         $4, 0x0($21)
      jal        func_8004F8C8
       addu      $6, $20, $0
      addu       $16, $2, $0
      addu       $17, $17, $16
      beq        $17, $18, .L800DC4B0
       addu      $5, $0, $0
      addu       $4, $30, $0
      subu       $20, $20, $16
      lw         $3, 0x44($29)
      lw         $6, 0x0($21)
      lw         $2, 0x8($3)
      jalr       $2
       addu      $7, $23, $0
      jal        func_8004F788
       addu      $4, $22, $0
      addu       $19, $19, $16
      j          .L800DC4B0
       sw        $2, 0x0($21)
  .L800DC508:
      addu       $2, $17, $0
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
.end func_800DC440

.globl func_800DC53C
.ent func_800DC53C
func_800DC53C:
      addu       $4, $17, $0
.end func_800DC53C

.globl func_800DC540
.ent func_800DC540
func_800DC540:
      beqz       $4, .L800DC590
       addiu     $8, $0, -0x11
      blez       $5, .L800DC590
       addu      $3, $0, $0
      addiu      $9, $0, 0x2001
  .L800DC554:
      lw         $2, 0x0($4)
      bnel       $2, $9, .L800DC584
       addiu     $3, $3, 0x1
      beqz       $6, .L800DC570
       nop
      lw         $2, 0x4($4)
      sw         $2, 0x0($6)
  .L800DC570:
      beqz       $7, .L800DC590
       addiu     $8, $0, 0x1
      lw         $2, 0x8($4)
      j          .L800DC590
       sw        $2, 0x0($7)
  .L800DC584:
      slt        $2, $3, $5
      bnez       $2, .L800DC554
       addiu     $4, $4, 0xC
  .L800DC590:
      jr         $31
       addu      $2, $8, $0
.end func_800DC540

.globl func_800DC598
.ent func_800DC598
func_800DC598:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $17, 0x14($29)
      addiu      $17, $0, 0x1
      sw         $31, 0x1C($29)
      bnez       $4, .L800DC5C0
       sw        $16, 0x10($29)
      j          .L800DC600
       addiu     $17, $0, -0x4
  .L800DC5C0:
      lui        $5, %hi(D_800EC604)
      addiu      $5, $5, %lo(D_800EC604)
      jal        func_80057334
       addiu     $6, $0, 0x4
      addu       $16, $2, $0
      beql       $16, $0, .L800DC600
       addiu     $17, $0, -0x5
      beqz       $18, .L800DC5F0
       nop
      jal        func_80024040
       addu      $4, $16, $0
      sw         $2, 0x0($18)
  .L800DC5F0:
      jal        func_80052540
       addu      $4, $16, $0
      j          .L800DC604
       addu      $2, $17, $0
  .L800DC600:
      addu       $2, $17, $0
  .L800DC604:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DC598

.globl func_800DC61C
.ent func_800DC61C
func_800DC61C:
      addiu      $29, $29, -0x20
      lui        $2, %hi(D_80125B40)
      sw         $17, 0x14($29)
      lw         $17, %lo(D_80125B40)($2)
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x1C($29)
      sw         $16, 0x10($29)
      jal        func_800DC690
       addu      $4, $17, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800DC678
       addu      $2, $16, $0
      lw         $4, 0xC($17)
      jal        func_8004F788
       nop
      beql       $2, $0, .L800DC66C
       addiu     $16, $0, -0x5
      sw         $2, 0x0($18)
  .L800DC66C:
      jal        func_800DC6B8
       addu      $4, $17, $0
      addu       $2, $16, $0
  .L800DC678:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DC61C

.globl func_800DC690
.ent func_800DC690
func_800DC690:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $4, 0x8($4)
      lw         $2, 0x4($4)
      lw         $2, 0x8($2)
      jalr       $2
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DC690

.globl func_800DC6B8
.ent func_800DC6B8
func_800DC6B8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $4, 0x8($4)
      lw         $2, 0x4($4)
      lw         $2, 0x10($2)
      jalr       $2
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DC6B8

.globl func_800DC6E0
.ent func_800DC6E0
func_800DC6E0:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      addiu      $4, $0, 0x10
      sw         $31, 0x18($29)
      jal        func_80052504
       addu      $5, $0, $0
      beqz       $2, .L800DC714
       nop
      sw         $16, 0x0($2)
      sw         $17, 0x4($2)
  .L800DC714:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DC6E0

.globl func_800DC728
.ent func_800DC728
func_800DC728:
      addiu      $29, $29, -0x18
      addu       $6, $4, $0
      beqz       $6, .L800DC74C
       sw        $31, 0x10($29)
      beqz       $5, .L800DC76C
       addiu     $2, $0, -0x4
      lw         $2, 0x0($5)
      bnez       $2, .L800DC754
       sw        $2, 0xC($6)
  .L800DC74C:
      j          .L800DC76C
       addiu     $2, $0, -0x4
  .L800DC754:
      addu       $5, $0, $0
      lw         $2, 0x0($6)
      lw         $4, 0x4($6)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $6, $6, 0x8
  .L800DC76C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DC728

.globl func_800DC778
.ent func_800DC778
func_800DC778:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x8($16)
      beqz       $4, .L800DC7A4
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       nop
  .L800DC7A4:
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DC778

.globl func_800DC7BC
.ent func_800DC7BC
func_800DC7BC:
      addiu      $29, $29, -0x18
      addiu      $4, $0, 0x3C
      sw         $31, 0x10($29)
      jal        func_80052504
       addu      $5, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DC7BC

.globl func_800DC7DC
.ent func_800DC7DC
func_800DC7DC:
      addiu      $29, $29, -0x58
      sw         $30, 0x50($29)
      addu       $30, $4, $0
      sw         $23, 0x4C($29)
      addu       $23, $5, $0
      sw         $20, 0x40($29)
      lui        $2, %hi(D_80125B40)
      sw         $31, 0x54($29)
      sw         $22, 0x48($29)
      sw         $21, 0x44($29)
      sw         $19, 0x3C($29)
      sw         $18, 0x38($29)
      sw         $17, 0x34($29)
      sw         $16, 0x30($29)
      sw         $6, 0x60($29)
      sw         $0, 0x2C($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $0, 0x20($29)
      sw         $0, 0x24($29)
      sw         $0, 0x28($29)
      lw         $4, 0x4($23)
      lw         $22, %lo(D_80125B40)($2)
      beqz       $4, .L800DC87C
       addu      $20, $0, $0
      lw         $2, 0x0($23)
      beqz       $2, .L800DCA2C
       addiu     $16, $0, -0x4
      lw         $2, 0x8($23)
      beqz       $2, .L800DCA2C
       addiu     $2, $0, 0x1
      lw         $18, 0x2C($23)
      bne        $18, $2, .L800DCA30
       nop
      lw         $19, 0x30($23)
      beqz       $19, .L800DCA30
       nop
      lw         $2, 0x0($19)
      bnez       $2, .L800DC884
       lui       $5, %hi(D_800EC638)
  .L800DC87C:
      j          .L800DCA2C
       addiu     $16, $0, -0x4
  .L800DC884:
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800EC638)
      bnez       $2, .L800DCA2C
       addiu     $16, $0, -0x3
      addiu      $6, $29, 0x10
      lw         $4, 0x10($23)
      lw         $5, 0x14($23)
      jal        func_800DC540
       addiu     $7, $29, 0x14
      addu       $16, $2, $0
      bne        $16, $18, .L800DCA2C
       addu      $17, $16, $0
      lw         $4, 0x8($23)
      jal        func_80054604
       addiu     $5, $29, 0x18
      addu       $16, $2, $0
      bne        $16, $17, .L800DCA2C
       addu      $18, $16, $0
      lw         $4, 0x0($19)
      addiu      $21, $29, 0x1C
      jal        func_80054604
       addu      $5, $21, $0
      addu       $16, $2, $0
      bne        $16, $18, .L800DCA2C
       addu      $17, $16, $0
      lw         $4, 0x0($23)
      jal        func_800DC598
       addiu     $5, $29, 0x20
      addu       $16, $2, $0
      bne        $16, $17, .L800DCA2C
       addu      $18, $16, $0
      lw         $4, 0x1C($29)
      addu       $5, $0, $0
      lui        $2, %hi(D_800EC694)
      addiu      $16, $2, %lo(D_800EC694)
      addu       $6, $16, $0
      jal        func_8005446C
       addu      $7, $5, $0
      bnez       $2, .L800DC940
       addu      $4, $21, $0
      addu       $5, $16, $0
      lw         $6, 0x0($23)
      jal        func_80054530
       addiu     $7, $0, -0x1
      addu       $16, $2, $0
      bne        $16, $18, .L800DCA30
       addiu     $2, $0, 0x1
  .L800DC940:
      lw         $5, 0x20($29)
      bnez       $5, .L800DC960
       nop
      lw         $2, 0x4($19)
      bnez       $2, .L800DC994
       sw        $2, 0x24($29)
      j          .L800DC988
       addiu     $16, $0, -0x4
  .L800DC960:
      beqz       $22, .L800DC984
       addiu     $6, $0, 0x1
      lw         $2, 0x0($22)
      lw         $4, 0x4($22)
      lw         $2, 0x14($2)
      jalr       $2
       addiu     $7, $29, 0x24
      j          .L800DC988
       addu      $16, $2, $0
  .L800DC984:
      addiu      $16, $0, -0x1
  .L800DC988:
      lw         $2, 0x24($29)
      beqz       $2, .L800DCA30
       addiu     $2, $0, 0x1
  .L800DC994:
      lw         $4, 0x24($29)
      lw         $2, 0x4($4)
      lw         $2, 0x18($2)
      jalr       $2
       addiu     $5, $29, 0x28
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800DCA8C
       addu      $17, $16, $0
      addiu      $4, $0, 0x4
      jal        func_80052504
       addu      $5, $0, $0
      addu       $20, $2, $0
      beql       $20, $0, .L800DCA2C
       addiu     $16, $0, -0x5
      sw         $30, 0x0($20)
      lw         $9, 0x60($29)
      andi       $2, $9, 0x1
      beqz       $2, .L800DCA08
       lui       $4, %hi(func_800DCF4C)
      addiu      $4, $4, %lo(func_800DCF4C)
      addu       $5, $20, $0
      addu       $6, $0, $0
      jal        func_80051388
       addu      $7, $6, $0
      bnez       $2, .L800DCA2C
       sw        $2, 0x2C($29)
      j          .L800DCA2C
       addiu     $16, $0, -0x5
  .L800DCA08:
      addiu      $4, $4, %lo(func_800DCF4C)
      jal        func_800513C8
       addu      $5, $20, $0
      addu       $16, $2, $0
      bne        $16, $17, .L800DCA30
       addiu     $2, $0, 0x1
      jal        func_8005133C
       nop
      sw         $2, 0x2C($29)
  .L800DCA2C:
      addiu      $2, $0, 0x1
  .L800DCA30:
      bne        $16, $2, .L800DCA8C
       nop
      lw         $2, 0x10($29)
      lw         $3, 0x14($29)
      lw         $4, 0x18($29)
      lw         $5, 0x1C($29)
      lw         $6, 0x20($29)
      lw         $7, 0x24($29)
      lw         $8, 0x28($29)
      lw         $9, 0x2C($29)
      addu       $20, $0, $0
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $0, 0x24($29)
      sw         $9, 0x10($30)
      sw         $16, 0x34($30)
      sw         $2, 0x0($30)
      sw         $3, 0x4($30)
      sw         $4, 0x18($30)
      sw         $5, 0x1C($30)
      sw         $6, 0x20($30)
      sw         $7, 0x24($30)
      sw         $8, 0x28($30)
  .L800DCA8C:
      beqz       $20, .L800DCA9C
       nop
      jal        func_80052540
       addu      $4, $20, $0
  .L800DCA9C:
      lw         $4, 0x24($29)
      beqz       $4, .L800DCAC4
       nop
      lw         $2, 0x30($23)
      beq        $4, $2, .L800DCAC4
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $16, $0
  .L800DCAC4:
      lw         $4, 0x1C($29)
      beqz       $4, .L800DCAD8
       nop
      jal        func_800546DC
       nop
  .L800DCAD8:
      lw         $4, 0x18($29)
      beqz       $4, .L800DCAF0
       addu      $2, $16, $0
      jal        func_800546DC
       nop
      addu       $2, $16, $0
  .L800DCAF0:
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
.end func_800DC7DC

.globl func_800DCB20
.ent func_800DCB20
func_800DCB20:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x14($16)
      beqz       $4, .L800DCB44
       nop
      jal        func_8004F810
       nop
  .L800DCB44:
      lw         $4, 0x24($16)
      beqz       $4, .L800DCB64
       nop
      lw         $2, 0x4($4)
      lw         $5, 0x34($16)
      lw         $2, 0x4($2)
      jalr       $2
       nop
  .L800DCB64:
      lw         $4, 0x1C($16)
      beqz       $4, .L800DCB78
       nop
      jal        func_800546DC
       nop
  .L800DCB78:
      lw         $4, 0x18($16)
      beqz       $4, .L800DCB8C
       nop
      jal        func_800546DC
       nop
  .L800DCB8C:
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DCB20

.globl func_800DCBA4
.ent func_800DCBA4
func_800DCBA4:
      addiu      $29, $29, -0x40
      sw         $16, 0x30($29)
      addu       $16, $4, $0
      sw         $31, 0x3C($29)
      sw         $18, 0x38($29)
      sw         $17, 0x34($29)
      sw         $0, 0x28($29)
      lw         $3, 0x0($16)
      addiu      $2, $29, 0x20
      sw         $2, 0x10($29)
      addiu      $2, $29, 0x24
      addiu      $17, $29, 0x28
      sw         $2, 0x14($29)
      sw         $17, 0x18($29)
      lw         $4, 0x4($16)
      lw         $5, 0x18($16)
      lw         $6, 0x1C($16)
      lw         $7, 0x14($16)
      lw         $2, 0x0($3)
      jalr       $2
       nop
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      bne        $4, $2, .L800DCC8C
       addu      $18, $4, $0
      lw         $2, 0x28($29)
      bnez       $2, .L800DCC38
       addu      $5, $0, $0
      lw         $4, 0x4($16)
      lw         $2, 0x24($29)
      lw         $5, 0x20($29)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $6, $17, $0
      addu       $4, $2, $0
      bne        $4, $18, .L800DCC8C
       addu      $5, $0, $0
  .L800DCC38:
      lui        $2, %hi(D_800FE558)
      lw         $8, 0x24($29)
      lw         $4, 0x28($29)
      lw         $3, 0x1C($16)
      addiu      $2, $2, %lo(D_800FE558)
      sw         $0, 0x14($29)
      sw         $2, 0x18($29)
      sw         $16, 0x1C($29)
      sw         $3, 0x10($29)
      lw         $7, 0x18($16)
      lw         $2, 0x4($8)
      jalr       $2
       addu      $6, $5, $0
      addu       $4, $2, $0
      bne        $4, $18, .L800DCC8C
       nop
      lw         $2, 0x24($29)
      lw         $3, 0x28($29)
      sw         $0, 0x28($29)
      sw         $2, 0x8($16)
      sw         $3, 0xC($16)
  .L800DCC8C:
      lw         $31, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x40
.end func_800DCBA4

.globl func_800DCCA8
.ent func_800DCCA8
func_800DCCA8:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800DCCA8

.globl func_800DCCB0
.ent func_800DCCB0
func_800DCCB0:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $31, 0x2C($29)
      sw         $18, 0x28($29)
      sw         $16, 0x20($29)
      lw         $2, 0x14($17)
      bnez       $2, .L800DCCEC
       addiu     $18, $0, 0x2
      jal        func_800DC61C
       addiu     $4, $17, 0x14
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800DCD50
       nop
  .L800DCCEC:
      lw         $4, 0x14($17)
      jal        func_8004FADC
       sw        $0, 0x18($29)
      sw         $2, 0x10($29)
      lw         $4, 0x14($17)
      jal        func_8004FAE8
       nop
      sw         $2, 0x14($29)
      lw         $4, 0x24($17)
      lw         $2, 0x4($4)
      addiu      $5, $29, 0x10
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $6, $29, 0x18
      addu       $16, $2, $0
      bltz       $16, .L800DCD58
       nop
      lw         $4, 0x14($17)
      lw         $5, 0x18($29)
      jal        func_8004FBBC
       nop
      lw         $2, 0x2C($17)
      lw         $3, 0x18($29)
      addu       $2, $2, $3
      sw         $2, 0x2C($17)
  .L800DCD50:
      bgez       $16, .L800DCD6C
       addu      $2, $18, $0
  .L800DCD58:
      lw         $2, 0x34($17)
      bgezl      $2, .L800DCD64
       sw        $16, 0x34($17)
  .L800DCD64:
      addiu      $18, $0, -0x1
      addu       $2, $18, $0
  .L800DCD6C:
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800DCCB0

.globl func_800DCD84
.ent func_800DCD84
func_800DCD84:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $16, 0x18($29)
      addiu      $16, $0, 0x1
      sw         $31, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      lw         $4, 0x14($17)
      jal        func_8004FA7C
       addu      $18, $16, $0
      blezl      $2, .L800DCE34
       addiu     $18, $0, 0x3
      lw         $4, 0x14($17)
      jal        func_8004FAD0
       nop
      lw         $4, 0x14($17)
      jal        func_8004FA70
       addu      $16, $2, $0
      lw         $3, 0xC($17)
      bnez       $3, .L800DCDF0
       subu      $19, $16, $2
      jal        func_800DCBA4
       addu      $4, $17, $0
      addu       $16, $2, $0
      bne        $16, $18, .L800DCE34
       nop
  .L800DCDF0:
      addu       $5, $19, $0
      lw         $4, 0xC($17)
      lw         $2, 0x8($17)
      lw         $6, 0x14($17)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $7, $29, 0x10
      addu       $16, $2, $0
      bnel       $16, $18, .L800DCE34
       sw        $0, 0x14($17)
      lw         $2, 0x10($29)
      bnel       $2, $18, .L800DCE34
       sw        $0, 0x14($17)
      lw         $4, 0x10($17)
      jal        func_800513F4
       nop
      sw         $0, 0x14($17)
  .L800DCE34:
      bgez       $16, .L800DCE50
       addu      $2, $18, $0
      lw         $2, 0x34($17)
      bgezl      $2, .L800DCE48
       sw        $16, 0x34($17)
  .L800DCE48:
      addiu      $18, $0, -0x1
      addu       $2, $18, $0
  .L800DCE50:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800DCD84

.globl func_800DCE6C
.ent func_800DCE6C
func_800DCE6C:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $31, 0x24($29)
      sw         $18, 0x20($29)
      sw         $16, 0x18($29)
      lw         $4, 0xC($17)
      beqz       $4, .L800DCEE0
       addiu     $16, $0, 0x1
      addu       $5, $16, $0
      lw         $2, 0x34($17)
      lw         $3, 0x8($17)
      beq        $2, $16, .L800DCEA8
       addu      $18, $16, $0
      addiu      $5, $0, -0x7
  .L800DCEA8:
      lw         $2, 0xC($3)
      jalr       $2
       addiu     $6, $29, 0x10
      addu       $16, $2, $0
      bnel       $16, $18, .L800DCEDC
       sw        $0, 0xC($17)
      lw         $2, 0x10($29)
      bnel       $2, $16, .L800DCEDC
       sw        $0, 0xC($17)
      lw         $4, 0x10($17)
      jal        func_800513F4
       nop
      sw         $0, 0xC($17)
  .L800DCEDC:
      sw         $0, 0x8($17)
  .L800DCEE0:
      bgez       $16, .L800DCEF4
       nop
      lw         $2, 0x34($17)
      bgezl      $2, .L800DCEF4
       sw        $16, 0x34($17)
  .L800DCEF4:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addiu      $2, $0, 0x4
      jr         $31
       addiu     $29, $29, 0x28
.end func_800DCE6C

.globl func_800DCF10
.ent func_800DCF10
func_800DCF10:
      addiu      $29, $29, -0x18
      addu       $3, $4, $0
      sw         $31, 0x10($29)
      lw         $2, 0x0($3)
      beqz       $2, .L800DCF3C
       nop
      lw         $2, 0xC($2)
      lw         $4, 0x4($3)
      lw         $5, 0x34($3)
      jalr       $2
       nop
  .L800DCF3C:
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x7FFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DCF10

.globl func_800DCF4C
.ent func_800DCF4C
func_800DCF4C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      addu       $3, $4, $0
      beqz       $5, .L800DD010
       addiu     $6, $0, 0x7FFF
      lw         $4, 0x0($5)
      beqz       $4, .L800DD010
       nop
      lw         $4, 0x0($4)
      beqz       $4, .L800DD010
       nop
      lbu        $2, 0x38($4)
      beqz       $2, .L800DCFA0
       addiu     $3, $3, 0x1
      lw         $2, 0x34($4)
      bltz       $2, .L800DCF94
       addiu     $2, $0, -0x7
      sw         $2, 0x34($4)
  .L800DCF94:
      sb         $0, 0x38($4)
      addiu      $3, $0, -0x1
      addiu      $3, $3, 0x1
  .L800DCFA0:
      sltiu      $2, $3, 0x6
      beqz       $2, .L800DD010
       lui       $2, %hi(jtbl_800FE5B0)
      addiu      $2, $2, %lo(jtbl_800FE5B0)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800DCFC4
.L800DCFC4:
      jal        func_800DCCA8
       nop
      j          .L800DD010
       addu      $6, $2, $0
  .globl .L800DCFD4
.L800DCFD4:
      jal        func_800DCCB0
       nop
      j          .L800DD010
       addu      $6, $2, $0
  .globl .L800DCFE4
.L800DCFE4:
      jal        func_800DCD84
       nop
      j          .L800DD010
       addu      $6, $2, $0
  .globl .L800DCFF4
.L800DCFF4:
      jal        func_800DCE6C
       nop
      j          .L800DD010
       addu      $6, $2, $0
  .globl .L800DD004
.L800DD004:
      jal        func_800DCF10
       nop
      addu       $6, $2, $0
  .L800DD010:
      lw         $31, 0x10($29)
      addu       $2, $6, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DCF4C

.globl func_800DD020
.ent func_800DD020
func_800DD020:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $31, 0x20($29)
.end func_800DD020

.globl func_800DD040
.ent func_800DD040
func_800DD040:
      beqz       $17, .L800DD050
       sw        $16, 0x10($29)
      bnez       $19, .L800DD058
       nop
  .L800DD050:
      j          .L800DD094
       addiu     $3, $0, -0x4
  .L800DD058:
      jal        func_800DC7BC
       nop
      addu       $16, $2, $0
      beqz       $16, .L800DD090
       addu      $4, $16, $0
      addu       $5, $17, $0
      jal        func_800DC7DC
       addu      $6, $18, $0
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      beql       $3, $2, .L800DD094
       sw        $16, 0x0($19)
      j          .L800DD094
       nop
  .L800DD090:
      addiu      $3, $0, -0x5
  .L800DD094:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x28
.end func_800DD040

.globl func_800DD0B4
.ent func_800DD0B4
func_800DD0B4:
      beqz       $4, .L800DD0D0
       addu      $5, $0, $0
      lw         $2, 0x2C($4)
      lw         $3, 0x28($4)
      sltu       $2, $2, $3
      bnez       $2, .L800DD0D4
       nop
  .L800DD0D0:
      addiu      $5, $0, 0x1
  .L800DD0D4:
      jr         $31
       addu      $2, $5, $0
.end func_800DD0B4

.globl func_800DD0DC
.ent func_800DD0DC
func_800DD0DC:
      bnel       $4, $0, .L800DD0EC
       sw        $5, 0x30($4)
      jr         $31
       addiu     $2, $0, -0x4
  .L800DD0EC:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800DD0DC

.globl func_800DD0F4
.ent func_800DD0F4
func_800DD0F4:
      beqz       $4, .L800DD104
       nop
      bnez       $5, .L800DD10C
       nop
  .L800DD104:
      jr         $31
       addiu     $2, $0, -0x4
  .L800DD10C:
      lw         $2, 0x28($4)
      sw         $2, 0x0($5)
      lw         $2, 0x2C($4)
      sw         $2, 0x4($5)
      lw         $4, 0x34($4)
      bgezl      $4, .L800DD128
       addiu     $4, $0, 0x1
  .L800DD128:
      sw         $4, 0x8($5)
      jr         $31
       addiu     $2, $0, 0x1
.end func_800DD0F4

.globl func_800DD134
.ent func_800DD134
func_800DD134:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      bnez       $16, .L800DD150
       sw        $31, 0x14($29)
      j          .L800DD178
       addiu     $2, $0, -0x4
  .L800DD150:
      addiu      $2, $0, 0x1
      beqz       $5, .L800DD164
       sb        $2, 0x38($16)
      jal        func_800DD0F4
       addu      $4, $16, $0
  .L800DD164:
      lw         $4, 0x10($16)
      beqz       $4, .L800DD178
       addiu     $2, $0, 0x1
      jal        func_8005147C
       nop
  .L800DD178:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DD134

.globl func_800DD188
.ent func_800DD188
func_800DD188:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      bnez       $4, .L800DD1A0
       addu      $2, $4, $0
      j          .L800DD1AC
       addiu     $2, $0, -0x4
  .L800DD1A0:
      jal        func_800DCB20
       addu      $4, $2, $0
      addiu      $2, $0, 0x1
  .L800DD1AC:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DD188

.globl func_800DD1B8
.ent func_800DD1B8
func_800DD1B8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      beqz       $4, .L800DD1E8
       addiu     $2, $0, -0x4
      addiu      $2, $0, -0x7
      bne        $5, $2, .L800DD1D8
       addiu     $2, $0, 0x1
      sb         $2, 0x38($4)
  .L800DD1D8:
      lw         $4, 0x10($4)
      jal        func_80051414
       nop
      addiu      $2, $0, 0x1
  .L800DD1E8:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DD1B8

.globl func_800DD1F4
.ent func_800DD1F4
func_800DD1F4:
      beqz       $5, .L800DD248
       addiu     $3, $0, 0x1
      lui        $2, %hi(D_800FE56C)
      addiu      $2, $2, %lo(D_800FE56C)
      addiu      $4, $2, 0x30
  .L800DD208:
      lw         $6, 0x0($2)
      lw         $7, 0x4($2)
      lw         $8, 0x8($2)
      lw         $9, 0xC($2)
      sw         $6, 0x0($5)
      sw         $7, 0x4($5)
      sw         $8, 0x8($5)
      sw         $9, 0xC($5)
      addiu      $2, $2, 0x10
      bne        $2, $4, .L800DD208
       addiu     $5, $5, 0x10
      lw         $6, 0x0($2)
      lw         $7, 0x4($2)
      sw         $6, 0x0($5)
      j          .L800DD24C
       sw        $7, 0x4($5)
  .L800DD248:
      addiu      $3, $0, -0x4
  .L800DD24C:
      jr         $31
       addu      $2, $3, $0
.end func_800DD1F4

.globl func_800DD254
.ent func_800DD254
func_800DD254:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800DD254

.globl func_800DD25C
.ent func_800DD25C
func_800DD25C:
      addiu      $29, $29, -0x20
      addu       $4, $0, $0
      addu       $8, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      beqz       $17, .L800DD310
       sw        $16, 0x10($29)
      lui        $2, %hi(D_80125B40)
      lw         $2, %lo(D_80125B40)($2)
      bnel       $2, $0, .L800DD314
       addiu     $17, $0, -0x12
      slt        $2, $8, $7
      beqz       $2, .L800DD2BC
       addu      $3, $4, $0
      addiu      $5, $0, 0x2010
  .L800DD29C:
      lw         $2, 0x0($6)
      bne        $2, $5, .L800DD2B0
       addiu     $3, $3, 0x1
      lw         $4, 0x4($6)
      lw         $8, 0x8($6)
  .L800DD2B0:
      slt        $2, $3, $7
      bnez       $2, .L800DD29C
       addiu     $6, $6, 0xC
  .L800DD2BC:
      beql       $4, $0, .L800DD314
       addiu     $17, $0, -0x10
      jal        func_800DC6E0
       addu      $5, $8, $0
      addu       $16, $2, $0
      beqz       $16, .L800DD308
       addu      $4, $16, $0
      jal        func_800DC728
       addu      $5, $17, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800DD2F8
       lui       $2, %hi(D_80125B40)
      j          .L800DD314
       sw        $16, %lo(D_80125B40)($2)
  .L800DD2F8:
      jal        func_800DC778
       addu      $4, $16, $0
      j          .L800DD318
       addu      $2, $17, $0
  .L800DD308:
      j          .L800DD314
       addiu     $17, $0, -0x5
  .L800DD310:
      addiu      $17, $0, -0x4
  .L800DD314:
      addu       $2, $17, $0
  .L800DD318:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DD25C

.globl func_800DD32C
.ent func_800DD32C
func_800DD32C:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      lui        $18, %hi(D_80125B40)
      sw         $16, 0x10($29)
      lw         $16, %lo(D_80125B40)($18)
      sw         $31, 0x1C($29)
      beqz       $16, .L800DD368
       sw        $17, 0x14($29)
      jal        func_800DC690
       addu      $4, $16, $0
      addu       $17, $2, $0
      jal        func_800DC778
       addu      $4, $16, $0
      j          .L800DD36C
       sw        $0, %lo(D_80125B40)($18)
  .L800DD368:
      addiu      $17, $0, 0x1
  .L800DD36C:
      addu       $2, $17, $0
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DD32C

.globl func_800DD388
.ent func_800DD388
func_800DD388:
      addiu      $5, $5, -0x2448
      bnez       $2, .L800DD52C
       addiu     $16, $0, -0x3
      addiu      $6, $29, 0x10
      lw         $4, 0x10($23)
      lw         $5, 0x14($23)
      jal        func_800DD040
       addiu     $7, $29, 0x14
      addu       $16, $2, $0
      bne        $16, $18, .L800DD52C
       addu      $17, $16, $0
      lw         $4, 0x8($23)
      jal        func_80055104
       addiu     $5, $29, 0x18
.end func_800DD388

.globl func_800DD3C0
.ent func_800DD3C0
func_800DD3C0:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addiu      $18, $17, 0x24
      addu       $4, $18, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      sw         $16, 0x18($29)
      lw         $2, 0x14($17)
      addu       $16, $6, $0
      sw         $19, 0x14($29)
      sw         $2, 0x10($29)
      lw         $7, 0x10($17)
      jal        func_800DC440
       addiu     $6, $0, -0x1
      andi       $16, $16, 0xFF
      beqz       $16, .L800DD430
       addu      $4, $18, $0
      lui        $5, %hi(D_800FE6D0)
      lw         $2, 0x14($17)
      addiu      $5, $5, %lo(D_800FE6D0)
      sw         $19, 0x14($29)
      sw         $2, 0x10($29)
      lw         $7, 0x10($17)
      jal        func_800DC440
       addiu     $6, $0, -0x1
  .L800DD430:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x30
.end func_800DD3C0

.globl func_800DD450
.ent func_800DD450
func_800DD450:
      addiu      $29, $29, -0xA0
      sw         $23, 0x94($29)
      addu       $23, $4, $0
      sw         $30, 0x98($29)
      addu       $30, $5, $0
      sw         $21, 0x8C($29)
      addu       $21, $0, $0
      sw         $20, 0x88($29)
      addu       $20, $21, $0
      sw         $17, 0x7C($29)
      addiu      $17, $0, 0xC
      addu       $5, $21, $0
      lui        $6, %hi(D_800FE688)
      addiu      $6, $6, %lo(D_800FE688)
      addiu      $2, $0, 0x1
      sw         $31, 0x9C($29)
      sw         $22, 0x90($29)
      sw         $19, 0x84($29)
      sw         $18, 0x80($29)
      sw         $16, 0x78($29)
      sw         $2, 0x38($23)
      lui        $2, %hi(D_800FE708)
      addiu      $2, $2, %lo(D_800FE708)
      sw         $2, 0x18($29)
      lui        $2, %hi(D_800FE6D4)
      addiu      $2, $2, %lo(D_800FE6D4)
      sw         $2, 0x1C($29)
      lui        $2, %hi(D_800FE6E4)
      addiu      $2, $2, %lo(D_800FE6E4)
      lui        $3, %hi(D_800FE780)
      addiu      $3, $3, %lo(D_800FE780)
      sw         $2, 0x20($29)
      lui        $2, %hi(D_800FE6EC)
      addiu      $2, $2, %lo(D_800FE6EC)
      sw         $2, 0x28($29)
      lui        $2, %hi(D_800FE6DC)
      addiu      $2, $2, %lo(D_800FE6DC)
      sw         $2, 0x2C($29)
      lui        $2, %hi(D_800FE6F8)
      addiu      $2, $2, %lo(D_800FE6F8)
      sw         $2, 0x30($29)
      lui        $2, %hi(D_800FE730)
      addiu      $2, $2, %lo(D_800FE730)
      sw         $2, 0x34($29)
      lui        $2, %hi(D_800FE718)
      addiu      $2, $2, %lo(D_800FE718)
      sw         $2, 0x38($29)
      lui        $2, %hi(D_800FE720)
      addiu      $2, $2, %lo(D_800FE720)
      sw         $2, 0x3C($29)
      lui        $2, %hi(D_800FE728)
      addiu      $2, $2, %lo(D_800FE728)
      sw         $3, 0x24($29)
      sw         $3, 0x40($29)
      sw         $2, 0x44($29)
  .L800DD52C:
      lw         $4, 0x30($23)
      jal        func_8005446C
       addu      $7, $21, $0
      addu       $16, $2, $0
      beqz       $16, .L800DD578
       addu      $4, $16, $0
      jal        func_80017580
       addiu     $5, $0, 0x3B
      addu       $18, $2, $0
      beqz       $18, .L800DD578
       nop
      jal        func_800523C0
       addu      $4, $16, $0
      addu       $21, $2, $0
      beqz       $21, .L800DD578
       subu      $2, $18, $16
      addu       $2, $21, $2
      sb         $0, 0x0($2)
      addu       $16, $21, $0
  .L800DD578:
      lw         $4, 0x30($23)
      addu       $5, $0, $0
      lui        $6, %hi(D_800FE6C8)
      addiu      $6, $6, %lo(D_800FE6C8)
      jal        func_8005446C
       addu      $7, $5, $0
      beqz       $16, .L800DD630
       addu      $19, $2, $0
      jal        func_80017780
       addu      $4, $16, $0
      beqz       $2, .L800DD630
       sll       $4, $17, 2
      addiu      $17, $17, 0x1
      sll        $5, $17, 2
      addiu      $17, $17, 0x1
      sll        $6, $17, 2
      addiu      $17, $17, 0x1
      sll        $7, $17, 2
      addiu      $17, $17, 0x1
      sll        $8, $17, 2
      addiu      $17, $17, 0x1
      sll        $9, $17, 2
      addiu      $17, $17, 0x1
      addiu      $3, $29, 0x18
      addu       $4, $3, $4
      lui        $2, %hi(D_800FE730)
      addiu      $2, $2, %lo(D_800FE730)
      addu       $5, $3, $5
      sw         $2, 0x0($4)
      lui        $2, %hi(D_800FE798)
      addiu      $2, $2, %lo(D_800FE798)
      addu       $6, $3, $6
      sw         $2, 0x0($5)
      lui        $2, %hi(D_800FE734)
      addiu      $2, $2, %lo(D_800FE734)
      addu       $7, $3, $7
      addu       $8, $3, $8
      sw         $2, 0x0($6)
      lui        $2, %hi(D_800FE738)
      addiu      $2, $2, %lo(D_800FE738)
      addu       $3, $3, $9
      sw         $16, 0x0($7)
      sw         $2, 0x0($8)
      lui        $2, %hi(D_800FE7AC)
      j          .L800DD660
       addiu     $2, $2, %lo(D_800FE7AC)
  .L800DD630:
      sll        $4, $17, 2
      addiu      $17, $17, 0x1
      sll        $5, $17, 2
      addiu      $17, $17, 0x1
      addiu      $3, $29, 0x18
      addu       $4, $3, $4
      lui        $2, %hi(D_800FE730)
      addiu      $2, $2, %lo(D_800FE730)
      addu       $3, $3, $5
      sw         $2, 0x0($4)
      lui        $2, %hi(D_800FE7C0)
      addiu      $2, $2, %lo(D_800FE7C0)
  .L800DD660:
      beqz       $19, .L800DD72C
       sw        $2, 0x0($3)
      lui        $2, %hi(D_800FE740)
      addiu      $22, $2, %lo(D_800FE740)
      jal        func_80017780
       addu      $4, $22, $0
      addu       $4, $19, $0
      jal        func_80017780
       addu      $16, $2, $0
      sll        $3, $17, 2
      addiu      $17, $17, 0x1
      sll        $6, $17, 2
      addiu      $17, $17, 0x1
      sll        $2, $2, 1
      addu       $16, $16, $2
      addiu      $16, $16, 0x1
      addu       $4, $16, $0
      addiu      $5, $0, 0x2
      addiu      $18, $29, 0x18
      addu       $3, $18, $3
      lui        $2, %hi(D_800FE730)
      addiu      $2, $2, %lo(D_800FE730)
      addu       $6, $18, $6
      sw         $2, 0x0($3)
      lui        $2, %hi(D_800FE80C)
      addiu      $2, $2, %lo(D_800FE80C)
      jal        func_800524E8
       sw        $2, 0x0($6)
      addu       $20, $2, $0
      beqz       $20, .L800DD704
       addu      $4, $20, $0
      addu       $5, $16, $0
      addu       $6, $22, $0
      addu       $7, $19, $0
      jal        func_800520A4
       sw        $7, 0x10($29)
      sll        $2, $17, 2
      addiu      $17, $17, 0x1
      addu       $2, $18, $2
      j          .L800DD714
       sw        $20, 0x0($2)
  .L800DD704:
      sll        $2, $17, 2
      addu       $2, $18, $2
      sw         $19, 0x0($2)
      addiu      $17, $17, 0x1
  .L800DD714:
      sll        $2, $17, 2
      addu       $3, $29, $2
      lui        $2, %hi(D_800FE82C)
      addiu      $2, $2, %lo(D_800FE82C)
      sw         $2, 0x18($3)
      addiu      $17, $17, 0x1
  .L800DD72C:
      sll        $3, $17, 2
      addiu      $17, $17, 0x1
      sll        $4, $17, 2
      addiu      $17, $17, 0x1
      addu       $18, $0, $0
      addiu      $5, $29, 0x18
      addu       $3, $5, $3
      lui        $2, %hi(D_800FE730)
      addiu      $2, $2, %lo(D_800FE730)
      addu       $4, $5, $4
      sw         $2, 0x0($3)
      lui        $2, %hi(D_800FE718)
      addiu      $2, $2, %lo(D_800FE718)
      blez       $17, .L800DD794
       sw        $2, 0x0($4)
      addu       $16, $5, $0
      addu       $4, $23, $0
  .L800DD770:
      lw         $5, 0x0($16)
      addiu      $6, $0, 0x1
      addu       $7, $30, $0
      addiu      $16, $16, 0x4
      jal        func_800DD3C0
       addu      $18, $18, $6
      slt        $2, $18, $17
      bnez       $2, .L800DD770
       addu      $4, $23, $0
  .L800DD794:
      jal        func_80052540
       addu      $4, $20, $0
      jal        func_80052540
       addu      $4, $21, $0
      lw         $31, 0x9C($29)
      lw         $30, 0x98($29)
      lw         $23, 0x94($29)
      lw         $22, 0x90($29)
      lw         $21, 0x8C($29)
      lw         $20, 0x88($29)
      lw         $19, 0x84($29)
      lw         $18, 0x80($29)
      lw         $17, 0x7C($29)
      lw         $16, 0x78($29)
      jr         $31
       addiu     $29, $29, 0xA0
.end func_800DD450

.globl func_800DD7D4
.ent func_800DD7D4
func_800DD7D4:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      beqz       $16, .L800DD844
       sw        $31, 0x18($29)
      lui        $5, %hi(D_800FE700)
      addiu      $5, $5, %lo(D_800FE700)
      addiu      $6, $0, 0x1
      jal        func_800DD3C0
       addu      $7, $17, $0
      addu       $4, $16, $0
      lui        $5, %hi(D_800FE710)
      addiu      $5, $5, %lo(D_800FE710)
      addiu      $6, $0, 0x1
      jal        func_800DD3C0
       addu      $7, $17, $0
      addu       $5, $0, $0
      lw         $4, 0x14($16)
      lw         $2, 0x10($16)
      lw         $6, 0x24($16)
      lw         $2, 0x8($2)
      jalr       $2
       addu      $7, $17, $0
      addiu      $2, $0, 0x1
      j          .L800DD848
       sw        $0, 0x24($16)
  .L800DD844:
      addiu      $2, $0, -0x4
  .L800DD848:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DD7D4

.globl func_800DD85C
.ent func_800DD85C
func_800DD85C:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      addiu      $4, $0, 0x3C
      sw         $31, 0x1C($29)
      jal        func_80052504
       addu      $5, $0, $0
      addu       $3, $2, $0
      beqz       $3, .L800DD8A4
       addiu     $2, $0, 0x1
      sw         $3, 0x0($16)
      sw         $17, 0x0($3)
      j          .L800DD8A8
       sw        $18, 0x1C($3)
  .L800DD8A4:
      addiu      $2, $0, -0x5
  .L800DD8A8:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DD85C

.globl func_800DD8C0
.ent func_800DD8C0
func_800DD8C0:
      addiu      $29, $29, -0x40
      sw         $19, 0x34($29)
      addu       $19, $5, $0
      lw         $2, 0x54($29)
      lw         $3, 0x58($29)
      lw         $5, 0x5C($29)
      sw         $20, 0x38($29)
      addu       $20, $6, $0
      sw         $18, 0x30($29)
      addu       $18, $4, $0
      sw         $31, 0x3C($29)
      sw         $17, 0x2C($29)
      sw         $16, 0x28($29)
      sw         $2, 0x18($18)
      lw         $2, 0x24($18)
      addu       $16, $7, $0
      sw         $0, 0x14($18)
      sw         $3, 0x8($18)
      bnez       $2, .L800DD924
       sw        $5, 0xC($18)
      lui        $2, %hi(D_80125B98)
      lw         $4, %lo(D_80125B98)($2)
      jal        func_8004F788
       nop
      sw         $2, 0x24($18)
  .L800DD924:
      addu       $4, $16, $0
      jal        func_80054604
       addiu     $5, $18, 0x30
      addiu      $17, $18, 0x34
      lw         $4, 0x50($29)
      jal        func_80054604
       addu      $5, $17, $0
      addu       $4, $17, $0
      lui        $16, %hi(D_800FE688)
      addiu      $16, $16, %lo(D_800FE688)
      addu       $5, $16, $0
      jal        func_800545BC
       addiu     $6, $0, -0x1
      addu       $4, $17, $0
      addu       $5, $16, $0
      lui        $6, %hi(D_800FE69C)
      addiu      $6, $6, %lo(D_800FE69C)
      jal        func_80054530
       addiu     $7, $0, -0x1
      lw         $2, 0x14($18)
      beqz       $2, .L800DD988
       nop
      lw         $2, 0x10($18)
      bnez       $2, .L800DDA60
       nop
  .L800DD988:
      lw         $3, 0x0($18)
      beqz       $3, .L800DDA60
       addiu     $2, $18, 0x4
      sw         $2, 0x10($29)
      addiu      $2, $18, 0x10
      addiu      $16, $18, 0x14
      sw         $2, 0x14($29)
      sw         $16, 0x18($29)
      lw         $4, 0x1C($18)
      lw         $5, 0x30($18)
      lw         $6, 0x34($18)
      lw         $2, 0x0($3)
      jalr       $2
       addu      $7, $0, $0
      lw         $3, 0x10($18)
      beql       $3, $0, .L800DDA58
       sw        $0, 0x14($18)
      lw         $2, 0x14($18)
      bnez       $2, .L800DDA04
       nop
      lw         $4, 0x1C($18)
      lw         $5, 0x4($18)
      lw         $2, 0x0($3)
      jalr       $2
       addu      $6, $16, $0
      addiu      $3, $0, 0x1
      bnel       $2, $3, .L800DDA58
       sw        $0, 0x14($18)
      lw         $2, 0x14($18)
      beql       $2, $0, .L800DDA58
       sw        $0, 0x14($18)
  .L800DDA04:
      lw         $6, 0x10($18)
      lw         $2, 0x34($18)
      addu       $5, $19, $0
      sw         $2, 0x10($29)
      lui        $2, %hi(D_80125B90)
      lw         $3, 0x18($18)
      addiu      $2, $2, %lo(D_80125B90)
      sw         $2, 0x18($29)
      sw         $18, 0x1C($29)
      sw         $3, 0x14($29)
      lw         $4, 0x14($18)
      lw         $7, 0x30($18)
      lw         $2, 0x4($6)
      jalr       $2
       addu      $6, $20, $0
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bnel       $3, $2, .L800DDA58
       sw        $0, 0x14($18)
      j          .L800DDA60
       sw        $3, 0x20($18)
  .L800DDA58:
      j          .L800DDA7C
       addiu     $2, $0, -0x1
  .L800DDA60:
      lw         $2, 0x38($18)
      bnez       $2, .L800DDA7C
       addiu     $2, $0, 0x1
      addu       $4, $18, $0
      jal        func_800DD450
       addiu     $5, $29, 0x20
      addiu      $2, $0, 0x1
  .L800DDA7C:
      lw         $31, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800DD8C0

.globl func_800DDA9C
.ent func_800DDA9C
func_800DDA9C:
      addiu      $29, $29, -0x18
      addu       $4, $6, $0
      sw         $31, 0x10($29)
      jal        func_8004F810
       sw        $0, 0x0($7)
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DDA9C

.globl func_800DDAC0
.ent func_800DDAC0
func_800DDAC0:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $31, 0x1C($29)
      beqz       $16, .L800DDAF4
       sw        $0, 0x0($17)
      lw         $2, 0x14($16)
      bnez       $2, .L800DDAFC
       nop
  .L800DDAF4:
      j          .L800DDB44
       addiu     $2, $0, -0x1
  .L800DDAFC:
      lw         $2, 0x38($16)
      beqz       $2, .L800DDB10
       addu      $4, $16, $0
      jal        func_800DD7D4
       addu      $5, $17, $0
  .L800DDB10:
      addu       $5, $18, $0
      lw         $2, 0x10($16)
      lw         $4, 0x14($16)
      lw         $2, 0xC($2)
      jalr       $2
       addu      $6, $17, $0
      lw         $3, 0x0($17)
      addiu      $2, $0, 0x1
      beq        $3, $2, .L800DDB44
       nop
      jal        func_800DDB5C
       addu      $4, $16, $0
      addiu      $2, $0, 0x1
  .L800DDB44:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DDAC0

.globl func_800DDB5C
.ent func_800DDB5C
func_800DDB5C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      bnez       $16, .L800DDB78
       sw        $31, 0x14($29)
      j          .L800DDBD0
       addiu     $2, $0, -0x4
  .L800DDB78:
      lw         $4, 0x24($16)
      beqz       $4, .L800DDB8C
       nop
      jal        func_8004F810
       nop
  .L800DDB8C:
      lw         $4, 0x30($16)
      beqz       $4, .L800DDBA0
       nop
      jal        func_800546DC
       nop
  .L800DDBA0:
      lw         $4, 0x34($16)
      beql       $4, $0, .L800DDBB8
       addu      $4, $16, $0
      jal        func_800546DC
       nop
      addu       $4, $16, $0
  .L800DDBB8:
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x3C
      jal        func_80052540
       addu      $4, $16, $0
      addiu      $2, $0, 0x1
  .L800DDBD0:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DDB5C

.globl func_800DDBE0
.ent func_800DDBE0
func_800DDBE0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x8($4)
      lw         $4, 0xC($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DDBE0

.globl func_800DDC0C
.ent func_800DDC0C
func_800DDC0C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x8($16)
      lw         $4, 0xC($16)
      lw         $2, 0x4($2)
      jalr       $2
       nop
      jal        func_800DDB5C
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DDC0C

.globl func_800DDC4C
.ent func_800DDC4C
func_800DDC4C:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      addiu      $4, $0, 0x18
      addu       $5, $0, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      jal        func_80052504
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L800DDDB8
       addiu     $4, $0, 0x8
      addu       $5, $0, $0
      addiu      $19, $0, 0x1
      jal        func_80052504
       sw        $19, 0x0($16)
      addu       $3, $2, $0
      bnez       $3, .L800DDCB0
       sw        $3, 0x4($16)
  .L800DDCA0:
      jal        func_80052540
       addu      $4, $16, $0
      j          .L800DDDBC
       addiu     $2, $0, -0x5
  .L800DDCB0:
      addiu      $4, $0, 0x10
      addu       $5, $0, $0
      lui        $2, %hi(D_800FE688)
      addiu      $18, $2, %lo(D_800FE688)
      lui        $2, %hi(D_800FE698)
      addiu      $2, $2, %lo(D_800FE698)
      sw         $18, 0x0($3)
      lw         $3, 0x4($16)
      addiu      $20, $0, 0x2
      sw         $2, 0x4($3)
      jal        func_80052504
       sw        $20, 0x8($16)
      beqz       $2, .L800DDCA0
       sw        $2, 0xC($16)
      addiu      $4, $0, 0xC
      addu       $5, $0, $0
      sw         $18, 0x0($2)
      lui        $2, %hi(D_800FE69C)
      lw         $3, 0xC($16)
      addiu      $2, $2, %lo(D_800FE69C)
      sw         $2, 0x4($3)
      lui        $2, %hi(D_800FE6A8)
      lw         $3, 0xC($16)
      addiu      $2, $2, %lo(D_800FE6A8)
      sw         $2, 0x8($3)
      lui        $2, %hi(D_800FE6BC)
      lw         $3, 0xC($16)
      addiu      $2, $2, %lo(D_800FE6BC)
      sw         $2, 0xC($3)
      jal        func_80052504
       sw        $0, 0x10($16)
      addu       $4, $2, $0
      beqz       $4, .L800DDDB8
       addiu     $2, $0, 0x1
      addiu      $3, $0, 0x2000
      sw         $3, 0x0($4)
      lui        $3, %hi(D_80125B80)
      addiu      $3, $3, %lo(D_80125B80)
      sw         $3, 0x4($4)
      addiu      $3, $0, 0x7
      sw         $3, 0x4($17)
      lui        $3, %hi(D_800FE680)
      addiu      $3, $3, %lo(D_800FE680)
      sw         $3, 0x18($17)
      lui        $3, %hi(D_800EC7C0)
      addiu      $3, $3, %lo(D_800EC7C0)
      sw         $3, 0x1C($17)
      lui        $3, %hi(D_800EC7CC)
      addiu      $3, $3, %lo(D_800EC7CC)
      sw         $3, 0x20($17)
      lui        $3, %hi(D_800FE640)
      addiu      $3, $3, %lo(D_800FE640)
      sw         $3, 0x24($17)
      addiu      $3, $0, 0x4
      sw         $20, 0x0($17)
      sw         $16, 0x8($17)
      sw         $19, 0x10($17)
      sw         $4, 0x14($17)
      sw         $0, 0xC($17)
      sh         $3, 0x28($17)
      sh         $0, 0x2A($17)
      sh         $0, 0x2C($17)
      sh         $0, 0x2E($17)
      sw         $0, 0x30($17)
      j          .L800DDDBC
       sh        $19, 0x34($17)
  .L800DDDB8:
      addiu      $2, $0, -0x5
  .L800DDDBC:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800DDC4C

.globl func_800DDDDC
.ent func_800DDDDC
func_800DDDDC:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      beqz       $17, .L800DDE60
       sw        $16, 0x10($29)
      lw         $3, 0x4($17)
      addiu      $2, $0, 0x7
      bne        $3, $2, .L800DDE4C
       nop
      lw         $16, 0x8($17)
      lw         $4, 0x4($16)
      beqz       $4, .L800DDE1C
       nop
      jal        func_80052540
       nop
  .L800DDE1C:
      lw         $4, 0xC($16)
      beqz       $4, .L800DDE30
       nop
      jal        func_80052540
       nop
  .L800DDE30:
      lw         $4, 0x14($16)
      beqz       $4, .L800DDE44
       nop
      jal        func_80052540
       nop
  .L800DDE44:
      jal        func_80052540
       addu      $4, $16, $0
  .L800DDE4C:
      lw         $4, 0x14($17)
      beqz       $4, .L800DDE64
       addiu     $2, $0, 0x1
      jal        func_80052540
       nop
  .L800DDE60:
      addiu      $2, $0, 0x1
  .L800DDE64:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DDDDC

.globl func_800DDE78
.ent func_800DDE78
func_800DDE78:
      lui        $3, %hi(D_80125B98)
      lw         $2, %lo(D_80125B98)($3)
      bnez       $2, .L800DDEA0
       addiu     $2, $0, -0x12
      beqz       $5, .L800DDE98
       addiu     $2, $0, 0x1
      jr         $31
       sw        $5, %lo(D_80125B98)($3)
  .L800DDE98:
      jr         $31
       addiu     $2, $0, -0x4
  .L800DDEA0:
      jr         $31
       nop
.end func_800DDE78

.globl func_800DDEA8
.ent func_800DDEA8
func_800DDEA8:
      lui        $2, %hi(D_80125B98)
      sw         $0, %lo(D_80125B98)($2)
      jr         $31
       addiu     $2, $0, 0x1
.end func_800DDEA8

.globl func_800DDEB8
.ent func_800DDEB8
func_800DDEB8:
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
.end func_800DDEB8

.globl func_800DDEC0
.ent func_800DDEC0
func_800DDEC0:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addiu      $18, $17, 0x24
      addu       $4, $18, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      sw         $16, 0x18($29)
      lw         $2, 0x14($17)
      addu       $16, $6, $0
      sw         $19, 0x14($29)
      sw         $2, 0x10($29)
      lw         $7, 0x10($17)
      jal        func_800DC440
       addiu     $6, $0, -0x1
      andi       $16, $16, 0xFF
      beqz       $16, .L800DDF30
       addu      $4, $18, $0
      lui        $5, %hi(D_800FE8E0)
      lw         $2, 0x14($17)
      addiu      $5, $5, %lo(D_800FE8E0)
      sw         $19, 0x14($29)
      sw         $2, 0x10($29)
      lw         $7, 0x10($17)
      jal        func_800DC440
       addiu     $6, $0, -0x1
  .L800DDF30:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x30
.end func_800DDEC0

.globl func_800DDF50
.ent func_800DDF50
func_800DDF50:
      addiu      $29, $29, -0x88
      sw         $18, 0x78($29)
      addu       $18, $4, $0
      sw         $20, 0x80($29)
      addu       $20, $5, $0
      sw         $19, 0x7C($29)
      addiu      $19, $0, 0x8
      sw         $17, 0x74($29)
      addu       $17, $0, $0
      sw         $16, 0x70($29)
      addiu      $16, $29, 0x10
      addiu      $2, $0, 0x1
      sw         $31, 0x84($29)
      sw         $2, 0x38($18)
      lui        $2, %hi(D_800FE918)
      addiu      $2, $2, %lo(D_800FE918)
      sw         $2, 0x10($29)
      lui        $2, %hi(D_800FE8E4)
      addiu      $2, $2, %lo(D_800FE8E4)
      sw         $2, 0x14($29)
      lui        $2, %hi(D_800FE8F4)
      addiu      $2, $2, %lo(D_800FE8F4)
      sw         $2, 0x18($29)
      lui        $2, %hi(D_800FE980)
      addiu      $2, $2, %lo(D_800FE980)
      sw         $2, 0x1C($29)
      lui        $2, %hi(D_800FE8FC)
      addiu      $2, $2, %lo(D_800FE8FC)
      sw         $2, 0x20($29)
      lui        $2, %hi(D_800FE8EC)
      addiu      $2, $2, %lo(D_800FE8EC)
      sw         $2, 0x24($29)
      lui        $2, %hi(D_800FE908)
      addiu      $2, $2, %lo(D_800FE908)
      sw         $2, 0x28($29)
      lui        $2, %hi(D_800FE958)
      addiu      $2, $2, %lo(D_800FE958)
      sw         $2, 0x2C($29)
      addu       $4, $18, $0
  .L800DDFEC:
      lw         $5, 0x0($16)
      addiu      $16, $16, 0x4
      addiu      $17, $17, 0x1
      addiu      $6, $0, 0x1
      jal        func_800DDEC0
       addu      $7, $20, $0
      slt        $2, $17, $19
      bnez       $2, .L800DDFEC
       addu      $4, $18, $0
      jal        func_80052540
       addu      $4, $0, $0
      lw         $31, 0x84($29)
      lw         $20, 0x80($29)
      lw         $19, 0x7C($29)
      lw         $18, 0x78($29)
      lw         $17, 0x74($29)
      lw         $16, 0x70($29)
      jr         $31
       addiu     $29, $29, 0x88
.end func_800DDF50

.globl func_800DE038
.ent func_800DE038
func_800DE038:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      beqz       $16, .L800DE078
       sw        $31, 0x1C($29)
      lw         $2, 0x14($16)
      sw         $7, 0x14($29)
      sw         $2, 0x10($29)
      lw         $7, 0x10($16)
      jal        func_800DC440
       addiu     $4, $16, 0x24
      lw         $3, 0x28($16)
      addu       $3, $3, $2
      addiu      $2, $0, 0x1
      j          .L800DE07C
       sw        $3, 0x28($16)
  .L800DE078:
      addiu      $2, $0, -0x4
  .L800DE07C:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DE038

.globl func_800DE08C
.ent func_800DE08C
func_800DE08C:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      beqz       $16, .L800DE114
       sw        $31, 0x18($29)
      lui        $5, %hi(D_800FE960)
      addiu      $5, $5, %lo(D_800FE960)
      addiu      $6, $0, 0x1
      jal        func_800DDEC0
       addu      $7, $17, $0
      addu       $4, $16, $0
      lui        $5, %hi(D_800FE910)
      addiu      $5, $5, %lo(D_800FE910)
      addiu      $6, $0, 0x1
      jal        func_800DDEC0
       addu      $7, $17, $0
      addu       $4, $16, $0
      lui        $5, %hi(D_800FE920)
      addiu      $5, $5, %lo(D_800FE920)
      addiu      $6, $0, 0x1
      jal        func_800DDEC0
       addu      $7, $17, $0
      addu       $5, $0, $0
      lw         $4, 0x14($16)
      lw         $2, 0x10($16)
      lw         $6, 0x24($16)
      lw         $2, 0x8($2)
      jalr       $2
       addu      $7, $17, $0
      addiu      $2, $0, 0x1
      j          .L800DE118
       sw        $0, 0x24($16)
  .L800DE114:
      addiu      $2, $0, -0x4
  .L800DE118:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DE08C

.globl func_800DE12C
.ent func_800DE12C
func_800DE12C:
      addiu      $29, $29, -0x50
      sw         $22, 0x40($29)
      addu       $22, $4, $0
      sw         $17, 0x2C($29)
      addu       $17, $5, $0
      sw         $23, 0x44($29)
      addu       $23, $7, $0
      sw         $18, 0x30($29)
      addu       $18, $17, $6
      sw         $31, 0x48($29)
      sw         $21, 0x3C($29)
      sw         $20, 0x38($29)
      sw         $19, 0x34($29)
      sw         $16, 0x28($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      bnez       $22, .L800DE17C
       sw        $0, 0x20($29)
      j          .L800DE290
       addiu     $2, $0, -0x1
  .L800DE17C:
      sll        $4, $6, 1
      addu       $5, $0, $0
      jal        func_800524E8
       sw        $4, 0x1C($29)
      bnez       $2, .L800DE1A8
       sw        $2, 0x18($29)
      j          .L800DE290
       addiu     $2, $0, -0x5
  .L800DE19C:
      lw         $4, 0x18($29)
      j          .L800DE284
       nop
  .L800DE1A8:
      sltu       $2, $17, $18
      beqz       $2, .L800DE268
       addiu     $21, $0, 0x26
      addiu      $20, $0, 0x22
      addiu      $19, $0, 0x3C
  .L800DE1BC:
      lbu        $3, 0x0($17)
      beq        $3, $21, .L800DE210
       slti      $2, $3, 0x27
      beqz       $2, .L800DE1E0
       nop
      beq        $3, $20, .L800DE21C
       addu      $16, $17, $0
      j          .L800DE234
       addiu     $2, $0, 0x1
  .L800DE1E0:
      beq        $3, $19, .L800DE1F8
       addiu     $2, $0, 0x3E
      beq        $3, $2, .L800DE204
       addu      $16, $17, $0
      j          .L800DE234
       addiu     $2, $0, 0x1
  .L800DE1F8:
      lui        $2, %hi(D_800FE968)
      j          .L800DE224
       addiu     $16, $2, %lo(D_800FE968)
  .L800DE204:
      lui        $2, %hi(D_800FE96C)
      j          .L800DE224
       addiu     $16, $2, %lo(D_800FE96C)
  .L800DE210:
      lui        $2, %hi(D_800FE970)
      j          .L800DE224
       addiu     $16, $2, %lo(D_800FE970)
  .L800DE21C:
      lui        $2, %hi(D_800FE978)
      addiu      $16, $2, %lo(D_800FE978)
  .L800DE224:
      jal        func_80017780
       addu      $4, $16, $0
      j          .L800DE238
       sw        $2, 0x10($29)
  .L800DE234:
      sw         $2, 0x10($29)
  .L800DE238:
      addiu      $4, $29, 0x18
      addiu      $5, $29, 0x1C
      addiu      $6, $29, 0x20
      jal        func_800DE9C4
       addu      $7, $16, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800DE19C
       addu      $17, $17, $2
      sltu       $2, $17, $18
      bnez       $2, .L800DE1BC
       nop
  .L800DE268:
      addu       $4, $22, $0
      lw         $5, 0x18($29)
      lw         $6, 0x20($29)
      jal        func_800DE038
       addu      $7, $23, $0
      lw         $4, 0x18($29)
      addu       $16, $2, $0
  .L800DE284:
      jal        func_80052540
       nop
      addu       $2, $16, $0
  .L800DE290:
      lw         $31, 0x48($29)
      lw         $23, 0x44($29)
      lw         $22, 0x40($29)
      lw         $21, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_800DE12C

.globl func_800DE2BC
.ent func_800DE2BC
func_800DE2BC:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      addiu      $4, $0, 0x3C
      sw         $31, 0x1C($29)
      jal        func_80052504
       addu      $5, $0, $0
      addu       $3, $2, $0
      beqz       $3, .L800DE304
       addiu     $2, $0, 0x1
      sw         $3, 0x0($16)
      sw         $17, 0x0($3)
      j          .L800DE308
       sw        $18, 0x1C($3)
  .L800DE304:
      addiu      $2, $0, -0x5
  .L800DE308:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DE2BC

.globl func_800DE320
.ent func_800DE320
func_800DE320:
      addiu      $29, $29, -0x40
      sw         $19, 0x34($29)
      addu       $19, $5, $0
      lw         $2, 0x54($29)
      lw         $3, 0x58($29)
      lw         $5, 0x5C($29)
      sw         $20, 0x38($29)
      addu       $20, $6, $0
      sw         $18, 0x30($29)
      addu       $18, $4, $0
      sw         $31, 0x3C($29)
      sw         $17, 0x2C($29)
      sw         $16, 0x28($29)
      sw         $2, 0x18($18)
      lw         $2, 0x24($18)
      addu       $16, $7, $0
      sw         $0, 0x14($18)
      sw         $3, 0x8($18)
      bnez       $2, .L800DE384
       sw        $5, 0xC($18)
      lui        $2, %hi(D_80125BD8)
      lw         $4, %lo(D_80125BD8)($2)
      jal        func_8004F788
       nop
      sw         $2, 0x24($18)
  .L800DE384:
      addu       $4, $16, $0
      jal        func_80054604
       addiu     $5, $18, 0x30
      addiu      $17, $18, 0x34
      lw         $4, 0x50($29)
      jal        func_80054604
       addu      $5, $17, $0
      addu       $4, $17, $0
      lui        $16, %hi(D_800FE890)
      addiu      $16, $16, %lo(D_800FE890)
      addu       $5, $16, $0
      jal        func_800545BC
       addiu     $6, $0, -0x1
      addu       $4, $17, $0
      addu       $5, $16, $0
      lui        $6, %hi(D_800FE8AC)
      addiu      $6, $6, %lo(D_800FE8AC)
      jal        func_80054530
       addiu     $7, $0, -0x1
      lw         $2, 0x14($18)
      beqz       $2, .L800DE3E8
       nop
      lw         $2, 0x10($18)
      bnez       $2, .L800DE4C0
       nop
  .L800DE3E8:
      lw         $3, 0x0($18)
      beqz       $3, .L800DE4C0
       addiu     $2, $18, 0x4
      sw         $2, 0x10($29)
      addiu      $2, $18, 0x10
      addiu      $16, $18, 0x14
      sw         $2, 0x14($29)
      sw         $16, 0x18($29)
      lw         $4, 0x1C($18)
      lw         $5, 0x30($18)
      lw         $6, 0x34($18)
      lw         $2, 0x0($3)
      jalr       $2
       addu      $7, $0, $0
      lw         $3, 0x10($18)
      beql       $3, $0, .L800DE4B8
       sw        $0, 0x14($18)
      lw         $2, 0x14($18)
      bnez       $2, .L800DE464
       nop
      lw         $4, 0x1C($18)
      lw         $5, 0x4($18)
      lw         $2, 0x0($3)
      jalr       $2
       addu      $6, $16, $0
      addiu      $3, $0, 0x1
      bnel       $2, $3, .L800DE4B8
       sw        $0, 0x14($18)
      lw         $2, 0x14($18)
      beql       $2, $0, .L800DE4B8
       sw        $0, 0x14($18)
  .L800DE464:
      lw         $6, 0x10($18)
      lw         $2, 0x34($18)
      addu       $5, $19, $0
      sw         $2, 0x10($29)
      lui        $2, %hi(D_80125BD0)
      lw         $3, 0x18($18)
      addiu      $2, $2, %lo(D_80125BD0)
      sw         $2, 0x18($29)
      sw         $18, 0x1C($29)
      sw         $3, 0x14($29)
      lw         $4, 0x14($18)
      lw         $7, 0x30($18)
      lw         $2, 0x4($6)
      jalr       $2
       addu      $6, $20, $0
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bnel       $3, $2, .L800DE4B8
       sw        $0, 0x14($18)
      j          .L800DE4C0
       sw        $3, 0x20($18)
  .L800DE4B8:
      j          .L800DE4DC
       addiu     $2, $0, -0x1
  .L800DE4C0:
      lw         $2, 0x38($18)
      bnez       $2, .L800DE4DC
       addiu     $2, $0, 0x1
      addu       $4, $18, $0
      jal        func_800DDF50
       addiu     $5, $29, 0x20
      addiu      $2, $0, 0x1
  .L800DE4DC:
      lw         $31, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800DE320

.globl func_800DE4FC
.ent func_800DE4FC
func_800DE4FC:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $18, 0x18($29)
      addu       $18, $7, $0
      addu       $4, $17, $0
      sw         $31, 0x20($29)
      sw         $16, 0x10($29)
      jal        func_8004FAD0
       sw        $0, 0x0($18)
      addu       $4, $17, $0
      jal        func_8004FA7C
       addu      $16, $2, $0
      addu       $4, $19, $0
      addu       $5, $16, $0
      addu       $6, $2, $0
      jal        func_800DE12C
       addu      $7, $18, $0
      addu       $4, $17, $0
      jal        func_8004F810
       addu      $16, $2, $0
      addu       $2, $16, $0
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800DE4FC

.globl func_800DE578
.ent func_800DE578
func_800DE578:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $31, 0x1C($29)
      beqz       $16, .L800DE5AC
       sw        $0, 0x0($17)
      lw         $2, 0x14($16)
      bnez       $2, .L800DE5B4
       nop
  .L800DE5AC:
      j          .L800DE5FC
       addiu     $2, $0, -0x1
  .L800DE5B4:
      lw         $2, 0x38($16)
      beqz       $2, .L800DE5C8
       addu      $4, $16, $0
      jal        func_800DE08C
       addu      $5, $17, $0
  .L800DE5C8:
      addu       $5, $18, $0
      lw         $2, 0x10($16)
      lw         $4, 0x14($16)
      lw         $2, 0xC($2)
      jalr       $2
       addu      $6, $17, $0
      lw         $3, 0x0($17)
      addiu      $2, $0, 0x1
      beq        $3, $2, .L800DE5FC
       nop
      jal        func_800DE614
       addu      $4, $16, $0
      addiu      $2, $0, 0x1
  .L800DE5FC:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DE578

.globl func_800DE614
.ent func_800DE614
func_800DE614:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      bnez       $16, .L800DE630
       sw        $31, 0x14($29)
      j          .L800DE688
       addiu     $2, $0, -0x4
  .L800DE630:
      lw         $4, 0x24($16)
      beqz       $4, .L800DE644
       nop
      jal        func_8004F810
       nop
  .L800DE644:
      lw         $4, 0x30($16)
      beqz       $4, .L800DE658
       nop
      jal        func_800546DC
       nop
  .L800DE658:
      lw         $4, 0x34($16)
      beql       $4, $0, .L800DE670
       addu      $4, $16, $0
      jal        func_800546DC
       nop
      addu       $4, $16, $0
  .L800DE670:
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x3C
      jal        func_80052540
       addu      $4, $16, $0
      addiu      $2, $0, 0x1
  .L800DE688:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DE614

.globl func_800DE698
.ent func_800DE698
func_800DE698:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x8($4)
      lw         $4, 0xC($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DE698

.globl func_800DE6C4
.ent func_800DE6C4
func_800DE6C4:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x8($16)
      lw         $4, 0xC($16)
      lw         $2, 0x4($2)
      jalr       $2
       nop
      jal        func_800DE614
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DE6C4

.globl func_800DE704
.ent func_800DE704
func_800DE704:
      addiu      $29, $29, -0x30
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $19, 0x1C($29)
      addiu      $19, $0, -0x5
      addiu      $4, $0, 0x18
      addu       $5, $0, $0
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $18, 0x18($29)
      jal        func_80052504
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L800DE888
       addiu     $4, $0, 0x8
      addu       $5, $0, $0
      addiu      $20, $0, 0x1
      jal        func_80052504
       sw        $20, 0x0($16)
      addu       $3, $2, $0
      beqz       $3, .L800DE888
       sw        $3, 0x4($16)
      addiu      $4, $0, 0x10
      addu       $5, $0, $0
      lui        $2, %hi(D_800FE890)
      addiu      $18, $2, %lo(D_800FE890)
      lui        $2, %hi(D_800FE8A0)
      addiu      $2, $2, %lo(D_800FE8A0)
      sw         $18, 0x0($3)
      lw         $3, 0x4($16)
      addiu      $21, $0, 0x2
      sw         $2, 0x4($3)
      jal        func_80052504
       sw        $21, 0x8($16)
      beqz       $2, .L800DE888
       sw        $2, 0xC($16)
      addiu      $4, $0, 0x11
      addu       $5, $0, $0
      sw         $18, 0x0($2)
      lui        $2, %hi(D_800FE8AC)
      lw         $3, 0xC($16)
      addiu      $2, $2, %lo(D_800FE8AC)
      sw         $2, 0x4($3)
      lui        $2, %hi(D_800FE8B8)
      lw         $3, 0xC($16)
      addiu      $2, $2, %lo(D_800FE8B8)
      sw         $2, 0x8($3)
      lui        $2, %hi(D_800FE8CC)
      lw         $3, 0xC($16)
      addiu      $2, $2, %lo(D_800FE8CC)
      sw         $2, 0xC($3)
      jal        func_800524E8
       sw        $20, 0x10($16)
      beqz       $2, .L800DE888
       sw        $2, 0x14($16)
      addu       $4, $2, $0
      lui        $5, %hi(D_800FE880)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800FE880)
      addiu      $4, $0, 0xC
      jal        func_80052504
       addu      $5, $0, $0
      addu       $3, $2, $0
      beqz       $3, .L800DE888
       addiu     $2, $0, 0x2000
      addu       $19, $20, $0
      sw         $2, 0x0($3)
      lui        $2, %hi(D_80125BC0)
      addiu      $2, $2, %lo(D_80125BC0)
      sw         $2, 0x4($3)
      addiu      $2, $0, 0x7
      sw         $2, 0x4($17)
      lui        $2, %hi(D_800FE888)
      addiu      $2, $2, %lo(D_800FE888)
      sw         $2, 0x18($17)
      lui        $2, %hi(D_800EC7C0)
      addiu      $2, $2, %lo(D_800EC7C0)
      sw         $2, 0x1C($17)
      lui        $2, %hi(D_800EC7CC)
      addiu      $2, $2, %lo(D_800EC7CC)
      sw         $2, 0x20($17)
      lui        $2, %hi(D_800FE840)
      addiu      $2, $2, %lo(D_800FE840)
      sw         $2, 0x24($17)
      addiu      $2, $0, 0x4
      sw         $21, 0x0($17)
      sw         $16, 0x8($17)
      sw         $20, 0x10($17)
      sw         $3, 0x14($17)
      sw         $0, 0xC($17)
      sh         $2, 0x28($17)
      sh         $0, 0x2A($17)
      sh         $0, 0x2C($17)
      sh         $0, 0x2E($17)
      sw         $0, 0x30($17)
      sh         $20, 0x34($17)
  .L800DE888:
      addiu      $2, $0, -0x5
      bne        $19, $2, .L800DE8C4
       addu      $2, $19, $0
      lw         $4, 0x14($16)
      jal        func_80052540
       nop
      lw         $4, 0xC($16)
      jal        func_80052540
       nop
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
      addu       $2, $19, $0
  .L800DE8C4:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800DE704

.globl func_800DE8E8
.ent func_800DE8E8
func_800DE8E8:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      beqz       $17, .L800DE96C
       sw        $16, 0x10($29)
      lw         $3, 0x4($17)
      addiu      $2, $0, 0x7
      bne        $3, $2, .L800DE958
       nop
      lw         $16, 0x8($17)
      lw         $4, 0x4($16)
      beqz       $4, .L800DE928
       nop
      jal        func_80052540
       nop
  .L800DE928:
      lw         $4, 0xC($16)
      beqz       $4, .L800DE93C
       nop
      jal        func_80052540
       nop
  .L800DE93C:
      lw         $4, 0x14($16)
      beqz       $4, .L800DE950
       nop
      jal        func_80052540
       nop
  .L800DE950:
      jal        func_80052540
       addu      $4, $16, $0
  .L800DE958:
      lw         $4, 0x14($17)
      beqz       $4, .L800DE970
       addiu     $2, $0, 0x1
      jal        func_80052540
       nop
  .L800DE96C:
      addiu      $2, $0, 0x1
  .L800DE970:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DE8E8

.globl func_800DE984
.ent func_800DE984
func_800DE984:
      lui        $3, %hi(D_80125BD8)
      lw         $2, %lo(D_80125BD8)($3)
      bnez       $2, .L800DE9AC
       addiu     $2, $0, -0x12
      beqz       $5, .L800DE9A4
       addiu     $2, $0, 0x1
      jr         $31
       sw        $5, %lo(D_80125BD8)($3)
  .L800DE9A4:
      jr         $31
       addiu     $2, $0, -0x4
  .L800DE9AC:
      jr         $31
       nop
.end func_800DE984

.globl func_800DE9B4
.ent func_800DE9B4
func_800DE9B4:
      lui        $2, %hi(D_80125BD8)
      sw         $0, %lo(D_80125BD8)($2)
      jr         $31
       addiu     $2, $0, 0x1
.end func_800DE9B4

.globl func_800DE9C4
.ent func_800DE9C4
func_800DE9C4:
      addiu      $29, $29, -0x30
      sw         $19, 0x1C($29)
      lw         $19, 0x40($29)
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $21, 0x24($29)
      sw         $31, 0x28($29)
      sw         $16, 0x10($29)
      lw         $2, 0x0($18)
      lw         $5, 0x0($20)
      addu       $2, $2, $19
      sltu       $2, $5, $2
      beqz       $2, .L800DEA34
       addu      $21, $7, $0
      lw         $4, 0x0($17)
      sll        $5, $5, 1
      addu       $6, $0, $0
      jal        func_80052524
       addu      $16, $5, $0
      bnel       $2, $0, .L800DEA30
       sw        $2, 0x0($17)
      j          .L800DEA5C
       addiu     $2, $0, -0x5
  .L800DEA30:
      sw         $16, 0x0($20)
  .L800DEA34:
      addu       $5, $21, $0
      lw         $2, 0x0($17)
      lw         $4, 0x0($18)
      addu       $6, $19, $0
      jal        func_80052310
       addu      $4, $2, $4
      lw         $3, 0x0($18)
      addiu      $2, $0, 0x1
      addu       $3, $3, $19
      sw         $3, 0x0($18)
  .L800DEA5C:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800DE9C4

.globl func_800DEA80
.ent func_800DEA80
func_800DEA80:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80006584
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DEA80

.globl func_800DEA9C
.ent func_800DEA9C
func_800DEA9C:
      jr         $31
       addu      $2, $0, $0
.end func_800DEA9C

.globl func_800DEAA4
.ent func_800DEAA4
func_800DEAA4:
      sw         $0, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_800DEAA4

.globl func_800DEAB0
.ent func_800DEAB0
func_800DEAB0:
      sw         $0, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_800DEAB0

.globl func_800DEABC
.ent func_800DEABC
func_800DEABC:
      sw         $0, 0x0($4)
      jr         $31
       addu      $2, $0, $0
.end func_800DEABC

.globl func_800DEAC8
.ent func_800DEAC8
func_800DEAC8:
      sw         $0, 0x0($4)
      jr         $31
       addu      $2, $0, $0
.end func_800DEAC8

.globl func_800DEAD4
.ent func_800DEAD4
func_800DEAD4:
      jr         $31
       addu      $2, $0, $0
.end func_800DEAD4

.globl func_800DEADC
.ent func_800DEADC
func_800DEADC:
      jr         $31
       addu      $2, $0, $0
.end func_800DEADC

.globl func_800DEAE4
.ent func_800DEAE4
func_800DEAE4:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      lui        $2, %hi(D_80125C94)
      sw         $31, 0x14($29)
      sb         $0, 0x12($16)
      lw         $2, %lo(D_80125C94)($2)
      bnez       $2, .L800DEB18
       addiu     $2, $0, 0x4
      lui        $2, %hi(D_80125C9C)
      lw         $2, %lo(D_80125C9C)($2)
      beqz       $2, .L800DEB1C
       addiu     $2, $0, 0x4
  .L800DEB18:
      sb         $2, 0x12($16)
  .L800DEB1C:
      lui        $2, %hi(D_80125C98)
      lw         $2, %lo(D_80125C98)($2)
      beqz       $2, .L800DEB38
       nop
      lbu        $2, 0x12($16)
      ori        $2, $2, 0x2
      sb         $2, 0x12($16)
  .L800DEB38:
      jal        func_800DFDB8
       nop
      sh         $2, 0xE($16)
      addiu      $2, $0, 0x1
      sb         $2, 0x10($16)
      addiu      $2, $0, 0x1
      sh         $2, 0x0($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DEAE4

.globl func_800DEB64
.ent func_800DEB64
func_800DEB64:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      addu       $4, $17, $0
      lui        $2, %hi(D_80137108)
      sw         $18, 0x20($29)
      addiu      $18, $2, %lo(D_80137108)
      lui        $2, %hi(D_800FEF7C)
      sw         $31, 0x28($29)
      sw         $19, 0x24($29)
      sw         $16, 0x18($29)
      sw         $0, 0x10($29)
      sh         $0, 0x0($17)
      sb         $0, 0x10($17)
      sh         $0, 0xC($17)
      sb         $0, 0x12($17)
      sb         $0, 0x11($17)
      sb         $0, 0x980($18)
      jal        func_800DF4A8
       sw        $0, %lo(D_800FEF7C)($2)
      andi       $2, $2, 0xFF
      addiu      $16, $0, 0x1
      beq        $2, $16, .L800DECFC
       addu      $4, $17, $0
      jal        func_800DED1C
       addiu     $5, $29, 0x10
      andi       $2, $2, 0xFF
      bnez       $2, .L800DEBF0
       lui       $2, %hi(D_80137734)
      lbu        $2, 0x5B($18)
      bne        $2, $16, .L800DEBF0
       lui       $2, %hi(D_80137734)
      jal        func_800DF174
       addu      $4, $17, $0
      lui        $2, %hi(D_80137734)
  .L800DEBF0:
      lw         $3, %lo(D_80137734)($2)
      beqz       $3, .L800DEC4C
       ori       $2, $0, 0xFD75
      bltz       $3, .L800DECFC
       slti      $2, $3, 0x6
      beqz       $2, .L800DECFC
       slti      $2, $3, 0x3
      bnez       $2, .L800DED00
       addu      $2, $0, $0
      lhu        $3, 0xC($17)
      ori        $2, $0, 0xFD76
      slt        $2, $2, $3
      bnez       $2, .L800DED00
       addu      $2, $0, $0
      ori        $2, $0, 0xFD74
      slt        $2, $3, $2
      bnez       $2, .L800DED00
       addu      $2, $0, $0
      sh         $0, 0x0($17)
      sb         $0, 0x10($17)
      sh         $0, 0xC($17)
      j          .L800DED00
       sb        $0, 0x12($17)
  .L800DEC4C:
      lhu        $3, 0xC($17)
      beq        $3, $2, .L800DEC94
       slt       $2, $2, $3
      bnez       $2, .L800DEC74
       ori       $2, $0, 0xFD78
      ori        $2, $0, 0xFD74
      beq        $3, $2, .L800DEC88
       addu      $16, $0, $0
      j          .L800DEC9C
       nop
  .L800DEC74:
      bne        $3, $2, .L800DEC9C
       addu      $16, $0, $0
      lui        $2, %hi(D_800FEA00)
      j          .L800DEC9C
       addiu     $16, $2, %lo(D_800FEA00)
  .L800DEC88:
      lui        $2, %hi(D_800FEA08)
      j          .L800DEC9C
       addiu     $16, $2, %lo(D_800FEA08)
  .L800DEC94:
      lui        $2, %hi(D_800FEA10)
      addiu      $16, $2, %lo(D_800FEA10)
  .L800DEC9C:
      beqz       $16, .L800DED00
       addu      $2, $0, $0
      jal        func_80006584
       lui       $19, %hi(D_80125C04)
      lw         $3, %lo(D_80125C04)($19)
      addu       $18, $2, $0
      subu       $3, $18, $3
      sltiu      $3, $3, 0x7D0
      beqz       $3, .L800DECE8
       lui       $4, %hi(D_800FEA18)
      addiu      $4, $4, %lo(D_800FEA18)
      addu       $5, $16, $0
      sh         $0, 0x0($17)
      sb         $0, 0x10($17)
      sh         $0, 0xC($17)
      jal        func_800009D8
       sb        $0, 0x12($17)
      j          .L800DED00
       addu      $2, $0, $0
  .L800DECE8:
      lui        $4, %hi(D_800FEA2C)
      addiu      $4, $4, %lo(D_800FEA2C)
      jal        func_800009D8
       addu      $5, $16, $0
      sw         $18, %lo(D_80125C04)($19)
  .L800DECFC:
      addu       $2, $0, $0
  .L800DED00:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800DEB64

.globl func_800DED1C
.ent func_800DED1C
func_800DED1C:
      addiu      $29, $29, -0x30
      sw         $21, 0x24($29)
      addu       $21, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $19, 0x1C($29)
      addu       $19, $17, $0
      sw         $31, 0x28($29)
      sw         $18, 0x18($29)
      jal        func_80006584
       sw        $16, 0x10($29)
      lui        $3, %hi(D_80132980)
      lw         $3, %lo(D_80132980)($3)
      addu       $18, $2, $0
      addiu      $3, $3, 0x14
      sltu       $3, $18, $3
      bnez       $3, .L800DF150
       addu      $2, $0, $0
      lui        $2, %hi(D_80125C0C)
      lbu        $3, %lo(D_80125C0C)($2)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800DEE10
       lui       $2, %hi(D_80125C10)
      lw         $2, %lo(D_80125C10)($2)
      addiu      $2, $2, 0x7D0
      sltu       $2, $18, $2
      beqz       $2, .L800DEE04
       addu      $16, $0, $0
      jal        func_8001B504
       nop
      addu       $16, $2, $0
      lui        $4, (0xFFFF0000 >> 16)
      lui        $2, %hi(D_80125C08)
      lw         $2, %lo(D_80125C08)($2)
      and        $3, $16, $4
      and        $2, $2, $4
      bne        $3, $2, .L800DEE08
       lui       $2, %hi(D_80125C0C)
      jal        func_80006584
       nop
      lui        $3, %hi(D_80125C14)
      lw         $3, %lo(D_80125C14)($3)
      beqz       $3, .L800DEDE4
       addu      $18, $2, $0
      lui        $2, %hi(D_80133ACC)
      lw         $3, %lo(D_80133ACC)($2)
      j          .L800DEDF0
       lui       $2, %hi(D_80125C10)
  .L800DEDE4:
      lui        $2, %hi(D_80133AC8)
      lw         $3, %lo(D_80133AC8)($2)
      lui        $2, %hi(D_80125C10)
  .L800DEDF0:
      lw         $2, %lo(D_80125C10)($2)
      subu       $2, $18, $2
      sltu       $2, $2, $3
      bnez       $2, .L800DF150
       addu      $2, $0, $0
  .L800DEE04:
      lui        $2, %hi(D_80125C0C)
  .L800DEE08:
      j          .L800DEE20
       sb        $0, %lo(D_80125C0C)($2)
  .L800DEE10:
      jal        func_8001B504
       nop
      addu       $16, $2, $0
      sw         $2, 0x0($20)
  .L800DEE20:
      srl        $5, $16, 8
      lui        $2, %hi(D_80132980)
      sw         $18, %lo(D_80132980)($2)
      lui        $2, %hi(D_80137108)
      addiu      $2, $2, %lo(D_80137108)
      sw         $0, 0x68($2)
      sw         $0, 0x64($2)
      lui        $2, (0x200000 >> 16)
      and        $2, $16, $2
      beqz       $2, .L800DEE54
       addu      $4, $16, $0
      j          .L800DEE68
       ori       $17, $0, 0xFD74
  .L800DEE54:
      lui        $2, (0x100000 >> 16)
      and        $2, $16, $2
      beqz       $2, .L800DEE78
       lui       $2, (0x80000 >> 16)
      ori        $17, $0, 0xFD75
  .L800DEE68:
      lui        $3, %hi(D_80125C0C)
      addiu      $2, $0, 0x1
      sb         $2, %lo(D_80125C0C)($3)
      lui        $2, (0x80000 >> 16)
  .L800DEE78:
      and        $2, $16, $2
      beqz       $2, .L800DEE8C
       lui       $2, (0x40000 >> 16)
      j          .L800DEEC4
       ori       $17, $0, 0xFD26
  .L800DEE8C:
      and        $2, $16, $2
      beqz       $2, .L800DEEA0
       lui       $2, (0x20000 >> 16)
      j          .L800DEEC4
       ori       $17, $0, 0xFD28
  .L800DEEA0:
      and        $2, $16, $2
      beqz       $2, .L800DEEB4
       lui       $2, (0x10000 >> 16)
      j          .L800DEEC4
       ori       $17, $0, 0xFD25
  .L800DEEB4:
      and        $2, $16, $2
      beqz       $2, .L800DEED4
       lui       $2, (0x2000000 >> 16)
      ori        $17, $0, 0xFD27
  .L800DEEC4:
      lui        $3, %hi(D_80125C0C)
      addiu      $2, $0, 0x1
      sb         $2, %lo(D_80125C0C)($3)
      lui        $2, (0x2000000 >> 16)
  .L800DEED4:
      and        $2, $16, $2
      beqz       $2, .L800DEEE8
       addu      $3, $0, $0
      j          .L800DEF24
       ori       $17, $0, 0xFD64
  .L800DEEE8:
      lui        $2, (0x1000000 >> 16)
      and        $2, $16, $2
      beqz       $2, .L800DEF00
       lui       $2, (0x8000000 >> 16)
      j          .L800DEF24
       ori       $17, $0, 0xFD66
  .L800DEF00:
      and        $2, $16, $2
      beqz       $2, .L800DEF14
       lui       $2, (0x4000000 >> 16)
      j          .L800DEF24
       ori       $17, $0, 0xFD68
  .L800DEF14:
      and        $2, $16, $2
      beqz       $2, .L800DEF2C
       andi      $2, $3, 0xFF
      ori        $17, $0, 0xFD62
  .L800DEF24:
      addiu      $3, $0, 0x1
      andi       $2, $3, 0xFF
  .L800DEF2C:
      beqz       $2, .L800DEF48
       lui       $2, (0x20000000 >> 16)
      and        $2, $16, $2
      bnez       $2, .L800DEF54
       nop
      j          .L800DEF54
       ori       $19, $19, 0x2
  .L800DEF48:
      and        $2, $16, $2
      bnel       $2, $0, .L800DEF54
       ori       $19, $19, 0x2
  .L800DEF54:
      bgez       $16, .L800DEF70
       sll       $2, $4, 24
      ori        $17, $0, 0xFD0D
      lui        $3, %hi(D_80125C0C)
      addiu      $2, $0, 0x1
      sb         $2, %lo(D_80125C0C)($3)
      sll        $2, $4, 24
  .L800DEF70:
      sra        $3, $2, 24
      slti       $2, $3, 0xC
      bnez       $2, .L800DEFA0
       slti      $2, $3, -0xB
      ori        $17, $0, 0xFD65
      lui        $2, %hi(D_80137170)
      addiu      $3, $3, -0xC
      srl        $4, $3, 31
      addu       $3, $3, $4
      sra        $3, $3, 1
      j          .L800DEFC4
       nor       $3, $0, $3
  .L800DEFA0:
      beqz       $2, .L800DEFC8
       lui       $2, %hi(D_80137170)
      ori        $17, $0, 0xFD65
      negu       $3, $3
      addiu      $3, $3, -0xC
      srl        $4, $3, 31
      addu       $3, $3, $4
      sra        $3, $3, 1
      addiu      $3, $3, 0x1
  .L800DEFC4:
      sw         $3, %lo(D_80137170)($2)
  .L800DEFC8:
      sll        $2, $5, 24
      sra        $3, $2, 24
      slti       $2, $3, 0xC
      bnez       $2, .L800DEFFC
       slti      $2, $3, -0xB
      ori        $17, $0, 0xFD65
      lui        $2, %hi(D_8013716C)
      addiu      $3, $3, -0xC
      srl        $4, $3, 31
      addu       $3, $3, $4
      sra        $3, $3, 1
      j          .L800DF020
       addiu     $3, $3, 0x1
  .L800DEFFC:
      beqz       $2, .L800DF024
       lui       $2, %hi(D_8013716C)
      ori        $17, $0, 0xFD65
      negu       $3, $3
      addiu      $3, $3, -0xC
      srl        $4, $3, 31
      addu       $3, $3, $4
      sra        $3, $3, 1
      nor        $3, $0, $3
  .L800DF020:
      sw         $3, %lo(D_8013716C)($2)
  .L800DF024:
      andi       $2, $19, 0x2
      beqz       $2, .L800DF054
       lui       $4, %hi(D_80137108)
      addiu      $4, $4, %lo(D_80137108)
      lw         $3, 0x64($4)
      sll        $2, $3, 1
      addu       $2, $2, $3
      sll        $3, $2, 1
      sll        $2, $2, 2
      addu       $2, $2, $3
      sll        $2, $2, 1
      sw         $2, 0x64($4)
  .L800DF054:
      lui        $2, (0x10000000 >> 16)
      and        $2, $16, $2
      beqz       $2, .L800DF084
       lui       $2, %hi(D_80137734)
      lw         $3, %lo(D_80137734)($2)
      addiu      $2, $0, 0x7
      beq        $3, $2, .L800DF084
       lui       $3, %hi(D_80125C0C)
      addu       $19, $0, $0
      ori        $17, $0, 0xFDA4
      addiu      $2, $0, 0x1
      sb         $2, %lo(D_80125C0C)($3)
  .L800DF084:
      lui        $2, (0x40000000 >> 16)
      and        $2, $16, $2
      beqz       $2, .L800DF0A4
       lui       $3, %hi(D_80125C0C)
      addu       $19, $0, $0
      ori        $17, $0, 0xFD1B
      addiu      $2, $0, 0x1
      sb         $2, %lo(D_80125C0C)($3)
  .L800DF0A4:
      jal        func_80003AE8
       nop
      andi       $2, $2, 0xFF
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800DF0E0
       lui       $2, %hi(D_80125C08)
      lui        $3, (0x20080000 >> 16)
      and        $2, $16, $3
      bne        $2, $3, .L800DF0E0
       lui       $2, %hi(D_80125C08)
      lui        $2, %hi(D_80111F00)
      lw         $4, %lo(D_80111F00)($2)
      jal        func_8000D830
       nop
      lui        $2, %hi(D_80125C08)
  .L800DF0E0:
      lw         $3, %lo(D_80125C08)($2)
      lui        $2, (0xFFFF0000 >> 16)
      and        $3, $3, $2
      and        $2, $16, $2
      bne        $3, $2, .L800DF10C
       lui       $2, %hi(D_80125C14)
      lui        $3, %hi(D_80125C14)
      lw         $2, %lo(D_80125C14)($3)
      addiu      $2, $2, 0x1
      j          .L800DF110
       sw        $2, %lo(D_80125C14)($3)
  .L800DF10C:
      sw         $0, %lo(D_80125C14)($2)
  .L800DF110:
      lui        $2, %hi(D_80125C08)
      bnez       $17, .L800DF12C
       sw        $16, %lo(D_80125C08)($2)
      lui        $2, %hi(D_80137168)
      sb         $0, %lo(D_80137168)($2)
      j          .L800DF150
       addu      $2, $0, $0
  .L800DF12C:
      addiu      $2, $0, 0x1
      sh         $2, 0x0($21)
      sb         $2, 0x10($21)
      sh         $17, 0xC($21)
      jal        func_80006584
       sb        $19, 0x12($21)
      lui        $3, %hi(D_80125C10)
      sw         $2, %lo(D_80125C10)($3)
      addiu      $2, $0, 0x1
  .L800DF150:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800DED1C

.globl func_800DF174
.ent func_800DF174
func_800DF174:
      addiu      $29, $29, -0x98
      sw         $21, 0x8C($29)
      addu       $21, $4, $0
      sw         $19, 0x84($29)
      addu       $19, $0, $0
      sw         $18, 0x80($29)
      addu       $18, $19, $0
      sw         $31, 0x90($29)
      sw         $20, 0x88($29)
      sw         $17, 0x7C($29)
      jal        func_80006584
       sw        $16, 0x78($29)
      lui        $17, %hi(D_80125C5C)
      lw         $3, %lo(D_80125C5C)($17)
      addu       $16, $2, $0
      subu       $3, $16, $3
      sltiu      $3, $3, 0x8
      bnez       $3, .L800DF484
       addu      $2, $19, $0
      jal        func_8000E2B0
       nop
      beqz       $2, .L800DF478
       addu      $2, $0, $0
      jal        func_8000DB04
       addu      $4, $0, $0
      addu       $3, $2, $0
      andi       $2, $3, 0x1
      bnel       $2, $0, .L800DF1E8
       addiu     $18, $0, 0x1
  .L800DF1E8:
      andi       $2, $3, 0x2
      bnel       $2, $0, .L800DF1F4
       ori       $18, $18, 0x4
  .L800DF1F4:
      andi       $2, $3, 0x4
      bnel       $2, $0, .L800DF200
       ori       $18, $18, 0x2
  .L800DF200:
      andi       $2, $3, 0x10
      bnel       $2, $0, .L800DF20C
       ori       $18, $18, 0x8
  .L800DF20C:
      jal        func_8000DCA8
       nop
      lui        $4, %hi(D_80125C60)
      sw         $16, %lo(D_80125C5C)($17)
      addu       $16, $2, $0
      lw         $3, %lo(D_80125C60)($4)
      lui        $2, %hi(D_800FEF65)
      addiu      $3, $3, 0x1
      sw         $3, %lo(D_80125C60)($4)
      lbu        $4, %lo(D_800FEF65)($2)
      addiu      $2, $0, 0x1
      bne        $4, $2, .L800DF310
       andi      $2, $16, 0xFFFF
      bnez       $16, .L800DF258
       lui       $3, %hi(D_80125C64)
      lui        $2, %hi(D_8010DD80)
      lw         $2, %lo(D_8010DD80)($2)
      beqz       $2, .L800DF310
       andi      $2, $16, 0xFFFF
  .L800DF258:
      lbu        $2, %lo(D_80125C64)($3)
      bnel       $2, $0, .L800DF294
       addiu     $4, $29, 0x38
      sb         $4, %lo(D_80125C64)($3)
      addiu      $4, $0, 0x12
      addiu      $5, $0, 0x1E
      addiu      $6, $0, 0x208
      jal        func_80003DEC
       addiu     $7, $0, 0xAA
      jal        func_80003F18
       addiu     $4, $0, 0xA
      lui        $4, %hi(func_80003F30)
      jal        func_80003F00
       addiu     $4, $4, %lo(func_80003F30)
      addiu      $4, $29, 0x38
  .L800DF294:
      lui        $5, %hi(D_800FEA38)
      lui        $2, %hi(D_8010DD84)
      lui        $3, %hi(D_8010DD88)
      lw         $6, %lo(D_8010DD84)($2)
      addiu      $2, $3, %lo(D_8010DD88)
      lbu        $7, %lo(D_8010DD88)($3)
      lbu        $3, 0x1($2)
      lbu        $8, 0x2($2)
      lbu        $9, 0x3($2)
      lbu        $10, 0x4($2)
      lbu        $11, 0x5($2)
      lbu        $12, 0x6($2)
      lbu        $13, 0x7($2)
      lbu        $14, 0x8($2)
      lbu        $2, 0x9($2)
      addiu      $5, $5, %lo(D_800FEA38)
      sw         $3, 0x10($29)
      sw         $8, 0x14($29)
      sw         $9, 0x18($29)
      sw         $10, 0x1C($29)
      sw         $11, 0x20($29)
      sw         $12, 0x24($29)
      sw         $13, 0x28($29)
      sw         $14, 0x2C($29)
      jal        func_80016580
       sw        $2, 0x30($29)
      jal        func_80003BB4
       addiu     $4, $29, 0x38
      jal        func_80000AAC
       addiu     $4, $29, 0x38
      andi       $2, $16, 0xFFFF
  .L800DF310:
      sltiu      $2, $2, 0x21
      beqz       $2, .L800DF334
       lui       $3, %hi(D_80125C18)
      addiu      $3, $3, %lo(D_80125C18)
      sll        $2, $16, 1
      addu       $2, $2, $3
      lhu        $19, 0x0($2)
      j          .L800DF348
       andi      $3, $18, 0x6
  .L800DF334:
      jal        func_800E00C0
       addu      $4, $16, $0
      bnel       $2, $0, .L800DF344
       addu      $19, $16, $0
  .L800DF344:
      andi       $3, $18, 0x6
  .L800DF348:
      addiu      $2, $0, 0x6
      bne        $3, $2, .L800DF370
       lui       $2, %hi(D_8010DD84)
      jal        func_80017980
       addu      $4, $16, $0
      addiu      $3, $0, 0x41
      bne        $2, $3, .L800DF370
       lui       $2, %hi(D_8010DD84)
      ori        $19, $0, 0xFDF3
      addu       $18, $0, $0
  .L800DF370:
      lw         $3, %lo(D_8010DD84)($2)
      beqz       $3, .L800DF420
       lui       $2, %hi(D_80137108)
      addiu      $17, $2, %lo(D_80137108)
      lw         $2, 0x62C($17)
      bnez       $2, .L800DF420
       nop
      addiu      $20, $0, 0x1
      beq        $3, $20, .L800DF3A8
       addiu     $2, $0, 0x2
      beq        $3, $2, .L800DF3D0
       lui       $4, %hi(D_800FEA88)
      j          .L800DF420
       nop
  .L800DF3A8:
      lui        $4, %hi(D_800FEA70)
      jal        func_80000AAC
       addiu     $4, $4, %lo(D_800FEA70)
      addiu      $4, $17, 0x286
      addiu      $5, $17, 0x84
      jal        func_80052310
       addiu     $6, $0, 0x100
      sb         $0, 0x385($17)
      j          .L800DF420
       sb        $20, 0x495($17)
  .L800DF3D0:
      jal        func_80000AAC
       addiu     $4, $4, %lo(D_800FEA88)
      lui        $16, %hi(D_800FED48)
      addiu      $16, $16, %lo(D_800FED48)
      addu       $4, $16, $0
      addiu      $5, $17, 0x84
      addiu      $6, $0, 0x100
      lui        $3, %hi(D_800FEF5C)
      lui        $2, %hi(func_80004558)
      addiu      $2, $2, %lo(func_80004558)
      jal        func_80052310
       sw        $2, %lo(D_800FEF5C)($3)
      addiu      $4, $17, 0x286
      lui        $5, %hi(D_800FEFC0)
      addiu      $5, $5, %lo(D_800FEFC0)
      addiu      $6, $0, 0x100
      sb         $0, 0xFF($16)
      jal        func_80052310
       sb        $20, 0x495($17)
      sb         $0, 0x385($17)
  .L800DF420:
      beqz       $19, .L800DF474
       lui       $4, %hi(D_800FEAA8)
      addiu      $4, $4, %lo(D_800FEAA8)
      addu       $5, $19, $0
      addiu      $2, $0, 0x1
      sb         $2, 0x10($21)
      addiu      $2, $0, 0x1
      sh         $2, 0x0($21)
      sh         $19, 0xC($21)
      jal        func_8001E190
       sb        $18, 0x12($21)
      ori        $2, $0, 0xFD7B
      bne        $19, $2, .L800DF484
       addiu     $2, $0, 0x1
      andi       $2, $18, 0x2
      beqz       $2, .L800DF484
       addiu     $2, $0, 0x1
      jal        func_80003B00
       nop
      j          .L800DF484
       addiu     $2, $0, 0x1
  .L800DF474:
      addu       $2, $0, $0
  .L800DF478:
      sh         $0, 0x0($21)
      sb         $0, 0x10($21)
      sh         $0, 0x0($21)
  .L800DF484:
      lw         $31, 0x90($29)
      lw         $21, 0x8C($29)
      lw         $20, 0x88($29)
      lw         $19, 0x84($29)
      lw         $18, 0x80($29)
      lw         $17, 0x7C($29)
      lw         $16, 0x78($29)
      jr         $31
       addiu     $29, $29, 0x98
.end func_800DF174

.globl func_800DF4A8
.ent func_800DF4A8
func_800DF4A8:
      addiu      $29, $29, -0x30
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $0, $0
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      jal        func_80006584
       sw        $16, 0x10($29)
      lui        $17, %hi(D_80137108)
      addiu      $16, $17, %lo(D_80137108)
      lw         $3, 0x970($16)
      subu       $2, $2, $3
      sltiu      $2, $2, 0x1F4
      bnez       $2, .L800DF8D8
       addu      $21, $18, $0
      lw         $2, 0x968($16)
      beqz       $2, .L800DF8DC
       addu      $2, $0, $0
      jal        func_800083E8
       nop
      lbu        $2, 0x628($16)
      addiu      $4, $0, 0x1
      bne        $2, $4, .L800DF538
       addiu     $2, $0, 0x8
      ori        $18, $0, 0xFDFE
      lui        $3, %hi(D_800FEF5C)
      sw         $2, 0x62C($16)
      lui        $2, %hi(func_800044DC)
      addiu      $2, $2, %lo(func_800044DC)
      sb         $0, 0x628($16)
      sw         $2, %lo(D_800FEF5C)($3)
      j          .L800DF7F0
       sb        $4, 0x49D($16)
  .L800DF538:
      lbu        $2, 0x489($16)
      bne        $2, $4, .L800DF578
       nop
      jal        func_8001CACC
       addiu     $4, $0, 0x1F40
      lw         $4, 0x28($16)
      beqz       $4, .L800DF570
       addu      $5, $0, $0
      lw         $3, %lo(D_80137108)($17)
      lw         $2, 0x4($16)
      mult       $3, $2
      mflo       $7
      jal        func_80016140
       sll       $6, $7, 1
  .L800DF570:
      j          .L800DF7F0
       sb        $0, 0x489($16)
  .L800DF578:
      lbu        $2, 0x486($16)
      bne        $2, $4, .L800DF598
       addiu     $2, $0, 0x7
      lw         $3, 0x62C($16)
      bnel       $3, $2, .L800DF590
       ori       $18, $0, 0xFDFF
  .L800DF590:
      j          .L800DF7F0
       sb        $0, 0x486($16)
  .L800DF598:
      lbu        $2, 0x487($16)
      bne        $2, $4, .L800DF5B4
       nop
      ori        $18, $0, 0xFDF7
      sb         $0, 0x487($16)
      j          .L800DF7F0
       sb        $4, 0x49D($16)
  .L800DF5B4:
      lbu        $2, 0x57($16)
      bne        $2, $4, .L800DF5D4
       nop
      jal        func_80003688
       nop
      sb         $2, 0x54($16)
      j          .L800DF7F0
       sb        $0, 0x57($16)
  .L800DF5D4:
      lbu        $3, 0x284($16)
      bne        $3, $4, .L800DF604
       lui       $2, %hi(D_80137108)
      lui        $2, %hi(D_80111F00)
      lw         $2, %lo(D_80111F00)($2)
      beqz       $2, .L800DF604
       lui       $2, %hi(D_80137108)
      ori        $18, $0, 0xFD7B
      sb         $0, 0x284($16)
      sb         $3, 0x285($16)
      j          .L800DF7F4
       sb        $3, 0x49D($16)
  .L800DF604:
      addiu      $16, $2, %lo(D_80137108)
      lbu        $2, 0x4A1($16)
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800DF628
       nop
      ori        $18, $0, 0xFD7B
      sb         $0, 0x4A1($16)
      j          .L800DF7F0
       sb        $3, 0x49D($16)
  .L800DF628:
      lbu        $2, 0x495($16)
      bne        $2, $3, .L800DF644
       addiu     $17, $0, 0x1
      ori        $18, $0, 0xFDFE
      sb         $0, 0x495($16)
      j          .L800DF7F0
       sb        $3, 0x49D($16)
  .L800DF644:
      lbu        $2, 0x496($16)
      bnel       $2, $17, .L800DF664
       addiu     $17, $0, 0x1
      jal        func_80003524
       nop
      sb         $17, 0x486($16)
      j          .L800DF7F0
       sb        $0, 0x496($16)
  .L800DF664:
      lbu        $2, 0x497($16)
      bne        $2, $17, .L800DF67C
       nop
      ori        $18, $0, 0xFD69
      j          .L800DF7F0
       sb        $0, 0x497($16)
  .L800DF67C:
      lbu        $2, 0x494($16)
      bnel       $2, $17, .L800DF6AC
       addiu     $17, $0, 0x1
      jal        func_8003C8F8
       nop
      andi       $2, $2, 0xFF
      bne        $2, $17, .L800DF7F4
       lui       $2, %hi(D_80137108)
      ori        $18, $0, 0xFDFD
      sb         $0, 0x494($16)
      j          .L800DF7F4
       sb        $17, 0x49D($16)
  .L800DF6AC:
      lbu        $2, 0x498($16)
      bne        $2, $17, .L800DF6C8
       nop
      ori        $18, $0, 0xFDFC
      sb         $0, 0x498($16)
      j          .L800DF7F0
       sb        $17, 0x49D($16)
  .L800DF6C8:
      lbu        $2, 0x499($16)
      bne        $2, $17, .L800DF6E4
       nop
      ori        $18, $0, 0xFDFB
      sb         $0, 0x499($16)
      j          .L800DF7F0
       sb        $17, 0x49D($16)
  .L800DF6E4:
      lbu        $2, 0x49A($16)
      bne        $2, $17, .L800DF734
       lui       $4, %hi(D_800FEAB8)
      jal        func_80000AAC
       addiu     $4, $4, %lo(D_800FEAB8)
      lui        $19, %hi(D_80125C64 + 0x1)
      lbu        $2, %lo(D_80125C64 + 0x1)($19)
      beql       $2, $17, .L800DF720
       ori       $18, $0, 0xFDFA
      jal        func_8003C8F8
       nop
      andi       $2, $2, 0xFF
      bne        $2, $17, .L800DF7F4
       lui       $2, %hi(D_80137108)
      ori        $18, $0, 0xFDFA
  .L800DF720:
      addu       $21, $0, $0
      sb         $0, 0x49A($16)
      sb         $17, 0x49D($16)
      j          .L800DF7F0
       sb        $0, %lo(D_80125C64 + 0x1)($19)
  .L800DF734:
      lbu        $2, 0x49B($16)
      bne        $2, $17, .L800DF750
       nop
      ori        $18, $0, 0xFDF5
      sb         $0, 0x49B($16)
      j          .L800DF7F0
       sb        $17, 0x49D($16)
  .L800DF750:
      lbu        $2, 0x49C($16)
      bne        $2, $17, .L800DF768
       nop
      ori        $18, $0, 0xFDF9
      j          .L800DF7F0
       sb        $0, 0x49C($16)
  .L800DF768:
      lbu        $2, 0x4A3($16)
      bne        $2, $17, .L800DF784
       nop
      ori        $18, $0, 0xFDF8
      sb         $0, 0x4A3($16)
      j          .L800DF7F0
       sb        $17, 0x49D($16)
  .L800DF784:
      lbu        $2, 0x49F($16)
      bne        $2, $17, .L800DF7A0
       nop
      ori        $18, $0, 0xFDA4
      sb         $0, 0x49F($16)
      j          .L800DF7F0
       sb        $17, 0x49D($16)
  .L800DF7A0:
      lbu        $2, 0x4A2($16)
      bne        $2, $17, .L800DF7B8
       nop
      ori        $18, $0, 0xFDF4
      j          .L800DF7F0
       sb        $0, 0x4A2($16)
  .L800DF7B8:
      lw         $2, 0x48C($16)
      beqz       $2, .L800DF7D8
       nop
      lw         $21, 0x490($16)
      addu       $18, $2, $0
      sw         $0, 0x48C($16)
      j          .L800DF7F0
       sw        $0, 0x490($16)
  .L800DF7D8:
      lbu        $3, 0x5C($16)
      bne        $3, $17, .L800DF7F4
       lui       $2, %hi(D_80137108)
      lui        $2, %hi(D_80125C02)
      sb         $3, %lo(D_80125C02)($2)
      sb         $0, 0x5C($16)
  .L800DF7F0:
      lui        $2, %hi(D_80137108)
  .L800DF7F4:
      addiu      $3, $2, %lo(D_80137108)
      lbu        $4, 0x4A0($3)
      addiu      $2, $0, 0x1
      bne        $4, $2, .L800DF830
       lui       $2, %hi(D_80133AA8)
      lw         $2, %lo(D_80133AA8)($2)
      addiu      $2, $2, -0x2
      sltiu      $2, $2, 0x2
      bnez       $2, .L800DF824
       lui       $2, %hi(D_80125C02)
      sw         $0, 0x62C($3)
      ori        $18, $0, 0xFDF6
  .L800DF824:
      sb         $0, 0x4A0($3)
      sb         $0, %lo(D_80125C02)($2)
      sb         $4, 0x49D($3)
  .L800DF830:
      beqz       $18, .L800DF854
       addiu     $2, $0, 0x1
      addu       $3, $2, $0
      sb         $3, 0x10($20)
      addu       $3, $2, $0
      sh         $3, 0x0($20)
      sh         $18, 0xC($20)
      j          .L800DF8DC
       sb        $21, 0x12($20)
  .L800DF854:
      lui        $17, %hi(D_80125C64 + 0x2)
      lbu        $2, %lo(D_80125C64 + 0x2)($17)
      addiu      $16, $0, 0x1
      bne        $2, $16, .L800DF878
       lui       $5, %hi(D_80125C02)
      jal        func_8001CACC
       addiu     $4, $0, 0x1F4A
      sb         $0, %lo(D_80125C64 + 0x2)($17)
      lui        $5, %hi(D_80125C02)
  .L800DF878:
      lbu        $3, %lo(D_80125C02)($5)
      bne        $3, $16, .L800DF8DC
       addu      $2, $0, $0
      lui        $2, %hi(D_80137108)
      addiu      $4, $2, %lo(D_80137108)
      lbu        $2, 0x49D($4)
      bnez       $2, .L800DF8DC
       addu      $2, $0, $0
      ori        $2, $0, 0xFD67
      sb         $3, 0x10($20)
      sh         $3, 0x0($20)
      sh         $2, 0xC($20)
      sb         $21, 0x12($20)
      sb         $0, %lo(D_80125C02)($5)
      lbu        $2, 0x981($4)
      bne        $2, $3, .L800DF8C8
       addiu     $2, $0, 0x1
      sb         $0, 0x981($4)
      j          .L800DF8D0
       sb        $2, %lo(D_80125C64 + 0x2)($17)
  .L800DF8C8:
      jal        func_8001B854
       nop
  .L800DF8D0:
      j          .L800DF8DC
       addiu     $2, $0, 0x1
  .L800DF8D8:
      addu       $2, $0, $0
  .L800DF8DC:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800DF4A8

.globl func_800DF900
.ent func_800DF900
func_800DF900:
      jr         $31
       addu      $2, $0, $0
.end func_800DF900

.globl func_800DF908
.ent func_800DF908
func_800DF908:
      jr         $31
       addu      $2, $0, $0
.end func_800DF908

.globl func_800DF910
.ent func_800DF910
func_800DF910:
      jr         $31
       nop
.end func_800DF910

.globl func_800DF918
.ent func_800DF918
func_800DF918:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      lui        $16, %hi(D_80125C68)
      lw         $2, %lo(D_80125C68)($16)
      bnez       $2, .L800DF940
       sw        $31, 0x14($29)
      jal        func_800DFA00
       nop
      addiu      $2, $0, 0x1
      sw         $2, %lo(D_80125C68)($16)
  .L800DF940:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DF918

.globl func_800DF950
.ent func_800DF950
func_800DF950:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8001B854
       nop
      lui        $3, %hi(D_80137165)
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      sb         $2, %lo(D_80137165)($3)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DF950

.globl func_800DF978
.ent func_800DF978
func_800DF978:
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      jal        func_80006584
       sw        $16, 0x10($29)
      lui        $17, %hi(D_80125C6C)
      lw         $3, %lo(D_80125C6C)($17)
      subu       $2, $2, $3
      sltiu      $2, $2, 0x8
      bnel       $2, $0, .L800DF9BC
       addu      $2, $0, $0
      jal        func_8001B504
       nop
      jal        func_80006584
       addu      $16, $2, $0
      sw         $2, %lo(D_80125C6C)($17)
      addu       $2, $16, $0
  .L800DF9BC:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DF978

.globl func_800DF9D0
.ent func_800DF9D0
func_800DF9D0:
      lui        $2, (0x2000000 >> 16)
      and        $2, $16, $2
      beqz       $2, .L800DF9E8
       addu      $3, $0, $0
      j          .L800DFA24
       ori       $17, $0, 0xFD64
  .L800DF9E8:
      lui        $2, (0x1000000 >> 16)
      and        $2, $16, $2
      beqz       $2, func_800DFA00
       lui       $2, (0x8000000 >> 16)
      j          .L800DFA24
       ori       $17, $0, 0xFD66
.end func_800DF9D0

.globl func_800DFA00
.ent func_800DFA00
func_800DFA00:
      addiu      $29, $29, -0x18
      addiu      $4, $0, 0x600
      sw         $31, 0x10($29)
      jal        func_8001BFFC
       addiu     $5, $0, 0x1
      addiu      $4, $0, 0x800
      jal        func_8001BFFC
       addu      $5, $0, $0
      lw         $31, 0x10($29)
  .L800DFA24:
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DFA00

.globl func_800DFA2C
.ent func_800DFA2C
func_800DFA2C:
      addiu      $29, $29, -0x20
      addiu      $4, $0, 0x800
      addiu      $5, $0, 0x1
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      jal        func_8001BFFC
       sw        $16, 0x10($29)
      addiu      $4, $0, 0x600
      jal        func_8001BFFC
       addu      $5, $0, $0
  .L800DFA58:
      jal        func_8001BFC0
       addu      $4, $0, $0
      addu       $3, $2, $0
      andi       $2, $3, 0x1
      bnez       $2, .L800DFA58
       andi      $2, $3, 0x2
      bnez       $2, .L800DFA58
       addu      $17, $0, $0
      addu       $18, $17, $0
      addu       $16, $17, $0
  .L800DFA80:
      jal        func_8001BFC0
       addu      $4, $0, $0
      andi       $2, $2, 0x1
      beqz       $2, .L800DFA80
       nop
  .L800DFA94:
      jal        func_8001BFC0
       addu      $4, $0, $0
      addu       $3, $2, $0
      andi       $2, $3, 0x1
      bnez       $2, .L800DFA94
       andi      $2, $3, 0x2
      beqz       $2, .L800DFABC
       sra       $17, $17, 1
      ori        $17, $17, 0x80
      addiu      $18, $18, 0x1
  .L800DFABC:
      addiu      $16, $16, 0x1
      slti       $2, $16, 0x8
      bnez       $2, .L800DFA80
       nop
  .L800DFACC:
      jal        func_8001BFC0
       addu      $4, $0, $0
      andi       $2, $2, 0x1
      beqz       $2, .L800DFACC
       nop
  .L800DFAE0:
      jal        func_8001BFC0
       addu      $4, $0, $0
      addu       $3, $2, $0
      andi       $2, $3, 0x1
      bnez       $2, .L800DFAE0
       srl       $2, $3, 1
      andi       $2, $2, 0x1
      and        $2, $2, $18
      beqz       $2, .L800DFB18
       nop
      jal        func_800DFBA0
       addiu     $4, $0, 0xFE
      j          .L800DFB58
       addiu     $2, $0, -0x1
  .L800DFB18:
      jal        func_8001BFC0
       addu      $4, $0, $0
      andi       $2, $2, 0x1
      beqz       $2, .L800DFB18
       nop
  .L800DFB2C:
      jal        func_8001BFC0
       addu      $4, $0, $0
      andi       $2, $2, 0x1
      bnez       $2, .L800DFB2C
       addiu     $4, $0, 0x600
      jal        func_8001BFFC
       addiu     $5, $0, 0x1
      addiu      $4, $0, 0x800
      jal        func_8001BFFC
       addu      $5, $0, $0
      addu       $2, $17, $0
  .L800DFB58:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DFA2C

.globl func_800DFB70
.ent func_800DFB70
func_800DFB70:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addiu      $16, $0, -0x1
      sw         $31, 0x14($29)
  .L800DFB80:
      jal        func_800DFA2C
       nop
      beq        $2, $16, .L800DFB80
       nop
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800DFB70

.globl func_800DFBA0
.ent func_800DFBA0
func_800DFBA0:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      addiu      $4, $0, 0x600
      addiu      $5, $0, 0x1
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      jal        func_8001BFFC
       sw        $16, 0x10($29)
      addiu      $4, $0, 0x800
      jal        func_8001BFFC
       addu      $5, $0, $0
      addu       $3, $0, $0
      lui        $4, (0x61A7F >> 16)
      ori        $4, $4, (0x61A7F & 0xFFFF)
      addiu      $3, $3, 0x1
  .L800DFBE0:
      slt        $2, $4, $3
      beqz       $2, .L800DFBE0
       addiu     $3, $3, 0x1
      addiu      $4, $0, 0x600
      jal        func_8001BFFC
       addiu     $5, $0, 0x3
      addiu      $3, $0, 0x3E7
      addiu      $3, $3, -0x1
  .L800DFC00:
      bgez       $3, .L800DFC00
       addiu     $3, $3, -0x1
      addiu      $4, $0, 0x600
      jal        func_8001BFFC
       addiu     $5, $0, 0x6
  .L800DFC14:
      jal        func_8001BFC0
       addu      $4, $0, $0
      andi       $2, $2, 0x1
      beqz       $2, .L800DFC14
       nop
  .L800DFC28:
      jal        func_8001BFC0
       addu      $4, $0, $0
      andi       $2, $2, 0x1
      bnez       $2, .L800DFC28
       addiu     $4, $0, 0x800
      jal        func_8001BFFC
       addiu     $5, $0, 0x4
      addiu      $4, $0, 0x800
      jal        func_8001BFFC
       addu      $5, $0, $0
      addu       $17, $0, $0
      addiu      $16, $0, 0x1
      and        $2, $18, $16
  .L800DFC5C:
      beqz       $2, .L800DFC74
       addiu     $4, $0, 0x800
      jal        func_8001BFFC
       addiu     $5, $0, 0x2
      j          .L800DFC7C
       addiu     $17, $17, 0x1
  .L800DFC74:
      jal        func_8001BFFC
       addu      $5, $0, $0
  .L800DFC7C:
      jal        func_8001BFC0
       addu      $4, $0, $0
      andi       $2, $2, 0x1
      beqz       $2, .L800DFC7C
       nop
  .L800DFC90:
      jal        func_8001BFC0
       addu      $4, $0, $0
      andi       $2, $2, 0x1
      bnez       $2, .L800DFC90
       nop
      sll        $16, $16, 1
      slti       $2, $16, 0x100
      bnez       $2, .L800DFC5C
       and       $2, $18, $16
      addiu      $4, $0, 0x800
      jal        func_8001BFFC
       addiu     $5, $0, 0x4
      addiu      $4, $0, 0x800
      jal        func_8001BFFC
       addu      $5, $0, $0
      andi       $2, $17, 0x1
      beqz       $2, .L800DFCE0
       addu      $5, $0, $0
      j          .L800DFCE8
       addiu     $4, $0, 0x800
  .L800DFCE0:
      addiu      $4, $0, 0x800
      addiu      $5, $0, 0x2
  .L800DFCE8:
      jal        func_8001BFFC
       nop
  .L800DFCF0:
      jal        func_8001BFC0
       addu      $4, $0, $0
      andi       $2, $2, 0x1
      beqz       $2, .L800DFCF0
       nop
  .L800DFD04:
      jal        func_8001BFC0
       addu      $4, $0, $0
      andi       $2, $2, 0x1
      bnez       $2, .L800DFD04
       addiu     $4, $0, 0x600
      jal        func_8001BFFC
       addu      $5, $0, $0
  .L800DFD20:
      jal        func_8001BFC0
       addu      $4, $0, $0
      andi       $2, $2, 0x2
      bnez       $2, .L800DFD20
       nop
  .L800DFD34:
      jal        func_8001BFC0
       addu      $4, $0, $0
      andi       $2, $2, 0x2
      beqz       $2, .L800DFD34
       nop
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DFBA0

.globl func_800DFD60
.ent func_800DFD60
func_800DFD60:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addiu      $18, $0, 0xFA
      sw         $31, 0x1C($29)
      sw         $16, 0x10($29)
  .L800DFD7C:
      jal        func_800DFBA0
       addiu     $4, $0, 0xED
      jal        func_800DFB70
       nop
      addu       $4, $17, $0
      jal        func_800DFBA0
       addu      $16, $2, $0
      bne        $16, $18, .L800DFD7C
       nop
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DFD60

.globl func_800DFDB8
.ent func_800DFDB8
func_800DFDB8:
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      jal        func_800DFB70
       sw        $16, 0x10($29)
      addu       $3, $2, $0
      addiu      $17, $0, 0x59
      beq        $3, $17, .L800DFEBC
       slti      $2, $3, 0x5A
      beqz       $2, .L800DFE20
       addiu     $2, $0, 0x12
      beq        $3, $2, .L800DFEBC
       slti      $2, $3, 0x13
      beqz       $2, .L800DFE04
       addiu     $2, $0, 0x11
      beq        $3, $2, .L800E0010
       slti      $2, $3, 0x80
      j          .L800E0040
       nop
  .L800DFE04:
      addiu      $2, $0, 0x14
      beq        $3, $2, .L800E0028
       addiu     $2, $0, 0x58
      beq        $3, $2, .L800DFECC
       slti      $2, $3, 0x80
      j          .L800E0040
       nop
  .L800DFE20:
      addiu      $2, $0, 0x7E
      beq        $3, $2, .L800DFF0C
       slti      $2, $3, 0x7F
      beqz       $2, .L800DFE44
       addiu     $2, $0, 0x77
      beq        $3, $2, .L800DFEEC
       slti      $2, $3, 0x80
      j          .L800E0040
       nop
  .L800DFE44:
      addiu      $2, $0, 0xE0
      beq        $3, $2, .L800DFF38
       addiu     $2, $0, 0xF0
      bne        $3, $2, .L800E0040
       slti      $2, $3, 0x80
      jal        func_800DFB70
       nop
      addu       $3, $2, $0
      addiu      $2, $0, 0x12
      beq        $3, $2, .L800DFE9C
       slti      $2, $3, 0x13
      beqz       $2, .L800DFE88
       addiu     $2, $0, 0x11
      beq        $3, $2, .L800DFEA8
       lui       $2, (0x7FFFFFFF >> 16)
      j          .L800E0094
       ori       $2, $2, (0x7FFFFFFF & 0xFFFF)
  .L800DFE88:
      addiu      $2, $0, 0x14
      beq        $3, $2, .L800DFEB4
       lui       $2, %hi(D_80125C98)
      bne        $3, $17, .L800E0090
       lui       $2, (0x7FFFFFFF >> 16)
  .L800DFE9C:
      lui        $2, %hi(D_80125C84)
      j          .L800E008C
       sw        $0, %lo(D_80125C84)($2)
  .L800DFEA8:
      lui        $2, %hi(D_80125C94)
      j          .L800E008C
       sw        $0, %lo(D_80125C94)($2)
  .L800DFEB4:
      j          .L800E008C
       sw        $0, %lo(D_80125C98)($2)
  .L800DFEBC:
      lui        $3, %hi(D_80125C84)
      addiu      $2, $0, 0x1
      j          .L800E008C
       sw        $2, %lo(D_80125C84)($3)
  .L800DFECC:
      lui        $5, %hi(D_80125C90)
      lui        $3, %hi(D_80125C80)
      lw         $4, %lo(D_80125C90)($5)
      lw         $2, %lo(D_80125C80)($3)
      xori       $4, $4, 0x4
      xori       $2, $2, 0x1
      j          .L800DFF28
       sw        $2, %lo(D_80125C80)($3)
  .L800DFEEC:
      lui        $5, %hi(D_80125C90)
      lui        $3, %hi(D_80125C88)
      lw         $4, %lo(D_80125C90)($5)
      lw         $2, %lo(D_80125C88)($3)
      xori       $4, $4, 0x2
      xori       $2, $2, 0x1
      j          .L800DFF28
       sw        $2, %lo(D_80125C88)($3)
  .L800DFF0C:
      lui        $5, %hi(D_80125C90)
      lui        $3, %hi(D_80125C8C)
      lw         $4, %lo(D_80125C90)($5)
      lw         $2, %lo(D_80125C8C)($3)
      xori       $4, $4, 0x1
      xori       $2, $2, 0x1
      sw         $2, %lo(D_80125C8C)($3)
  .L800DFF28:
      jal        func_800DFD60
       sw        $4, %lo(D_80125C90)($5)
      j          .L800E0090
       lui       $2, (0x7FFFFFFF >> 16)
  .L800DFF38:
      jal        func_800DFB70
       addiu     $16, $0, 0x14
      addu       $3, $2, $0
      beq        $3, $16, .L800DFF90
       slti      $2, $3, 0x15
      beqz       $2, .L800DFF64
       addiu     $2, $0, 0x11
      beq        $3, $2, .L800DFF78
       lui       $2, %hi(D_800FEC8C)
      j          .L800E007C
       addiu     $2, $2, %lo(D_800FEC8C)
  .L800DFF64:
      addiu      $2, $0, 0xF0
      beq        $3, $2, .L800DFFA8
       lui       $2, %hi(D_800FEC8C)
      j          .L800E007C
       addiu     $2, $2, %lo(D_800FEC8C)
  .L800DFF78:
      lui        $2, %hi(D_800FEC9D)
      lui        $4, %hi(D_80125C9C)
      lbu        $2, %lo(D_800FEC9D)($2)
      addiu      $3, $0, 0x1
      j          .L800E0094
       sw        $3, %lo(D_80125C9C)($4)
  .L800DFF90:
      lui        $2, %hi(D_800FECA0)
      lui        $4, %hi(D_80125CA0)
      lbu        $2, %lo(D_800FECA0)($2)
      addiu      $3, $0, 0x1
      j          .L800E0094
       sw        $3, %lo(D_80125CA0)($4)
  .L800DFFA8:
      jal        func_800DFB70
       nop
      addu       $3, $2, $0
      addiu      $2, $0, 0x12
      beq        $3, $2, .L800DFFE8
       slti      $2, $3, 0x13
      beqz       $2, .L800DFFD8
       addiu     $2, $0, 0x11
      beq        $3, $2, .L800DFFFC
       lui       $2, (0x7FFFFFFF >> 16)
      j          .L800E0094
       ori       $2, $2, (0x7FFFFFFF & 0xFFFF)
  .L800DFFD8:
      beq        $3, $16, .L800E0008
       lui       $2, %hi(D_80125CA0)
      bne        $3, $17, .L800E0090
       lui       $2, (0x7FFFFFFF >> 16)
  .L800DFFE8:
      lui        $3, %hi(D_80125C84)
      lw         $2, %lo(D_80125C84)($3)
      xori       $2, $2, 0x1
      j          .L800E008C
       sw        $2, %lo(D_80125C84)($3)
  .L800DFFFC:
      lui        $2, %hi(D_80125C9C)
      j          .L800E008C
       sw        $0, %lo(D_80125C9C)($2)
  .L800E0008:
      j          .L800E008C
       sw        $0, %lo(D_80125CA0)($2)
  .L800E0010:
      lui        $2, %hi(D_800FEB11)
      lui        $4, %hi(D_80125C94)
      lbu        $2, %lo(D_800FEB11)($2)
      addiu      $3, $0, 0x1
      j          .L800E0094
       sw        $3, %lo(D_80125C94)($4)
  .L800E0028:
      lui        $2, %hi(D_800FEB14)
      lui        $4, %hi(D_80125C98)
      lbu        $2, %lo(D_800FEB14)($2)
      addiu      $3, $0, 0x1
      j          .L800E0094
       sw        $3, %lo(D_80125C98)($4)
  .L800E0040:
      beqz       $2, .L800E008C
       lui       $2, %hi(D_80125C84)
      lw         $2, %lo(D_80125C84)($2)
      beqz       $2, .L800E005C
       lui       $2, %hi(D_800FEC08)
      j          .L800E007C
       addiu     $2, $2, %lo(D_800FEC08)
  .L800E005C:
      lui        $2, %hi(D_80125C80)
      lw         $2, %lo(D_80125C80)($2)
      beqz       $2, .L800E0074
       lui       $2, %hi(D_800FEB84)
      j          .L800E007C
       addiu     $2, $2, %lo(D_800FEB84)
  .L800E0074:
      lui        $2, %hi(D_800FEB00)
      addiu      $2, $2, %lo(D_800FEB00)
  .L800E007C:
      addu       $2, $3, $2
      lbu        $2, 0x0($2)
      j          .L800E0094
       nop
  .L800E008C:
      lui        $2, (0x7FFFFFFF >> 16)
  .L800E0090:
      ori        $2, $2, (0x7FFFFFFF & 0xFFFF)
  .L800E0094:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800DFDB8

.globl func_800E00A8
.ent func_800E00A8
func_800E00A8:
      sb         $0, 0x487($16)
      j          .L800E02F0
       sb        $4, 0x49D($16)
      lbu        $2, 0x57($16)
      bne        $2, $4, .L800E00D4
       nop
.end func_800E00A8

.globl func_800E00C0
.ent func_800E00C0
func_800E00C0:
      addiu      $2, $4, -0x1
      jr         $31
       sltiu     $2, $2, 0x7F
      j          .L800E02F0
       sb        $0, 0x57($16)
  .L800E00D4:
      lbu        $3, 0x284($16)
      bne        $3, $4, .L800E0104
       lui       $2, (0x80140000 >> 16)
      lui        $2, %hi(D_80113480)
      lw         $2, %lo(D_80113480)($2)
      beqz       $2, .L800E0104
       lui       $2, (0x80140000 >> 16)
      ori        $18, $0, 0xFD7B
      sb         $0, 0x284($16)
      sb         $3, 0x285($16)
      j          .L800E02F4
.end func_800E00C0
