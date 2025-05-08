.include "macro.inc"

#.set noat
.set noreorder

.section .text, "ax"

.globl .L800A5640
.ent .L800A5640
.L800A5640:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
  .L800A5648:
      addu       $17, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $16, 0x18($17)
      lw         $3, 0x44($16)
      addiu      $2, $0, 0x3
      bne        $3, $2, .L800A5724
       addiu     $18, $0, 0x1
      lw         $2, 0x4($16)
      bnez       $2, .L800A5728
       addu      $2, $18, $0
      lhu        $2, 0x2E($16)
  .L800A567C:
      lhu        $4, 0x30($16)
      mult       $2, $4
      mflo       $4
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $8, $2, $0
      beql       $8, $0, .L800A5724
       addiu     $18, $0, -0x5
      lhu        $5, 0x2C($16)
      lhu        $2, 0x30($16)
      addu       $2, $5, $2
      slt        $2, $5, $2
      beqz       $2, .L800A5720
       addu      $6, $8, $0
  .L800A56B4:
      lhu        $2, 0x1E($17)
      lhu        $4, 0x2A($16)
      mult       $5, $2
      lhu        $2, 0x2E($16)
      lw         $3, 0x10($17)
      addu       $2, $4, $2
      slt        $2, $4, $2
      mflo       $9
      beqz       $2, .L800A5704
       addu      $7, $3, $9
  .L800A56DC:
      addu       $2, $7, $4
      lbu        $2, 0x0($2)
      addiu      $4, $4, 0x1
      sb         $2, 0x0($6)
      lhu        $2, 0x2A($16)
      lhu        $3, 0x2E($16)
      addu       $2, $2, $3
      slt        $2, $4, $2
      bnez       $2, .L800A56DC
       addiu     $6, $6, 0x1
  .L800A5704:
      lhu        $2, 0x2C($16)
      lhu        $3, 0x30($16)
      addiu      $5, $5, 0x1
      addu       $2, $2, $3
      slt        $2, $5, $2
      bnez       $2, .L800A56B4
       nop
  .L800A5720:
      sw         $8, 0x4($16)
  .L800A5724:
      addu       $2, $18, $0
  .L800A5728:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end .L800A5640

.globl func_800A5740
.ent func_800A5740
func_800A5740:
      addiu      $29, $29, -0x48
      sw         $20, 0x40($29)
      addu       $20, $4, $0
      sw         $19, 0x3C($29)
      addu       $19, $0, $0
      sw         $18, 0x38($29)
      addiu      $18, $29, 0x28
      sw         $31, 0x44($29)
      sw         $17, 0x34($29)
      sw         $16, 0x30($29)
      lw         $4, 0xC($20)
      jal        func_800A6C0C
       addu      $5, $18, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800A583C
       nop
      jal        func_800A29F8
       nop
      addu       $17, $2, $0
      beqz       $17, .L800A5830
       addiu     $5, $29, 0x18
      addu       $4, $17, $0
      lw         $2, 0x4($17)
      lbu        $7, 0x3($18)
      sw         $16, 0x10($29)
      lw         $2, 0x1C($2)
      jalr       $2
       addiu     $6, $0, 0x1
      bne        $2, $16, .L800A5820
       addu      $4, $0, $0
      lw         $2, 0x18($20)
      lhu        $3, 0x28($2)
      lw         $2, 0x8($2)
      beqz       $3, .L800A5820
       addu      $16, $4, $0
      addu       $8, $3, $0
      addu       $3, $2, $0
      lbu        $7, 0x20($29)
      lbu        $6, 0x21($29)
      lbu        $5, 0x22($29)
  .L800A57E4:
      lbu        $2, 0x0($3)
      bnel       $2, $7, .L800A5814
       addiu     $4, $4, 0x1
      lbu        $2, 0x1($3)
      bnel       $2, $6, .L800A5814
       addiu     $4, $4, 0x1
      lbu        $2, 0x2($3)
      bnel       $2, $5, .L800A5814
       addiu     $4, $4, 0x1
      addu       $19, $4, $0
      j          .L800A5820
       addiu     $16, $0, 0x1
  .L800A5814:
      sltu       $2, $4, $8
      bnez       $2, .L800A57E4
       addiu     $3, $3, 0x3
  .L800A5820:
      lw         $2, 0x4($17)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $17, $0
  .L800A5830:
      addiu      $2, $0, 0x1
      beq        $16, $2, .L800A5848
       andi      $2, $19, 0xFF
  .L800A583C:
      lw         $2, 0x10($20)
      lbu        $19, 0x0($2)
      andi       $2, $19, 0xFF
  .L800A5848:
      lw         $31, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_800A5740

.globl func_800A5868
.ent func_800A5868
func_800A5868:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $16, 0x18($17)
      lw         $3, 0x44($16)
      addiu      $2, $0, 0x2
      beq        $3, $2, .L800A58A8
       sltu      $2, $3, $2
      bnez       $2, .L800A59C0
       addiu     $2, $0, 0x3
      beq        $3, $2, .L800A5938
       nop
      j          .L800A59C0
       nop
  .L800A58A8:
      jal        func_800A5740
       addu      $4, $17, $0
      lhu        $5, 0x2C($16)
      lhu        $3, 0x30($16)
      addu       $3, $5, $3
      slt        $3, $5, $3
      beqz       $3, .L800A59C0
       addu      $7, $2, $0
  .L800A58C8:
      lhu        $2, 0x1E($17)
      lhu        $4, 0x2A($16)
      mult       $5, $2
      lhu        $2, 0x2E($16)
      lw         $3, 0x10($17)
      addu       $2, $4, $2
      slt        $2, $4, $2
      mflo       $8
      beqz       $2, .L800A5914
       addu      $6, $3, $8
      addu       $2, $6, $4
  .L800A58F4:
      sb         $7, 0x0($2)
      lhu        $2, 0x2A($16)
      lhu        $3, 0x2E($16)
      addiu      $4, $4, 0x1
      addu       $2, $2, $3
      slt        $2, $4, $2
      bnez       $2, .L800A58F4
       addu      $2, $6, $4
  .L800A5914:
      lhu        $2, 0x2C($16)
      lhu        $3, 0x30($16)
      addiu      $5, $5, 0x1
      addu       $2, $2, $3
      slt        $2, $5, $2
      beqz       $2, .L800A59C0
       nop
      j          .L800A58C8
       nop
  .L800A5938:
      lhu        $5, 0x2C($16)
      lhu        $2, 0x30($16)
      lw         $6, 0x4($16)
      addu       $2, $5, $2
      slt        $2, $5, $2
      beqz       $2, .L800A59C0
       nop
  .L800A5954:
      lhu        $2, 0x1E($17)
      lhu        $4, 0x2A($16)
      mult       $5, $2
      lhu        $2, 0x2E($16)
      lw         $3, 0x10($17)
      addu       $2, $4, $2
      slt        $2, $4, $2
      mflo       $8
      beqz       $2, .L800A59A4
       addu      $7, $3, $8
  .L800A597C:
      lbu        $3, 0x0($6)
      addu       $2, $7, $4
      sb         $3, 0x0($2)
      lhu        $2, 0x2A($16)
      lhu        $3, 0x2E($16)
      addiu      $4, $4, 0x1
      addu       $2, $2, $3
      slt        $2, $4, $2
      bnez       $2, .L800A597C
       addiu     $6, $6, 0x1
  .L800A59A4:
      lhu        $2, 0x2C($16)
      lhu        $3, 0x30($16)
      addiu      $5, $5, 0x1
      addu       $2, $2, $3
      slt        $2, $5, $2
      bnez       $2, .L800A5954
       nop
  .L800A59C0:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A5868

.globl func_800A59D8
.ent func_800A59D8
func_800A59D8:
      lui        $2, %hi(D_801256C0)
      lw         $3, %lo(D_801256C0)($2)
      lw         $2, 0xC($3)
      sw         $2, 0x28($4)
      jr         $31
       sw        $4, 0xC($3)
.end func_800A59D8

.globl func_800A59F0
.ent func_800A59F0
func_800A59F0:
      lui        $2, %hi(D_801256C0)
      lw         $3, %lo(D_801256C0)($2)
      lw         $5, 0xC($3)
      bne        $5, $4, .L800A5A14
       addiu     $6, $0, 0x1
      lw         $2, 0x28($5)
      sw         $2, 0xC($3)
      j          .L800A5A4C
       sw        $0, 0x28($5)
  .L800A5A14:
      beql       $5, $0, .L800A5A4C
       addiu     $6, $0, -0x4
  .L800A5A1C:
      lw         $2, 0x28($5)
      beq        $2, $4, .L800A5A34
       nop
      addu       $5, $2, $0
      bnez       $5, .L800A5A1C
       nop
  .L800A5A34:
      beql       $5, $0, .L800A5A4C
       addiu     $6, $0, -0x4
      lw         $3, 0x28($5)
      lw         $2, 0x28($3)
      sw         $2, 0x28($5)
      sw         $0, 0x28($3)
  .L800A5A4C:
      jr         $31
       addu      $2, $6, $0
.end func_800A59F0

.globl func_800A5A54
.ent func_800A5A54
func_800A5A54:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      lw         $3, 0x18($16)
      lbu        $2, 0x1B8($16)
      lhu        $7, 0x28($3)
      beqz       $2, .L800A5A84
       addiu     $2, $0, -0x1
      lbu        $2, 0x1A8($16)
      j          .L800A5A88
       sw        $2, 0x10($29)
  .L800A5A84:
      sw         $2, 0x10($29)
  .L800A5A88:
      sw         $0, 0x14($29)
      lw         $4, 0xC($16)
      lw         $5, 0x10($16)
      lw         $6, 0x8($3)
      jal        func_800A6A64
       nop
      lw         $2, 0x18($16)
      sw         $0, 0x10($16)
      lbu        $2, 0x4A($2)
      beql       $2, $0, .L800A5AB4
       sw        $0, 0x14($16)
  .L800A5AB4:
      lw         $2, 0x18($16)
      sw         $0, 0x8($2)
      sb         $0, 0x30($16)
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A5A54

.globl func_800A5AD0
.ent func_800A5AD0
func_800A5AD0:
      lui        $3, %hi(D_801256C0)
      lw         $2, %lo(D_801256C0)($3)
      addiu      $29, $29, -0x28
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $16, 0xC($2)
      beqz       $16, .L800A5B74
       addu      $17, $0, $0
      addu       $19, $3, $0
  .L800A5B00:
      lbu        $2, 0x32($16)
      beqz       $2, .L800A5B64
       addu      $4, $16, $0
      jal        func_800A5A54
       addu      $18, $16, $0
      beqz       $17, .L800A5B38
       nop
      lw         $2, 0x28($16)
      sw         $2, 0x28($17)
      sw         $0, 0x28($16)
      sb         $0, 0x32($16)
      lw         $16, 0x28($17)
      j          .L800A5B54
       nop
  .L800A5B38:
      lw         $2, %lo(D_801256C0)($19)
      lw         $3, 0x28($16)
      sw         $3, 0xC($2)
      sb         $0, 0x32($16)
      lw         $2, %lo(D_801256C0)($19)
      sw         $0, 0x28($16)
      lw         $16, 0xC($2)
  .L800A5B54:
      jal        func_800A52E0
       addu      $4, $18, $0
      j          .L800A5B6C
       nop
  .L800A5B64:
      addu       $17, $16, $0
      lw         $16, 0x28($16)
  .L800A5B6C:
      bnez       $16, .L800A5B00
       nop
  .L800A5B74:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A5AD0

.globl func_800A5B90
.ent func_800A5B90
func_800A5B90:
      lui        $2, %hi(D_801256C0)
      lw         $2, %lo(D_801256C0)($2)
      lw         $3, 0xC($2)
      beqz       $3, .L800A5BBC
       addu      $4, $0, $0
  .L800A5BA4:
      lbu        $2, 0x31($3)
      bnel       $2, $0, .L800A5BB0
       addiu     $4, $4, 0x1
  .L800A5BB0:
      lw         $3, 0x28($3)
      bnez       $3, .L800A5BA4
       nop
  .L800A5BBC:
      jr         $31
       addu      $2, $4, $0
.end func_800A5B90

.globl func_800A5BC4
.ent func_800A5BC4
func_800A5BC4:
      lui        $2, %hi(D_801256C0)
      lw         $2, %lo(D_801256C0)($2)
      lui        $5, (0x7FFFFFFF >> 16)
      lw         $3, 0xC($2)
      beqz       $3, .L800A5C08
       ori       $5, $5, (0x7FFFFFFF & 0xFFFF)
  .L800A5BDC:
      lbu        $2, 0x31($3)
      beqz       $2, .L800A5BFC
       nop
      lw         $2, 0x18($3)
      lhu        $4, 0x32($2)
      slt        $2, $4, $5
      bnel       $2, $0, .L800A5BFC
       addu      $5, $4, $0
  .L800A5BFC:
      lw         $3, 0x28($3)
      bnez       $3, .L800A5BDC
       nop
  .L800A5C08:
      lui        $2, %hi(D_801256C0)
      lw         $2, %lo(D_801256C0)($2)
      jr         $31
       sw        $5, 0x10($2)
.end func_800A5BC4

.globl func_800A5C18
.ent func_800A5C18
func_800A5C18:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $31, 0x24($29)
      sw         $18, 0x20($29)
      jal        .L800A5640
       sw        $17, 0x1C($29)
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800A5D20
       addu      $18, $17, $0
      jal        func_800A5868
       addu      $4, $16, $0
      addu       $17, $2, $0
      bne        $17, $18, .L800A5D20
       nop
      lw         $2, 0x18($16)
      lw         $2, 0x0($2)
      bnez       $2, .L800A5C90
       sw        $2, 0x18($16)
      lw         $3, 0x2C($16)
      addiu      $2, $16, 0x170
      beqz       $3, .L800A5C90
       sw        $2, 0x18($16)
      addiu      $2, $3, -0x1
      bnez       $2, .L800A5C90
       sw        $2, 0x2C($16)
      sb         $17, 0x32($16)
      j          .L800A5D34
       addiu     $2, $0, 0x2
  .L800A5C90:
      jal        func_800A538C
       addu      $4, $16, $0
      beqz       $2, .L800A5D1C
       sw        $2, 0x16C($16)
      lw         $2, 0x10($16)
      addu       $4, $16, $0
      jal        func_800A5478
       sw        $2, 0x168($16)
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800A5D0C
       nop
      lw         $3, 0x18($16)
      lbu        $2, 0x1B8($16)
      lhu        $7, 0x28($3)
      beqz       $2, .L800A5CE0
       addiu     $2, $0, -0x1
      lbu        $2, 0x1A8($16)
      j          .L800A5CE4
       sw        $2, 0x10($29)
  .L800A5CE0:
      sw         $2, 0x10($29)
  .L800A5CE4:
      addiu      $2, $0, 0x40
      sw         $2, 0x14($29)
      lw         $4, 0xC($16)
      lw         $5, 0x10($16)
      lw         $6, 0x8($3)
      jal        func_800A6A64
       nop
      lw         $4, 0xC($16)
      jal        func_800A6AB0
       addiu     $5, $0, 0x2
  .L800A5D0C:
      jal        func_800A5414
       addu      $4, $16, $0
      j          .L800A5D20
       sw        $0, 0x16C($16)
  .L800A5D1C:
      addiu      $17, $0, -0x5
  .L800A5D20:
      bgez       $17, .L800A5D34
       addu      $2, $17, $0
      addiu      $2, $0, 0x1
      sb         $2, 0x32($16)
      addu       $2, $17, $0
  .L800A5D34:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A5C18

.globl func_800A5D4C
.ent func_800A5D4C
func_800A5D4C:
      lui        $3, %hi(D_801256C0)
      lw         $2, %lo(D_801256C0)($3)
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $4, 0xC($2)
      bnez       $4, .L800A5D88
       addiu     $18, $0, 0x1
      j          .L800A5E18
       addu      $2, $0, $0
  .L800A5D88:
      addu       $16, $4, $0
      addu       $20, $3, $0
      addiu      $19, $0, 0x1
  .L800A5D94:
      lbu        $2, 0x31($16)
      beqz       $2, .L800A5DD4
       nop
      lw         $4, 0x18($16)
      lw         $2, %lo(D_801256C0)($20)
      lw         $3, 0x34($4)
      lw         $2, 0x10($2)
      subu       $3, $3, $2
      bgtz       $3, .L800A5DD4
       sw        $3, 0x34($4)
      lhu        $2, 0x32($4)
      sw         $2, 0x34($4)
      jal        func_800A5C18
       addu      $4, $16, $0
      bnel       $2, $19, .L800A5DD4
       addiu     $17, $0, 0x1
  .L800A5DD4:
      lw         $16, 0x28($16)
      bnez       $16, .L800A5D94
       andi      $2, $17, 0xFF
      beqz       $2, .L800A5DF4
       lui       $2, %hi(D_801256C0)
      jal        func_800A5AD0
       nop
      lui        $2, %hi(D_801256C0)
  .L800A5DF4:
      lw         $2, %lo(D_801256C0)($2)
      lw         $2, 0xC($2)
      beql       $2, $0, .L800A5E14
       addu      $18, $0, $0
      jal        func_800A5BC4
       nop
      j          .L800A5E18
       addu      $2, $18, $0
  .L800A5E14:
      addu       $2, $18, $0
  .L800A5E18:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A5D4C

.globl func_800A5E38
.ent func_800A5E38
func_800A5E38:
      addiu      $29, $29, -0x18
      beqz       $4, .L800A5E5C
       sw        $31, 0x10($29)
      blez       $4, .L800A5EDC
       addiu     $2, $0, 0x1
      beq        $4, $2, .L800A5E80
       lui       $2, %hi(D_801256C0)
      j          .L800A5EE0
       nop
  .L800A5E5C:
      jal        func_800A5BC4
       nop
      lui        $2, %hi(D_801256C0)
      lw         $2, %lo(D_801256C0)($2)
      lw         $2, 0x10($2)
      sll        $4, $2, 2
      addu       $4, $4, $2
      j          .L800A5EBC
       sll       $4, $4, 1
  .L800A5E80:
      jal        func_800A5D4C
       nop
      andi       $2, $2, 0xFF
      beqz       $2, .L800A5ECC
       lui       $2, %hi(D_801256C0)
      lw         $2, %lo(D_801256C0)($2)
      lui        $3, (0x7FFFFFFF >> 16)
      lw         $2, 0x10($2)
      ori        $3, $3, (0x7FFFFFFF & 0xFFFF)
      beq        $2, $3, .L800A5EB8
       sll       $4, $2, 2
      addu       $4, $4, $2
      j          .L800A5EBC
       sll       $4, $4, 1
  .L800A5EB8:
      addiu      $4, $0, 0x3E8
  .L800A5EBC:
      jal        func_80051358
       nop
      j          .L800A5F18
       addiu     $3, $0, 0x1
  .L800A5ECC:
      lw         $2, %lo(D_801256C0)($2)
      addiu      $3, $0, 0x7FFF
      j          .L800A5F18
       sw        $0, 0x8($2)
  .L800A5EDC:
      lui        $2, %hi(D_801256C0)
  .L800A5EE0:
      lw         $2, %lo(D_801256C0)($2)
      beqz       $2, .L800A5F18
       addiu     $3, $0, 0x7FFF
      lw         $3, 0xC($2)
      beqz       $3, .L800A5F0C
       lui       $2, %hi(D_801256C0)
  .L800A5EF8:
      lw         $2, 0x28($3)
      sw         $0, 0x28($3)
      addu       $3, $2, $0
      bnez       $3, .L800A5EF8
       lui       $2, %hi(D_801256C0)
  .L800A5F0C:
      lw         $2, %lo(D_801256C0)($2)
      sw         $0, 0x8($2)
      addiu      $3, $0, 0x7FFF
  .L800A5F18:
      lw         $31, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A5E38

.globl func_800A5F28
.ent func_800A5F28
func_800A5F28:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      lui        $16, %hi(D_801256C0)
      lw         $2, %lo(D_801256C0)($16)
      sw         $31, 0x14($29)
      lw         $2, 0x8($2)
      bnez       $2, .L800A5F68
       lui       $4, %hi(func_800A5E38)
      addiu      $4, $4, %lo(func_800A5E38)
      addu       $5, $0, $0
      addu       $6, $5, $0
      jal        func_80051388
       addu      $7, $5, $0
      lw         $3, %lo(D_801256C0)($16)
      beqz       $2, .L800A5F70
       sw        $2, 0x8($3)
  .L800A5F68:
      jal        func_800A5B90
       nop
  .L800A5F70:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A5F28

.globl func_800A5F80
.ent func_800A5F80
func_800A5F80:
      lui        $2, %hi(D_801256C0)
      lw         $4, %lo(D_801256C0)($2)
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0xC($4)
      bnez       $2, .L800A5FB0
       nop
      lw         $4, 0x8($4)
      beqz       $4, .L800A5FB0
       nop
      jal        func_8005147C
       nop
  .L800A5FB0:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A5F80

.globl func_800A5FBC
.ent func_800A5FBC
func_800A5FBC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      addiu      $3, $4, -0x1
      sltiu      $2, $3, 0x6
      beqz       $2, .L800A602C
       sw        $31, 0x14($29)
      lui        $2, %hi(jtbl_800F5500)
      addiu      $2, $2, %lo(jtbl_800F5500)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800A5FF4
.L800A5FF4:
      jal        func_800A59F0
       addu      $4, $16, $0
      jal        func_800A52E0
       addu      $4, $16, $0
      j          .L800A6024
       nop
  .globl .L800A600C
.L800A600C:
      addiu      $2, $0, 0x1
      jal        func_800A5F28
       sb        $2, 0x31($5)
      j          .L800A602C
       nop
  .globl .L800A6020
.L800A6020:
      sb         $0, 0x31($5)
  .L800A6024:
      jal        func_800A5F80
       nop
  .globl .L800A602C
.L800A602C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A5FBC

.globl func_800A603C
.ent func_800A603C
func_800A603C:
      lhu        $2, 0x30($18)
.end func_800A603C

.globl func_800A6040
.ent func_800A6040
func_800A6040:
      addu       $6, $4, $0
      lhu        $3, 0x1A($6)
      lhu        $2, 0x6($6)
      sltu       $2, $2, $3
      bnez       $2, .L800A6084
       nop
      lw         $3, 0x1C($6)
      lw         $5, 0x20($6)
      lhu        $2, 0x6($6)
      lhu        $4, 0x1A($6)
      subu       $3, $3, $5
      subu       $2, $2, $4
      addiu      $2, $2, 0x7
      srl        $2, $2, 3
      sltu       $2, $2, $3
      beqz       $2, .L800A614C
       addiu     $2, $0, -0x4
  .L800A6084:
      lw         $3, 0x34($6)
      lw         $2, 0x20($6)
      addu       $5, $3, $2
      lhu        $3, 0x1A($6)
      addiu      $2, $0, 0x8
      subu       $8, $2, $3
      lhu        $2, 0x6($6)
      lbu        $7, 0x0($5)
      sltu       $3, $3, $2
      beqz       $3, .L800A60FC
       nop
      addu       $9, $2, $0
  .L800A60B4:
      lhu        $2, 0x1A($6)
      addiu      $5, $5, 0x1
      addiu      $2, $2, 0x8
      sh         $2, 0x1A($6)
      lw         $2, 0x20($6)
      lhu        $3, 0x1A($6)
      addiu      $2, $2, 0x1
      sw         $2, 0x20($6)
      addiu      $2, $3, -0x1
      lbu        $4, 0x0($5)
      bltzl      $2, .L800A60E4
       addiu     $2, $3, 0x6
  .L800A60E4:
      andi       $2, $2, 0x18
      sllv       $2, $4, $2
      or         $7, $7, $2
      sltu       $2, $3, $9
      bnez       $2, .L800A60B4
       nop
  .L800A60FC:
      lhu        $2, 0x1A($6)
      lhu        $3, 0x6($6)
      subu       $2, $2, $3
      sh         $2, 0x1A($6)
      andi       $2, $2, 0xFFFF
      bnez       $2, .L800A612C
       srlv      $7, $7, $8
      lw         $2, 0x20($6)
      addiu      $3, $0, 0x8
      sh         $3, 0x1A($6)
      addiu      $2, $2, 0x1
      sw         $2, 0x20($6)
  .L800A612C:
      lhu        $2, 0x6($6)
      addiu      $8, $0, 0x20
      subu       $8, $8, $2
      andi       $2, $8, 0xFFFF
      sllv       $7, $7, $2
      srlv       $7, $7, $2
      jr         $31
       andi      $2, $7, 0xFFF
  .L800A614C:
      jr         $31
       nop
.end func_800A6040

.globl func_800A6154
.ent func_800A6154
func_800A6154:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lhu        $3, 0x10($16)
      sltiu      $2, $3, 0x1001
      bnez       $2, .L800A618C
       addu      $18, $4, $0
      j          .L800A62F8
       addu      $2, $0, $0
  .L800A618C:
      andi       $2, $18, 0xFFFF
      sltu       $2, $2, $3
      beqz       $2, .L800A62F8
       addiu     $2, $0, -0x5
      lhu        $2, 0x8($16)
      bne        $3, $2, .L800A61CC
       nop
      lhu        $3, 0x6($16)
      sltiu      $2, $3, 0xC
      beqz       $2, .L800A61CC
       addiu     $2, $3, 0x1
      sh         $2, 0x6($16)
      andi       $3, $2, 0xFFFF
      addiu      $2, $0, 0x1
      sllv       $2, $2, $3
      sh         $2, 0x8($16)
  .L800A61CC:
      lhu        $3, 0x10($16)
      lhu        $2, 0xE($16)
      subu       $20, $3, $2
      lhu        $3, 0x12($16)
      andi       $2, $20, 0xFFFF
      sltu       $2, $2, $3
      bnez       $2, .L800A629C
       andi      $4, $20, 0xFFFF
      lw         $4, 0x24($16)
      addiu      $19, $3, 0x780
      andi       $17, $19, 0xFFFF
      sll        $5, $17, 1
      jal        func_80052524
       addu      $6, $0, $0
      bnez       $2, .L800A6240
       addu      $5, $17, $0
      lw         $4, 0x24($16)
      beqz       $4, .L800A6224
       nop
      jal        func_80052540
       nop
      sw         $0, 0x24($16)
  .L800A6224:
      lw         $4, 0x28($16)
      beql       $4, $0, .L800A628C
       sh        $0, 0x12($16)
      jal        func_80052540
       nop
      j          .L800A6288
       sw        $0, 0x28($16)
  .L800A6240:
      lw         $4, 0x28($16)
      addu       $6, $0, $0
      jal        func_80052524
       sw        $2, 0x24($16)
      bnel       $2, $0, .L800A6294
       sw        $2, 0x28($16)
      lw         $4, 0x28($16)
      beqz       $4, .L800A6270
       nop
      jal        func_80052540
       nop
      sw         $0, 0x28($16)
  .L800A6270:
      lw         $4, 0x24($16)
      beql       $4, $0, .L800A628C
       sh        $0, 0x12($16)
      jal        func_80052540
       nop
      sw         $0, 0x24($16)
  .L800A6288:
      sh         $0, 0x12($16)
  .L800A628C:
      j          .L800A62F8
       addiu     $2, $0, -0x3
  .L800A6294:
      sh         $19, 0x12($16)
      andi       $4, $20, 0xFFFF
  .L800A629C:
      lw         $2, 0x24($16)
      sll        $3, $4, 1
      addu       $3, $3, $2
      sh         $18, 0x0($3)
      lhu        $3, 0xE($16)
      andi       $2, $18, 0xFFFF
      sltu       $2, $2, $3
      beqz       $2, .L800A62D0
       subu      $2, $18, $3
      lw         $2, 0x28($16)
      addu       $2, $2, $4
      j          .L800A62E8
       sb        $18, 0x0($2)
  .L800A62D0:
      lw         $3, 0x28($16)
      andi       $2, $2, 0xFFFF
      addu       $2, $3, $2
      lbu        $2, 0x0($2)
      addu       $3, $3, $4
      sb         $2, 0x0($3)
  .L800A62E8:
      lhu        $3, 0x10($16)
      addu       $2, $0, $0
      addiu      $3, $3, 0x1
      sh         $3, 0x10($16)
  .L800A62F8:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A6154

.globl func_800A6318
.ent func_800A6318
func_800A6318:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      lhu        $2, 0x10($16)
      andi       $3, $17, 0xFFFF
      addiu      $2, $2, -0x1
      slt        $3, $3, $2
      beqz       $3, .L800A64B4
       addiu     $2, $0, -0x5
      lhu        $5, 0x14($16)
      lhu        $2, 0x18($16)
      sltu       $2, $2, $5
      bnez       $2, .L800A63B4
       addiu     $2, $0, 0x1
      lw         $4, 0x2C($16)
      addiu      $18, $5, 0x780
      andi       $5, $18, 0xFFFF
      jal        func_80052524
       addu      $6, $0, $0
      bnel       $2, $0, .L800A63AC
       sw        $2, 0x2C($16)
      lw         $4, 0x2C($16)
      beqz       $4, .L800A64B4
       addiu     $2, $0, -0x1
      jal        func_80052540
       nop
      sw         $0, 0x2C($16)
      sh         $0, 0x14($16)
      j          .L800A64B4
       addiu     $2, $0, -0x1
  .L800A63A0:
      sh         $0, 0x16($16)
      j          .L800A64B4
       addiu     $2, $0, -0x2
  .L800A63AC:
      sh         $18, 0x14($16)
      addiu      $2, $0, 0x1
  .L800A63B4:
      sh         $2, 0x16($16)
      lhu        $2, 0x14($16)
      lw         $3, 0x2C($16)
      addiu      $2, $2, -0x1
      addu       $3, $3, $2
      sw         $3, 0x30($16)
      lhu        $3, 0xE($16)
      andi       $2, $17, 0xFFFF
      sltu       $2, $2, $3
      bnez       $2, .L800A6494
       nop
  .L800A63E0:
      lw         $6, 0x30($16)
      lw         $2, 0x2C($16)
      beq        $6, $2, .L800A63A0
       addiu     $4, $17, 0x1
      lw         $5, 0x28($16)
      beqz       $5, .L800A6418
       addu      $3, $4, $0
      lhu        $2, 0xE($16)
      subu       $2, $4, $2
      andi       $2, $2, 0xFFFF
      addu       $2, $5, $2
      lbu        $2, 0x0($2)
      j          .L800A6454
       sb        $2, 0x0($6)
  .L800A6418:
      lhu        $4, 0xE($16)
      andi       $2, $3, 0xFFFF
      sltu       $2, $2, $4
      bnez       $2, .L800A644C
       subu      $2, $3, $4
      lw         $5, 0x24($16)
  .L800A6430:
      andi       $2, $2, 0xFFFF
      sll        $2, $2, 1
      addu       $2, $2, $5
      lhu        $3, 0x0($2)
      sltu       $2, $3, $4
      beqz       $2, .L800A6430
       subu      $2, $3, $4
  .L800A644C:
      lw         $2, 0x30($16)
      sb         $3, 0x0($2)
  .L800A6454:
      lhu        $2, 0x16($16)
      lhu        $4, 0xE($16)
      addiu      $2, $2, 0x1
      sh         $2, 0x16($16)
      lw         $2, 0x30($16)
      lw         $3, 0x24($16)
      addiu      $2, $2, -0x1
      sw         $2, 0x30($16)
      subu       $2, $17, $4
      andi       $2, $2, 0xFFFF
      sll        $2, $2, 1
      addu       $2, $2, $3
      lhu        $17, 0x0($2)
      sltu       $4, $17, $4
      beqz       $4, .L800A63E0
       nop
  .L800A6494:
      lw         $2, 0x30($16)
      sb         $17, 0x0($2)
      lhu        $3, 0x16($16)
      lhu        $2, 0x18($16)
      sltu       $2, $2, $3
      bnel       $2, $0, .L800A64B0
       sh        $3, 0x18($16)
  .L800A64B0:
      addu       $2, $0, $0
  .L800A64B4:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A6318

.globl func_800A64CC
.ent func_800A64CC
func_800A64CC:
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A64CC

.globl func_800A64D8
.ent func_800A64D8
func_800A64D8:
      lui        $2, %hi(D_80126C40)
      lw         $3, %lo(D_80126C40)($2)
      lw         $2, 0xC($3)
      sw         $2, 0x28($4)
      jr         $31
       sw        $4, 0xC($3)
.end func_800A64D8

.globl func_800A64F0
.ent func_800A64F0
func_800A64F0:
      lui        $2, %hi(D_80126C40)
      lw         $3, %lo(D_80126C40)($2)
      lw         $5, 0xC($3)
      bne        $5, $4, .L800A6514
       addiu     $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      addiu      $4, $0, 0x8
      addu       $5, $0, $0
  .L800A6514:
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      jal        func_80052504
       sw        $0, 0x0($17)
      addu       $16, $2, $0
      beqz       $16, .L800A6580
       addiu     $2, $0, -0x5
      addiu      $2, $0, 0x1
      sw         $2, 0x0($16)
      addiu      $4, $0, 0xC
      jal        func_80052504
       addu      $5, $0, $0
      addu       $4, $2, $0
      beqz       $4, .L800A6574
       addiu     $2, $0, 0x1
      addiu      $3, $0, 0x2002
      sw         $4, 0x4($16)
      sw         $3, 0x0($4)
      lui        $3, %hi(D_80125700)
      lw         $4, 0x4($16)
      addiu      $3, $3, %lo(D_80125700)
      sw         $3, 0x4($4)
      j          .L800A6580
       sw        $16, 0x0($17)
  .L800A6574:
      jal        func_80052540
       addu      $4, $16, $0
      addiu      $2, $0, -0x5
  .L800A6580:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A64F0

.globl func_800A6594
.ent func_800A6594
func_800A6594:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      beqz       $16, .L800A65BC
       sw        $31, 0x14($29)
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
  .L800A65BC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A6594

.globl func_800A65D0
.ent func_800A65D0
func_800A65D0:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      addiu      $4, $0, 0x58
      addu       $5, $0, $0
      sw         $31, 0x18($29)
      jal        func_80052504
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      bnez       $16, .L800A6604
       addiu     $4, $0, 0xC
      j          .L800A6674
       addu      $2, $0, $0
  .L800A6604:
      addu       $5, $0, $0
      addiu      $2, $0, 0x1
      sw         $17, 0x14($16)
      sw         $0, 0xC($16)
      sw         $0, 0x4($16)
      sw         $0, 0x8($16)
      sw         $0, 0x18($16)
      sw         $0, 0x1C($16)
      sw         $0, 0x20($16)
      sw         $0, 0x24($16)
      jal        func_80052504
       sb        $2, 0x28($16)
      bnez       $2, .L800A6658
       lui       $3, %hi(func_800A64F0 + 0x10)
      lw         $4, 0x14($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
      j          .L800A6674
       addu      $2, $0, $0
  .L800A6658:
      addiu      $3, $3, %lo(func_800A64F0 + 0x10)
      sw         $3, 0x0($2)
      lui        $3, %hi(func_800A6594)
      addiu      $3, $3, %lo(func_800A6594)
      sw         $3, 0x4($2)
      sw         $16, 0x8($2)
      sw         $2, 0x0($16)
  .L800A6674:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A65D0

.globl func_800A6688
.ent func_800A6688
func_800A6688:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      beqz       $16, .L800A66AC
       sw        $31, 0x18($29)
      bnez       $17, .L800A66B4
       nop
  .L800A66AC:
      j          .L800A66FC
       addiu     $2, $0, -0x4
  .L800A66B4:
      lw         $2, 0x2C($16)
      bnez       $2, .L800A66D0
       nop
      jal        func_800A6CC0
       nop
      beqz       $2, .L800A66F8
       sw        $2, 0x2C($16)
  .L800A66D0:
      lw         $4, 0x2C($16)
      jal        func_800A6D28
       addu      $5, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800A66F8
       addiu     $2, $0, 0x1
      lw         $3, 0x30($16)
      addu       $3, $3, $2
      j          .L800A66FC
       sw        $3, 0x30($16)
  .L800A66F8:
      addiu      $2, $0, -0x5
  .L800A66FC:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A6688

.globl func_800A6710
.ent func_800A6710
func_800A6710:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L800A678C
       sw        $31, 0x14($29)
      beqz       $5, .L800A6790
       addiu     $2, $0, -0x1
      lw         $2, 0x2C($16)
      beql       $2, $0, .L800A6790
       addiu     $2, $0, -0x1
  .L800A6738:
      beqz       $2, .L800A6750
       addu      $3, $0, $0
      lw         $2, 0x4($2)
      beqz       $2, .L800A6750
       nop
      lw         $3, 0x0($2)
  .L800A6750:
      beql       $3, $0, .L800A6790
       addiu     $2, $0, -0x1
      bne        $3, $5, .L800A6738
       nop
      lw         $4, 0x2C($16)
      jal        func_800A6DC8
       nop
      lw         $2, 0x30($16)
      addiu      $2, $2, -0x1
      bgez       $2, .L800A6780
       sw        $2, 0x30($16)
      sw         $0, 0x30($16)
  .L800A6780:
      lw         $2, 0x30($16)
      j          .L800A6790
       nop
  .L800A678C:
      addiu      $2, $0, -0x1
  .L800A6790:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A6710

.globl func_800A67A0
.ent func_800A67A0
func_800A67A0:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x10($16)
      andi       $2, $2, 0x40
      bnel       $2, $0, .L800A67E0
       sb        $0, 0x29($16)
      lw         $4, 0x4C($16)
      jal        func_80052540
       nop
      lw         $4, 0x50($16)
      jal        func_80052540
       sw        $0, 0x4C($16)
      sw         $0, 0x50($16)
      sb         $0, 0x29($16)
  .L800A67E0:
      sw         $0, 0x18($16)
      sw         $0, 0x1C($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A67A0

.globl func_800A67F8
.ent func_800A67F8
func_800A67F8:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $31, 0x20($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $18, 0x8($19)
      beqz       $18, .L800A68C4
       addiu     $2, $0, -0x1
      lw         $2, 0x2C($18)
      beqz       $2, .L800A687C
       addu      $17, $2, $0
      addu       $16, $0, $0
  .L800A6830:
      beqz       $17, .L800A6848
       nop
      lw         $17, 0x4($17)
      beqz       $17, .L800A6848
       nop
      lw         $16, 0x0($17)
  .L800A6848:
      beqz       $16, .L800A6870
       nop
      addu       $4, $16, $0
      jal        func_800A765C
       addiu     $5, $0, 0x2
      lw         $4, 0x8($16)
      jal        func_800A75A8
       addu      $16, $0, $0
      j          .L800A6830
       nop
  .L800A6870:
      lw         $4, 0x2C($18)
      jal        func_800A6CF0
       nop
  .L800A687C:
      jal        func_800A67A0
       addu      $4, $18, $0
      lw         $4, 0x14($18)
      jal        func_80052540
       nop
      lw         $2, 0x38($18)
      beqz       $2, .L800A68B0
       nop
      lw         $5, 0x34($18)
      beqz       $5, .L800A68B0
       nop
      jalr       $2
       addiu     $4, $0, 0x1
  .L800A68B0:
      jal        func_80052540
       addu      $4, $18, $0
      jal        func_80052540
       addu      $4, $19, $0
      addu       $2, $0, $0
  .L800A68C4:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A67F8

.globl func_800A68E0
.ent func_800A68E0
func_800A68E0:
      lw         $2, 0x8($4)
      beqz       $2, .L800A68FC
       nop
      lw         $3, 0x14($2)
      addiu      $2, $0, 0x1
      jr         $31
       sw        $3, 0x0($5)
  .L800A68FC:
      jr         $31
       addiu     $2, $0, -0x4
.end func_800A68E0

.globl func_800A6904
.ent func_800A6904
func_800A6904:
      lw         $3, 0x8($4)
      beqz       $3, .L800A6914
       addiu     $2, $0, -0x4
      addiu      $2, $0, -0x1
  .L800A6914:
      jr         $31
       nop
.end func_800A6904

.globl func_800A691C
.ent func_800A691C
func_800A691C:
      lw         $2, 0x8($4)
      bnez       $2, .L800A6930
       nop
      jr         $31
       addiu     $2, $0, -0x4
  .L800A6930:
      lw         $3, 0x30($2)
      bgez       $3, .L800A6940
       addu      $2, $3, $0
      addiu      $2, $0, -0x1
  .L800A6940:
      jr         $31
       nop
.end func_800A691C

.globl func_800A6948
.ent func_800A6948
func_800A6948:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      beqz       $4, .L800A6994
       sw        $16, 0x10($29)
      lw         $16, 0x2C($4)
      sw         $5, 0x4($4)
      sw         $6, 0x8($4)
  .L800A6964:
      beqz       $16, .L800A697C
       addu      $4, $0, $0
      lw         $16, 0x4($16)
      beqz       $16, .L800A697C
       nop
      lw         $4, 0x0($16)
  .L800A697C:
      beqz       $4, .L800A6994
       nop
      jal        func_800A765C
       addiu     $5, $0, 0x1
      j          .L800A6964
       nop
  .L800A6994:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A6948

.globl func_800A69A4
.ent func_800A69A4
func_800A69A4:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      beqz       $16, .L800A6A50
       sw        $17, 0x14($29)
      addiu      $2, $5, 0x1
      sltiu      $2, $2, 0x2
      beqz       $2, .L800A69F0
       sw        $5, 0xC($16)
      jal        func_800A67A0
       nop
      addu       $4, $16, $0
      addu       $5, $0, $0
      jal        func_800A6948
       addu      $6, $5, $0
      addiu      $2, $0, -0x1
      sw         $0, 0x4C($16)
      sw         $2, 0x48($16)
  .L800A69F0:
      lw         $16, 0x2C($16)
      beqz       $16, .L800A6A0C
       addu      $17, $0, $0
      lw         $16, 0x4($16)
      beqz       $16, .L800A6A10
       addu      $4, $17, $0
      lw         $17, 0x0($16)
  .L800A6A0C:
      addu       $4, $17, $0
  .L800A6A10:
      beqz       $16, .L800A6A28
       addu      $17, $0, $0
      lw         $16, 0x4($16)
      beqz       $16, .L800A6A28
       nop
      lw         $17, 0x0($16)
  .L800A6A28:
      beqz       $17, .L800A6A40
       nop
      jal        func_800A765C
       addiu     $5, $0, 0x4
      j          .L800A6A10
       addu      $4, $17, $0
  .L800A6A40:
      beqz       $4, .L800A6A50
       nop
      jal        func_800A765C
       addiu     $5, $0, 0x4
  .L800A6A50:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A69A4

.globl func_800A6A64
.ent func_800A6A64
func_800A6A64:
      addiu      $29, $29, -0x18
      beqz       $4, .L800A6AA4
       sw        $31, 0x10($29)
      lw         $3, 0xC($4)
      addiu      $2, $0, 0x1
      beq        $3, $2, .L800A6A84
       addiu     $2, $0, 0x3
      sw         $2, 0xC($4)
  .L800A6A84:
      sw         $5, 0x4C($4)
      lw         $2, 0x28($29)
      sw         $2, 0x48($4)
      lw         $2, 0x2C($29)
      sw         $6, 0x50($4)
      sw         $7, 0x54($4)
      jal        func_8008F0DC
       sw        $2, 0x10($4)
  .L800A6AA4:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A6A64

.globl func_800A6AB0
.ent func_800A6AB0
func_800A6AB0:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      beqz       $4, .L800A6B34
       sw        $16, 0x10($29)
      lw         $16, 0x2C($4)
      addiu      $19, $0, 0x1
      addiu      $18, $0, 0x2
  .L800A6ADC:
      beqz       $16, .L800A6AF4
       addu      $4, $0, $0
      lw         $16, 0x4($16)
      beqz       $16, .L800A6AF4
       nop
      lw         $4, 0x0($16)
  .L800A6AF4:
      beqz       $4, .L800A6B34
       nop
      beq        $17, $19, .L800A6B14
       nop
      beq        $17, $18, .L800A6B24
       nop
      j          .L800A6ADC
       nop
  .L800A6B14:
      jal        func_800A765C
       addu      $5, $0, $0
      j          .L800A6ADC
       nop
  .L800A6B24:
      jal        func_800A765C
       addiu     $5, $0, 0x5
      j          .L800A6ADC
       nop
  .L800A6B34:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A6AB0

.globl func_800A6B50
.ent func_800A6B50
func_800A6B50:
      lw         $2, 0x2C($4)
      beqz       $2, .L800A6B90
       addu      $4, $0, $0
      addu       $3, $2, $0
  .L800A6B60:
      beqz       $3, .L800A6B78
       addu      $2, $0, $0
      lw         $3, 0x4($3)
      beqz       $3, .L800A6B78
       nop
      lw         $2, 0x0($3)
  .L800A6B78:
      beqz       $2, .L800A6B90
       nop
      lbu        $2, 0x27D($2)
      beqz       $2, .L800A6B60
       nop
      addiu      $4, $0, 0x1
  .L800A6B90:
      jr         $31
       addu      $2, $4, $0
.end func_800A6B50

.globl func_800A6B98
.ent func_800A6B98
func_800A6B98:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L800A6BFC
       sw        $31, 0x14($29)
      lw         $2, 0x38($16)
      beqz       $2, .L800A6BFC
       nop
      lw         $2, 0x34($16)
      beqz       $2, .L800A6BFC
       nop
      jal        func_800A6B50
       nop
      andi       $2, $2, 0xFF
      beqz       $2, .L800A6BE8
       addiu     $4, $0, 0x3
      lw         $5, 0x34($16)
      lw         $2, 0x38($16)
      j          .L800A6BF4
       nop
  .L800A6BE8:
      lw         $5, 0x34($16)
      lw         $2, 0x38($16)
      addiu      $4, $0, 0x2
  .L800A6BF4:
      jalr       $2
       nop
  .L800A6BFC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A6B98

.globl func_800A6C0C
.ent func_800A6C0C
func_800A6C0C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x2C($4)
      beqz       $2, .L800A6C50
       addu      $6, $5, $0
      lw         $2, 0x4($2)
      beqz       $2, .L800A6C30
       addu      $3, $0, $0
      lw         $3, 0x0($2)
  .L800A6C30:
      lw         $2, 0x18($3)
      lw         $4, 0x14($3)
      lw         $5, 0x8($3)
      lw         $2, 0x58($2)
      jalr       $2
       nop
      j          .L800A6C54
       nop
  .L800A6C50:
      addu       $2, $0, $0
  .L800A6C54:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A6C0C

.globl func_800A6C60
.ent func_800A6C60
func_800A6C60:
      lw         $2, 0x2C($4)
      beqz       $2, .L800A6C8C
       nop
      lw         $2, 0x4($2)
      beqz       $2, .L800A6C7C
       addu      $3, $0, $0
      lw         $3, 0x0($2)
  .L800A6C7C:
      lw         $2, 0x2C($3)
      xori       $2, $2, 0x1
      jr         $31
       sltiu     $2, $2, 0x1
  .L800A6C8C:
      jr         $31
       addu      $2, $0, $0
.end func_800A6C60

.globl func_800A6C94
.ent func_800A6C94
func_800A6C94:
      beqz       $2, .L800A6DF8
       addiu     $2, $0, -0x5
      lhu        $2, 0x8($16)
      bne        $3, $2, .L800A6CCC
       nop
      lhu        $3, 0x6($16)
      sltiu      $2, $3, 0xC
      beqz       $2, .L800A6CCC
       addiu     $2, $3, 0x1
      sh         $2, 0x6($16)
      andi       $3, $2, 0xFFFF
.end func_800A6C94

.globl func_800A6CC0
.ent func_800A6CC0
func_800A6CC0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      addiu      $4, $0, 0x8
  .L800A6CCC:
      jal        func_800524E8
       addu      $5, $0, $0
      beqz       $2, .L800A6CE4
       nop
      sw         $0, 0x0($2)
      sw         $0, 0x4($2)
  .L800A6CE4:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A6CC0

.globl func_800A6CF0
.ent func_800A6CF0
func_800A6CF0:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L800A6D18
       sw        $31, 0x14($29)
  .L800A6D04:
      lw         $16, 0x4($16)
      jal        func_80052540
       nop
      bnez       $16, .L800A6D04
       addu      $4, $16, $0
  .L800A6D18:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A6CF0

.globl func_800A6D28
.ent func_800A6D28
func_800A6D28:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      beqz       $16, .L800A6D70
       sw        $31, 0x18($29)
      addiu      $4, $0, 0x8
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $4, $2, $0
      beqz       $4, .L800A6D70
       addiu     $2, $0, 0x1
      sw         $17, 0x0($4)
      lw         $3, 0x4($16)
      sw         $3, 0x4($4)
      j          .L800A6D74
       sw        $4, 0x4($16)
  .L800A6D70:
      addu       $2, $0, $0
  .L800A6D74:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_800A6D88
func_800A6D88:
      addiu      $29, $29, -0x18
      beqz       $4, .L800A6DB0
       sw        $31, 0x10($29)
      lw         $2, 0x4($4)
      beqz       $2, .L800A6DB0
       nop
  .L800A6DA0:
      lw         $4, 0x4($4)
      lw         $2, 0x4($4)
      bnez       $2, .L800A6DA0
       nop
  .L800A6DB0:
      jal        func_800A6D28
       nop
      lw         $31, 0x10($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A6D28

.globl func_800A6DC8
.ent func_800A6DC8
func_800A6DC8:
      addiu      $29, $29, -0x18
      beqz       $4, .L800A6E04
       sw        $31, 0x10($29)
  .L800A6DD4:
      lw         $2, 0x4($4)
      beqz       $2, .L800A6E04
       addu      $3, $4, $0
      lw         $4, 0x4($4)
      lw         $2, 0x0($4)
      bne        $2, $5, .L800A6DD4
       nop
      lw         $2, 0x4($4)
      jal        func_80052540
  .L800A6DF8:
       sw        $2, 0x4($3)
      j          .L800A6E08
       addiu     $2, $0, 0x1
  .L800A6E04:
      addu       $2, $0, $0
  .L800A6E08:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A6DC8

.globl func_800A6E14
.ent func_800A6E14
func_800A6E14:
      addiu      $29, $29, 0x28
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      lhu        $2, 0x10($16)
      andi       $3, $17, 0xFFFF
      addiu      $2, $2, -0x1
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      addiu      $4, $0, 0x8
      addu       $5, $0, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      jal        func_80052504
       sw        $0, 0x0($17)
      addu       $16, $2, $0
      beqz       $16, .L800A6EC0
       addiu     $2, $0, -0x5
      addiu      $2, $0, 0x1
      sw         $2, 0x0($16)
      addiu      $4, $0, 0xC
      jal        func_80052504
       addu      $5, $0, $0
      addu       $4, $2, $0
      beqz       $4, .L800A6EB4
       addiu     $2, $0, 0x1
      addiu      $3, $0, 0x2003
      sw         $4, 0x4($16)
      sw         $3, 0x0($4)
      lui        $3, %hi(D_80125740)
      lw         $4, 0x4($16)
      addiu      $3, $3, %lo(D_80125740)
      sw         $3, 0x4($4)
      j          .L800A6EC0
       sw        $16, 0x0($17)
  .L800A6EB4:
      jal        func_80052540
       addu      $4, $16, $0
      addiu      $2, $0, -0x5
  .L800A6EC0:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A6E14

.globl func_800A6ED4
.ent func_800A6ED4
func_800A6ED4:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      beqz       $16, .L800A6EFC
       sw        $31, 0x14($29)
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
  .L800A6EFC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A6ED4

.globl func_800A6F10
.ent func_800A6F10
func_800A6F10:
      addiu      $29, $29, -0x40
      sw         $20, 0x28($29)
      lw         $20, 0x58($29)
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $23, 0x34($29)
      addu       $23, $5, $0
      sw         $21, 0x2C($29)
      addu       $21, $6, $0
      sw         $22, 0x30($29)
      addu       $22, $7, $0
      sw         $31, 0x38($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      beqz       $20, .L800A6F64
       sw        $16, 0x18($29)
      beqz       $19, .L800A6F64
       sw        $0, 0x0($20)
      lw         $18, 0x8($19)
      bnez       $18, .L800A6F6C
       addiu     $4, $0, 0x288
  .L800A6F64:
      j          .L800A7070
       addiu     $2, $0, -0x4
  .L800A6F6C:
      jal        func_80052504
       addu      $5, $0, $0
      addu       $16, $2, $0
      bnez       $16, .L800A6F88
       addiu     $4, $0, 0xC
      j          .L800A7070
       addiu     $2, $0, -0x5
  .L800A6F88:
      jal        func_80052504
       addu      $5, $0, $0
      addu       $17, $2, $0
      bnez       $17, .L800A6FAC
       addu      $4, $16, $0
      jal        func_80052540
       addu      $4, $16, $0
      j          .L800A7070
       addiu     $2, $0, -0x5
  .L800A6FAC:
      addu       $5, $21, $0
      addu       $6, $22, $0
      lui        $2, %hi(func_800A6E14 + 0x2C)
      lw         $7, 0x50($29)
      addiu      $2, $2, %lo(func_800A6E14 + 0x2C)
      sw         $2, 0x0($17)
      lui        $2, %hi(func_800A6ED4)
      addiu      $2, $2, %lo(func_800A6ED4)
      sw         $2, 0x4($17)
      sw         $16, 0x8($17)
      sw         $0, 0x14($16)
      sw         $0, 0x18($16)
      sw         $0, 0xC($16)
      jal        func_800A709C
       sw        $0, 0x10($16)
      sw         $18, 0x0($16)
      addu       $4, $18, $0
      addu       $5, $16, $0
      sb         $0, 0x27E($16)
      sw         $0, 0x2C($16)
      sw         $0, 0x30($16)
      sw         $0, 0x34($16)
      sw         $19, 0x4($16)
      jal        func_800A6688
       sw        $17, 0x8($16)
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bne        $18, $2, .L800A705C
       addiu     $4, $16, 0x24C
      addu       $5, $0, $0
      addu       $6, $5, $0
      addu       $7, $5, $0
      sb         $0, 0x27C($16)
      sw         $23, 0x1C($16)
      jal        func_8008A15C
       sw        $0, 0x10($29)
      addu       $4, $16, $0
      sw         $0, 0x20($4)
      sw         $0, 0x24($4)
      jal        func_8008F118
       sb        $0, 0x281($4)
      addiu      $2, $0, 0x1
      j          .L800A7070
       sw        $17, 0x0($20)
  .L800A705C:
      jal        func_80052540
       addu      $4, $16, $0
      jal        func_80052540
       addu      $4, $17, $0
      addu       $2, $18, $0
  .L800A7070:
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
.end func_800A6F10

.globl func_800A709C
.ent func_800A709C
func_800A709C:
      addiu      $29, $29, -0x30
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      addiu      $2, $0, -0x1
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      blez       $19, .L800A7118
       sw        $2, 0x28($20)
      lui        $21, %hi(D_800F1C58)
      addu       $18, $7, $0
      addu       $17, $6, $0
  .L800A70E0:
      lw         $5, 0x0($17)
      jal        func_8005211C
       addiu     $4, $21, %lo(D_800F1C58)
      bnel       $2, $0, .L800A7108
       addiu     $18, $18, 0x4
      lw         $4, 0x0($18)
      jal        func_80024000
       nop
      j          .L800A7118
       sw        $2, 0x28($20)
  .L800A7108:
      addiu      $16, $16, 0x1
      slt        $2, $16, $19
      bnez       $2, .L800A70E0
       addiu     $17, $17, 0x4
  .L800A7118:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800A709C

.globl func_800A713C
.ent func_800A713C
func_800A713C:
      addiu      $29, $29, -0x18
      beqz       $4, .L800A7154
       sw        $31, 0x10($29)
      lw         $4, 0x8($4)
      bnez       $4, .L800A715C
       nop
  .L800A7154:
      j          .L800A7198
       addiu     $2, $0, -0x4
  .L800A715C:
      lw         $2, 0x14($4)
      bnez       $2, .L800A7198
       addiu     $2, $0, -0x1
      lw         $2, 0x18($4)
      bnez       $2, .L800A7198
       addiu     $2, $0, -0x1
      lw         $2, 0x0($4)
      sw         $5, 0x14($4)
      sw         $6, 0x18($4)
      lw         $2, 0x8($2)
      blez       $2, .L800A7198
       addiu     $2, $0, 0x1
      jal        func_800A765C
       addiu     $5, $0, 0x1
      addiu      $2, $0, 0x1
  .L800A7198:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A713C

.globl func_800A71A4
.ent func_800A71A4
func_800A71A4:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $7, $0
      sw         $31, 0x24($29)
      beqz       $4, .L800A71D0
       sw        $16, 0x18($29)
      lw         $16, 0x8($4)
      bnez       $16, .L800A71D8
       nop
  .L800A71D0:
      j          .L800A7264
       addiu     $2, $0, -0x4
  .L800A71D8:
      lw         $2, 0xC($16)
      beqz       $2, .L800A71F4
       nop
      beqz       $17, .L800A71FC
       addiu     $2, $0, -0x1
      j          .L800A7264
       nop
  .L800A71F4:
      bnez       $17, .L800A7220
       addiu     $4, $16, 0x24C
  .L800A71FC:
      lw         $2, 0xC($16)
      beqz       $2, .L800A7220
       addiu     $4, $16, 0x24C
      lw         $2, 0x10($16)
      beql       $2, $0, .L800A7224
       addu      $5, $0, $0
      jal        func_8008EFEC
       addu      $4, $16, $0
      addiu      $4, $16, 0x24C
  .L800A7220:
      addu       $5, $0, $0
  .L800A7224:
      sw         $18, 0x2C($16)
      lw         $2, 0x38($29)
      addu       $6, $5, $0
      sw         $2, 0x34($16)
      lw         $2, 0x3C($29)
      addu       $7, $5, $0
      sw         $0, 0x24($16)
      sw         $0, 0x20($16)
      sw         $17, 0x10($16)
      sw         $0, 0xC($16)
      sw         $2, 0x30($16)
      jal        func_8008A15C
       sw        $0, 0x10($29)
      addu       $4, $16, $0
      jal        func_8008F180
       addu      $5, $18, $0
  .L800A7264:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A71A4

.globl func_800A727C
.ent func_800A727C
func_800A727C:
      beqz       $4, .L800A7290
       nop
      lw         $4, 0x8($4)
      bnez       $4, .L800A7298
       addiu     $2, $0, 0x1
  .L800A7290:
      jr         $31
       addiu     $2, $0, -0x4
  .L800A7298:
      lw         $6, 0x0($5)
      lw         $7, 0x4($5)
      lw         $8, 0x8($5)
      lw         $9, 0xC($5)
      sw         $6, 0x24C($4)
      sw         $7, 0x250($4)
      sw         $8, 0x254($4)
      sw         $9, 0x258($4)
      lw         $3, 0x2C($4)
      beq        $3, $2, .L800A72E4
       nop
      lw         $6, 0x0($5)
      lw         $7, 0x4($5)
      lw         $8, 0x8($5)
      lw         $9, 0xC($5)
      sw         $6, 0x26C($4)
      sw         $7, 0x270($4)
      sw         $8, 0x274($4)
      sw         $9, 0x278($4)
  .L800A72E4:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800A727C

.globl func_800A72EC
.ent func_800A72EC
func_800A72EC:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800A72EC

.globl func_800A72F4
.ent func_800A72F4
func_800A72F4:
      addiu      $29, $29, -0x20
      beqz       $4, .L800A730C
       sw        $31, 0x18($29)
      lw         $3, 0x8($4)
      bnez       $3, .L800A7314
       nop
  .L800A730C:
      j          .L800A7348
       addiu     $2, $0, -0x4
  .L800A7314:
      lw         $2, 0xC($3)
      beqz       $2, .L800A7348
       addu      $2, $0, $0
      beqz       $7, .L800A7338
       nop
      lw         $2, 0x0($7)
      sw         $2, 0x20($3)
      lw         $2, 0x4($7)
      sw         $2, 0x24($3)
  .L800A7338:
      lw         $2, 0x34($29)
      lw         $7, 0x30($29)
      jal        func_8008F198
       sw        $2, 0x10($29)
  .L800A7348:
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A72F4

.globl func_800A7354
.ent func_800A7354
func_800A7354:
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      beqz       $4, .L800A7374
       sw        $16, 0x10($29)
      lw         $16, 0x8($4)
      bnez       $16, .L800A737C
       addiu     $2, $0, 0x1
  .L800A7374:
      j          .L800A7440
       addiu     $2, $0, -0x4
  .L800A737C:
      beq        $5, $2, .L800A7390
       addu      $17, $0, $0
      addiu      $2, $0, 0x4
      bne        $5, $2, .L800A7398
       andi      $2, $17, 0xFF
  .L800A7390:
      addiu      $17, $0, 0x1
      andi       $2, $17, 0xFF
  .L800A7398:
      beqz       $2, .L800A73E4
       nop
      lw         $2, 0xC($16)
      bnez       $2, .L800A7424
       addu      $4, $16, $0
      lw         $2, 0x10($16)
      beqz       $2, .L800A7440
       addu      $2, $0, $0
      lw         $2, 0x18($16)
      beqz       $2, .L800A7440
       addu      $2, $0, $0
      jal        func_8008EEEC
       addu      $4, $16, $0
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      beq        $3, $2, .L800A73F8
       addu      $2, $3, $0
      j          .L800A7440
       nop
  .L800A73E4:
      jal        func_8008EFEC
       addu      $4, $16, $0
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800A7440
       addiu     $2, $0, -0x1
  .L800A73F8:
      lw         $2, 0x48($16)
      beqz       $2, .L800A7424
       addu      $4, $16, $0
      lw         $4, 0x14($16)
      lw         $5, 0x8($16)
      lw         $2, 0x18($16)
      lw         $6, 0xC($16)
      lw         $2, 0x2C($2)
      jalr       $2
       nop
      addu       $4, $16, $0
  .L800A7424:
      addu       $5, $17, $0
      jal        func_8008F064
       sb        $17, 0x27D($16)
      lw         $4, 0x0($16)
      jal        func_800A6B98
       nop
      addiu      $2, $0, 0x1
  .L800A7440:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A7354

.globl func_800A7454
.ent func_800A7454
func_800A7454:
      addiu      $29, $29, -0x20
      addu       $7, $5, $0
      addiu      $3, $0, 0x8
      sw         $31, 0x18($29)
      lw         $2, 0x4($7)
      lw         $5, 0x8($4)
      bnel       $2, $3, .L800A74B8
       addu      $3, $0, $0
      lw         $4, 0xC($5)
      lw         $8, 0x1C($7)
      lw         $2, 0x20($7)
      lw         $3, 0x18($7)
      lw         $6, 0x14($7)
      subu       $2, $2, $3
      sw         $2, 0x10($29)
      lw         $2, 0x18($7)
      sw         $2, 0x14($29)
      lw         $4, 0x68($4)
      lw         $5, 0xC($5)
      lw         $7, 0x14($7)
      jal        func_8002AFE0
       subu      $6, $8, $6
      bnez       $2, .L800A74B8
       addiu     $3, $0, -0x1
      addiu      $3, $0, 0x1
  .L800A74B8:
      lw         $31, 0x18($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A7454

.globl func_800A74C8
.ent func_800A74C8
func_800A74C8:
      beqz       $4, .L800A74F0
       addiu     $2, $0, -0x4
      lw         $4, 0x8($4)
      beqz       $4, .L800A74E8
       addiu     $2, $0, 0x1
      lw         $3, 0x4($4)
      jr         $31
       sw        $3, 0x0($5)
  .L800A74E8:
      jr         $31
       addiu     $2, $0, -0x4
  .L800A74F0:
      jr         $31
       nop
.end func_800A74C8

.globl func_800A74F8
.ent func_800A74F8
func_800A74F8:
      jr         $31
       addu      $2, $0, $0
.end func_800A74F8

.globl func_800A7500
.ent func_800A7500
func_800A7500:
      jr         $31
       addiu     $2, $0, -0x1
.end func_800A7500

.globl func_800A7508
.ent func_800A7508
func_800A7508:
      jr         $31
       addu      $2, $0, $0
.end func_800A7508

.globl func_800A7510
.ent func_800A7510
func_800A7510:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800A7510

.globl func_800A7518
.ent func_800A7518
func_800A7518:
      jr         $31
       addiu     $2, $0, -0x4
.end func_800A7518

.globl func_800A7520
.ent func_800A7520
func_800A7520:
      jr         $31
       addiu     $2, $0, -0x4
.end func_800A7520

.globl func_800A7528
.ent func_800A7528
func_800A7528:
      jr         $31
       addiu     $2, $0, -0x4
.end func_800A7528

.globl func_800A7530
.ent func_800A7530
func_800A7530:
      addiu      $29, $29, -0x28
      sw         $31, 0x20($29)
      beqz       $4, .L800A7564
       addu      $8, $6, $0
      lw         $3, 0x8($4)
      beqz       $3, .L800A759C
       addiu     $2, $0, -0x4
      lw         $2, 0x14($3)
      beqz       $2, .L800A759C
       addiu     $2, $0, -0x4
      lw         $4, 0x18($3)
      bnez       $4, .L800A756C
       addu      $6, $5, $0
  .L800A7564:
      j          .L800A759C
       addiu     $2, $0, -0x4
  .L800A756C:
      lw         $2, 0x38($29)
      sw         $2, 0x14($29)
      lw         $2, 0x3C($29)
      sw         $2, 0x18($29)
      lw         $2, 0x40($29)
      sw         $7, 0x10($29)
      sw         $2, 0x1C($29)
      lw         $2, 0x14($4)
      lw         $4, 0x14($3)
      lw         $5, 0x8($3)
      jalr       $2
       addu      $7, $8, $0
  .L800A759C:
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A7530

.globl func_800A75A8
.ent func_800A75A8
func_800A75A8:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      beqz       $17, .L800A75CC
       sw        $16, 0x10($29)
      lw         $16, 0x8($17)
      bnez       $16, .L800A75D4
       nop
  .L800A75CC:
      j          .L800A7640
       addiu     $2, $0, -0x4
  .L800A75D4:
      lw         $2, 0x18($16)
      beqz       $2, .L800A75FC
       nop
      lw         $4, 0x14($16)
      beqz       $4, .L800A75FC
       nop
      lw         $5, 0x8($16)
      lw         $2, 0x48($2)
      jalr       $2
       nop
  .L800A75FC:
      jal        func_8008EFEC
       addu      $4, $16, $0
      lbu        $2, 0x27C($16)
      bnez       $2, .L800A762C
       nop
      lw         $4, 0x0($16)
      jal        func_800A6710
       addu      $5, $16, $0
      bnez       $2, .L800A762C
       addu      $4, $16, $0
      jal        func_800A765C
       addiu     $5, $0, 0x3
  .L800A762C:
      jal        func_80052540
       addu      $4, $16, $0
      jal        func_80052540
       addu      $4, $17, $0
      addiu      $2, $0, 0x1
  .L800A7640:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A75A8

.globl func_800A7654
.ent func_800A7654
func_800A7654:
      jr         $31
       addu      $2, $0, $0
.end func_800A7654

.globl func_800A765C
.ent func_800A765C
func_800A765C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L800A77D0
       sw        $31, 0x14($29)
      addiu      $3, $5, -0x1
      sltiu      $2, $3, 0x5
      beqz       $2, .L800A77C8
       lui       $2, %hi(jtbl_800F5580)
      addiu      $2, $2, %lo(jtbl_800F5580)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800A7698
.L800A7698:
      lw         $4, 0x14($16)
      beqz       $4, .L800A77D0
       nop
      lw         $2, 0x18($16)
      beqz       $2, .L800A77D0
       nop
      lw         $3, 0x20($2)
      beqz       $3, .L800A77D0
       nop
      lw         $2, 0x0($16)
      lw         $5, 0x8($16)
      lw         $6, 0x8($2)
      lw         $7, 0x4($2)
      jalr       $3
       nop
      lw         $2, 0x0($16)
      lw         $6, 0xC($2)
      addiu      $2, $6, -0x1
      sltiu      $2, $2, 0x2
      beqz       $2, .L800A77D0
       nop
      lw         $4, 0x14($16)
      lw         $2, 0x18($16)
      lw         $5, 0x8($16)
      lw         $2, 0x44($2)
      jalr       $2
       nop
      j          .L800A77D0
       nop
  .globl .L800A770C
.L800A770C:
      addiu      $2, $0, 0x1
      j          .L800A77D0
       sb        $2, 0x27C($16)
  .globl .L800A7718
.L800A7718:
      lw         $2, 0x1C($16)
      andi       $2, $2, 0x1
      bnez       $2, .L800A775C
       nop
      lw         $4, 0x14($16)
      beqz       $4, .L800A77D0
       nop
      lw         $2, 0x18($16)
      beqz       $2, .L800A77D0
       nop
      lw         $5, 0x4($16)
      lw         $2, 0x38($2)
      jalr       $2
       nop
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800A77D0
       nop
  .L800A775C:
      lw         $4, 0x4($16)
      jal        func_800A67F8
       nop
      j          .L800A77D0
       nop
  .globl .L800A7770
.L800A7770:
      lw         $4, 0x14($16)
      beqz       $4, .L800A77D0
       nop
      lw         $2, 0x18($16)
      beqz       $2, .L800A77D0
       nop
      lw         $3, 0x44($2)
      beqz       $3, .L800A77D0
       nop
      lw         $2, 0x0($16)
      lw         $5, 0x8($16)
      lw         $6, 0xC($2)
      jalr       $3
       nop
      j          .L800A77D0
       nop
  .globl .L800A77B0
.L800A77B0:
      lw         $3, 0x2C($16)
      addiu      $2, $0, 0x3
      beq        $3, $2, .L800A77D0
       addiu     $2, $0, 0x1
      sb         $2, 0x27F($16)
      sb         $0, 0x27E($16)
  .L800A77C8:
      jal        func_8008F4D4
       addu      $4, $16, $0
  .L800A77D0:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A765C

.globl func_800A77E0
.ent func_800A77E0
func_800A77E0:
      lw         $2, 0x8($4)
      lw         $2, 0x2C($2)
      xori       $2, $2, 0x1
      jr         $31
       sltiu     $2, $2, 0x1
.end func_800A77E0

.globl func_800A77F4
.ent func_800A77F4
func_800A77F4:
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L800A7818
.end func_800A77F4

.globl func_800A7800
.ent func_800A7800
func_800A7800:
      addiu      $29, $29, -0x18
      addiu      $3, $5, -0x1
      sltiu      $2, $3, 0xD
      sw         $31, 0x10($29)
      lw         $4, 0x8($4)
      beqz       $2, .L800A788C
  .L800A7818:
       lui       $2, %hi(jtbl_800F55C0)
      addiu      $2, $2, %lo(jtbl_800F55C0)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800A7834
.L800A7834:
      jal        func_800A798C
       addu      $5, $6, $0
      j          .L800A7890
       nop
  .globl .L800A7844
.L800A7844:
      beqz       $4, .L800A7890
       addu      $2, $0, $0
      lw         $4, 0x0($4)
      beqz       $4, .L800A787C
       addiu     $2, $0, 0x1
      lw         $3, 0xC($4)
      bne        $3, $2, .L800A7890
       addu      $2, $0, $0
      lw         $2, 0x38($4)
      beqz       $2, .L800A7890
       addu      $2, $0, $0
      lw         $3, 0x34($4)
      bnez       $3, .L800A7890
       addiu     $2, $0, 0x1
  .globl .L800A787C
.L800A787C:
      j          .L800A7890
       addu      $2, $0, $0
  .globl .L800A7884
.L800A7884:
      j          .L800A7890
       addiu     $2, $0, 0x1
  .globl .L800A788C
.L800A788C:
      addiu      $2, $0, -0x4
  .L800A7890:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A7800

.globl func_800A789C
.ent func_800A789C
func_800A789C:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $16, 0x8($4)
      beqz       $16, .L800A78D8
       addu      $18, $6, $0
      addu       $5, $17, $0
      jal        func_800A7800
       addu      $6, $18, $0
      addiu      $3, $0, 0x1
      beq        $2, $3, .L800A78E0
       addiu     $3, $17, -0x9
  .L800A78D8:
      j          .L800A7960
       addiu     $2, $0, -0x4
  .L800A78E0:
      sltiu      $2, $3, 0x5
      beqz       $2, .L800A795C
       lui       $2, %hi(jtbl_800F55F8)
      addiu      $2, $2, %lo(jtbl_800F55F8)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800A7904
.L800A7904:
      addu       $4, $16, $0
      jal        func_800A7A30
       addu      $5, $18, $0
      j          .L800A7960
       nop
  .globl .L800A7918
.L800A7918:
      jal        func_800A7978
       addu      $4, $16, $0
      j          .L800A7960
       nop
  .globl .L800A7928
.L800A7928:
      lw         $2, 0x0($16)
      lw         $5, 0x34($2)
      lw         $2, 0x38($2)
      j          .L800A794C
       addiu     $4, $0, 0x4
  .globl .L800A793C
.L800A793C:
      lw         $2, 0x0($16)
      lw         $5, 0x34($2)
      lw         $2, 0x38($2)
      addiu      $4, $0, 0x6
  .L800A794C:
      jalr       $2
       nop
  .globl .L800A7954
.L800A7954:
      j          .L800A7960
       addiu     $2, $0, 0x1
  .L800A795C:
      addu       $2, $0, $0
  .L800A7960:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A789C

.globl func_800A7978
.ent func_800A7978
func_800A7978:
      beqz       $4, .L800A7984
       addiu     $2, $0, -0x4
      addiu      $2, $0, 0x1
  .L800A7984:
      jr         $31
       nop
.end func_800A7978

.globl func_800A798C
.ent func_800A798C
func_800A798C:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x1C($29)
      beqz       $18, .L800A79E4
       sw        $16, 0x10($29)
      lw         $5, 0x0($18)
      beqz       $5, .L800A7A18
       addu      $2, $0, $0
      beqz       $17, .L800A7A18
       nop
      lw         $2, 0x0($17)
      blez       $2, .L800A7A18
       addiu     $2, $0, -0x4
      lw         $2, 0x40($5)
      beqz       $2, .L800A7A18
       addu      $2, $0, $0
      lw         $5, 0x44($5)
      bnez       $5, .L800A79EC
       nop
  .L800A79E4:
      j          .L800A7A18
       addu      $2, $0, $0
  .L800A79EC:
      lw         $16, 0x4($17)
      jal        func_80017640
       addiu     $4, $16, 0x100
      sw         $0, 0xC($17)
      lw         $2, 0x0($18)
      lw         $5, 0x40($2)
      jal        func_80017640
       addu      $4, $16, $0
      addiu      $2, $0, 0x1
      addu       $3, $2, $0
      sw         $3, 0xC($17)
  .L800A7A18:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A798C

.globl func_800A7A30
.ent func_800A7A30
func_800A7A30:
      addiu      $29, $29, -0x78
      sw         $17, 0x6C($29)
      addu       $17, $4, $0
      sw         $16, 0x68($29)
      addu       $16, $5, $0
      beqz       $17, .L800A7A60
       sw        $31, 0x70($29)
      lw         $2, 0x0($17)
      beqz       $2, .L800A7B14
       addiu     $2, $0, -0x4
      bnez       $16, .L800A7A68
       nop
  .L800A7A60:
      j          .L800A7B14
       addiu     $2, $0, -0x4
  .L800A7A68:
      lw         $2, 0x10($16)
      bnez       $2, .L800A7B14
       addiu     $2, $0, -0x1
      addu       $4, $0, $0
      addu       $5, $4, $0
      jal        func_800A7B28
       addiu     $6, $29, 0x60
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800A7B14
       addu      $2, $3, $0
      jal        func_800A7C68
       addu      $4, $16, $0
      addu       $3, $2, $0
      bnez       $3, .L800A7ABC
       addiu     $4, $29, 0x20
      lw         $4, 0x60($29)
      jal        func_80052540
       nop
      j          .L800A7B14
       addiu     $2, $0, -0x20
  .L800A7ABC:
      addu       $5, $0, $0
      lw         $2, 0x60($29)
      addiu      $6, $0, 0x3C
      jal        func_80016140
       sw        $3, 0x0($2)
      lw         $2, 0x0($17)
      lw         $2, 0x14($2)
      sw         $2, 0x20($29)
      lui        $2, %hi(D_801257C0)
      lw         $3, 0x18($17)
      addiu      $2, $2, %lo(D_801257C0)
      sw         $0, 0x10($29)
      sw         $2, 0x14($29)
      lw         $2, 0x60($29)
      addiu      $6, $29, 0x20
      sw         $0, 0x1C($29)
      sw         $2, 0x18($29)
      lw         $4, 0x14($17)
      lw         $5, 0x8($17)
      lw         $2, 0x1C($3)
      jalr       $2
       addu      $7, $0, $0
  .L800A7B14:
      lw         $31, 0x70($29)
      lw         $17, 0x6C($29)
      lw         $16, 0x68($29)
      jr         $31
       addiu     $29, $29, 0x78
.end func_800A7A30

.globl func_800A7B28
.ent func_800A7B28
func_800A7B28:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      addiu      $4, $0, 0x4
      addu       $5, $0, $0
      sw         $31, 0x14($29)
      jal        func_80052504
       sw        $0, 0x0($16)
      beql       $2, $0, .L800A7B58
       addiu     $2, $0, -0x5
      sw         $2, 0x0($16)
      addiu      $2, $0, 0x1
  .L800A7B58:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A7B28

.globl func_800A7B68
.ent func_800A7B68
func_800A7B68:
      beqz       $4, .L800A7B74
       addiu     $2, $0, -0x4
      addiu      $2, $0, 0x1
  .L800A7B74:
      jr         $31
       nop
.end func_800A7B68

.globl func_800A7B7C
.ent func_800A7B7C
func_800A7B7C:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $19, 0x1C($29)
      sw         $31, 0x20($29)
      sw         $16, 0x10($29)
      lw         $16, 0x4($17)
      lw         $7, 0x0($18)
      lw         $4, 0x0($17)
      beqz       $7, .L800A7BD4
       addiu     $19, $0, 0x1
      addiu      $5, $0, 0x1
      jal        func_80018AF4
       addu      $6, $16, $0
      beq        $2, $16, .L800A7BD4
       nop
      lw         $4, 0x0($18)
      jal        func_80018620
       addiu     $19, $0, 0xDF
      sw         $0, 0x0($18)
  .L800A7BD4:
      lw         $2, 0x8($17)
      beql       $2, $0, .L800A7BEC
       addu      $2, $19, $0
      jalr       $2
       addu      $4, $17, $0
      addu       $2, $19, $0
  .L800A7BEC:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A7B7C

.globl func_800A7C08
.ent func_800A7C08
func_800A7C08:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      lw         $4, 0x0($16)
      beqz       $4, .L800A7C40
       addiu     $17, $0, 0x1
      jal        func_80018620
       nop
      bnel       $2, $0, .L800A7C40
       addiu     $17, $0, -0x21
  .L800A7C40:
      jal        func_80052540
       addu      $4, $16, $0
      addu       $2, $17, $0
      sw         $0, 0x0($18)
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A7C08

.globl func_800A7C68
.ent func_800A7C68
func_800A7C68:
      addiu      $29, $29, -0x18
      lui        $5, %hi(D_800F560C)
      sw         $31, 0x10($29)
      lw         $4, 0x8($4)
      jal        func_800183A4
       addiu     $5, $5, %lo(D_800F560C)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A7C68

.globl func_800A7C8C
.ent func_800A7C8C
func_800A7C8C:
      jal        func_800A815C
       addiu     $5, $0, 0x1
      addiu      $2, $0, 0x1
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A7C8C

.globl func_800A7CA4
.ent func_800A7CA4
func_800A7CA4:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $7, $0
      sw         $31, 0x24($29)
      beqz       $4, .L800A7CD0
       lui       $3, %hi(D_80125800)
      lw         $2, %lo(D_80125800)($3)
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
  .L800A7CD0:
      addu       $17, $5, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      bnez       $2, .L800A7D48
       sw        $16, 0x10($29)
      addiu      $2, $0, 0x1
      sw         $2, %lo(D_80125800)($3)
      lui        $3, %hi(D_80132940)
      addiu      $2, $0, 0x2000
      sw         $2, %lo(D_80132940)($3)
      addiu      $3, $3, %lo(D_80132940)
      lui        $2, %hi(D_80125840)
      addiu      $2, $2, %lo(D_80125840)
      sw         $2, 0x4($3)
      addiu      $2, $0, 0x2002
      sw         $2, 0xC($3)
      lui        $2, %hi(D_80125700)
      addiu      $2, $2, %lo(D_80125700)
      sw         $2, 0x10($3)
      addiu      $2, $0, 0x2003
      sw         $2, 0x18($3)
      lui        $2, %hi(D_80125740)
      addiu      $2, $2, %lo(D_80125740)
      sw         $2, 0x1C($3)
      addiu      $2, $0, 0x200C
      sw         $2, 0x24($3)
      lui        $2, %hi(D_80125580)
      addiu      $2, $2, %lo(D_80125580)
      sw         $2, 0x28($3)
  .L800A7D48:
      addiu      $4, $0, 0x10
      jal        func_80052504
       addu      $5, $0, $0
      addu       $16, $2, $0
      beqz       $16, .L800A7E64
       addu      $5, $0, $0
      addiu      $4, $0, 0x8
      addiu      $19, $0, 0x1
      jal        func_80052504
       sw        $19, 0x0($16)
      addu       $3, $2, $0
      beqz       $3, .L800A7E5C
       sw        $3, 0x4($16)
      addiu      $4, $0, 0x22
      addu       $5, $0, $0
      lui        $2, %hi(D_800EC658)
      addiu      $2, $2, %lo(D_800EC658)
      sw         $2, 0x0($3)
      lui        $2, %hi(D_800F5998)
      addiu      $2, $2, %lo(D_800F5998)
      lw         $3, 0x4($16)
      addiu      $18, $0, 0x2
      sw         $2, 0x4($3)
      jal        func_80052504
       sw        $18, 0x8($16)
      beqz       $2, .L800A7E50
       sw        $2, 0xC($16)
      addu       $4, $2, $0
      lui        $5, %hi(D_800F5988)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800F5988)
      lui        $5, %hi(D_800F5990)
      lw         $4, 0xC($16)
      addiu      $5, $5, %lo(D_800F5990)
      jal        func_80017640
       addiu     $4, $4, 0x11
      addiu      $2, $0, 0x1
      addiu      $4, $0, 0x3
      addiu      $5, $0, 0x4
      lui        $3, %hi(D_80132940)
      addiu      $3, $3, %lo(D_80132940)
      sw         $3, 0x14($17)
      lui        $3, %hi(D_800F5980)
      addiu      $3, $3, %lo(D_800F5980)
      sw         $3, 0x18($17)
      lui        $3, %hi(D_800EC7C0)
      addiu      $3, $3, %lo(D_800EC7C0)
      sw         $3, 0x1C($17)
      lui        $3, %hi(D_800EC7CC)
      addiu      $3, $3, %lo(D_800EC7CC)
      sw         $3, 0x20($17)
      lui        $3, %hi(D_800F5640)
      addiu      $3, $3, %lo(D_800F5640)
      sw         $4, 0x0($17)
      sw         $18, 0x4($17)
      sw         $16, 0x8($17)
      sw         $5, 0x10($17)
      sw         $4, 0xC($17)
      sw         $3, 0x24($17)
      sh         $5, 0x28($17)
      sh         $0, 0x2A($17)
      sh         $0, 0x2C($17)
      sh         $0, 0x2E($17)
      sw         $0, 0x30($17)
      j          .L800A7E68
       sh        $19, 0x34($17)
  .L800A7E50:
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
  .L800A7E5C:
      jal        func_80052540
       addu      $4, $16, $0
  .L800A7E64:
      addiu      $2, $0, -0x5
  .L800A7E68:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A7CA4

.globl func_800A7E84
.ent func_800A7E84
func_800A7E84:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      beqz       $5, .L800A7EC8
       sw        $16, 0x10($29)
      lw         $3, 0x4($5)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L800A7ECC
       addiu     $2, $0, 0x1
      lw         $16, 0x8($5)
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
      lw         $4, 0xC($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
  .L800A7EC8:
      addiu      $2, $0, 0x1
  .L800A7ECC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A7E84

.globl func_800A7EDC
.ent func_800A7EDC
func_800A7EDC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      blez       $7, .L800A7F20
       addu      $4, $0, $0
      addiu      $9, $0, 0x2010
      lui        $8, %hi(D_80139080)
      lui        $5, %hi(D_801329C0)
  .L800A7EF8:
      lw         $2, 0x0($6)
      bne        $2, $9, .L800A7F14
       addiu     $4, $4, 0x1
      lw         $2, 0x4($6)
      lw         $3, 0x8($6)
      sw         $2, %lo(D_80139080)($8)
      sw         $3, %lo(D_801329C0)($5)
  .L800A7F14:
      slt        $2, $4, $7
      bnez       $2, .L800A7EF8
       addiu     $6, $6, 0xC
  .L800A7F20:
      lui        $2, %hi(D_80125590)
      lw         $2, %lo(D_80125590)($2)
      jalr       $2
       nop
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A7EDC

.globl func_800A7F40
.ent func_800A7F40
func_800A7F40:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800A7F40

.globl func_800A7F48
.ent func_800A7F48
func_800A7F48:
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A7F48

.globl func_800A7F54
.ent func_800A7F54
func_800A7F54:
      addiu      $29, $29, -0x20
      addu       $7, $5, $0
      addiu      $3, $0, 0x8
      sw         $31, 0x18($29)
      lw         $2, 0x4($7)
      lw         $5, 0x8($4)
      bnel       $2, $3, .L800A7FB8
       addu      $3, $0, $0
      lw         $4, 0xC($5)
      lw         $8, 0x1C($7)
      lw         $2, 0x20($7)
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $16, 0x0($4)
      lw         $2, 0x8($16)
      jalr       $2
       nop
      addiu      $4, $16, 0x88
      jal        func_80191E50
       addiu     $5, $0, 0x1
.end func_800A7F54

.globl func_800A7FA8
.ent func_800A7FA8
func_800A7FA8:
      addiu      $29, $29, -0x28
      sw         $31, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
  .L800A7FB8:
      sw         $4, 0x28($29)
      sw         $5, 0x2C($29)
      sw         $6, 0x30($29)
      lw         $8, 0x1C($6)
      sw         $8, 0x10($29)
      lw         $2, 0x394($8)
      bnez       $2, .L800A8014
       nop
      addiu      $4, $8, 0x1D0
      sw         $0, 0x37C($8)
      sw         $0, 0x384($8)
      jal        func_800B34C4
       sw        $0, 0x380($8)
      lw         $8, 0x10($29)
      sw         $2, 0x0($8)
      lui        $2, %hi(func_800A7F54 + 0x2C)
      addiu      $2, $2, %lo(func_800A7F54 + 0x2C)
      sw         $2, 0x1D0($8)
      addiu      $2, $0, 0x1
      sw         $2, 0x394($8)
      lw         $8, 0x2C($29)
      beqz       $8, .L800A84A0
       nop
  .L800A8014:
      lw         $8, 0x10($29)
      jal        func_80191DC8
       addiu     $4, $8, 0x258
      beqz       $2, .L800A808C
       addiu     $2, $0, 0x1
      lw         $4, 0x10($29)
      jal        func_800A8F24
       nop
      lw         $8, 0x10($29)
      lw         $4, 0x37C($8)
      jal        func_80052540
       nop
      lw         $8, 0x10($29)
      lw         $4, 0x380($8)
      sw         $0, 0x37C($8)
      jal        func_80052540
       sw        $0, 0x384($8)
      lw         $8, 0x10($29)
      sw         $0, 0x380($8)
      lw         $3, 0x1E4($8)
      addiu      $2, $0, 0x33
      bnel       $3, $2, .L800A807C
       addiu     $2, $0, -0x1
      lw         $8, 0x30($29)
      j          .L800A8080
       addiu     $2, $0, -0x5
  .L800A807C:
      lw         $8, 0x30($29)
  .L800A8080:
      sw         $2, 0x24($8)
      j          .L800A84A0
       addiu     $2, $0, -0x1
  .L800A808C:
      lw         $8, 0x10($29)
      lw         $3, 0x394($8)
      bne        $3, $2, .L800A80F0
       addiu     $2, $0, 0x7FFF
      jal        func_800A8E80
       addu      $4, $8, $0
      lw         $8, 0x10($29)
      lbu        $2, 0x35C($8)
      beqz       $2, .L800A80CC
       nop
      lw         $5, 0x28($29)
      lw         $6, 0x2C($29)
      jal        func_800A9C50
       addu      $4, $8, $0
      j          .L800A80D8
       nop
  .L800A80CC:
      lw         $5, 0x36C($8)
      jal        func_800A9D80
       addu      $4, $8, $0
  .L800A80D8:
      lw         $8, 0x10($29)
      addiu      $2, $0, 0x2
      sw         $2, 0x394($8)
      lw         $8, 0x10($29)
      lw         $3, 0x394($8)
      addiu      $2, $0, 0x7FFF
  .L800A80F0:
      beq        $3, $2, .L800A8120
       addiu     $2, $0, -0x1
      beq        $3, $2, .L800A8120
       nop
      lbu        $2, 0x35C($8)
      bnez       $2, .L800A8120
       nop
      lw         $5, 0x28($29)
      lbu        $7, 0x35D($8)
      lw         $6, 0x2C($29)
      jal        func_800A9E60
       addu      $4, $8, $0
  .L800A8120:
      lw         $8, 0x10($29)
      lw         $3, 0x394($8)
      slti       $2, $3, 0x5
      beqz       $2, .L800A8154
       slti      $2, $3, 0x3
      beqz       $2, .L800A81E4
       addiu     $17, $0, -0x1
      beq        $3, $17, .L800A8478
       addiu     $2, $0, 0x2
      beq        $3, $2, .L800A8178
       addiu     $2, $0, 0x7FFF
      j          .L800A847C
       nop
  .L800A8154:
      addiu      $2, $0, 0x6
      beq        $3, $2, .L800A8404
.end func_800A7FA8

.globl func_800A815C
.ent func_800A815C
func_800A815C:
      slt        $2, $3, $2
      bnez       $2, .L800A8210
       addiu     $2, $0, 0x7
      beq        $3, $2, .L800A8454
       nop
      j          .L800A8470
       nop
  .L800A8178:
      lw         $4, 0x10($29)
      jal        func_800A9158
       addiu     $5, $0, 0x1
      beqz       $2, .L800A8470
       addiu     $16, $0, 0x1
      lw         $8, 0x10($29)
      sw         $16, 0x48($8)
      lw         $4, 0x10($29)
      jal        func_800A8688
       nop
      andi       $2, $2, 0xFF
      bnez       $2, .L800A81B8
       nop
      lw         $8, 0x10($29)
      j          .L800A8470
       sw        $17, 0x394($8)
  .L800A81B8:
      lw         $4, 0x10($29)
      jal        func_800A937C
       nop
      beqz       $2, .L800A81D8
       nop
      lw         $8, 0x10($29)
      sw         $16, 0x40($8)
      sw         $0, 0x398($8)
  .L800A81D8:
      lw         $8, 0x10($29)
      addiu      $2, $0, 0x4
      sw         $2, 0x394($8)
  .L800A81E4:
      lw         $4, 0x10($29)
      jal        func_800A9600
       nop
      beqz       $2, .L800A8470
       addiu     $3, $0, 0x5
      lw         $8, 0x10($29)
      lw         $2, 0x70($8)
      lw         $4, 0x74($8)
      sw         $3, 0x394($8)
      sw         $2, 0x370($8)
      sw         $4, 0x374($8)
  .L800A8210:
      lw         $8, 0x10($29)
      addiu      $4, $8, 0x37C
      lw         $5, 0x370($8)
      lw         $6, 0x374($8)
      jal        func_800A87AC
       addiu     $7, $8, 0x378
      andi       $2, $2, 0xFF
      bnez       $2, .L800A8240
       addiu     $5, $0, 0x1
      lw         $8, 0x10($29)
      j          .L800A82C0
       addiu     $2, $0, -0x1
  .L800A8240:
      lw         $8, 0x10($29)
      lw         $2, 0x70($8)
      lw         $6, 0x7C($8)
      mult       $2, $6
      addiu      $7, $0, 0x8
      lw         $2, 0x4($8)
      lw         $2, 0x8($2)
      mflo       $6
      jalr       $2
       addu      $4, $8, $0
      lw         $8, 0x10($29)
      lw         $3, 0x88($8)
      sw         $2, 0x358($8)
      addiu      $2, $0, 0x1
      sw         $0, 0x3A4($8)
      sw         $0, 0x3A0($8)
      sw         $0, 0x39C($8)
      sw         $0, 0x388($8)
      sw         $0, 0x38C($8)
      beqz       $3, .L800A83F8
       sb        $2, 0x390($8)
      lw         $2, 0x84($8)
      lw         $3, 0x380($8)
      bnez       $3, .L800A82D4
       sw        $2, 0x384($8)
      addiu      $4, $0, 0x300
      jal        func_80052504
       addu      $5, $0, $0
      lw         $8, 0x10($29)
      bnez       $2, .L800A82D4
       sw        $2, 0x380($8)
      addiu      $2, $0, -0x1
  .L800A82C0:
      sw         $2, 0x394($8)
      lw         $8, 0x30($29)
      addiu      $2, $0, -0x5
      j          .L800A8470
       sw        $2, 0x24($8)
  .L800A82D4:
      lw         $8, 0x10($29)
      lw         $2, 0x384($8)
      blez       $2, .L800A83B0
       addu      $4, $0, $0
      addiu      $6, $0, 0x2
      addu       $5, $4, $0
      lw         $8, 0x10($29)
  .L800A82F0:
      lw         $2, 0x28($8)
      bne        $2, $6, .L800A8344
       nop
      lw         $2, 0x88($8)
      lw         $2, 0x0($2)
      lw         $3, 0x380($8)
      addu       $2, $2, $4
      lbu        $2, 0x0($2)
      addu       $3, $5, $3
      sb         $2, 0x0($3)
      lw         $2, 0x88($8)
      lw         $2, 0x4($2)
      lw         $3, 0x380($8)
      addu       $2, $2, $4
      lbu        $2, 0x0($2)
      addu       $3, $5, $3
      sb         $2, 0x1($3)
      lw         $2, 0x88($8)
      lw         $2, 0x8($2)
      j          .L800A8384
       nop
  .L800A8344:
      lw         $2, 0x88($8)
      lw         $2, 0x0($2)
      lw         $3, 0x380($8)
      addu       $2, $2, $4
      lbu        $2, 0x0($2)
      addu       $3, $5, $3
      sb         $2, 0x0($3)
      lw         $2, 0x88($8)
      lw         $2, 0x0($2)
      lw         $3, 0x380($8)
      addu       $2, $2, $4
      lbu        $2, 0x0($2)
      addu       $3, $5, $3
      sb         $2, 0x1($3)
      lw         $2, 0x88($8)
      lw         $2, 0x0($2)
  .L800A8384:
      lw         $3, 0x380($8)
      addu       $2, $2, $4
      lbu        $2, 0x0($2)
      addu       $3, $5, $3
      sb         $2, 0x2($3)
      lw         $8, 0x10($29)
      lw         $2, 0x384($8)
      addiu      $4, $4, 0x1
      slt        $2, $4, $2
      bnez       $2, .L800A82F0
       addiu     $5, $5, 0x3
  .L800A83B0:
      slti       $2, $4, 0x100
      beqz       $2, .L800A83F8
       sll       $2, $4, 1
      addu       $3, $2, $4
  .L800A83C0:
      lw         $8, 0x10($29)
      lw         $2, 0x380($8)
      addu       $2, $3, $2
      sb         $0, 0x0($2)
      lw         $2, 0x380($8)
      addu       $2, $3, $2
      sb         $0, 0x1($2)
      lw         $2, 0x380($8)
      addiu      $4, $4, 0x1
      addu       $2, $3, $2
      sb         $0, 0x2($2)
      slti       $2, $4, 0x100
      bnez       $2, .L800A83C0
       addiu     $3, $3, 0x3
  .L800A83F8:
      lw         $8, 0x10($29)
      addiu      $2, $0, 0x6
      sw         $2, 0x394($8)
  .L800A8404:
      lw         $4, 0x10($29)
      jal        func_800A937C
       nop
      beqz       $2, .L800A842C
       nop
      lw         $4, 0x10($29)
      jal        func_800A858C
       nop
      j          .L800A843C
       andi      $2, $2, 0xFF
  .L800A842C:
      lw         $4, 0x10($29)
      jal        func_800A84B4
       nop
      andi       $2, $2, 0xFF
  .L800A843C:
      beqz       $2, .L800A8470
       addiu     $2, $0, 0x7
      lw         $8, 0x10($29)
      lw         $3, 0x374($8)
      sw         $2, 0x394($8)
      sw         $3, 0x38C($8)
  .L800A8454:
      lw         $4, 0x10($29)
      jal        func_800A93DC
       nop
      beqz       $2, .L800A8470
       addiu     $2, $0, 0x7FFF
      lw         $8, 0x10($29)
      sw         $2, 0x394($8)
  .L800A8470:
      lw         $8, 0x10($29)
      lw         $3, 0x394($8)
  .L800A8478:
      addiu      $2, $0, 0x7FFF
  .L800A847C:
      beq        $3, $2, .L800A848C
       addiu     $2, $0, -0x1
      bne        $3, $2, .L800A8498
       nop
  .L800A848C:
      lw         $4, 0x10($29)
      jal        func_800A8F24
       nop
  .L800A8498:
      lw         $8, 0x10($29)
      lw         $2, 0x394($8)
  .L800A84A0:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A815C

.globl func_800A84B4
.ent func_800A84B4
func_800A84B4:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x3A0($17)
      lw         $3, 0x374($17)
      slt        $2, $2, $3
      beqz       $2, .L800A8574
       addiu     $2, $0, 0x1
  .L800A84E0:
      addu       $4, $17, $0
      lw         $5, 0x358($17)
      jal        func_800A9888
       addiu     $6, $0, 0x8
      addu       $18, $2, $0
      beqz       $18, .L800A8574
       addu      $2, $0, $0
      blez       $18, .L800A854C
       addu      $16, $0, $0
  .L800A8504:
      lw         $6, 0x378($17)
      lw         $2, 0x3A0($17)
      lw         $3, 0x358($17)
      mult       $6, $2
      lw         $4, 0x37C($17)
      sll        $2, $16, 2
      addu       $2, $2, $3
      lw         $5, 0x0($2)
      mflo       $7
      jal        func_80013F00
       addu      $4, $4, $7
      lw         $2, 0x3A0($17)
      addiu      $16, $16, 0x1
      addiu      $2, $2, 0x1
      sw         $2, 0x3A0($17)
      slt        $2, $16, $18
      bnez       $2, .L800A8504
       nop
  .L800A854C:
      lw         $2, 0x3A4($17)
      sw         $2, 0x388($17)
      lw         $2, 0x3A0($17)
      lw         $4, 0x374($17)
      addu       $3, $2, $0
      addiu      $2, $2, -0x1
      slt        $3, $3, $4
      bnez       $3, .L800A84E0
       sw        $2, 0x38C($17)
      addiu      $2, $0, 0x1
  .L800A8574:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A84B4

.globl func_800A858C
.ent func_800A858C
func_800A858C:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addiu      $17, $0, 0x2
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
  .L800A85AC:
      jal        func_800A921C
       addu      $4, $16, $0
      beqz       $2, .L800A85C4
       nop
      bne        $2, $17, .L800A85AC
       nop
  .L800A85C4:
      jal        func_800A931C
       addu      $4, $16, $0
      addiu      $18, $0, 0x1
      addiu      $17, $0, 0x2
      andi       $19, $2, 0xFF
  .L800A85D8:
      lw         $3, 0x398($16)
      beq        $3, $18, .L800A8630
       slti      $2, $3, 0x2
      beqz       $2, .L800A85FC
       nop
      beqz       $3, .L800A860C
       addu      $4, $16, $0
      j          .L800A8664
       nop
  .L800A85FC:
      beql       $3, $17, .L800A864C
       sb        $0, 0x390($16)
      j          .L800A8664
       nop
  .L800A860C:
      lw         $2, 0x90($16)
      sw         $0, 0x3A0($16)
      sw         $0, 0x39C($16)
      addu       $5, $2, $0
      jal        func_800A9988
       sw        $2, 0x3A4($16)
      beqz       $2, .L800A866C
       addu      $2, $0, $0
      sw         $18, 0x398($16)
  .L800A8630:
      jal        func_800A84B4
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800A866C
       addu      $2, $0, $0
      sw         $17, 0x398($16)
      sb         $0, 0x390($16)
  .L800A864C:
      jal        func_800A9A24
       addu      $4, $16, $0
      bnel       $2, $0, .L800A8664
       sw        $0, 0x398($16)
      j          .L800A866C
       addu      $2, $0, $0
  .L800A8664:
      beqz       $19, .L800A85D8
       addiu     $2, $0, 0x1
  .L800A866C:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A858C

.globl func_800A8688
.ent func_800A8688
func_800A8688:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      jal        func_80090000
       sw        $17, 0x14($29)
      lw         $2, 0x24($16)
      addiu      $4, $0, 0x1
      bne        $2, $4, .L800A86D4
       lui       $17, %hi(D_80125600)
      addiu      $2, $0, 0x100
      sw         $4, 0x28($16)
      sw         $4, 0x64($16)
      sw         $0, 0x6C($16)
      sw         $4, 0x54($16)
      sw         $2, 0x60($16)
      sw         $0, 0x5C($16)
      j          .L800A8794
       sw        $0, 0x58($16)
  .L800A86D4:
      addiu      $2, $0, 0x2
      sw         $4, 0x64($16)
      sw         $4, 0x54($16)
      addu       $4, $16, $0
      lw         $3, %lo(D_80125600)($17)
      addiu      $5, $0, 0x1
      sw         $2, 0x28($16)
      lw         $2, 0x4($16)
      addiu      $6, $0, 0x100
      sw         $0, 0x6C($16)
      sw         $3, 0x60($16)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $7, $0, 0x3
      lw         $3, %lo(D_80125600)($17)
      addu       $5, $0, $0
      blez       $3, .L800A877C
       sw        $2, 0x88($16)
      lui        $2, %hi(D_80132AE8)
      addiu      $7, $2, %lo(D_80132AE8)
      addu       $6, $17, $0
  .L800A8728:
      lw         $2, 0x88($16)
      addu       $4, $5, $7
      lw         $2, 0x0($2)
      lbu        $3, 0x0($4)
      addu       $2, $2, $5
      sb         $3, 0x0($2)
      lw         $2, 0x88($16)
      lw         $2, 0x4($2)
      lbu        $3, 0x100($4)
      addu       $2, $2, $5
      sb         $3, 0x0($2)
      lw         $2, 0x88($16)
      lw         $2, 0x8($2)
      lbu        $3, 0x200($4)
      addu       $2, $2, $5
      sb         $3, 0x0($2)
      lw         $2, %lo(D_80125600)($6)
      addiu      $5, $5, 0x1
      slt        $2, $5, $2
      bnez       $2, .L800A8728
       nop
  .L800A877C:
      lui        $2, %hi(D_80125600)
      lw         $3, %lo(D_80125600)($2)
      addiu      $2, $0, 0x2
      sw         $0, 0x5C($16)
      sw         $2, 0x58($16)
      sw         $3, 0x84($16)
  .L800A8794:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A8688

.globl func_800A87AC
.ent func_800A87AC
func_800A87AC:
      addiu      $29, $29, -0x18
      mult       $5, $6
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      sw         $5, 0x0($7)
      mflo       $4
      jal        func_80052504
       addu      $5, $0, $0
      addu       $3, $2, $0
      sw         $3, 0x0($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      sltu       $2, $0, $3
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A87AC

.globl func_800A87EC
.ent func_800A87EC
func_800A87EC:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      lw         $3, 0x1C($16)
      lbu        $2, 0x368($3)
      bnez       $2, .L800A8904
       nop
      lw         $2, 0x20($16)
      slti       $2, $2, 0x6
      bnez       $2, .L800A8904
       addiu     $2, $0, 0x1
      sb         $2, 0x368($3)
      lw         $4, 0x0($16)
      jal        func_800A65D0
       nop
      lw         $3, 0x1C($16)
      sw         $2, 0x364($3)
      lw         $2, 0x1C($16)
      lw         $2, 0x364($2)
      beqz       $2, .L800A897C
       addiu     $2, $0, -0x5
      lw         $3, 0x1C($16)
      sw         $0, 0x0($16)
      lw         $2, 0x364($3)
      lw         $2, 0x8($2)
      sw         $2, 0x360($3)
      lw         $3, 0x1C($16)
      lui        $2, %hi(D_800F5940)
      lw         $3, 0x360($3)
      addiu      $2, $2, %lo(D_800F5940)
      sw         $2, 0x40($3)
      lw         $3, 0x1C($16)
      lui        $2, %hi(D_800F5988)
      lw         $3, 0x360($3)
      addiu      $2, $2, %lo(D_800F5988)
      sw         $2, 0x44($3)
      lw         $2, 0x1C($16)
      lw         $4, 0x360($2)
      lw         $5, 0x370($2)
      lw         $6, 0x374($2)
      jal        func_800A6948
       nop
      lw         $7, 0x1C($16)
      lw         $3, 0x28($7)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800A88B8
       addiu     $2, $0, -0x1
      sw         $2, 0x10($29)
      j          .L800A88C4
       sw        $0, 0x14($29)
  .L800A88B8:
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x20
      sw         $2, 0x14($29)
  .L800A88C4:
      lw         $4, 0x360($7)
      lw         $5, 0x37C($7)
      lw         $6, 0x380($7)
      lw         $7, 0x384($7)
      jal        func_800A6A64
       nop
      lw         $4, 0x4($16)
      addiu      $2, $0, 0x1
      sb         $2, 0x28($16)
      lw         $2, 0x1C($16)
      lw         $3, 0x8($16)
      lw         $5, 0x364($2)
      lw         $2, 0x10($3)
      jalr       $2
       nop
      lw         $3, 0x1C($16)
  .L800A8904:
      lw         $4, 0x360($3)
      beqz       $4, .L800A8980
       nop
      lw         $2, 0x38C($3)
      addiu      $2, $2, -0x1
      bltz       $2, .L800A8980
       nop
      lw         $2, 0x388($3)
      sw         $2, 0x20($4)
      lw         $2, 0x1C($16)
      lw         $3, 0x360($2)
      lw         $2, 0x38C($2)
      sw         $2, 0x18($3)
      lw         $2, 0x1C($16)
      lw         $3, 0x360($2)
      lbu        $2, 0x390($2)
      sb         $2, 0x28($3)
      lw         $2, 0x1C($16)
      lw         $4, 0x360($2)
      jal        func_800A6AB0
       addiu     $5, $0, 0x1
      lw         $2, 0x1C($16)
      lw         $3, 0x360($2)
      lw         $2, 0x18($3)
      sw         $2, 0x1C($3)
      lw         $2, 0x1C($16)
      lw         $3, 0x360($2)
      lw         $2, 0x20($3)
      j          .L800A8980
       sw        $2, 0x24($3)
  .L800A897C:
      sw         $2, 0x24($16)
  .L800A8980:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A87EC

.globl func_800A8990
.ent func_800A8990
func_800A8990:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L800A8A08
       sw        $31, 0x14($29)
      lw         $3, 0x1C($16)
      beqz       $3, .L800A89F4
       nop
      lbu        $2, 0x28($16)
      bnez       $2, .L800A89E8
       nop
      lw         $4, 0x37C($3)
      jal        func_80052540
       nop
      lw         $2, 0x1C($16)
      sw         $0, 0x37C($2)
      lw         $2, 0x1C($16)
      lw         $4, 0x380($2)
      jal        func_80052540
       nop
      lw         $2, 0x1C($16)
      sw         $0, 0x380($2)
  .L800A89E8:
      lw         $4, 0x1C($16)
      jal        func_80052540
       nop
  .L800A89F4:
      lw         $4, 0x0($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
  .L800A8A08:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A8990

.globl func_800A8A18
.ent func_800A8A18
func_800A8A18:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $31, 0x20($29)
      bnez       $17, .L800A8A48
       sw        $16, 0x10($29)
      j          .L800A8AB8
       addiu     $2, $0, -0x4
  .L800A8A48:
      sw         $0, 0x0($17)
      addiu      $4, $0, 0x2C
      jal        func_80052504
       addu      $5, $0, $0
      addu       $16, $2, $0
      beqz       $16, .L800A8AB4
       addu      $5, $0, $0
      addiu      $4, $0, 0x3A8
      addiu      $2, $0, 0x1
      jal        func_80052504
       sw        $2, 0x24($16)
      beqz       $2, .L800A8AAC
       sw        $2, 0x1C($16)
      sb         $0, 0x35D($2)
      lw         $3, 0x1C($16)
      addiu      $2, $0, 0x1
      sw         $0, 0x394($3)
      lw         $4, 0x1C($16)
      addiu      $3, $0, 0x1000
      sw         $3, 0x36C($4)
      sw         $18, 0x4($16)
      sw         $19, 0x8($16)
      sw         $0, 0x0($16)
      j          .L800A8AB8
       sw        $16, 0x0($17)
  .L800A8AAC:
      jal        func_800A8990
       addu      $4, $16, $0
  .L800A8AB4:
      addiu      $2, $0, -0x5
  .L800A8AB8:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A8A18

.globl func_800A8AD4
.ent func_800A8AD4
func_800A8AD4:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $7, $0
      sw         $17, 0x14($29)
      addiu      $17, $0, -0x4
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L800A8BC4
       sw        $31, 0x1C($29)
      lw         $2, 0x1C($16)
      beqz       $2, .L800A8BA8
       addu      $5, $0, $0
      lui        $2, %hi(D_800EC694)
      addiu      $17, $2, %lo(D_800EC694)
      lw         $4, 0x30($29)
      lw         $2, 0x38($29)
      addu       $6, $17, $0
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      sw         $8, 0xC($16)
      sw         $9, 0x10($16)
      lw         $2, 0x3C($29)
      addu       $7, $5, $0
      sw         $0, 0x18($16)
      jal        func_8005446C
       sw        $2, 0x14($16)
      bnez       $2, .L800A8B5C
       addu      $4, $18, $0
      addu       $5, $0, $0
      addu       $6, $17, $0
      jal        func_8005446C
       addu      $7, $5, $0
      beqz       $2, .L800A8BA8
       addiu     $17, $0, -0x1
  .L800A8B5C:
      jal        func_800523C0
       addu      $4, $2, $0
      bnez       $2, .L800A8B74
       sw        $2, 0x0($16)
      j          .L800A8BA8
       addiu     $17, $0, -0x5
  .L800A8B74:
      addu       $4, $0, $0
      addu       $5, $4, $0
      jal        func_800A7FA8
       addu      $6, $16, $0
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800A8B98
       sw        $2, 0x20($16)
      j          .L800A8BC8
       addu      $2, $3, $0
  .L800A8B98:
      lw         $2, 0x24($16)
      bgez       $2, .L800A8BA8
       addiu     $17, $0, -0x1
      addu       $17, $2, $0
  .L800A8BA8:
      beqz       $16, .L800A8BC8
       addu      $2, $17, $0
      lw         $4, 0x0($16)
      jal        func_80052540
       nop
      jal        func_800A8990
       addu      $4, $16, $0
  .L800A8BC4:
      addu       $2, $17, $0
  .L800A8BC8:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A8AD4

.globl func_800A8BE0
.ent func_800A8BE0
func_800A8BE0:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      lw         $2, 0x1C($16)
      addu       $18, $7, $0
      sb         $0, 0x35D($2)
      lw         $4, 0x0($17)
      lw         $5, 0x4($17)
      jal        func_800A7FA8
       addu      $6, $16, $0
      lw         $3, 0x24($16)
      sw         $2, 0x20($16)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800A8C40
       lui       $2, %hi(D_80133DD2)
      lbu        $2, %lo(D_80133DD2)($2)
      beqz       $2, .L800A8C40
       nop
      jal        func_800A87EC
       addu      $4, $16, $0
  .L800A8C40:
      lw         $2, 0x8($17)
      beql       $2, $0, .L800A8C58
       sw        $0, 0x0($18)
      jalr       $2
       addu      $4, $17, $0
      sw         $0, 0x0($18)
  .L800A8C58:
      lw         $3, 0x20($16)
      addiu      $2, $0, -0x1
      bne        $3, $2, .L800A8C74
       addiu     $2, $0, 0x1
      lw         $3, 0x24($16)
      beq        $3, $2, .L800A8C78
       addiu     $2, $0, -0x1
  .L800A8C74:
      lw         $2, 0x24($16)
  .L800A8C78:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A8BE0

.globl func_800A8C90
.ent func_800A8C90
func_800A8C90:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $19, 0x1C($29)
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x20($29)
      sw         $18, 0x18($29)
      lw         $3, 0x1C($16)
      addiu      $2, $0, 0x1
      sb         $2, 0x35D($3)
      lw         $3, 0x20($16)
      addiu      $2, $0, -0x1
      bne        $3, $2, .L800A8CDC
       addu      $19, $6, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800A8D80
       nop
      addiu      $17, $0, -0x1
  .L800A8CDC:
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800A8D80
       nop
      lw         $2, 0x1C($16)
      lw         $2, 0x360($2)
      bnel       $2, $0, .L800A8CF8
       sb        $17, 0x29($2)
  .L800A8CF8:
      lw         $2, 0x20($16)
      addiu      $18, $0, 0x7FFF
      beq        $2, $18, .L800A8D18
       addu      $4, $0, $0
      addu       $5, $4, $0
      jal        func_800A7FA8
       addu      $6, $16, $0
      sw         $2, 0x20($16)
  .L800A8D18:
      lw         $2, 0x24($16)
      bne        $2, $17, .L800A8D70
       nop
      lw         $3, 0x20($16)
      addiu      $2, $3, -0x6
      sltiu      $2, $2, 0x2
      bnez       $2, .L800A8D40
       nop
      bne        $3, $18, .L800A8D70
       nop
  .L800A8D40:
      jal        func_800A87EC
       addu      $4, $16, $0
      lw         $2, 0x24($16)
      bne        $2, $17, .L800A8E10
       addiu     $5, $0, 0x1
      lw         $2, 0x1C($16)
      lw         $2, 0x360($2)
      sb         $17, 0x29($2)
      lw         $2, 0x1C($16)
      lw         $4, 0x360($2)
      j          .L800A8E08
       nop
  .L800A8D70:
      lw         $2, 0x1C($16)
      lw         $4, 0x360($2)
      j          .L800A8E08
       addiu     $5, $0, -0x1
  .L800A8D80:
      lw         $2, 0x1C($16)
      addiu      $3, $0, -0x1
      sw         $3, 0x394($2)
      lw         $2, 0x20($16)
      beq        $2, $3, .L800A8DA8
       addu      $4, $0, $0
      addu       $5, $4, $0
      jal        func_800A7FA8
       addu      $6, $16, $0
      sw         $2, 0x20($16)
  .L800A8DA8:
      lw         $5, 0x1C($16)
      lw         $4, 0x360($5)
      beqz       $4, .L800A8E10
       addiu     $2, $0, 0x1
      lw         $3, 0x24($16)
      bne        $3, $2, .L800A8DF0
       lui       $2, %hi(D_80133DD2)
      lbu        $2, %lo(D_80133DD2)($2)
      beqz       $2, .L800A8DF0
       addiu     $2, $0, -0x7
      bne        $17, $2, .L800A8DF0
       nop
      lw         $2, 0x388($5)
      bgtzl      $2, .L800A8E08
       addiu     $5, $0, 0x2
      lw         $2, 0x38C($5)
      bgtz       $2, .L800A8E08
       addiu     $5, $0, 0x2
  .L800A8DF0:
      lw         $3, 0x1C($16)
      addiu      $2, $0, -0x7
      beq        $17, $2, .L800A8E04
       addiu     $5, $0, 0x2
      addiu      $5, $0, -0x1
  .L800A8E04:
      lw         $4, 0x360($3)
  .L800A8E08:
      jal        func_800A69A4
       nop
  .L800A8E10:
      lw         $2, 0x1C($16)
      lw         $5, 0x364($2)
      beqz       $5, .L800A8E38
       addu      $4, $16, $0
      lw         $2, 0x8($16)
      lw         $4, 0x4($16)
      lw         $2, 0x14($2)
      jalr       $2
       addu      $6, $17, $0
      addu       $4, $16, $0
  .L800A8E38:
      lw         $16, 0x24($4)
      jal        func_800A8990
       nop
      sw         $0, 0x0($19)
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      addu       $2, $16, $0
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A8C90

.globl func_800A8E68
.ent func_800A8E68
func_800A8E68:
      lw         $3, 0x380($8)
      addu       $2, $2, $4
      lbu        $2, 0x0($2)
      addu       $3, $5, $3
      sb         $2, 0x1($3)
      lw         $2, 0x88($8)
.end func_800A8E68

.globl func_800A8E80
.ent func_800A8E80
func_800A8E80:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      addu       $5, $0, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $16, 0x0($17)
      jal        func_80016140
       addiu     $6, $0, 0x1D0
      addu       $4, $17, $0
      addiu      $2, $0, 0x1
      sw         $2, 0xC($17)
      jal        func_800B5614
       sw        $16, 0x0($17)
      addiu      $4, $0, 0x3
      addiu      $2, $17, 0xC
      sw         $0, 0x8($17)
      sw         $0, 0x14($17)
  .L800A8EC8:
      sw         $0, 0xA4($2)
      addiu      $4, $4, -0x1
      bgez       $4, .L800A8EC8
       addiu     $2, $2, -0x4
      addu       $4, $0, $0
      addu       $3, $17, $0
  .L800A8EE0:
      sw         $0, 0xB4($3)
      sw         $0, 0xC4($3)
      addiu      $4, $4, 0x1
      slti       $2, $4, 0x4
      bnez       $2, .L800A8EE0
       addiu     $3, $3, 0x4
      jal        func_800ACB08
       addu      $4, $17, $0
      jal        func_800AA7F4
       addu      $4, $17, $0
      addiu      $2, $0, 0xC8
      sw         $2, 0x10($17)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A8E80

.globl func_800A8F24
.ent func_800A8F24
func_800A8F24:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800A9560
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A8F24

.globl func_800A8F40
.ent func_800A8F40
func_800A8F40:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x20($16)
      addiu      $2, $0, 0x3
      beq        $4, $2, .L800A8F94
       slti      $2, $4, 0x4
      beqz       $2, .L800A8F78
       addiu     $2, $0, 0x1
      beql       $4, $2, .L800A8F8C
       sw        $4, 0x24($16)
      j          .L800A90F0
       sw        $0, 0x24($16)
  .L800A8F78:
      addiu      $2, $0, 0x4
      beq        $4, $2, .L800A908C
       nop
      j          .L800A90F0
       sw        $0, 0x24($16)
  .L800A8F8C:
      j          .L800A90F4
       sw        $4, 0x28($16)
  .L800A8F94:
      lw         $2, 0x118($16)
      bnel       $2, $0, .L800A9080
       sw        $4, 0x24($16)
      lw         $2, 0x124($16)
      beqz       $2, .L800A8FF4
       addiu     $3, $0, 0x1
      lbu        $3, 0x128($16)
      beqz       $3, .L800A8FC8
       addiu     $2, $0, 0x1
      beq        $3, $2, .L800A9020
       addiu     $2, $0, 0x6C
      j          .L800A8FD0
       addu      $4, $16, $0
  .L800A8FC8:
      j          .L800A907C
       addiu     $2, $0, 0x2
  .L800A8FD0:
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      lbu        $2, 0x128($16)
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x4($2)
      j          .L800A9070
       addiu     $5, $0, -0x1
  .L800A8FF4:
      lw         $2, 0xD8($16)
      lw         $5, 0x0($2)
      lw         $6, 0x54($2)
      lw         $7, 0xA8($2)
      bne        $5, $3, .L800A9028
       addiu     $2, $0, 0x52
      addiu      $2, $0, 0x2
      bne        $6, $2, .L800A9028
       addiu     $2, $0, 0x52
      bne        $7, $4, .L800A9028
       nop
  .L800A9020:
      j          .L800A9080
       sw        $4, 0x24($16)
  .L800A9028:
      bne        $5, $2, .L800A9040
       addiu     $2, $0, 0x47
      bne        $6, $2, .L800A9040
       addiu     $2, $0, 0x42
      beq        $7, $2, .L800A907C
       addiu     $2, $0, 0x2
  .L800A9040:
      lw         $2, 0x0($16)
      sw         $5, 0x18($2)
      addiu      $2, $2, 0x18
      sw         $6, 0x4($2)
      sw         $7, 0x8($2)
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x69
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      addu       $4, $16, $0
      lw         $2, 0x4($2)
      addiu      $5, $0, 0x1
  .L800A9070:
      jalr       $2
       nop
      addiu      $2, $0, 0x3
  .L800A907C:
      sw         $2, 0x24($16)
  .L800A9080:
      addiu      $2, $0, 0x2
      j          .L800A90F4
       sw        $2, 0x28($16)
  .L800A908C:
      lw         $2, 0x124($16)
      beql       $2, $0, .L800A90E4
       sw        $4, 0x24($16)
      lbu        $3, 0x128($16)
      beqz       $3, .L800A90E0
       addiu     $2, $0, 0x2
      beq        $3, $2, .L800A90D4
       addiu     $2, $0, 0x6C
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      lbu        $2, 0x128($16)
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      addu       $4, $16, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, -0x1
  .L800A90D4:
      addiu      $2, $0, 0x5
      j          .L800A90E4
       sw        $2, 0x24($16)
  .L800A90E0:
      sw         $4, 0x24($16)
  .L800A90E4:
      addiu      $2, $0, 0x4
      j          .L800A90F4
       sw        $2, 0x28($16)
  .L800A90F0:
      sw         $0, 0x28($16)
  .L800A90F4:
      addiu      $3, $0, 0x1
      lui        $1, %hi(D_800F5680)
      ldc1       $f0, %lo(D_800F5680)($1)
      addiu      $2, $0, 0x2
      sw         $2, 0x58($16)
      addiu      $2, $0, 0x100
      sw         $3, 0x2C($16)
      sw         $3, 0x30($16)
      sw         $0, 0x40($16)
      sw         $0, 0x44($16)
      sw         $0, 0x48($16)
      sw         $3, 0x4C($16)
      sw         $3, 0x50($16)
      sw         $0, 0x54($16)
      sw         $3, 0x5C($16)
      sw         $2, 0x60($16)
      sw         $0, 0x88($16)
      sw         $0, 0x64($16)
      sw         $0, 0x68($16)
      sw         $0, 0x6C($16)
      sdc1       $f0, 0x38($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A8F40

.globl func_800A9158
.ent func_800A9158
func_800A9158:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lw         $2, 0x10($16)
      addiu      $2, $2, -0xC8
      sltiu      $2, $2, 0x2
      bnez       $2, .L800A91AC
       addu      $18, $5, $0
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x11
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      lw         $2, 0x10($16)
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800A91AC:
      jal        func_800A921C
       addu      $4, $16, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      beq        $17, $2, .L800A9200
       slti      $2, $17, 0x2
      bnez       $2, .L800A9204
       addu      $2, $17, $0
      addiu      $2, $0, 0x2
      bne        $17, $2, .L800A9204
       addu      $2, $17, $0
      beqz       $18, .L800A91F8
       addiu     $2, $0, 0x30
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
  .L800A91F8:
      jal        func_800A9500
       addu      $4, $16, $0
  .L800A9200:
      addu       $2, $17, $0
  .L800A9204:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A9158

.globl func_800A921C
.ent func_800A921C
func_800A921C:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $2, 0x10($16)
      addiu      $3, $2, -0xC8
      sltiu      $2, $3, 0xB
      beqz       $2, .L800A92DC
       addu      $17, $0, $0
      lui        $2, %hi(jtbl_800F5688)
      addiu      $2, $2, %lo(jtbl_800F5688)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800A9260
.L800A9260:
      lw         $2, 0x1B0($16)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $16, $0
      lw         $2, 0x14($16)
      lw         $2, 0x8($2)
      jalr       $2
       addu      $4, $16, $0
      addiu      $2, $0, 0xC9
      sw         $2, 0x10($16)
  .globl .L800A9288
.L800A9288:
      lw         $2, 0x1B0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800A9308
       addu      $2, $17, $0
      jal        func_800A8F40
       addu      $4, $16, $0
      addiu      $2, $0, 0xCA
      j          .L800A9304
       sw        $2, 0x10($16)
  .globl .L800A92BC
.L800A92BC:
      j          .L800A9304
       addiu     $17, $0, 0x1
  .globl .L800A92C4
.L800A92C4:
      lw         $2, 0x1B0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      j          .L800A9304
       addu      $17, $2, $0
  .globl .L800A92DC
.L800A92DC:
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x11
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      lw         $2, 0x10($16)
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
  .L800A9304:
      addu       $2, $17, $0
  .L800A9308:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A921C

.globl func_800A931C
.ent func_800A931C
func_800A931C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x10($16)
      addiu      $2, $2, -0xC8
      sltiu      $2, $2, 0xB
      bnez       $2, .L800A9364
       addiu     $2, $0, 0x11
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      lw         $2, 0x10($16)
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800A9364:
      lw         $2, 0x1B0($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      lw         $2, 0x14($2)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A931C

.globl func_800A937C
.ent func_800A937C
func_800A937C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x10($16)
      addiu      $2, $2, -0xCA
      sltiu      $2, $2, 0x9
      bnez       $2, .L800A93C4
       addiu     $2, $0, 0x11
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      lw         $2, 0x10($16)
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800A93C4:
      lw         $2, 0x1B0($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      lw         $2, 0x10($2)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A937C

.globl func_800A93DC
.ent func_800A93DC
func_800A93DC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x10($16)
      addiu      $2, $2, -0xCD
      sltiu      $2, $2, 0x2
      beqz       $2, .L800A9450
       nop
      lw         $2, 0x40($16)
      bnez       $2, .L800A9450
       nop
      lw         $2, 0x8C($16)
      lw         $3, 0x74($16)
      sltu       $2, $2, $3
      beqz       $2, .L800A9438
       addiu     $2, $0, 0x40
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800A9438:
      lw         $2, 0x1A0($16)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $16, $0
      j          .L800A9460
       addiu     $2, $0, 0xD2
  .L800A9450:
      lw         $3, 0x10($16)
      addiu      $2, $0, 0xCF
      bne        $3, $2, .L800A9468
       addiu     $2, $0, 0xD2
  .L800A9460:
      j          .L800A94B0
       sw        $2, 0x10($16)
  .L800A9468:
      beq        $3, $2, .L800A94B0
       addiu     $2, $0, 0x11
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      lw         $2, 0x10($16)
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      j          .L800A94B0
       nop
  .L800A949C:
      lw         $2, 0x0($3)
      jalr       $2
       addu      $4, $16, $0
      beqz       $2, .L800A94DC
       addu      $2, $0, $0
  .L800A94B0:
      lw         $3, 0x1B0($16)
      lw         $2, 0x14($3)
      beqz       $2, .L800A949C
       nop
      lw         $2, 0x14($16)
      lw         $2, 0x18($2)
      jalr       $2
       addu      $4, $16, $0
      jal        func_800A9500
       addu      $4, $16, $0
      addiu      $2, $0, 0x1
  .L800A94DC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A93DC

.globl func_800A94EC
.ent func_800A94EC
func_800A94EC:
      jal        func_80053040
       nop
      lw         $4, 0x0($16)
      jal        func_80053040
       nop
.end func_800A94EC

.globl func_800A9500
.ent func_800A9500
func_800A9500:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addiu      $16, $0, 0x1
      sw         $31, 0x18($29)
      addu       $5, $16, $0
  .L800A951C:
      lw         $2, 0x4($17)
      addiu      $16, $16, -0x1
      lw         $2, 0x24($2)
      jalr       $2
       addu      $4, $17, $0
      bgtz       $16, .L800A951C
       addu      $5, $16, $0
      lw         $2, 0xC($17)
      beqz       $2, .L800A9548
       addiu     $3, $0, 0x64
      addiu      $3, $0, 0xC8
  .L800A9548:
      sw         $3, 0x10($17)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A9500

.globl func_800A9560
.ent func_800A9560
func_800A9560:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x4($16)
      beql       $2, $0, .L800A958C
       sw        $0, 0x4($16)
      lw         $2, 0x28($2)
      jalr       $2
       nop
      sw         $0, 0x4($16)
  .L800A958C:
      sw         $0, 0x10($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A9560

.globl func_800A95A0
.ent func_800A95A0
func_800A95A0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x4($4)
      addu       $5, $0, $0
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x84
      sw         $0, 0x80($2)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A95A0

.globl func_800A95CC
.ent func_800A95CC
func_800A95CC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x4($4)
      addu       $5, $0, $0
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x118
      sw         $0, 0x114($2)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A95CC

.globl func_800A95F8
.ent func_800A95F8
func_800A95F8:
      lw         $2, 0x1C($16)
      beqz       $2, .L800A96A8
.end func_800A95F8

.globl func_800A9600
.ent func_800A9600
func_800A9600:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lw         $3, 0x10($16)
      addiu      $2, $0, 0xCA
      bne        $3, $2, .L800A965C
       addiu     $2, $0, 0xCB
      jal        func_800AD620
       nop
      lw         $2, 0x40($16)
      beqz       $2, .L800A964C
       addiu     $2, $0, 0xCF
      sw         $2, 0x10($16)
      j          .L800A9740
       addiu     $2, $0, 0x1
  .L800A964C:
      addiu      $2, $0, 0xCB
      sw         $2, 0x10($16)
      lw         $3, 0x10($16)
      addiu      $2, $0, 0xCB
  .L800A965C:
      bne        $3, $2, .L800A970C
       addiu     $2, $0, 0xCC
      lw         $2, 0x1B0($16)
      lw         $2, 0x10($2)
      beqz       $2, .L800A9700
       addiu     $19, $0, 0x2
      addiu      $18, $0, 0x3
      addiu      $17, $0, 0x1
  .L800A967C:
      lw         $2, 0x8($16)
      beqz       $2, .L800A9694
       nop
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
  .L800A9694:
      lw         $2, 0x1B0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      beql       $2, $0, .L800A9740
  .L800A96A8:
       addu      $2, $0, $0
      beq        $2, $19, .L800A9700
       nop
      lw         $3, 0x8($16)
      beqz       $3, .L800A9694
       nop
      beq        $2, $18, .L800A96D0
       nop
      bne        $2, $17, .L800A967C
       nop
  .L800A96D0:
      lw         $2, 0x4($3)
      addiu      $2, $2, 0x1
      sw         $2, 0x4($3)
      lw         $4, 0x8($16)
      lw         $3, 0x8($4)
      slt        $2, $2, $3
      bnez       $2, .L800A967C
       nop
      lw         $2, 0x13C($16)
      addu       $2, $3, $2
      j          .L800A967C
       sw        $2, 0x8($4)
  .L800A9700:
      lw         $2, 0x90($16)
      j          .L800A9738
       sw        $2, 0x98($16)
  .L800A970C:
      beq        $3, $2, .L800A9738
       addiu     $2, $0, 0x11
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      lw         $2, 0x10($16)
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
  .L800A9738:
      jal        func_800A975C
       addu      $4, $16, $0
  .L800A9740:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A9600

.globl func_800A975C
.ent func_800A975C
func_800A975C:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x10($17)
      addiu      $16, $0, 0xCC
      beq        $2, $16, .L800A9798
       nop
      lw         $2, 0x1A0($17)
      lw         $2, 0x0($2)
      jalr       $2
       nop
      sw         $0, 0x8C($17)
      sw         $16, 0x10($17)
  .L800A9798:
      lw         $2, 0x1A0($17)
      lw         $2, 0x8($2)
      beqz       $2, .L800A985C
       nop
  .L800A97A8:
      lw         $2, 0x8C($17)
      lw         $3, 0x74($17)
      sltu       $2, $2, $3
      beqz       $2, .L800A9828
       nop
  .L800A97BC:
      lw         $3, 0x8($17)
      beqz       $3, .L800A97F0
       addu      $4, $17, $0
      lw         $2, 0x8C($17)
      sw         $2, 0x4($3)
      lw         $3, 0x8($17)
      lw         $2, 0x74($17)
      sw         $2, 0x8($3)
      lw         $2, 0x8($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $17, $0
      addu       $4, $17, $0
  .L800A97F0:
      addu       $5, $0, $0
      addiu      $6, $17, 0x8C
      lw         $2, 0x1A4($17)
      lw         $2, 0x4($2)
      lw         $16, 0x8C($17)
      jalr       $2
       addu      $7, $5, $0
      lw         $3, 0x8C($17)
      beq        $3, $16, .L800A9874
       addu      $2, $0, $0
      lw         $2, 0x74($17)
      sltu       $2, $3, $2
      bnez       $2, .L800A97BC
       nop
  .L800A9828:
      lw         $2, 0x1A0($17)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $17, $0
      lw         $2, 0x1A0($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $17, $0
      lw         $2, 0x1A0($17)
      sw         $0, 0x8C($17)
      lw         $2, 0x8($2)
      bnez       $2, .L800A97A8
       nop
  .L800A985C:
      lw         $2, 0x44($17)
      beqz       $2, .L800A986C
       addiu     $3, $0, 0xCD
      addiu      $3, $0, 0xCE
  .L800A986C:
      sw         $3, 0x10($17)
      addiu      $2, $0, 0x1
  .L800A9874:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A975C

.globl func_800A9888
.ent func_800A9888
func_800A9888:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      sw         $31, 0x24($29)
      lw         $3, 0x10($16)
      addiu      $2, $0, 0xCD
      beq        $3, $2, .L800A98DC
       addu      $18, $6, $0
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x11
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      lw         $2, 0x10($16)
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800A98DC:
      lw         $3, 0x8C($16)
      lw         $2, 0x74($16)
      sltu       $2, $3, $2
      bnez       $2, .L800A9914
       addiu     $2, $0, 0x75
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      addu       $4, $16, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, -0x1
      j          .L800A9970
       addu      $2, $0, $0
  .L800A9914:
      lw         $2, 0x8($16)
      beqz       $2, .L800A9944
       addu      $4, $16, $0
      sw         $3, 0x4($2)
      lw         $3, 0x8($16)
      lw         $2, 0x74($16)
      sw         $2, 0x8($3)
      lw         $2, 0x8($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      addu       $4, $16, $0
  .L800A9944:
      addu       $5, $17, $0
      sw         $0, 0x10($29)
      lw         $2, 0x1A4($16)
      addiu      $6, $29, 0x10
      lw         $2, 0x4($2)
      jalr       $2
       addu      $7, $18, $0
      lw         $2, 0x10($29)
      lw         $3, 0x8C($16)
      addu       $3, $3, $2
      sw         $3, 0x8C($16)
  .L800A9970:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A9888

.globl func_800A9988
.ent func_800A9988
func_800A9988:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      sw         $31, 0x18($29)
      lw         $3, 0x10($16)
      addiu      $2, $0, 0xCF
      beq        $3, $2, .L800A99DC
       addu      $17, $5, $0
      addiu      $2, $0, 0xCC
      beq        $3, $2, .L800A99DC
       addiu     $2, $0, 0x11
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      lw         $2, 0x10($16)
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800A99DC:
      blezl      $17, .L800A99E4
       addiu     $17, $0, 0x1
  .L800A99E4:
      lw         $2, 0x1B0($16)
      lw         $2, 0x14($2)
      beqz       $2, .L800A9A08
       addu      $4, $16, $0
      lw         $3, 0x90($16)
      slt        $2, $3, $17
      bnel       $2, $0, .L800A9A08
       addu      $17, $3, $0
      addu       $4, $16, $0
  .L800A9A08:
      jal        func_800A975C
       sw        $17, 0x98($16)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A9988

.globl func_800A9A24
.ent func_800A9A24
func_800A9A24:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x10($16)
      addiu      $2, $2, -0xCD
      sltiu      $2, $2, 0x2
      beqz       $2, .L800A9A70
       nop
      lw         $2, 0x40($16)
      beqz       $2, .L800A9A70
       nop
      lw         $2, 0x1A0($16)
      lw         $2, 0x4($2)
      jalr       $2
       nop
      addiu      $2, $0, 0xD0
      j          .L800A9AC0
       sw        $2, 0x10($16)
  .L800A9A70:
      lw         $3, 0x10($16)
      addiu      $2, $0, 0xD0
      beq        $3, $2, .L800A9AC0
       addiu     $2, $0, 0x11
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      lw         $2, 0x10($16)
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      j          .L800A9AC0
       nop
  .L800A9AAC:
      lw         $2, 0x0($3)
      jalr       $2
       addu      $4, $16, $0
      beqz       $2, .L800A9AEC
       addu      $2, $0, $0
  .L800A9AC0:
      lw         $3, 0x90($16)
      lw         $2, 0x98($16)
      slt        $2, $2, $3
      bnez       $2, .L800A9AE4
       addiu     $2, $0, 0xCF
      lw         $3, 0x1B0($16)
      lw         $2, 0x14($3)
      beqz       $2, .L800A9AAC
       addiu     $2, $0, 0xCF
  .L800A9AE4:
      sw         $2, 0x10($16)
      addiu      $2, $0, 0x1
  .L800A9AEC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A9A24

.globl func_800A9AFC
.ent func_800A9AFC
func_800A9AFC:
      lw         $6, 0x54($2)
      lw         $3, 0x14($4)
      addiu      $2, $0, 0x1
      jr         $31
       sw        $2, 0x24($3)
.end func_800A9AFC

.globl func_800A9B10
.ent func_800A9B10
func_800A9B10:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $16, 0x14($17)
      addiu      $5, $0, 0x1
      lw         $4, 0x20($16)
      lw         $7, 0x1C($16)
      jal        func_80018704
       addiu     $6, $0, 0x1000
      addu       $4, $2, $0
      bnez       $4, .L800A9BA8
       nop
      lw         $2, 0x24($16)
      beqz       $2, .L800A9B6C
       addiu     $2, $0, 0x27
      lw         $3, 0x0($17)
      sw         $2, 0x14($3)
      lw         $2, 0x0($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $17, $0
  .L800A9B6C:
      lw         $3, 0x0($17)
      addiu      $2, $0, 0x72
      sw         $2, 0x14($3)
      lw         $2, 0x0($17)
      addu       $4, $17, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, -0x1
      addiu      $4, $0, 0x2
      lw         $3, 0x20($16)
      addiu      $2, $0, 0xFF
      sb         $2, 0x0($3)
      lw         $3, 0x20($16)
      addiu      $2, $0, 0xD9
      sb         $2, 0x1($3)
  .L800A9BA8:
      lw         $3, 0x20($16)
      sw         $4, 0x4($16)
      sw         $0, 0x24($16)
      sw         $3, 0x0($16)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A9B10

.globl func_800A9BD0
.ent func_800A9BD0
func_800A9BD0:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      lw         $17, 0x14($18)
      blez       $16, .L800A9C30
       nop
      j          .L800A9C08
       nop
  .L800A9C00:
      jal        func_800A9B10
       addu      $4, $18, $0
  .L800A9C08:
      lw         $3, 0x4($17)
      slt        $2, $3, $16
      bnel       $2, $0, .L800A9C00
       subu      $16, $16, $3
      lw         $2, 0x0($17)
      lw         $3, 0x4($17)
      addu       $2, $2, $16
      subu       $3, $3, $16
      sw         $2, 0x0($17)
      sw         $3, 0x4($17)
  .L800A9C30:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A9BD0

.globl func_800A9C48
.ent func_800A9C48
func_800A9C48:
      jr         $31
       nop
.end func_800A9C48

.globl func_800A9C50
.ent func_800A9C50
func_800A9C50:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      lw         $2, 0x14($16)
      bnez       $2, .L800A9C94
       addu      $18, $6, $0
      lw         $2, 0x4($16)
      addu       $5, $0, $0
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x34
      sw         $2, 0x14($16)
      sw         $17, 0x20($2)
  .L800A9C94:
      lui        $2, %hi(func_800A9AFC + 0x4)
      lw         $4, 0x14($16)
      addiu      $2, $2, %lo(func_800A9AFC + 0x4)
      sw         $2, 0x8($4)
      lui        $2, %hi(func_800A9B10)
      addiu      $2, $2, %lo(func_800A9B10)
      sw         $2, 0xC($4)
      lui        $2, %hi(func_800A9BD0)
      addiu      $2, $2, %lo(func_800A9BD0)
      sw         $2, 0x10($4)
      lui        $2, %hi(func_800AC95C)
      addiu      $2, $2, %lo(func_800AC95C)
      sw         $2, 0x14($4)
      lui        $2, %hi(func_800A9C48)
      addiu      $2, $2, %lo(func_800A9C48)
      sw         $2, 0x18($4)
      sw         $0, 0x1C($4)
      sw         $18, 0x4($4)
      sw         $17, 0x0($4)
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A9C50

.globl func_800A9CF8
.ent func_800A9CF8
func_800A9CF8:
      lw         $5, 0x14($4)
      lbu        $2, 0x31($5)
      beqz       $2, .L800A9D34
       addiu     $2, $0, 0x1
      lw         $4, 0x20($5)
      addiu      $3, $0, 0xFF
      sb         $3, 0x0($4)
      lw         $4, 0x20($5)
      addiu      $3, $0, 0xD9
      sb         $3, 0x1($4)
      lw         $4, 0x20($5)
      addiu      $3, $0, 0x2
      sw         $3, 0x4($5)
      jr         $31
       sw        $4, 0x0($5)
  .L800A9D34:
      jr         $31
       addu      $2, $0, $0
.end func_800A9CF8

.globl func_800A9D3C
.ent func_800A9D3C
func_800A9D3C:
      lw         $4, 0x14($4)
      lw         $3, 0x4($4)
      slt        $2, $3, $5
      beqz       $2, .L800A9D60
       sw        $5, 0x2C($4)
      subu       $2, $5, $3
      sw         $2, 0x2C($4)
      jr         $31
       sw        $0, 0x4($4)
  .L800A9D60:
      lw         $2, 0x0($4)
      lw         $3, 0x4($4)
      sw         $0, 0x2C($4)
      addu       $2, $2, $5
      subu       $3, $3, $5
      sw         $2, 0x0($4)
      jr         $31
       sw        $3, 0x4($4)
.end func_800A9D3C

.globl func_800A9D80
.ent func_800A9D80
func_800A9D80:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x14($17)
      bnez       $2, .L800A9DF4
       addu      $18, $5, $0
      lw         $2, 0x4($17)
      addu       $5, $0, $0
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x34
      addu       $16, $2, $0
      addiu      $2, $18, 0x800
      sw         $16, 0x14($17)
      sw         $2, 0x28($16)
      slti       $2, $2, 0x1000
      beqz       $2, .L800A9DD8
       addiu     $2, $0, 0x1000
      sw         $2, 0x28($16)
  .L800A9DD8:
      addu       $4, $17, $0
      lw         $2, 0x4($17)
      lw         $6, 0x28($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $5, $0, $0
      sw         $2, 0x20($16)
  .L800A9DF4:
      lui        $2, %hi(func_800A9AFC + 0x4)
      lw         $16, 0x14($17)
      addiu      $2, $2, %lo(func_800A9AFC + 0x4)
      sw         $2, 0x8($16)
      lui        $2, %hi(func_800A9CF8)
      addiu      $2, $2, %lo(func_800A9CF8)
      sw         $2, 0xC($16)
      lui        $2, %hi(func_800A9D3C)
      addiu      $2, $2, %lo(func_800A9D3C)
      sw         $2, 0x10($16)
      lui        $2, %hi(func_800AC95C)
      addiu      $2, $2, %lo(func_800AC95C)
      sw         $2, 0x14($16)
      lui        $2, %hi(func_800A9C48)
      addiu      $2, $2, %lo(func_800A9C48)
      sw         $2, 0x18($16)
      sw         $0, 0x1C($16)
      sw         $0, 0x4($16)
      sw         $0, 0x0($16)
      sw         $0, 0x2C($16)
      sb         $0, 0x31($16)
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A9D80

.globl func_800A9E60
.ent func_800A9E60
func_800A9E60:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x14($4)
      beqz       $2, .L800A9F20
       addu      $19, $6, $0
      addu       $16, $2, $0
      lw         $2, 0x20($16)
      beql       $2, $0, .L800A9FCC
       addu      $2, $0, $0
      lw         $6, 0x4($16)
      beqz       $6, .L800A9ED4
       sb        $7, 0x31($16)
      lw         $5, 0x0($16)
      beqz       $5, .L800A9EDC
       addu      $17, $0, $0
      lw         $4, 0x20($16)
      sltu       $2, $4, $5
      beqz       $2, .L800A9EDC
       nop
      jal        func_80035780
       nop
      j          .L800A9EDC
       nop
  .L800A9ED4:
      sw         $0, 0x4($16)
      addu       $17, $0, $0
  .L800A9EDC:
      lw         $4, 0x4($16)
      lw         $3, 0x2C($16)
      blez       $3, .L800A9F10
       addu      $18, $4, $19
      slt        $2, $18, $3
      beqz       $2, .L800A9F08
       addiu     $2, $0, 0x1
      subu       $3, $3, $18
      sw         $3, 0x2C($16)
      j          .L800A9FCC
       sw        $0, 0x4($16)
  .L800A9F08:
      subu       $18, $18, $3
      subu       $17, $4, $3
  .L800A9F10:
      lw         $2, 0x28($16)
      slt        $2, $2, $18
      beqz       $2, .L800A9F28
       nop
  .L800A9F20:
      j          .L800A9FCC
       addu      $2, $0, $0
  .L800A9F28:
      blez       $19, .L800A9FA0
       nop
      bgez       $17, .L800A9F4C
       subu      $5, $20, $17
      lw         $4, 0x20($16)
      jal        func_80013F00
       addu      $6, $19, $17
      j          .L800A9FB8
       nop
  .L800A9F4C:
      blez       $17, .L800A9F80
       addu      $6, $17, $0
      lw         $4, 0x20($16)
      lw         $5, 0x2C($16)
      jal        func_80035780
       addu      $5, $4, $5
      addu       $5, $20, $0
      lw         $4, 0x20($16)
      addu       $6, $19, $0
      jal        func_80013F00
       addu      $4, $4, $17
      j          .L800A9FB8
       nop
  .L800A9F80:
      addu       $5, $20, $0
      lw         $2, 0x20($16)
      lw         $4, 0x4($16)
      addu       $6, $19, $0
      jal        func_80013F00
       addu      $4, $2, $4
      j          .L800A9FB8
       nop
  .L800A9FA0:
      blez       $17, .L800A9FB8
       addu      $6, $17, $0
      lw         $4, 0x20($16)
      lw         $5, 0x2C($16)
      jal        func_80035780
       addu      $5, $4, $5
  .L800A9FB8:
      lw         $3, 0x20($16)
      addiu      $2, $0, 0x1
      sw         $18, 0x4($16)
      sw         $0, 0x2C($16)
      sw         $3, 0x0($16)
  .L800A9FCC:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
  .L800A9FDC:
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A9E60

.globl func_800A9FEC
.ent func_800A9FEC
func_800A9FEC:
      addu       $2, $0, $0
      lw         $3, 0x1B0($16)
      lw         $2, 0x14($3)
      beqz       $2, .L800A9FDC
       nop
.end func_800A9FEC

.globl func_800AA000
.ent func_800AA000
func_800AA000:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x1C($17)
      ori        $4, $0, 0xFFDC
      slt        $2, $4, $2
      bnez       $2, .L800AA044
       nop
      lw         $2, 0x18($17)
      slt        $2, $4, $2
      beqz       $2, .L800AA068
       nop
  .L800AA044:
      lw         $3, 0x0($17)
      addiu      $2, $0, 0x26
      sw         $2, 0x14($3)
      lw         $2, 0x0($17)
      sw         $4, 0x18($2)
      lw         $2, 0x0($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $17, $0
  .L800AA068:
      lw         $3, 0xD4($17)
      addiu      $2, $0, 0x8
      beq        $3, $2, .L800AA09C
       addiu     $2, $0, 0xC
      lw         $3, 0x0($17)
      sw         $2, 0x14($3)
      lw         $3, 0x0($17)
      lw         $2, 0xD4($17)
      sw         $2, 0x18($3)
      lw         $2, 0x0($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $17, $0
  .L800AA09C:
      lw         $2, 0x20($17)
      slti       $2, $2, 0xB
      bnez       $2, .L800AA0E4
       addu      $18, $0, $0
      lw         $3, 0x0($17)
      addiu      $2, $0, 0x16
      sw         $2, 0x14($3)
      lw         $3, 0x0($17)
      lw         $2, 0x20($17)
      sw         $2, 0x18($3)
      lw         $3, 0x0($17)
      addiu      $2, $0, 0xA
      sw         $2, 0x1C($3)
      lw         $2, 0x0($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $17, $0
      addu       $18, $0, $0
  .L800AA0E4:
      lw         $4, 0xD8($17)
      lw         $3, 0x20($17)
      addiu      $2, $0, 0x1
      sw         $2, 0x130($17)
      blez       $3, .L800AA188
       sw        $2, 0x134($17)
      addiu      $19, $0, 0xF
      addiu      $16, $4, 0xC
  .L800AA104:
      lw         $2, -0x4($16)
      addiu      $2, $2, -0x1
      sltiu      $2, $2, 0x4
      beqz       $2, .L800AA12C
       nop
      lw         $2, 0x0($16)
      blez       $2, .L800AA12C
       slti      $2, $2, 0x5
      bnez       $2, .L800AA144
       nop
  .L800AA12C:
      lw         $2, 0x0($17)
      sw         $19, 0x14($2)
      lw         $2, 0x0($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $17, $0
  .L800AA144:
      lw         $3, -0x4($16)
      lw         $4, 0x130($17)
      slt        $2, $3, $4
      bnel       $2, $0, .L800AA158
       addu      $3, $4, $0
  .L800AA158:
      sw         $3, 0x130($17)
      lw         $4, 0x0($16)
      lw         $3, 0x134($17)
      slt        $2, $4, $3
      bnel       $2, $0, .L800AA170
       addu      $4, $3, $0
  .L800AA170:
      addiu      $18, $18, 0x1
      lw         $2, 0x20($17)
      addiu      $16, $16, 0x54
      slt        $2, $18, $2
      bnez       $2, .L800AA104
       sw        $4, 0x134($17)
  .L800AA188:
      addu       $18, $0, $0
      lw         $4, 0xD8($17)
      lw         $3, 0x20($17)
      addiu      $2, $0, 0x8
      blez       $3, .L800AA248
       sw        $2, 0x138($17)
      addu       $20, $2, $0
      addiu      $19, $0, 0x1
      addiu      $16, $4, 0x4C
  .L800AA1AC:
      sw         $20, -0x28($16)
      lw         $2, 0x18($17)
      lw         $4, -0x44($16)
      mult       $2, $4
      lw         $5, 0x130($17)
      mflo       $4
      jal        func_800B82C0
       sll       $5, $5, 3
      sw         $2, -0x30($16)
      lw         $2, 0x1C($17)
      lw         $4, -0x40($16)
      mult       $2, $4
      lw         $5, 0x134($17)
      mflo       $4
      jal        func_800B82C0
       sll       $5, $5, 3
      sw         $2, -0x2C($16)
      lw         $2, 0x18($17)
      lw         $4, -0x44($16)
      mult       $2, $4
      lw         $5, 0x130($17)
      mflo       $4
      jal        func_800B82C0
       addiu     $18, $18, 0x1
      sw         $2, -0x24($16)
      lw         $2, 0x1C($17)
      lw         $4, -0x40($16)
      mult       $2, $4
      lw         $5, 0x134($17)
      mflo       $4
      jal        func_800B82C0
       nop
      sw         $2, -0x20($16)
      sw         $19, -0x1C($16)
      sw         $0, 0x0($16)
      lw         $2, 0x20($17)
      slt        $2, $18, $2
      bnez       $2, .L800AA1AC
       addiu     $16, $16, 0x54
  .L800AA248:
      lw         $5, 0x134($17)
      lw         $4, 0x1C($17)
      jal        func_800B82C0
       sll       $5, $5, 3
      lw         $3, 0x144($17)
      lw         $4, 0x20($17)
      slt        $3, $3, $4
      bnez       $3, .L800AA278
       sw        $2, 0x13C($17)
      lw         $2, 0xDC($17)
      beqz       $2, .L800AA288
       nop
  .L800AA278:
      lw         $3, 0x1B0($17)
      addiu      $2, $0, 0x1
      j          .L800AA290
       sw        $2, 0x10($3)
  .L800AA288:
      lw         $2, 0x1B0($17)
      sw         $0, 0x10($2)
  .L800AA290:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800AA000

.globl func_800AA2B0
.ent func_800AA2B0
func_800AA2B0:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $3, 0x144($17)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800AA340
       addiu     $2, $3, -0x1
      lw         $5, 0x148($17)
      lw         $2, 0x1C($5)
      sw         $2, 0x158($17)
      lw         $2, 0x20($5)
      sw         $2, 0x15C($17)
      lw         $2, 0x20($5)
      lw         $4, 0xC($5)
      divu       $zero, $2, $4
      bnez       $4, .L800AA30C
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AA30C:
      mfhi       $6
      lw         $2, 0x24($5)
      sw         $3, 0x34($5)
      sw         $3, 0x38($5)
      sw         $3, 0x3C($5)
      sw         $3, 0x44($5)
      bnez       $6, .L800AA330
       sw        $2, 0x40($5)
      addu       $6, $4, $0
  .L800AA330:
      sw         $6, 0x48($5)
      sw         $3, 0x160($17)
      j          .L800AA4BC
       sw        $0, 0x164($17)
  .L800AA340:
      sltiu      $2, $2, 0x4
      bnez       $2, .L800AA37C
       addiu     $2, $0, 0x16
      lw         $3, 0x0($17)
      sw         $2, 0x14($3)
      lw         $3, 0x0($17)
      lw         $2, 0x144($17)
      sw         $2, 0x18($3)
      lw         $3, 0x0($17)
      addiu      $2, $0, 0x4
      sw         $2, 0x1C($3)
      lw         $2, 0x0($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $17, $0
  .L800AA37C:
      lw         $5, 0x130($17)
      lw         $4, 0x18($17)
      jal        func_800B82C0
       sll       $5, $5, 3
      lw         $4, 0x1C($17)
      lw         $5, 0x134($17)
      sw         $2, 0x158($17)
      jal        func_800B82C0
       sll       $5, $5, 3
      lw         $3, 0x144($17)
      addu       $18, $0, $0
      sw         $2, 0x15C($17)
      blez       $3, .L800AA4BC
       sw        $0, 0x160($17)
      addiu      $20, $0, 0xA
      addu       $19, $17, $0
  .L800AA3BC:
      lw         $5, 0x148($19)
      lw         $2, 0x8($5)
      sw         $2, 0x34($5)
      lw         $2, 0x1C($5)
      lw         $7, 0x34($5)
      divu       $zero, $2, $7
      bnez       $7, .L800AA3E0
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AA3E0:
      mfhi       $6
      lw         $4, 0xC($5)
      addu       $2, $7, $0
      mult       $2, $4
      addu       $3, $2, $0
      mflo       $8
      lw         $2, 0x24($5)
      nop
      mult       $3, $2
      sw         $4, 0x38($5)
      sw         $8, 0x3C($5)
      mflo       $3
      bnez       $6, .L800AA41C
       sw        $3, 0x40($5)
      addu       $6, $7, $0
  .L800AA41C:
      lw         $2, 0x20($5)
      lw         $3, 0x38($5)
      sw         $6, 0x44($5)
      divu       $zero, $2, $3
      bnez       $3, .L800AA438
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AA438:
      mfhi       $6
      beql       $6, $0, .L800AA444
       addu      $6, $3, $0
  .L800AA444:
      lw         $16, 0x3C($5)
      sw         $6, 0x48($5)
      lw         $2, 0x160($17)
      addu       $2, $2, $16
      slti       $2, $2, 0xB
      bnez       $2, .L800AA47C
       addu      $2, $16, $0
      lw         $2, 0x0($17)
      sw         $20, 0x14($2)
      lw         $2, 0x0($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $17, $0
      addu       $2, $16, $0
  .L800AA47C:
      blez       $2, .L800AA4A8
       addiu     $16, $16, -0x1
  .L800AA484:
      addu       $4, $16, $0
      lw         $2, 0x160($17)
      addiu      $16, $16, -0x1
      sll        $3, $2, 2
      addiu      $2, $2, 0x1
      addu       $3, $17, $3
      sw         $18, 0x164($3)
      bgtz       $4, .L800AA484
       sw        $2, 0x160($17)
  .L800AA4A8:
      lw         $2, 0x144($17)
      addiu      $18, $18, 0x1
      slt        $2, $18, $2
      bnez       $2, .L800AA3BC
       addiu     $19, $19, 0x4
  .L800AA4BC:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800AA2B0

.globl func_800AA4DC
.ent func_800AA4DC
func_800AA4DC:
      addiu      $29, $29, -0x30
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x144($17)
      blez       $2, .L800AA5DC
       addu      $19, $0, $0
      addiu      $21, $0, 0x31
      addu       $20, $17, $0
  .L800AA514:
      lw         $18, 0x148($20)
      lw         $2, 0x4C($18)
      bnez       $2, .L800AA5C8
       nop
      lw         $16, 0x10($18)
      sltiu      $2, $16, 0x4
      beqz       $2, .L800AA544
       sll       $2, $16, 2
      addu       $2, $17, $2
      lw         $2, 0xA4($2)
      bnel       $2, $0, .L800AA568
       addu      $4, $17, $0
  .L800AA544:
      lw         $2, 0x0($17)
      sw         $21, 0x14($2)
      lw         $2, 0x0($17)
      sw         $16, 0x18($2)
      lw         $2, 0x0($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $17, $0
      addu       $4, $17, $0
  .L800AA568:
      lw         $2, 0x4($17)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x84
      sll        $3, $16, 2
      addu       $3, $17, $3
      lw         $3, 0xA4($3)
      addu       $4, $2, $0
      addiu      $5, $3, 0x80
  .L800AA590:
      lw         $7, 0x0($3)
      lw         $8, 0x4($3)
      lw         $9, 0x8($3)
      lw         $10, 0xC($3)
      sw         $7, 0x0($4)
      sw         $8, 0x4($4)
      sw         $9, 0x8($4)
      sw         $10, 0xC($4)
      addiu      $3, $3, 0x10
      bne        $3, $5, .L800AA590
       addiu     $4, $4, 0x10
      lw         $7, 0x0($3)
      sw         $7, 0x0($4)
      sw         $2, 0x4C($18)
  .L800AA5C8:
      lw         $2, 0x144($17)
      addiu      $19, $19, 0x1
      slt        $2, $19, $2
      bnez       $2, .L800AA514
       addiu     $20, $20, 0x4
  .L800AA5DC:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800AA4DC

.globl func_800AA600
.ent func_800AA600
func_800AA600:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      sw         $31, 0x14($29)
      jal        func_800AA2B0
       addu      $16, $4, $0
      jal        func_800AA4DC
       addu      $4, $16, $0
      lw         $2, 0x1B8($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      lw         $2, 0x1A8($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      lw         $2, 0x1A8($16)
      lw         $3, 0x1B0($16)
      lw         $2, 0x4($2)
      sw         $2, 0x0($3)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800AA600

.globl func_800AA65C
.ent func_800AA65C
func_800AA65C:
      lui        $2, %hi(func_800AA670)
      lw         $3, 0x1B0($4)
      addiu      $2, $2, %lo(func_800AA670)
      jr         $31
       sw        $2, 0x0($3)
.end func_800AA65C

.globl func_800AA670
.ent func_800AA670
func_800AA670:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lw         $17, 0x1B0($16)
      lw         $2, 0x14($17)
      bnez       $2, .L800AA778
       addiu     $2, $0, 0x2
      lw         $2, 0x1B4($16)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $16, $0
      addu       $18, $2, $0
      addiu      $3, $0, 0x1
      beq        $18, $3, .L800AA6D4
       slti      $2, $18, 0x2
      bnez       $2, .L800AA778
       addu      $2, $18, $0
      addiu      $2, $0, 0x2
      beq        $18, $2, .L800AA724
       addu      $2, $18, $0
      j          .L800AA778
       nop
  .L800AA6D4:
      lw         $2, 0x18($17)
      beqz       $2, .L800AA6F0
       nop
      jal        func_800AA000
       addu      $4, $16, $0
      j          .L800AA774
       sw        $0, 0x18($17)
  .L800AA6F0:
      lw         $2, 0x10($17)
      bnez       $2, .L800AA714
       addiu     $2, $0, 0x20
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
  .L800AA714:
      jal        func_800AA600
       addu      $4, $16, $0
      j          .L800AA778
       addu      $2, $18, $0
  .L800AA724:
      lw         $2, 0x18($17)
      beqz       $2, .L800AA760
       sw        $3, 0x14($17)
      lw         $2, 0x1B4($16)
      lw         $2, 0x54($2)
      beqz       $2, .L800AA774
       addiu     $2, $0, 0x38
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      j          .L800AA778
       addu      $2, $18, $0
  .L800AA760:
      lw         $2, 0x98($16)
      lw         $3, 0x90($16)
      slt        $2, $3, $2
      bnel       $2, $0, .L800AA774
       sw        $3, 0x98($16)
  .L800AA774:
      addu       $2, $18, $0
  .L800AA778:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800AA670

.globl func_800AA790
.ent func_800AA790
func_800AA790:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      lui        $2, %hi(func_800AA670)
      sw         $31, 0x14($29)
      lw         $3, 0x1B0($16)
      addiu      $2, $2, %lo(func_800AA670)
      sw         $2, 0x0($3)
      addiu      $2, $0, 0x1
      sw         $0, 0x10($3)
      sw         $0, 0x14($3)
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x10($2)
      jalr       $2
       nop
      lw         $2, 0x1B4($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      sw         $0, 0xA0($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800AA790

.globl func_800AA7F4
.ent func_800AA7F4
func_800AA7F4:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x4($16)
      addu       $5, $0, $0
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x1C
      lui        $3, %hi(func_800AA670)
      addiu      $3, $3, %lo(func_800AA670)
      sw         $2, 0x1B0($16)
      sw         $3, 0x0($2)
      lui        $3, %hi(func_800AA790)
      addiu      $3, $3, %lo(func_800AA790)
      sw         $3, 0x4($2)
      lui        $3, %hi(func_800AA600)
      addiu      $3, $3, %lo(func_800AA600)
      sw         $3, 0x8($2)
      lui        $3, %hi(func_800AA65C)
      addiu      $3, $3, %lo(func_800AA65C)
      sw         $3, 0xC($2)
      addiu      $3, $0, 0x1
      sw         $0, 0x10($2)
      sw         $0, 0x14($2)
      sw         $3, 0x18($2)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800AA7F4

.globl func_800AA86C
.ent func_800AA86C
func_800AA86C:
      addu       $2, $2, $5
      subu       $3, $3, $5
      sw         $2, 0x0($4)
      jr         $31
       sw        $3, 0x4($4)
.end func_800AA86C

.globl func_800AA880
.ent func_800AA880
func_800AA880:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x63
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
      lw         $2, 0x1B4($16)
      lw         $2, 0x50($2)
      beqz       $2, .L800AA8D4
       addiu     $2, $0, 0x3A
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
  .L800AA8D4:
      addu       $3, $0, $0
      addiu      $5, $0, 0x1
      addiu      $4, $0, 0x5
      addu       $2, $16, $3
  .L800AA8E4:
      addiu      $3, $3, 0x1
      sb         $0, 0xE4($2)
      sb         $5, 0xF4($2)
      sb         $4, 0x104($2)
      slti       $2, $3, 0x10
      bnez       $2, .L800AA8E4
       addu      $2, $16, $3
      lw         $3, 0x1B4($16)
      addiu      $2, $0, 0x1
      sh         $2, 0x11E($16)
      sh         $2, 0x120($16)
      addiu      $2, $0, 0x1
      sw         $0, 0x114($16)
      sw         $0, 0x24($16)
      sw         $0, 0x12C($16)
      sw         $0, 0x118($16)
      sb         $0, 0x11C($16)
      sw         $0, 0x124($16)
      sb         $0, 0x128($16)
      sw         $2, 0x50($3)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800AA880

.globl func_800AA944
.ent func_800AA944
func_800AA944:
      addiu      $29, $29, -0x30
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $31, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $18, 0x14($20)
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
      sw         $5, 0xDC($20)
      bnez       $16, .L800AA9A0
       sw        $6, 0xE0($20)
      lw         $2, 0xC($18)
      jalr       $2
       nop
      beqz       $2, .L800AAD5C
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AA9A0:
      addiu      $16, $16, -0x1
      lbu        $2, 0x0($17)
      addiu      $17, $17, 0x1
      bnez       $16, .L800AA9D0
       sll       $19, $2, 8
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AAD5C
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AA9D0:
      addiu      $16, $16, -0x1
      lbu        $2, 0x0($17)
      addiu      $17, $17, 0x1
      bnez       $16, .L800AAA00
       addu      $19, $19, $2
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AAD5C
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AAA00:
      addiu      $16, $16, -0x1
      lbu        $2, 0x0($17)
      addiu      $17, $17, 0x1
      bnez       $16, .L800AAA30
       sw        $2, 0xD4($20)
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AAD5C
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AAA30:
      addiu      $16, $16, -0x1
      lbu        $2, 0x0($17)
      addiu      $17, $17, 0x1
      sll        $2, $2, 8
      bnez       $16, .L800AAA64
       sw        $2, 0x1C($20)
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AAD5C
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AAA64:
      addiu      $16, $16, -0x1
      lbu        $3, 0x0($17)
      lw         $2, 0x1C($20)
      addiu      $17, $17, 0x1
      addu       $2, $2, $3
      bnez       $16, .L800AAA9C
       sw        $2, 0x1C($20)
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AAD5C
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AAA9C:
      addiu      $16, $16, -0x1
      lbu        $2, 0x0($17)
      addiu      $17, $17, 0x1
      sll        $2, $2, 8
      bnez       $16, .L800AAAD0
       sw        $2, 0x18($20)
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AAD5C
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AAAD0:
      addiu      $16, $16, -0x1
      lbu        $3, 0x0($17)
      lw         $2, 0x18($20)
      addiu      $17, $17, 0x1
      addu       $2, $2, $3
      bnez       $16, .L800AAB08
       sw        $2, 0x18($20)
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AAD5C
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AAB08:
      addiu      $16, $16, -0x1
      lbu        $2, 0x0($17)
      addiu      $17, $17, 0x1
      sw         $2, 0x20($20)
      addiu      $19, $19, -0x8
      lw         $3, 0x0($20)
      lw         $2, 0x19C($20)
      sw         $2, 0x18($3)
      lw         $2, 0x18($20)
      addiu      $3, $3, 0x18
      sw         $2, 0x4($3)
      lw         $2, 0x1C($20)
      sw         $2, 0x8($3)
      lw         $2, 0x20($20)
      sw         $2, 0xC($3)
      lw         $3, 0x0($20)
      addiu      $2, $0, 0x61
      sw         $2, 0x14($3)
      lw         $2, 0x0($20)
      addiu      $5, $0, 0x1
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $20, $0
      lw         $2, 0x1B4($20)
      lw         $2, 0x54($2)
      beqz       $2, .L800AAB8C
       addiu     $2, $0, 0x37
      lw         $3, 0x0($20)
      sw         $2, 0x14($3)
      lw         $2, 0x0($20)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $20, $0
  .L800AAB8C:
      lw         $2, 0x1C($20)
      beqz       $2, .L800AABB0
       nop
      lw         $2, 0x18($20)
      beqz       $2, .L800AABB0
       nop
      lw         $2, 0x20($20)
      bgtz       $2, .L800AABCC
       nop
  .L800AABB0:
      lw         $3, 0x0($20)
      addiu      $2, $0, 0x1D
      sw         $2, 0x14($3)
      lw         $2, 0x0($20)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $20, $0
  .L800AABCC:
      lw         $3, 0x20($20)
      sll        $2, $3, 1
      addu       $2, $2, $3
      beq        $19, $2, .L800AABF8
       addiu     $2, $0, 0x9
      lw         $3, 0x0($20)
      sw         $2, 0x14($3)
      lw         $2, 0x0($20)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $20, $0
  .L800AABF8:
      lw         $2, 0xD8($20)
      bnez       $2, .L800AAC30
       addu      $4, $20, $0
      addiu      $5, $0, 0x1
      lw         $2, 0x20($20)
      lw         $3, 0x4($20)
      sll        $6, $2, 2
      addu       $6, $6, $2
      sll        $6, $6, 2
      addu       $6, $6, $2
      lw         $2, 0x0($3)
      jalr       $2
       sll       $6, $6, 2
      sw         $2, 0xD8($20)
  .L800AAC30:
      lw         $2, 0x20($20)
      lw         $21, 0xD8($20)
      blez       $2, .L800AAD44
       addu      $22, $0, $0
      addiu      $19, $21, 0x10
  .L800AAC44:
      bnez       $16, .L800AAC68
       sw        $22, -0xC($19)
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AAD5C
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AAC68:
      addiu      $16, $16, -0x1
      lbu        $2, 0x0($17)
      addiu      $17, $17, 0x1
      bnez       $16, .L800AAC98
       sw        $2, 0x0($21)
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AAD5C
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AAC98:
      addiu      $16, $16, -0x1
      lbu        $3, 0x0($17)
      addiu      $17, $17, 0x1
      srl        $2, $3, 4
      andi       $3, $3, 0xF
      sw         $2, -0x8($19)
      bnez       $16, .L800AACD4
       sw        $3, -0x4($19)
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AAD5C
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AACD4:
      addiu      $16, $16, -0x1
      lbu        $2, 0x0($17)
      addiu      $17, $17, 0x1
      sw         $2, 0x0($19)
      lw         $3, 0x0($20)
      lw         $2, 0x0($21)
      sw         $2, 0x18($3)
      lw         $2, -0x8($19)
      addiu      $3, $3, 0x18
      sw         $2, 0x4($3)
      lw         $2, -0x4($19)
      sw         $2, 0x8($3)
      lw         $2, 0x0($19)
      sw         $2, 0xC($3)
      lw         $3, 0x0($20)
      addiu      $2, $0, 0x62
      sw         $2, 0x14($3)
      lw         $2, 0x0($20)
      addiu      $5, $0, 0x1
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $20, $0
      addiu      $22, $22, 0x1
      addiu      $19, $19, 0x54
      lw         $2, 0x20($20)
      slt        $2, $22, $2
      bnez       $2, .L800AAC44
       addiu     $21, $21, 0x54
  .L800AAD44:
      addiu      $2, $0, 0x1
      lw         $4, 0x1B4($20)
      addu       $3, $2, $0
      sw         $3, 0x54($4)
      sw         $17, 0x0($18)
      sw         $16, 0x4($18)
  .L800AAD5C:
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
.end func_800AA944

.globl func_800AAD84
.ent func_800AAD84
func_800AAD84:
      addiu      $29, $29, -0x40
      sw         $21, 0x2C($29)
      addu       $21, $4, $0
      sw         $31, 0x3C($29)
      sw         $30, 0x38($29)
      sw         $23, 0x34($29)
      sw         $22, 0x30($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      lw         $20, 0x14($21)
      lw         $2, 0x1B4($21)
      lw         $18, 0x0($20)
      lw         $2, 0x54($2)
      lw         $17, 0x4($20)
      bnez       $2, .L800AADE8
       addiu     $2, $0, 0x3B
      lw         $3, 0x0($21)
      sw         $2, 0x14($3)
      lw         $2, 0x0($21)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800AADE8:
      bnez       $17, .L800AAE10
       addiu     $17, $17, -0x1
      lw         $2, 0xC($20)
      jalr       $2
       addu      $4, $21, $0
      beqz       $2, .L800AB104
       addu      $2, $0, $0
      lw         $18, 0x0($20)
      lw         $17, 0x4($20)
      addiu      $17, $17, -0x1
  .L800AAE10:
      lbu        $2, 0x0($18)
      addiu      $18, $18, 0x1
      bnez       $17, .L800AAE3C
       sll       $16, $2, 8
      lw         $2, 0xC($20)
      jalr       $2
       addu      $4, $21, $0
      beqz       $2, .L800AB104
       addu      $2, $0, $0
      lw         $18, 0x0($20)
      lw         $17, 0x4($20)
  .L800AAE3C:
      addiu      $17, $17, -0x1
      lbu        $2, 0x0($18)
      addiu      $18, $18, 0x1
      bnez       $17, .L800AAE6C
       addu      $16, $16, $2
      lw         $2, 0xC($20)
      jalr       $2
       addu      $4, $21, $0
      beqz       $2, .L800AB104
       addu      $2, $0, $0
      lw         $18, 0x0($20)
      lw         $17, 0x4($20)
  .L800AAE6C:
      addiu      $17, $17, -0x1
      lbu        $30, 0x0($18)
      sll        $2, $30, 1
      addiu      $2, $2, 0x6
      bne        $16, $2, .L800AAE94
       addiu     $18, $18, 0x1
      blez       $30, .L800AAE94
       slti      $2, $30, 0x5
      bnez       $2, .L800AAEB0
       nop
  .L800AAE94:
      lw         $3, 0x0($21)
      addiu      $2, $0, 0x9
      sw         $2, 0x14($3)
      lw         $2, 0x0($21)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $21, $0
  .L800AAEB0:
      lw         $3, 0x0($21)
      addiu      $2, $0, 0x64
      sw         $2, 0x14($3)
      lw         $2, 0x0($21)
      addu       $4, $21, $0
      sw         $30, 0x18($2)
      lw         $2, 0x0($21)
      addiu      $5, $0, 0x1
      lw         $2, 0x4($2)
      jalr       $2
       addu      $23, $0, $0
      beqz       $30, .L800AAFFC
       sw        $30, 0x144($21)
      sw         $21, 0x10($29)
  .L800AAEE8:
      bnez       $17, .L800AAF10
       addiu     $17, $17, -0x1
      lw         $2, 0xC($20)
      jalr       $2
       addu      $4, $21, $0
      beqz       $2, .L800AB104
       addu      $2, $0, $0
      lw         $18, 0x0($20)
      lw         $17, 0x4($20)
      addiu      $17, $17, -0x1
  .L800AAF10:
      lbu        $22, 0x0($18)
      bnez       $17, .L800AAF38
       addiu     $18, $18, 0x1
      lw         $2, 0xC($20)
      jalr       $2
       addu      $4, $21, $0
      beqz       $2, .L800AB104
       addu      $2, $0, $0
      lw         $18, 0x0($20)
      lw         $17, 0x4($20)
  .L800AAF38:
      addiu      $17, $17, -0x1
      lbu        $19, 0x0($18)
      addiu      $18, $18, 0x1
      lw         $16, 0xD8($21)
      lw         $4, 0x20($21)
      blez       $4, .L800AAF6C
       addu      $3, $0, $0
  .L800AAF54:
      lw         $2, 0x0($16)
      beq        $22, $2, .L800AAF90
       addiu     $3, $3, 0x1
      slt        $2, $3, $4
      bnez       $2, .L800AAF54
       addiu     $16, $16, 0x54
  .L800AAF6C:
      lw         $3, 0x0($21)
      addiu      $2, $0, 0x5
      sw         $2, 0x14($3)
      lw         $2, 0x0($21)
      sw         $22, 0x18($2)
      lw         $2, 0x0($21)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $21, $0
  .L800AAF90:
      lw         $6, 0x10($29)
      srl        $2, $19, 4
      sw         $16, 0x148($6)
      sw         $2, 0x14($16)
      andi       $2, $19, 0xF
      sw         $2, 0x18($16)
      lw         $2, 0x0($21)
      sw         $22, 0x18($2)
      lw         $3, 0x14($16)
      addiu      $2, $2, 0x18
      sw         $3, 0x4($2)
      lw         $3, 0x18($16)
      sw         $3, 0x8($2)
      lw         $3, 0x0($21)
      addiu      $2, $0, 0x65
      sw         $2, 0x14($3)
      lw         $2, 0x0($21)
      addiu      $5, $0, 0x1
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $21, $0
      lw         $6, 0x10($29)
      addiu      $6, $6, 0x4
      addiu      $23, $23, 0x1
      slt        $2, $23, $30
      bnez       $2, .L800AAEE8
       sw        $6, 0x10($29)
  .L800AAFFC:
      bnez       $17, .L800AB024
       addiu     $17, $17, -0x1
      lw         $2, 0xC($20)
      jalr       $2
       addu      $4, $21, $0
      beqz       $2, .L800AB104
       addu      $2, $0, $0
      lw         $18, 0x0($20)
      lw         $17, 0x4($20)
      addiu      $17, $17, -0x1
  .L800AB024:
      lbu        $19, 0x0($18)
      addiu      $18, $18, 0x1
      bnez       $17, .L800AB050
       sw        $19, 0x18C($21)
      lw         $2, 0xC($20)
      jalr       $2
       addu      $4, $21, $0
      beqz       $2, .L800AB104
       addu      $2, $0, $0
      lw         $18, 0x0($20)
      lw         $17, 0x4($20)
  .L800AB050:
      addiu      $17, $17, -0x1
      lbu        $19, 0x0($18)
      addiu      $18, $18, 0x1
      bnez       $17, .L800AB080
       sw        $19, 0x190($21)
      lw         $2, 0xC($20)
      jalr       $2
       addu      $4, $21, $0
      beqz       $2, .L800AB104
       addu      $2, $0, $0
      lw         $18, 0x0($20)
      lw         $17, 0x4($20)
  .L800AB080:
      addiu      $17, $17, -0x1
      lbu        $19, 0x0($18)
      addiu      $18, $18, 0x1
      srl        $2, $19, 4
      sw         $2, 0x194($21)
      andi       $2, $19, 0xF
      sw         $2, 0x198($21)
      lw         $3, 0x0($21)
      lw         $2, 0x18C($21)
      sw         $2, 0x18($3)
      lw         $2, 0x190($21)
      addiu      $3, $3, 0x18
      sw         $2, 0x4($3)
      lw         $2, 0x194($21)
      sw         $2, 0x8($3)
      lw         $2, 0x198($21)
      sw         $2, 0xC($3)
      lw         $3, 0x0($21)
      addiu      $2, $0, 0x66
      sw         $2, 0x14($3)
      lw         $2, 0x0($21)
      addiu      $5, $0, 0x1
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $21, $0
      lw         $2, 0x1B4($21)
      sw         $0, 0x58($2)
      lw         $3, 0x90($21)
      addiu      $2, $0, 0x1
      addu       $3, $3, $2
      sw         $3, 0x90($21)
      sw         $18, 0x0($20)
      sw         $17, 0x4($20)
  .L800AB104:
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
.end func_800AAD84

.globl func_800AB134
.ent func_800AB134
func_800AB134:
      addiu      $29, $29, -0x40
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $31, 0x3C($29)
      sw         $22, 0x38($29)
      sw         $21, 0x34($29)
      sw         $20, 0x30($29)
      sw         $19, 0x2C($29)
      sw         $18, 0x28($29)
      sw         $16, 0x20($29)
      lw         $20, 0x14($17)
      lw         $19, 0x0($20)
      lw         $18, 0x4($20)
      bnez       $18, .L800AB190
       addiu     $18, $18, -0x1
      lw         $2, 0xC($20)
      jalr       $2
       nop
      beqz       $2, .L800AB448
       addu      $2, $0, $0
      lw         $19, 0x0($20)
      lw         $18, 0x4($20)
      addiu      $18, $18, -0x1
  .L800AB190:
      lbu        $2, 0x0($19)
      addiu      $19, $19, 0x1
      bnez       $18, .L800AB1BC
       sll       $22, $2, 8
      lw         $2, 0xC($20)
      jalr       $2
       addu      $4, $17, $0
      beqz       $2, .L800AB448
       addu      $2, $0, $0
      lw         $19, 0x0($20)
      lw         $18, 0x4($20)
  .L800AB1BC:
      addiu      $18, $18, -0x1
      lbu        $2, 0x0($19)
      addu       $22, $22, $2
      addiu      $22, $22, -0x2
      slti       $2, $22, 0xE
      bnez       $2, .L800AB3FC
       addiu     $19, $19, 0x1
      addu       $16, $0, $0
      addiu      $21, $29, 0x10
  .L800AB1E0:
      bnez       $18, .L800AB208
       addiu     $18, $18, -0x1
      lw         $2, 0xC($20)
      jalr       $2
       addu      $4, $17, $0
      beqz       $2, .L800AB448
       addu      $2, $0, $0
      lw         $19, 0x0($20)
      lw         $18, 0x4($20)
      addiu      $18, $18, -0x1
  .L800AB208:
      lbu        $2, 0x0($19)
      addu       $3, $21, $16
      sb         $2, 0x0($3)
      addiu      $16, $16, 0x1
      slti       $2, $16, 0xE
      bnez       $2, .L800AB1E0
       addiu     $19, $19, 0x1
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x4A
      bne        $3, $2, .L800AB3E0
       addiu     $22, $22, -0xE
      lbu        $4, 0x11($29)
      addiu      $2, $0, 0x46
      bne        $4, $2, .L800AB3E0
       addiu     $2, $0, 0x49
      lbu        $3, 0x12($29)
      bne        $3, $2, .L800AB3E0
       nop
      lbu        $2, 0x13($29)
      bne        $2, $4, .L800AB3E0
       nop
      lbu        $2, 0x14($29)
      bnez       $2, .L800AB3E0
       addiu     $2, $0, 0x1
      lbu        $3, 0x15($29)
      beq        $3, $2, .L800AB2A8
       addiu     $2, $0, 0x71
      lw         $3, 0x0($17)
      sw         $2, 0x14($3)
      lw         $3, 0x0($17)
      lbu        $2, 0x15($29)
      sw         $2, 0x18($3)
      lw         $3, 0x0($17)
      lbu        $2, 0x16($29)
      sw         $2, 0x1C($3)
      lw         $2, 0x0($17)
      addu       $4, $17, $0
      lw         $2, 0x4($2)
      j          .L800AB2EC
       addiu     $5, $0, -0x1
  .L800AB2A8:
      lbu        $2, 0x16($29)
      sltiu      $2, $2, 0x3
      bnez       $2, .L800AB2F8
       addiu     $2, $0, 0x1
      lw         $3, 0x0($17)
      addiu      $2, $0, 0x56
      sw         $2, 0x14($3)
      lw         $3, 0x0($17)
      lbu        $2, 0x15($29)
      sw         $2, 0x18($3)
      lw         $3, 0x0($17)
      lbu        $2, 0x16($29)
      sw         $2, 0x1C($3)
      lw         $2, 0x0($17)
      addu       $4, $17, $0
      lw         $2, 0x4($2)
      addiu      $5, $0, 0x1
  .L800AB2EC:
      jalr       $2
       nop
      addiu      $2, $0, 0x1
  .L800AB2F8:
      sw         $2, 0x118($17)
      lbu        $2, 0x17($29)
      sb         $2, 0x11C($17)
      lbu        $2, 0x18($29)
      lbu        $3, 0x19($29)
      sll        $2, $2, 8
      addu       $3, $3, $2
      sh         $3, 0x11E($17)
      lbu        $2, 0x1A($29)
      lbu        $3, 0x1B($29)
      sll        $2, $2, 8
      addu       $3, $3, $2
      sh         $3, 0x120($17)
      lw         $3, 0x0($17)
      lhu        $2, 0x11E($17)
      sw         $2, 0x18($3)
      lhu        $2, 0x120($17)
      addiu      $3, $3, 0x18
      sw         $2, 0x4($3)
      lbu        $2, 0x11C($17)
      sw         $2, 0x8($3)
      lw         $3, 0x0($17)
      addiu      $2, $0, 0x54
      sw         $2, 0x14($3)
      lw         $2, 0x0($17)
      addiu      $5, $0, 0x1
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $17, $0
      lbu        $2, 0x1C($29)
      lbu        $3, 0x1D($29)
      or         $2, $2, $3
      beqz       $2, .L800AB3B4
       addiu     $2, $0, 0x57
      lw         $3, 0x0($17)
      sw         $2, 0x14($3)
      lw         $3, 0x0($17)
      lbu        $2, 0x1C($29)
      sw         $2, 0x18($3)
      lw         $3, 0x0($17)
      lbu        $2, 0x1D($29)
      sw         $2, 0x1C($3)
      lw         $2, 0x0($17)
      addu       $4, $17, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
  .L800AB3B4:
      lbu        $3, 0x1C($29)
      lbu        $2, 0x1D($29)
      mult       $3, $2
      mflo       $3
      sll        $2, $3, 1
      addu       $2, $2, $3
      beq        $22, $2, .L800AB424
       addiu     $2, $0, 0x55
      lw         $3, 0x0($17)
      j          .L800AB408
       sw        $2, 0x14($3)
  .L800AB3E0:
      lw         $3, 0x0($17)
      addiu      $2, $0, 0x4A
      sw         $2, 0x14($3)
      lw         $3, 0x0($17)
      addiu      $2, $22, 0xE
      j          .L800AB410
       sw        $2, 0x18($3)
  .L800AB3FC:
      lw         $3, 0x0($17)
      addiu      $2, $0, 0x4A
      sw         $2, 0x14($3)
  .L800AB408:
      lw         $2, 0x0($17)
      sw         $22, 0x18($2)
  .L800AB410:
      lw         $2, 0x0($17)
      addu       $4, $17, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
  .L800AB424:
      sw         $19, 0x0($20)
      blez       $22, .L800AB444
       sw        $18, 0x4($20)
      lw         $2, 0x14($17)
      addu       $4, $17, $0
      lw         $2, 0x10($2)
      jalr       $2
       addu      $5, $22, $0
  .L800AB444:
      addiu      $2, $0, 0x1
  .L800AB448:
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
.end func_800AB134

.globl func_800AB470
.ent func_800AB470
func_800AB470:
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
      lw         $19, 0x14($21)
      lw         $18, 0x0($19)
      lw         $17, 0x4($19)
      bnez       $17, .L800AB4CC
       addiu     $17, $17, -0x1
      lw         $2, 0xC($19)
      jalr       $2
       nop
      beqz       $2, .L800AB688
       addu      $2, $0, $0
      lw         $18, 0x0($19)
      lw         $17, 0x4($19)
      addiu      $17, $17, -0x1
  .L800AB4CC:
      lbu        $2, 0x0($18)
      addiu      $18, $18, 0x1
      bnez       $17, .L800AB4F8
       sll       $22, $2, 8
      lw         $2, 0xC($19)
      jalr       $2
       addu      $4, $21, $0
      beqz       $2, .L800AB688
       addu      $2, $0, $0
      lw         $18, 0x0($19)
      lw         $17, 0x4($19)
  .L800AB4F8:
      addiu      $17, $17, -0x1
      lbu        $2, 0x0($18)
      addu       $22, $22, $2
      addiu      $22, $22, -0x2
      slti       $2, $22, 0xC
      bnez       $2, .L800AB63C
       addiu     $18, $18, 0x1
      addu       $16, $0, $0
      addiu      $20, $29, 0x10
  .L800AB51C:
      bnez       $17, .L800AB544
       addiu     $17, $17, -0x1
      lw         $2, 0xC($19)
      jalr       $2
       addu      $4, $21, $0
      beqz       $2, .L800AB688
       addu      $2, $0, $0
      lw         $18, 0x0($19)
      lw         $17, 0x4($19)
      addiu      $17, $17, -0x1
  .L800AB544:
      lbu        $2, 0x0($18)
      addu       $3, $20, $16
      sb         $2, 0x0($3)
      addiu      $16, $16, 0x1
      slti       $2, $16, 0xC
      bnez       $2, .L800AB51C
       addiu     $18, $18, 0x1
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x41
      bne        $3, $2, .L800AB620
       addiu     $22, $22, -0xC
      lbu        $3, 0x11($29)
      addiu      $2, $0, 0x64
      bne        $3, $2, .L800AB620
       addiu     $2, $0, 0x6F
      lbu        $3, 0x12($29)
      bne        $3, $2, .L800AB620
       addiu     $2, $0, 0x62
      lbu        $3, 0x13($29)
      bne        $3, $2, .L800AB620
       addiu     $2, $0, 0x65
      lbu        $3, 0x14($29)
      bne        $3, $2, .L800AB620
       nop
      lbu        $5, 0x15($29)
      lbu        $2, 0x16($29)
      lbu        $4, 0x17($29)
      lbu        $3, 0x19($29)
      lbu        $16, 0x1B($29)
      sll        $5, $5, 8
      addu       $5, $5, $2
      lbu        $2, 0x18($29)
      sll        $4, $4, 8
      addu       $4, $4, $2
      lbu        $2, 0x1A($29)
      sll        $3, $3, 8
      addu       $3, $3, $2
      lw         $2, 0x0($21)
      sw         $5, 0x18($2)
      addiu      $2, $2, 0x18
      sw         $4, 0x4($2)
      sw         $3, 0x8($2)
      sw         $16, 0xC($2)
      lw         $3, 0x0($21)
      addiu      $2, $0, 0x49
      sw         $2, 0x14($3)
      lw         $2, 0x0($21)
      addiu      $5, $0, 0x1
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $21, $0
      addiu      $2, $0, 0x1
      sw         $2, 0x124($21)
      j          .L800AB664
       sb        $16, 0x128($21)
  .L800AB620:
      lw         $3, 0x0($21)
      addiu      $2, $0, 0x4B
      sw         $2, 0x14($3)
      lw         $3, 0x0($21)
      addiu      $2, $22, 0xC
      j          .L800AB650
       sw        $2, 0x18($3)
  .L800AB63C:
      lw         $3, 0x0($21)
      addiu      $2, $0, 0x4B
      sw         $2, 0x14($3)
      lw         $2, 0x0($21)
      sw         $22, 0x18($2)
  .L800AB650:
      lw         $2, 0x0($21)
      addu       $4, $21, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
  .L800AB664:
      sw         $18, 0x0($19)
      blez       $22, .L800AB684
       sw        $17, 0x4($19)
      lw         $2, 0x14($21)
      addu       $4, $21, $0
      lw         $2, 0x10($2)
      jalr       $2
       addu      $5, $22, $0
  .L800AB684:
      addiu      $2, $0, 0x1
  .L800AB688:
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
.end func_800AB470

.globl func_800AB6B0
.ent func_800AB6B0
func_800AB6B0:
      addiu      $29, $29, -0x30
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $31, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $18, 0x14($20)
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
      bnez       $16, .L800AB70C
       addiu     $16, $16, -0x1
      lw         $2, 0xC($18)
      jalr       $2
       nop
      beqz       $2, .L800AB87C
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
      addiu      $16, $16, -0x1
  .L800AB70C:
      lbu        $2, 0x0($17)
      addiu      $17, $17, 0x1
      bnez       $16, .L800AB738
       sll       $22, $2, 8
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AB87C
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AB738:
      addiu      $16, $16, -0x1
      lbu        $2, 0x0($17)
      addu       $22, $22, $2
      addiu      $22, $22, -0x2
      blez       $22, .L800AB870
       addiu     $17, $17, 0x1
  .L800AB750:
      bnez       $16, .L800AB778
       addiu     $16, $16, -0x1
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AB87C
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
      addiu      $16, $16, -0x1
  .L800AB778:
      lbu        $19, 0x0($17)
      bnez       $16, .L800AB7A0
       addiu     $17, $17, 0x1
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AB87C
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AB7A0:
      addiu      $16, $16, -0x1
      lbu        $21, 0x0($17)
      addiu      $17, $17, 0x1
      addiu      $22, $22, -0x2
      lw         $3, 0x0($20)
      addiu      $2, $0, 0x4C
      sw         $2, 0x14($3)
      lw         $2, 0x0($20)
      sw         $19, 0x18($2)
      lw         $2, 0x0($20)
      sw         $21, 0x1C($2)
      lw         $2, 0x0($20)
      addu       $4, $20, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
      sltiu      $2, $19, 0x20
      bnez       $2, .L800AB814
       slti      $2, $19, 0x10
      lw         $3, 0x0($20)
      addiu      $2, $0, 0x18
      sw         $2, 0x14($3)
      lw         $2, 0x0($20)
      sw         $19, 0x18($2)
      lw         $2, 0x0($20)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $20, $0
      slti       $2, $19, 0x10
  .L800AB814:
      bnez       $2, .L800AB828
       addu      $3, $20, $19
      addu       $2, $19, $20
      j          .L800AB868
       sb        $21, 0xF4($2)
  .L800AB828:
      andi       $2, $21, 0xF
      sb         $2, 0xE4($3)
      andi       $4, $2, 0xFF
      sra        $2, $21, 4
      sb         $2, 0xF4($3)
      sltu       $2, $2, $4
      beqz       $2, .L800AB868
       addiu     $2, $0, 0x19
      lw         $3, 0x0($20)
      sw         $2, 0x14($3)
      lw         $2, 0x0($20)
      sw         $21, 0x18($2)
      lw         $2, 0x0($20)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $20, $0
  .L800AB868:
      bgtz       $22, .L800AB750
       nop
  .L800AB870:
      addiu      $2, $0, 0x1
      sw         $17, 0x0($18)
      sw         $16, 0x4($18)
  .L800AB87C:
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
.end func_800AB6B0

.globl func_800AB8A4
.ent func_800AB8A4
func_800AB8A4:
      addiu      $29, $29, -0x160
      sw         $21, 0x14C($29)
      addu       $21, $4, $0
      sw         $31, 0x15C($29)
      sw         $30, 0x158($29)
      sw         $23, 0x154($29)
      sw         $22, 0x150($29)
      sw         $20, 0x148($29)
      sw         $19, 0x144($29)
      sw         $18, 0x140($29)
      sw         $17, 0x13C($29)
      sw         $16, 0x138($29)
      lw         $20, 0x14($21)
      lw         $19, 0x0($20)
      lw         $18, 0x4($20)
      bnez       $18, .L800AB908
       addiu     $18, $18, -0x1
      lw         $2, 0xC($20)
      jalr       $2
       nop
      beqz       $2, .L800ABCB4
       addu      $2, $0, $0
      lw         $19, 0x0($20)
      lw         $18, 0x4($20)
      addiu      $18, $18, -0x1
  .L800AB908:
      lbu        $2, 0x0($19)
      addiu      $19, $19, 0x1
      bnez       $18, .L800AB934
       sll       $30, $2, 8
      lw         $2, 0xC($20)
      jalr       $2
       addu      $4, $21, $0
      beqz       $2, .L800ABCB4
       addu      $2, $0, $0
      lw         $19, 0x0($20)
      lw         $18, 0x4($20)
  .L800AB934:
      addiu      $18, $18, -0x1
      lbu        $2, 0x0($19)
      addu       $30, $30, $2
      addiu      $30, $30, -0x2
      blez       $30, .L800ABCA8
       addiu     $19, $19, 0x1
      addiu      $6, $29, 0x10
      addiu      $7, $29, 0x28
      addiu      $8, $29, 0x128
      sw         $6, 0x130($29)
      sw         $7, 0x128($29)
      sw         $8, 0x12C($29)
  .L800AB964:
      bnez       $18, .L800AB98C
       addiu     $18, $18, -0x1
      lw         $2, 0xC($20)
      jalr       $2
       addu      $4, $21, $0
      beqz       $2, .L800ABCB4
       addu      $2, $0, $0
      lw         $19, 0x0($20)
      lw         $18, 0x4($20)
      addiu      $18, $18, -0x1
  .L800AB98C:
      lbu        $23, 0x0($19)
      addiu      $19, $19, 0x1
      lw         $3, 0x0($21)
      addiu      $5, $0, 0x1
      addu       $22, $0, $0
      addiu      $2, $0, 0x4D
      addu       $16, $5, $0
      sw         $2, 0x14($3)
      lw         $2, 0x0($21)
      addu       $4, $21, $0
      sw         $23, 0x18($2)
      lw         $2, 0x0($21)
      lw         $9, 0x130($29)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $17, $9, $5
      sb         $0, 0x10($29)
  .L800AB9D0:
      bnez       $18, .L800AB9F8
       addiu     $18, $18, -0x1
      lw         $2, 0xC($20)
      jalr       $2
       addu      $4, $21, $0
      beqz       $2, .L800ABCB4
       addu      $2, $0, $0
      lw         $19, 0x0($20)
      lw         $18, 0x4($20)
      addiu      $18, $18, -0x1
  .L800AB9F8:
      lbu        $2, 0x0($19)
      addiu      $19, $19, 0x1
      sb         $2, 0x0($17)
      andi       $2, $2, 0xFF
      addu       $22, $22, $2
      addiu      $16, $16, 0x1
      slti       $2, $16, 0x11
      bnez       $2, .L800AB9D0
       addiu     $17, $17, 0x1
      addiu      $30, $30, -0x11
      lw         $3, 0x0($21)
      lbu        $2, 0x11($29)
      sw         $2, 0x18($3)
      lbu        $2, 0x12($29)
      addiu      $3, $3, 0x18
      sw         $2, 0x4($3)
      lbu        $2, 0x13($29)
      sw         $2, 0x8($3)
      lbu        $2, 0x14($29)
      sw         $2, 0xC($3)
      lbu        $2, 0x15($29)
      sw         $2, 0x10($3)
      lbu        $2, 0x16($29)
      sw         $2, 0x14($3)
      lbu        $2, 0x17($29)
      sw         $2, 0x18($3)
      lbu        $2, 0x18($29)
      sw         $2, 0x1C($3)
      lw         $2, 0x0($21)
      addiu      $16, $0, 0x53
      sw         $16, 0x14($2)
      lw         $2, 0x0($21)
      addiu      $5, $0, 0x2
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $21, $0
      lw         $3, 0x0($21)
      lbu        $2, 0x19($29)
      sw         $2, 0x18($3)
      lbu        $2, 0x1A($29)
      addiu      $3, $3, 0x18
      sw         $2, 0x4($3)
      lbu        $2, 0x1B($29)
      sw         $2, 0x8($3)
      lbu        $2, 0x1C($29)
      sw         $2, 0xC($3)
      lbu        $2, 0x1D($29)
      sw         $2, 0x10($3)
      lbu        $2, 0x1E($29)
      sw         $2, 0x14($3)
      lbu        $2, 0x1F($29)
      sw         $2, 0x18($3)
      lbu        $2, 0x20($29)
      sw         $2, 0x1C($3)
      lw         $2, 0x0($21)
      sw         $16, 0x14($2)
      lw         $2, 0x0($21)
      addiu      $5, $0, 0x2
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $21, $0
      slti       $2, $22, 0x101
      beqz       $2, .L800ABB00
       slt       $2, $30, $22
      beqz       $2, .L800ABB1C
       nop
  .L800ABB00:
      lw         $3, 0x0($21)
      addiu      $2, $0, 0x1A
      sw         $2, 0x14($3)
      lw         $2, 0x0($21)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $21, $0
  .L800ABB1C:
      blez       $22, .L800ABB6C
       addu      $16, $0, $0
  .L800ABB24:
      bnez       $18, .L800ABB4C
       addiu     $18, $18, -0x1
      lw         $2, 0xC($20)
      jalr       $2
       addu      $4, $21, $0
      beqz       $2, .L800ABCB4
       addu      $2, $0, $0
      lw         $19, 0x0($20)
      lw         $18, 0x4($20)
      addiu      $18, $18, -0x1
  .L800ABB4C:
      lbu        $2, 0x0($19)
      lw         $6, 0x128($29)
      addu       $3, $6, $16
      sb         $2, 0x0($3)
      addiu      $16, $16, 0x1
      slt        $2, $16, $22
      bnez       $2, .L800ABB24
       addiu     $19, $19, 0x1
  .L800ABB6C:
      andi       $2, $23, 0x10
      beqz       $2, .L800ABB88
       subu      $30, $30, $22
      addiu      $23, $23, -0x10
      sll        $2, $23, 2
      j          .L800ABB90
       addiu     $2, $2, 0xC4
  .L800ABB88:
      sll        $2, $23, 2
      addiu      $2, $2, 0xB4
  .L800ABB90:
      addu       $16, $21, $2
      sltiu      $2, $23, 0x4
      bnez       $2, .L800ABBC0
       addiu     $2, $0, 0x1B
      lw         $3, 0x0($21)
      sw         $2, 0x14($3)
      lw         $2, 0x0($21)
      sw         $23, 0x18($2)
      lw         $2, 0x0($21)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $21, $0
  .L800ABBC0:
      lw         $2, 0x0($16)
      bnez       $2, .L800ABBDC
       nop
      jal        func_800A95CC
       addu      $4, $21, $0
      sw         $2, 0x0($16)
      lw         $2, 0x0($16)
  .L800ABBDC:
      lw         $7, 0x10($29)
      lw         $8, 0x14($29)
      lw         $9, 0x18($29)
      lw         $6, 0x1C($29)
      sw         $7, 0x0($2)
      sw         $8, 0x4($2)
      sw         $9, 0x8($2)
      sw         $6, 0xC($2)
      lb         $7, 0x20($29)
      sb         $7, 0x10($2)
      lw         $2, 0x0($16)
      addiu      $2, $2, 0x11
      andi       $4, $2, 0x3
      beqz       $4, .L800ABC70
       addiu     $3, $29, 0x28
  .L800ABC18:
      lwl        $7, 0x0($3)
      lwr        $7, 0x3($3)
      lwl        $8, 0x4($3)
      lwr        $8, 0x7($3)
      lwl        $9, 0x8($3)
      lwr        $9, 0xB($3)
      lwl        $6, 0xC($3)
      lwr        $6, 0xF($3)
      swl        $7, 0x0($2)
      swr        $7, 0x3($2)
      swl        $8, 0x4($2)
      swr        $8, 0x7($2)
      swl        $9, 0x8($2)
      swr        $9, 0xB($2)
      swl        $6, 0xC($2)
      swr        $6, 0xF($2)
      addiu      $3, $3, 0x10
      lw         $7, 0x12C($29)
      bne        $3, $7, .L800ABC18
       addiu     $2, $2, 0x10
      j          .L800ABCA0
       nop
  .L800ABC70:
      lw         $8, 0x0($3)
      lw         $9, 0x4($3)
      lw         $6, 0x8($3)
      lw         $7, 0xC($3)
      sw         $8, 0x0($2)
      sw         $9, 0x4($2)
      sw         $6, 0x8($2)
      sw         $7, 0xC($2)
      addiu      $3, $3, 0x10
      lw         $8, 0x12C($29)
      bne        $3, $8, .L800ABC70
       addiu     $2, $2, 0x10
  .L800ABCA0:
      bgtz       $30, .L800AB964
       nop
  .L800ABCA8:
      addiu      $2, $0, 0x1
      sw         $19, 0x0($20)
      sw         $18, 0x4($20)
  .L800ABCB4:
      lw         $31, 0x15C($29)
      lw         $30, 0x158($29)
      lw         $23, 0x154($29)
      lw         $22, 0x150($29)
      lw         $21, 0x14C($29)
      lw         $20, 0x148($29)
      lw         $19, 0x144($29)
      lw         $18, 0x140($29)
      lw         $17, 0x13C($29)
      lw         $16, 0x138($29)
      jr         $31
       addiu     $29, $29, 0x160
.end func_800AB8A4

.globl func_800ABCE4
.ent func_800ABCE4
func_800ABCE4:
      addiu      $29, $29, -0x58
      sw         $22, 0x48($29)
      addu       $22, $4, $0
      sw         $31, 0x54($29)
      sw         $30, 0x50($29)
      sw         $23, 0x4C($29)
      sw         $21, 0x44($29)
      sw         $20, 0x40($29)
      sw         $19, 0x3C($29)
      sw         $18, 0x38($29)
      sw         $17, 0x34($29)
      sw         $16, 0x30($29)
      lw         $19, 0x14($22)
      lw         $18, 0x0($19)
      lw         $17, 0x4($19)
      bnez       $17, .L800ABD48
       addiu     $17, $17, -0x1
      lw         $2, 0xC($19)
      jalr       $2
       nop
      beqz       $2, .L800AC050
       addu      $2, $0, $0
      lw         $18, 0x0($19)
      lw         $17, 0x4($19)
      addiu      $17, $17, -0x1
  .L800ABD48:
      lbu        $2, 0x0($18)
      addiu      $18, $18, 0x1
      sll        $2, $2, 8
      bnez       $17, .L800ABD78
       sw        $2, 0x10($29)
      lw         $2, 0xC($19)
      jalr       $2
       addu      $4, $22, $0
      beqz       $2, .L800AC050
       addu      $2, $0, $0
      lw         $18, 0x0($19)
      lw         $17, 0x4($19)
  .L800ABD78:
      addiu      $17, $17, -0x1
      lbu        $2, 0x0($18)
      lw         $11, 0x10($29)
      addiu      $18, $18, 0x1
      addu       $11, $11, $2
      addiu      $11, $11, -0x2
      blez       $11, .L800AC044
       sw        $11, 0x10($29)
  .L800ABD98:
      bnez       $17, .L800ABDC0
       addiu     $17, $17, -0x1
      lw         $2, 0xC($19)
      jalr       $2
       addu      $4, $22, $0
      beqz       $2, .L800AC050
       addu      $2, $0, $0
      lw         $18, 0x0($19)
      lw         $17, 0x4($19)
      addiu      $17, $17, -0x1
  .L800ABDC0:
      lbu        $16, 0x0($18)
      addiu      $18, $18, 0x1
      sra        $11, $16, 4
      sw         $11, 0x14($29)
      lw         $3, 0x0($22)
      addiu      $2, $0, 0x4E
      sw         $2, 0x14($3)
      lw         $2, 0x0($22)
      andi       $16, $16, 0xF
      sw         $16, 0x18($2)
      lw         $2, 0x0($22)
      sw         $11, 0x1C($2)
      lw         $2, 0x0($22)
      addu       $4, $22, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
      slti       $2, $16, 0x4
      bnez       $2, .L800ABE38
       sll       $2, $16, 2
      lw         $3, 0x0($22)
      addiu      $2, $0, 0x1C
      sw         $2, 0x14($3)
      lw         $2, 0x0($22)
      sw         $16, 0x18($2)
      lw         $2, 0x0($22)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $22, $0
      sll        $2, $16, 2
  .L800ABE38:
      addu       $16, $22, $2
      lw         $2, 0xA4($16)
      bnez       $2, .L800ABE54
       nop
      jal        func_800A95A0
       addu      $4, $22, $0
      sw         $2, 0xA4($16)
  .L800ABE54:
      lw         $20, 0xA4($16)
      addu       $21, $0, $0
      addu       $23, $20, $0
  .L800ABE60:
      lw         $11, 0x14($29)
      beqz       $11, .L800ABED4
       nop
      bnez       $17, .L800ABE94
       addiu     $17, $17, -0x1
      lw         $2, 0xC($19)
      jalr       $2
       addu      $4, $22, $0
      beqz       $2, .L800AC050
       addu      $2, $0, $0
      lw         $18, 0x0($19)
      lw         $17, 0x4($19)
      addiu      $17, $17, -0x1
  .L800ABE94:
      lbu        $2, 0x0($18)
      addiu      $18, $18, 0x1
      bnez       $17, .L800ABEC0
       sll       $16, $2, 8
      lw         $2, 0xC($19)
      jalr       $2
       addu      $4, $22, $0
      beqz       $2, .L800AC050
       addu      $2, $0, $0
      lw         $18, 0x0($19)
      lw         $17, 0x4($19)
  .L800ABEC0:
      addiu      $17, $17, -0x1
      lbu        $2, 0x0($18)
      addiu      $18, $18, 0x1
      j          .L800ABF04
       addu      $16, $16, $2
  .L800ABED4:
      bnez       $17, .L800ABEFC
       addiu     $17, $17, -0x1
      lw         $2, 0xC($19)
      jalr       $2
       addu      $4, $22, $0
      beqz       $2, .L800AC050
       addu      $2, $0, $0
      lw         $18, 0x0($19)
      lw         $17, 0x4($19)
      addiu      $17, $17, -0x1
  .L800ABEFC:
      lbu        $16, 0x0($18)
      addiu      $18, $18, 0x1
  .L800ABF04:
      sh         $16, 0x0($23)
      addiu      $21, $21, 0x1
      slti       $2, $21, 0x40
      bnez       $2, .L800ABE60
       addiu     $23, $23, 0x2
      addu       $21, $0, $0
      addiu      $10, $0, 0xE
      addiu      $9, $0, 0xC
      addiu      $8, $0, 0xA
      addiu      $7, $0, 0x8
      addiu      $6, $0, 0x6
      addiu      $30, $0, 0x4
      addiu      $23, $0, 0x2
      addu       $16, $20, $0
  .L800ABF3C:
      lw         $3, 0x0($22)
      lhu        $2, 0x0($16)
      sw         $2, 0x18($3)
      addu       $2, $20, $23
      lhu        $2, 0x0($2)
      addiu      $3, $3, 0x18
      sw         $2, 0x4($3)
      addu       $2, $20, $30
      lhu        $2, 0x0($2)
      sw         $2, 0x8($3)
      addu       $2, $20, $6
      lhu        $2, 0x0($2)
      sw         $2, 0xC($3)
      addu       $2, $20, $7
      lhu        $2, 0x0($2)
      sw         $2, 0x10($3)
      addu       $2, $20, $8
      lhu        $2, 0x0($2)
      sw         $2, 0x14($3)
      addu       $2, $20, $9
      lhu        $2, 0x0($2)
      sw         $2, 0x18($3)
      addu       $2, $20, $10
      lhu        $2, 0x0($2)
      sw         $2, 0x1C($3)
      lw         $2, 0x0($22)
      addiu      $11, $0, 0x5A
      sw         $11, 0x14($2)
      lw         $2, 0x0($22)
      addu       $4, $22, $0
      lw         $2, 0x4($2)
      addiu      $5, $0, 0x2
      sw         $6, 0x18($29)
      sw         $7, 0x1C($29)
      sw         $8, 0x20($29)
      sw         $9, 0x24($29)
      jalr       $2
       sw        $10, 0x28($29)
      lw         $10, 0x28($29)
      addiu      $10, $10, 0x10
      addiu      $30, $30, 0x10
      addiu      $23, $23, 0x10
      addiu      $16, $16, 0x10
      addiu      $21, $21, 0x8
      slti       $2, $21, 0x40
      lw         $9, 0x24($29)
      lw         $8, 0x20($29)
      lw         $7, 0x1C($29)
      lw         $6, 0x18($29)
      addiu      $9, $9, 0x10
      addiu      $8, $8, 0x10
      addiu      $7, $7, 0x10
      bnez       $2, .L800ABF3C
       addiu     $6, $6, 0x10
      lw         $11, 0x10($29)
      addiu      $11, $11, -0x41
      sw         $11, 0x10($29)
      lw         $11, 0x14($29)
      beqz       $11, .L800AC038
       nop
      lw         $11, 0x10($29)
      addiu      $11, $11, -0x40
      sw         $11, 0x10($29)
  .L800AC038:
      lw         $11, 0x10($29)
      bgtz       $11, .L800ABD98
       nop
  .L800AC044:
      addiu      $2, $0, 0x1
      sw         $18, 0x0($19)
      sw         $17, 0x4($19)
  .L800AC050:
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
.end func_800ABCE4

.globl func_800AC080
.ent func_800AC080
func_800AC080:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $18, 0x14($20)
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
      bnez       $16, .L800AC0D4
       addiu     $16, $16, -0x1
      lw         $2, 0xC($18)
      jalr       $2
       nop
      beqz       $2, .L800AC1D0
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
      addiu      $16, $16, -0x1
  .L800AC0D4:
      lbu        $2, 0x0($17)
      addiu      $17, $17, 0x1
      bnez       $16, .L800AC100
       sll       $19, $2, 8
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AC1D0
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AC100:
      addiu      $16, $16, -0x1
      lbu        $2, 0x0($17)
      addu       $19, $19, $2
      addiu      $2, $0, 0x4
      beq        $19, $2, .L800AC134
       addiu     $17, $17, 0x1
      lw         $3, 0x0($20)
      addiu      $2, $0, 0x9
      sw         $2, 0x14($3)
      lw         $2, 0x0($20)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $20, $0
  .L800AC134:
      bnez       $16, .L800AC15C
       addiu     $16, $16, -0x1
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AC1D0
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
      addiu      $16, $16, -0x1
  .L800AC15C:
      lbu        $2, 0x0($17)
      addiu      $17, $17, 0x1
      bnez       $16, .L800AC188
       sll       $19, $2, 8
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AC1D0
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AC188:
      addiu      $16, $16, -0x1
      lbu        $2, 0x0($17)
      addiu      $17, $17, 0x1
      addu       $19, $19, $2
      lw         $3, 0x0($20)
      addiu      $2, $0, 0x4F
      sw         $2, 0x14($3)
      lw         $2, 0x0($20)
      sw         $19, 0x18($2)
      lw         $2, 0x0($20)
      addiu      $5, $0, 0x1
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $20, $0
      addiu      $2, $0, 0x1
      sw         $19, 0x114($20)
      sw         $17, 0x0($18)
      sw         $16, 0x4($18)
  .L800AC1D0:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800AC080

.globl func_800AC1F0
.ent func_800AC1F0
func_800AC1F0:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $18, 0x14($20)
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
      bnez       $16, .L800AC244
       addiu     $16, $16, -0x1
      lw         $2, 0xC($18)
      jalr       $2
       nop
      beqz       $2, .L800AC2D4
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
      addiu      $16, $16, -0x1
  .L800AC244:
      lbu        $2, 0x0($17)
      addiu      $17, $17, 0x1
      bnez       $16, .L800AC270
       sll       $19, $2, 8
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AC2D4
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AC270:
      addiu      $16, $16, -0x1
      lbu        $2, 0x0($17)
      addiu      $17, $17, 0x1
      addu       $19, $19, $2
      lw         $3, 0x0($20)
      addiu      $2, $0, 0x58
      sw         $2, 0x14($3)
      lw         $3, 0x0($20)
      lw         $2, 0x19C($20)
      sw         $2, 0x18($3)
      lw         $2, 0x0($20)
      sw         $19, 0x1C($2)
      lw         $2, 0x0($20)
      addiu      $5, $0, 0x1
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $20, $0
      sw         $17, 0x0($18)
      sw         $16, 0x4($18)
      lw         $2, 0x14($20)
      addu       $4, $20, $0
      lw         $2, 0x10($2)
      jalr       $2
       addiu     $5, $19, -0x2
      addiu      $2, $0, 0x1
  .L800AC2D4:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800AC1F0

.globl func_800AC2F4
.ent func_800AC2F4
func_800AC2F4:
      addiu      $29, $29, -0x30
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $31, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $18, 0x14($20)
      addiu      $22, $0, 0xFF
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AC32C:
      bnez       $16, .L800AC354
       addiu     $16, $16, -0x1
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AC460
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
      addiu      $16, $16, -0x1
  .L800AC354:
      lbu        $19, 0x0($17)
      beq        $19, $22, .L800AC3AC
       addiu     $17, $17, 0x1
      addiu      $21, $0, 0xFF
  .L800AC364:
      lw         $3, 0x1B4($20)
      lw         $2, 0x5C($3)
      addiu      $2, $2, 0x1
      sw         $2, 0x5C($3)
      sw         $17, 0x0($18)
      bnez       $16, .L800AC39C
       sw        $16, 0x4($18)
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AC460
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AC39C:
      addiu      $16, $16, -0x1
      lbu        $19, 0x0($17)
      bne        $19, $21, .L800AC364
       addiu     $17, $17, 0x1
  .L800AC3AC:
      bnez       $16, .L800AC3D4
       addiu     $16, $16, -0x1
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AC460
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
      addiu      $16, $16, -0x1
  .L800AC3D4:
      lbu        $19, 0x0($17)
      beq        $19, $22, .L800AC3AC
       addiu     $17, $17, 0x1
      bnez       $19, .L800AC404
       nop
      lw         $3, 0x1B4($20)
      lw         $2, 0x5C($3)
      addiu      $2, $2, 0x2
      sw         $2, 0x5C($3)
      sw         $17, 0x0($18)
      j          .L800AC32C
       sw        $16, 0x4($18)
  .L800AC404:
      lw         $2, 0x1B4($20)
      lw         $2, 0x5C($2)
      beqz       $2, .L800AC450
       addiu     $2, $0, 0x6E
      lw         $3, 0x0($20)
      sw         $2, 0x14($3)
      lw         $2, 0x1B4($20)
      lw         $3, 0x0($20)
      lw         $2, 0x5C($2)
      sw         $2, 0x18($3)
      lw         $2, 0x0($20)
      sw         $19, 0x1C($2)
      lw         $2, 0x0($20)
      addu       $4, $20, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, -0x1
      lw         $2, 0x1B4($20)
      sw         $0, 0x5C($2)
  .L800AC450:
      addiu      $2, $0, 0x1
      sw         $19, 0x19C($20)
      sw         $17, 0x0($18)
      sw         $16, 0x4($18)
  .L800AC460:
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
.end func_800AC2F4

.globl func_800AC488
.ent func_800AC488
func_800AC488:
      addiu      $29, $29, -0x30
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $18, 0x14($20)
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
      bnez       $16, .L800AC4E0
       addiu     $16, $16, -0x1
      lw         $2, 0xC($18)
      jalr       $2
       nop
      beqz       $2, .L800AC564
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
      addiu      $16, $16, -0x1
  .L800AC4E0:
      lbu        $21, 0x0($17)
      bnez       $16, .L800AC508
       addiu     $17, $17, 0x1
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, .L800AC564
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
  .L800AC508:
      addiu      $16, $16, -0x1
      lbu        $19, 0x0($17)
      addiu      $2, $0, 0xFF
      bne        $21, $2, .L800AC528
       addiu     $17, $17, 0x1
      addiu      $2, $0, 0xD8
      beq        $19, $2, .L800AC558
       addiu     $2, $0, 0x1
  .L800AC528:
      lw         $3, 0x0($20)
      addiu      $2, $0, 0x32
      sw         $2, 0x14($3)
      lw         $2, 0x0($20)
      sw         $21, 0x18($2)
      lw         $2, 0x0($20)
      sw         $19, 0x1C($2)
      lw         $2, 0x0($20)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $20, $0
      addiu      $2, $0, 0x1
  .L800AC558:
      sw         $19, 0x19C($20)
      sw         $17, 0x0($18)
      sw         $16, 0x4($18)
  .L800AC564:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800AC488

.globl func_800AC588
.ent func_800AC588
func_800AC588:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
  .L800AC598:
      lw         $2, 0x19C($16)
      bnez       $2, .L800AC5D4
       nop
      lw         $2, 0x1B4($16)
      lw         $2, 0x50($2)
      bnez       $2, .L800AC5C4
       nop
      jal        func_800AC488
       addu      $4, $16, $0
      j          .L800AC5CC
       nop
  .L800AC5C4:
      jal        func_800AC2F4
       addu      $4, $16, $0
  .L800AC5CC:
      beqz       $2, .L800AC890
       addu      $2, $0, $0
  .L800AC5D4:
      lw         $3, 0x19C($16)
      slti       $2, $3, 0xD0
      beqz       $2, .L800AC664
       slti      $2, $3, 0xCD
      beqz       $2, .L800AC748
       addiu     $2, $0, 0xC4
      beq        $3, $2, .L800AC7A8
       slti      $2, $3, 0xC5
      beqz       $2, .L800AC638
       slti      $2, $3, 0xC2
      beqz       $2, .L800AC61C
       slti      $2, $3, 0xC0
      beqz       $2, .L800AC6F0
       addiu     $2, $0, 0x1
      beq        $3, $2, .L800AC814
       nop
      j          .L800AC860
       nop
  .L800AC61C:
      addiu      $2, $0, 0xC2
      beq        $3, $2, .L800AC708
       addiu     $2, $0, 0xC3
      beq        $3, $2, .L800AC748
       nop
      j          .L800AC860
       nop
  .L800AC638:
      addiu      $2, $0, 0xC9
      beq        $3, $2, .L800AC720
       slt       $2, $3, $2
      bnez       $2, .L800AC748
       addiu     $2, $0, 0xCB
      beq        $3, $2, .L800AC748
       slti      $2, $3, 0xCC
      beqz       $2, .L800AC798
       addu      $4, $16, $0
      j          .L800AC738
       addiu     $5, $0, 0x1
  .L800AC664:
      addiu      $2, $0, 0xDB
      beq        $3, $2, .L800AC7B8
       slti      $2, $3, 0xDC
      beqz       $2, .L800AC6A0
       addiu     $2, $0, 0xD8
      beq        $3, $2, .L800AC6E0
       slt       $2, $3, $2
      bnez       $2, .L800AC814
       addiu     $2, $0, 0xD9
      beq        $3, $2, .L800AC76C
       addiu     $2, $0, 0xDA
      beq        $3, $2, .L800AC754
       nop
      j          .L800AC860
       nop
  .L800AC6A0:
      slti       $2, $3, 0xF0
      beqz       $2, .L800AC6CC
       slti      $2, $3, 0xE0
      beqz       $2, .L800AC7D8
       addiu     $2, $0, 0xDC
      beq        $3, $2, .L800AC848
       addiu     $2, $0, 0xDD
      beq        $3, $2, .L800AC7C8
       nop
      j          .L800AC860
       nop
  .L800AC6CC:
      addiu      $2, $0, 0xFE
      beq        $3, $2, .L800AC7FC
       nop
      j          .L800AC860
       nop
  .L800AC6E0:
      jal        func_800AA880
       addu      $4, $16, $0
      j          .L800AC850
       nop
  .L800AC6F0:
      addu       $4, $16, $0
      addu       $5, $0, $0
      jal        func_800AA944
       addu      $6, $5, $0
      j          .L800AC850
       nop
  .L800AC708:
      addu       $4, $16, $0
      addiu      $5, $0, 0x1
      jal        func_800AA944
       addu      $6, $0, $0
      j          .L800AC850
       nop
  .L800AC720:
      addu       $4, $16, $0
      addu       $5, $0, $0
      jal        func_800AA944
       addiu     $6, $0, 0x1
      j          .L800AC850
       nop
  .L800AC738:
      jal        func_800AA944
       addu      $6, $5, $0
      j          .L800AC850
       nop
  .L800AC748:
      lw         $3, 0x0($16)
      j          .L800AC868
       addiu     $2, $0, 0x39
  .L800AC754:
      jal        func_800AAD84
       addu      $4, $16, $0
      beqz       $2, .L800AC858
       addiu     $2, $0, 0x1
      j          .L800AC890
       sw        $0, 0x19C($16)
  .L800AC76C:
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x52
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      addu       $4, $16, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
      addiu      $2, $0, 0x2
      j          .L800AC890
       sw        $0, 0x19C($16)
  .L800AC798:
      jal        func_800AB6B0
       addu      $4, $16, $0
      j          .L800AC850
       nop
  .L800AC7A8:
      jal        func_800AB8A4
       addu      $4, $16, $0
      j          .L800AC850
       nop
  .L800AC7B8:
      jal        func_800ABCE4
       addu      $4, $16, $0
      j          .L800AC850
       nop
  .L800AC7C8:
      jal        func_800AC080
       addu      $4, $16, $0
      j          .L800AC850
       nop
  .L800AC7D8:
      addiu      $2, $3, -0xE0
      lw         $3, 0x1B4($16)
      sll        $2, $2, 2
      addu       $3, $3, $2
      lw         $2, 0x10($3)
      jalr       $2
       addu      $4, $16, $0
      j          .L800AC850
       nop
  .L800AC7FC:
      lw         $2, 0x1B4($16)
      lw         $2, 0xC($2)
      jalr       $2
       addu      $4, $16, $0
      j          .L800AC850
       nop
  .L800AC814:
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x59
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      lw         $2, 0x19C($16)
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      addu       $4, $16, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
      j          .L800AC598
       sw        $0, 0x19C($16)
  .L800AC848:
      jal        func_800AC1F0
       addu      $4, $16, $0
  .L800AC850:
      bnel       $2, $0, .L800AC598
       sw        $0, 0x19C($16)
  .L800AC858:
      j          .L800AC890
       addu      $2, $0, $0
  .L800AC860:
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x41
  .L800AC868:
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      lw         $2, 0x19C($16)
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      j          .L800AC598
       sw        $0, 0x19C($16)
  .L800AC890:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800AC588

.globl func_800AC8A0
.ent func_800AC8A0
func_800AC8A0:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x19C($16)
      bnez       $2, .L800AC8CC
       nop
      jal        func_800AC2F4
       nop
      beqz       $2, .L800AC94C
       addu      $2, $0, $0
  .L800AC8CC:
      lw         $2, 0x1B4($16)
      lw         $5, 0x58($2)
      lw         $3, 0x19C($16)
      addiu      $2, $5, 0xD0
      beq        $3, $2, .L800AC904
       addiu     $2, $0, 0x5F
      lw         $2, 0x14($16)
      lw         $2, 0x14($2)
      jalr       $2
       addu      $4, $16, $0
      bnez       $2, .L800AC934
       addu      $2, $0, $0
      j          .L800AC94C
       nop
  .L800AC904:
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $2, 0x1B4($16)
      lw         $3, 0x0($16)
      lw         $2, 0x58($2)
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      addu       $4, $16, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x2
      sw         $0, 0x19C($16)
  .L800AC934:
      lw         $4, 0x1B4($16)
      lw         $3, 0x58($4)
      addiu      $2, $0, 0x1
      addu       $3, $3, $2
      andi       $3, $3, 0x7
      sw         $3, 0x58($4)
  .L800AC94C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800AC8A0

.globl func_800AC95C
.ent func_800AC95C
func_800AC95C:
      addiu      $29, $29, -0x30
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $17, 0x19C($18)
      lw         $3, 0x0($18)
      addiu      $2, $0, 0x73
      sw         $2, 0x14($3)
      lw         $2, 0x0($18)
      sw         $17, 0x18($2)
      lw         $2, 0x0($18)
      addu       $16, $5, $0
      sw         $16, 0x1C($2)
      lw         $2, 0x0($18)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, -0x1
      addiu      $2, $16, 0x1
      andi       $2, $2, 0x7
      addiu      $22, $2, 0xD0
      addiu      $2, $16, 0x2
      andi       $2, $2, 0x7
      addiu      $21, $2, 0xD0
      addiu      $2, $16, -0x1
      andi       $2, $2, 0x7
      addiu      $20, $2, 0xD0
      addiu      $16, $16, -0x2
      andi       $16, $16, 0x7
      addiu      $19, $16, 0xD0
      slti       $2, $17, 0xC0
  .L800AC9EC:
      bnez       $2, .L800ACA28
       addiu     $16, $0, 0x2
      addiu      $2, $17, -0xD0
      sltiu      $2, $2, 0x8
      beqz       $2, .L800ACA28
       addiu     $16, $0, 0x3
      beq        $17, $22, .L800ACA28
       nop
      beq        $17, $21, .L800ACA28
       nop
      beq        $17, $20, .L800ACA28
       addiu     $16, $0, 0x2
      bne        $17, $19, .L800ACA28
       addiu     $16, $0, 0x1
      addiu      $16, $0, 0x2
  .L800ACA28:
      lw         $3, 0x0($18)
      addiu      $2, $0, 0x5E
      sw         $2, 0x14($3)
      lw         $2, 0x0($18)
      sw         $17, 0x18($2)
      lw         $2, 0x0($18)
      sw         $16, 0x1C($2)
      lw         $2, 0x0($18)
      addu       $4, $18, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x4
      addiu      $2, $0, 0x2
      beq        $16, $2, .L800ACA98
       slti      $2, $16, 0x3
      beqz       $2, .L800ACA7C
       addiu     $2, $0, 0x1
      beq        $16, $2, .L800ACA90
       slti      $2, $17, 0xC0
      j          .L800AC9EC
       nop
  .L800ACA7C:
      addiu      $2, $0, 0x3
      beq        $16, $2, .L800ACAB4
       slti      $2, $17, 0xC0
      j          .L800AC9EC
       nop
  .L800ACA90:
      j          .L800ACAB4
       sw        $0, 0x19C($18)
  .L800ACA98:
      jal        func_800AC2F4
       addu      $4, $18, $0
      beqz       $2, .L800ACAB8
       addu      $2, $0, $0
      lw         $17, 0x19C($18)
      j          .L800AC9EC
       slti      $2, $17, 0xC0
  .L800ACAB4:
      addiu      $2, $0, 0x1
  .L800ACAB8:
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
.end func_800AC95C

.globl func_800ACAE0
.ent func_800ACAE0
func_800ACAE0:
      lw         $2, 0x1B4($4)
      sw         $0, 0xD8($4)
      sw         $0, 0x90($4)
      sw         $0, 0x19C($4)
      sw         $0, 0x50($2)
      lw         $2, 0x1B4($4)
      sw         $0, 0x54($2)
      lw         $2, 0x1B4($4)
      jr         $31
       sw        $0, 0x5C($2)
.end func_800ACAE0

.globl func_800ACB08
.ent func_800ACB08
func_800ACB08:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x4($16)
      addu       $5, $0, $0
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x60
      addu       $4, $0, $0
      lui        $3, %hi(func_800ACAE0)
      addiu      $3, $3, %lo(func_800ACAE0)
      sw         $2, 0x1B4($16)
      sw         $3, 0x0($2)
      lui        $2, %hi(func_800AC588)
      lw         $3, 0x1B4($16)
      addiu      $2, $2, %lo(func_800AC588)
      sw         $2, 0x4($3)
      lui        $2, %hi(func_800AC8A0)
      lw         $3, 0x1B4($16)
      addiu      $2, $2, %lo(func_800AC8A0)
      sw         $2, 0x8($3)
      lui        $2, %hi(func_800AC1F0)
      addiu      $2, $2, %lo(func_800AC1F0)
      lw         $3, 0x1B4($16)
      addu       $5, $2, $0
      sw         $5, 0xC($3)
  .L800ACB74:
      sll        $2, $4, 2
      lw         $3, 0x1B4($16)
      addiu      $4, $4, 0x1
      addu       $3, $3, $2
      slti       $2, $4, 0x10
      bnez       $2, .L800ACB74
       sw        $5, 0x10($3)
      addu       $4, $16, $0
      lui        $2, %hi(func_800AB134)
      lw         $3, 0x1B4($4)
      addiu      $2, $2, %lo(func_800AB134)
      sw         $2, 0x10($3)
      lui        $2, %hi(func_800AB470)
      lw         $3, 0x1B4($4)
      addiu      $2, $2, %lo(func_800AB470)
      jal        func_800ACAE0
       sw        $2, 0x48($3)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800ACB08

.globl func_800ACBC8
.ent func_800ACBC8
func_800ACBC8:
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
      addiu      $16, $16, -0x1
      lbu        $2, 0x0($17)
      addiu      $17, $17, 0x1
      bnez       $16, func_800ACC00
       sll       $19, $2, 8
      lw         $2, 0xC($18)
      jalr       $2
       addu      $4, $20, $0
      beqz       $2, func_800ACCD0
       addu      $2, $0, $0
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
.end func_800ACBC8

.globl func_800ACC00
.ent func_800ACC00
func_800ACC00:
      lw         $2, 0x4C($4)
      bnez       $2, .L800ACC18
       nop
      lw         $2, 0x12C($4)
      beqz       $2, .L800ACC20
       addiu     $2, $0, 0x3
  .L800ACC18:
      jr         $31
       addu      $2, $0, $0
  .L800ACC20:
      lw         $3, 0x24($4)
      bne        $3, $2, .L800ACC18
       nop
      lw         $5, 0x20($4)
      bne        $5, $3, .L800ACC18
       addiu     $2, $0, 0x2
      lw         $6, 0x28($4)
      bne        $6, $2, .L800ACC18
       nop
      lw         $2, 0x78($4)
      bne        $2, $5, .L800ACC18
       nop
      lw         $3, 0xD8($4)
      lw         $2, 0x8($3)
      bne        $2, $6, .L800ACC18
       addiu     $2, $0, 0x1
      lw         $5, 0x5C($3)
      bne        $5, $2, .L800ACC18
       nop
      lw         $6, 0xB0($3)
      bne        $6, $5, .L800ACC18
       nop
      lw         $2, 0xC($3)
      slti       $2, $2, 0x3
      beqz       $2, .L800ACC18
       nop
      lw         $5, 0x60($3)
      bne        $5, $6, .L800ACC18
       nop
      lw         $2, 0xB4($3)
      bne        $2, $5, .L800ACC18
       nop
      lw         $5, 0x24($3)
      lw         $2, 0x138($4)
      bne        $5, $2, .L800ACC18
       nop
      lw         $4, 0x78($3)
      bne        $4, $5, .L800ACC18
       nop
      lw         $2, 0xCC($3)
      bne        $2, $4, .L800ACC18
       addiu     $2, $0, 0x1
      jr         $31
       nop
.end func_800ACC00

.globl func_800ACCD0
.ent func_800ACCD0
func_800ACCD0:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $3, 0x10($17)
      addiu      $2, $0, 0xCA
      beq        $3, $2, .L800ACD1C
       addiu     $2, $0, 0x11
      lw         $3, 0x0($17)
      sw         $2, 0x14($3)
      lw         $3, 0x0($17)
      lw         $2, 0x10($17)
      sw         $2, 0x18($3)
      lw         $2, 0x0($17)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800ACD1C:
      lw         $3, 0x2C($17)
      lw         $4, 0x30($17)
      sll        $2, $3, 3
      sltu       $2, $4, $2
      bnez       $2, .L800ACD60
       sll       $2, $3, 2
      lw         $4, 0x18($17)
      jal        func_800B82C0
       addiu     $5, $0, 0x8
      lw         $4, 0x1C($17)
      addiu      $5, $0, 0x8
      jal        func_800B82C0
       sw        $2, 0x70($17)
      sw         $2, 0x74($17)
      addiu      $2, $0, 0x1
      j          .L800ACDE4
       sw        $2, 0x138($17)
  .L800ACD60:
      sltu       $2, $4, $2
      bnez       $2, .L800ACD98
       sll       $2, $3, 1
      lw         $4, 0x18($17)
      jal        func_800B82C0
       addiu     $5, $0, 0x4
      lw         $4, 0x1C($17)
      addiu      $5, $0, 0x4
      jal        func_800B82C0
       sw        $2, 0x70($17)
      sw         $2, 0x74($17)
      addiu      $2, $0, 0x2
      j          .L800ACDE4
       sw        $2, 0x138($17)
  .L800ACD98:
      sltu       $2, $4, $2
      bnez       $2, .L800ACDD0
       addiu     $3, $0, 0x8
      lw         $4, 0x18($17)
      jal        func_800B82C0
       addiu     $5, $0, 0x2
      lw         $4, 0x1C($17)
      addiu      $5, $0, 0x2
      jal        func_800B82C0
       sw        $2, 0x70($17)
      sw         $2, 0x74($17)
      addiu      $2, $0, 0x4
      j          .L800ACDE4
       sw        $2, 0x138($17)
  .L800ACDD0:
      lw         $2, 0x18($17)
      lw         $4, 0x1C($17)
      sw         $3, 0x138($17)
      sw         $2, 0x70($17)
      sw         $4, 0x74($17)
  .L800ACDE4:
      lw         $2, 0x20($17)
      lw         $3, 0xD8($17)
      blez       $2, .L800ACEC0
       addu      $18, $0, $0
      addiu      $6, $3, 0x24
  .L800ACDF8:
      lw         $4, 0x138($17)
      slti       $2, $4, 0x8
      beqz       $2, .L800ACEA0
       addu      $7, $4, $0
      lw         $11, -0x1C($6)
      mult       $11, $4
      mflo       $2
      lw         $8, 0x130($17)
      nop
      mult       $8, $4
      sll        $2, $2, 1
      mflo       $3
      slt        $2, $3, $2
      bnel       $2, $0, .L800ACEA4
       addiu     $18, $18, 0x1
      lw         $10, -0x18($6)
      lw         $9, 0x134($17)
      mult       $10, $4
  .L800ACE40:
      mflo       $13
      nop
      nop
      mult       $9, $7
      sll        $2, $13, 1
      mflo       $3
      slt        $2, $3, $2
      bnez       $2, .L800ACEA0
       addu      $5, $7, $0
      sll        $4, $4, 1
      slti       $2, $4, 0x8
      mult       $11, $4
      beqz       $2, .L800ACEA0
       nop
      mflo       $13
      nop
      nop
      mult       $8, $5
      sll        $2, $13, 1
      mflo       $3
      slt        $2, $3, $2
      mult       $10, $4
      beqz       $2, .L800ACE40
       nop
  .L800ACEA0:
      addiu      $18, $18, 0x1
  .L800ACEA4:
      sw         $4, 0x0($6)
      lw         $2, 0x20($17)
      slt        $2, $18, $2
      bnez       $2, .L800ACDF8
       addiu     $6, $6, 0x54
      lw         $2, 0x20($17)
      lw         $3, 0xD8($17)
  .L800ACEC0:
      blez       $2, .L800ACF40
       addu      $18, $0, $0
      addiu      $16, $3, 0x2C
  .L800ACECC:
      lw         $3, -0x24($16)
      lw         $2, -0x8($16)
      mult       $3, $2
      mflo       $3
      lw         $4, 0x18($17)
      nop
      mult       $4, $3
      lw         $5, 0x130($17)
      mflo       $4
      jal        func_800B82C0
       sll       $5, $5, 3
      lw         $4, -0x20($16)
      lw         $3, -0x8($16)
      mult       $4, $3
      sw         $2, -0x4($16)
      mflo       $3
      lw         $4, 0x1C($17)
      nop
      mult       $4, $3
      lw         $5, 0x134($17)
      addiu      $18, $18, 0x1
      mflo       $4
      jal        func_800B82C0
       sll       $5, $5, 3
      sw         $2, 0x0($16)
      lw         $2, 0x20($17)
      slt        $2, $18, $2
      bnez       $2, .L800ACECC
       addiu     $16, $16, 0x54
  .L800ACF40:
      lw         $2, 0x28($17)
      addiu      $3, $2, -0x1
      sltiu      $2, $3, 0x5
      beqz       $2, .L800ACF84
       lui       $2, %hi(jtbl_800F56C0)
      addiu      $2, $2, %lo(jtbl_800F56C0)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800ACF6C
.L800ACF6C:
      j          .L800ACF88
       addiu     $2, $0, 0x1
  .globl .L800ACF74
.L800ACF74:
      j          .L800ACF88
       addiu     $2, $0, 0x3
  .globl .L800ACF7C
.L800ACF7C:
      j          .L800ACF88
       addiu     $2, $0, 0x4
  .L800ACF84:
      lw         $2, 0x20($17)
  .L800ACF88:
      sw         $2, 0x78($17)
      lw         $2, 0x54($17)
      bnez       $2, .L800ACF9C
       addiu     $3, $0, 0x1
      lw         $3, 0x78($17)
  .L800ACF9C:
      sw         $3, 0x7C($17)
      jal        func_800ACC00
       addu      $4, $17, $0
      beqz       $2, .L800ACFBC
       addiu     $2, $0, 0x1
      lw         $2, 0x134($17)
      j          .L800ACFC0
       sw        $2, 0x80($17)
  .L800ACFBC:
      sw         $2, 0x80($17)
  .L800ACFC0:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800ACCD0

.globl func_800ACFD8
.ent func_800ACFD8
func_800ACFD8:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($17)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x580
      addiu      $16, $2, 0x100
      addiu      $4, $16, -0x100
      addu       $5, $0, $0
      addiu      $6, $0, 0x100
      jal        func_80016140
       sw        $16, 0x140($17)
      addiu      $3, $0, 0xFF
      addu       $2, $16, $3
  .L800AD020:
      sb         $3, 0x0($2)
      addiu      $3, $3, -0x1
      bgez       $3, .L800AD020
       addiu     $2, $2, -0x1
      addiu      $16, $16, 0x80
      addiu      $3, $0, 0x80
      addiu      $4, $0, 0xFF
      addu       $2, $16, $3
  .L800AD040:
      sb         $4, 0x0($2)
      addiu      $3, $3, 0x1
      slti       $2, $3, 0x200
      bnez       $2, .L800AD040
       addu      $2, $16, $3
      addiu      $4, $16, 0x200
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x180
      lw         $4, 0x140($17)
      addiu      $3, $16, 0x380
      or         $2, $4, $3
      andi       $2, $2, 0x3
      beqz       $2, .L800AD0D0
       addiu     $2, $4, 0x80
  .L800AD07C:
      lwl        $7, 0x0($4)
      lwr        $7, 0x3($4)
      lwl        $8, 0x4($4)
      lwr        $8, 0x7($4)
      lwl        $9, 0x8($4)
      lwr        $9, 0xB($4)
      lwl        $10, 0xC($4)
      lwr        $10, 0xF($4)
      swl        $7, 0x0($3)
      swr        $7, 0x3($3)
      swl        $8, 0x4($3)
      swr        $8, 0x7($3)
      swl        $9, 0x8($3)
      swr        $9, 0xB($3)
      swl        $10, 0xC($3)
      swr        $10, 0xF($3)
      addiu      $4, $4, 0x10
      bne        $4, $2, .L800AD07C
       addiu     $3, $3, 0x10
      j          .L800AD0FC
       nop
  .L800AD0D0:
      lw         $7, 0x0($4)
      lw         $8, 0x4($4)
      lw         $9, 0x8($4)
      lw         $10, 0xC($4)
      sw         $7, 0x0($3)
      sw         $8, 0x4($3)
      sw         $9, 0x8($3)
      sw         $10, 0xC($3)
      addiu      $4, $4, 0x10
      bne        $4, $2, .L800AD0D0
       addiu     $3, $3, 0x10
  .L800AD0FC:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800ACFD8

.globl func_800AD110
.ent func_800AD110
func_800AD110:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $17, 0x1A0($16)
      jal        func_800ACCD0
       nop
      jal        func_800ACFD8
       addu      $4, $16, $0
      addu       $4, $16, $0
      jal        func_800ACC00
       sw        $0, 0xC($17)
      sw         $2, 0x10($17)
      sw         $0, 0x14($17)
      sw         $0, 0x18($17)
      lw         $2, 0x54($16)
      beql       $2, $0, .L800AD16C
       sw        $0, 0x64($16)
      lw         $2, 0x40($16)
      bnez       $2, .L800AD174
       nop
      sw         $0, 0x64($16)
  .L800AD16C:
      sw         $0, 0x68($16)
      sw         $0, 0x6C($16)
  .L800AD174:
      lw         $2, 0x54($16)
      beqz       $2, .L800AD238
       nop
      lw         $2, 0x44($16)
      beqz       $2, .L800AD1A4
       addiu     $2, $0, 0x2C
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
  .L800AD1A4:
      lw         $3, 0x78($16)
      addiu      $2, $0, 0x3
      beq        $3, $2, .L800AD1C8
       addiu     $2, $0, 0x1
      sw         $2, 0x64($16)
      sw         $0, 0x68($16)
      sw         $0, 0x6C($16)
      j          .L800AD1F4
       sw        $0, 0x88($16)
  .L800AD1C8:
      lw         $2, 0x88($16)
      beqz       $2, .L800AD1DC
       addiu     $2, $0, 0x1
      j          .L800AD1F4
       sw        $2, 0x68($16)
  .L800AD1DC:
      lw         $2, 0x5C($16)
      beqz       $2, .L800AD1F0
       addiu     $2, $0, 0x1
      j          .L800AD1F4
       sw        $2, 0x6C($16)
  .L800AD1F0:
      sw         $2, 0x64($16)
  .L800AD1F4:
      lw         $2, 0x64($16)
      beqz       $2, .L800AD210
       nop
      jal        func_800B6818
       addu      $4, $16, $0
      lw         $2, 0x1C8($16)
      sw         $2, 0x14($17)
  .L800AD210:
      lw         $2, 0x6C($16)
      bnez       $2, .L800AD228
       nop
      lw         $2, 0x68($16)
      beqz       $2, .L800AD238
       nop
  .L800AD228:
      jal        func_800B80BC
       addu      $4, $16, $0
      lw         $2, 0x1C8($16)
      sw         $2, 0x18($17)
  .L800AD238:
      lw         $2, 0x44($16)
      bnez       $2, .L800AD27C
       nop
      lw         $2, 0x10($17)
      beqz       $2, .L800AD260
       nop
      jal        func_800B13A8
       addu      $4, $16, $0
      j          .L800AD270
       nop
  .L800AD260:
      jal        func_800AEF78
       addu      $4, $16, $0
      jal        func_800B3144
       addu      $4, $16, $0
  .L800AD270:
      lw         $5, 0x6C($16)
      jal        func_800B29B8
       addu      $4, $16, $0
  .L800AD27C:
      jal        func_800AF410
       addu      $4, $16, $0
      lw         $2, 0xE0($16)
      beqz       $2, .L800AD2B0
       addiu     $2, $0, 0x1
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      j          .L800AD2D4
       nop
  .L800AD2B0:
      lw         $2, 0xDC($16)
      beqz       $2, .L800AD2CC
       nop
      jal        func_800B24C4
       addu      $4, $16, $0
      j          .L800AD2D4
       nop
  .L800AD2CC:
      jal        func_800B0190
       addu      $4, $16, $0
  .L800AD2D4:
      lw         $2, 0x1B0($16)
      lw         $2, 0x10($2)
      bnez       $2, .L800AD2F0
       addu      $5, $0, $0
      lw         $2, 0x40($16)
      beqz       $2, .L800AD2F4
       nop
  .L800AD2F0:
      addiu      $5, $0, 0x1
  .L800AD2F4:
      jal        func_800AE960
       addu      $4, $16, $0
      lw         $2, 0x44($16)
      bnez       $2, .L800AD310
       addu      $4, $16, $0
      jal        func_800B0AE4
       addu      $5, $0, $0
  .L800AD310:
      lw         $2, 0x4($16)
      lw         $2, 0x18($2)
      jalr       $2
       addu      $4, $16, $0
      lw         $2, 0x1B0($16)
      lw         $2, 0x8($2)
      jalr       $2
       addu      $4, $16, $0
      lw         $2, 0x8($16)
      beqz       $2, .L800AD3C4
       nop
      lw         $2, 0x40($16)
      bnez       $2, .L800AD3C4
       nop
      lw         $2, 0x1B0($16)
      lw         $2, 0x10($2)
      beqz       $2, .L800AD3C4
       nop
      lw         $2, 0xDC($16)
      beqz       $2, .L800AD378
       nop
      lw         $3, 0x20($16)
      sll        $2, $3, 1
      addu       $2, $2, $3
      j          .L800AD37C
       addiu     $3, $2, 0x2
  .L800AD378:
      lw         $3, 0x20($16)
  .L800AD37C:
      lw         $2, 0x8($16)
      sw         $0, 0x4($2)
      lw         $2, 0x13C($16)
      mult       $2, $3
      lw         $2, 0x8($16)
      mflo       $6
      sw         $6, 0x8($2)
      lw         $2, 0x8($16)
      sw         $0, 0xC($2)
      lw         $2, 0x6C($16)
      lw         $3, 0x8($16)
      beqz       $2, .L800AD3B4
       addiu     $4, $0, 0x2
      addiu      $4, $0, 0x3
  .L800AD3B4:
      sw         $4, 0x10($3)
      lw         $2, 0xC($17)
      addiu      $2, $2, 0x1
      sw         $2, 0xC($17)
  .L800AD3C4:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800AD110

.globl func_800AD3D8
.ent func_800AD3D8
func_800AD3D8:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $17, 0x1A0($16)
      lw         $2, 0x8($17)
      beqz       $2, .L800AD438
       nop
      sw         $0, 0x8($17)
      lw         $2, 0x1C8($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $5, $0, $0
      lw         $2, 0x1AC($16)
      addu       $4, $16, $0
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $5, $0, 0x2
      lw         $2, 0x1A4($16)
      addu       $4, $16, $0
      lw         $2, 0x0($2)
      j          .L800AD554
       addiu     $5, $0, 0x2
  .L800AD438:
      lw         $2, 0x54($16)
      beqz       $2, .L800AD4AC
       nop
      lw         $2, 0x88($16)
      bnez       $2, .L800AD4AC
       nop
      lw         $2, 0x5C($16)
      beqz       $2, .L800AD47C
       nop
      lw         $2, 0x6C($16)
      beqz       $2, .L800AD47C
       nop
      lw         $2, 0x18($17)
      sw         $2, 0x1C8($16)
      addiu      $2, $0, 0x1
      j          .L800AD4AC
       sw        $2, 0x8($17)
  .L800AD47C:
      lw         $2, 0x64($16)
      beqz       $2, .L800AD494
       addiu     $2, $0, 0x2B
      lw         $2, 0x14($17)
      j          .L800AD4AC
       sw        $2, 0x1C8($16)
  .L800AD494:
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
  .L800AD4AC:
      lw         $2, 0x1BC($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      lw         $2, 0x1A8($16)
      lw         $2, 0x8($2)
      jalr       $2
       addu      $4, $16, $0
      lw         $2, 0x44($16)
      bnez       $2, .L800AD55C
       nop
      lw         $2, 0x10($17)
      bnez       $2, .L800AD4F4
       nop
      lw         $2, 0x1C4($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
  .L800AD4F4:
      lw         $2, 0x1C0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      lw         $2, 0x54($16)
      beqz       $2, .L800AD524
       nop
      lw         $2, 0x1C8($16)
      lw         $5, 0x8($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
  .L800AD524:
      lw         $2, 0x8($17)
      lw         $3, 0x1AC($16)
      beqz       $2, .L800AD538
       addu      $5, $0, $0
      addiu      $5, $0, 0x3
  .L800AD538:
      lw         $2, 0x0($3)
      jalr       $2
       addu      $4, $16, $0
      lw         $2, 0x1A4($16)
      addu       $4, $16, $0
      lw         $2, 0x0($2)
      addu       $5, $0, $0
  .L800AD554:
      jalr       $2
       nop
  .L800AD55C:
      lw         $3, 0x8($16)
      beqz       $3, .L800AD5C4
       nop
      lw         $2, 0xC($17)
      sw         $2, 0xC($3)
      lw         $4, 0x8($16)
      lw         $2, 0x8($17)
      lw         $3, 0xC($17)
      bnez       $2, .L800AD588
       addiu     $2, $3, 0x2
      addiu      $2, $3, 0x1
  .L800AD588:
      sw         $2, 0x10($4)
      lw         $2, 0x40($16)
      beqz       $2, .L800AD5C4
       nop
      lw         $2, 0x1B0($16)
      lw         $2, 0x14($2)
      bnez       $2, .L800AD5C4
       nop
      lw         $4, 0x8($16)
      lw         $2, 0x6C($16)
      lw         $3, 0x10($4)
      bnez       $2, .L800AD5C0
       addiu     $2, $3, 0x2
      addiu      $2, $3, 0x1
  .L800AD5C0:
      sw         $2, 0x10($4)
  .L800AD5C4:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800AD3D8

.globl func_800AD5D8
.ent func_800AD5D8
func_800AD5D8:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x54($4)
      lw         $16, 0x1A0($4)
      beqz       $2, .L800AD604
       nop
      lw         $2, 0x1C8($4)
      lw         $2, 0x8($2)
      jalr       $2
       nop
  .L800AD604:
      lw         $2, 0xC($16)
      addiu      $2, $2, 0x1
      sw         $2, 0xC($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800AD5D8

.globl func_800AD620
.ent func_800AD620
func_800AD620:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x4($16)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x1C
      addu       $4, $16, $0
      lui        $3, %hi(func_800AD3D8)
      addiu      $3, $3, %lo(func_800AD3D8)
      sw         $2, 0x1A0($4)
      sw         $3, 0x0($2)
      lui        $3, %hi(func_800AD5D8)
      addiu      $3, $3, %lo(func_800AD5D8)
      sw         $3, 0x4($2)
      jal        func_800AD110
       sw        $0, 0x8($2)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800AD620

.globl func_800AD67C
.ent func_800AD67C
func_800AD67C:
      addiu      $4, $4, 0x1
.end func_800AD67C

.globl func_800AD680
.ent func_800AD680
func_800AD680:
      lw         $2, 0x144($4)
      lw         $5, 0x1A8($4)
      slti       $2, $2, 0x2
      beqz       $2, .L800AD6C4
       addiu     $2, $0, 0x1
      lw         $2, 0x13C($4)
      lw         $3, 0x94($4)
      addiu      $2, $2, -0x1
      sltu       $3, $3, $2
      beqz       $3, .L800AD6BC
       nop
      lw         $2, 0x148($4)
      lw         $2, 0xC($2)
      j          .L800AD6C8
       sw        $2, 0x1C($5)
  .L800AD6BC:
      lw         $2, 0x148($4)
      lw         $2, 0x48($2)
  .L800AD6C4:
      sw         $2, 0x1C($5)
  .L800AD6C8:
      sw         $0, 0x14($5)
      jr         $31
       sw        $0, 0x18($5)
.end func_800AD680

.globl func_800AD6D4
.ent func_800AD6D4
func_800AD6D4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800AD680
       sw        $0, 0x94($4)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800AD6D4

.globl func_800AD6F0
.ent func_800AD6F0
func_800AD6F0:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $16, 0x1A8($17)
      lw         $2, 0x10($16)
      beql       $2, $0, .L800AD748
       sw        $0, 0x9C($17)
      lw         $2, 0x50($17)
      beqz       $2, .L800AD73C
       lui       $2, %hi(func_800ADC6C)
      jal        func_800ADEE0
       nop
      beqz       $2, .L800AD738
       lui       $2, %hi(func_800AE008)
      j          .L800AD740
       addiu     $2, $2, %lo(func_800AE008)
  .L800AD738:
      lui        $2, %hi(func_800ADC6C)
  .L800AD73C:
      addiu      $2, $2, %lo(func_800ADC6C)
  .L800AD740:
      sw         $2, 0xC($16)
      sw         $0, 0x9C($17)
  .L800AD748:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800AD6F0

.globl func_800AD75C
.ent func_800AD75C
func_800AD75C:
      addiu      $29, $29, -0x68
      addu       $8, $4, $0
      sw         $31, 0x64($29)
      sw         $30, 0x60($29)
      sw         $23, 0x5C($29)
      sw         $22, 0x58($29)
      sw         $21, 0x54($29)
      sw         $20, 0x50($29)
      sw         $19, 0x4C($29)
      sw         $18, 0x48($29)
      sw         $17, 0x44($29)
      sw         $16, 0x40($29)
      sw         $5, 0x6C($29)
      lw         $9, 0x1A8($8)
      lw         $2, 0x158($8)
      lw         $11, 0x18($9)
      addiu      $2, $2, -0x1
      sw         $2, 0x18($29)
      lw         $3, 0x13C($8)
      lw         $2, 0x1C($9)
      addiu      $3, $3, -0x1
      slt        $2, $11, $2
      beqz       $2, .L800AD9B4
       sw        $3, 0x1C($29)
  .L800AD7BC:
      lw         $30, 0x14($9)
      lw         $15, 0x18($29)
      sltu       $2, $15, $30
      bnez       $2, .L800AD9A0
       nop
  .L800AD7D0:
      lw         $4, 0x20($9)
      addiu      $5, $0, 0x500
      sw         $8, 0x20($29)
      sw         $9, 0x24($29)
      jal        func_800B83D4
       sw        $11, 0x2C($29)
      lw         $8, 0x20($29)
      lw         $9, 0x24($29)
      lw         $2, 0x1B8($8)
      addu       $4, $8, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $9, 0x20
      lw         $8, 0x20($29)
      lw         $9, 0x24($29)
      lw         $11, 0x2C($29)
      beqz       $2, .L800AD9F4
       addu      $22, $0, $0
      lw         $2, 0x144($8)
      blez       $2, .L800AD98C
       addu      $23, $22, $0
      lw         $13, 0x6C($29)
      addu       $12, $8, $0
  .L800AD82C:
      lw         $17, 0x148($12)
      lw         $2, 0x30($17)
      bnez       $2, .L800AD848
       nop
      lw         $2, 0x3C($17)
      j          .L800AD974
       addu      $22, $22, $2
  .L800AD848:
      lw         $2, 0x4($17)
      lw         $3, 0x1BC($8)
      lw         $15, 0x18($29)
      sll        $2, $2, 2
      addu       $3, $3, $2
      sltu       $2, $30, $15
      lw         $14, 0x4($3)
      beqz       $2, .L800AD878
       nop
      lw         $21, 0x34($17)
      j          .L800AD87C
       nop
  .L800AD878:
      lw         $21, 0x44($17)
  .L800AD87C:
      lw         $2, 0x24($17)
      mult       $11, $2
      lw         $3, 0x0($13)
      mflo       $10
      sll        $2, $10, 2
      addu       $20, $3, $2
      lw         $2, 0x40($17)
      mult       $30, $2
      lw         $3, 0x38($17)
      mflo       $10
      blez       $3, .L800AD974
       addu      $19, $0, $0
  .L800AD8AC:
      lw         $2, 0x94($8)
      lw         $15, 0x1C($29)
      sltu       $2, $2, $15
      bnez       $2, .L800AD8D4
       addu      $18, $10, $0
      lw         $3, 0x48($17)
      addu       $2, $11, $19
      slt        $2, $2, $3
      beql       $2, $0, .L800AD954
       addiu     $19, $19, 0x1
  .L800AD8D4:
      blez       $21, .L800AD950
       addu      $16, $0, $0
      addu       $4, $8, $0
  .L800AD8E0:
      addu       $5, $17, $0
      addu       $2, $22, $16
      sll        $2, $2, 2
      addu       $2, $9, $2
      sw         $18, 0x10($29)
      lw         $6, 0x20($2)
      addu       $7, $20, $0
      sw         $8, 0x20($29)
      sw         $9, 0x24($29)
      sw         $10, 0x28($29)
      sw         $11, 0x2C($29)
      sw         $12, 0x30($29)
      sw         $13, 0x34($29)
      jalr       $14
       sw        $14, 0x38($29)
      addiu      $16, $16, 0x1
      lw         $2, 0x24($17)
      lw         $8, 0x20($29)
      lw         $9, 0x24($29)
      lw         $10, 0x28($29)
      lw         $11, 0x2C($29)
      lw         $12, 0x30($29)
      lw         $13, 0x34($29)
      lw         $14, 0x38($29)
      addu       $18, $18, $2
      slt        $2, $16, $21
      bnez       $2, .L800AD8E0
       addu      $4, $8, $0
  .L800AD950:
      addiu      $19, $19, 0x1
  .L800AD954:
      lw         $2, 0x34($17)
      lw         $3, 0x24($17)
      addu       $22, $22, $2
      sll        $3, $3, 2
      lw         $2, 0x38($17)
      slt        $2, $19, $2
      bnez       $2, .L800AD8AC
       addu      $20, $20, $3
  .L800AD974:
      addiu      $13, $13, 0x4
      lw         $2, 0x144($8)
      addiu      $23, $23, 0x1
      slt        $2, $23, $2
      bnez       $2, .L800AD82C
       addiu     $12, $12, 0x4
  .L800AD98C:
      lw         $15, 0x18($29)
      addiu      $30, $30, 0x1
      sltu       $2, $15, $30
      beqz       $2, .L800AD7D0
       nop
  .L800AD9A0:
      lw         $2, 0x1C($9)
      addiu      $11, $11, 0x1
      slt        $2, $11, $2
      bnez       $2, .L800AD7BC
       sw        $0, 0x14($9)
  .L800AD9B4:
      lw         $2, 0x9C($8)
      addiu      $2, $2, 0x1
      sw         $2, 0x9C($8)
      lw         $2, 0x94($8)
      lw         $3, 0x13C($8)
      addiu      $2, $2, 0x1
      sw         $2, 0x94($8)
      sltu       $2, $2, $3
      bnez       $2, .L800ADA04
       nop
      lw         $2, 0x1B0($8)
      lw         $2, 0xC($2)
      jalr       $2
       addu      $4, $8, $0
      j          .L800ADA10
       addiu     $2, $0, 0x4
  .L800AD9F4:
      addu       $2, $0, $0
      sw         $11, 0x18($9)
      j          .L800ADA10
       sw        $30, 0x14($9)
  .L800ADA04:
      jal        func_800AD680
       addu      $4, $8, $0
      addiu      $2, $0, 0x3
  .L800ADA10:
      lw         $31, 0x64($29)
      lw         $30, 0x60($29)
      lw         $23, 0x5C($29)
      lw         $22, 0x58($29)
      lw         $21, 0x54($29)
      lw         $20, 0x50($29)
      lw         $19, 0x4C($29)
      lw         $18, 0x48($29)
      lw         $17, 0x44($29)
      lw         $16, 0x40($29)
      jr         $31
       addiu     $29, $29, 0x68
.end func_800AD75C

.globl func_800ADA40
.ent func_800ADA40
func_800ADA40:
      jr         $31
       addu      $2, $0, $0
.end func_800ADA40

.globl func_800ADA48
.ent func_800ADA48
func_800ADA48:
      addiu      $29, $29, -0x48
      sw         $18, 0x30($29)
      addu       $18, $4, $0
      sw         $16, 0x28($29)
      sw         $31, 0x40($29)
      sw         $21, 0x3C($29)
      sw         $20, 0x38($29)
      sw         $19, 0x34($29)
      sw         $17, 0x2C($29)
      lw         $2, 0x144($18)
      lw         $19, 0x1A8($18)
      blez       $2, .L800ADAE0
       addu      $16, $0, $0
      addiu      $21, $0, 0x1
      addiu      $20, $29, 0x18
      addu       $17, $18, $0
  .L800ADA88:
      addu       $4, $18, $0
      lw         $8, 0x148($17)
      addiu      $17, $17, 0x4
      lw         $7, 0x4($18)
      lw         $3, 0x94($18)
      lw         $2, 0x4($8)
      lw         $6, 0xC($8)
      sw         $21, 0x10($29)
      sll        $2, $2, 2
      mult       $3, $6
      addu       $2, $19, $2
      lw         $5, 0x48($2)
      lw         $2, 0x20($7)
      lw         $7, 0xC($8)
      mflo       $6
      jalr       $2
       addiu     $16, $16, 0x1
      sw         $2, 0x0($20)
      lw         $2, 0x144($18)
      slt        $2, $16, $2
      bnez       $2, .L800ADA88
       addiu     $20, $20, 0x4
  .L800ADAE0:
      lw         $20, 0x18($19)
      lw         $2, 0x1C($19)
      slt        $2, $20, $2
      beqz       $2, .L800ADBFC
       addiu     $21, $29, 0x18
  .L800ADAF4:
      lw         $17, 0x14($19)
      lw         $2, 0x158($18)
      sltu       $2, $17, $2
      beqz       $2, .L800ADBE8
       addu      $7, $0, $0
  .L800ADB08:
      lw         $2, 0x144($18)
      blez       $2, .L800ADBB8
       addu      $16, $7, $0
      addu       $10, $21, $0
      addu       $9, $18, $0
  .L800ADB1C:
      lw         $8, 0x148($9)
      lw         $2, 0x34($8)
      mult       $17, $2
      lw         $3, 0x38($8)
      mflo       $11
      blez       $3, .L800ADBA0
       addu      $6, $0, $0
      addu       $12, $10, $0
      sll        $11, $11, 7
      addu       $5, $0, $0
  .L800ADB44:
      addu       $2, $6, $20
      lw         $3, 0x0($12)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      lw         $3, 0x34($8)
      blez       $3, .L800ADB8C
       addu      $4, $2, $11
      sll        $2, $7, 2
      addu       $3, $2, $19
  .L800ADB6C:
      sw         $4, 0x20($3)
      addiu      $4, $4, 0x80
      addiu      $3, $3, 0x4
      lw         $2, 0x34($8)
      addiu      $5, $5, 0x1
      slt        $2, $5, $2
      bnez       $2, .L800ADB6C
       addiu     $7, $7, 0x1
  .L800ADB8C:
      lw         $2, 0x38($8)
      addiu      $6, $6, 0x1
      slt        $2, $6, $2
      bnel       $2, $0, .L800ADB44
       addu      $5, $0, $0
  .L800ADBA0:
      addiu      $10, $10, 0x4
      lw         $2, 0x144($18)
      addiu      $16, $16, 0x1
      slt        $2, $16, $2
      bnez       $2, .L800ADB1C
       addiu     $9, $9, 0x4
  .L800ADBB8:
      lw         $2, 0x1B8($18)
      addu       $4, $18, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $19, 0x20
      beqz       $2, .L800ADC30
       addu      $2, $0, $0
      lw         $2, 0x158($18)
      addiu      $17, $17, 0x1
      sltu       $2, $17, $2
      bnez       $2, .L800ADB08
       addu      $7, $0, $0
  .L800ADBE8:
      lw         $2, 0x1C($19)
      addiu      $20, $20, 0x1
      slt        $2, $20, $2
      bnez       $2, .L800ADAF4
       sw        $0, 0x14($19)
  .L800ADBFC:
      lw         $2, 0x94($18)
      lw         $3, 0x13C($18)
      addiu      $2, $2, 0x1
      sw         $2, 0x94($18)
      sltu       $2, $2, $3
      bnez       $2, .L800ADC3C
       nop
      lw         $2, 0x1B0($18)
      lw         $2, 0xC($2)
      jalr       $2
       addu      $4, $18, $0
      j          .L800ADC48
       addiu     $2, $0, 0x4
  .L800ADC30:
      sw         $20, 0x18($19)
      j          .L800ADC48
       sw        $17, 0x14($19)
  .L800ADC3C:
      jal        func_800AD680
       addu      $4, $18, $0
      addiu      $2, $0, 0x3
  .L800ADC48:
      lw         $31, 0x40($29)
      lw         $21, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_800ADA48

.globl func_800ADC6C
.ent func_800ADC6C
func_800ADC6C:
      addiu      $29, $29, -0x60
      sw         $30, 0x58($29)
      addu       $30, $4, $0
      sw         $17, 0x3C($29)
      sw         $31, 0x5C($29)
      sw         $23, 0x54($29)
      sw         $22, 0x50($29)
      sw         $21, 0x4C($29)
      sw         $20, 0x48($29)
      sw         $19, 0x44($29)
      sw         $18, 0x40($29)
      sw         $16, 0x38($29)
      lw         $2, 0x13C($30)
      lw         $4, 0x90($30)
      lw         $3, 0x98($30)
      addiu      $2, $2, -0x1
      sw         $2, 0x18($29)
      slt        $2, $4, $3
      lw         $16, 0x1A8($30)
      bnez       $2, .L800ADCDC
       addu      $17, $5, $0
      bnel       $4, $3, .L800ADD14
       sw        $0, 0x1C($29)
  .L800ADCC8:
      lw         $3, 0x94($30)
      lw         $2, 0x9C($30)
      sltu       $2, $2, $3
      bnel       $2, $0, .L800ADD14
       sw        $0, 0x1C($29)
  .L800ADCDC:
      lw         $2, 0x1B0($30)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $30, $0
      beqz       $2, .L800ADEB0
       addu      $2, $0, $0
      lw         $4, 0x90($30)
      lw         $3, 0x98($30)
      slt        $2, $4, $3
      bnez       $2, .L800ADCDC
       nop
      beq        $4, $3, .L800ADCC8
       nop
      sw         $0, 0x1C($29)
  .L800ADD14:
      lw         $2, 0x20($30)
      lw         $8, 0xD8($30)
      blez       $2, .L800ADE90
       addiu     $19, $8, 0x24
      sw         $17, 0x20($29)
      sw         $0, 0x24($29)
      sw         $16, 0x28($29)
  .L800ADD30:
      lw         $2, 0xC($19)
      beqz       $2, .L800ADE4C
       addu      $4, $30, $0
      lw         $3, 0x4($30)
      lw         $2, 0x9C($30)
      lw         $6, -0x18($19)
      lw         $10, 0x28($29)
      sw         $0, 0x10($29)
      lw         $7, -0x18($19)
      mult       $2, $6
      lw         $5, 0x48($10)
      lw         $2, 0x20($3)
      mflo       $6
      jalr       $2
       sw        $8, 0x30($29)
      lw         $3, 0x9C($30)
      lw         $10, 0x18($29)
      lw         $8, 0x30($29)
      sltu       $3, $3, $10
      beqz       $3, .L800ADD90
       addu      $4, $2, $0
      lw         $23, -0x18($19)
      j          .L800ADDB4
       nop
  .L800ADD90:
      lw         $2, -0x4($19)
      lw         $3, -0x18($19)
      divu       $zero, $2, $3
      bnez       $3, .L800ADDA8
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800ADDA8:
      mfhi       $23
      beql       $23, $0, .L800ADDB4
       addu      $23, $3, $0
  .L800ADDB4:
      lw         $10, 0x20($29)
      lw         $2, 0x1BC($30)
      lw         $22, 0x0($10)
      lw         $10, 0x24($29)
      addu       $2, $2, $10
      lw         $9, 0x4($2)
      blez       $23, .L800ADE4C
       addu      $21, $0, $0
      addu       $20, $4, $0
  .L800ADDD8:
      addu       $18, $0, $0
      lw         $2, -0x8($19)
      lw         $17, 0x0($20)
      beqz       $2, .L800ADE30
       addu      $16, $18, $0
  .L800ADDEC:
      addu       $4, $30, $0
      addu       $5, $8, $0
      addu       $6, $17, $0
      addu       $7, $22, $0
      sw         $18, 0x10($29)
      sw         $8, 0x30($29)
      jalr       $9
       sw        $9, 0x34($29)
      addiu      $17, $17, 0x80
      addiu      $16, $16, 0x1
      lw         $3, 0x0($19)
      lw         $2, -0x8($19)
      lw         $8, 0x30($29)
      lw         $9, 0x34($29)
      sltu       $2, $16, $2
      bnez       $2, .L800ADDEC
       addu      $18, $18, $3
  .L800ADE30:
      lw         $2, 0x0($19)
      addiu      $21, $21, 0x1
      sll        $2, $2, 2
      addu       $22, $22, $2
      slt        $2, $21, $23
      bnez       $2, .L800ADDD8
       addiu     $20, $20, 0x4
  .L800ADE4C:
      lw         $10, 0x20($29)
      addiu      $10, $10, 0x4
      sw         $10, 0x20($29)
      lw         $10, 0x24($29)
      addiu      $10, $10, 0x4
      sw         $10, 0x24($29)
      lw         $10, 0x28($29)
      addiu      $10, $10, 0x4
      sw         $10, 0x28($29)
      lw         $10, 0x1C($29)
      addiu      $19, $19, 0x54
      addiu      $10, $10, 0x1
      sw         $10, 0x1C($29)
      lw         $2, 0x20($30)
      slt        $2, $10, $2
      bnez       $2, .L800ADD30
       addiu     $8, $8, 0x54
  .L800ADE90:
      lw         $3, 0x9C($30)
      lw         $4, 0x13C($30)
      addiu      $3, $3, 0x1
      sw         $3, 0x9C($30)
      sltu       $3, $3, $4
      bnez       $3, .L800ADEB0
       addiu     $2, $0, 0x3
      addiu      $2, $0, 0x4
  .L800ADEB0:
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
.end func_800ADC6C

.globl func_800ADEE0
.ent func_800ADEE0
func_800ADEE0:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      sw         $31, 0x1C($29)
      sw         $16, 0x10($29)
      lw         $2, 0xDC($17)
      lw         $16, 0x1A8($17)
      beqz       $2, .L800ADF14
       addu      $18, $0, $0
      lw         $2, 0xA0($17)
      bnez       $2, .L800ADF1C
       nop
  .L800ADF14:
      j          .L800ADFF0
       addu      $2, $0, $0
  .L800ADF1C:
      lw         $2, 0x70($16)
      bnez       $2, .L800ADF4C
       addu      $4, $17, $0
      lw         $2, 0x20($17)
      sll        $6, $2, 1
      addu       $6, $6, $2
      lw         $2, 0x4($17)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       sll       $6, $6, 3
      sw         $2, 0x70($16)
  .L800ADF4C:
      lw         $8, 0x70($16)
      lw         $2, 0x20($17)
      lw         $7, 0xD8($17)
      slt        $2, $18, $2
      beqz       $2, .L800ADFEC
       addu      $6, $0, $0
  .L800ADF64:
      lw         $2, 0x4C($7)
      beqz       $2, .L800ADF14
       addu      $4, $0, $0
      addu       $3, $2, $0
  .L800ADF74:
      lhu        $2, 0x0($3)
      beqz       $2, .L800ADF14
       addiu     $4, $4, 0x1
      slti       $2, $4, 0x6
      bnez       $2, .L800ADF74
       addiu     $3, $3, 0x2
      lw         $2, 0xA0($17)
      sll        $3, $6, 8
      addu       $3, $2, $3
      lw         $2, 0x0($3)
      bltz       $2, .L800ADF14
       addiu     $4, $0, 0x1
      addiu      $3, $3, 0x4
      addiu      $5, $8, 0x4
  .L800ADFAC:
      lw         $2, 0x0($3)
      sw         $2, 0x0($5)
      lw         $2, 0x0($3)
      bnel       $2, $0, .L800ADFC0
       addiu     $18, $0, 0x1
  .L800ADFC0:
      addiu      $3, $3, 0x4
      addiu      $4, $4, 0x1
      slti       $2, $4, 0x6
      bnez       $2, .L800ADFAC
       addiu     $5, $5, 0x4
      addiu      $8, $8, 0x18
      addiu      $6, $6, 0x1
      lw         $2, 0x20($17)
      slt        $2, $6, $2
      bnez       $2, .L800ADF64
       addiu     $7, $7, 0x54
  .L800ADFEC:
      addu       $2, $18, $0
  .L800ADFF0:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800ADEE0

.globl func_800AE008
.ent func_800AE008
func_800AE008:
      addiu      $29, $29, -0x148
      addu       $12, $4, $0
      sw         $31, 0x144($29)
      sw         $30, 0x140($29)
      sw         $23, 0x13C($29)
      sw         $22, 0x138($29)
      sw         $21, 0x134($29)
      sw         $20, 0x130($29)
      sw         $19, 0x12C($29)
      sw         $18, 0x128($29)
      sw         $17, 0x124($29)
      sw         $16, 0x120($29)
      sw         $5, 0x14C($29)
      lw         $4, 0x90($12)
      lw         $2, 0x13C($12)
      lw         $3, 0x98($12)
      addiu      $2, $2, -0x1
      sw         $2, 0x9C($29)
      lw         $14, 0x1A8($12)
      slt        $2, $3, $4
      j          .L800AE0B4
       sw        $14, 0x98($29)
  .L800AE060:
      bne        $4, $3, .L800AE088
       nop
      lw         $2, 0x18C($12)
      lw         $3, 0x9C($12)
      lw         $4, 0x94($12)
      sltiu      $2, $2, 0x1
      addu       $3, $3, $2
      sltu       $3, $3, $4
      bnel       $3, $0, .L800AE0D0
       sw        $0, 0xA4($29)
  .L800AE088:
      lw         $2, 0x1B0($12)
      lw         $2, 0x0($2)
      addu       $4, $12, $0
      jalr       $2
       sw        $12, 0xFC($29)
      lw         $12, 0xFC($29)
      beqz       $2, .L800AE930
       addu      $2, $0, $0
      lw         $4, 0x90($12)
      lw         $3, 0x98($12)
      slt        $2, $3, $4
  .L800AE0B4:
      bnel       $2, $0, .L800AE0D0
       sw        $0, 0xA4($29)
      lw         $2, 0x1B0($12)
      lw         $2, 0x14($2)
      beqz       $2, .L800AE060
       nop
      sw         $0, 0xA4($29)
  .L800AE0D0:
      lw         $2, 0x20($12)
      lw         $15, 0xD8($12)
      blez       $2, .L800AE910
       sw        $15, 0xB4($29)
      addiu      $13, $0, 0x1
      lw         $14, 0x98($29)
      addiu      $11, $15, 0x24
      sw         $0, 0xDC($29)
      sw         $0, 0xE0($29)
      sw         $14, 0xE4($29)
  .L800AE0F8:
      lw         $2, 0xC($11)
      beql       $2, $0, .L800AE8C8
       addiu     $11, $11, 0x54
      lw         $2, 0x9C($12)
      lw         $15, 0x9C($29)
      sltu       $2, $2, $15
      beqz       $2, .L800AE12C
       nop
      lw         $14, -0x18($11)
      sw         $0, 0xC0($29)
      sll        $3, $14, 1
      j          .L800AE160
       sw        $14, 0xA8($29)
  .L800AE12C:
      lw         $2, -0x4($11)
      lw         $3, -0x18($11)
      divu       $zero, $2, $3
      bnez       $3, .L800AE144
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE144:
      mfhi       $14
      bnez       $14, .L800AE154
       sw        $14, 0xA8($29)
      sw         $3, 0xA8($29)
  .L800AE154:
      lw         $3, 0xA8($29)
      addiu      $15, $0, 0x1
      sw         $15, 0xC0($29)
  .L800AE160:
      lw         $6, 0x9C($12)
      beqz       $6, .L800AE1C4
       addu      $4, $12, $0
      lw         $7, -0x18($11)
      lw         $2, 0x4($12)
      lw         $14, 0xE4($29)
      addiu      $6, $6, -0x1
      sw         $0, 0x10($29)
      mult       $6, $7
      lw         $5, 0x48($14)
      lw         $2, 0x20($2)
      addu       $7, $3, $7
      sw         $11, 0xF8($29)
      sw         $12, 0xFC($29)
      mflo       $6
      jalr       $2
       sw        $13, 0x100($29)
      lw         $11, 0xF8($29)
      lw         $12, 0xFC($29)
      lw         $13, 0x100($29)
      lw         $3, -0x18($11)
      sw         $0, 0xBC($29)
      sll        $3, $3, 2
      j          .L800AE208
       addu      $5, $2, $3
  .L800AE1C4:
      addu       $6, $0, $0
      lw         $2, 0x4($12)
      lw         $15, 0xE4($29)
      addu       $7, $3, $0
      sw         $0, 0x10($29)
      lw         $5, 0x48($15)
      lw         $2, 0x20($2)
      addiu      $14, $0, 0x1
      sw         $14, 0xBC($29)
      sw         $11, 0xF8($29)
      sw         $12, 0xFC($29)
      jalr       $2
       sw        $13, 0x100($29)
      addu       $5, $2, $0
      lw         $13, 0x100($29)
      lw         $12, 0xFC($29)
      lw         $11, 0xF8($29)
  .L800AE208:
      lw         $15, 0xDC($29)
      lw         $14, 0x14C($29)
      addu       $2, $15, $14
      lw         $15, 0x98($29)
      lw         $2, 0x0($2)
      lw         $14, 0xE0($29)
      lw         $3, 0x70($15)
      sw         $2, 0xAC($29)
      lw         $2, 0x28($11)
      lw         $15, 0xDC($29)
      addu       $10, $3, $14
      lw         $3, 0x1BC($12)
      lhu        $8, 0x0($2)
      lhu        $4, 0x2($2)
      lhu        $14, 0x4($2)
      addu       $3, $3, $15
      sw         $14, 0xC4($29)
      lhu        $15, 0x6($2)
      lw         $14, 0xA8($29)
      sw         $15, 0xC8($29)
      lhu        $25, 0x8($2)
      lhu        $2, 0xA($2)
      sw         $2, 0x118($29)
      lw         $3, 0x4($3)
      addu       $24, $0, $0
      blez       $14, .L800AE8C4
       sw        $3, 0xB8($29)
      sll        $15, $4, 7
      sll        $4, $4, 8
      sw         $15, 0xD4($29)
      sw         $4, 0x114($29)
      sw         $5, 0xD8($29)
  .L800AE288:
      lw         $14, 0xD8($29)
      lw         $15, 0xBC($29)
      lw         $16, 0x0($14)
      beqz       $15, .L800AE2A8
       nop
      beqz       $24, .L800AE2AC
       addu      $21, $16, $0
      lw         $14, 0xD8($29)
  .L800AE2A8:
      lw         $21, -0x4($14)
  .L800AE2AC:
      lw         $15, 0xC0($29)
      beqz       $15, .L800AE2C8
       nop
      lw         $14, 0xA8($29)
      addiu      $2, $14, -0x1
      beq        $24, $2, .L800AE2D0
       addu      $20, $16, $0
  .L800AE2C8:
      lw         $15, 0xD8($29)
      lw         $20, 0x4($15)
  .L800AE2D0:
      addu       $9, $0, $0
      sw         $0, 0xB0($29)
      lh         $19, 0x0($21)
      lh         $17, 0x0($16)
      lh         $18, 0x0($20)
      addu       $30, $19, $0
      addu       $23, $17, $0
      addu       $7, $17, $0
      sw         $19, 0xCC($29)
      lw         $2, -0x8($11)
      addu       $22, $18, $0
      sw         $18, 0xD0($29)
      addiu      $2, $2, -0x1
      sw         $2, 0xA0($29)
  .L800AE308:
      addu       $4, $16, $0
      addiu      $5, $29, 0x18
      addiu      $6, $0, 0x1
      sw         $7, 0xE8($29)
      sw         $8, 0xEC($29)
      sw         $9, 0xF0($29)
      sw         $10, 0xF4($29)
      sw         $11, 0xF8($29)
      sw         $12, 0xFC($29)
      sw         $13, 0x100($29)
      sw         $24, 0x10C($29)
      jal        func_800B83AC
       sw        $25, 0x110($29)
      lw         $9, 0xF0($29)
      lw         $14, 0xA0($29)
      lw         $7, 0xE8($29)
      lw         $8, 0xEC($29)
      lw         $10, 0xF4($29)
      lw         $11, 0xF8($29)
      lw         $12, 0xFC($29)
      lw         $13, 0x100($29)
      lw         $24, 0x10C($29)
      lw         $25, 0x110($29)
      sltu       $2, $9, $14
      beqz       $2, .L800AE37C
       nop
      lh         $19, 0x80($21)
      lh         $17, 0x80($16)
      lh         $18, 0x80($20)
  .L800AE37C:
      lw         $4, 0x4($10)
      beqz       $4, .L800AE458
       nop
      lh         $2, 0x1A($29)
      bnez       $2, .L800AE458
       subu      $3, $7, $17
      sll        $2, $3, 3
      addu       $2, $2, $3
      sll        $2, $2, 2
      mult       $8, $2
      mflo       $2
      bltz       $2, .L800AE404
       nop
      lw         $14, 0xD4($29)
      addu       $2, $14, $2
      lw         $14, 0x114($29)
      div        $zero, $2, $14
      bnez       $14, .L800AE3CC
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE3CC:
      addiu      $1, $0, -0x1
      bne        $14, $1, .L800AE3E4
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L800AE3E4
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE3E4:
      mflo       $3
      blez       $4, .L800AE454
       sllv      $4, $13, $4
      slt        $2, $3, $4
      beql       $2, $0, .L800AE454
       addiu     $3, $4, -0x1
      j          .L800AE458
       sh        $3, 0x1A($29)
  .L800AE404:
      lw         $15, 0xD4($29)
      lw         $14, 0x114($29)
      subu       $2, $15, $2
      div        $zero, $2, $14
      bnez       $14, .L800AE420
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE420:
      addiu      $1, $0, -0x1
      bne        $14, $1, .L800AE438
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L800AE438
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE438:
      mflo       $3
      blez       $4, .L800AE450
       sllv      $4, $13, $4
      slt        $2, $3, $4
      beql       $2, $0, .L800AE450
       addiu     $3, $4, -0x1
  .L800AE450:
      negu       $3, $3
  .L800AE454:
      sh         $3, 0x1A($29)
  .L800AE458:
      lw         $4, 0x8($10)
      beqz       $4, .L800AE53C
       nop
      lh         $2, 0x28($29)
      bnez       $2, .L800AE53C
       subu      $3, $30, $22
      sll        $2, $3, 3
      addu       $2, $2, $3
      sll        $2, $2, 2
      mult       $8, $2
      mflo       $2
      bltz       $2, .L800AE4E4
       nop
      lw         $14, 0xC4($29)
      sll        $3, $14, 7
      addu       $3, $3, $2
      sll        $2, $14, 8
      div        $zero, $3, $2
      bnez       $2, .L800AE4AC
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE4AC:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L800AE4C4
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800AE4C4
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE4C4:
      mflo       $3
      blez       $4, .L800AE538
       sllv      $4, $13, $4
      slt        $2, $3, $4
      beql       $2, $0, .L800AE538
       addiu     $3, $4, -0x1
      j          .L800AE53C
       sh        $3, 0x28($29)
  .L800AE4E4:
      lw         $14, 0xC4($29)
      sll        $3, $14, 7
      subu       $3, $3, $2
      sll        $2, $14, 8
      div        $zero, $3, $2
      bnez       $2, .L800AE504
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE504:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L800AE51C
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800AE51C
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE51C:
      mflo       $3
      blez       $4, .L800AE534
       sllv      $4, $13, $4
      slt        $2, $3, $4
      beql       $2, $0, .L800AE534
       addiu     $3, $4, -0x1
  .L800AE534:
      negu       $3, $3
  .L800AE538:
      sh         $3, 0x28($29)
  .L800AE53C:
      lw         $4, 0xC($10)
      beqz       $4, .L800AE624
       nop
      lh         $2, 0x38($29)
      bnez       $2, .L800AE624
       addu      $3, $30, $22
      sll        $2, $23, 1
      subu       $3, $3, $2
      sll        $2, $3, 3
      addu       $2, $2, $3
      mult       $8, $2
      mflo       $2
      bltz       $2, .L800AE5CC
       nop
      lw         $14, 0xC8($29)
      sll        $3, $14, 7
      addu       $3, $3, $2
      sll        $2, $14, 8
      div        $zero, $3, $2
      bnez       $2, .L800AE594
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE594:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L800AE5AC
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800AE5AC
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE5AC:
      mflo       $3
      blez       $4, .L800AE620
       sllv      $4, $13, $4
      slt        $2, $3, $4
      beql       $2, $0, .L800AE620
       addiu     $3, $4, -0x1
      j          .L800AE624
       sh        $3, 0x38($29)
  .L800AE5CC:
      lw         $14, 0xC8($29)
      sll        $3, $14, 7
      subu       $3, $3, $2
      sll        $2, $14, 8
      div        $zero, $3, $2
      bnez       $2, .L800AE5EC
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE5EC:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L800AE604
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800AE604
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE604:
      mflo       $3
      blez       $4, .L800AE61C
       sllv      $4, $13, $4
      slt        $2, $3, $4
      beql       $2, $0, .L800AE61C
       addiu     $3, $4, -0x1
  .L800AE61C:
      negu       $3, $3
  .L800AE620:
      sh         $3, 0x38($29)
  .L800AE624:
      lw         $4, 0x10($10)
      beqz       $4, .L800AE708
       nop
      lh         $2, 0x2A($29)
      bnez       $2, .L800AE708
       nop
      lw         $14, 0xCC($29)
      lw         $15, 0xD0($29)
      subu       $3, $14, $19
      subu       $3, $3, $15
      addu       $3, $3, $18
      sll        $2, $3, 2
      addu       $2, $2, $3
      mult       $8, $2
      mflo       $2
      bltz       $2, .L800AE6B8
       sll       $3, $25, 7
      addu       $3, $3, $2
      sll        $2, $25, 8
      div        $zero, $3, $2
      bnez       $2, .L800AE680
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE680:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L800AE698
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800AE698
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE698:
      mflo       $3
      blez       $4, .L800AE704
       sllv      $4, $13, $4
      slt        $2, $3, $4
      beql       $2, $0, .L800AE704
       addiu     $3, $4, -0x1
      j          .L800AE708
       sh        $3, 0x2A($29)
  .L800AE6B8:
      subu       $3, $3, $2
      sll        $2, $25, 8
      div        $zero, $3, $2
      bnez       $2, .L800AE6D0
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE6D0:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L800AE6E8
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800AE6E8
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE6E8:
      mflo       $3
      blez       $4, .L800AE700
       sllv      $4, $13, $4
      slt        $2, $3, $4
      beql       $2, $0, .L800AE700
       addiu     $3, $4, -0x1
  .L800AE700:
      negu       $3, $3
  .L800AE704:
      sh         $3, 0x2A($29)
  .L800AE708:
      lw         $4, 0x14($10)
      beql       $4, $0, .L800AE7F8
       addu      $4, $12, $0
      lh         $2, 0x1C($29)
      bnel       $2, $0, .L800AE7F8
       addu      $4, $12, $0
      addu       $3, $7, $17
      sll        $2, $23, 1
      subu       $3, $3, $2
      sll        $2, $3, 3
      addu       $2, $2, $3
      mult       $8, $2
      mflo       $2
      bltz       $2, .L800AE79C
       nop
      lw         $14, 0x118($29)
      sll        $3, $14, 7
      addu       $3, $3, $2
      sll        $2, $14, 8
      div        $zero, $3, $2
      bnez       $2, .L800AE764
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE764:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L800AE77C
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800AE77C
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE77C:
      mflo       $3
      blez       $4, .L800AE7F0
       sllv      $4, $13, $4
      slt        $2, $3, $4
      beql       $2, $0, .L800AE7F0
       addiu     $3, $4, -0x1
      j          .L800AE7F4
       sh        $3, 0x1C($29)
  .L800AE79C:
      lw         $14, 0x118($29)
      sll        $3, $14, 7
      subu       $3, $3, $2
      sll        $2, $14, 8
      div        $zero, $3, $2
      bnez       $2, .L800AE7BC
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE7BC:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L800AE7D4
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800AE7D4
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800AE7D4:
      mflo       $3
      blez       $4, .L800AE7EC
       sllv      $4, $13, $4
      slt        $2, $3, $4
      beql       $2, $0, .L800AE7EC
       addiu     $3, $4, -0x1
  .L800AE7EC:
      negu       $3, $3
  .L800AE7F0:
      sh         $3, 0x1C($29)
  .L800AE7F4:
      addu       $4, $12, $0
  .L800AE7F8:
      lw         $5, 0xB4($29)
      lw         $7, 0xAC($29)
      lw         $14, 0xB0($29)
      lw         $15, 0xB8($29)
      addiu      $6, $29, 0x18
      sw         $8, 0xEC($29)
      sw         $9, 0xF0($29)
      sw         $10, 0xF4($29)
      sw         $11, 0xF8($29)
      sw         $12, 0xFC($29)
      sw         $13, 0x100($29)
      sw         $24, 0x10C($29)
      sw         $25, 0x110($29)
      jalr       $15
       sw        $14, 0x10($29)
      sw         $30, 0xCC($29)
      addu       $30, $19, $0
      addu       $7, $23, $0
      addu       $23, $17, $0
      sw         $22, 0xD0($29)
      addu       $22, $18, $0
      addiu      $16, $16, 0x80
      addiu      $21, $21, 0x80
      addiu      $20, $20, 0x80
      lw         $11, 0xF8($29)
      lw         $9, 0xF0($29)
      lw         $14, 0xB0($29)
      lw         $15, 0xA0($29)
      lw         $8, 0xEC($29)
      lw         $10, 0xF4($29)
      lw         $12, 0xFC($29)
      lw         $13, 0x100($29)
      lw         $24, 0x10C($29)
      lw         $25, 0x110($29)
      addiu      $9, $9, 0x1
      lw         $3, 0x0($11)
      sltu       $2, $15, $9
      addu       $14, $14, $3
      beqz       $2, .L800AE308
       sw        $14, 0xB0($29)
      sll        $2, $3, 2
      addiu      $24, $24, 0x1
      lw         $14, 0xAC($29)
      lw         $15, 0xD8($29)
      addu       $14, $14, $2
      sw         $14, 0xAC($29)
      lw         $14, 0xA8($29)
      addiu      $15, $15, 0x4
      slt        $2, $24, $14
      bnez       $2, .L800AE288
       sw        $15, 0xD8($29)
  .L800AE8C4:
      addiu      $11, $11, 0x54
  .L800AE8C8:
      lw         $15, 0xDC($29)
      lw         $14, 0xE0($29)
      addiu      $15, $15, 0x4
      sw         $15, 0xDC($29)
      lw         $15, 0xE4($29)
      addiu      $14, $14, 0x18
      sw         $14, 0xE0($29)
      lw         $14, 0xA4($29)
      addiu      $15, $15, 0x4
      sw         $15, 0xE4($29)
      lw         $15, 0xB4($29)
      addiu      $14, $14, 0x1
      sw         $14, 0xA4($29)
      lw         $2, 0x20($12)
      addiu      $15, $15, 0x54
      slt        $2, $14, $2
      bnez       $2, .L800AE0F8
       sw        $15, 0xB4($29)
  .L800AE910:
      lw         $3, 0x9C($12)
      lw         $4, 0x13C($12)
      addiu      $3, $3, 0x1
      sw         $3, 0x9C($12)
      sltu       $3, $3, $4
      bnez       $3, .L800AE930
       addiu     $2, $0, 0x3
      addiu      $2, $0, 0x4
  .L800AE930:
      lw         $31, 0x144($29)
      lw         $30, 0x140($29)
      lw         $23, 0x13C($29)
      lw         $22, 0x138($29)
      lw         $21, 0x134($29)
      lw         $20, 0x130($29)
      lw         $19, 0x12C($29)
      lw         $18, 0x128($29)
      lw         $17, 0x124($29)
      lw         $16, 0x120($29)
      jr         $31
       addiu     $29, $29, 0x148
.end func_800AE008

.globl func_800AE960
.ent func_800AE960
func_800AE960:
      addiu      $29, $29, -0x38
      sw         $22, 0x30($29)
      addu       $22, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $31, 0x34($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      lw         $2, 0x4($22)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x74
      addu       $20, $2, $0
      lui        $2, %hi(func_800AD6D4)
      addiu      $2, $2, %lo(func_800AD6D4)
      sw         $20, 0x1A8($22)
      sw         $2, 0x0($20)
      lui        $2, %hi(func_800AD6F0)
      addiu      $2, $2, %lo(func_800AD6F0)
      sw         $2, 0x8($20)
      beqz       $16, .L800AEA74
       sw        $0, 0x70($20)
      lw         $2, 0x20($22)
      lw         $5, 0xD8($22)
      blez       $2, .L800AEA50
       addu      $19, $0, $0
      addiu      $18, $5, 0xC
      addu       $21, $20, $0
  .L800AE9E0:
      lw         $2, 0xDC($22)
      lw         $17, 0x0($18)
      beqz       $2, .L800AE9F4
       sll       $2, $17, 1
      addu       $17, $17, $2
  .L800AE9F4:
      lw         $4, 0x10($18)
      lw         $5, -0x4($18)
      jal        func_800B82FC
       addiu     $19, $19, 0x1
      lw         $4, 0x14($18)
      lw         $5, 0x0($18)
      addiu      $18, $18, 0x54
      jal        func_800B82FC
       addu      $16, $2, $0
      addu       $4, $22, $0
      addiu      $5, $0, 0x1
      lw         $3, 0x4($22)
      addu       $6, $5, $0
      sw         $2, 0x10($29)
      sw         $17, 0x14($29)
      lw         $2, 0x14($3)
      jalr       $2
       addu      $7, $16, $0
      sw         $2, 0x48($21)
      lw         $2, 0x20($22)
      slt        $2, $19, $2
      bnez       $2, .L800AE9E0
       addiu     $21, $21, 0x4
  .L800AEA50:
      lui        $2, %hi(func_800ADA48)
      addiu      $2, $2, %lo(func_800ADA48)
      sw         $2, 0x4($20)
      lui        $2, %hi(func_800ADC6C)
      addiu      $2, $2, %lo(func_800ADC6C)
      sw         $2, 0xC($20)
      addiu      $2, $20, 0x48
      j          .L800AEAC8
       sw        $2, 0x10($20)
  .L800AEA74:
      addu       $4, $22, $0
      lw         $2, 0x4($4)
      addiu      $5, $0, 0x1
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $6, $0, 0x500
      addiu      $4, $0, 0x9
      addiu      $2, $2, 0x480
      addiu      $3, $20, 0x24
  .L800AEA98:
      sw         $2, 0x20($3)
      addiu      $2, $2, -0x80
      addiu      $4, $4, -0x1
      bgez       $4, .L800AEA98
       addiu     $3, $3, -0x4
      lui        $2, %hi(func_800ADA40)
      addiu      $2, $2, %lo(func_800ADA40)
      sw         $2, 0x4($20)
      lui        $2, %hi(func_800AD75C)
      addiu      $2, $2, %lo(func_800AD75C)
      sw         $2, 0xC($20)
      sw         $0, 0x10($20)
  .L800AEAC8:
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
.end func_800AE960

.globl func_800AEAF0
.ent func_800AEAF0
func_800AEAF0:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
.end func_800AEAF0

.globl func_800AEB00
.ent func_800AEB00
func_800AEB00:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addiu      $5, $0, 0x1
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $2, 0x4($16)
      lw         $2, 0x0($2)
      lw         $17, 0x1C4($16)
      jalr       $2
       addiu     $6, $0, 0x400
      addu       $4, $16, $0
      sw         $2, 0x8($17)
      lw         $2, 0x4($16)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x400
      addu       $4, $16, $0
      sw         $2, 0xC($17)
      lw         $2, 0x4($16)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x400
      addu       $4, $16, $0
      sw         $2, 0x10($17)
      lw         $2, 0x4($4)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x400
      addu       $8, $0, $0
      lui        $12, (0x2C8D00 >> 16)
      ori        $12, $12, (0x2C8D00 & 0xFFFF)
      lui        $11, (0x5B6900 >> 16)
      ori        $11, $11, (0x5B6900 & 0xFFFF)
      lui        $10, (0xFF1DAF00 >> 16)
      ori        $10, $10, (0xFF1DAF00 & 0xFFFF)
      lui        $9, (0xFF4D0B80 >> 16)
      ori        $9, $9, (0xFF4D0B80 & 0xFFFF)
      sw         $2, 0x14($17)
  .L800AEBA8:
      sll        $4, $8, 2
      addiu      $8, $8, 0x1
      lui        $7, (0xFFFF492E >> 16)
      ori        $7, $7, (0xFFFF492E & 0xFFFF)
      lui        $2, (0x1C5A2 >> 16)
      ori        $2, $2, (0x1C5A2 & 0xFFFF)
      sra        $6, $10, 16
      addu       $10, $10, $2
      lui        $5, (0x166E9 >> 16)
      lw         $3, 0x8($17)
      sra        $2, $9, 16
      addu       $3, $4, $3
      sw         $2, 0x0($3)
      lw         $2, 0xC($17)
      ori        $5, $5, (0x166E9 & 0xFFFF)
      addu       $2, $4, $2
      sw         $6, 0x0($2)
      lw         $2, 0x10($17)
      addu       $9, $9, $5
      addu       $2, $4, $2
      sw         $11, 0x0($2)
      lw         $2, 0x14($17)
      addu       $11, $11, $7
      addu       $4, $4, $2
      sw         $12, 0x0($4)
      slti       $2, $8, 0x100
      bnez       $2, .L800AEBA8
       addiu     $12, $12, -0x581A
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800AEB00

.globl func_800AEC2C
.ent func_800AEC2C
func_800AEC2C:
      addiu      $29, $29, -0x10
      lw         $12, 0x20($29)
      sw         $19, 0xC($29)
      sw         $18, 0x8($29)
      sw         $17, 0x4($29)
      sw         $16, 0x0($29)
      lw         $2, 0x1C4($4)
      lw         $24, 0x70($4)
      lw         $11, 0x140($4)
      addiu      $12, $12, -0x1
      lw         $18, 0x8($2)
      lw         $17, 0xC($2)
      lw         $16, 0x10($2)
      lw         $25, 0x14($2)
      bltz       $12, .L800AED44
       addu      $19, $5, $0
      sll        $5, $6, 2
  .L800AEC70:
      addiu      $6, $6, 0x1
      lw         $10, 0x0($7)
      addiu      $7, $7, 0x4
      lw         $4, 0x0($19)
      lw         $2, 0x4($19)
      lw         $3, 0x8($19)
      addu       $4, $5, $4
      addu       $2, $5, $2
      addu       $5, $5, $3
      lw         $15, 0x0($4)
      lw         $14, 0x0($2)
      lw         $13, 0x0($5)
      beqz       $24, .L800AED38
       addu      $8, $0, $0
      addiu      $9, $10, 0x2
  .L800AECAC:
      addu       $2, $13, $8
      addu       $4, $15, $8
      lbu        $5, 0x0($4)
      addu       $4, $14, $8
      lbu        $3, 0x0($2)
      lbu        $4, 0x0($4)
      sll        $3, $3, 2
      addu       $2, $3, $18
      lw         $2, 0x0($2)
      sll        $4, $4, 2
      addu       $2, $5, $2
      addu       $2, $11, $2
      lbu        $2, 0x0($2)
      addu       $3, $3, $16
      sb         $2, 0x0($10)
      addu       $2, $4, $25
      lw         $2, 0x0($2)
      lw         $3, 0x0($3)
      addu       $2, $2, $3
      sra        $2, $2, 16
      addu       $2, $5, $2
      addu       $2, $11, $2
      lbu        $2, 0x0($2)
      addu       $4, $4, $17
      sb         $2, -0x1($9)
      lw         $2, 0x0($4)
      addiu      $8, $8, 0x1
      addu       $5, $5, $2
      addu       $5, $11, $5
      lbu        $2, 0x0($5)
      addiu      $10, $10, 0x3
      sb         $2, 0x0($9)
      sltu       $2, $8, $24
      bnez       $2, .L800AECAC
       addiu     $9, $9, 0x3
  .L800AED38:
      addiu      $12, $12, -0x1
      bgez       $12, .L800AEC70
       sll       $5, $6, 2
  .L800AED44:
      lw         $19, 0xC($29)
      lw         $18, 0x8($29)
      lw         $17, 0x4($29)
      lw         $16, 0x0($29)
      jr         $31
       addiu     $29, $29, 0x10
.end func_800AEC2C

.globl func_800AED5C
.ent func_800AED5C
func_800AED5C:
      lw         $12, 0x10($29)
      lw         $11, 0x20($4)
      lw         $14, 0x70($4)
      addiu      $12, $12, -0x1
      bltz       $12, .L800AEDD8
       nop
  .L800AED74:
      blez       $11, .L800AEDC8
       addu      $9, $0, $0
      sll        $13, $6, 2
      addu       $10, $5, $0
  .L800AED84:
      addu       $8, $14, $0
      lw         $3, 0x0($7)
      lw         $2, 0x0($10)
      addu       $2, $13, $2
      lw         $4, 0x0($2)
      beqz       $8, .L800AEDB8
       addu      $3, $3, $9
  .L800AEDA0:
      lbu        $2, 0x0($4)
      addiu      $4, $4, 0x1
      addiu      $8, $8, -0x1
      sb         $2, 0x0($3)
      bnez       $8, .L800AEDA0
       addu      $3, $3, $11
  .L800AEDB8:
      addiu      $9, $9, 0x1
      slt        $2, $9, $11
      bnez       $2, .L800AED84
       addiu     $10, $10, 0x4
  .L800AEDC8:
      addiu      $6, $6, 0x1
      addiu      $12, $12, -0x1
      bgez       $12, .L800AED74
       addiu     $7, $7, 0x4
  .L800AEDD8:
      jr         $31
       nop
.end func_800AED5C

.globl func_800AEDE0
.ent func_800AEDE0
func_800AEDE0:
      addiu      $29, $29, -0x20
      lw         $2, 0x30($29)
      sw         $31, 0x18($29)
      sw         $2, 0x10($29)
      lw         $2, 0x70($4)
      sw         $2, 0x14($29)
      lw         $4, 0x0($5)
      addu       $5, $6, $0
      addu       $6, $7, $0
      jal        func_800B8338
       addu      $7, $0, $0
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800AEDE0

.globl func_800AEE18
.ent func_800AEE18
func_800AEE18:
      addiu      $29, $29, -0x18
      addu       $25, $5, $0
      lw         $12, 0x28($29)
      sw         $20, 0x10($29)
      sw         $19, 0xC($29)
      sw         $18, 0x8($29)
      sw         $17, 0x4($29)
      sw         $16, 0x0($29)
      lw         $2, 0x1C4($4)
      lw         $16, 0x70($4)
      lw         $5, 0x140($4)
      addiu      $12, $12, -0x1
      lw         $20, 0x8($2)
      lw         $19, 0xC($2)
      lw         $18, 0x10($2)
      lw         $17, 0x14($2)
      bltz       $12, .L800AEF54
       addu      $24, $6, $0
      addiu      $11, $5, 0xFF
      sll        $6, $24, 2
  .L800AEE68:
      addiu      $24, $24, 0x1
      lw         $10, 0x0($7)
      addiu      $7, $7, 0x4
      lw         $4, 0x0($25)
      lw         $5, 0x4($25)
      lw         $2, 0x8($25)
      lw         $3, 0xC($25)
      addu       $4, $6, $4
      addu       $5, $6, $5
      addu       $2, $6, $2
      addu       $6, $6, $3
      lw         $15, 0x0($4)
      lw         $14, 0x0($5)
      lw         $13, 0x0($2)
      lw         $6, 0x0($6)
      beqz       $16, .L800AEF48
       addu      $8, $0, $0
      addiu      $9, $10, 0x3
  .L800AEEB0:
      addu       $2, $13, $8
      addu       $4, $15, $8
      lbu        $5, 0x0($4)
      addu       $4, $14, $8
      lbu        $3, 0x0($2)
      lbu        $4, 0x0($4)
      sll        $3, $3, 2
      addu       $2, $3, $20
      lw         $2, 0x0($2)
      sll        $4, $4, 2
      addu       $2, $5, $2
      subu       $2, $11, $2
      lbu        $2, 0x0($2)
      addu       $3, $3, $18
      sb         $2, 0x0($10)
      addu       $2, $4, $17
      lw         $2, 0x0($2)
      lw         $3, 0x0($3)
      addu       $2, $2, $3
      sra        $2, $2, 16
      addu       $2, $5, $2
      subu       $2, $11, $2
      lbu        $2, 0x0($2)
      addu       $4, $4, $19
      sb         $2, -0x2($9)
      lw         $2, 0x0($4)
      addiu      $10, $10, 0x4
      addu       $5, $5, $2
      subu       $5, $11, $5
      lbu        $2, 0x0($5)
      addu       $3, $6, $8
      sb         $2, -0x1($9)
      lbu        $2, 0x0($3)
      addiu      $8, $8, 0x1
      sb         $2, 0x0($9)
      sltu       $2, $8, $16
      bnez       $2, .L800AEEB0
       addiu     $9, $9, 0x4
  .L800AEF48:
      addiu      $12, $12, -0x1
      bgezl      $12, .L800AEE68
       sll       $6, $24, 2
  .L800AEF54:
      lw         $20, 0x10($29)
      lw         $19, 0xC($29)
      lw         $18, 0x8($29)
      lw         $17, 0x4($29)
      lw         $16, 0x0($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800AEE18

.globl func_800AEF70
.ent func_800AEF70
func_800AEF70:
      jr         $31
       nop
.end func_800AEF70

.globl func_800AEF78
.ent func_800AEF78
func_800AEF78:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $2, 0x4($16)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x18
      addu       $17, $2, $0
      lui        $2, %hi(func_800AEF70)
      addiu      $2, $2, %lo(func_800AEF70)
      sw         $17, 0x1C4($16)
      sw         $2, 0x0($17)
      lw         $2, 0x24($16)
      addiu      $3, $2, -0x1
      sltiu      $2, $3, 0x5
      beqz       $2, .L800AF028
       lui       $2, %hi(jtbl_800F5700)
      addiu      $2, $2, %lo(jtbl_800F5700)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800AEFE0
.L800AEFE0:
      lw         $3, 0x20($16)
      addiu      $2, $0, 0x1
      beq        $3, $2, .L800AF050
       nop
      j          .L800AF034
       nop
  .globl .L800AEFF8
.L800AEFF8:
      lw         $3, 0x20($16)
      addiu      $2, $0, 0x3
      beq        $3, $2, .L800AF050
       nop
      j          .L800AF034
       nop
  .globl .L800AF010
.L800AF010:
      lw         $3, 0x20($16)
      addiu      $2, $0, 0x4
      beq        $3, $2, .L800AF050
       nop
      j          .L800AF034
       nop
  .L800AF028:
      lw         $2, 0x20($16)
      bgtz       $2, .L800AF050
       nop
  .L800AF034:
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x8
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
  .L800AF050:
      lw         $3, 0x28($16)
      addiu      $2, $0, 0x2
      beq        $3, $2, .L800AF0EC
       sltiu     $2, $3, 0x3
      beqz       $2, .L800AF078
       addiu     $2, $0, 0x1
      beq        $3, $2, .L800AF08C
       nop
      j          .L800AF140
       nop
  .L800AF078:
      addiu      $2, $0, 0x4
      beq        $3, $2, .L800AF118
       addiu     $2, $0, 0x5
      j          .L800AF140
       nop
  .L800AF08C:
      lw         $4, 0x24($16)
      beq        $4, $3, .L800AF0A4
       sw        $3, 0x78($16)
      addiu      $2, $0, 0x3
      bne        $4, $2, .L800AF168
       nop
  .L800AF0A4:
      lui        $2, %hi(func_800AEDE0)
      addiu      $2, $2, %lo(func_800AEDE0)
      sw         $2, 0x4($17)
      lw         $2, 0x20($16)
      slt        $2, $3, $2
      beqz       $2, .L800AF184
       addiu     $4, $0, 0x1
      addiu      $3, $0, 0x54
  .L800AF0C4:
      lw         $2, 0xD8($16)
      addiu      $4, $4, 0x1
      addu       $2, $3, $2
      sw         $0, 0x30($2)
      lw         $2, 0x20($16)
      slt        $2, $4, $2
      bnez       $2, .L800AF0C4
       addiu     $3, $3, 0x54
      j          .L800AF184
       nop
  .L800AF0EC:
      lw         $4, 0x24($16)
      addiu      $2, $0, 0x3
      bne        $4, $2, .L800AF108
       sw        $2, 0x78($16)
      lui        $2, %hi(func_800AEC2C)
      j          .L800AF12C
       addiu     $2, $2, %lo(func_800AEC2C)
  .L800AF108:
      beq        $4, $3, .L800AF15C
       lui       $2, %hi(func_800AED5C)
      j          .L800AF168
       nop
  .L800AF118:
      lw         $4, 0x24($16)
      bne        $4, $2, .L800AF108
       sw        $3, 0x78($16)
      lui        $2, %hi(func_800AEE18)
      addiu      $2, $2, %lo(func_800AEE18)
  .L800AF12C:
      sw         $2, 0x4($17)
      jal        func_800AEB00
       addu      $4, $16, $0
      j          .L800AF184
       nop
  .L800AF140:
      lw         $3, 0x28($16)
      lw         $2, 0x24($16)
      bne        $3, $2, .L800AF168
       nop
      lw         $2, 0x20($16)
      sw         $2, 0x78($16)
      lui        $2, %hi(func_800AED5C)
  .L800AF15C:
      addiu      $2, $2, %lo(func_800AED5C)
      j          .L800AF184
       sw        $2, 0x4($17)
  .L800AF168:
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x17
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
  .L800AF184:
      lw         $2, 0x54($16)
      bnez       $2, .L800AF194
       addiu     $2, $0, 0x1
      lw         $2, 0x78($16)
  .L800AF194:
      sw         $2, 0x7C($16)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800AEF78

.globl func_800AF1AC
.ent func_800AF1AC
func_800AF1AC:
      addiu      $3, $4, -0x1
      j          .L800AF208
       sh        $3, 0x2A($29)
      subu       $3, $3, $2
      sll        $2, $25, 8
      addiu      $29, $29, -0x38
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $20, 0x20($29)
      addu       $20, $17, $0
      sw         $21, 0x24($29)
      sw         $31, 0x34($29)
      sw         $30, 0x30($29)
      sw         $23, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $19, 0x1C($29)
      sw         $16, 0x10($29)
      lw         $4, 0x1BC($18)
      lw         $2, 0x20($18)
      lw         $3, 0xD8($18)
      blez       $2, .L800AF3E0
  .L800AF208:
       addu      $21, $17, $0
      addiu      $22, $0, 0x1
      addiu      $30, $0, 0x2D
      lui        $2, %hi(D_800F5B00)
      addiu      $23, $2, %lo(D_800F5B00)
      addiu      $16, $3, 0x50
      addu       $19, $4, $0
  .L800AF224:
      lw         $3, -0x2C($16)
      addiu      $2, $0, 0x2
      beq        $3, $2, .L800AF270
       slti      $2, $3, 0x3
      beqz       $2, .L800AF24C
       addiu     $2, $0, 0x4
      beq        $3, $22, .L800AF264
       lui       $2, %hi(func_800B4384)
      j          .L800AF2B4
       nop
  .L800AF24C:
      beq        $3, $2, .L800AF280
       addiu     $2, $0, 0x8
      beq        $3, $2, .L800AF290
       nop
      j          .L800AF2B4
       nop
  .L800AF264:
      addiu      $20, $2, %lo(func_800B4384)
      j          .L800AF2DC
       addu      $17, $0, $0
  .L800AF270:
      lui        $2, %hi(func_800B4058)
      addiu      $20, $2, %lo(func_800B4058)
      j          .L800AF2DC
       addu      $17, $0, $0
  .L800AF280:
      lui        $2, %hi(D_800B3B00)
      addiu      $20, $2, %lo(D_800B3B00)
      j          .L800AF2DC
       addu      $17, $0, $0
  .L800AF290:
      lw         $2, 0x48($18)
      bne        $2, $22, .L800AF2A8
       lui       $2, %hi(D_800B35C0)
      addiu      $20, $2, %lo(D_800B35C0)
      j          .L800AF2DC
       addiu     $17, $0, 0x1
  .L800AF2A8:
      lw         $2, 0x0($18)
      j          .L800AF2CC
       sw        $30, 0x14($2)
  .L800AF2B4:
      lw         $3, 0x0($18)
      addiu      $2, $0, 0x6
      sw         $2, 0x14($3)
      lw         $3, 0x0($18)
      lw         $2, -0x2C($16)
      sw         $2, 0x18($3)
  .L800AF2CC:
      lw         $2, 0x0($18)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $18, $0
  .L800AF2DC:
      sw         $20, 0x4($19)
      lw         $2, -0x20($16)
      beql       $2, $0, .L800AF3CC
       addiu     $19, $19, 0x4
      lw         $2, 0x2C($19)
      beql       $2, $17, .L800AF3CC
       addiu     $19, $19, 0x4
      lw         $8, -0x4($16)
      beql       $8, $0, .L800AF3CC
       addiu     $19, $19, 0x4
      beqz       $17, .L800AF31C
       sw        $17, 0x2C($19)
      beq        $17, $22, .L800AF358
       addu      $5, $0, $0
      j          .L800AF3B0
       nop
  .L800AF31C:
      addu       $5, $0, $0
      lw         $4, 0x0($16)
      addu       $3, $23, $0
  .L800AF328:
      lw         $2, 0x0($3)
      addiu      $3, $3, 0x4
      sll        $2, $2, 1
      addu       $2, $8, $2
      lhu        $2, 0x0($2)
      addiu      $5, $5, 0x1
      sw         $2, 0x0($4)
      slti       $2, $5, 0x40
      bnez       $2, .L800AF328
       addiu     $4, $4, 0x4
      j          .L800AF3CC
       addiu     $19, $19, 0x4
  .L800AF358:
      lw         $7, 0x0($16)
      lui        $2, %hi(D_800F5740)
      addiu      $6, $2, %lo(D_800F5740)
      addu       $4, $23, $0
  .L800AF368:
      lw         $2, 0x0($4)
      sll        $2, $2, 1
      addu       $2, $8, $2
      lhu        $3, 0x0($2)
      lh         $2, 0x0($6)
      mult       $3, $2
      addiu      $4, $4, 0x4
      addiu      $5, $5, 0x1
      addiu      $6, $6, 0x2
      mflo       $9
      addiu      $2, $9, 0x800
      sra        $2, $2, 12
      sw         $2, 0x0($7)
      slti       $2, $5, 0x40
      bnez       $2, .L800AF368
       addiu     $7, $7, 0x4
      j          .L800AF3CC
       addiu     $19, $19, 0x4
  .L800AF3B0:
      lw         $2, 0x0($18)
      sw         $30, 0x14($2)
      lw         $2, 0x0($18)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $18, $0
      addiu      $19, $19, 0x4
  .L800AF3CC:
      addiu      $21, $21, 0x1
      lw         $2, 0x20($18)
      slt        $2, $21, $2
      bnez       $2, .L800AF224
       addiu     $16, $16, 0x54
  .L800AF3E0:
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
.end func_800AF1AC

.globl func_800AF410
.ent func_800AF410
func_800AF410:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      addiu      $5, $0, 0x1
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($19)
      addiu      $6, $0, 0x54
      lw         $2, 0x0($2)
      jalr       $2
       addu      $16, $0, $0
      addu       $3, $2, $0
      lui        $2, %hi(func_800AF1AC + 0x14)
      addiu      $2, $2, %lo(func_800AF1AC + 0x14)
      sw         $3, 0x1BC($19)
      sw         $2, 0x0($3)
      lw         $2, 0x20($19)
      lw         $18, 0xD8($19)
      blez       $2, .L800AF4B8
       addiu     $20, $0, -0x1
      addu       $17, $3, $0
  .L800AF470:
      addu       $4, $19, $0
      addiu      $5, $0, 0x1
      lw         $2, 0x4($19)
      addiu      $6, $0, 0x100
      lw         $2, 0x0($2)
      jalr       $2
       addu      $16, $16, $5
      addu       $4, $2, $0
      addu       $5, $0, $0
      addiu      $6, $0, 0x100
      jal        func_80016140
       sw        $4, 0x50($18)
      sw         $20, 0x2C($17)
      addiu      $17, $17, 0x4
      lw         $2, 0x20($19)
      slt        $2, $16, $2
      bnez       $2, .L800AF470
       addiu     $18, $18, 0x54
  .L800AF4B8:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800AF410

.globl func_800AF4D8
.ent func_800AF4D8
func_800AF4D8:
      addiu      $18, $5, 0xC
      addu       $21, $20, $0
      lw         $2, 0xDC($22)
      lw         $17, 0x0($18)
      beqz       $2, .L800AF4F4
       sll       $2, $17, 1
      addu       $17, $17, $2
  .L800AF4F4:
      lw         $4, 0x10($18)
      lw         $5, -0x4($18)
      jal        func_800B8DFC
  .globl D_800AF500
D_800AF500:
       addiu     $29, $29, -0x38
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x30($29)
      sw         $23, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lw         $2, 0x18C($16)
      lw         $20, 0x1B8($16)
      bnez       $2, .L800AF560
       addiu     $2, $0, 0x3F
      lw         $3, 0x190($16)
      bne        $3, $2, .L800AF560
       nop
      lw         $2, 0x194($16)
      bnez       $2, .L800AF560
       nop
      lw         $2, 0x198($16)
      beqz       $2, .L800AF580
       nop
  .L800AF560:
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x74
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      addu       $4, $16, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, -0x1
  .L800AF580:
      lw         $2, 0x144($16)
      blez       $2, .L800AF670
       addu      $17, $0, $0
      addiu      $23, $0, 0x2F
      addu       $22, $20, $0
      addu       $21, $16, $0
  .L800AF598:
      lw         $2, 0x148($21)
      lw         $18, 0x14($2)
      lw         $19, 0x18($2)
      sltiu      $3, $18, 0x4
      beqz       $3, .L800AF5C0
       sll       $2, $18, 2
      addu       $2, $16, $2
      lw         $2, 0xB4($2)
      bnez       $2, .L800AF5E4
       sltiu     $2, $19, 0x4
  .L800AF5C0:
      lw         $2, 0x0($16)
      sw         $23, 0x14($2)
      lw         $2, 0x0($16)
      sw         $18, 0x18($2)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      sltiu      $2, $19, 0x4
  .L800AF5E4:
      beqz       $2, .L800AF5FC
       sll       $2, $19, 2
      addu       $2, $16, $2
      lw         $2, 0xC4($2)
      bnez       $2, .L800AF620
       addu      $4, $16, $0
  .L800AF5FC:
      lw         $2, 0x0($16)
      sw         $23, 0x14($2)
      lw         $2, 0x0($16)
      sw         $19, 0x18($2)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      addu       $4, $16, $0
  .L800AF620:
      sll        $2, $18, 2
      addiu      $6, $2, 0x28
      addu       $6, $20, $6
      addiu      $21, $21, 0x4
      addu       $2, $16, $2
      lw         $5, 0xB4($2)
      jal        func_800AF6D4
       addiu     $17, $17, 0x1
      addu       $4, $16, $0
      sll        $6, $19, 2
      addu       $2, $16, $6
      addiu      $6, $6, 0x38
      lw         $5, 0xC4($2)
      jal        func_800AF6D4
       addu      $6, $20, $6
      sw         $0, 0x14($22)
      lw         $2, 0x144($16)
      slt        $2, $17, $2
      bnez       $2, .L800AF598
       addiu     $22, $22, 0x4
  .L800AF670:
      slti       $2, $17, 0x4
      beqz       $2, .L800AF694
       sll       $2, $17, 2
      addu       $3, $2, $20
  .L800AF680:
      sw         $0, 0x14($3)
      addiu      $17, $17, 0x1
      slti       $2, $17, 0x4
      bnez       $2, .L800AF680
       addiu     $3, $3, 0x4
  .L800AF694:
      sw         $0, 0xC($20)
      sw         $0, 0x8($20)
      sw         $0, 0x10($20)
      lw         $2, 0x114($16)
      sw         $2, 0x24($20)
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
.end func_800AF4D8

.globl func_800AF6D4
.ent func_800AF6D4
func_800AF6D4:
      addiu      $29, $29, -0x530
      sw         $16, 0x520($29)
      addu       $16, $6, $0
      sw         $31, 0x528($29)
      sw         $17, 0x524($29)
      lw         $2, 0x0($16)
      bnez       $2, .L800AF70C
       addu      $17, $5, $0
      lw         $2, 0x4($4)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x5D4
      sw         $2, 0x0($16)
  .L800AF70C:
      addu       $8, $0, $0
      addiu      $9, $0, 0x1
      addiu      $4, $29, 0x10
      lw         $16, 0x0($16)
      addu       $3, $17, $9
      sw         $17, 0xD0($16)
  .L800AF724:
      lbu        $2, 0x0($3)
      beqz       $2, .L800AF74C
       addiu     $7, $0, 0x1
  .L800AF730:
      addu       $2, $4, $8
      sb         $9, 0x0($2)
      lbu        $2, 0x0($3)
      addiu      $7, $7, 0x1
      slt        $2, $2, $7
      beqz       $2, .L800AF730
       addiu     $8, $8, 0x1
  .L800AF74C:
      addiu      $9, $9, 0x1
      slti       $2, $9, 0x11
      bnez       $2, .L800AF724
       addiu     $3, $3, 0x1
      addu       $5, $0, $0
      addiu      $3, $29, 0x10
      addu       $2, $3, $8
      sb         $0, 0x0($2)
      lbu        $6, 0x10($29)
      beqz       $6, .L800AF7C8
       addu      $8, $5, $0
      addiu      $7, $29, 0x118
  .L800AF77C:
      addu       $2, $3, $8
      lbu        $2, 0x0($2)
      bnel       $2, $6, .L800AF7B4
       sll       $5, $5, 1
      sll        $2, $8, 2
      addu       $4, $2, $7
  .L800AF794:
      sw         $5, 0x0($4)
      addiu      $4, $4, 0x4
      addiu      $8, $8, 0x1
      addu       $2, $3, $8
      lbu        $2, 0x0($2)
      beq        $2, $6, .L800AF794
       addiu     $5, $5, 0x1
      sll        $5, $5, 1
  .L800AF7B4:
      addiu      $3, $29, 0x10
      addu       $2, $3, $8
      lbu        $2, 0x0($2)
      bnez       $2, .L800AF77C
       addiu     $6, $6, 0x1
  .L800AF7C8:
      addu       $8, $0, $0
      addiu      $9, $0, 0x1
      addiu      $5, $29, 0x118
      addiu      $6, $0, -0x1
      addiu      $3, $16, 0x4
  .L800AF7DC:
      addu       $4, $17, $9
      lbu        $2, 0x0($4)
      beqz       $2, .L800AF81C
       sll       $2, $8, 2
      addu       $2, $5, $2
      sw         $8, 0x8C($3)
      lw         $2, 0x0($2)
      sw         $2, 0x0($3)
      lbu        $2, 0x0($4)
      addu       $8, $8, $2
      addiu      $2, $8, -0x1
      sll        $2, $2, 2
      addu       $2, $5, $2
      lw         $2, 0x0($2)
      j          .L800AF820
       sw        $2, 0x44($3)
  .L800AF81C:
      sw         $6, 0x44($3)
  .L800AF820:
      addiu      $9, $9, 0x1
      slti       $2, $9, 0x11
      bnez       $2, .L800AF7DC
       addiu     $3, $3, 0x4
      lui        $2, (0xFFFFF >> 16)
      ori        $2, $2, (0xFFFFF & 0xFFFF)
      sw         $2, 0x88($16)
      addiu      $4, $16, 0xD4
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x400
      addu       $8, $0, $0
      addiu      $9, $0, 0x1
      addiu      $24, $29, 0x118
      addiu      $25, $0, 0x8
      addu       $15, $9, $0
      addu       $13, $17, $9
  .L800AF864:
      lbu        $2, 0x0($13)
      beqz       $2, .L800AF8D4
       addiu     $7, $0, 0x1
      subu       $12, $25, $9
      addu       $14, $13, $0
      sll        $2, $8, 2
      addu       $10, $2, $24
  .L800AF880:
      lw         $2, 0x0($10)
      sllv       $5, $15, $12
      blez       $5, .L800AF8BC
       sllv      $4, $2, $12
      addu       $11, $17, $8
      sll        $2, $4, 2
      addu       $6, $2, $16
  .L800AF89C:
      sw         $9, 0xD4($6)
      addiu      $6, $6, 0x4
      addu       $3, $16, $4
      addiu      $4, $4, 0x1
      lbu        $2, 0x11($11)
      addiu      $5, $5, -0x1
      bgtz       $5, .L800AF89C
       sb        $2, 0x4D4($3)
  .L800AF8BC:
      addiu      $7, $7, 0x1
      addiu      $10, $10, 0x4
      lbu        $2, 0x0($14)
      slt        $2, $2, $7
      beqz       $2, .L800AF880
       addiu     $8, $8, 0x1
  .L800AF8D4:
      addiu      $9, $9, 0x1
      slti       $2, $9, 0x9
      bnez       $2, .L800AF864
       addiu     $13, $13, 0x1
      lw         $31, 0x528($29)
      lw         $17, 0x524($29)
      lw         $16, 0x520($29)
      jr         $31
       addiu     $29, $29, 0x530
.end func_800AF6D4

.globl func_800AF8F8
.ent func_800AF8F8
func_800AF8F8:
      addiu      $29, $29, -0x30
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $22, 0x28($29)
      slti       $2, $19, 0x19
      sw         $31, 0x2C($29)
      sw         $21, 0x24($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $17, 0x0($18)
      lw         $16, 0x4($18)
      beqz       $2, .L800AFA4C
       addu      $22, $7, $0
      addiu      $21, $0, 0xFF
  .L800AF940:
      lw         $2, 0x8($18)
      bnez       $2, .L800AF9E8
       slt       $2, $19, $22
      bnez       $16, .L800AF984
       addiu     $16, $16, -0x1
      lw         $4, 0x14($18)
      lw         $2, 0x14($4)
      lw         $2, 0xC($2)
      jalr       $2
       nop
      beqz       $2, .L800AFA60
       addu      $2, $0, $0
      lw         $2, 0x14($18)
      lw         $2, 0x14($2)
      lw         $17, 0x0($2)
      lw         $16, 0x4($2)
      addiu      $16, $16, -0x1
  .L800AF984:
      lbu        $3, 0x0($17)
      bne        $3, $21, .L800AFA34
       addiu     $17, $17, 0x1
  .L800AF990:
      bnez       $16, .L800AF9C8
       addiu     $16, $16, -0x1
      lw         $4, 0x14($18)
      lw         $2, 0x14($4)
      lw         $2, 0xC($2)
      jalr       $2
       nop
      beqz       $2, .L800AFA60
       addu      $2, $0, $0
      lw         $2, 0x14($18)
      lw         $2, 0x14($2)
      lw         $17, 0x0($2)
      lw         $16, 0x4($2)
      addiu      $16, $16, -0x1
  .L800AF9C8:
      lbu        $3, 0x0($17)
      beq        $3, $21, .L800AF990
       addiu     $17, $17, 0x1
      bnel       $3, $0, .L800AF9E4
       sw        $3, 0x8($18)
      j          .L800AFA34
       addiu     $3, $0, 0xFF
  .L800AF9E4:
      slt        $2, $19, $22
  .L800AF9E8:
      beqz       $2, .L800AFA50
       addiu     $2, $0, 0x1
      lw         $2, 0x18($18)
      lw         $2, 0x0($2)
      bnez       $2, .L800AFA34
       addu      $3, $0, $0
      lw         $2, 0x14($18)
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x6F
      sw         $2, 0x14($3)
      lw         $4, 0x14($18)
      lw         $2, 0x0($4)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, -0x1
      lw         $3, 0x18($18)
      addiu      $2, $0, 0x1
      sw         $2, 0x0($3)
      addu       $3, $0, $0
  .L800AFA34:
      sll        $2, $20, 8
      or         $20, $2, $3
      addiu      $19, $19, 0x8
      slti       $2, $19, 0x19
      bnez       $2, .L800AF940
       nop
  .L800AFA4C:
      addiu      $2, $0, 0x1
  .L800AFA50:
      sw         $17, 0x0($18)
      sw         $16, 0x4($18)
      sw         $20, 0xC($18)
      sw         $19, 0x10($18)
  .L800AFA60:
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
.end func_800AF8F8

.globl func_800AFA88
.ent func_800AFA88
func_800AFA88:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      lw         $17, 0x38($29)
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $7, $0
      sw         $31, 0x24($29)
      sw         $18, 0x18($29)
      slt        $2, $6, $17
      beqz       $2, .L800AFAD0
       sw        $16, 0x10($29)
      jal        func_800AF8F8
       addu      $7, $17, $0
      beqz       $2, .L800AFBAC
       addiu     $2, $0, -0x1
      lw         $5, 0xC($19)
      lw         $6, 0x10($19)
  .L800AFAD0:
      subu       $6, $6, $17
      srav       $4, $5, $6
      addiu      $3, $0, 0x1
      sllv       $3, $3, $17
      addiu      $3, $3, -0x1
      sll        $2, $17, 2
      addu       $7, $20, $2
      lw         $2, 0x44($7)
      and        $16, $4, $3
      slt        $2, $2, $16
      beqz       $2, .L800AFB48
       addu      $18, $7, $0
  .L800AFB00:
      bgtz       $6, .L800AFB24
       sll       $16, $16, 1
      addu       $4, $19, $0
      jal        func_800AF8F8
       addiu     $7, $0, 0x1
      beqz       $2, .L800AFBAC
       addiu     $2, $0, -0x1
      lw         $5, 0xC($19)
      lw         $6, 0x10($19)
  .L800AFB24:
      addiu      $6, $6, -0x1
      srav       $2, $5, $6
      andi       $2, $2, 0x1
      or         $16, $16, $2
      addiu      $18, $18, 0x4
      lw         $2, 0x44($18)
      slt        $2, $2, $16
      bnez       $2, .L800AFB00
       addiu     $17, $17, 0x1
  .L800AFB48:
      slti       $2, $17, 0x11
      sw         $5, 0xC($19)
      beqz       $2, .L800AFB84
       sw        $6, 0x10($19)
      sll        $2, $17, 2
      addu       $2, $20, $2
      lw         $4, 0x0($2)
      lw         $2, 0x8C($2)
      lw         $3, 0xD0($20)
      subu       $4, $16, $4
      addu       $2, $2, $4
      addu       $3, $3, $2
      lbu        $2, 0x11($3)
      j          .L800AFBAC
       nop
  .L800AFB84:
      lw         $2, 0x14($19)
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x70
      sw         $2, 0x14($3)
      lw         $4, 0x14($19)
      lw         $2, 0x0($4)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, -0x1
      addu       $2, $0, $0
  .L800AFBAC:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800AFA88

.globl func_800AFBCC
.ent func_800AFBCC
func_800AFBCC:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $17, 0x1B8($16)
      lw         $3, 0xC($17)
      lw         $4, 0x1B4($16)
      bltzl      $3, .L800AFBF4
       addiu     $3, $3, 0x7
  .L800AFBF4:
      lw         $2, 0x5C($4)
      sra        $3, $3, 3
      addu       $2, $2, $3
      sw         $2, 0x5C($4)
      sw         $0, 0xC($17)
      lw         $2, 0x1B4($16)
      lw         $2, 0x8($2)
      jalr       $2
       addu      $4, $16, $0
      beqz       $2, .L800AFC58
       addu      $2, $0, $0
      lw         $2, 0x144($16)
      blez       $2, .L800AFC48
       addu      $3, $0, $0
      addu       $4, $17, $0
  .L800AFC30:
      sw         $0, 0x14($4)
      lw         $2, 0x144($16)
      addiu      $3, $3, 0x1
      slt        $2, $3, $2
      bnez       $2, .L800AFC30
       addiu     $4, $4, 0x4
  .L800AFC48:
      lw         $3, 0x114($16)
      addiu      $2, $0, 0x1
      sw         $0, 0x10($17)
      sw         $3, 0x24($17)
  .L800AFC58:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800AFBCC

.globl func_800AFC6C
.ent func_800AFC6C
func_800AFC6C:
      addiu      $29, $29, -0x70
      sw         $21, 0x5C($29)
      addu       $21, $4, $0
      sw         $31, 0x6C($29)
      sw         $30, 0x68($29)
      sw         $23, 0x64($29)
      sw         $22, 0x60($29)
      sw         $20, 0x58($29)
      sw         $19, 0x54($29)
      sw         $18, 0x50($29)
      sw         $17, 0x4C($29)
      sw         $16, 0x48($29)
      sw         $5, 0x74($29)
      lw         $2, 0x114($21)
      lw         $19, 0x1B8($21)
      beql       $2, $0, .L800AFCD4
       sw        $21, 0x2C($29)
      lw         $2, 0x24($19)
      bnel       $2, $0, .L800AFCD4
       sw        $21, 0x2C($29)
      jal        func_800AFBCC
       nop
      bnel       $2, $0, .L800AFCD4
       sw        $21, 0x2C($29)
  .L800AFCCC:
      j          .L800B0160
       addu      $2, $0, $0
  .L800AFCD4:
      lw         $2, 0x14($21)
      lw         $2, 0x0($2)
      sw         $2, 0x18($29)
      lw         $2, 0x14($21)
      lw         $2, 0x4($2)
      sw         $2, 0x1C($29)
      lw         $2, 0x19C($21)
      sw         $2, 0x20($29)
      lw         $8, 0x8($19)
      lw         $6, 0xC($19)
      addiu      $2, $19, 0x10
      sw         $2, 0x30($29)
      lw         $9, 0x14($19)
      lw         $10, 0x18($19)
      lw         $11, 0x1C($19)
      lw         $12, 0x20($19)
      sw         $9, 0x38($29)
      sw         $10, 0x3C($29)
      sw         $11, 0x40($29)
      sw         $12, 0x44($29)
      lw         $2, 0x160($21)
      blez       $2, .L800B0108
       addu      $22, $0, $0
      addiu      $30, $0, 0xF
      sll        $4, $22, 2
  .L800AFD38:
      addu       $2, $21, $4
      slti       $5, $6, 0x8
      lw         $20, 0x164($2)
      lw         $9, 0x74($29)
      sll        $2, $20, 2
      addu       $2, $21, $2
      addu       $4, $4, $9
      lw         $17, 0x148($2)
      lw         $23, 0x0($4)
      lw         $3, 0x14($17)
      lw         $2, 0x18($17)
      sll        $3, $3, 2
      addu       $3, $19, $3
      sll        $2, $2, 2
      addu       $2, $19, $2
      lw         $16, 0x28($3)
      lw         $18, 0x38($2)
      beqz       $5, .L800AFDAC
       addiu     $4, $29, 0x18
      addu       $5, $8, $0
      jal        func_800AF8F8
       addu      $7, $0, $0
      beqz       $2, .L800B0160
       addu      $2, $0, $0
      lw         $6, 0x28($29)
      lw         $8, 0x24($29)
      slti       $2, $6, 0x8
      bnez       $2, .L800AFDE0
       addiu     $2, $0, 0x1
  .L800AFDAC:
      addiu      $2, $6, -0x8
      srav       $2, $8, $2
      andi       $3, $2, 0xFF
      sll        $2, $3, 2
      addu       $2, $16, $2
      lw         $2, 0xD4($2)
      beql       $2, $0, .L800AFDE0
       addiu     $2, $0, 0x9
      subu       $6, $6, $2
      addu       $2, $16, $3
      lbu        $16, 0x4D4($2)
      j          .L800AFE08
       nop
  .L800AFDE0:
      sw         $2, 0x10($29)
      addiu      $4, $29, 0x18
      addu       $5, $8, $0
      jal        func_800AFA88
       addu      $7, $16, $0
      addu       $16, $2, $0
      bltz       $16, .L800B0160
       addu      $2, $0, $0
      lw         $8, 0x24($29)
      lw         $6, 0x28($29)
  .L800AFE08:
      beqz       $16, .L800AFE84
       slt       $2, $6, $16
      beqz       $2, .L800AFE34
       addiu     $4, $29, 0x18
      addu       $5, $8, $0
      jal        func_800AF8F8
       addu      $7, $16, $0
      beqz       $2, .L800B0160
       addu      $2, $0, $0
      lw         $8, 0x24($29)
      lw         $6, 0x28($29)
  .L800AFE34:
      subu       $6, $6, $16
      srav       $3, $8, $6
      addiu      $2, $0, 0x1
      sllv       $2, $2, $16
      addiu      $2, $2, -0x1
      and        $3, $3, $2
      sll        $4, $16, 2
      lui        $10, %hi(D_800F57C0)
      addiu      $10, $10, %lo(D_800F57C0)
      addu       $2, $4, $10
      lw         $2, 0x0($2)
      slt        $2, $3, $2
      beqz       $2, .L800AFE80
       addu      $7, $3, $0
      lui        $11, %hi(D_800F5800)
      addiu      $11, $11, %lo(D_800F5800)
      addu       $2, $4, $11
      lw         $2, 0x0($2)
      addu       $7, $3, $2
  .L800AFE80:
      addu       $16, $7, $0
  .L800AFE84:
      lw         $2, 0x30($17)
      beqz       $2, .L800B000C
       sll       $2, $20, 2
      addiu      $3, $29, 0x38
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      addu       $16, $16, $2
      sw         $16, 0x0($3)
      sh         $16, 0x0($23)
      lw         $2, 0x24($17)
      slti       $2, $2, 0x2
      bnez       $2, .L800B0010
       addiu     $17, $0, 0x1
      slti       $2, $6, 0x8
  .L800AFEBC:
      beqz       $2, .L800AFEEC
       addiu     $4, $29, 0x18
      addu       $5, $8, $0
      jal        func_800AF8F8
       addu      $7, $0, $0
      beqz       $2, .L800B0160
       addu      $2, $0, $0
      lw         $6, 0x28($29)
      lw         $8, 0x24($29)
      slti       $2, $6, 0x8
      bnez       $2, .L800AFF20
       addiu     $2, $0, 0x1
  .L800AFEEC:
      addiu      $2, $6, -0x8
      srav       $2, $8, $2
      andi       $3, $2, 0xFF
      sll        $2, $3, 2
      addu       $2, $18, $2
      lw         $2, 0xD4($2)
      beql       $2, $0, .L800AFF20
       addiu     $2, $0, 0x9
      subu       $6, $6, $2
      addu       $2, $18, $3
      lbu        $16, 0x4D4($2)
      j          .L800AFF48
       sra       $3, $16, 4
  .L800AFF20:
      sw         $2, 0x10($29)
      addiu      $4, $29, 0x18
      addu       $5, $8, $0
      jal        func_800AFA88
       addu      $7, $18, $0
      addu       $16, $2, $0
      bltz       $16, .L800AFCCC
       sra       $3, $16, 4
      lw         $8, 0x24($29)
      lw         $6, 0x28($29)
  .L800AFF48:
      andi       $16, $16, 0xF
      beqz       $16, .L800AFFEC
       slt       $2, $6, $16
      beqz       $2, .L800AFF7C
       addu      $17, $17, $3
      addiu      $4, $29, 0x18
      addu       $5, $8, $0
      jal        func_800AF8F8
       addu      $7, $16, $0
      beqz       $2, .L800B0160
       addu      $2, $0, $0
      lw         $8, 0x24($29)
      lw         $6, 0x28($29)
  .L800AFF7C:
      subu       $6, $6, $16
      srav       $3, $8, $6
      addiu      $2, $0, 0x1
      sllv       $2, $2, $16
      addiu      $2, $2, -0x1
      and        $3, $3, $2
      sll        $7, $16, 2
      lui        $12, %hi(D_800F57C0)
      addiu      $12, $12, %lo(D_800F57C0)
      addu       $2, $7, $12
      lw         $2, 0x0($2)
      slt        $2, $3, $2
      beqz       $2, .L800AFFC8
       addu      $4, $3, $0
      lui        $9, %hi(D_800F5800)
      addiu      $9, $9, %lo(D_800F5800)
      addu       $2, $7, $9
      lw         $2, 0x0($2)
      addu       $4, $3, $2
  .L800AFFC8:
      sll        $2, $17, 2
      lui        $10, %hi(D_800F5C00)
      addiu      $10, $10, %lo(D_800F5C00)
      addu       $2, $2, $10
      lw         $2, 0x0($2)
      sll        $2, $2, 1
      addu       $2, $2, $23
      j          .L800AFFF4
       sh        $4, 0x0($2)
  .L800AFFEC:
      bne        $3, $30, .L800B00F4
       addiu     $17, $17, 0xF
  .L800AFFF4:
      addiu      $17, $17, 0x1
      slti       $2, $17, 0x40
      bnez       $2, .L800AFEBC
       slti      $2, $6, 0x8
      j          .L800B00F4
       nop
  .L800B000C:
      addiu      $17, $0, 0x1
  .L800B0010:
      slti       $2, $6, 0x8
  .L800B0014:
      beqz       $2, .L800B0044
       addiu     $4, $29, 0x18
      addu       $5, $8, $0
      jal        func_800AF8F8
       addu      $7, $0, $0
      beqz       $2, .L800B0160
       addu      $2, $0, $0
      lw         $6, 0x28($29)
      lw         $8, 0x24($29)
      slti       $2, $6, 0x8
      bnez       $2, .L800B0078
       addiu     $2, $0, 0x1
  .L800B0044:
      addiu      $2, $6, -0x8
      srav       $2, $8, $2
      andi       $3, $2, 0xFF
      sll        $2, $3, 2
      addu       $2, $18, $2
      lw         $2, 0xD4($2)
      beql       $2, $0, .L800B0078
       addiu     $2, $0, 0x9
      subu       $6, $6, $2
      addu       $2, $18, $3
      lbu        $16, 0x4D4($2)
      j          .L800B00A0
       sra       $3, $16, 4
  .L800B0078:
      sw         $2, 0x10($29)
      addiu      $4, $29, 0x18
      addu       $5, $8, $0
      jal        func_800AFA88
       addu      $7, $18, $0
      addu       $16, $2, $0
      bltz       $16, .L800AFCCC
       sra       $3, $16, 4
      lw         $8, 0x24($29)
      lw         $6, 0x28($29)
  .L800B00A0:
      andi       $16, $16, 0xF
      beqz       $16, .L800B00DC
       slt       $2, $6, $16
      beqz       $2, .L800B00D4
       addu      $17, $17, $3
      addiu      $4, $29, 0x18
      addu       $5, $8, $0
      jal        func_800AF8F8
       addu      $7, $16, $0
      beqz       $2, .L800B0160
       addu      $2, $0, $0
      lw         $8, 0x24($29)
      lw         $6, 0x28($29)
  .L800B00D4:
      j          .L800B00E4
       subu      $6, $6, $16
  .L800B00DC:
      bne        $3, $30, .L800B00F4
       addiu     $17, $17, 0xF
  .L800B00E4:
      addiu      $17, $17, 0x1
      slti       $2, $17, 0x40
      bnez       $2, .L800B0014
       slti      $2, $6, 0x8
  .L800B00F4:
      lw         $2, 0x160($21)
      addiu      $22, $22, 0x1
      slt        $2, $22, $2
      bnez       $2, .L800AFD38
       sll       $4, $22, 2
  .L800B0108:
      lw         $3, 0x14($21)
      lw         $2, 0x18($29)
      sw         $2, 0x0($3)
      lw         $3, 0x14($21)
      lw         $2, 0x1C($29)
      sw         $2, 0x4($3)
      lw         $2, 0x20($29)
      sw         $2, 0x19C($21)
      sw         $8, 0x8($19)
      sw         $6, 0xC($19)
      lw         $11, 0x38($29)
      lw         $12, 0x3C($29)
      lw         $9, 0x40($29)
      lw         $10, 0x44($29)
      sw         $11, 0x14($19)
      sw         $12, 0x18($19)
      sw         $9, 0x1C($19)
      sw         $10, 0x20($19)
      lw         $3, 0x24($19)
      addiu      $2, $0, 0x1
      addiu      $3, $3, -0x1
      sw         $3, 0x24($19)
  .L800B0160:
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
.end func_800AFC6C

.globl func_800B0190
.ent func_800B0190
func_800B0190:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x4($16)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x48
      addu       $4, $0, $0
      addu       $3, $2, $0
      lui        $2, %hi(D_800AF500)
      addiu      $2, $2, %lo(D_800AF500)
      sw         $3, 0x1B8($16)
      sw         $2, 0x0($3)
      lui        $2, %hi(func_800AFC6C)
      addiu      $2, $2, %lo(func_800AFC6C)
      sw         $2, 0x4($3)
  .L800B01D8:
      sw         $0, 0x38($3)
      sw         $0, 0x28($3)
      addiu      $4, $4, 0x1
      slti       $2, $4, 0x4
      bnez       $2, .L800B01D8
       addiu     $3, $3, 0x4
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B0190

.globl func_800B0200
.ent func_800B0200
func_800B0200:
      addiu      $29, $29, -0x30
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      addiu      $5, $0, 0x1
      sw         $31, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $6, 0x20($20)
      lw         $2, 0x4($20)
      lw         $21, 0x1A4($20)
      lw         $16, 0x138($20)
      lw         $2, 0x0($2)
      jalr       $2
       sll       $6, $6, 3
      sw         $2, 0x38($21)
      lw         $3, 0x20($20)
      sll        $3, $3, 2
      addu       $2, $2, $3
      sw         $2, 0x3C($21)
      lw         $2, 0x20($20)
      lw         $3, 0xD8($20)
      blez       $2, .L800B0320
       addu      $19, $0, $0
      addiu      $22, $16, 0x4
      addiu      $18, $3, 0x24
  .L800B0274:
      lw         $3, -0x18($18)
      lw         $2, 0x0($18)
      mult       $3, $2
      mflo       $3
      lw         $16, 0x138($20)
      nop
      div        $zero, $3, $16
      bnez       $16, .L800B029C
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B029C:
      addiu      $1, $0, -0x1
      bne        $16, $1, .L800B02B4
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800B02B4
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B02B4:
      mflo       $16
      addu       $4, $20, $0
      nop
      mult       $16, $22
      addiu      $5, $0, 0x1
      lw         $2, 0x4($20)
      addiu      $18, $18, 0x54
      lw         $2, 0x0($2)
      mflo       $17
      jalr       $2
       sll       $6, $17, 3
      sll        $16, $16, 2
      addu       $4, $2, $16
      sll        $3, $19, 2
      lw         $2, 0x38($21)
      sll        $17, $17, 2
      addu       $2, $3, $2
      sw         $4, 0x0($2)
      lw         $2, 0x3C($21)
      addu       $4, $4, $17
      addu       $3, $3, $2
      sw         $4, 0x0($3)
      lw         $2, 0x20($20)
      addiu      $19, $19, 0x1
      slt        $2, $19, $2
      bnez       $2, .L800B0274
       nop
  .L800B0320:
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
.end func_800B0200

.globl func_800B0348
.ent func_800B0348
func_800B0348:
      addiu      $29, $29, -0x18
      addu       $25, $4, $0
      sw         $20, 0x10($29)
      sw         $19, 0xC($29)
      sw         $18, 0x8($29)
      sw         $17, 0x4($29)
      sw         $16, 0x0($29)
      lw         $16, 0x1A4($25)
      lw         $17, 0x138($25)
      lw         $2, 0x20($25)
      lw         $3, 0xD8($25)
      blez       $2, .L800B04DC
       addu      $15, $0, $0
      addiu      $19, $17, 0x2
      addiu      $18, $17, -0x2
      addiu      $14, $3, 0x24
      addu       $24, $16, $0
  .L800B038C:
      lw         $3, -0x18($14)
      lw         $2, 0x0($14)
      mult       $3, $2
      mflo       $3
      lw         $2, 0x138($25)
      nop
      div        $zero, $3, $2
      bnez       $2, .L800B03B4
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B03B4:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L800B03CC
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800B03CC
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B03CC:
      mflo       $7
      lw         $4, 0x3C($16)
      lw         $8, 0x8($24)
      sll        $2, $15, 2
      lw         $3, 0x38($16)
      mult       $7, $19
      addu       $3, $2, $3
      addu       $2, $2, $4
      lw         $12, 0x0($3)
      lw         $9, 0x0($2)
      mflo       $5
      blez       $5, .L800B0434
       addu      $6, $0, $0
      addu       $10, $5, $0
      addu       $5, $12, $0
      addu       $4, $9, $0
      addu       $3, $8, $0
  .L800B0410:
      lw         $2, 0x0($3)
      addiu      $3, $3, 0x4
      addiu      $6, $6, 0x1
      sw         $2, 0x0($4)
      sw         $2, 0x0($5)
      addiu      $5, $5, 0x4
      slt        $2, $6, $10
      bnez       $2, .L800B0410
       addiu     $4, $4, 0x4
  .L800B0434:
      sll        $10, $7, 1
      blez       $10, .L800B0498
       addu      $6, $0, $0
      mult       $7, $18
      mflo       $13
      nop
      nop
      mult       $7, $17
      mflo       $11
      addu       $3, $13, $6
  .L800B045C:
      addu       $4, $11, $6
      addiu      $6, $6, 0x1
      sll        $3, $3, 2
      sll        $4, $4, 2
      addu       $2, $4, $8
      lw         $5, 0x0($2)
      addu       $2, $3, $9
      addu       $3, $3, $8
      sw         $5, 0x0($2)
      lw         $2, 0x0($3)
      addu       $4, $4, $9
      sw         $2, 0x0($4)
      slt        $2, $6, $10
      bnez       $2, .L800B045C
       addu      $3, $13, $6
  .L800B0498:
      blez       $7, .L800B04C4
       addu      $6, $0, $0
      subu       $2, $6, $7
  .L800B04A4:
      addiu      $6, $6, 0x1
      sll        $2, $2, 2
      lw         $3, 0x0($12)
      addu       $2, $2, $12
      sw         $3, 0x0($2)
      slt        $2, $6, $7
      bnez       $2, .L800B04A4
       subu      $2, $6, $7
  .L800B04C4:
      addiu      $24, $24, 0x4
      addiu      $15, $15, 0x1
      lw         $2, 0x20($25)
      slt        $2, $15, $2
      bnez       $2, .L800B038C
       addiu     $14, $14, 0x54
  .L800B04DC:
      lw         $20, 0x10($29)
      lw         $19, 0xC($29)
      lw         $18, 0x8($29)
      lw         $17, 0x4($29)
      lw         $16, 0x0($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B0348

.globl func_800B04F8
.ent func_800B04F8
func_800B04F8:
      addiu      $29, $29, -0x10
      addu       $25, $4, $0
      sw         $19, 0xC($29)
      sw         $18, 0x8($29)
      sw         $17, 0x4($29)
      sw         $16, 0x0($29)
      lw         $16, 0x1A4($25)
      lw         $3, 0x138($25)
      lw         $2, 0x20($25)
      lw         $4, 0xD8($25)
      blez       $2, .L800B062C
       addu      $14, $0, $0
      addiu      $18, $3, 0x1
      addiu      $17, $3, 0x2
      addiu      $13, $4, 0x24
  .L800B0534:
      lw         $3, -0x18($13)
      lw         $2, 0x0($13)
      mult       $3, $2
      mflo       $3
      lw         $2, 0x138($25)
      nop
      div        $zero, $3, $2
      bnez       $2, .L800B055C
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B055C:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L800B0574
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800B0574
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B0574:
      mflo       $12
      lw         $4, 0x3C($16)
      lw         $2, 0x38($16)
      sll        $3, $14, 2
      addu       $2, $3, $2
      addu       $3, $3, $4
      lw         $10, 0x0($2)
      lw         $8, 0x0($3)
      blez       $12, .L800B0618
       addu      $7, $0, $0
      mult       $12, $18
      mflo       $24
      addu       $11, $8, $0
      addu       $9, $10, $0
      mult       $12, $17
      mflo       $15
  .L800B05B4:
      subu       $4, $7, $12
      addu       $3, $24, $7
      addu       $6, $15, $7
      addiu      $7, $7, 0x1
      sll        $4, $4, 2
      sll        $3, $3, 2
      addu       $2, $3, $10
      lw         $5, 0x0($2)
      addu       $2, $4, $10
      addu       $3, $3, $8
      addu       $4, $4, $8
      sw         $5, 0x0($2)
      lw         $2, 0x0($3)
      sll        $6, $6, 2
      sw         $2, 0x0($4)
      lw         $3, 0x0($9)
      addiu      $9, $9, 0x4
      addu       $2, $6, $10
      addu       $6, $6, $8
      sw         $3, 0x0($2)
      lw         $2, 0x0($11)
      sw         $2, 0x0($6)
      slt        $2, $7, $12
      bnez       $2, .L800B05B4
       addiu     $11, $11, 0x4
  .L800B0618:
      addiu      $14, $14, 0x1
      lw         $2, 0x20($25)
      slt        $2, $14, $2
      bnez       $2, .L800B0534
       addiu     $13, $13, 0x54
  .L800B062C:
      lw         $19, 0xC($29)
      lw         $18, 0x8($29)
      lw         $17, 0x4($29)
      lw         $16, 0x0($29)
      jr         $31
       addiu     $29, $29, 0x10
.end func_800B04F8

.globl func_800B0644
.ent func_800B0644
func_800B0644:
      lw         $12, 0x1A4($4)
      lw         $2, 0x20($4)
      lw         $3, 0xD8($4)
      blez       $2, .L800B076C
       addu      $11, $0, $0
      addiu      $10, $3, 0x2C
  .L800B065C:
      lw         $3, -0x20($10)
      lw         $2, -0x8($10)
      mult       $3, $2
      mflo       $3
      lw         $2, 0x138($4)
      nop
      div        $zero, $3, $2
      bnez       $2, .L800B0684
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B0684:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L800B069C
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800B069C
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B069C:
      mflo       $7
      lw         $2, 0x0($10)
      nop
      divu       $zero, $2, $3
      bnez       $3, .L800B06B8
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B06B8:
      mfhi       $6
      bnez       $6, .L800B06C8
       addu      $5, $7, $0
      addu       $6, $3, $0
  .L800B06C8:
      bnez       $11, .L800B0704
       addiu     $2, $6, -0x1
      div        $zero, $2, $5
      bnez       $5, .L800B06E0
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B06E0:
      addiu      $1, $0, -0x1
      bne        $5, $1, .L800B06F8
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L800B06F8
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B06F8:
      mflo       $2
      addiu      $2, $2, 0x1
      sw         $2, 0x48($12)
  .L800B0704:
      lw         $2, 0x40($12)
      sll        $9, $7, 1
      sll        $2, $2, 2
      addu       $2, $12, $2
      lw         $3, 0x38($2)
      sll        $2, $11, 2
      addu       $2, $2, $3
      lw         $7, 0x0($2)
      blez       $9, .L800B0758
       addu      $5, $0, $0
      sll        $2, $6, 2
      addu       $8, $2, $7
      addu       $2, $6, $5
  .L800B0738:
      addiu      $5, $5, 0x1
      sll        $2, $2, 2
      lw         $3, -0x4($8)
      addu       $2, $2, $7
      sw         $3, 0x0($2)
      slt        $2, $5, $9
      bnez       $2, .L800B0738
       addu      $2, $6, $5
  .L800B0758:
      addiu      $11, $11, 0x1
      lw         $2, 0x20($4)
      slt        $2, $11, $2
      bnez       $2, .L800B065C
       addiu     $10, $10, 0x54
  .L800B076C:
      jr         $31
       nop
.end func_800B0644

.globl func_800B0774
.ent func_800B0774
func_800B0774:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $16, 0x1A4($4)
      beqz       $5, .L800B079C
       addiu     $2, $0, 0x2
      beq        $5, $2, .L800B07E0
       addiu     $2, $0, 0x4
      j          .L800B07F0
       nop
  .L800B079C:
      lw         $2, 0x1C0($4)
      lw         $2, 0x8($2)
      beqz       $2, .L800B07C8
       lui       $2, %hi(func_800B08D0)
      addiu      $2, $2, %lo(func_800B08D0)
      jal        func_800B0348
       sw        $2, 0x4($16)
      sw         $0, 0x40($16)
      sw         $0, 0x44($16)
      j          .L800B07D4
       sw        $0, 0x4C($16)
  .L800B07C8:
      lui        $2, %hi(func_800B0818)
      addiu      $2, $2, %lo(func_800B0818)
      sw         $2, 0x4($16)
  .L800B07D4:
      sw         $0, 0x30($16)
      j          .L800B0808
       sw        $0, 0x34($16)
  .L800B07E0:
      lui        $2, %hi(func_800B0AAC)
      addiu      $2, $2, %lo(func_800B0AAC)
      j          .L800B0808
       sw        $2, 0x4($16)
  .L800B07F0:
      lw         $3, 0x0($4)
      sw         $2, 0x14($3)
      lw         $2, 0x0($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800B0808:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B0774

.globl func_800B0818
.ent func_800B0818
func_800B0818:
      addiu      $29, $29, -0x38
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $18, 0x28($29)
      addu       $18, $5, $0
      sw         $31, 0x34($29)
      sw         $20, 0x30($29)
      sw         $19, 0x2C($29)
      sw         $17, 0x24($29)
      lw         $17, 0x1A4($16)
      addu       $19, $6, $0
      lw         $2, 0x30($17)
      bnez       $2, .L800B086C
       addu      $20, $7, $0
      lw         $2, 0x1A8($16)
      lw         $2, 0xC($2)
      jalr       $2
       addiu     $5, $17, 0x8
      beqz       $2, .L800B08B0
       addiu     $2, $0, 0x1
      sw         $2, 0x30($17)
  .L800B086C:
      addu       $4, $16, $0
      addiu      $5, $17, 0x8
      lw         $16, 0x138($4)
      lw         $2, 0x1AC($4)
      addiu      $6, $17, 0x34
      sw         $18, 0x10($29)
      sw         $19, 0x14($29)
      sw         $20, 0x18($29)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $7, $16, $0
      lw         $2, 0x34($17)
      sltu       $2, $2, $16
      bnez       $2, .L800B08B0
       nop
      sw         $0, 0x30($17)
      sw         $0, 0x34($17)
  .L800B08B0:
      lw         $31, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800B0818

.globl func_800B08D0
.ent func_800B08D0
func_800B08D0:
      addiu      $29, $29, -0x38
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $20, 0x30($29)
      addu       $20, $5, $0
      sw         $31, 0x34($29)
      sw         $19, 0x2C($29)
      sw         $18, 0x28($29)
      sw         $16, 0x20($29)
      lw         $16, 0x1A4($17)
      addu       $18, $6, $0
      lw         $2, 0x30($16)
      bnez       $2, .L800B0944
       addu      $19, $7, $0
      lw         $2, 0x40($16)
      lw         $3, 0x1A8($17)
      sll        $2, $2, 2
      addu       $2, $16, $2
      lw         $5, 0x38($2)
      lw         $2, 0xC($3)
      jalr       $2
       nop
      beqz       $2, .L800B0A8C
       nop
      lw         $2, 0x4C($16)
      addiu      $3, $0, 0x1
      sw         $3, 0x30($16)
      addu       $2, $2, $3
      sw         $2, 0x4C($16)
  .L800B0944:
      lw         $3, 0x44($16)
      addiu      $2, $0, 0x1
      beq        $3, $2, .L800B0A00
       slti      $2, $3, 0x2
      beql       $2, $0, .L800B096C
       addiu     $2, $0, 0x2
      beql       $3, $0, .L800B09D4
       sw        $0, 0x34($16)
      j          .L800B0A8C
       nop
  .L800B096C:
      bne        $3, $2, .L800B0A8C
       nop
      lw         $3, 0x1AC($17)
      lw         $2, 0x40($16)
      addu       $4, $17, $0
      sw         $20, 0x10($29)
      sw         $18, 0x14($29)
      sw         $19, 0x18($29)
      lw         $7, 0x48($16)
      sll        $2, $2, 2
      addu       $2, $16, $2
      lw         $5, 0x38($2)
      lw         $2, 0x4($3)
      jalr       $2
       addiu     $6, $16, 0x34
      lw         $2, 0x34($16)
      lw         $3, 0x48($16)
      sltu       $2, $2, $3
      bnez       $2, .L800B0A8C
       nop
      sw         $0, 0x44($16)
      lw         $2, 0x0($18)
      sltu       $2, $2, $19
      beqz       $2, .L800B0A8C
       nop
      sw         $0, 0x34($16)
  .L800B09D4:
      lw         $2, 0x138($17)
      lw         $3, 0x4C($16)
      addiu      $2, $2, -0x1
      sw         $2, 0x48($16)
      lw         $2, 0x13C($17)
      bne        $3, $2, .L800B09FC
       addiu     $2, $0, 0x1
      jal        func_800B0644
       addu      $4, $17, $0
      addiu      $2, $0, 0x1
  .L800B09FC:
      sw         $2, 0x44($16)
  .L800B0A00:
      lw         $3, 0x1AC($17)
      lw         $2, 0x40($16)
      addu       $4, $17, $0
      sw         $20, 0x10($29)
      sw         $18, 0x14($29)
      sw         $19, 0x18($29)
      lw         $7, 0x48($16)
      sll        $2, $2, 2
      addu       $2, $16, $2
      lw         $5, 0x38($2)
      lw         $2, 0x4($3)
      jalr       $2
       addiu     $6, $16, 0x34
      lw         $2, 0x34($16)
      lw         $3, 0x48($16)
      sltu       $2, $2, $3
      bnez       $2, .L800B0A8C
       addiu     $2, $0, 0x1
      lw         $3, 0x4C($16)
      bne        $3, $2, .L800B0A5C
       nop
      jal        func_800B04F8
       addu      $4, $17, $0
  .L800B0A5C:
      lw         $2, 0x40($16)
      sw         $0, 0x30($16)
      xori       $2, $2, 0x1
      sw         $2, 0x40($16)
      lw         $2, 0x138($17)
      addiu      $2, $2, 0x1
      sw         $2, 0x34($16)
      lw         $2, 0x138($17)
      addiu      $3, $0, 0x2
      sw         $3, 0x44($16)
      addu       $2, $2, $3
      sw         $2, 0x48($16)
  .L800B0A8C:
      lw         $31, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800B08D0

.globl func_800B0AAC
.ent func_800B0AAC
func_800B0AAC:
      addiu      $29, $29, -0x28
      sw         $31, 0x20($29)
      lw         $2, 0x1AC($4)
      sw         $5, 0x10($29)
      addu       $5, $0, $0
      sw         $6, 0x14($29)
      addu       $6, $5, $0
      sw         $7, 0x18($29)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $7, $5, $0
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B0AAC

.globl func_800B0AE4
.ent func_800B0AE4
func_800B0AE4:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      lw         $2, 0x4($18)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x50
      addu       $19, $2, $0
      lui        $2, %hi(func_800B0774)
      addiu      $2, $2, %lo(func_800B0774)
      sw         $19, 0x1A4($18)
      beqz       $16, .L800B0B50
       sw        $2, 0x0($19)
      lw         $3, 0x0($18)
      addiu      $2, $0, 0x4
      sw         $2, 0x14($3)
      lw         $2, 0x0($18)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $18, $0
  .L800B0B50:
      lw         $2, 0x1C0($18)
      lw         $2, 0x8($2)
      beqz       $2, .L800B0B9C
       nop
      lw         $2, 0x138($18)
      slti       $2, $2, 0x2
      beqz       $2, .L800B0B88
       addiu     $2, $0, 0x2C
      lw         $3, 0x0($18)
      sw         $2, 0x14($3)
      lw         $2, 0x0($18)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $18, $0
  .L800B0B88:
      jal        func_800B0200
       addu      $4, $18, $0
      lw         $2, 0x138($18)
      j          .L800B0BA0
       addiu     $20, $2, 0x2
  .L800B0B9C:
      lw         $20, 0x138($18)
  .L800B0BA0:
      lw         $2, 0x20($18)
      lw         $6, 0xD8($18)
      blez       $2, .L800B0C40
       addu      $17, $0, $0
      addiu      $16, $6, 0x1C
  .L800B0BB4:
      lw         $2, -0x10($16)
      lw         $3, 0x8($16)
      mult       $2, $3
      mflo       $9
      lw         $7, 0x138($18)
      nop
      div        $zero, $9, $7
      bnez       $7, .L800B0BDC
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B0BDC:
      addiu      $1, $0, -0x1
      bne        $7, $1, .L800B0BF4
       lui       $1, (0x80000000 >> 16)
      bne        $9, $1, .L800B0BF4
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B0BF4:
      mflo       $7
      lw         $6, 0x0($16)
      nop
      mult       $6, $3
      mflo       $6
      addu       $4, $18, $0
      addiu      $5, $0, 0x1
      mult       $7, $20
      addu       $17, $17, $5
      lw         $2, 0x4($18)
      lw         $2, 0x8($2)
      mflo       $7
      jalr       $2
       addiu     $16, $16, 0x54
      sw         $2, 0x8($19)
      lw         $2, 0x20($18)
      slt        $2, $17, $2
      bnez       $2, .L800B0BB4
       addiu     $19, $19, 0x4
  .L800B0C40:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B0AE4

.globl func_800B0C60
.ent func_800B0C60
func_800B0C60:
      lw         $31, 0x6C($29)
      lw         $30, 0x68($29)
      lw         $23, 0x64($29)
      lw         $22, 0x60($29)
      lw         $21, 0x5C($29)
      lw         $20, 0x58($29)
      lw         $19, 0x54($29)
      lw         $18, 0x50($29)
.end func_800B0C60

.globl func_800B0C80
.ent func_800B0C80
func_800B0C80:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addiu      $5, $0, 0x1
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $2, 0x4($16)
      lw         $2, 0x0($2)
      lw         $17, 0x1C0($16)
      jalr       $2
       addiu     $6, $0, 0x400
      addu       $4, $16, $0
      sw         $2, 0x10($17)
      lw         $2, 0x4($16)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x400
      addu       $4, $16, $0
      sw         $2, 0x14($17)
      lw         $2, 0x4($16)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x400
      addu       $4, $16, $0
      sw         $2, 0x18($17)
      lw         $2, 0x4($4)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x400
      addu       $8, $0, $0
      lui        $12, (0x2C8D00 >> 16)
      ori        $12, $12, (0x2C8D00 & 0xFFFF)
      lui        $11, (0x5B6900 >> 16)
      ori        $11, $11, (0x5B6900 & 0xFFFF)
      lui        $10, (0xFF1DAF00 >> 16)
      ori        $10, $10, (0xFF1DAF00 & 0xFFFF)
      lui        $9, (0xFF4D0B80 >> 16)
      ori        $9, $9, (0xFF4D0B80 & 0xFFFF)
      sw         $2, 0x1C($17)
  .L800B0D28:
      sll        $4, $8, 2
      addiu      $8, $8, 0x1
      lui        $7, (0xFFFF492E >> 16)
      ori        $7, $7, (0xFFFF492E & 0xFFFF)
      lui        $2, (0x1C5A2 >> 16)
      ori        $2, $2, (0x1C5A2 & 0xFFFF)
      sra        $6, $10, 16
      addu       $10, $10, $2
      lui        $5, (0x166E9 >> 16)
      lw         $3, 0x10($17)
      sra        $2, $9, 16
      addu       $3, $4, $3
      sw         $2, 0x0($3)
      lw         $2, 0x14($17)
      ori        $5, $5, (0x166E9 & 0xFFFF)
      addu       $2, $4, $2
      sw         $6, 0x0($2)
      lw         $2, 0x18($17)
      addu       $9, $9, $5
      addu       $2, $4, $2
      sw         $11, 0x0($2)
      lw         $2, 0x1C($17)
      addu       $11, $11, $7
      addu       $4, $4, $2
      sw         $12, 0x0($4)
      slti       $2, $8, 0x100
      bnez       $2, .L800B0D28
       addiu     $12, $12, -0x581A
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B0C80

.globl func_800B0DAC
.ent func_800B0DAC
func_800B0DAC:
      lw         $3, 0x1C0($4)
      sw         $0, 0x24($3)
      lw         $2, 0x74($4)
      jr         $31
       sw        $2, 0x2C($3)
.end func_800B0DAC

.globl func_800B0DC0
.ent func_800B0DC0
func_800B0DC0:
      addiu      $29, $29, -0x38
      lw         $3, 0x50($29)
      sw         $19, 0x2C($29)
      sw         $31, 0x30($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      sw         $16, 0x20($29)
      lw         $16, 0x1C0($4)
      lw         $8, 0x48($29)
      lw         $2, 0x24($16)
      lw         $18, 0x4C($29)
      beqz       $2, .L800B0E2C
       addu      $19, $6, $0
      addiu      $4, $16, 0x20
      addu       $5, $0, $0
      addu       $7, $5, $0
      addiu      $17, $0, 0x1
      lw         $6, 0x0($18)
      addu       $2, $17, $0
      sw         $2, 0x10($29)
      lw         $2, 0x28($16)
      sll        $6, $6, 2
      addu       $6, $8, $6
      jal        func_800B8338
       sw        $2, 0x14($29)
      j          .L800B0EA8
       sw        $0, 0x24($16)
  .L800B0E2C:
      lw         $6, 0x2C($16)
      addiu      $17, $0, 0x2
      sltu       $2, $6, $17
      bnel       $2, $0, .L800B0E40
       addu      $17, $6, $0
  .L800B0E40:
      lw         $6, 0x0($18)
      subu       $3, $3, $6
      sltu       $2, $3, $17
      bnel       $2, $0, .L800B0E54
       addu      $17, $3, $0
  .L800B0E54:
      sll        $2, $6, 2
      addu       $2, $2, $8
      lw         $2, 0x0($2)
      sw         $2, 0x18($29)
      sltiu      $2, $17, 0x2
      bnez       $2, .L800B0E88
       nop
      lw         $2, 0x0($18)
      sll        $2, $2, 2
      addu       $2, $2, $8
      lw         $2, 0x4($2)
      j          .L800B0E98
       sw        $2, 0x1C($29)
  .L800B0E88:
      lw         $2, 0x20($16)
      sw         $2, 0x1C($29)
      addiu      $2, $0, 0x1
      sw         $2, 0x24($16)
  .L800B0E98:
      lw         $6, 0x0($19)
      lw         $2, 0xC($16)
      jalr       $2
       addiu     $7, $29, 0x18
  .L800B0EA8:
      lw         $2, 0x0($18)
      addu       $2, $2, $17
      sw         $2, 0x0($18)
      lw         $2, 0x2C($16)
      lw         $3, 0x24($16)
      subu       $2, $2, $17
      bnez       $3, .L800B0ED4
       sw        $2, 0x2C($16)
      lw         $2, 0x0($19)
      addiu      $2, $2, 0x1
      sw         $2, 0x0($19)
  .L800B0ED4:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800B0DC0

.globl func_800B0EF0
.ent func_800B0EF0
func_800B0EF0:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      lw         $16, 0x34($29)
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $31, 0x18($29)
      lw         $2, 0x1C0($4)
      lw         $3, 0x30($29)
      lw         $6, 0x0($17)
      lw         $7, 0x0($16)
      lw         $2, 0xC($2)
      sll        $7, $7, 2
      jalr       $2
       addu      $7, $3, $7
      lw         $2, 0x0($16)
      addiu      $2, $2, 0x1
      sw         $2, 0x0($16)
      lw         $2, 0x0($17)
      addiu      $2, $2, 0x1
      sw         $2, 0x0($17)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B0EF0

.globl func_800B0F54
.ent func_800B0F54
func_800B0F54:
      addiu      $29, $29, -0x8
      sw         $17, 0x4($29)
      addu       $17, $4, $0
      sll        $6, $6, 2
      sw         $16, 0x0($29)
      lw         $2, 0x70($17)
      lw         $7, 0x0($7)
      lw         $3, 0x4($5)
      lw         $9, 0x140($17)
      srl        $14, $2, 1
      lw         $2, 0x0($5)
      addu       $3, $6, $3
      addu       $2, $6, $2
      lw         $11, 0x0($2)
      lw         $2, 0x8($5)
      lw         $13, 0x0($3)
      addu       $6, $6, $2
      lw         $2, 0x1C0($17)
      lw         $6, 0x0($6)
      lw         $15, 0x10($2)
      lw         $16, 0x14($2)
      lw         $25, 0x18($2)
      lw         $24, 0x1C($2)
      beqz       $14, .L800B1084
       nop
      addiu      $8, $7, 0x2
  .L800B0FBC:
      lbu        $4, 0x0($13)
      addiu      $13, $13, 0x1
      lbu        $3, 0x0($6)
      addiu      $6, $6, 0x1
      lbu        $5, 0x0($11)
      sll        $3, $3, 2
      addu       $2, $3, $15
      lw         $10, 0x0($2)
      sll        $2, $4, 2
      addu       $4, $2, $24
      addu       $3, $3, $25
      addu       $2, $2, $16
      lw         $4, 0x0($4)
      lw         $3, 0x0($3)
      lw         $12, 0x0($2)
      addu       $4, $4, $3
      addu       $2, $5, $10
      addu       $2, $9, $2
      lbu        $2, 0x0($2)
      sra        $4, $4, 16
      sb         $2, 0x0($7)
      addu       $2, $5, $4
      addu       $2, $9, $2
      lbu        $2, 0x0($2)
      addiu      $11, $11, 0x1
      sb         $2, -0x1($8)
      addu       $2, $5, $12
      addu       $2, $9, $2
      lbu        $2, 0x0($2)
      addiu      $14, $14, -0x1
      sb         $2, 0x0($8)
      lbu        $5, 0x0($11)
      addiu      $7, $7, 0x3
      addu       $2, $5, $10
      addu       $2, $9, $2
      lbu        $2, 0x0($2)
      addiu      $8, $8, 0x3
      sb         $2, 0x0($7)
      addu       $2, $5, $4
      addu       $2, $9, $2
      lbu        $2, 0x0($2)
      addiu      $11, $11, 0x1
      sb         $2, -0x1($8)
      addu       $2, $5, $12
      addu       $2, $9, $2
      lbu        $2, 0x0($2)
      addiu      $7, $7, 0x3
      sb         $2, 0x0($8)
      bnez       $14, .L800B0FBC
       addiu     $8, $8, 0x3
  .L800B1084:
      lw         $2, 0x70($17)
      andi       $2, $2, 0x1
      beqz       $2, .L800B1100
       nop
      lbu        $4, 0x0($13)
      lbu        $3, 0x0($6)
      lbu        $5, 0x0($11)
      sll        $3, $3, 2
      addu       $2, $3, $15
      lw         $10, 0x0($2)
      sll        $2, $4, 2
      addu       $4, $2, $24
      addu       $3, $3, $25
      addu       $2, $2, $16
      lw         $4, 0x0($4)
      lw         $3, 0x0($3)
      lw         $12, 0x0($2)
      addu       $4, $4, $3
      addu       $2, $5, $10
      addu       $2, $9, $2
      lbu        $2, 0x0($2)
      sra        $4, $4, 16
      sb         $2, 0x0($7)
      addu       $2, $5, $4
      addu       $2, $9, $2
      lbu        $2, 0x0($2)
      sb         $2, 0x1($7)
      addu       $2, $5, $12
      addu       $2, $9, $2
      lbu        $2, 0x0($2)
      sb         $2, 0x2($7)
  .L800B1100:
      lw         $17, 0x4($29)
      lw         $16, 0x0($29)
      jr         $31
       addiu     $29, $29, 0x8
.end func_800B0F54

.globl func_800B1110
.ent func_800B1110
func_800B1110:
      addiu      $29, $29, -0x18
      sw         $20, 0x10($29)
      addu       $20, $4, $0
      sw         $19, 0xC($29)
      sw         $18, 0x8($29)
      sw         $17, 0x4($29)
      sw         $16, 0x0($29)
      lw         $10, 0x0($7)
      lw         $2, 0x70($20)
      lw         $11, 0x4($7)
      lw         $3, 0x0($5)
      lw         $7, 0x140($20)
      srl        $25, $2, 1
      sll        $2, $6, 3
      addu       $2, $2, $3
      sll        $6, $6, 2
      lw         $14, 0x0($2)
      lw         $15, 0x4($2)
      lw         $2, 0x4($5)
      lw         $3, 0x8($5)
      addu       $2, $6, $2
      addu       $6, $6, $3
      lw         $24, 0x0($2)
      lw         $2, 0x1C0($20)
      lw         $6, 0x0($6)
      lw         $16, 0x10($2)
      lw         $19, 0x14($2)
      lw         $18, 0x18($2)
      lw         $17, 0x1C($2)
      beqz       $25, .L800B12DC
       nop
      addiu      $9, $11, 0x2
      addiu      $8, $10, 0x2
  .L800B1194:
      lbu        $4, 0x0($24)
      lbu        $3, 0x0($6)
      lbu        $5, 0x0($14)
      sll        $3, $3, 2
      addu       $2, $3, $16
      lw         $12, 0x0($2)
      sll        $2, $4, 2
      addu       $4, $2, $17
      addu       $3, $3, $18
      addu       $2, $2, $19
      lw         $4, 0x0($4)
      lw         $3, 0x0($3)
      lw         $13, 0x0($2)
      addu       $4, $4, $3
      addu       $2, $5, $12
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      sra        $4, $4, 16
      sb         $2, 0x0($10)
      addu       $2, $5, $4
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      addiu      $24, $24, 0x1
      sb         $2, -0x1($8)
      addu       $2, $5, $13
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      addiu      $14, $14, 0x1
      sb         $2, 0x0($8)
      lbu        $5, 0x0($14)
      addiu      $6, $6, 0x1
      addu       $2, $5, $12
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      addiu      $10, $10, 0x3
      sb         $2, 0x0($10)
      addu       $2, $5, $4
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      addiu      $8, $8, 0x3
      sb         $2, -0x1($8)
      addu       $2, $5, $13
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      addiu      $25, $25, -0x1
      sb         $2, 0x0($8)
      lbu        $5, 0x0($15)
      addiu      $14, $14, 0x1
      addu       $2, $5, $12
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      addiu      $10, $10, 0x3
      sb         $2, 0x0($11)
      addu       $2, $5, $4
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      addiu      $8, $8, 0x3
      sb         $2, -0x1($9)
      addu       $2, $5, $13
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      addiu      $15, $15, 0x1
      sb         $2, 0x0($9)
      lbu        $5, 0x0($15)
      addiu      $11, $11, 0x3
      addu       $2, $5, $12
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      addiu      $9, $9, 0x3
      sb         $2, 0x0($11)
      addu       $2, $5, $4
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      addiu      $15, $15, 0x1
      sb         $2, -0x1($9)
      addu       $2, $5, $13
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      addiu      $11, $11, 0x3
      sb         $2, 0x0($9)
      bnez       $25, .L800B1194
       addiu     $9, $9, 0x3
  .L800B12DC:
      lw         $2, 0x70($20)
      andi       $2, $2, 0x1
      beqz       $2, .L800B138C
       nop
      lbu        $4, 0x0($24)
      lbu        $3, 0x0($6)
      lbu        $5, 0x0($14)
      sll        $3, $3, 2
      addu       $2, $3, $16
      lw         $12, 0x0($2)
      sll        $2, $4, 2
      addu       $4, $2, $17
      addu       $3, $3, $18
      addu       $2, $2, $19
      lw         $4, 0x0($4)
      lw         $3, 0x0($3)
      lw         $13, 0x0($2)
      addu       $4, $4, $3
      addu       $2, $5, $12
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      sra        $4, $4, 16
      sb         $2, 0x0($10)
      addu       $2, $5, $4
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      sb         $2, 0x1($10)
      addu       $2, $5, $13
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      sb         $2, 0x2($10)
      lbu        $5, 0x0($15)
      addu       $2, $5, $12
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      sb         $2, 0x0($11)
      addu       $2, $5, $4
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      sb         $2, 0x1($11)
      addu       $2, $5, $13
      addu       $2, $7, $2
      lbu        $2, 0x0($2)
      sb         $2, 0x2($11)
  .L800B138C:
      lw         $20, 0x10($29)
      lw         $19, 0xC($29)
      lw         $18, 0x8($29)
      lw         $17, 0x4($29)
      lw         $16, 0x0($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B1110

.globl func_800B13A8
.ent func_800B13A8
func_800B13A8:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($17)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x30
      addu       $16, $2, $0
      lui        $2, %hi(func_800B0DAC)
      addiu      $2, $2, %lo(func_800B0DAC)
      sw         $16, 0x1C0($17)
      sw         $2, 0x0($16)
      sw         $0, 0x8($16)
      lw         $3, 0x70($17)
      lw         $2, 0x78($17)
      mult       $3, $2
      mflo       $7
      sw         $7, 0x28($16)
      lw         $3, 0x134($17)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L800B1444
       lui       $2, %hi(func_800B0EF0)
      addu       $4, $17, $0
      lui        $2, %hi(func_800B0DC0)
      addiu      $2, $2, %lo(func_800B0DC0)
      sw         $2, 0x4($16)
      lui        $2, %hi(func_800B1110)
      addiu      $2, $2, %lo(func_800B1110)
      sw         $2, 0xC($16)
      lw         $2, 0x4($17)
      addu       $6, $7, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
      j          .L800B145C
       sw        $2, 0x20($16)
  .L800B1444:
      addiu      $2, $2, %lo(func_800B0EF0)
      sw         $2, 0x4($16)
      lui        $2, %hi(func_800B0F54)
      addiu      $2, $2, %lo(func_800B0F54)
      sw         $2, 0xC($16)
      sw         $0, 0x20($16)
  .L800B145C:
      jal        func_800B0C80
       addu      $4, $17, $0
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B13A8

.globl func_800B1478
.ent func_800B1478
func_800B1478:
      lw         $2, 0x40($16)
      addu       $4, $17, $0
      addiu      $29, $29, -0x38
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x34($29)
      sw         $30, 0x30($29)
      sw         $23, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x18C($18)
      lw         $21, 0x1B8($18)
      sltiu      $23, $2, 0x1
      beqz       $23, .L800B14D0
       addu      $4, $0, $0
      lw         $2, 0x190($18)
      j          .L800B14FC
       sltu      $4, $4, $2
  .L800B14D0:
      lw         $3, 0x190($18)
      slt        $2, $3, $2
      bnel       $2, $0, .L800B14EC
       addiu     $4, $0, 0x1
      slti       $2, $3, 0x40
      beql       $2, $0, .L800B14EC
       addiu     $4, $0, 0x1
  .L800B14EC:
      lw         $3, 0x144($18)
      addiu      $2, $0, 0x1
      bnel       $3, $2, .L800B14FC
       addu      $4, $2, $0
  .L800B14FC:
      lw         $2, 0x194($18)
      beqz       $2, .L800B1514
       addiu     $2, $2, -0x1
      lw         $3, 0x198($18)
      bnel       $3, $2, .L800B1514
       addiu     $4, $0, 0x1
  .L800B1514:
      lw         $2, 0x198($18)
      slti       $2, $2, 0xE
      beql       $2, $0, .L800B1524
       addiu     $4, $0, 0x1
  .L800B1524:
      beqz       $4, .L800B1574
       addiu     $2, $0, 0xD
      lw         $3, 0x0($18)
      sw         $2, 0x14($3)
      lw         $3, 0x0($18)
      lw         $2, 0x18C($18)
      sw         $2, 0x18($3)
      lw         $3, 0x0($18)
      lw         $2, 0x190($18)
      sw         $2, 0x1C($3)
      lw         $3, 0x0($18)
      lw         $2, 0x194($18)
      sw         $2, 0x20($3)
      lw         $3, 0x0($18)
      lw         $2, 0x198($18)
      sw         $2, 0x24($3)
      lw         $2, 0x0($18)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $18, $0
  .L800B1574:
      lw         $2, 0x144($18)
      blez       $2, .L800B165C
       addu      $19, $0, $0
      addiu      $30, $0, 0x6D
      addu       $22, $18, $0
  .L800B1588:
      lw         $2, 0x148($22)
      lw         $20, 0x4($2)
      lw         $3, 0xA0($18)
      sll        $2, $20, 8
      bnez       $23, .L800B15D4
       addu      $17, $3, $2
      lw         $2, 0x0($17)
      bgez       $2, .L800B15D4
       addu      $4, $18, $0
      lw         $2, 0x0($18)
      sw         $30, 0x14($2)
      lw         $2, 0x0($18)
      sw         $20, 0x18($2)
      lw         $2, 0x0($18)
      sw         $0, 0x1C($2)
      lw         $2, 0x0($18)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, -0x1
  .L800B15D4:
      lw         $16, 0x18C($18)
      lw         $2, 0x190($18)
      slt        $2, $2, $16
      bnez       $2, .L800B1648
       sll       $2, $16, 2
      addu       $17, $2, $17
  .L800B15EC:
      lw         $3, 0x0($17)
      bltzl      $3, .L800B15F8
       addu      $3, $0, $0
  .L800B15F8:
      lw         $2, 0x194($18)
      beq        $2, $3, .L800B162C
       addu      $4, $18, $0
      lw         $2, 0x0($18)
      sw         $30, 0x14($2)
      lw         $2, 0x0($18)
      sw         $20, 0x18($2)
      lw         $2, 0x0($18)
      sw         $16, 0x1C($2)
      lw         $2, 0x0($18)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, -0x1
  .L800B162C:
      lw         $2, 0x198($18)
      addiu      $16, $16, 0x1
      sw         $2, 0x0($17)
      lw         $2, 0x190($18)
      slt        $2, $2, $16
      beqz       $2, .L800B15EC
       addiu     $17, $17, 0x4
  .L800B1648:
      lw         $2, 0x144($18)
      addiu      $19, $19, 0x1
      slt        $2, $19, $2
      bnez       $2, .L800B1588
       addiu     $22, $22, 0x4
  .L800B165C:
      lw         $2, 0x194($18)
      bnez       $2, .L800B1684
       nop
      beql       $23, $0, .L800B167C
       lui       $2, %hi(func_800B1B88)
      lui        $2, %hi(func_800B18C8)
      j          .L800B169C
       addiu     $2, $2, %lo(func_800B18C8)
  .L800B167C:
      j          .L800B169C
       addiu     $2, $2, %lo(func_800B1B88)
  .L800B1684:
      beqz       $23, .L800B1694
       lui       $2, %hi(func_800B1E58)
      j          .L800B169C
       addiu     $2, $2, %lo(func_800B1E58)
  .L800B1694:
      lui        $2, %hi(func_800B1FB8)
      addiu      $2, $2, %lo(func_800B1FB8)
  .L800B169C:
      sw         $2, 0x4($21)
      lw         $2, 0x144($18)
      blez       $2, .L800B17B8
       addu      $19, $0, $0
      addiu      $22, $0, 0x2F
      addu       $20, $21, $0
      addu       $17, $18, $0
  .L800B16B8:
      lw         $6, 0x148($17)
      beqz       $23, .L800B1734
       nop
      lw         $2, 0x194($18)
      bnel       $2, $0, .L800B17A0
       sw        $0, 0x18($20)
      lw         $16, 0x14($6)
      sltiu      $2, $16, 0x4
      beqz       $2, .L800B16F0
       sll       $2, $16, 2
      addu       $2, $18, $2
      lw         $2, 0xB4($2)
      bnez       $2, .L800B1714
       addu      $4, $18, $0
  .L800B16F0:
      lw         $2, 0x0($18)
      sw         $22, 0x14($2)
      lw         $2, 0x0($18)
      sw         $16, 0x18($2)
      lw         $2, 0x0($18)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $18, $0
      addu       $4, $18, $0
  .L800B1714:
      sll        $6, $16, 2
      addu       $2, $18, $6
      lw         $5, 0xB4($2)
      addiu      $6, $6, 0x2C
      jal        func_800AF6D4
       addu      $6, $21, $6
      j          .L800B17A0
       sw        $0, 0x18($20)
  .L800B1734:
      lw         $16, 0x18($6)
      sltiu      $2, $16, 0x4
      beqz       $2, .L800B1754
       sll       $2, $16, 2
      addu       $2, $18, $2
      lw         $2, 0xC4($2)
      bnez       $2, .L800B1778
       addu      $4, $18, $0
  .L800B1754:
      lw         $2, 0x0($18)
      sw         $22, 0x14($2)
      lw         $2, 0x0($18)
      sw         $16, 0x18($2)
      lw         $2, 0x0($18)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $18, $0
      addu       $4, $18, $0
  .L800B1778:
      sll        $16, $16, 2
      addu       $2, $18, $16
      addiu      $6, $16, 0x2C
      lw         $5, 0xC4($2)
      jal        func_800AF6D4
       addu      $6, $21, $6
      addu       $16, $21, $16
      lw         $2, 0x2C($16)
      sw         $2, 0x3C($21)
      sw         $0, 0x18($20)
  .L800B17A0:
      addiu      $20, $20, 0x4
      lw         $2, 0x144($18)
      addiu      $19, $19, 0x1
      slt        $2, $19, $2
      bnez       $2, .L800B16B8
       addiu     $17, $17, 0x4
  .L800B17B8:
      slti       $2, $19, 0x4
      beqz       $2, .L800B17DC
       sll       $2, $19, 2
      addu       $3, $2, $21
  .L800B17C8:
      sw         $0, 0x18($3)
      addiu      $19, $19, 0x1
      slti       $2, $19, 0x4
      bnez       $2, .L800B17C8
       addiu     $3, $3, 0x4
  .L800B17DC:
      sw         $0, 0xC($21)
      sw         $0, 0x8($21)
      sw         $0, 0x10($21)
      sw         $0, 0x14($21)
      lw         $2, 0x114($18)
      sw         $2, 0x28($21)
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
.end func_800B1478

.globl func_800B1824
.ent func_800B1824
func_800B1824:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $17, 0x1B8($16)
      lw         $3, 0xC($17)
      lw         $4, 0x1B4($16)
      bltzl      $3, .L800B184C
       addiu     $3, $3, 0x7
  .L800B184C:
      lw         $2, 0x5C($4)
      sra        $3, $3, 3
      addu       $2, $2, $3
      sw         $2, 0x5C($4)
      sw         $0, 0xC($17)
      lw         $2, 0x1B4($16)
      lw         $2, 0x8($2)
      jalr       $2
       addu      $4, $16, $0
      beqz       $2, .L800B18B4
       addu      $2, $0, $0
      lw         $2, 0x144($16)
      blez       $2, .L800B18A0
       addu      $3, $0, $0
      addu       $4, $17, $0
  .L800B1888:
      sw         $0, 0x18($4)
      lw         $2, 0x144($16)
      addiu      $3, $3, 0x1
      slt        $2, $3, $2
      bnez       $2, .L800B1888
       addiu     $4, $4, 0x4
  .L800B18A0:
      sw         $0, 0x14($17)
      lw         $3, 0x114($16)
      addiu      $2, $0, 0x1
      sw         $0, 0x10($17)
      sw         $3, 0x28($17)
  .L800B18B4:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B1824

.globl func_800B18C8
.ent func_800B18C8
func_800B18C8:
      addiu      $29, $29, -0x78
      sw         $18, 0x58($29)
      addu       $18, $4, $0
      sw         $16, 0x50($29)
      sw         $31, 0x74($29)
      sw         $30, 0x70($29)
      sw         $23, 0x6C($29)
      sw         $22, 0x68($29)
      sw         $21, 0x64($29)
      sw         $20, 0x60($29)
      sw         $19, 0x5C($29)
      sw         $17, 0x54($29)
      lw         $17, 0x1B8($18)
      lw         $2, 0x114($18)
      lw         $30, 0x198($18)
      beqz       $2, .L800B1930
       addu      $16, $5, $0
      lw         $2, 0x28($17)
      bnel       $2, $0, .L800B1934
       sw        $18, 0x2C($29)
      jal        func_800B1824
       nop
      bnel       $2, $0, .L800B1934
       sw        $18, 0x2C($29)
      j          .L800B1B58
       addu      $2, $0, $0
  .L800B1930:
      sw         $18, 0x2C($29)
  .L800B1934:
      lw         $2, 0x14($18)
      lw         $2, 0x0($2)
      sw         $2, 0x18($29)
      lw         $2, 0x14($18)
      lw         $2, 0x4($2)
      sw         $2, 0x1C($29)
      lw         $2, 0x19C($18)
      sw         $2, 0x20($29)
      lw         $5, 0x8($17)
      lw         $6, 0xC($17)
      addiu      $2, $17, 0x10
      sw         $2, 0x30($29)
      lw         $9, 0x14($17)
      lw         $10, 0x18($17)
      lw         $11, 0x1C($17)
      lw         $12, 0x20($17)
      sw         $9, 0x38($29)
      sw         $10, 0x3C($29)
      sw         $11, 0x40($29)
      sw         $12, 0x44($29)
      lw         $9, 0x24($17)
      sw         $9, 0x48($29)
      lw         $2, 0x160($18)
      blez       $2, .L800B1AF8
       addu      $19, $0, $0
      addu       $22, $18, $0
      addu       $21, $16, $0
  .L800B19A0:
      lw         $20, 0x164($22)
      sll        $2, $20, 2
      addu       $2, $18, $2
      lw         $2, 0x148($2)
      slti       $3, $6, 0x8
      lw         $2, 0x14($2)
      lw         $23, 0x0($21)
      sll        $2, $2, 2
      addu       $2, $17, $2
      lw         $16, 0x2C($2)
      beqz       $3, .L800B19F4
       addiu     $4, $29, 0x18
      jal        func_800AF8F8
       addu      $7, $0, $0
      beqz       $2, .L800B1B58
       addu      $2, $0, $0
      lw         $6, 0x28($29)
      lw         $5, 0x24($29)
      slti       $2, $6, 0x8
      bnez       $2, .L800B1A28
       addiu     $2, $0, 0x1
  .L800B19F4:
      addiu      $2, $6, -0x8
      srav       $2, $5, $2
      andi       $3, $2, 0xFF
      sll        $2, $3, 2
      addu       $2, $16, $2
      lw         $2, 0xD4($2)
      beql       $2, $0, .L800B1A28
       addiu     $2, $0, 0x9
      subu       $6, $6, $2
      addu       $2, $16, $3
      lbu        $16, 0x4D4($2)
      j          .L800B1A4C
       nop
  .L800B1A28:
      sw         $2, 0x10($29)
      addiu      $4, $29, 0x18
      jal        func_800AFA88
       addu      $7, $16, $0
      addu       $16, $2, $0
      bltz       $16, .L800B1B58
       addu      $2, $0, $0
      lw         $5, 0x24($29)
      lw         $6, 0x28($29)
  .L800B1A4C:
      beqz       $16, .L800B1AC0
       slt       $2, $6, $16
      beqz       $2, .L800B1A74
       addiu     $4, $29, 0x18
      jal        func_800AF8F8
       addu      $7, $16, $0
      beqz       $2, .L800B1B58
       addu      $2, $0, $0
      lw         $5, 0x24($29)
      lw         $6, 0x28($29)
  .L800B1A74:
      subu       $6, $6, $16
      srav       $4, $5, $6
      addiu      $3, $0, 0x1
      sllv       $3, $3, $16
      addiu      $3, $3, -0x1
      sll        $8, $16, 2
      lui        $9, %hi(D_800F5840)
      addiu      $9, $9, %lo(D_800F5840)
      addu       $2, $8, $9
      lw         $2, 0x0($2)
      and        $7, $4, $3
      slt        $2, $7, $2
      beqz       $2, .L800B1ABC
       lui       $10, %hi(D_800F5880)
      addiu      $10, $10, %lo(D_800F5880)
      addu       $2, $8, $10
      lw         $2, 0x0($2)
      addu       $7, $7, $2
  .L800B1ABC:
      addu       $16, $7, $0
  .L800B1AC0:
      addiu      $22, $22, 0x4
      sll        $3, $20, 2
      addiu      $2, $29, 0x38
      addu       $2, $2, $3
      lw         $3, 0x4($2)
      addu       $16, $16, $3
      sw         $16, 0x4($2)
      sllv       $2, $16, $30
      sh         $2, 0x0($23)
      lw         $2, 0x160($18)
      addiu      $19, $19, 0x1
      slt        $2, $19, $2
      bnez       $2, .L800B19A0
       addiu     $21, $21, 0x4
  .L800B1AF8:
      lw         $3, 0x14($18)
      lw         $2, 0x18($29)
      sw         $2, 0x0($3)
      lw         $3, 0x14($18)
      lw         $2, 0x1C($29)
      sw         $2, 0x4($3)
      lw         $2, 0x20($29)
      sw         $2, 0x19C($18)
      sw         $5, 0x8($17)
      sw         $6, 0xC($17)
      lw         $11, 0x38($29)
      lw         $12, 0x3C($29)
      lw         $9, 0x40($29)
      lw         $10, 0x44($29)
      sw         $11, 0x14($17)
      sw         $12, 0x18($17)
      sw         $9, 0x1C($17)
      sw         $10, 0x20($17)
      lw         $11, 0x48($29)
      sw         $11, 0x24($17)
      lw         $3, 0x28($17)
      addiu      $2, $0, 0x1
      addiu      $3, $3, -0x1
      sw         $3, 0x28($17)
  .L800B1B58:
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
.end func_800B18C8

.globl func_800B1B88
.ent func_800B1B88
func_800B1B88:
      addiu      $29, $29, -0x68
      sw         $22, 0x58($29)
      addu       $22, $4, $0
      sw         $31, 0x64($29)
      sw         $30, 0x60($29)
      sw         $23, 0x5C($29)
      sw         $21, 0x54($29)
      sw         $20, 0x50($29)
      sw         $19, 0x4C($29)
      sw         $18, 0x48($29)
      sw         $17, 0x44($29)
      sw         $16, 0x40($29)
      lw         $20, 0x1B8($22)
      lw         $23, 0x190($22)
      lw         $2, 0x114($22)
      lw         $8, 0x198($22)
      addu       $16, $5, $0
      beqz       $2, .L800B1BF8
       sw        $8, 0x38($29)
      lw         $2, 0x28($20)
      bnez       $2, .L800B1BF8
       nop
      jal        func_800B1824
       nop
      bnez       $2, .L800B1BF8
       nop
  .L800B1BF0:
      j          .L800B1E28
       addu      $2, $0, $0
  .L800B1BF8:
      lw         $19, 0x14($20)
      beql       $19, $0, .L800B1C0C
       sw        $22, 0x2C($29)
      j          .L800B1E14
       addiu     $19, $19, -0x1
  .L800B1C0C:
      lw         $2, 0x14($22)
      lw         $2, 0x0($2)
      sw         $2, 0x18($29)
      lw         $2, 0x14($22)
      lw         $2, 0x4($2)
      sw         $2, 0x1C($29)
      lw         $2, 0x19C($22)
      sw         $2, 0x20($29)
      lw         $5, 0x8($20)
      lw         $6, 0xC($20)
      addiu      $2, $20, 0x10
      sw         $2, 0x30($29)
      lw         $18, 0x18C($22)
      lw         $16, 0x0($16)
      slt        $2, $23, $18
      sw         $16, 0x3C($29)
      lw         $21, 0x3C($20)
      bnez       $2, .L800B1DEC
       addiu     $30, $0, 0x1
      slti       $2, $6, 0x8
  .L800B1C5C:
      beqz       $2, .L800B1C88
       addiu     $4, $29, 0x18
      jal        func_800AF8F8
       addu      $7, $0, $0
      beqz       $2, .L800B1E28
       addu      $2, $0, $0
      lw         $6, 0x28($29)
      lw         $5, 0x24($29)
      slti       $2, $6, 0x8
      bnez       $2, .L800B1CBC
       addiu     $2, $0, 0x1
  .L800B1C88:
      addiu      $2, $6, -0x8
      srav       $2, $5, $2
      andi       $3, $2, 0xFF
      sll        $2, $3, 2
      addu       $2, $21, $2
      lw         $2, 0xD4($2)
      beql       $2, $0, .L800B1CBC
       addiu     $2, $0, 0x9
      subu       $6, $6, $2
      addu       $2, $21, $3
      lbu        $16, 0x4D4($2)
      j          .L800B1CE0
       sra       $17, $16, 4
  .L800B1CBC:
      sw         $2, 0x10($29)
      addiu      $4, $29, 0x18
      jal        func_800AFA88
       addu      $7, $21, $0
      addu       $16, $2, $0
      bltz       $16, .L800B1BF0
       sra       $17, $16, 4
      lw         $5, 0x24($29)
      lw         $6, 0x28($29)
  .L800B1CE0:
      andi       $16, $16, 0xF
      beqz       $16, .L800B1D88
       slt       $2, $6, $16
      beqz       $2, .L800B1D10
       addu      $18, $18, $17
      addiu      $4, $29, 0x18
      jal        func_800AF8F8
       addu      $7, $16, $0
      beqz       $2, .L800B1E28
       addu      $2, $0, $0
      lw         $5, 0x24($29)
      lw         $6, 0x28($29)
  .L800B1D10:
      subu       $6, $6, $16
      srav       $3, $5, $6
      sllv       $2, $30, $16
      addiu      $2, $2, -0x1
      and        $17, $3, $2
      sll        $7, $16, 2
      lui        $8, %hi(D_800F5840)
      addiu      $8, $8, %lo(D_800F5840)
      addu       $2, $7, $8
      lw         $2, 0x0($2)
      slt        $2, $17, $2
      beqz       $2, .L800B1D58
       addu      $3, $17, $0
      lui        $8, %hi(D_800F5880)
      addiu      $8, $8, %lo(D_800F5880)
      addu       $2, $7, $8
      lw         $2, 0x0($2)
      addu       $3, $17, $2
  .L800B1D58:
      sll        $2, $18, 2
      lui        $8, %hi(D_800F5C00)
      addiu      $8, $8, %lo(D_800F5C00)
      addu       $2, $2, $8
      lw         $2, 0x0($2)
      lw         $8, 0x3C($29)
      sll        $2, $2, 1
      addu       $2, $2, $8
      lw         $8, 0x38($29)
      sllv       $3, $3, $8
      j          .L800B1DDC
       sh        $3, 0x0($2)
  .L800B1D88:
      addiu      $2, $0, 0xF
      beq        $17, $2, .L800B1DDC
       addu      $18, $18, $2
      beqz       $17, .L800B1DD4
       sllv      $19, $30, $17
      slt        $2, $6, $17
      beqz       $2, .L800B1DC0
       addiu     $4, $29, 0x18
      jal        func_800AF8F8
       addu      $7, $17, $0
      beqz       $2, .L800B1E28
       addu      $2, $0, $0
      lw         $5, 0x24($29)
      lw         $6, 0x28($29)
  .L800B1DC0:
      subu       $6, $6, $17
      srav       $3, $5, $6
      addiu      $2, $19, -0x1
      and        $17, $3, $2
      addu       $19, $19, $17
  .L800B1DD4:
      j          .L800B1DEC
       addiu     $19, $19, -0x1
  .L800B1DDC:
      addiu      $18, $18, 0x1
      slt        $2, $23, $18
      beqz       $2, .L800B1C5C
       slti      $2, $6, 0x8
  .L800B1DEC:
      lw         $3, 0x14($22)
      lw         $2, 0x18($29)
      sw         $2, 0x0($3)
      lw         $3, 0x14($22)
      lw         $2, 0x1C($29)
      sw         $2, 0x4($3)
      lw         $2, 0x20($29)
      sw         $2, 0x19C($22)
      sw         $5, 0x8($20)
      sw         $6, 0xC($20)
  .L800B1E14:
      lw         $3, 0x28($20)
      addiu      $2, $0, 0x1
      sw         $19, 0x14($20)
      addiu      $3, $3, -0x1
      sw         $3, 0x28($20)
  .L800B1E28:
      lw         $31, 0x64($29)
      lw         $30, 0x60($29)
      lw         $23, 0x5C($29)
      lw         $22, 0x58($29)
      lw         $21, 0x54($29)
      lw         $20, 0x50($29)
      lw         $19, 0x4C($29)
      lw         $18, 0x48($29)
      lw         $17, 0x44($29)
      lw         $16, 0x40($29)
      jr         $31
       addiu     $29, $29, 0x68
.end func_800B1B88

.globl func_800B1E58
.ent func_800B1E58
func_800B1E58:
      addiu      $29, $29, -0x50
      sw         $20, 0x40($29)
      addu       $20, $4, $0
      sw         $17, 0x34($29)
      sw         $31, 0x48($29)
      sw         $21, 0x44($29)
      sw         $19, 0x3C($29)
      sw         $18, 0x38($29)
      sw         $16, 0x30($29)
      lw         $2, 0x198($20)
      addiu      $3, $0, 0x1
      sllv       $21, $3, $2
      lw         $2, 0x114($20)
      lw         $19, 0x1B8($20)
      beqz       $2, .L800B1EBC
       addu      $17, $5, $0
      lw         $2, 0x28($19)
      bnel       $2, $0, .L800B1EC0
       sw        $20, 0x24($29)
      jal        func_800B1824
       nop
      bnel       $2, $0, .L800B1EC0
       sw        $20, 0x24($29)
      j          .L800B1F94
       addu      $2, $0, $0
  .L800B1EBC:
      sw         $20, 0x24($29)
  .L800B1EC0:
      lw         $2, 0x14($20)
      lw         $2, 0x0($2)
      sw         $2, 0x10($29)
      lw         $2, 0x14($20)
      lw         $2, 0x4($2)
      sw         $2, 0x14($29)
      lw         $2, 0x19C($20)
      sw         $2, 0x18($29)
      lw         $5, 0x8($19)
      lw         $6, 0xC($19)
      addiu      $2, $19, 0x10
      sw         $2, 0x28($29)
      lw         $2, 0x160($20)
      blez       $2, .L800B1F5C
       addu      $16, $0, $0
      addu       $18, $17, $0
  .L800B1F00:
      lw         $17, 0x0($18)
      bgtzl      $6, .L800B1F2C
       addiu     $6, $6, -0x1
      addiu      $4, $29, 0x10
      jal        func_800AF8F8
       addiu     $7, $0, 0x1
      beqz       $2, .L800B1F94
       addu      $2, $0, $0
      lw         $5, 0x1C($29)
      lw         $6, 0x20($29)
      addiu      $6, $6, -0x1
  .L800B1F2C:
      srav       $2, $5, $6
      andi       $2, $2, 0x1
      beqz       $2, .L800B1F48
       nop
      lhu        $2, 0x0($17)
      or         $2, $2, $21
      sh         $2, 0x0($17)
  .L800B1F48:
      lw         $2, 0x160($20)
      addiu      $16, $16, 0x1
      slt        $2, $16, $2
      bnez       $2, .L800B1F00
       addiu     $18, $18, 0x4
  .L800B1F5C:
      lw         $3, 0x14($20)
      lw         $2, 0x10($29)
      sw         $2, 0x0($3)
      lw         $3, 0x14($20)
      lw         $2, 0x14($29)
      sw         $2, 0x4($3)
      lw         $2, 0x18($29)
      sw         $2, 0x19C($20)
      lw         $3, 0x28($19)
      addiu      $2, $0, 0x1
      sw         $5, 0x8($19)
      sw         $6, 0xC($19)
      addiu      $3, $3, -0x1
      sw         $3, 0x28($19)
  .L800B1F94:
      lw         $31, 0x48($29)
      lw         $21, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_800B1E58

.globl func_800B1FB8
.ent func_800B1FB8
func_800B1FB8:
      addiu      $29, $29, -0x180
      sw         $31, 0x17C($29)
      sw         $30, 0x178($29)
      sw         $23, 0x174($29)
      sw         $22, 0x170($29)
      sw         $21, 0x16C($29)
      sw         $20, 0x168($29)
      sw         $19, 0x164($29)
      sw         $18, 0x160($29)
      sw         $17, 0x15C($29)
      sw         $16, 0x158($29)
      sw         $4, 0x180($29)
      lw         $3, 0x198($4)
      addiu      $2, $0, 0x1
      sllv       $2, $2, $3
      sw         $2, 0x140($29)
      addiu      $2, $0, -0x1
      sllv       $2, $2, $3
      sw         $2, 0x144($29)
      lw         $8, 0x1B8($4)
      sw         $8, 0x138($29)
      lw         $2, 0x114($4)
      lw         $9, 0x190($4)
      addu       $17, $5, $0
      beqz       $2, .L800B203C
       sw        $9, 0x13C($29)
      lw         $2, 0x28($8)
      bnez       $2, .L800B203C
       nop
      jal        func_800B1824
       nop
      beqz       $2, .L800B2494
       addu      $2, $0, $0
  .L800B203C:
      lw         $8, 0x180($29)
      sw         $8, 0x2C($29)
      lw         $2, 0x14($8)
      lw         $2, 0x0($2)
      sw         $2, 0x18($29)
      lw         $2, 0x14($8)
      lw         $9, 0x138($29)
      lw         $2, 0x4($2)
      sw         $2, 0x1C($29)
      lw         $2, 0x19C($8)
      sw         $2, 0x20($29)
      lw         $20, 0x8($9)
      lw         $16, 0xC($9)
      addiu      $2, $9, 0x10
      sw         $2, 0x30($29)
      lw         $8, 0x14($9)
      lw         $9, 0x180($29)
      sw         $8, 0x148($29)
      lw         $22, 0x18C($9)
      lw         $17, 0x0($17)
      lw         $8, 0x138($29)
      lw         $9, 0x148($29)
      sw         $17, 0x14C($29)
      lw         $8, 0x3C($8)
      addu       $30, $0, $0
      bnez       $9, .L800B2350
       sw        $8, 0x150($29)
      lw         $8, 0x13C($29)
      slt        $2, $8, $22
      bnez       $2, .L800B2344
       sll       $2, $22, 2
      lui        $9, %hi(D_800F5C00)
      addiu      $9, $9, %lo(D_800F5C00)
      addu       $23, $2, $9
  .L800B20C4:
      slti       $2, $16, 0x8
      beqz       $2, .L800B20FC
       addiu     $4, $29, 0x18
      addu       $5, $20, $0
      addu       $6, $16, $0
      jal        func_800AF8F8
       addu      $7, $0, $0
      beqz       $2, .L800B2460
       nop
      lw         $16, 0x28($29)
      lw         $20, 0x24($29)
      slti       $2, $16, 0x8
      bnez       $2, .L800B2134
       addiu     $2, $0, 0x1
  .L800B20FC:
      addiu      $2, $16, -0x8
      srav       $2, $20, $2
      andi       $3, $2, 0xFF
      lw         $8, 0x150($29)
      sll        $2, $3, 2
      addu       $2, $8, $2
      lw         $2, 0xD4($2)
      beql       $2, $0, .L800B2134
       addiu     $2, $0, 0x9
      subu       $16, $16, $2
      addu       $2, $8, $3
      lbu        $18, 0x4D4($2)
      j          .L800B2160
       sra       $19, $18, 4
  .L800B2134:
      addiu      $4, $29, 0x18
      addu       $5, $20, $0
      lw         $7, 0x150($29)
      addu       $6, $16, $0
      jal        func_800AFA88
       sw        $2, 0x10($29)
      addu       $18, $2, $0
      bltz       $18, .L800B2460
       sra       $19, $18, 4
      lw         $20, 0x24($29)
      lw         $16, 0x28($29)
  .L800B2160:
      andi       $18, $18, 0xF
      beqz       $18, .L800B21E4
       addiu     $9, $0, 0x1
      beq        $18, $9, .L800B2194
       addiu     $2, $0, 0x70
      lw         $8, 0x180($29)
      lw         $3, 0x0($8)
      sw         $2, 0x14($3)
      lw         $2, 0x0($8)
      lw         $4, 0x180($29)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, -0x1
  .L800B2194:
      bgtzl      $16, .L800B21C4
       addiu     $16, $16, -0x1
      addiu      $4, $29, 0x18
      addu       $5, $20, $0
      addu       $6, $16, $0
      jal        func_800AF8F8
       addiu     $7, $0, 0x1
      beqz       $2, .L800B2460
       nop
      lw         $20, 0x24($29)
      lw         $16, 0x28($29)
      addiu      $16, $16, -0x1
  .L800B21C4:
      lw         $18, 0x144($29)
      srav       $2, $20, $16
      andi       $2, $2, 0x1
      beqz       $2, .L800B2244
       sll       $2, $22, 2
      lw         $18, 0x140($29)
      j          .L800B224C
       lui       $9, %hi(D_800F5C00)
  .L800B21E4:
      addiu      $2, $0, 0xF
      beq        $19, $2, .L800B2244
       sllv      $9, $9, $19
      beqz       $19, .L800B2344
       sw        $9, 0x148($29)
      slt        $2, $16, $19
      beqz       $2, .L800B2224
       addiu     $4, $29, 0x18
      addu       $5, $20, $0
      addu       $6, $16, $0
      jal        func_800AF8F8
       addu      $7, $19, $0
      beqz       $2, .L800B2460
       nop
      lw         $20, 0x24($29)
      lw         $16, 0x28($29)
  .L800B2224:
      subu       $16, $16, $19
      lw         $8, 0x148($29)
      srav       $3, $20, $16
      addiu      $2, $8, -0x1
      and        $19, $3, $2
      addu       $8, $8, $19
      j          .L800B2344
       sw        $8, 0x148($29)
  .L800B2244:
      sll        $2, $22, 2
      lui        $9, %hi(D_800F5C00)
  .L800B224C:
      addiu      $9, $9, %lo(D_800F5C00)
      addu       $21, $2, $9
  .L800B2254:
      lw         $2, 0x0($21)
      lw         $8, 0x14C($29)
      sll        $2, $2, 1
      addu       $17, $8, $2
      lh         $2, 0x0($17)
      beql       $2, $0, .L800B22E8
       addiu     $19, $19, -0x1
      bgtzl      $16, .L800B22A0
       addiu     $16, $16, -0x1
      addiu      $4, $29, 0x18
      addu       $5, $20, $0
      addu       $6, $16, $0
      jal        func_800AF8F8
       addiu     $7, $0, 0x1
      beqz       $2, .L800B2460
       nop
      lw         $20, 0x24($29)
      lw         $16, 0x28($29)
      addiu      $16, $16, -0x1
  .L800B22A0:
      srav       $2, $20, $16
      andi       $2, $2, 0x1
      beql       $2, $0, .L800B22F4
       addiu     $21, $21, 0x4
      lh         $4, 0x0($17)
      lw         $9, 0x140($29)
      lhu        $3, 0x0($17)
      and        $2, $4, $9
      bnel       $2, $0, .L800B22F4
       addiu     $21, $21, 0x4
      bltz       $4, .L800B22D8
       addu      $2, $3, $9
      j          .L800B22F0
       sh        $2, 0x0($17)
  .L800B22D8:
      lw         $8, 0x144($29)
      addu       $2, $3, $8
      j          .L800B22F0
       sh        $2, 0x0($17)
  .L800B22E8:
      bltz       $19, .L800B2308
       nop
  .L800B22F0:
      addiu      $21, $21, 0x4
  .L800B22F4:
      lw         $9, 0x13C($29)
      addiu      $22, $22, 0x1
      slt        $2, $9, $22
      beqz       $2, .L800B2254
       addiu     $23, $23, 0x4
  .L800B2308:
      beqz       $18, .L800B2330
       sll       $4, $30, 2
      addiu      $30, $30, 0x1
      lw         $3, 0x0($23)
      lw         $8, 0x14C($29)
      sll        $2, $3, 1
      addu       $2, $2, $8
      sh         $18, 0x0($2)
      addu       $2, $29, $4
      sw         $3, 0x38($2)
  .L800B2330:
      lw         $9, 0x13C($29)
      addiu      $22, $22, 0x1
      slt        $2, $9, $22
      beqz       $2, .L800B20C4
       addiu     $23, $23, 0x4
  .L800B2344:
      lw         $8, 0x148($29)
      beqz       $8, .L800B2414
       nop
  .L800B2350:
      lw         $9, 0x13C($29)
      slt        $2, $9, $22
      bnez       $2, .L800B2408
       lui       $2, %hi(D_800F5C00)
      addiu      $2, $2, %lo(D_800F5C00)
      sll        $3, $22, 2
      addu       $18, $3, $2
  .L800B236C:
      lw         $2, 0x0($18)
      lw         $8, 0x14C($29)
      sll        $2, $2, 1
      addu       $17, $8, $2
      lh         $2, 0x0($17)
      beqz       $2, .L800B23F4
       nop
      bgtzl      $16, .L800B23B8
       addiu     $16, $16, -0x1
      addiu      $4, $29, 0x18
      addu       $5, $20, $0
      addu       $6, $16, $0
      jal        func_800AF8F8
       addiu     $7, $0, 0x1
      beqz       $2, .L800B2460
       nop
      lw         $20, 0x24($29)
      lw         $16, 0x28($29)
      addiu      $16, $16, -0x1
  .L800B23B8:
      srav       $2, $20, $16
      andi       $2, $2, 0x1
      beqz       $2, .L800B23F4
       nop
      lh         $4, 0x0($17)
      lw         $9, 0x140($29)
      lhu        $3, 0x0($17)
      and        $2, $4, $9
      bnez       $2, .L800B23F4
       nop
      bgez       $4, .L800B23F0
       addu      $2, $3, $9
      lw         $8, 0x144($29)
      addu       $2, $3, $8
  .L800B23F0:
      sh         $2, 0x0($17)
  .L800B23F4:
      lw         $9, 0x13C($29)
      addiu      $22, $22, 0x1
      slt        $2, $9, $22
      beqz       $2, .L800B236C
       addiu     $18, $18, 0x4
  .L800B2408:
      lw         $8, 0x148($29)
      addiu      $8, $8, -0x1
      sw         $8, 0x148($29)
  .L800B2414:
      lw         $9, 0x180($29)
      lw         $2, 0x18($29)
      lw         $3, 0x14($9)
      sw         $2, 0x0($3)
      lw         $3, 0x14($9)
      lw         $2, 0x1C($29)
      sw         $2, 0x4($3)
      lw         $2, 0x20($29)
      sw         $2, 0x19C($9)
      lw         $8, 0x138($29)
      lw         $3, 0x28($8)
      addiu      $2, $0, 0x1
      sw         $20, 0x8($8)
      sw         $16, 0xC($8)
      lw         $9, 0x148($29)
      addiu      $3, $3, -0x1
      sw         $9, 0x14($8)
      j          .L800B2494
       sw        $3, 0x28($8)
  .L800B2460:
      blez       $30, .L800B2490
       sll       $2, $30, 2
      addiu      $3, $29, 0x38
      addu       $3, $2, $3
  .L800B2470:
      addiu      $3, $3, -0x4
      addiu      $30, $30, -0x1
      lw         $2, 0x0($3)
      lw         $8, 0x14C($29)
      sll        $2, $2, 1
      addu       $2, $2, $8
      bgtz       $30, .L800B2470
       sh        $0, 0x0($2)
  .L800B2490:
      addu       $2, $0, $0
  .L800B2494:
      lw         $31, 0x17C($29)
      lw         $30, 0x178($29)
      lw         $23, 0x174($29)
      lw         $22, 0x170($29)
      lw         $21, 0x16C($29)
      lw         $20, 0x168($29)
      lw         $19, 0x164($29)
      lw         $18, 0x160($29)
      lw         $17, 0x15C($29)
      lw         $16, 0x158($29)
      jr         $31
       addiu     $29, $29, 0x180
.end func_800B1FB8

.globl func_800B24C4
.ent func_800B24C4
func_800B24C4:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x4($16)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x40
      addiu      $4, $0, 0x3
      addiu      $5, $2, 0xC
      lui        $3, %hi(func_800B1478 + 0x8)
      addiu      $3, $3, %lo(func_800B1478 + 0x8)
      sw         $2, 0x1B8($16)
      sw         $3, 0x0($2)
  .L800B2500:
      sw         $0, 0x2C($5)
      addiu      $4, $4, -0x1
      bgez       $4, .L800B2500
       addiu     $5, $5, -0x4
      lw         $2, 0x4($16)
      addiu      $5, $0, 0x1
      addu       $4, $16, $0
      lw         $6, 0x20($16)
      lw         $2, 0x0($2)
      jalr       $2
       sll       $6, $6, 8
      addu       $3, $2, $0
      lw         $2, 0x20($16)
      addu       $5, $0, $0
      blez       $2, .L800B256C
       sw        $3, 0xA0($16)
      addiu      $6, $0, -0x1
      addiu      $4, $0, 0x3F
  .L800B2548:
      sw         $6, 0x0($3)
      addiu      $4, $4, -0x1
      bgez       $4, .L800B2548
       addiu     $3, $3, 0x4
      lw         $2, 0x20($16)
      addiu      $5, $5, 0x1
      slt        $2, $5, $2
      bnel       $2, $0, .L800B2548
       addiu     $4, $0, 0x3F
  .L800B256C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B24C4

.globl func_800B257C
.ent func_800B257C
func_800B257C:
      addiu      $3, $0, 0x1
      addiu      $29, $29, -0x20
      addiu      $2, $0, 0x2
      sw         $31, 0x1C($29)
      sw         $16, 0x18($29)
      lw         $16, 0x1AC($4)
      beq        $5, $2, .L800B2650
       sltiu     $2, $5, 0x3
      beqz       $2, .L800B25B4
       addiu     $2, $0, 0x3
      beqz       $5, .L800B25C4
       nop
      j          .L800B2688
       nop
  .L800B25B4:
      beq        $5, $2, .L800B2618
       nop
      j          .L800B2688
       nop
  .L800B25C4:
      lw         $2, 0x54($4)
      beqz       $2, .L800B2608
       lui       $2, %hi(func_800B26BC)
      lw         $3, 0xC($16)
      addiu      $2, $2, %lo(func_800B26BC)
      bnez       $3, .L800B26A4
       sw        $2, 0x4($16)
      lw         $2, 0x4($4)
      addiu      $3, $0, 0x1
      sw         $3, 0x10($29)
      lw         $5, 0x8($16)
      lw         $7, 0x10($16)
      lw         $2, 0x1C($2)
      jalr       $2
       addu      $6, $0, $0
      j          .L800B26A4
       sw        $2, 0xC($16)
  .L800B2608:
      lw         $2, 0x1C0($4)
      lw         $2, 0x4($2)
      j          .L800B26A4
       sw        $2, 0x4($16)
  .L800B2618:
      lw         $2, 0x8($16)
      bnez       $2, .L800B2644
       lui       $2, %hi(func_800B2778)
      lw         $3, 0x0($4)
      addiu      $2, $0, 0x4
      sw         $2, 0x14($3)
      lw         $2, 0x0($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
      lui        $2, %hi(func_800B2778)
  .L800B2644:
      addiu      $2, $2, %lo(func_800B2778)
      j          .L800B26A4
       sw        $2, 0x4($16)
  .L800B2650:
      lw         $2, 0x8($16)
      bnez       $2, .L800B267C
       lui       $2, %hi(func_800B28A8)
      lw         $3, 0x0($4)
      addiu      $2, $0, 0x4
      sw         $2, 0x14($3)
      lw         $2, 0x0($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
      lui        $2, %hi(func_800B28A8)
  .L800B267C:
      addiu      $2, $2, %lo(func_800B28A8)
      j          .L800B26A4
       sw        $2, 0x4($16)
  .L800B2688:
      lw         $3, 0x0($4)
      addiu      $2, $0, 0x4
      sw         $2, 0x14($3)
      lw         $2, 0x0($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800B26A4:
      sw         $0, 0x18($16)
      sw         $0, 0x14($16)
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B257C

.globl func_800B26BC
.ent func_800B26BC
func_800B26BC:
      addiu      $29, $29, -0x38
      sw         $17, 0x2C($29)
      addu       $17, $4, $0
      sw         $18, 0x30($29)
      lw         $18, 0x4C($29)
      lw         $3, 0x50($29)
      sw         $31, 0x34($29)
      sw         $16, 0x28($29)
      lw         $16, 0x1AC($17)
      lw         $2, 0x0($18)
      lw         $4, 0x10($16)
      subu       $8, $3, $2
      sltu       $2, $4, $8
      beqz       $2, .L800B26FC
       addu      $9, $7, $0
      addu       $8, $4, $0
  .L800B26FC:
      addu       $4, $17, $0
      sw         $0, 0x20($29)
      lw         $7, 0x1C0($17)
      lw         $3, 0xC($16)
      addiu      $2, $29, 0x20
      sw         $2, 0x14($29)
      sw         $8, 0x18($29)
      sw         $3, 0x10($29)
      lw         $2, 0x4($7)
      jalr       $2
       addu      $7, $9, $0
      addu       $4, $17, $0
      lw         $5, 0xC($16)
      lw         $7, 0x20($29)
      lw         $2, 0x0($18)
      lw         $3, 0x1C8($4)
      lw         $6, 0x48($29)
      sll        $2, $2, 2
      lw         $3, 0x4($3)
      jalr       $3
       addu      $6, $6, $2
      lw         $2, 0x0($18)
      lw         $3, 0x20($29)
      addu       $2, $2, $3
      sw         $2, 0x0($18)
      lw         $31, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800B26BC

.globl func_800B2778
.ent func_800B2778
func_800B2778:
      addiu      $29, $29, -0x40
      sw         $19, 0x2C($29)
      addu       $19, $4, $0
      sw         $16, 0x20($29)
      addu       $16, $5, $0
      sw         $20, 0x30($29)
      addu       $20, $6, $0
      sw         $31, 0x3C($29)
      sw         $22, 0x38($29)
      sw         $21, 0x34($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      lw         $17, 0x1AC($19)
      lw         $2, 0x18($17)
      lw         $22, 0x54($29)
      bnez       $2, .L800B27E4
       addu      $21, $7, $0
      lw         $2, 0x4($19)
      addiu      $3, $0, 0x1
      sw         $3, 0x10($29)
      lw         $5, 0x8($17)
      lw         $6, 0x14($17)
      lw         $7, 0x10($17)
      lw         $2, 0x1C($2)
      jalr       $2
       nop
      sw         $2, 0xC($17)
  .L800B27E4:
      addu       $4, $19, $0
      addu       $5, $16, $0
      lw         $18, 0x18($17)
      lw         $7, 0x1C0($19)
      lw         $3, 0xC($17)
      addiu      $2, $17, 0x18
      sw         $2, 0x14($29)
      sw         $3, 0x10($29)
      lw         $2, 0x10($17)
      addu       $6, $20, $0
      sw         $2, 0x18($29)
      lw         $2, 0x4($7)
      jalr       $2
       addu      $7, $21, $0
      lw         $16, 0x18($17)
      sltu       $2, $18, $16
      beqz       $2, .L800B285C
       addu      $4, $19, $0
      addu       $6, $0, $0
      subu       $16, $16, $18
      addu       $7, $16, $0
      sll        $3, $18, 2
      lw         $2, 0x1C8($4)
      lw         $5, 0xC($17)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $5, $3
      lw         $2, 0x0($22)
      addu       $2, $2, $16
      sw         $2, 0x0($22)
  .L800B285C:
      lw         $2, 0x18($17)
      lw         $3, 0x10($17)
      sltu       $2, $2, $3
      bnez       $2, .L800B2880
       nop
      lw         $2, 0x14($17)
      sw         $0, 0x18($17)
      addu       $2, $2, $3
      sw         $2, 0x14($17)
  .L800B2880:
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
.end func_800B2778

.globl func_800B28A8
.ent func_800B28A8
func_800B28A8:
      addiu      $29, $29, -0x30
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $31, 0x28($29)
      sw         $19, 0x24($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      lw         $16, 0x1AC($18)
      lw         $2, 0x18($16)
      lw         $19, 0x44($29)
      bnez       $2, .L800B28FC
       nop
      lw         $2, 0x4($18)
      sw         $0, 0x10($29)
      lw         $5, 0x8($16)
      lw         $6, 0x14($16)
      lw         $7, 0x10($16)
      lw         $2, 0x1C($2)
      jalr       $2
       nop
      sw         $2, 0xC($16)
  .L800B28FC:
      lw         $2, 0x10($16)
      lw         $8, 0x18($16)
      lw         $5, 0x0($19)
      subu       $17, $2, $8
      lw         $2, 0x48($29)
      subu       $3, $2, $5
      sltu       $2, $3, $17
      bnel       $2, $0, .L800B2920
       addu      $17, $3, $0
  .L800B2920:
      lw         $2, 0x74($18)
      lw         $3, 0x14($16)
      subu       $3, $2, $3
      sltu       $2, $3, $17
      bnel       $2, $0, .L800B2938
       addu      $17, $3, $0
  .L800B2938:
      addu       $4, $18, $0
      sll        $2, $5, 2
      addu       $7, $17, $0
      lw         $6, 0x40($29)
      sll        $3, $8, 2
      addu       $6, $6, $2
      lw         $2, 0x1C8($4)
      lw         $5, 0xC($16)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $5, $3
      lw         $2, 0x0($19)
      addu       $2, $2, $17
      sw         $2, 0x0($19)
      lw         $2, 0x18($16)
      lw         $3, 0x10($16)
      addu       $2, $2, $17
      sw         $2, 0x18($16)
      sltu       $2, $2, $3
      bnez       $2, .L800B299C
       nop
      lw         $2, 0x14($16)
      sw         $0, 0x18($16)
      addu       $2, $2, $3
      sw         $2, 0x14($16)
  .L800B299C:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800B28A8

.globl func_800B29B8
.ent func_800B29B8
func_800B29B8:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $31, 0x24($29)
      sw         $17, 0x1C($29)
      lw         $2, 0x4($16)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x1C
      addu       $17, $2, $0
      lui        $2, %hi(func_800B257C + 0x4)
      addiu      $2, $2, %lo(func_800B257C + 0x4)
      sw         $17, 0x1AC($16)
      sw         $2, 0x0($17)
      sw         $0, 0x8($17)
      sw         $0, 0xC($17)
      lw         $2, 0x54($16)
      beqz       $2, .L800B2A8C
       nop
      lw         $7, 0x134($16)
      beqz       $18, .L800B2A64
       sw        $7, 0x10($17)
      lw         $4, 0x74($16)
      jal        func_800B82FC
       addu      $5, $7, $0
      lw         $6, 0x4($16)
      lw         $3, 0x70($16)
      lw         $7, 0x78($16)
      addu       $4, $16, $0
      sw         $2, 0x10($29)
      lw         $2, 0x10($17)
      mult       $3, $7
      addiu      $5, $0, 0x1
      sw         $2, 0x14($29)
      lw         $2, 0x10($6)
      mflo       $7
      jalr       $2
       addu      $6, $0, $0
      j          .L800B2A8C
       sw        $2, 0x8($17)
  .L800B2A64:
      lw         $2, 0x70($16)
      lw         $6, 0x78($16)
      mult       $2, $6
      addu       $4, $16, $0
      lw         $2, 0x4($4)
      lw         $2, 0x8($2)
      mflo       $6
      jalr       $2
       addiu     $5, $0, 0x1
      sw         $2, 0xC($17)
  .L800B2A8C:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B29B8

.globl func_800B2AA4
.ent func_800B2AA4
func_800B2AA4:
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_800B2AA4

.globl func_800B2AB8
.ent func_800B2AB8
func_800B2AB8:
      addiu      $29, $29, -0x180
      sw         $31, 0x17C($29)
      lw         $3, 0x1C0($4)
      lw         $2, 0x134($4)
      sw         $2, 0x5C($3)
      lw         $2, 0x74($4)
      jr         $31
       sw        $2, 0x60($3)
.end func_800B2AB8

.globl func_800B2AD8
.ent func_800B2AD8
func_800B2AD8:
      addiu      $29, $29, -0x40
      sw         $22, 0x30($29)
      addu       $22, $4, $0
      sw         $31, 0x3C($29)
      sw         $30, 0x38($29)
      sw         $23, 0x34($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      sw         $6, 0x48($29)
      lw         $19, 0x1C0($22)
      lw         $3, 0x134($22)
      lw         $23, 0x58($29)
      lw         $2, 0x5C($19)
      lw         $30, 0x54($29)
      slt        $2, $2, $3
      bnez       $2, .L800B2BA4
       nop
      lw         $2, 0x20($22)
      lw         $21, 0xD8($22)
      blez       $2, .L800B2B9C
       addu      $17, $0, $0
      addiu      $20, $0, 0xC
      addu       $18, $5, $0
      addu       $16, $19, $0
  .L800B2B48:
      addu       $4, $22, $0
      addu       $5, $21, $0
      addu       $7, $19, $20
      addiu      $20, $20, 0x4
      lw         $8, 0x48($29)
      lw         $2, 0x64($16)
      lw         $3, 0x0($8)
      addiu      $17, $17, 0x1
      mult       $3, $2
      lw         $3, 0x0($18)
      addiu      $18, $18, 0x4
      lw         $2, 0x34($16)
      addiu      $16, $16, 0x4
      mflo       $8
      sll        $6, $8, 2
      jalr       $2
       addu      $6, $3, $6
      lw         $2, 0x20($22)
      slt        $2, $17, $2
      bnez       $2, .L800B2B48
       addiu     $21, $21, 0x54
  .L800B2B9C:
      sw         $0, 0x5C($19)
      lw         $3, 0x134($22)
  .L800B2BA4:
      lw         $2, 0x5C($19)
      lw         $4, 0x60($19)
      subu       $16, $3, $2
      sltu       $2, $4, $16
      bnel       $2, $0, .L800B2BBC
       addu      $16, $4, $0
  .L800B2BBC:
      lw         $7, 0x0($30)
      subu       $23, $23, $7
      sltu       $2, $23, $16
      bnel       $2, $0, .L800B2BD0
       addu      $16, $23, $0
  .L800B2BD0:
      addu       $4, $22, $0
      addiu      $5, $19, 0xC
      lw         $3, 0x1C4($22)
      sll        $2, $7, 2
      sw         $16, 0x10($29)
      lw         $6, 0x5C($19)
      lw         $7, 0x50($29)
      lw         $3, 0x4($3)
      jalr       $3
       addu      $7, $7, $2
      lw         $2, 0x0($30)
      addu       $2, $2, $16
      sw         $2, 0x0($30)
      lw         $2, 0x60($19)
      lw         $3, 0x5C($19)
      subu       $2, $2, $16
      addu       $3, $3, $16
      sw         $2, 0x60($19)
      sw         $3, 0x5C($19)
      lw         $2, 0x134($22)
      slt        $3, $3, $2
      bnez       $3, .L800B2C3C
       nop
      lw         $8, 0x48($29)
      lw         $2, 0x0($8)
      addiu      $2, $2, 0x1
      sw         $2, 0x0($8)
  .L800B2C3C:
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
.end func_800B2AD8

.globl func_800B2C6C
.ent func_800B2C6C
func_800B2C6C:
      jr         $31
       sw        $6, 0x0($7)
.end func_800B2C6C

.globl func_800B2C74
.ent func_800B2C74
func_800B2C74:
      jr         $31
       sw        $0, 0x0($7)
.end func_800B2C74

.globl func_800B2C7C
.ent func_800B2C7C
func_800B2C7C:
      addiu      $29, $29, -0x40
      sw         $20, 0x28($29)
      addu       $20, $4, $0
      sw         $16, 0x18($29)
      sw         $31, 0x3C($29)
      sw         $30, 0x38($29)
      sw         $23, 0x34($29)
      sw         $22, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      lw         $2, 0x1C0($20)
      lw         $3, 0x4($5)
      lw         $21, 0x0($7)
      addu       $2, $2, $3
      lbu        $22, 0x8C($2)
      lw         $3, 0x134($20)
      lbu        $19, 0x96($2)
      blez       $3, .L800B2D64
       addu      $16, $0, $0
      slti       $30, $19, 0x2
      addiu      $23, $19, -0x1
      addu       $18, $21, $0
      addu       $17, $6, $0
  .L800B2CE0:
      lw         $3, 0x0($18)
      lw         $2, 0x70($20)
      lw         $4, 0x0($17)
      addu       $6, $3, $2
  .L800B2CF0:
      sltu       $2, $3, $6
  .L800B2CF4:
      beqz       $2, .L800B2D20
       addu      $2, $22, $0
      lbu        $5, 0x0($4)
      blez       $2, .L800B2CF0
       addiu     $4, $4, 0x1
  .L800B2D08:
      sb         $5, 0x0($3)
      addiu      $2, $2, -0x1
      bgtz       $2, .L800B2D08
       addiu     $3, $3, 0x1
      j          .L800B2CF4
       sltu      $2, $3, $6
  .L800B2D20:
      bnez       $30, .L800B2D4C
       sll       $2, $19, 2
      addu       $4, $21, $0
      addu       $5, $16, $0
      addu       $6, $21, $0
      sw         $23, 0x10($29)
      lw         $2, 0x70($20)
      addiu      $7, $16, 0x1
      jal        func_800B8338
       sw        $2, 0x14($29)
      sll        $2, $19, 2
  .L800B2D4C:
      addu       $18, $18, $2
      lw         $2, 0x134($20)
      addu       $16, $16, $19
      slt        $2, $16, $2
      bnez       $2, .L800B2CE0
       addiu     $17, $17, 0x4
  .L800B2D64:
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
.end func_800B2C7C

.globl func_800B2D94
.ent func_800B2D94
func_800B2D94:
      lw         $2, 0x134($4)
      lw         $7, 0x0($7)
      blez       $2, .L800B2DF8
       addu      $9, $0, $0
  .L800B2DA4:
      lw         $3, 0x0($7)
      lw         $2, 0x70($4)
      lw         $5, 0x0($6)
      addu       $8, $3, $2
      sltu       $2, $3, $8
      beql       $2, $0, .L800B2DE4
       addiu     $7, $7, 0x4
  .L800B2DC0:
      lbu        $2, 0x0($5)
      sb         $2, 0x0($3)
      addiu      $3, $3, 0x1
      sb         $2, 0x0($3)
      addiu      $3, $3, 0x1
      sltu       $2, $3, $8
      bnez       $2, .L800B2DC0
       addiu     $5, $5, 0x1
      addiu      $7, $7, 0x4
  .L800B2DE4:
      lw         $2, 0x134($4)
      addiu      $9, $9, 0x1
      slt        $2, $9, $2
      bnez       $2, .L800B2DA4
       addiu     $6, $6, 0x4
  .L800B2DF8:
      jr         $31
       nop
.end func_800B2D94

.globl func_800B2E00
.ent func_800B2E00
func_800B2E00:
      addiu      $29, $29, -0x38
      sw         $20, 0x28($29)
      addu       $20, $4, $0
      sw         $16, 0x18($29)
      sw         $31, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      lw         $2, 0x134($20)
      lw         $19, 0x0($7)
      blez       $2, .L800B2EB8
       addu      $16, $0, $0
      addiu      $21, $0, 0x1
      addu       $18, $19, $0
      addu       $17, $6, $0
  .L800B2E40:
      lw         $3, 0x0($18)
      lw         $2, 0x70($20)
      lw         $4, 0x0($17)
      addu       $5, $3, $2
      sltu       $2, $3, $5
      beql       $2, $0, .L800B2E80
       addiu     $17, $17, 0x4
  .L800B2E5C:
      lbu        $2, 0x0($4)
      sb         $2, 0x0($3)
      addiu      $3, $3, 0x1
      sb         $2, 0x0($3)
      addiu      $3, $3, 0x1
      sltu       $2, $3, $5
      bnez       $2, .L800B2E5C
       addiu     $4, $4, 0x1
      addiu      $17, $17, 0x4
  .L800B2E80:
      addiu      $18, $18, 0x8
      addu       $4, $19, $0
      addu       $5, $16, $0
      addu       $6, $19, $0
      sw         $21, 0x10($29)
      lw         $2, 0x70($20)
      addiu      $7, $16, 0x1
      jal        func_800B8338
       sw        $2, 0x14($29)
      lw         $2, 0x134($20)
      addiu      $16, $16, 0x2
      slt        $2, $16, $2
      bnez       $2, .L800B2E40
       nop
  .L800B2EB8:
      lw         $31, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800B2E00

.globl func_800B2EDC
.ent func_800B2EDC
func_800B2EDC:
      addu       $12, $4, $0
      lw         $2, 0x134($12)
      lw         $7, 0x0($7)
      blez       $2, .L800B2FB8
       addu      $11, $0, $0
  .L800B2EF0:
      lw         $9, 0x0($6)
      lw         $8, 0x0($7)
      lbu        $4, 0x0($9)
      addiu      $9, $9, 0x1
      sb         $4, 0x0($8)
      addiu      $8, $8, 0x1
      sll        $2, $4, 1
      lbu        $3, 0x0($9)
      addu       $2, $2, $4
      addu       $2, $2, $3
      addiu      $2, $2, 0x2
      sra        $2, $2, 2
      sb         $2, 0x0($8)
      lw         $2, 0x28($5)
      addiu      $10, $2, -0x2
      beqz       $10, .L800B2F7C
       addiu     $8, $8, 0x1
  .L800B2F34:
      lbu        $4, 0x0($9)
      addiu      $9, $9, 0x1
      addiu      $10, $10, -0x1
      lbu        $2, -0x2($9)
      sll        $3, $4, 1
      addu       $4, $3, $4
      addu       $2, $4, $2
      addiu      $2, $2, 0x1
      sra        $2, $2, 2
      sb         $2, 0x0($8)
      lbu        $2, 0x0($9)
      addiu      $8, $8, 0x1
      addu       $2, $4, $2
      addiu      $2, $2, 0x2
      sra        $2, $2, 2
      sb         $2, 0x0($8)
      bnez       $10, .L800B2F34
       addiu     $8, $8, 0x1
  .L800B2F7C:
      addiu      $7, $7, 0x4
      lbu        $4, 0x0($9)
      lbu        $3, -0x1($9)
      sll        $2, $4, 1
      addu       $2, $2, $4
      addu       $2, $2, $3
      addiu      $2, $2, 0x1
      sra        $2, $2, 2
      sb         $2, 0x0($8)
      sb         $4, 0x1($8)
      lw         $2, 0x134($12)
      addiu      $11, $11, 0x1
      slt        $2, $11, $2
      bnez       $2, .L800B2EF0
       addiu     $6, $6, 0x4
  .L800B2FB8:
      jr         $31
       nop
.end func_800B2EDC

.globl func_800B2FC0
.ent func_800B2FC0
func_800B2FC0:
      addiu      $29, $29, -0x8
      addu       $25, $4, $0
      sw         $16, 0x0($29)
      addu       $16, $5, $0
      lw         $2, 0x134($25)
      lw         $7, 0x0($7)
      blez       $2, .L800B3138
       addu      $24, $0, $0
      addu       $14, $6, $0
  .L800B2FE4:
      addu       $13, $0, $0
      sll        $2, $24, 2
      addu       $15, $2, $7
  .L800B2FF0:
      lw         $11, 0x0($14)
      bnez       $13, .L800B3008
       nop
      lw         $9, -0x4($14)
      j          .L800B300C
       nop
  .L800B3008:
      lw         $9, 0x4($14)
  .L800B300C:
      lw         $8, 0x0($15)
      addiu      $15, $15, 0x4
      addiu      $24, $24, 0x1
      lbu        $6, 0x0($9)
      addiu      $9, $9, 0x1
      lbu        $4, 0x0($11)
      addiu      $11, $11, 0x1
      lbu        $5, 0x0($9)
      addiu      $9, $9, 0x1
      lbu        $3, 0x0($11)
      addiu      $11, $11, 0x1
      sll        $2, $4, 1
      addu       $2, $2, $4
      addu       $6, $2, $6
      sll        $2, $3, 1
      addu       $2, $2, $3
      addu       $4, $2, $5
      sll        $2, $6, 2
      addiu      $2, $2, 0x8
      sra        $2, $2, 4
      sb         $2, 0x0($8)
      addiu      $8, $8, 0x1
      sll        $2, $6, 1
      addu       $2, $2, $6
      addu       $2, $2, $4
      addiu      $2, $2, 0x7
      sra        $2, $2, 4
      sb         $2, 0x0($8)
      addiu      $8, $8, 0x1
      addu       $12, $6, $0
      lw         $2, 0x28($16)
      addiu      $10, $2, -0x2
      beqz       $10, .L800B30F0
       addu      $6, $4, $0
  .L800B3094:
      lbu        $5, 0x0($9)
      addiu      $9, $9, 0x1
      lbu        $4, 0x0($11)
      addiu      $11, $11, 0x1
      sll        $3, $6, 1
      addu       $3, $3, $6
      addu       $2, $3, $12
      addiu      $2, $2, 0x8
      sra        $2, $2, 4
      sb         $2, 0x0($8)
      addiu      $8, $8, 0x1
      addu       $12, $6, $0
      addiu      $10, $10, -0x1
      sll        $2, $4, 1
      addu       $2, $2, $4
      addu       $4, $2, $5
      addu       $3, $3, $4
      addiu      $3, $3, 0x7
      sra        $3, $3, 4
      sb         $3, 0x0($8)
      addiu      $8, $8, 0x1
      bnez       $10, .L800B3094
       addu      $6, $4, $0
  .L800B30F0:
      addiu      $13, $13, 0x1
      sll        $2, $6, 1
      addu       $2, $2, $6
      addu       $2, $2, $12
      addiu      $2, $2, 0x8
      sra        $2, $2, 4
      sb         $2, 0x0($8)
      sll        $2, $6, 2
      addiu      $2, $2, 0x7
      sra        $2, $2, 4
      sb         $2, 0x1($8)
      slti       $2, $13, 0x2
      bnez       $2, .L800B2FF0
       nop
      lw         $2, 0x134($25)
      slt        $2, $24, $2
      bnez       $2, .L800B2FE4
       addiu     $14, $14, 0x4
  .L800B3138:
      lw         $16, 0x0($29)
      jr         $31
       addiu     $29, $29, 0x8
.end func_800B2FC0

.globl func_800B3144
.ent func_800B3144
func_800B3144:
      addiu      $29, $29, -0x38
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x34($29)
      sw         $30, 0x30($29)
      sw         $23, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($18)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0xA0
      addu       $21, $2, $0
      lui        $2, %hi(func_800B2AB8 + 0x8)
      addiu      $2, $2, %lo(func_800B2AB8 + 0x8)
      sw         $21, 0x1C0($18)
      sw         $2, 0x0($21)
      lui        $2, %hi(func_800B2AD8)
      addiu      $2, $2, %lo(func_800B2AD8)
      sw         $2, 0x4($21)
      sw         $0, 0x8($21)
      lw         $2, 0x12C($18)
      beqz       $2, .L800B31D0
       addiu     $2, $0, 0x15
      lw         $3, 0x0($18)
      sw         $2, 0x14($3)
      lw         $2, 0x0($18)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $18, $0
  .L800B31D0:
      lw         $2, 0x4C($18)
      beqz       $2, .L800B31E8
       addu      $22, $0, $0
      lw         $2, 0x138($18)
      slti       $2, $2, 0x2
      xori       $22, $2, 0x1
  .L800B31E8:
      lw         $2, 0x20($18)
      lw         $3, 0xD8($18)
      blez       $2, .L800B3448
       addu      $20, $0, $0
      lui        $2, %hi(func_800B2FC0)
      addiu      $30, $2, %lo(func_800B2FC0)
      lui        $2, %hi(func_800B2E00)
      addiu      $23, $2, %lo(func_800B2E00)
      addiu      $17, $3, 0x28
      addu       $16, $21, $0
  .L800B3210:
      lw         $4, -0x4($17)
      lw         $2, -0x1C($17)
      mult       $2, $4
      mflo       $9
      lw         $3, 0x138($18)
      nop
      div        $zero, $9, $3
      bnez       $3, .L800B3238
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B3238:
      addiu      $1, $0, -0x1
      bne        $3, $1, .L800B3250
       lui       $1, (0x80000000 >> 16)
      bne        $9, $1, .L800B3250
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B3250:
      mflo       $6
      lw         $2, -0x20($17)
      nop
      mult       $2, $4
      lw         $7, 0x130($18)
      lw         $5, 0x134($18)
      mflo       $9
      sw         $6, 0x64($16)
      lw         $2, 0x8($17)
      div        $zero, $9, $3
      bnez       $3, .L800B3284
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B3284:
      addiu      $1, $0, -0x1
      bne        $3, $1, .L800B329C
       lui       $1, (0x80000000 >> 16)
      bne        $9, $1, .L800B329C
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B329C:
      mflo       $4
      bnez       $2, .L800B32B8
       addiu     $19, $0, 0x1
      lui        $8, %hi(func_800B2C74)
      addiu      $8, $8, %lo(func_800B2C74)
      j          .L800B32D4
       sw        $8, 0x34($16)
  .L800B32B8:
      bne        $4, $7, .L800B32DC
       sll       $2, $4, 1
      bne        $6, $5, .L800B32DC
       nop
      lui        $8, %hi(func_800B2C6C)
      addiu      $8, $8, %lo(func_800B2C6C)
      sw         $8, 0x34($16)
  .L800B32D4:
      j          .L800B33F8
       addu      $19, $0, $0
  .L800B32DC:
      bne        $2, $7, .L800B3354
       nop
      bne        $6, $5, .L800B3324
       sll       $2, $6, 1
      beqz       $22, .L800B3314
       nop
      lw         $2, 0x0($17)
      sltiu      $2, $2, 0x3
      bnez       $2, .L800B3314
       nop
      lui        $8, %hi(func_800B2EDC)
      addiu      $8, $8, %lo(func_800B2EDC)
      j          .L800B33F8
       sw        $8, 0x34($16)
  .L800B3314:
      lui        $8, %hi(func_800B2D94)
      addiu      $8, $8, %lo(func_800B2D94)
      j          .L800B33F8
       sw        $8, 0x34($16)
  .L800B3324:
      bne        $2, $5, .L800B3354
       nop
      beql       $22, $0, .L800B33F8
       sw        $23, 0x34($16)
      lw         $2, 0x0($17)
      sltiu      $2, $2, 0x3
      bnel       $2, $0, .L800B33F8
       sw        $23, 0x34($16)
      addiu      $2, $0, 0x1
      sw         $30, 0x34($16)
      j          .L800B33F8
       sw        $2, 0x8($21)
  .L800B3354:
      div        $zero, $7, $4
      bnez       $4, .L800B3364
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B3364:
      addiu      $1, $0, -0x1
      bne        $4, $1, .L800B337C
       lui       $1, (0x80000000 >> 16)
      bne        $7, $1, .L800B337C
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B337C:
      mflo       $4
      mfhi       $2
      bnez       $2, .L800B33DC
       nop
      div        $zero, $5, $6
      bnez       $6, .L800B339C
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B339C:
      addiu      $1, $0, -0x1
      bne        $6, $1, .L800B33B4
       lui       $1, (0x80000000 >> 16)
      bne        $5, $1, .L800B33B4
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B33B4:
      mflo       $3
      mfhi       $2
      bnez       $2, .L800B33DC
       lui       $2, %hi(func_800B2C7C)
      addiu      $2, $2, %lo(func_800B2C7C)
      sw         $2, 0x34($16)
      addu       $2, $21, $20
      sb         $4, 0x8C($2)
      j          .L800B33F8
       sb        $3, 0x96($2)
  .L800B33DC:
      lw         $3, 0x0($18)
      addiu      $2, $0, 0x23
      sw         $2, 0x14($3)
      lw         $2, 0x0($18)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $18, $0
  .L800B33F8:
      beql       $19, $0, .L800B3434
       addiu     $16, $16, 0x4
      lw         $4, 0x70($18)
      lw         $5, 0x130($18)
      jal        func_800B82FC
       nop
      addu       $4, $18, $0
      addiu      $5, $0, 0x1
      lw         $3, 0x4($18)
      lw         $7, 0x134($18)
      lw         $3, 0x8($3)
      jalr       $3
       addu      $6, $2, $0
      sw         $2, 0xC($16)
      addiu      $16, $16, 0x4
  .L800B3434:
      addiu      $20, $20, 0x1
      lw         $2, 0x20($18)
      slt        $2, $20, $2
      bnez       $2, .L800B3210
       addiu     $17, $17, 0x54
  .L800B3448:
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
.end func_800B3144

.globl func_800B3478
.ent func_800B3478
func_800B3478:
      addu       $2, $2, $17
      sw         $2, 0x18($16)
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800A9560
       nop
      jal        func_800B3540
       addiu     $4, $0, 0x1
      jr         $31
       nop
.end func_800B3478

.globl func_800B34A0
.ent func_800B34A0
func_800B34A0:
      jr         $31
       nop
.end func_800B34A0

.globl func_800B34A8
.ent func_800B34A8
func_800B34A8:
      jr         $31
       nop
.end func_800B34A8

.globl func_800B34B0
.ent func_800B34B0
func_800B34B0:
      lw         $2, 0x0($4)
      sw         $0, 0x6C($2)
      lw         $2, 0x0($4)
      jr         $31
       sw        $0, 0x14($2)
.end func_800B34B0

.globl func_800B34C4
.ent func_800B34C4
func_800B34C4:
      addu       $2, $4, $0
      lui        $3, %hi(func_800B3478 + 0x8)
      addiu      $3, $3, %lo(func_800B3478 + 0x8)
      sw         $3, 0x0($2)
      lui        $3, %hi(func_800B34A0)
      addiu      $3, $3, %lo(func_800B34A0)
      sw         $3, 0x4($2)
      lui        $3, %hi(func_800B3478 + 0x20)
      addiu      $3, $3, %lo(func_800B3478 + 0x20)
      sw         $3, 0x8($2)
      lui        $3, %hi(func_800B34A8)
      addiu      $3, $3, %lo(func_800B34A8)
      sw         $3, 0xC($2)
      lui        $3, %hi(func_800B34B0)
      addiu      $3, $3, %lo(func_800B34B0)
      sw         $3, 0x10($2)
      addiu      $3, $0, 0x75
      sw         $0, 0x68($2)
      sw         $0, 0x6C($2)
      sw         $0, 0x14($2)
      sw         $0, 0x70($2)
      sw         $3, 0x74($2)
      sw         $0, 0x78($2)
      sw         $0, 0x7C($2)
      jr         $31
       sw        $0, 0x80($2)
.end func_800B34C4

.globl func_800B352C
.ent func_800B352C
func_800B352C:
      lw         $3, 0x70($16)
      lw         $7, 0x78($16)
      addu       $4, $16, $0
      sw         $2, 0x10($29)
      lw         $2, 0x10($17)
.end func_800B352C

.globl func_800B3540
.ent func_800B3540
func_800B3540:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800B3580
       nop
      mflo       $7
      jalr       $2
       addu      $6, $0, $0
      j          .L800B358C
       sw        $2, 0x8($17)
      lw         $2, 0x70($16)
      lw         $6, 0x78($16)
      mult       $2, $6
      addu       $4, $16, $0
      lw         $2, 0x4($4)
      lw         $2, 0x8($2)
      mflo       $6
.end func_800B3540

.globl func_800B3580
.ent func_800B3580
func_800B3580:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lui        $2, (0xDEAD0000 >> 16)
  .L800B358C:
      sw         $26, 0x1($30)
      jr         $26
       nop
      nop
      jal        func_800B3540
       addu      $4, $0, $0
      lw         $2, 0x70($16)
      lw         $6, 0x78($16)
      mult       $2, $6
      addu       $4, $16, $0
      lw         $2, 0x4($4)
      lw         $2, 0x8($2)
      mflo       $6
  .globl D_800B35C0
D_800B35C0:
      addiu      $29, $29, -0x130
      sw         $30, 0x128($29)
      addu       $30, $7, $0
      sw         $21, 0x11C($29)
      addu       $21, $6, $0
      sw         $19, 0x114($29)
      addu       $19, $29, $0
      sw         $23, 0x124($29)
      addiu      $23, $0, 0x8
      addiu      $13, $29, 0x60
      addiu      $7, $21, 0x70
      sw         $22, 0x120($29)
      sw         $20, 0x118($29)
      sw         $18, 0x110($29)
      sw         $17, 0x10C($29)
      sw         $16, 0x108($29)
      lw         $2, 0x140($4)
      lw         $20, 0x50($5)
      addiu      $22, $2, 0x80
      addiu      $6, $20, 0xE0
  .L800B3610:
      lhu        $10, -0x60($7)
      lhu        $4, -0x50($7)
      lhu        $11, -0x40($7)
      lhu        $5, -0x30($7)
      lhu        $15, -0x20($7)
      lhu        $8, -0x10($7)
      lhu        $18, 0x0($7)
      or         $2, $10, $4
      or         $2, $11, $2
      or         $2, $5, $2
      or         $2, $15, $2
      or         $2, $8, $2
      or         $2, $18, $2
      bnez       $2, .L800B368C
       addiu     $7, $7, 0x2
      lh         $3, 0x0($21)
      lw         $2, 0x0($20)
      mult       $3, $2
      addiu      $21, $21, 0x2
      addiu      $6, $6, 0x4
      addiu      $20, $20, 0x4
      mflo       $3
      sw         $3, 0x0($19)
      sw         $3, -0x40($13)
      sw         $3, -0x20($13)
      sw         $3, 0x0($13)
      sw         $3, 0x20($13)
      sw         $3, 0x40($13)
      sw         $3, 0x60($13)
      j          .L800B3860
       sw        $3, 0x80($13)
  .L800B368C:
      lh         $3, 0x0($21)
      lw         $2, 0x0($20)
      mult       $3, $2
      sll        $2, $4, 16
      mflo       $25
      lw         $3, -0xA0($6)
      sra        $2, $2, 16
      mult       $2, $3
      sll        $2, $5, 16
      mflo       $16
      lw         $3, -0x60($6)
      sra        $2, $2, 16
      mult       $2, $3
      sll        $2, $8, 16
      mflo       $9
      lw         $3, -0x20($6)
      sra        $2, $2, 16
      mult       $2, $3
      sll        $2, $10, 16
      mflo       $17
      lw         $3, -0xC0($6)
      sra        $2, $2, 16
      mult       $2, $3
      addiu      $21, $21, 0x2
      addiu      $20, $20, 0x4
      addu       $8, $25, $9
      sll        $2, $11, 16
      mflo       $14
      lw         $3, -0x80($6)
      sra        $2, $2, 16
      mult       $2, $3
      subu       $11, $25, $9
      addu       $9, $16, $17
      subu       $4, $16, $17
      sll        $2, $15, 16
      mflo       $12
      lw         $3, -0x40($6)
      sra        $2, $2, 16
      mult       $2, $3
      addu       $25, $8, $9
      subu       $17, $8, $9
      lw         $3, 0x0($6)
      addiu      $6, $6, 0x4
      mflo       $10
      sll        $2, $18, 16
      sra        $2, $2, 16
      mult       $2, $3
      sll        $3, $4, 1
      addu       $3, $3, $4
      sll        $2, $3, 4
      subu       $2, $2, $3
      sll        $2, $2, 2
      addu       $2, $2, $4
      sll        $2, $2, 1
      sra        $2, $2, 8
      subu       $5, $2, $9
      addu       $16, $11, $5
      subu       $9, $11, $5
      addu       $24, $10, $12
      subu       $10, $10, $12
      sw         $24, 0x100($29)
      mflo       $15
      addu       $4, $14, $15
      subu       $14, $14, $15
      addu       $15, $4, $24
      subu       $4, $4, $24
      sll        $3, $4, 1
      addu       $3, $3, $4
      sll        $2, $3, 4
      subu       $2, $2, $3
      sll        $2, $2, 2
      addu       $2, $2, $4
      sll        $2, $2, 1
      sra        $11, $2, 8
      addu       $3, $10, $14
      sll        $2, $3, 4
      subu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $3
      sra        $18, $2, 8
      sll        $2, $14, 4
      addu       $2, $2, $14
      sll        $2, $2, 2
      addu       $2, $2, $14
      sll        $2, $2, 2
      addu       $2, $2, $14
      sra        $2, $2, 8
      subu       $8, $2, $18
      sll        $2, $10, 3
      subu       $2, $2, $10
      sll        $2, $2, 5
      subu       $2, $2, $10
      sll        $3, $2, 2
      subu       $2, $2, $3
      sra        $2, $2, 8
      addu       $5, $2, $18
      subu       $10, $5, $15
      subu       $12, $11, $10
      addu       $14, $8, $12
      addu       $2, $25, $15
      sw         $2, 0x0($19)
      subu       $2, $25, $15
      sw         $2, 0x80($13)
      addu       $2, $16, $10
      sw         $2, -0x40($13)
      subu       $2, $16, $10
      sw         $2, 0x60($13)
      addu       $2, $9, $12
      sw         $2, -0x20($13)
      subu       $2, $9, $12
      sw         $2, 0x40($13)
      addu       $2, $17, $14
      sw         $2, 0x20($13)
      subu       $2, $17, $14
      sw         $2, 0x0($13)
  .L800B3860:
      addiu      $13, $13, 0x4
      addiu      $23, $23, -0x1
      bgtz       $23, .L800B3610
       addiu     $19, $19, 0x4
      addu       $19, $29, $0
      addu       $23, $0, $0
      addu       $20, $30, $0
      addiu      $7, $29, 0x1C
  .L800B3880:
      lw         $2, 0x0($20)
      lw         $24, 0x140($29)
      lw         $11, -0x18($7)
      lw         $4, -0x14($7)
      lw         $10, -0x10($7)
      lw         $12, -0xC($7)
      lw         $8, -0x8($7)
      lw         $3, -0x4($7)
      lw         $6, 0x0($7)
      addu       $13, $2, $24
      or         $2, $11, $4
      or         $2, $2, $10
      or         $2, $2, $12
      or         $2, $2, $8
      or         $2, $2, $3
      or         $2, $2, $6
      bnez       $2, .L800B3908
       addu      $9, $4, $3
      lw         $2, 0x0($19)
      addiu      $7, $7, 0x20
      sra        $2, $2, 5
      andi       $2, $2, 0x3FF
      addu       $2, $22, $2
      lbu        $2, 0x0($2)
      addiu      $19, $19, 0x20
      sb         $2, 0x0($13)
      sb         $2, 0x1($13)
      sb         $2, 0x2($13)
      sb         $2, 0x3($13)
      sb         $2, 0x4($13)
      sb         $2, 0x5($13)
      sb         $2, 0x6($13)
      j          .L800B3ABC
       sb        $2, 0x7($13)
  .L800B3908:
      subu       $4, $4, $3
      sll        $3, $4, 1
      addu       $3, $3, $4
      sll        $2, $3, 4
      subu       $2, $2, $3
      sll        $2, $2, 2
      addu       $2, $2, $4
      sll        $2, $2, 1
      sra        $2, $2, 8
      subu       $5, $2, $9
      addu       $24, $8, $10
      subu       $10, $8, $10
      addu       $4, $11, $6
      subu       $14, $11, $6
      addu       $15, $4, $24
      addu       $3, $10, $14
      sll        $2, $3, 4
      subu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $3
      sw         $24, 0x100($29)
      lw         $3, 0x0($19)
      sra        $18, $2, 8
      addu       $8, $3, $12
      subu       $11, $3, $12
      addu       $25, $8, $9
      subu       $17, $8, $9
      addu       $16, $11, $5
      subu       $9, $11, $5
      sll        $3, $10, 3
      subu       $3, $3, $10
      sll        $3, $3, 5
      subu       $3, $3, $10
      sll        $2, $3, 2
      subu       $3, $3, $2
      sra        $3, $3, 8
      addu       $2, $25, $15
      sra        $2, $2, 5
      andi       $2, $2, 0x3FF
      addu       $2, $22, $2
      lbu        $2, 0x0($2)
      addu       $5, $3, $18
      sb         $2, 0x0($13)
      subu       $2, $25, $15
      sra        $2, $2, 5
      andi       $2, $2, 0x3FF
      addu       $2, $22, $2
      lbu        $2, 0x0($2)
      subu       $10, $5, $15
      sb         $2, 0x7($13)
      subu       $4, $4, $24
      sll        $2, $4, 1
      addu       $2, $2, $4
      sll        $3, $2, 4
      subu       $3, $3, $2
      sll        $3, $3, 2
      addu       $3, $3, $4
      sll        $3, $3, 1
      addu       $2, $16, $10
      sra        $2, $2, 5
      andi       $2, $2, 0x3FF
      addu       $2, $22, $2
      sra        $11, $3, 8
      subu       $12, $11, $10
      sll        $3, $14, 4
      addu       $3, $3, $14
      sll        $3, $3, 2
      addu       $3, $3, $14
      sll        $3, $3, 2
      lbu        $2, 0x0($2)
      addu       $3, $3, $14
      sb         $2, 0x1($13)
      subu       $2, $16, $10
      sra        $2, $2, 5
      andi       $2, $2, 0x3FF
      addu       $2, $22, $2
      lbu        $2, 0x0($2)
      sra        $3, $3, 8
      sb         $2, 0x6($13)
      addu       $2, $9, $12
      sra        $2, $2, 5
      andi       $2, $2, 0x3FF
      addu       $2, $22, $2
      lbu        $2, 0x0($2)
      subu       $8, $3, $18
      sb         $2, 0x2($13)
      subu       $2, $9, $12
      sra        $2, $2, 5
      andi       $2, $2, 0x3FF
      addu       $2, $22, $2
      lbu        $2, 0x0($2)
      addu       $14, $8, $12
      sb         $2, 0x5($13)
      addu       $2, $17, $14
      sra        $2, $2, 5
      andi       $2, $2, 0x3FF
      addu       $2, $22, $2
      lbu        $2, 0x0($2)
      addiu      $7, $7, 0x20
      sb         $2, 0x4($13)
      subu       $2, $17, $14
      sra        $2, $2, 5
      andi       $2, $2, 0x3FF
      addu       $2, $22, $2
      lbu        $2, 0x0($2)
      addiu      $19, $19, 0x20
      sb         $2, 0x3($13)
  .L800B3ABC:
      addiu      $23, $23, 0x1
      slti       $2, $23, 0x8
      bnez       $2, .L800B3880
       addiu     $20, $20, 0x4
      lw         $30, 0x128($29)
      lw         $23, 0x124($29)
      lw         $22, 0x120($29)
      lw         $21, 0x11C($29)
      lw         $20, 0x118($29)
      lw         $19, 0x114($29)
      lw         $18, 0x110($29)
      lw         $17, 0x10C($29)
      lw         $16, 0x108($29)
      jr         $31
       addiu     $29, $29, 0x130
.end func_800B3580
      nop

.globl func_800B3AFC
.ent func_800B3AFC
func_800B3AFC:
      lw         $9, -0x4($14)
  .globl D_800B3B00
D_800B3B00:
      addiu      $29, $29, -0xA0
      sw         $20, 0x90($29)
      addu       $20, $7, $0
      sw         $18, 0x88($29)
      addu       $18, $6, $0
      addu       $24, $29, $0
      sw         $16, 0x80($29)
      addiu      $16, $0, 0x8
      addiu      $15, $29, 0x40
      sw         $21, 0x94($29)
      lw         $21, 0xB0($29)
      addiu      $14, $18, 0x70
      sw         $22, 0x98($29)
      sw         $19, 0x8C($29)
      sw         $17, 0x84($29)
      lw         $2, 0x140($4)
      lw         $17, 0x50($5)
      addiu      $19, $2, 0x80
      addiu      $13, $17, 0x20
  .L800B3B4C:
      addiu      $2, $0, 0x4
      beql       $16, $2, .L800B3DC0
       addiu     $14, $14, 0x2
      lhu        $10, -0x60($14)
      lhu        $5, -0x50($14)
      lhu        $7, -0x40($14)
      lhu        $25, -0x20($14)
      lhu        $4, -0x10($14)
      lhu        $8, 0x0($14)
      or         $2, $10, $5
      or         $2, $7, $2
      or         $2, $25, $2
      or         $2, $4, $2
      or         $2, $8, $2
      bnez       $2, .L800B3BB4
       nop
      lh         $3, 0x0($18)
      lw         $2, 0x0($17)
      mult       $3, $2
      mflo       $22
      sll        $2, $22, 2
      sw         $2, 0x0($24)
      sw         $2, -0x20($15)
      sw         $2, 0x0($15)
      j          .L800B3DBC
       sw        $2, 0x20($15)
  .L800B3BB4:
      lh         $3, 0x0($18)
      lw         $2, 0x0($17)
      mult       $3, $2
      sll        $2, $5, 16
      mflo       $12
      lw         $3, 0x20($13)
      sra        $2, $2, 16
      mult       $2, $3
      sll        $2, $4, 16
      mflo       $5
      lw         $3, 0xA0($13)
      sra        $2, $2, 16
      mult       $2, $3
      sll        $2, $8, 16
      mflo       $11
      lw         $3, 0xC0($13)
      sra        $2, $2, 16
      mult       $2, $3
      sll        $2, $10, 16
      mflo       $9
      lw         $3, 0x0($13)
      sra        $2, $2, 16
      mult       $2, $3
      sll        $3, $5, 4
      subu       $3, $3, $5
      sll        $3, $3, 2
      subu       $3, $3, $5
      sll        $3, $3, 3
      addu       $3, $3, $5
      sll        $3, $3, 5
      addu       $3, $3, $5
      sll        $2, $11, 1
      addu       $2, $2, $11
      sll        $2, $2, 4
      addu       $2, $2, $11
      sll        $2, $2, 6
      subu       $2, $2, $11
      sll        $2, $2, 1
      subu       $8, $3, $2
      sll        $2, $25, 16
      mflo       $10
      lw         $3, 0x80($13)
      sra        $2, $2, 16
      mult       $2, $3
      sll        $12, $12, 14
      addu       $6, $12, $8
      subu       $25, $12, $8
      sll        $2, $7, 16
      mflo       $5
      lw         $3, 0x40($13)
      sra        $2, $2, 16
      mult       $2, $3
      sll        $3, $9, 3
      subu       $3, $3, $9
      sll        $3, $3, 2
      subu       $3, $3, $9
      sll        $3, $3, 5
      addu       $3, $3, $9
      sll        $3, $3, 1
      sll        $2, $5, 5
      subu       $2, $2, $5
      sll        $2, $2, 5
      subu       $2, $2, $5
      sll        $4, $2, 2
      subu       $4, $4, $2
      sll        $4, $4, 2
      addu       $4, $4, $5
      subu       $4, $4, $3
      mflo       $11
      sll        $2, $11, 5
      addu       $2, $2, $11
      sll        $2, $2, 2
      subu       $2, $2, $11
      sll        $2, $2, 3
      subu       $2, $2, $11
      sll        $3, $2, 4
      addu       $2, $2, $3
      subu       $4, $4, $2
      sll        $2, $10, 4
      addu       $2, $2, $10
      sll        $2, $2, 6
      subu       $2, $2, $10
      sll        $2, $2, 3
      addu       $2, $2, $10
      addu       $12, $4, $2
      sll        $4, $9, 6
      addu       $4, $4, $9
      sll        $4, $4, 2
      addu       $4, $4, $9
      sll        $4, $4, 4
      sll        $3, $5, 2
      addu       $3, $3, $5
      sll        $3, $3, 2
      subu       $3, $3, $5
      sll        $3, $3, 2
      addu       $3, $3, $5
      sll        $3, $3, 5
      addiu      $2, $0, 0x1CCD
      mult       $11, $2
      subu       $3, $3, $5
      sll        $3, $3, 1
      negu       $3, $3
      subu       $3, $3, $4
      mflo       $2
      addu       $3, $3, $2
      sll        $2, $10, 2
      addu       $2, $2, $10
      sll        $2, $2, 3
      addu       $2, $2, $10
      sll        $2, $2, 7
      addu       $2, $2, $10
      sll        $2, $2, 2
      subu       $2, $2, $10
      addu       $8, $3, $2
      addu       $2, $6, $8
      addiu      $2, $2, 0x800
      sra        $2, $2, 12
      sw         $2, 0x0($24)
      subu       $2, $6, $8
      addiu      $2, $2, 0x800
      sra        $2, $2, 12
      sw         $2, 0x20($15)
      addu       $2, $25, $12
      addiu      $2, $2, 0x800
      sra        $2, $2, 12
      sw         $2, -0x20($15)
      subu       $2, $25, $12
      addiu      $2, $2, 0x800
      sra        $2, $2, 12
      sw         $2, 0x0($15)
  .L800B3DBC:
      addiu      $14, $14, 0x2
  .L800B3DC0:
      addiu      $18, $18, 0x2
      addiu      $13, $13, 0x4
      addiu      $17, $17, 0x4
      addiu      $15, $15, 0x4
      addiu      $16, $16, -0x1
      bgtz       $16, .L800B3B4C
       addiu     $24, $24, 0x4
      addu       $24, $29, $0
      addu       $16, $0, $0
      lui        $15, (0x40000 >> 16)
      addu       $7, $20, $0
      addiu      $13, $29, 0x1C
  .L800B3DF0:
      lw         $2, 0x0($7)
      lw         $12, -0x18($13)
      lw         $5, -0x14($13)
      lw         $11, -0x10($13)
      lw         $10, -0x8($13)
      lw         $6, -0x4($13)
      lw         $4, 0x0($13)
      addu       $14, $2, $21
      or         $2, $12, $5
      or         $2, $2, $11
      or         $2, $2, $10
      or         $2, $2, $6
      or         $2, $2, $4
      bnez       $2, .L800B3E60
       sll       $3, $5, 4
      lw         $2, 0x0($24)
      addiu      $13, $13, 0x20
      addiu      $2, $2, 0x10
      sra        $2, $2, 5
      andi       $2, $2, 0x3FF
      addu       $2, $19, $2
      lbu        $2, 0x0($2)
      addiu      $24, $24, 0x20
      sb         $2, 0x0($14)
      sb         $2, 0x1($14)
      sb         $2, 0x2($14)
      j          .L800B4024
       sb        $2, 0x3($14)
  .L800B3E60:
      subu       $3, $3, $5
      sll        $3, $3, 2
      subu       $3, $3, $5
      sll        $3, $3, 3
      addu       $3, $3, $5
      sll        $3, $3, 5
      addu       $3, $3, $5
      sll        $2, $6, 1
      addu       $2, $2, $6
      sll        $2, $2, 4
      addu       $2, $2, $6
      sll        $2, $2, 6
      subu       $2, $2, $6
      sll        $2, $2, 1
      subu       $8, $3, $2
      addu       $9, $4, $0
      addu       $5, $10, $0
      addu       $10, $12, $0
      sll        $4, $9, 6
      addu       $4, $4, $9
      sll        $4, $4, 2
      addu       $4, $4, $9
      sll        $4, $4, 4
      sll        $3, $5, 2
      addu       $3, $3, $5
      sll        $3, $3, 2
      subu       $3, $3, $5
      sll        $3, $3, 2
      addu       $3, $3, $5
      sll        $3, $3, 5
      subu       $3, $3, $5
      sll        $3, $3, 1
      negu       $3, $3
      lw         $2, 0x0($24)
      subu       $3, $3, $4
      sll        $12, $2, 14
      addu       $6, $12, $8
      subu       $25, $12, $8
      addiu      $2, $0, 0x1CCD
      mult       $11, $2
      sll        $2, $10, 2
      addu       $2, $2, $10
      sll        $2, $2, 3
      addu       $2, $2, $10
      sll        $2, $2, 7
      addu       $2, $2, $10
      sll        $2, $2, 2
      subu       $2, $2, $10
      mflo       $22
      addu       $3, $3, $22
      addu       $8, $3, $2
      addu       $2, $6, $8
      addu       $2, $2, $15
      sra        $2, $2, 19
      andi       $2, $2, 0x3FF
      addu       $2, $19, $2
      sll        $3, $9, 3
      subu       $3, $3, $9
      sll        $3, $3, 2
      subu       $3, $3, $9
      sll        $3, $3, 5
      addu       $3, $3, $9
      lbu        $2, 0x0($2)
      sll        $3, $3, 1
      sb         $2, 0x0($14)
      sll        $2, $5, 5
      subu       $2, $2, $5
      sll        $2, $2, 5
      subu       $2, $2, $5
      sll        $4, $2, 2
      subu       $4, $4, $2
      sll        $4, $4, 2
      addu       $4, $4, $5
      subu       $4, $4, $3
      sll        $2, $11, 5
      addu       $2, $2, $11
      sll        $2, $2, 2
      subu       $2, $2, $11
      sll        $2, $2, 3
      subu       $2, $2, $11
      sll        $3, $2, 4
      addu       $2, $2, $3
      subu       $4, $4, $2
      sll        $3, $10, 4
      addu       $3, $3, $10
      sll        $3, $3, 6
      subu       $3, $3, $10
      sll        $3, $3, 3
      addu       $3, $3, $10
      subu       $2, $6, $8
      addu       $2, $2, $15
      sra        $2, $2, 19
      andi       $2, $2, 0x3FF
      addu       $2, $19, $2
      lbu        $2, 0x0($2)
      addu       $12, $4, $3
      sb         $2, 0x3($14)
      addu       $2, $25, $12
      addu       $2, $2, $15
      sra        $2, $2, 19
      andi       $2, $2, 0x3FF
      addu       $2, $19, $2
      lbu        $2, 0x0($2)
      addiu      $13, $13, 0x20
      sb         $2, 0x1($14)
      subu       $2, $25, $12
      addu       $2, $2, $15
      sra        $2, $2, 19
      andi       $2, $2, 0x3FF
      addu       $2, $19, $2
      lbu        $2, 0x0($2)
      addiu      $24, $24, 0x20
      sb         $2, 0x2($14)
  .L800B4024:
      addiu      $16, $16, 0x1
      slti       $2, $16, 0x4
      bnez       $2, .L800B3DF0
       addiu     $7, $7, 0x4
      lw         $22, 0x98($29)
      lw         $21, 0x94($29)
      lw         $20, 0x90($29)
      lw         $19, 0x8C($29)
      lw         $18, 0x88($29)
      lw         $17, 0x84($29)
      lw         $16, 0x80($29)
      jr         $31
       addiu     $29, $29, 0xA0
.end func_800B3AFC

.globl func_800B4058
.ent func_800B4058
func_800B4058:
      addiu      $29, $29, -0x60
      sw         $20, 0x50($29)
      addu       $20, $7, $0
      addu       $9, $29, $0
      addiu      $12, $0, 0x8
      sw         $19, 0x4C($29)
      addiu      $19, $0, 0x6
      sw         $18, 0x48($29)
      addiu      $18, $0, 0x4
      sw         $17, 0x44($29)
      addiu      $17, $0, 0x2
      addiu      $7, $0, -0x28BA
      addiu      $24, $29, 0x20
      sw         $21, 0x54($29)
      lw         $21, 0x70($29)
      addiu      $11, $6, 0x70
      sw         $22, 0x58($29)
      sw         $16, 0x40($29)
      lw         $2, 0x140($4)
      lw         $14, 0x50($5)
      addiu      $16, $2, 0x80
      addiu      $10, $14, 0x20
  .L800B40B0:
      beql       $12, $19, .L800B420C
       addiu     $11, $11, 0x2
      beql       $12, $18, .L800B420C
       addiu     $11, $11, 0x2
      beql       $12, $17, .L800B420C
       addiu     $11, $11, 0x2
      lhu        $25, -0x60($11)
      lhu        $15, -0x40($11)
      lhu        $8, -0x20($11)
      lhu        $4, 0x0($11)
      or         $2, $25, $15
      or         $2, $8, $2
      or         $2, $4, $2
      bnez       $2, .L800B4108
       nop
      lh         $3, 0x0($6)
      lw         $2, 0x0($14)
      mult       $3, $2
      mflo       $22
      sll        $2, $22, 2
      j          .L800B4204
       sw        $2, 0x0($9)
  .L800B4108:
      lh         $3, 0x0($6)
      lw         $2, 0x0($14)
      mult       $3, $2
      sll        $2, $4, 16
      sra        $2, $2, 16
      mflo       $5
      lw         $3, 0xC0($10)
      sll        $13, $5, 15
      mult       $2, $3
      sll        $2, $8, 16
      sra        $2, $2, 16
      lw         $3, 0x80($10)
      mflo       $5
      sll        $4, $5, 1
      addu       $4, $4, $5
      sll        $4, $4, 3
      subu       $4, $4, $5
      sll        $4, $4, 4
      addu       $4, $4, $5
      sll        $4, $4, 3
      addu       $4, $4, $5
      mult       $2, $3
      mflo       $5
      sll        $3, $5, 3
      subu       $3, $3, $5
      sll        $3, $3, 2
      subu       $3, $3, $5
      sll        $2, $3, 7
      addu       $3, $3, $2
      sll        $3, $3, 1
      addu       $3, $3, $5
      sll        $2, $15, 16
      lw         $5, 0x40($10)
      sra        $2, $2, 16
      mult       $2, $5
      mflo       $5
      nop
      nop
      mult       $5, $7
      sll        $2, $25, 16
      mflo       $8
      lw         $5, 0x0($10)
      sra        $2, $2, 16
      mult       $2, $5
      sll        $4, $4, 1
      subu       $3, $3, $4
      addu       $3, $3, $8
      mflo       $5
      sll        $2, $5, 3
      subu       $2, $2, $5
      sll        $2, $2, 2
      addu       $2, $2, $5
      sll        $2, $2, 8
      subu       $2, $2, $5
      sll        $2, $2, 2
      addu       $3, $3, $2
      addu       $2, $13, $3
      addiu      $2, $2, 0x1000
      sra        $2, $2, 13
      sw         $2, 0x0($9)
      subu       $2, $13, $3
      addiu      $2, $2, 0x1000
      sra        $2, $2, 13
  .L800B4204:
      sw         $2, 0x0($24)
      addiu      $11, $11, 0x2
  .L800B420C:
      addiu      $6, $6, 0x2
      addiu      $10, $10, 0x4
      addiu      $14, $14, 0x4
      addiu      $24, $24, 0x4
      addiu      $12, $12, -0x1
      bgtz       $12, .L800B40B0
       addiu     $9, $9, 0x4
      addu       $9, $29, $0
      addu       $12, $0, $0
      addiu      $15, $0, -0x28BA
      lui        $14, (0x80000 >> 16)
      addu       $7, $20, $0
      addiu      $8, $29, 0x1C
  .L800B4240:
      lw         $2, 0x0($7)
      lw         $6, -0x18($8)
      lw         $10, -0x10($8)
      lw         $5, -0x8($8)
      lw         $3, 0x0($8)
      addu       $11, $2, $21
      or         $2, $6, $10
      or         $2, $2, $5
      or         $2, $2, $3
      mult       $10, $15
      bnez       $2, .L800B4298
       nop
      lw         $2, 0x0($9)
      addiu      $8, $8, 0x20
      addiu      $2, $2, 0x10
      sra        $2, $2, 5
      andi       $2, $2, 0x3FF
      addu       $2, $16, $2
      lbu        $2, 0x0($2)
      addiu      $9, $9, 0x20
      j          .L800B434C
       sb        $2, 0x0($11)
  .L800B4298:
      lw         $2, 0x0($9)
      sll        $13, $2, 15
      sll        $2, $3, 1
      addu       $2, $2, $3
      sll        $2, $2, 3
      subu       $2, $2, $3
      sll        $2, $2, 4
      addu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $3
      sll        $2, $2, 1
      sll        $3, $5, 3
      subu       $3, $3, $5
      sll        $3, $3, 2
      subu       $3, $3, $5
      sll        $4, $3, 7
      addu       $3, $3, $4
      sll        $3, $3, 1
      addu       $3, $3, $5
      subu       $3, $3, $2
      sll        $2, $6, 3
      subu       $2, $2, $6
      sll        $2, $2, 2
      addu       $2, $2, $6
      sll        $2, $2, 8
      subu       $2, $2, $6
      sll        $2, $2, 2
      mflo       $22
      addu       $3, $3, $22
      addu       $3, $3, $2
      addu       $2, $13, $3
      addu       $2, $2, $14
      sra        $2, $2, 20
      andi       $2, $2, 0x3FF
      addu       $2, $16, $2
      lbu        $2, 0x0($2)
      addiu      $8, $8, 0x20
      sb         $2, 0x0($11)
      subu       $2, $13, $3
      addu       $2, $2, $14
      sra        $2, $2, 20
      andi       $2, $2, 0x3FF
      addu       $2, $16, $2
      lbu        $2, 0x0($2)
      addiu      $9, $9, 0x20
  .L800B434C:
      sb         $2, 0x1($11)
      addiu      $12, $12, 0x1
      slti       $2, $12, 0x2
      bnez       $2, .L800B4240
       addiu     $7, $7, 0x4
      lw         $22, 0x58($29)
      lw         $21, 0x54($29)
      lw         $20, 0x50($29)
      lw         $19, 0x4C($29)
      lw         $18, 0x48($29)
      lw         $17, 0x44($29)
      lw         $16, 0x40($29)
      jr         $31
       addiu     $29, $29, 0x60
.end func_800B4058

.globl func_800B4384
.ent func_800B4384
func_800B4384:
      lw         $2, 0x50($5)
      lh         $3, 0x0($6)
      lw         $2, 0x0($2)
      mult       $3, $2
      lw         $3, 0x140($4)
      lw         $4, 0x10($29)
      mflo       $2
      addiu      $2, $2, 0x4
      sra        $2, $2, 3
      andi       $2, $2, 0x3FF
      addu       $3, $3, $2
      lw         $2, 0x0($7)
      lbu        $3, 0x80($3)
      addu       $2, $2, $4
      jr         $31
       sb        $3, 0x0($2)
.end func_800B4384

.globl func_800B43C4
.ent func_800B43C4
func_800B43C4:
      addu       $9, $4, $3
      lw         $2, 0x0($19)
      addiu      $7, $7, 0x20
      sra        $2, $2, 5
      andi       $2, $2, 0x3FF
      addu       $2, $22, $2
      lbu        $2, 0x0($2)
      addiu      $19, $19, 0x20
      sb         $2, 0x0($13)
      sb         $2, 0x1($13)
      sb         $2, 0x2($13)
      sb         $2, 0x3($13)
      sb         $2, 0x4($13)
      sb         $2, 0x5($13)
      sb         $2, 0x6($13)
.end func_800B43C4

.globl func_800B4400
.ent func_800B4400
func_800B4400:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $3, 0x0($4)
      addiu      $2, $0, 0x33
      sw         $2, 0x14($3)
      lw         $2, 0x0($4)
      sw         $5, 0x18($2)
      lw         $2, 0x0($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B4400

.globl func_800B4438
.ent func_800B4438
func_800B4438:
      addiu      $29, $29, -0x30
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $22, 0x28($29)
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      lui        $2, (0x3B9AC9F0 >> 16)
      ori        $2, $2, (0x3B9AC9F0 & 0xFFFF)
      sltu       $2, $2, $17
      sw         $31, 0x2C($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $21, 0x4($19)
      beqz       $2, .L800B4484
       addu      $22, $5, $0
      jal        func_800B4400
       addiu     $5, $0, 0x1
  .L800B4484:
      andi       $3, $17, 0x7
      beqz       $3, .L800B4494
       addiu     $2, $17, 0x8
      subu       $17, $2, $3
  .L800B4494:
      sltiu      $2, $22, 0x2
      bnez       $2, .L800B44C8
       sll       $2, $22, 2
      lw         $3, 0x0($19)
      addiu      $2, $0, 0xB
      sw         $2, 0x14($3)
      lw         $2, 0x0($19)
      sw         $22, 0x18($2)
      lw         $2, 0x0($19)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $19, $0
      sll        $2, $22, 2
  .L800B44C8:
      addu       $2, $21, $2
      lw         $5, 0x30($2)
      beqz       $5, .L800B4500
       addu      $20, $0, $0
  .L800B44D8:
      lw         $2, 0x8($5)
      sltu       $2, $2, $17
      beqz       $2, .L800B44F8
       nop
      addu       $20, $5, $0
      lw         $5, 0x0($5)
      bnez       $5, .L800B44D8
       nop
  .L800B44F8:
      bnez       $5, .L800B45B0
       addiu     $2, $5, 0x10
  .L800B4500:
      bnez       $20, .L800B4514
       addiu     $18, $17, 0x10
      lui        $3, %hi(D_800F58C0)
      j          .L800B451C
       addiu     $3, $3, %lo(D_800F58C0)
  .L800B4514:
      lui        $3, %hi(D_800F58C8)
      addiu      $3, $3, %lo(D_800F58C8)
  .L800B451C:
      sll        $2, $22, 2
      addu       $2, $2, $3
      lw         $16, 0x0($2)
      lui        $2, (0x3B9ACA00 >> 16)
      ori        $2, $2, (0x3B9ACA00 & 0xFFFF)
      subu       $3, $2, $18
      sltu       $2, $3, $16
      bnel       $2, $0, .L800B4540
       addu      $16, $3, $0
  .L800B4540:
      addu       $4, $19, $0
  .L800B4544:
      jal        func_800B5780
       addu      $5, $18, $16
      addu       $5, $2, $0
      bnez       $5, .L800B4578
       addu      $3, $18, $16
      srl        $16, $16, 1
      sltiu      $2, $16, 0x32
      beqz       $2, .L800B4544
       addu      $4, $19, $0
      jal        func_800B4400
       addiu     $5, $0, 0x2
      j          .L800B4544
       addu      $4, $19, $0
  .L800B4578:
      lw         $2, 0x48($21)
      addu       $2, $2, $3
      sw         $2, 0x48($21)
      addu       $2, $17, $16
      sw         $0, 0x0($5)
      sw         $0, 0x4($5)
      bnez       $20, .L800B45A8
       sw        $2, 0x8($5)
      sll        $2, $22, 2
      addu       $2, $21, $2
      j          .L800B45AC
       sw        $5, 0x30($2)
  .L800B45A8:
      sw         $5, 0x0($20)
  .L800B45AC:
      addiu      $2, $5, 0x10
  .L800B45B0:
      lw         $3, 0x4($5)
      lw         $4, 0x8($5)
      addu       $2, $2, $3
      addu       $3, $3, $17
      subu       $4, $4, $17
      sw         $3, 0x4($5)
      sw         $4, 0x8($5)
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
.end func_800B4438

.globl func_800B45F4
.ent func_800B45F4
func_800B45F4:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $20, 0x20($29)
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      lui        $2, (0x3B9AC9F0 >> 16)
      ori        $2, $2, (0x3B9AC9F0 & 0xFFFF)
      sltu       $2, $2, $17
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $16, 0x10($29)
      lw         $19, 0x4($18)
      beqz       $2, .L800B4638
       addu      $20, $5, $0
      jal        func_800B4400
       addiu     $5, $0, 0x3
  .L800B4638:
      andi       $3, $17, 0x7
      beqz       $3, .L800B4648
       addiu     $2, $17, 0x8
      subu       $17, $2, $3
  .L800B4648:
      sltiu      $2, $20, 0x2
      bnez       $2, .L800B467C
       addu      $4, $18, $0
      lw         $3, 0x0($18)
      addiu      $2, $0, 0xB
      sw         $2, 0x14($3)
      lw         $2, 0x0($18)
      sw         $20, 0x18($2)
      lw         $2, 0x0($18)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $18, $0
      addu       $4, $18, $0
  .L800B467C:
      jal        func_800B57BC
       addiu     $5, $17, 0x10
      addu       $16, $2, $0
      bnez       $16, .L800B46A0
       sll       $3, $20, 2
      addu       $4, $18, $0
      jal        func_800B4400
       addiu     $5, $0, 0x4
      sll        $3, $20, 2
  .L800B46A0:
      lw         $2, 0x48($19)
      addu       $3, $19, $3
      addiu      $2, $2, 0x10
      addu       $2, $2, $17
      sw         $2, 0x48($19)
      lw         $4, 0x38($3)
      addiu      $2, $16, 0x10
      sw         $17, 0x4($16)
      sw         $0, 0x8($16)
      sw         $4, 0x0($16)
      sw         $16, 0x38($3)
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B45F4

.globl func_800B46EC
.ent func_800B46EC
func_800B46EC:
      addiu      $29, $29, -0x30
      sw         $21, 0x24($29)
      addu       $21, $6, $0
      lui        $2, (0x3B9AC9F0 >> 16)
      ori        $2, $2, (0x3B9AC9F0 & 0xFFFF)
      sw         $16, 0x10($29)
      divu       $zero, $2, $21
      bnez       $21, .L800B4714
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B4714:
      mflo       $16
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $22, 0x28($29)
      addu       $22, $5, $0
      sw         $19, 0x1C($29)
      sw         $31, 0x2C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lw         $18, 0x4($20)
      bgtz       $16, .L800B4760
       addu      $19, $7, $0
      lw         $3, 0x0($20)
      addiu      $2, $0, 0x43
      sw         $2, 0x14($3)
      lw         $2, 0x0($20)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800B4760:
      slt        $2, $16, $19
      beqz       $2, .L800B4770
       addu      $17, $19, $0
      addu       $17, $16, $0
  .L800B4770:
      sw         $17, 0x4C($18)
      addu       $4, $20, $0
      addu       $5, $22, $0
      jal        func_800B4438
       sll       $6, $19, 2
      addu       $16, $0, $0
      beqz       $19, .L800B47F0
       addu      $18, $2, $0
      subu       $3, $19, $16
  .L800B4794:
      sltu       $2, $17, $3
      bnel       $2, $0, .L800B47A0
       addu      $3, $17, $0
  .L800B47A0:
      addu       $17, $3, $0
      mult       $17, $21
      addu       $4, $20, $0
      mflo       $6
      jal        func_800B45F4
       addu      $5, $22, $0
      addu       $3, $17, $0
      beqz       $3, .L800B47E4
       addu      $4, $2, $0
      sll        $2, $16, 2
      addu       $2, $2, $18
  .L800B47CC:
      sw         $4, 0x0($2)
      addiu      $2, $2, 0x4
      addiu      $16, $16, 0x1
      addiu      $3, $3, -0x1
      bnez       $3, .L800B47CC
       addu      $4, $4, $21
  .L800B47E4:
      sltu       $2, $16, $19
      bnel       $2, $0, .L800B4794
       subu      $3, $19, $16
  .L800B47F0:
      addu       $2, $18, $0
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
.end func_800B46EC

.globl func_800B481C
.ent func_800B481C
func_800B481C:
      addiu      $29, $29, -0x38
      sw         $23, 0x2C($29)
      addu       $23, $6, $0
      lui        $2, (0x3B9AC9F0 >> 16)
      ori        $2, $2, (0x3B9AC9F0 & 0xFFFF)
      sw         $18, 0x18($29)
      sll        $18, $23, 7
      sw         $16, 0x10($29)
      divu       $zero, $2, $18
      bnez       $18, .L800B484C
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B484C:
      mflo       $16
      sw         $21, 0x24($29)
      addu       $21, $4, $0
      sw         $22, 0x28($29)
      addu       $22, $5, $0
      sw         $20, 0x20($29)
      sw         $31, 0x30($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      lw         $19, 0x4($21)
      bgtz       $16, .L800B4898
       addu      $20, $7, $0
      lw         $3, 0x0($21)
      addiu      $2, $0, 0x43
      sw         $2, 0x14($3)
      lw         $2, 0x0($21)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800B4898:
      slt        $2, $16, $20
      beqz       $2, .L800B48A8
       addu      $17, $20, $0
      addu       $17, $16, $0
  .L800B48A8:
      sw         $17, 0x4C($19)
      addu       $4, $21, $0
      addu       $5, $22, $0
      jal        func_800B4438
       sll       $6, $20, 2
      addu       $16, $0, $0
      beqz       $20, .L800B492C
       addu      $19, $2, $0
      subu       $3, $20, $16
  .L800B48CC:
      sltu       $2, $17, $3
      bnel       $2, $0, .L800B48D8
       addu      $3, $17, $0
  .L800B48D8:
      addu       $17, $3, $0
      mult       $17, $23
      addu       $4, $21, $0
      addu       $5, $22, $0
      mflo       $8
      jal        func_800B45F4
       sll       $6, $8, 7
      addu       $3, $17, $0
      beqz       $3, .L800B4920
       addu      $4, $2, $0
      sll        $2, $16, 2
      addu       $2, $2, $19
  .L800B4908:
      sw         $4, 0x0($2)
      addiu      $2, $2, 0x4
      addiu      $16, $16, 0x1
      addiu      $3, $3, -0x1
      bnez       $3, .L800B4908
       addu      $4, $4, $18
  .L800B4920:
      sltu       $2, $16, $20
      bnel       $2, $0, .L800B48CC
       subu      $3, $20, $16
  .L800B492C:
      addu       $2, $19, $0
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
.end func_800B481C

.globl func_800B495C
.ent func_800B495C
func_800B495C:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $19, 0x1C($29)
      addiu      $2, $0, 0x1
      sw         $31, 0x24($29)
      sw         $18, 0x18($29)
      lw         $18, 0x4($16)
      beq        $17, $2, .L800B49B8
       addu      $19, $7, $0
      lw         $3, 0x0($16)
      addiu      $2, $0, 0xB
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      sw         $17, 0x18($2)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800B49B8:
      addu       $4, $16, $0
      addu       $5, $17, $0
      jal        func_800B4438
       addiu     $6, $0, 0x80
      sw         $0, 0x0($2)
      lw         $3, 0x38($29)
      sw         $19, 0x8($2)
      sw         $3, 0x4($2)
      lw         $3, 0x3C($29)
      sw         $20, 0x20($2)
      sw         $0, 0x28($2)
      sw         $3, 0xC($2)
      lw         $3, 0x40($18)
      sw         $3, 0x2C($2)
      sw         $2, 0x40($18)
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B495C

.globl func_800B4A14
.ent func_800B4A14
func_800B4A14:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $19, 0x1C($29)
      addiu      $2, $0, 0x1
      sw         $31, 0x24($29)
      sw         $18, 0x18($29)
      lw         $18, 0x4($16)
      beq        $17, $2, .L800B4A70
       addu      $19, $7, $0
      lw         $3, 0x0($16)
      addiu      $2, $0, 0xB
      sw         $2, 0x14($3)
      lw         $2, 0x0($16)
      sw         $17, 0x18($2)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800B4A70:
      addu       $4, $16, $0
      addu       $5, $17, $0
      jal        func_800B4438
       addiu     $6, $0, 0x80
      sw         $0, 0x0($2)
      lw         $3, 0x38($29)
      sw         $19, 0x8($2)
      sw         $3, 0x4($2)
      lw         $3, 0x3C($29)
      sw         $20, 0x20($2)
      sw         $0, 0x28($2)
      sw         $3, 0xC($2)
      lw         $3, 0x44($18)
      sw         $3, 0x2C($2)
      sw         $2, 0x44($18)
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B4A14

.globl func_800B4ACC
.ent func_800B4ACC
func_800B4ACC:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $19, 0x4($20)
      addu       $17, $0, $0
      lw         $16, 0x40($19)
      beqz       $16, .L800B4B40
       addu      $18, $17, $0
  .L800B4B00:
      lw         $2, 0x0($16)
      bnez       $2, .L800B4B34
       nop
      lw         $2, 0xC($16)
      lw         $3, 0x8($16)
      mult       $2, $3
      mflo       $4
      lw         $2, 0x4($16)
      nop
      mult       $2, $3
      addu       $17, $17, $4
      mflo       $3
      addu       $18, $18, $3
  .L800B4B34:
      lw         $16, 0x2C($16)
      bnez       $16, .L800B4B00
       nop
  .L800B4B40:
      lw         $16, 0x44($19)
      beqz       $16, .L800B4B94
       nop
  .L800B4B4C:
      lw         $2, 0x0($16)
      bnez       $2, .L800B4B88
       nop
      lw         $2, 0xC($16)
      lw         $3, 0x8($16)
      mult       $2, $3
      mflo       $9
      lw         $2, 0x4($16)
      nop
      mult       $2, $3
      sll        $2, $9, 7
      addu       $17, $17, $2
      mflo       $3
      sll        $2, $3, 7
      addu       $18, $18, $2
  .L800B4B88:
      lw         $16, 0x2C($16)
      bnez       $16, .L800B4B4C
       nop
  .L800B4B94:
      blez       $17, .L800B4D70
       addu      $4, $20, $0
      addu       $5, $17, $0
      lw         $7, 0x48($19)
      jal        func_800B57F8
       addu      $6, $18, $0
      addu       $3, $2, $0
      slt        $2, $3, $18
      bnez       $2, .L800B4BC8
       nop
      lui        $17, (0x3B9ACA00 >> 16)
      j          .L800B4BFC
       ori       $17, $17, (0x3B9ACA00 & 0xFFFF)
  .L800B4BC8:
      div        $zero, $3, $17
      bnez       $17, .L800B4BD8
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B4BD8:
      addiu      $1, $0, -0x1
      bne        $17, $1, .L800B4BF0
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800B4BF0
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B4BF0:
      mflo       $17
      blezl      $17, .L800B4BFC
       addiu     $17, $0, 0x1
  .L800B4BFC:
      lw         $16, 0x40($19)
      beqz       $16, .L800B4CB4
       addiu     $18, $0, 0x1
  .L800B4C08:
      lw         $2, 0x0($16)
      bnez       $2, .L800B4CA8
       nop
      lw         $5, 0x4($16)
      lw         $4, 0xC($16)
      addiu      $2, $5, -0x1
      divu       $zero, $2, $4
      bnez       $4, .L800B4C30
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B4C30:
      mflo       $2
      addiu      $2, $2, 0x1
      slt        $2, $17, $2
      mult       $17, $4
      bnez       $2, .L800B4C50
       nop
      j          .L800B4C7C
       sw        $5, 0x10($16)
  .L800B4C50:
      lw         $2, 0x4($16)
      mflo       $3
      lw         $6, 0x8($16)
      nop
      mult       $2, $6
      addu       $4, $20, $0
      addiu      $5, $16, 0x30
      mflo       $6
      jal        func_800B5808
       sw        $3, 0x10($16)
      sw         $18, 0x28($16)
  .L800B4C7C:
      addu       $4, $20, $0
      lw         $6, 0x8($16)
      lw         $7, 0x10($16)
      jal        func_800B46EC
       addiu     $5, $0, 0x1
      sw         $2, 0x0($16)
      lw         $2, 0x4C($19)
      sw         $0, 0x18($16)
      sw         $0, 0x1C($16)
      sw         $0, 0x24($16)
      sw         $2, 0x14($16)
  .L800B4CA8:
      lw         $16, 0x2C($16)
      bnez       $16, .L800B4C08
       nop
  .L800B4CB4:
      lw         $16, 0x44($19)
      beqz       $16, .L800B4D70
       addiu     $18, $0, 0x1
  .L800B4CC0:
      lw         $2, 0x0($16)
      bnez       $2, .L800B4D64
       nop
      lw         $5, 0x4($16)
      lw         $4, 0xC($16)
      addiu      $2, $5, -0x1
      divu       $zero, $2, $4
      bnez       $4, .L800B4CE8
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B4CE8:
      mflo       $2
      addiu      $2, $2, 0x1
      slt        $2, $17, $2
      mult       $17, $4
      bnez       $2, .L800B4D08
       nop
      j          .L800B4D38
       sw        $5, 0x10($16)
  .L800B4D08:
      lw         $3, 0x4($16)
      mflo       $6
      lw         $2, 0x8($16)
      nop
      mult       $3, $2
      addu       $4, $20, $0
      addiu      $5, $16, 0x30
      sw         $6, 0x10($16)
      mflo       $3
      jal        func_800B5808
       sll       $6, $3, 7
      sw         $18, 0x28($16)
  .L800B4D38:
      addu       $4, $20, $0
      lw         $6, 0x8($16)
      lw         $7, 0x10($16)
      jal        func_800B481C
       addiu     $5, $0, 0x1
      sw         $2, 0x0($16)
      lw         $2, 0x4C($19)
      sw         $0, 0x18($16)
      sw         $0, 0x1C($16)
      sw         $0, 0x24($16)
      sw         $2, 0x14($16)
  .L800B4D64:
      lw         $16, 0x2C($16)
      bnez       $16, .L800B4CC0
       nop
  .L800B4D70:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B4ACC

.globl func_800B4D90
.ent func_800B4D90
func_800B4D90:
      addiu      $29, $29, -0x38
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $31, 0x34($29)
      sw         $22, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $16, 0x18($29)
      lw         $20, 0x8($17)
      lw         $2, 0x18($17)
      mult       $2, $20
      addu       $21, $4, $0
      addu       $22, $6, $0
      lw         $3, 0x10($17)
      mflo       $19
      blez       $3, .L800B4EA0
       addu      $16, $0, $0
  .L800B4DDC:
      subu       $2, $3, $16
      lw         $3, 0x14($17)
      addu       $4, $2, $0
      slt        $2, $3, $4
      bnel       $2, $0, .L800B4DF4
       addu      $4, $3, $0
  .L800B4DF4:
      lw         $2, 0x18($17)
      lw         $3, 0x1C($17)
      addu       $5, $2, $16
      subu       $3, $3, $5
      slt        $2, $4, $3
      bnel       $2, $0, .L800B4E10
       addu      $3, $4, $0
  .L800B4E10:
      lw         $2, 0x4($17)
      addu       $4, $3, $0
      subu       $3, $2, $5
      slt        $2, $4, $3
      bnel       $2, $0, .L800B4E28
       addu      $3, $4, $0
  .L800B4E28:
      addu       $4, $3, $0
      mult       $4, $20
      blez       $4, .L800B4EA0
       nop
      mflo       $18
      beqz       $22, .L800B4E64
       addu      $4, $21, $0
      lw         $2, 0x0($17)
      sll        $3, $16, 2
      sw         $18, 0x10($29)
      addu       $3, $3, $2
      lw         $6, 0x0($3)
      lw         $2, 0x34($17)
      j          .L800B4E80
       addiu     $5, $17, 0x30
  .L800B4E64:
      addiu      $5, $17, 0x30
      lw         $2, 0x0($17)
      sll        $3, $16, 2
      sw         $18, 0x10($29)
      addu       $3, $3, $2
      lw         $6, 0x0($3)
      lw         $2, 0x30($17)
  .L800B4E80:
      jalr       $2
       addu      $7, $19, $0
      lw         $2, 0x14($17)
      lw         $3, 0x10($17)
      addu       $16, $16, $2
      slt        $2, $16, $3
      bnez       $2, .L800B4DDC
       addu      $19, $19, $18
  .L800B4EA0:
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
.end func_800B4D90

.globl func_800B4EC8
.ent func_800B4EC8
func_800B4EC8:
      addiu      $29, $29, -0x38
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $31, 0x34($29)
      sw         $22, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      lw         $2, 0x8($18)
      lw         $3, 0x18($18)
      sll        $20, $2, 7
      mult       $3, $20
      addu       $21, $4, $0
      addu       $22, $6, $0
      lw         $4, 0x10($18)
      mflo       $19
      blez       $4, .L800B4FDC
       addu      $16, $0, $0
  .L800B4F18:
      subu       $2, $4, $16
      lw         $3, 0x14($18)
      addu       $4, $2, $0
      slt        $2, $3, $4
      bnel       $2, $0, .L800B4F30
       addu      $4, $3, $0
  .L800B4F30:
      lw         $2, 0x18($18)
      lw         $3, 0x1C($18)
      addu       $5, $2, $16
      subu       $3, $3, $5
      slt        $2, $4, $3
      bnel       $2, $0, .L800B4F4C
       addu      $3, $4, $0
  .L800B4F4C:
      lw         $2, 0x4($18)
      addu       $4, $3, $0
      subu       $3, $2, $5
      slt        $2, $4, $3
      bnel       $2, $0, .L800B4F64
       addu      $3, $4, $0
  .L800B4F64:
      addu       $4, $3, $0
      mult       $4, $20
      blez       $4, .L800B4FDC
       nop
      mflo       $17
      beqz       $22, .L800B4FA0
       addu      $4, $21, $0
      lw         $2, 0x0($18)
      sll        $3, $16, 2
      sw         $17, 0x10($29)
      addu       $3, $3, $2
      lw         $6, 0x0($3)
      lw         $2, 0x34($18)
      j          .L800B4FBC
       addiu     $5, $18, 0x30
  .L800B4FA0:
      addiu      $5, $18, 0x30
      lw         $2, 0x0($18)
      sll        $3, $16, 2
      sw         $17, 0x10($29)
      addu       $3, $3, $2
      lw         $6, 0x0($3)
      lw         $2, 0x30($18)
  .L800B4FBC:
      jalr       $2
       addu      $7, $19, $0
      lw         $2, 0x14($18)
      lw         $4, 0x10($18)
      addu       $16, $16, $2
      slt        $2, $16, $4
      bnez       $2, .L800B4F18
       addu      $19, $19, $17
  .L800B4FDC:
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
.end func_800B4EC8

.globl func_800B5004
.ent func_800B5004
func_800B5004:
      addiu      $29, $29, -0x30
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $18, 0x18($29)
      addu       $18, $20, $7
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($17)
      lw         $21, 0x40($29)
      sltu       $2, $2, $18
      bnez       $2, .L800B5060
       addu      $19, $4, $0
      lw         $2, 0xC($17)
      sltu       $2, $2, $7
      bnez       $2, .L800B5060
       nop
      lw         $2, 0x0($17)
      bnez       $2, .L800B507C
       nop
  .L800B5060:
      lw         $3, 0x0($19)
      addiu      $2, $0, 0x12
      sw         $2, 0x14($3)
      lw         $2, 0x0($19)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $19, $0
  .L800B507C:
      lw         $3, 0x18($17)
      sltu       $2, $20, $3
      bnez       $2, .L800B50A0
       nop
      lw         $2, 0x10($17)
      addu       $2, $3, $2
      sltu       $2, $2, $18
      beqz       $2, .L800B511C
       nop
  .L800B50A0:
      lw         $2, 0x28($17)
      bnez       $2, .L800B50C4
       addiu     $2, $0, 0x42
      lw         $3, 0x0($19)
      sw         $2, 0x14($3)
      lw         $2, 0x0($19)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $19, $0
  .L800B50C4:
      lw         $2, 0x24($17)
      beqz       $2, .L800B50E0
       addu      $4, $19, $0
      addu       $5, $17, $0
      jal        func_800B4D90
       addiu     $6, $0, 0x1
      sw         $0, 0x24($17)
  .L800B50E0:
      lw         $2, 0x18($17)
      sltu       $2, $2, $20
      beqz       $2, .L800B50F8
       nop
      j          .L800B510C
       sw        $20, 0x18($17)
  .L800B50F8:
      lw         $2, 0x10($17)
      subu       $2, $18, $2
      bltzl      $2, .L800B5108
       addu      $2, $0, $0
  .L800B5108:
      sw         $2, 0x18($17)
  .L800B510C:
      addu       $4, $19, $0
      addu       $5, $17, $0
      jal        func_800B4D90
       addu      $6, $0, $0
  .L800B511C:
      lw         $3, 0x1C($17)
      sltu       $2, $3, $18
      beqz       $2, .L800B51D8
       sltu      $2, $3, $20
      beqz       $2, .L800B5158
       addu      $16, $3, $0
      beqz       $21, .L800B5154
       addiu     $2, $0, 0x12
      lw         $3, 0x0($19)
      sw         $2, 0x14($3)
      lw         $2, 0x0($19)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $19, $0
  .L800B5154:
      addu       $16, $20, $0
  .L800B5158:
      bnel       $21, $0, .L800B5160
       sw        $18, 0x1C($17)
  .L800B5160:
      lw         $2, 0x20($17)
      beqz       $2, .L800B51B4
       nop
      lw         $2, 0x18($17)
      lw         $19, 0x8($17)
      subu       $16, $16, $2
      subu       $18, $18, $2
      sltu       $2, $16, $18
      beqz       $2, .L800B51D8
       addu      $5, $19, $0
  .L800B5188:
      lw         $2, 0x0($17)
      sll        $3, $16, 2
      addu       $3, $3, $2
      lw         $4, 0x0($3)
      jal        func_800B83D4
       addiu     $16, $16, 0x1
      sltu       $2, $16, $18
      bnez       $2, .L800B5188
       addu      $5, $19, $0
      j          .L800B51D8
       nop
  .L800B51B4:
      bnez       $21, .L800B51E0
       addiu     $2, $0, 0x1
      lw         $3, 0x0($19)
      addiu      $2, $0, 0x12
      sw         $2, 0x14($3)
      lw         $2, 0x0($19)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $19, $0
  .L800B51D8:
      beqz       $21, .L800B51E4
       addiu     $2, $0, 0x1
  .L800B51E0:
      sw         $2, 0x24($17)
  .L800B51E4:
      lw         $2, 0x18($17)
      lw         $3, 0x0($17)
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      subu       $2, $20, $2
      sll        $2, $2, 2
      lw         $20, 0x20($29)
      addu       $2, $3, $2
      jr         $31
       addiu     $29, $29, 0x30
.end func_800B5004

.globl func_800B521C
.ent func_800B521C
func_800B521C:
      addiu      $29, $29, -0x30
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $18, 0x18($29)
      addu       $18, $20, $7
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($17)
      lw         $21, 0x40($29)
      sltu       $2, $2, $18
      bnez       $2, .L800B5278
       addu      $19, $4, $0
      lw         $2, 0xC($17)
      sltu       $2, $2, $7
      bnez       $2, .L800B5278
       nop
      lw         $2, 0x0($17)
      bnez       $2, .L800B5294
       nop
  .L800B5278:
      lw         $3, 0x0($19)
      addiu      $2, $0, 0x12
      sw         $2, 0x14($3)
      lw         $2, 0x0($19)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $19, $0
  .L800B5294:
      lw         $3, 0x18($17)
      sltu       $2, $20, $3
      bnez       $2, .L800B52B8
       nop
      lw         $2, 0x10($17)
      addu       $2, $3, $2
      sltu       $2, $2, $18
      beqz       $2, .L800B5334
       nop
  .L800B52B8:
      lw         $2, 0x28($17)
      bnez       $2, .L800B52DC
       addiu     $2, $0, 0x42
      lw         $3, 0x0($19)
      sw         $2, 0x14($3)
      lw         $2, 0x0($19)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $19, $0
  .L800B52DC:
      lw         $2, 0x24($17)
      beqz       $2, .L800B52F8
       addu      $4, $19, $0
      addu       $5, $17, $0
      jal        func_800B4EC8
       addiu     $6, $0, 0x1
      sw         $0, 0x24($17)
  .L800B52F8:
      lw         $2, 0x18($17)
      sltu       $2, $2, $20
      beqz       $2, .L800B5310
       nop
      j          .L800B5324
       sw        $20, 0x18($17)
  .L800B5310:
      lw         $2, 0x10($17)
      subu       $2, $18, $2
      bltzl      $2, .L800B5320
       addu      $2, $0, $0
  .L800B5320:
      sw         $2, 0x18($17)
  .L800B5324:
      addu       $4, $19, $0
      addu       $5, $17, $0
      jal        func_800B4EC8
       addu      $6, $0, $0
  .L800B5334:
      lw         $3, 0x1C($17)
      sltu       $2, $3, $18
      beqz       $2, .L800B53F4
       sltu      $2, $3, $20
      beqz       $2, .L800B5370
       addu      $16, $3, $0
      beqz       $21, .L800B536C
       addiu     $2, $0, 0x12
      lw         $3, 0x0($19)
      sw         $2, 0x14($3)
      lw         $2, 0x0($19)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $19, $0
  .L800B536C:
      addu       $16, $20, $0
  .L800B5370:
      bnel       $21, $0, .L800B5378
       sw        $18, 0x1C($17)
  .L800B5378:
      lw         $2, 0x20($17)
      beqz       $2, .L800B53D0
       nop
      lw         $2, 0x18($17)
      lw         $3, 0x8($17)
      subu       $16, $16, $2
      subu       $18, $18, $2
      sltu       $2, $16, $18
      beqz       $2, .L800B53F4
       sll       $19, $3, 7
      addu       $5, $19, $0
  .L800B53A4:
      lw         $2, 0x0($17)
      sll        $3, $16, 2
      addu       $3, $3, $2
      lw         $4, 0x0($3)
      jal        func_800B83D4
       addiu     $16, $16, 0x1
      sltu       $2, $16, $18
      bnez       $2, .L800B53A4
       addu      $5, $19, $0
      j          .L800B53F4
       nop
  .L800B53D0:
      bnez       $21, .L800B53FC
       addiu     $2, $0, 0x1
      lw         $3, 0x0($19)
      addiu      $2, $0, 0x12
      sw         $2, 0x14($3)
      lw         $2, 0x0($19)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $19, $0
  .L800B53F4:
      beqz       $21, .L800B5400
       addiu     $2, $0, 0x1
  .L800B53FC:
      sw         $2, 0x24($17)
  .L800B5400:
      lw         $2, 0x18($17)
      lw         $3, 0x0($17)
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      subu       $2, $20, $2
      sll        $2, $2, 2
      lw         $20, 0x20($29)
      addu       $2, $3, $2
      jr         $31
       addiu     $29, $29, 0x30
.end func_800B521C

.globl func_800B5438
.ent func_800B5438
func_800B5438:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sltiu      $2, $20, 0x2
      sw         $31, 0x24($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $18, 0x4($19)
      bnez       $2, .L800B5494
       addiu     $2, $0, 0x1
      lw         $3, 0x0($19)
      addiu      $2, $0, 0xB
      sw         $2, 0x14($3)
      lw         $2, 0x0($19)
      sw         $20, 0x18($2)
      lw         $2, 0x0($19)
      lw         $2, 0x0($2)
      jalr       $2
       nop
      addiu      $2, $0, 0x1
  .L800B5494:
      bne        $20, $2, .L800B550C
       sll       $2, $20, 2
      lw         $16, 0x40($18)
      beqz       $16, .L800B54D0
       nop
  .L800B54A8:
      lw         $2, 0x28($16)
      beqz       $2, .L800B54C4
       addu      $4, $19, $0
      lw         $2, 0x38($16)
      addiu      $5, $16, 0x30
      jalr       $2
       sw        $0, 0x28($16)
  .L800B54C4:
      lw         $16, 0x2C($16)
      bnez       $16, .L800B54A8
       nop
  .L800B54D0:
      lw         $16, 0x44($18)
      beqz       $16, .L800B5504
       sw        $0, 0x40($18)
  .L800B54DC:
      lw         $2, 0x28($16)
      beqz       $2, .L800B54F8
       addu      $4, $19, $0
      lw         $2, 0x38($16)
      addiu      $5, $16, 0x30
      jalr       $2
       sw        $0, 0x28($16)
  .L800B54F8:
      lw         $16, 0x2C($16)
      bnez       $16, .L800B54DC
       nop
  .L800B5504:
      sw         $0, 0x44($18)
      sll        $2, $20, 2
  .L800B550C:
      addu       $2, $18, $2
      lw         $5, 0x38($2)
      beqz       $5, .L800B5550
       sw        $0, 0x38($2)
  .L800B551C:
      addu       $4, $19, $0
      lw         $2, 0x4($5)
      lw         $3, 0x8($5)
      lw         $16, 0x0($5)
      addu       $2, $2, $3
      addiu      $17, $2, 0x10
      jal        func_800B57DC
       addu      $6, $17, $0
      lw         $2, 0x48($18)
      addu       $5, $16, $0
      subu       $2, $2, $17
      bnez       $5, .L800B551C
       sw        $2, 0x48($18)
  .L800B5550:
      sll        $2, $20, 2
      addu       $2, $18, $2
      lw         $5, 0x30($2)
      beqz       $5, .L800B5598
       sw        $0, 0x30($2)
  .L800B5564:
      addu       $4, $19, $0
      lw         $2, 0x4($5)
      lw         $3, 0x8($5)
      lw         $16, 0x0($5)
      addu       $2, $2, $3
      addiu      $17, $2, 0x10
      jal        func_800B57A0
       addu      $6, $17, $0
      lw         $2, 0x48($18)
      addu       $5, $16, $0
      subu       $2, $2, $17
      bnez       $5, .L800B5564
       sw        $2, 0x48($18)
  .L800B5598:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B5438

.globl func_800B55B8
.ent func_800B55B8
func_800B55B8:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addiu      $16, $0, 0x1
      sw         $31, 0x18($29)
      addu       $4, $17, $0
  .L800B55D4:
      jal        func_800B5438
       addu      $5, $16, $0
      addiu      $16, $16, -0x1
      bgez       $16, .L800B55D4
       addu      $4, $17, $0
      lw         $5, 0x4($17)
      jal        func_800B57A0
       addiu     $6, $0, 0x50
      addu       $4, $17, $0
      jal        func_800B5868
       sw        $0, 0x4($4)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B55B8

.globl func_800B5614
.ent func_800B5614
func_800B5614:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      jal        func_800B585C
       sw        $0, 0x4($17)
      addu       $4, $17, $0
      addu       $18, $2, $0
      jal        func_800B5780
       addiu     $5, $0, 0x50
      addu       $16, $2, $0
      bnez       $16, .L800B5680
       addiu     $4, $0, 0x1
      jal        func_800B5868
       addu      $4, $17, $0
      lw         $3, 0x0($17)
      addiu      $2, $0, 0x33
      sw         $2, 0x14($3)
      lw         $2, 0x0($17)
      sw         $0, 0x18($2)
      lw         $2, 0x0($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $17, $0
      addiu      $4, $0, 0x1
  .L800B5680:
      addiu      $3, $16, 0x4
      lui        $2, %hi(func_800B4438)
      addiu      $2, $2, %lo(func_800B4438)
      sw         $2, 0x0($16)
      lui        $2, %hi(func_800B45F4)
      addiu      $2, $2, %lo(func_800B45F4)
      sw         $2, 0x4($16)
      lui        $2, %hi(func_800B46EC)
      addiu      $2, $2, %lo(func_800B46EC)
      sw         $2, 0x8($16)
      lui        $2, %hi(func_800B481C)
      addiu      $2, $2, %lo(func_800B481C)
      sw         $2, 0xC($16)
      lui        $2, %hi(func_800B495C)
      addiu      $2, $2, %lo(func_800B495C)
      sw         $2, 0x10($16)
      lui        $2, %hi(func_800B4A14)
      addiu      $2, $2, %lo(func_800B4A14)
      sw         $2, 0x14($16)
      lui        $2, %hi(func_800B4ACC)
      addiu      $2, $2, %lo(func_800B4ACC)
      sw         $2, 0x18($16)
      lui        $2, %hi(func_800B5004)
      addiu      $2, $2, %lo(func_800B5004)
      sw         $2, 0x1C($16)
      lui        $2, %hi(func_800B521C)
      addiu      $2, $2, %lo(func_800B521C)
      sw         $2, 0x20($16)
      lui        $2, %hi(func_800B5438)
      addiu      $2, $2, %lo(func_800B5438)
      sw         $2, 0x24($16)
      lui        $2, %hi(func_800B55B8)
      addiu      $2, $2, %lo(func_800B55B8)
      sw         $2, 0x28($16)
      sw         $18, 0x2C($16)
  .L800B570C:
      sw         $0, 0x30($3)
      sw         $0, 0x38($3)
      addiu      $4, $4, -0x1
      bgez       $4, .L800B570C
       addiu     $3, $3, -0x4
      addiu      $2, $0, 0x50
      sw         $0, 0x40($16)
      sw         $0, 0x44($16)
      sw         $2, 0x48($16)
      sw         $16, 0x4($17)
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B5614

.globl func_800B574C
.ent func_800B574C
func_800B574C:
      sw         $5, 0x10($16)
      lw         $2, 0x4($16)
      mflo       $3
      lw         $6, 0x8($16)
      nop
      mult       $2, $6
      addu       $4, $20, $0
      addiu      $5, $16, 0x30
      mflo       $6
      jal        func_800B6308
       sw        $3, 0x10($16)
      sw         $18, 0x28($16)
      addu       $4, $20, $0
.end func_800B574C

.globl func_800B5780
.ent func_800B5780
func_800B5780:
      addiu      $29, $29, -0x18
      addu       $4, $5, $0
      sw         $31, 0x10($29)
      jal        func_800524E8
       addu      $5, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B5780

.globl func_800B57A0
.ent func_800B57A0
func_800B57A0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80052540
       addu      $4, $5, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B57A0

.globl func_800B57BC
.ent func_800B57BC
func_800B57BC:
      addiu      $29, $29, -0x18
      addu       $4, $5, $0
      sw         $31, 0x10($29)
      jal        func_800524E8
       addu      $5, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B57BC

.globl func_800B57DC
.ent func_800B57DC
func_800B57DC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80052540
       addu      $4, $5, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B57DC

.globl func_800B57F8
.ent func_800B57F8
func_800B57F8:
      lw         $2, 0x4($4)
      lw         $2, 0x2C($2)
      jr         $31
       subu      $2, $2, $7
.end func_800B57F8

.globl func_800B5808
.ent func_800B5808
func_800B5808:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addiu      $2, $0, 0x3C
      lui        $5, %hi(D_800F5900)
      sw         $31, 0x14($29)
      lw         $3, 0x0($16)
      addiu      $5, $5, %lo(D_800F5900)
      sw         $2, 0x14($3)
      lw         $4, 0x0($16)
      addiu      $6, $0, 0x50
      jal        func_80052310
       addiu     $4, $4, 0x18
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B5808

.globl func_800B585C
.ent func_800B585C
func_800B585C:
      lui        $2, (0x989680 >> 16)
      jr         $31
       ori       $2, $2, (0x989680 & 0xFFFF)
.end func_800B585C

.globl func_800B5868
.ent func_800B5868
func_800B5868:
      jr         $31
       nop
.end func_800B5868

.globl func_800B5870
.ent func_800B5870
func_800B5870:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
.end func_800B5870
