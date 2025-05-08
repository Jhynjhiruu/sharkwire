.include "macro.inc"

#.set noat
.set noreorder

.section .text, "ax"

.globl func_800B5880
.ent func_800B5880
func_800B5880:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $16, 0x10($29)
      addiu      $16, $0, 0x1
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      lw         $17, 0x78($18)
      lw         $19, 0x60($18)
      addiu      $5, $16, 0x1
  .L800B58B4:
      addiu      $4, $0, 0x1
      slt        $2, $4, $17
      beqz       $2, .L800B58E0
       addu      $16, $5, $0
      mult       $5, $16
  .L800B58C8:
      addiu      $4, $4, 0x1
      slt        $2, $4, $17
      mflo       $5
      nop
      bnel       $2, $0, .L800B58C8
       mult      $5, $16
  .L800B58E0:
      slt        $2, $19, $5
      beql       $2, $0, .L800B58B4
       addiu     $5, $16, 0x1
      addiu      $16, $16, -0x1
      slti       $2, $16, 0x2
      beqz       $2, .L800B591C
       addiu     $2, $0, 0x35
      lw         $3, 0x0($18)
      sw         $2, 0x14($3)
      lw         $2, 0x0($18)
      sw         $5, 0x18($2)
      lw         $2, 0x0($18)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $18, $0
  .L800B591C:
      addiu      $9, $0, 0x1
      blez       $17, .L800B5948
       addu      $4, $0, $0
      addu       $3, $20, $0
  .L800B592C:
      mult       $9, $16
      sw         $16, 0x0($3)
      addiu      $4, $4, 0x1
      slt        $2, $4, $17
      mflo       $9
      bnez       $2, .L800B592C
       addiu     $3, $3, 0x4
  .L800B5948:
      addiu      $10, $0, 0x2
      lui        $2, %hi(D_800F5AC0)
      addiu      $11, $2, %lo(D_800F5AC0)
      addu       $4, $0, $0
  .L800B5958:
      blez       $17, .L800B59EC
       addu      $8, $4, $0
      addu       $7, $11, $0
  .L800B5964:
      lw         $2, 0x28($18)
      bne        $2, $10, .L800B597C
       addu      $2, $4, $0
      lw         $2, 0x0($7)
      j          .L800B5980
       sll       $2, $2, 2
  .L800B597C:
      sll        $2, $2, 2
  .L800B5980:
      addu       $6, $2, $20
      lw         $2, 0x0($6)
      div        $zero, $9, $2
      bnez       $2, .L800B5998
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B5998:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L800B59B0
       lui       $1, (0x80000000 >> 16)
      bne        $9, $1, .L800B59B0
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B59B0:
      mflo       $5
      addiu      $3, $2, 0x1
      nop
      mult       $5, $3
      mflo       $5
      slt        $2, $19, $5
      bnez       $2, .L800B59EC
       nop
      sw         $3, 0x0($6)
      addu       $9, $5, $0
      addiu      $8, $0, 0x1
      addu       $4, $4, $8
      slt        $2, $4, $17
      bnez       $2, .L800B5964
       addiu     $7, $7, 0x4
  .L800B59EC:
      bnel       $8, $0, .L800B5958
       addu      $4, $0, $0
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $9, $0
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B5880

.globl func_800B5A18
.ent func_800B5A18
func_800B5A18:
      sll        $2, $6, 8
      subu       $2, $2, $6
      srl        $3, $7, 31
      addu       $3, $7, $3
      sra        $3, $3, 1
      addu       $2, $2, $3
      div        $zero, $2, $7
      bnez       $7, .L800B5A40
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B5A40:
      addiu      $1, $0, -0x1
      bne        $7, $1, .L800B5A58
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L800B5A58
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B5A58:
      mflo       $2
      jr         $31
       nop
.end func_800B5A18

.globl func_800B5A64
.ent func_800B5A64
func_800B5A64:
      sll        $6, $6, 1
      addiu      $6, $6, 0x1
      sll        $2, $6, 8
      subu       $2, $2, $6
      addu       $2, $2, $7
      sll        $7, $7, 1
      div        $zero, $2, $7
      bnez       $7, .L800B5A8C
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B5A8C:
      addiu      $1, $0, -0x1
      bne        $7, $1, .L800B5AA4
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L800B5AA4
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B5AA4:
      mflo       $2
      jr         $31
       nop
.end func_800B5A64

.globl func_800B5AB0
.ent func_800B5AB0
func_800B5AB0:
      addiu      $29, $29, -0x48
      sw         $21, 0x34($29)
      addu       $21, $4, $0
      sw         $31, 0x44($29)
      sw         $30, 0x40($29)
      sw         $23, 0x3C($29)
      sw         $22, 0x38($29)
      sw         $20, 0x30($29)
      sw         $19, 0x2C($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      sw         $16, 0x20($29)
      lw         $30, 0x1C8($21)
      jal        func_800B5880
       addiu     $5, $30, 0x20
      addu       $23, $2, $0
      lw         $3, 0x78($21)
      addiu      $2, $0, 0x3
      bne        $3, $2, .L800B5B34
       addiu     $2, $0, 0x5C
      lw         $3, 0x0($21)
      sw         $23, 0x18($3)
      lw         $2, 0x20($30)
      addiu      $3, $3, 0x18
      sw         $2, 0x4($3)
      lw         $2, 0x24($30)
      sw         $2, 0x8($3)
      lw         $2, 0x28($30)
      sw         $2, 0xC($3)
      lw         $3, 0x0($21)
      addiu      $2, $0, 0x5B
      j          .L800B5B44
       sw        $2, 0x14($3)
  .L800B5B34:
      lw         $3, 0x0($21)
      sw         $2, 0x14($3)
      lw         $2, 0x0($21)
      sw         $23, 0x18($2)
  .L800B5B44:
      lw         $2, 0x0($21)
      addu       $4, $21, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
      addu       $4, $21, $0
      addiu      $5, $0, 0x1
      addu       $6, $23, $0
      lw         $2, 0x4($21)
      lw         $7, 0x78($21)
      lw         $2, 0x8($2)
      jalr       $2
       addu      $20, $23, $0
      lw         $3, 0x78($21)
      addu       $19, $0, $0
      blez       $3, .L800B5C6C
       sw        $2, 0x10($29)
      addu       $9, $2, $0
      addu       $8, $30, $0
  .L800B5B90:
      lw         $18, 0x20($8)
      div        $zero, $20, $18
      bnez       $18, .L800B5BA4
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B5BA4:
      addiu      $1, $0, -0x1
      bne        $18, $1, .L800B5BBC
       lui       $1, (0x80000000 >> 16)
      bne        $20, $1, .L800B5BBC
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B5BBC:
      mflo       $17
      blez       $18, .L800B5C50
       addu      $16, $0, $0
      addu       $22, $9, $0
      addu       $4, $21, $0
  .L800B5BD0:
      addu       $5, $19, $0
      addu       $6, $16, $0
      addiu      $7, $18, -0x1
      sw         $8, 0x18($29)
      jal        func_800B5A18
       sw        $9, 0x1C($29)
      mult       $16, $17
      addu       $6, $2, $0
      lw         $8, 0x18($29)
      lw         $9, 0x1C($29)
      mflo       $5
      slt        $2, $5, $23
      beql       $2, $0, .L800B5C44
       addiu     $16, $16, 0x1
  .L800B5C08:
      blez       $17, .L800B5C30
       addu      $4, $0, $0
      addu       $3, $5, $4
  .L800B5C14:
      lw         $2, 0x0($22)
      addiu      $4, $4, 0x1
      addu       $2, $2, $3
      sb         $6, 0x0($2)
      slt        $2, $4, $17
      bnez       $2, .L800B5C14
       addu      $3, $5, $4
  .L800B5C30:
      addu       $5, $5, $20
      slt        $2, $5, $23
      bnez       $2, .L800B5C08
       nop
      addiu      $16, $16, 0x1
  .L800B5C44:
      slt        $2, $16, $18
      bnel       $2, $0, .L800B5BD0
       addu      $4, $21, $0
  .L800B5C50:
      addu       $20, $17, $0
      addiu      $9, $9, 0x4
      lw         $2, 0x78($21)
      addiu      $19, $19, 0x1
      slt        $2, $19, $2
      bnez       $2, .L800B5B90
       addiu     $8, $8, 0x4
  .L800B5C6C:
      lw         $10, 0x10($29)
      sw         $10, 0x10($30)
      sw         $23, 0x14($30)
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
.end func_800B5AB0

.globl func_800B5CA8
.ent func_800B5CA8
func_800B5CA8:
      addiu      $29, $29, -0x40
      sw         $30, 0x38($29)
      addu       $30, $4, $0
      addiu      $2, $0, 0x1
      sw         $31, 0x3C($29)
      sw         $23, 0x34($29)
      sw         $22, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      lw         $3, 0x58($30)
      lw         $23, 0x1C8($30)
      bnel       $3, $2, .L800B5CFC
       sw        $0, 0x10($29)
      addiu      $9, $0, 0x1FE
      sw         $9, 0x10($29)
      j          .L800B5D00
       sw        $3, 0x1C($23)
  .L800B5CFC:
      sw         $0, 0x1C($23)
  .L800B5D00:
      addu       $4, $30, $0
      addiu      $5, $0, 0x1
      addu       $20, $0, $0
      lw         $9, 0x10($29)
      lw         $2, 0x4($30)
      lw         $7, 0x78($30)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $6, $9, 0x100
      sw         $2, 0x18($23)
      lw         $2, 0x78($30)
      lw         $22, 0x14($23)
      blez       $2, .L800B5E58
       nop
      sw         $23, 0x14($29)
  .L800B5D3C:
      lw         $9, 0x14($29)
      lw         $21, 0x20($9)
      lw         $9, 0x10($29)
      div        $zero, $22, $21
      bnez       $21, .L800B5D58
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B5D58:
      addiu      $1, $0, -0x1
      bne        $21, $1, .L800B5D70
       lui       $1, (0x80000000 >> 16)
      bne        $22, $1, .L800B5D70
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B5D70:
      mflo       $22
      beqz       $9, .L800B5D90
       sll       $8, $20, 2
      lw         $3, 0x18($23)
      addu       $3, $8, $3
      lw         $2, 0x0($3)
      addiu      $2, $2, 0xFF
      sw         $2, 0x0($3)
  .L800B5D90:
      addu       $19, $0, $0
      addu       $4, $30, $0
      addu       $5, $20, $0
      addu       $6, $19, $0
      addiu      $7, $21, -0x1
      addu       $16, $19, $0
      lw         $2, 0x18($23)
      addu       $2, $8, $2
      lw         $17, 0x0($2)
      j          .L800B5DD0
       addu      $18, $19, $0
  .L800B5DBC:
      addiu      $19, $19, 0x1
      addu       $4, $30, $0
      addu       $5, $20, $0
      addu       $6, $19, $0
      addiu      $7, $21, -0x1
  .L800B5DD0:
      jal        func_800B5A64
       nop
      addu       $3, $2, $0
      slt        $2, $3, $16
  .L800B5DE0:
      bnel       $2, $0, .L800B5DBC
       addu      $18, $18, $22
      addu       $2, $17, $16
      sb         $18, 0x0($2)
      addiu      $16, $16, 0x1
      slti       $2, $16, 0x100
      bnez       $2, .L800B5DE0
       slt       $2, $3, $16
      lw         $9, 0x10($29)
      beqz       $9, .L800B5E38
       nop
      addiu      $16, $0, 0x1
  .L800B5E10:
      lbu        $3, 0x0($17)
      subu       $2, $17, $16
      sb         $3, 0x0($2)
      addu       $3, $16, $17
      lbu        $2, 0xFF($17)
      addiu      $16, $16, 0x1
      sb         $2, 0xFF($3)
      slti       $2, $16, 0x100
      bnez       $2, .L800B5E10
       nop
  .L800B5E38:
      lw         $9, 0x14($29)
      addiu      $9, $9, 0x4
      sw         $9, 0x14($29)
      lw         $2, 0x78($30)
      addiu      $20, $20, 0x1
      slt        $2, $20, $2
      bnez       $2, .L800B5D3C
       nop
  .L800B5E58:
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
.end func_800B5CA8

.globl func_800B5E88
.ent func_800B5E88
func_800B5E88:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x14($29)
      lw         $2, 0x4($4)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x400
      addiu      $16, $16, -0x1
      sll        $16, $16, 9
      addu       $6, $0, $0
      lui        $3, %hi(D_800F59C0)
      addiu      $10, $3, %lo(D_800F59C0)
      addiu      $9, $0, 0xFF
      addu       $11, $2, $0
      addu       $7, $11, $0
  .L800B5ECC:
      addu       $5, $0, $0
      sll        $8, $6, 4
      addu       $4, $7, $0
  .L800B5ED8:
      addu       $2, $5, $8
      addu       $2, $2, $10
      lbu        $2, 0x0($2)
      sll        $2, $2, 1
      subu       $2, $9, $2
      sll        $3, $2, 8
      subu       $2, $3, $2
      bgez       $2, .L800B5F34
       nop
      negu       $2, $2
      div        $zero, $2, $16
      bnez       $16, .L800B5F10
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B5F10:
      addiu      $1, $0, -0x1
      bne        $16, $1, .L800B5F28
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L800B5F28
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B5F28:
      mflo       $2
      j          .L800B5F60
       negu      $2, $2
  .L800B5F34:
      div        $zero, $2, $16
      bnez       $16, .L800B5F44
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B5F44:
      addiu      $1, $0, -0x1
      bne        $16, $1, .L800B5F5C
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L800B5F5C
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B5F5C:
      mflo       $2
  .L800B5F60:
      sw         $2, 0x0($4)
      addiu      $5, $5, 0x1
      slti       $2, $5, 0x10
      bnez       $2, .L800B5ED8
       addiu     $4, $4, 0x4
      addiu      $6, $6, 0x1
      slti       $2, $6, 0x10
      bnez       $2, .L800B5ECC
       addiu     $7, $7, 0x40
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $11, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B5E88

.globl func_800B5F98
.ent func_800B5F98
func_800B5F98:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $16, 0x10($29)
      sw         $31, 0x20($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lw         $2, 0x78($19)
      lw         $18, 0x1C8($19)
      blez       $2, .L800B602C
       addu      $16, $0, $0
      addu       $17, $18, $0
  .L800B5FC8:
      addu       $4, $0, $0
      lw         $5, 0x20($17)
      blez       $16, .L800B6000
       addu      $6, $4, $0
      addu       $3, $18, $0
  .L800B5FDC:
      lw         $2, 0x20($3)
      bnel       $5, $2, .L800B5FF4
       addiu     $4, $4, 0x1
      lw         $6, 0x34($3)
      j          .L800B6000
       nop
  .L800B5FF4:
      slt        $2, $4, $16
      bnez       $2, .L800B5FDC
       addiu     $3, $3, 0x4
  .L800B6000:
      bnel       $6, $0, .L800B6018
       sw        $6, 0x34($17)
      jal        func_800B5E88
       addu      $4, $19, $0
      addu       $6, $2, $0
      sw         $6, 0x34($17)
  .L800B6018:
      lw         $2, 0x78($19)
      addiu      $16, $16, 0x1
      slt        $2, $16, $2
      bnez       $2, .L800B5FC8
       addiu     $17, $17, 0x4
  .L800B602C:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B5F98

.globl func_800B6048
.ent func_800B6048
func_800B6048:
      lw         $2, 0x1C8($4)
      lw         $24, 0x70($4)
      lw         $13, 0x78($4)
      lw         $15, 0x18($2)
      blez       $7, .L800B60D0
       addu      $14, $0, $0
  .L800B6060:
      addu       $11, $24, $0
      lw         $10, 0x0($5)
      lw         $12, 0x0($6)
      beql       $11, $0, .L800B60C0
       addiu     $6, $6, 0x4
  .L800B6074:
      addu       $9, $0, $0
      blez       $13, .L800B60AC
       addu      $4, $9, $0
      addu       $8, $15, $0
  .L800B6084:
      lbu        $3, 0x0($10)
      addiu      $10, $10, 0x1
      lw         $2, 0x0($8)
      addu       $2, $2, $3
      lbu        $2, 0x0($2)
      addiu      $9, $9, 0x1
      addu       $4, $4, $2
      slt        $2, $9, $13
      bnez       $2, .L800B6084
       addiu     $8, $8, 0x4
  .L800B60AC:
      sb         $4, 0x0($12)
      addiu      $11, $11, -0x1
      bnez       $11, .L800B6074
       addiu     $12, $12, 0x1
      addiu      $6, $6, 0x4
  .L800B60C0:
      addiu      $14, $14, 0x1
      slt        $2, $14, $7
      bnez       $2, .L800B6060
       addiu     $5, $5, 0x4
  .L800B60D0:
      jr         $31
       nop
.end func_800B6048

.globl func_800B60D8
.ent func_800B60D8
func_800B60D8:
      lw         $2, 0x1C8($4)
      lw         $2, 0x18($2)
      lw         $15, 0x70($4)
      lw         $14, 0x0($2)
      lw         $13, 0x4($2)
      lw         $12, 0x8($2)
      blez       $7, .L800B6168
       addu      $11, $0, $0
  .L800B60F8:
      addu       $9, $15, $0
      lw         $8, 0x0($5)
      lw         $10, 0x0($6)
      beql       $9, $0, .L800B6158
       addiu     $6, $6, 0x4
  .L800B610C:
      lbu        $2, 0x0($8)
      addiu      $8, $8, 0x1
      lbu        $3, 0x0($8)
      addiu      $8, $8, 0x1
      lbu        $4, 0x0($8)
      addiu      $8, $8, 0x1
      addiu      $9, $9, -0x1
      addu       $2, $14, $2
      addu       $3, $13, $3
      addu       $4, $12, $4
      lbu        $2, 0x0($2)
      lbu        $3, 0x0($3)
      lbu        $4, 0x0($4)
      addu       $2, $2, $3
      addu       $2, $2, $4
      sb         $2, 0x0($10)
      bnez       $9, .L800B610C
       addiu     $10, $10, 0x1
      addiu      $6, $6, 0x4
  .L800B6158:
      addiu      $11, $11, 0x1
      slt        $2, $11, $7
      bnez       $2, .L800B60F8
       addiu     $5, $5, 0x4
  .L800B6168:
      jr         $31
       nop
.end func_800B60D8

.globl func_800B6170
.ent func_800B6170
func_800B6170:
      addiu      $29, $29, -0x30
      sw         $22, 0x28($29)
      addu       $22, $7, $0
      sw         $19, 0x1C($29)
      sw         $31, 0x2C($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $17, 0x1C8($4)
      lw         $16, 0x78($4)
      lw         $21, 0x70($4)
      blez       $22, .L800B627C
       addu      $19, $0, $0
      addu       $18, $6, $0
      addu       $20, $5, $0
  .L800B61B4:
      lw         $4, 0x0($18)
      jal        func_800B83D4
       addu      $5, $21, $0
      lw         $13, 0x30($17)
      blez       $16, .L800B625C
       addu      $7, $0, $0
      addu       $24, $20, $0
      addu       $15, $18, $0
      sll        $14, $13, 6
      addu       $10, $17, $0
  .L800B61DC:
      addu       $9, $0, $0
      addu       $6, $21, $0
      lw         $2, 0x0($24)
      lw         $5, 0x0($15)
      lw         $3, 0x18($17)
      lw         $4, 0x34($10)
      addu       $8, $2, $7
      sll        $2, $7, 2
      addu       $2, $2, $3
      lw         $11, 0x0($2)
      beqz       $6, .L800B624C
       addu      $12, $4, $14
  .L800B620C:
      lbu        $4, 0x0($8)
      addu       $8, $8, $16
      sll        $2, $9, 2
      addu       $2, $2, $12
      addiu      $3, $9, 0x1
      lw         $2, 0x0($2)
      andi       $9, $3, 0xF
      addu       $4, $4, $2
      addu       $4, $11, $4
      lbu        $2, 0x0($5)
      lbu        $3, 0x0($4)
      addiu      $6, $6, -0x1
      addu       $2, $2, $3
      sb         $2, 0x0($5)
      bnez       $6, .L800B620C
       addiu     $5, $5, 0x1
  .L800B624C:
      addiu      $7, $7, 0x1
      slt        $2, $7, $16
      bnez       $2, .L800B61DC
       addiu     $10, $10, 0x4
  .L800B625C:
      addiu      $2, $13, 0x1
      andi       $13, $2, 0xF
      sw         $13, 0x30($17)
      addiu      $18, $18, 0x4
      addiu      $19, $19, 0x1
      slt        $2, $19, $22
      bnez       $2, .L800B61B4
       addiu     $20, $20, 0x4
  .L800B627C:
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
.end func_800B6170

.globl func_800B62A4
.ent func_800B62A4
func_800B62A4:
      addiu      $29, $29, -0x20
      sw         $21, 0x14($29)
      addu       $21, $7, $0
      sw         $22, 0x18($29)
      sw         $20, 0x10($29)
      sw         $19, 0xC($29)
      sw         $18, 0x8($29)
      sw         $17, 0x4($29)
      sw         $16, 0x0($29)
      lw         $13, 0x1C8($4)
      lw         $2, 0x18($13)
      lw         $22, 0x70($4)
      lw         $20, 0x0($2)
      lw         $19, 0x4($2)
      lw         $18, 0x8($2)
      blez       $21, .L800B63BC
       addu      $14, $0, $0
      addu       $17, $6, $0
      addu       $16, $5, $0
  .L800B62F0:
      addu       $11, $0, $0
      addu       $9, $22, $0
      lw         $12, 0x30($13)
      lw         $8, 0x0($16)
      lw         $10, 0x0($17)
      lw         $3, 0x34($13)
.end func_800B62A4

.globl func_800B6308
.ent func_800B6308
func_800B6308:
      lw         $4, 0x3C($13)
      sll        $2, $12, 6
      addu       $25, $3, $2
      lw         $3, 0x38($13)
      addu       $15, $4, $2
      beqz       $9, .L800B639C
       addu      $24, $3, $2
  .L800B6324:
      lbu        $5, 0x0($8)
      addiu      $8, $8, 0x1
      lbu        $7, 0x0($8)
      addiu      $8, $8, 0x1
      lbu        $6, 0x0($8)
      addiu      $8, $8, 0x1
      sll        $4, $11, 2
      addiu      $2, $11, 0x1
      andi       $11, $2, 0xF
      addu       $2, $4, $25
      lw         $2, 0x0($2)
      addiu      $9, $9, -0x1
      addu       $5, $5, $2
      addu       $5, $20, $5
      addu       $2, $4, $24
      addu       $4, $4, $15
      lw         $3, 0x0($2)
      lbu        $2, 0x0($5)
      addu       $7, $7, $3
      lw         $3, 0x0($4)
      addu       $7, $19, $7
      addu       $6, $6, $3
      addu       $6, $18, $6
      lbu        $3, 0x0($7)
      lbu        $4, 0x0($6)
      addu       $2, $2, $3
      addu       $2, $2, $4
      sb         $2, 0x0($10)
      bnez       $9, .L800B6324
       addiu     $10, $10, 0x1
  .L800B639C:
      addiu      $2, $12, 0x1
      andi       $12, $2, 0xF
      sw         $12, 0x30($13)
      addiu      $17, $17, 0x4
      addiu      $14, $14, 0x1
      slt        $2, $14, $21
      bnez       $2, .L800B62F0
       addiu     $16, $16, 0x4
  .L800B63BC:
      lw         $22, 0x18($29)
      lw         $21, 0x14($29)
      lw         $20, 0x10($29)
      lw         $19, 0xC($29)
      lw         $18, 0x8($29)
      lw         $17, 0x4($29)
      lw         $16, 0x0($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B6308

.globl func_800B63E0
.ent func_800B63E0
func_800B63E0:
      addiu      $29, $29, -0x58
      sw         $31, 0x54($29)
      sw         $30, 0x50($29)
      sw         $23, 0x4C($29)
      sw         $22, 0x48($29)
      sw         $21, 0x44($29)
      sw         $20, 0x40($29)
      sw         $19, 0x3C($29)
      sw         $18, 0x38($29)
      sw         $17, 0x34($29)
      sw         $16, 0x30($29)
      sw         $7, 0x64($29)
      lw         $16, 0x1C8($4)
      lw         $18, 0x78($4)
      lw         $22, 0x70($4)
      lw         $4, 0x140($4)
      addu       $23, $0, $0
      blez       $7, .L800B65BC
       sw        $4, 0x10($29)
      sll        $2, $22, 1
      addiu      $2, $2, 0x2
      addiu      $17, $22, -0x1
      mult       $17, $18
      addu       $21, $6, $0
      addu       $30, $5, $0
      sw         $2, 0x24($29)
      sw         $17, 0x1C($29)
      mflo       $17
      sw         $17, 0x20($29)
  .L800B6454:
      lw         $4, 0x0($21)
      jal        func_800B83D4
       addu      $5, $22, $0
      blez       $18, .L800B6598
       addu      $12, $0, $0
      addu       $24, $12, $0
      addu       $15, $16, $0
      sw         $30, 0x14($29)
      sw         $21, 0x18($29)
  .L800B6478:
      lw         $17, 0x18($29)
      lw         $9, 0x0($17)
      lw         $17, 0x14($29)
      lw         $2, 0x0($17)
      lw         $3, 0x54($16)
      beqz       $3, .L800B64BC
       addu      $10, $2, $12
      lw         $17, 0x20($29)
      addu       $10, $10, $17
      addiu      $14, $0, -0x1
      lw         $17, 0x1C($29)
      lw         $2, 0x44($15)
      addu       $9, $9, $17
      lw         $17, 0x24($29)
      negu       $25, $18
      j          .L800B64C8
       addu      $8, $2, $17
  .L800B64BC:
      addiu      $14, $0, 0x1
      addu       $25, $18, $0
      lw         $8, 0x44($15)
  .L800B64C8:
      addu       $6, $0, $0
      addu       $11, $6, $0
      addu       $7, $22, $0
      lw         $2, 0x18($16)
      lw         $3, 0x10($16)
      addu       $2, $24, $2
      addu       $3, $24, $3
      lw         $20, 0x0($2)
      lw         $19, 0x0($3)
      beqz       $7, .L800B6580
       addu      $13, $6, $0
      sll        $17, $14, 1
      sw         $17, 0x28($29)
  .L800B64FC:
      lw         $17, 0x28($29)
      lbu        $3, 0x0($10)
      addu       $5, $17, $8
      lh         $2, 0x0($5)
      lw         $17, 0x10($29)
      addu       $2, $6, $2
      addiu      $2, $2, 0x8
      sra        $6, $2, 4
      addu       $6, $6, $3
      addu       $2, $17, $6
      lbu        $6, 0x0($2)
      addu       $10, $10, $25
      addu       $2, $20, $6
      lbu        $3, 0x0($2)
      lbu        $2, 0x0($9)
      addiu      $7, $7, -0x1
      addu       $2, $2, $3
      addu       $3, $19, $3
      sb         $2, 0x0($9)
      lbu        $2, 0x0($3)
      addu       $9, $9, $14
      subu       $6, $6, $2
      addu       $4, $6, $0
      sll        $2, $6, 1
      addu       $6, $6, $2
      addu       $3, $11, $6
      addu       $6, $6, $2
      addu       $11, $13, $6
      addu       $13, $4, $0
      addu       $6, $6, $2
      sh         $3, 0x0($8)
      bnez       $7, .L800B64FC
       addu      $8, $5, $0
  .L800B6580:
      sh         $11, 0x0($8)
      addiu      $24, $24, 0x4
      addiu      $12, $12, 0x1
      slt        $2, $12, $18
      bnez       $2, .L800B6478
       addiu     $15, $15, 0x4
  .L800B6598:
      addiu      $21, $21, 0x4
      lw         $2, 0x54($16)
      sltiu      $2, $2, 0x1
      sw         $2, 0x54($16)
      lw         $17, 0x64($29)
      addiu      $23, $23, 0x1
      slt        $2, $23, $17
      bnez       $2, .L800B6454
       addiu     $30, $30, 0x4
  .L800B65BC:
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
.end func_800B63E0

.globl func_800B65EC
.ent func_800B65EC
func_800B65EC:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x70($18)
      addiu      $2, $2, 0x2
      sll        $19, $2, 1
      lw         $2, 0x78($18)
      lw         $3, 0x1C8($18)
      blez       $2, .L800B6658
       addu      $16, $0, $0
      addu       $17, $3, $0
  .L800B6628:
      addiu      $16, $16, 0x1
      addu       $4, $18, $0
      lw         $2, 0x4($18)
      addiu      $5, $0, 0x1
      lw         $2, 0x4($2)
      jalr       $2
       addu      $6, $19, $0
      sw         $2, 0x44($17)
      lw         $2, 0x78($18)
      slt        $2, $16, $2
      bnez       $2, .L800B6628
       addiu     $17, $17, 0x4
  .L800B6658:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B65EC

.globl func_800B6674
.ent func_800B6674
func_800B6674:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $17, 0x1C8($18)
      lw         $3, 0x58($18)
      lw         $2, 0x10($17)
      sw         $2, 0x88($18)
      lw         $2, 0x14($17)
      sw         $2, 0x84($18)
      addiu      $2, $0, 0x1
      beq        $3, $2, .L800B66F8
       addiu     $2, $0, 0x3
      beqz       $3, .L800B66CC
       addiu     $2, $0, 0x2
      beq        $3, $2, .L800B6748
       addiu     $2, $0, 0x2D
      j          .L800B67AC
       nop
  .L800B66CC:
      lw         $3, 0x78($18)
      addiu      $2, $0, 0x3
      bne        $3, $2, .L800B66EC
       lui       $2, %hi(func_800B6048)
      lui        $2, %hi(func_800B60D8)
      addiu      $2, $2, %lo(func_800B60D8)
      j          .L800B67C4
       sw        $2, 0x4($17)
  .L800B66EC:
      addiu      $2, $2, %lo(func_800B6048)
      j          .L800B67C4
       sw        $2, 0x4($17)
  .L800B66F8:
      lw         $3, 0x78($18)
      bnel       $3, $2, .L800B6710
       lui       $2, %hi(func_800B6170)
      lui        $2, %hi(func_800B62A4)
      j          .L800B6714
       addiu     $2, $2, %lo(func_800B62A4)
  .L800B6710:
      addiu      $2, $2, %lo(func_800B6170)
  .L800B6714:
      sw         $2, 0x4($17)
      lw         $2, 0x1C($17)
      bnez       $2, .L800B672C
       sw        $0, 0x30($17)
      jal        func_800B5CA8
       addu      $4, $18, $0
  .L800B672C:
      lw         $2, 0x34($17)
      bnez       $2, .L800B67C4
       nop
      jal        func_800B5F98
       addu      $4, $18, $0
      j          .L800B67C4
       nop
  .L800B6748:
      lui        $2, %hi(func_800B63E0)
      lw         $3, 0x44($17)
      addiu      $2, $2, %lo(func_800B63E0)
      sw         $2, 0x4($17)
      bnez       $3, .L800B6768
       sw        $0, 0x54($17)
      jal        func_800B65EC
       addu      $4, $18, $0
  .L800B6768:
      addu       $16, $0, $0
      lw         $2, 0x70($18)
      lw         $3, 0x78($18)
      addiu      $2, $2, 0x2
      blez       $3, .L800B67C4
       sll       $19, $2, 1
  .L800B6780:
      lw         $4, 0x44($17)
      addiu      $17, $17, 0x4
      jal        func_800B83D4
       addu      $5, $19, $0
      lw         $2, 0x78($18)
      addiu      $16, $16, 0x1
      slt        $2, $16, $2
      beqz       $2, .L800B67C4
       nop
      j          .L800B6780
       nop
  .L800B67AC:
      lw         $3, 0x0($18)
      sw         $2, 0x14($3)
      lw         $2, 0x0($18)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $18, $0
  .L800B67C4:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B6674

.globl func_800B67E0
.ent func_800B67E0
func_800B67E0:
      jr         $31
       nop
.end func_800B67E0

.globl func_800B67E8
.ent func_800B67E8
func_800B67E8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $3, 0x0($4)
      addiu      $2, $0, 0x2B
      sw         $2, 0x14($3)
      lw         $2, 0x0($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B67E8

.globl func_800B6818
.ent func_800B6818
func_800B6818:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x4($16)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x58
      lui        $3, %hi(func_800B6674)
      addiu      $3, $3, %lo(func_800B6674)
      sw         $2, 0x1C8($16)
      sw         $3, 0x0($2)
      lui        $3, %hi(func_800B67E0)
      addiu      $3, $3, %lo(func_800B67E0)
      sw         $3, 0x8($2)
      lui        $3, %hi(func_800B67E8)
      addiu      $3, $3, %lo(func_800B67E8)
      sw         $3, 0xC($2)
      sw         $0, 0x44($2)
      sw         $0, 0x34($2)
      lw         $2, 0x78($16)
      slti       $2, $2, 0x5
      bnez       $2, .L800B68A0
       addiu     $2, $0, 0x34
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x4
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
  .L800B68A0:
      lw         $2, 0x60($16)
      slti       $2, $2, 0x101
      bnez       $2, .L800B68D4
       addiu     $2, $0, 0x36
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x100
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
  .L800B68D4:
      jal        func_800B5AB0
       addu      $4, $16, $0
      jal        func_800B5CA8
       addu      $4, $16, $0
      lw         $3, 0x58($16)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L800B68FC
       nop
      jal        func_800B65EC
       addu      $4, $16, $0
  .L800B68FC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B6818

.globl func_800B690C
.ent func_800B690C
func_800B690C:
      addiu      $16, $0, 0x1
  .L800B6910:
      lbu        $3, 0x0($17)
      subu       $2, $17, $16
      sb         $3, 0x0($2)
      addu       $3, $16, $17
      lbu        $2, 0xFF($17)
      addiu      $16, $16, 0x1
      sb         $2, 0xFF($3)
      slti       $2, $16, 0x100
      bnez       $2, .L800B6910
       nop
      lw         $9, 0x14($29)
      addiu      $9, $9, 0x4
  .globl D_800B6940
D_800B6940:
      lw         $2, 0x1C8($4)
      lw         $12, 0x70($4)
      lw         $11, 0x18($2)
      blez       $7, .L800B69D4
       addu      $10, $0, $0
  .L800B6954:
      lw         $9, 0x0($5)
      addu       $8, $12, $0
      beql       $8, $0, .L800B69C8
       addiu     $10, $10, 0x1
      addiu      $6, $9, 0x2
  .L800B6968:
      lbu        $2, 0x0($9)
      lbu        $3, -0x1($6)
      srl        $2, $2, 3
      sll        $2, $2, 2
      addu       $2, $2, $11
      srl        $3, $3, 2
      sll        $3, $3, 6
      lw         $4, 0x0($2)
      lbu        $2, 0x0($6)
      addu       $4, $4, $3
      srl        $2, $2, 3
      sll        $2, $2, 1
      addu       $4, $4, $2
      lhu        $3, 0x0($4)
      addiu      $2, $3, 0x1
      sh         $2, 0x0($4)
      andi       $2, $2, 0xFFFF
      beql       $2, $0, .L800B69B4
       sh        $3, 0x0($4)
  .L800B69B4:
      addiu      $6, $6, 0x3
      addiu      $8, $8, -0x1
      bnez       $8, .L800B6968
       addiu     $9, $9, 0x3
      addiu      $10, $10, 0x1
  .L800B69C8:
      slt        $2, $10, $7
      bnez       $2, .L800B6954
       addiu     $5, $5, 0x4
  .L800B69D4:
      jr         $31
       nop
.end func_800B690C

.globl func_800B69DC
.ent func_800B69DC
func_800B69DC:
      addu       $7, $0, $0
      addu       $6, $7, $0
      blez       $5, .L800B6A1C
       addu      $8, $7, $0
  .L800B69EC:
      lw         $3, 0x1C($4)
      slt        $2, $7, $3
      beqz       $2, .L800B6A10
       addiu     $6, $6, 0x1
      lw         $2, 0x18($4)
      blez       $2, .L800B6A10
       nop
      addu       $8, $4, $0
      addu       $7, $3, $0
  .L800B6A10:
      slt        $2, $6, $5
      bnez       $2, .L800B69EC
       addiu     $4, $4, 0x20
  .L800B6A1C:
      jr         $31
       addu      $2, $8, $0
.end func_800B69DC

.globl func_800B6A24
.ent func_800B6A24
func_800B6A24:
      addu       $7, $0, $0
      addu       $6, $7, $0
      blez       $5, .L800B6A58
       addu      $8, $7, $0
  .L800B6A34:
      lw         $3, 0x18($4)
      slt        $2, $7, $3
      beqz       $2, .L800B6A4C
       addiu     $6, $6, 0x1
      addu       $8, $4, $0
      addu       $7, $3, $0
  .L800B6A4C:
      slt        $2, $6, $5
      bnez       $2, .L800B6A34
       addiu     $4, $4, 0x20
  .L800B6A58:
      jr         $31
       addu      $2, $8, $0
.end func_800B6A24

.globl func_800B6A60
.ent func_800B6A60
func_800B6A60:
      addiu      $29, $29, -0x8
      sw         $16, 0x0($29)
      lw         $14, 0x0($5)
      lw         $12, 0x4($5)
      lw         $15, 0x8($5)
      lw         $10, 0xC($5)
      lw         $13, 0x10($5)
      lw         $9, 0x14($5)
      lw         $2, 0x1C8($4)
      slt        $3, $14, $12
      lw         $25, 0x18($2)
      beqz       $3, .L800B6BC4
       slt       $2, $12, $14
      addu       $7, $14, $0
      bnez       $2, .L800B6B2C
       slt       $2, $14, $12
      sll        $24, $13, 1
      sll        $2, $7, 2
      addu       $11, $2, $25
  .L800B6AAC:
      addu       $6, $15, $0
      slt        $2, $10, $6
      bnel       $2, $0, .L800B6B1C
       addiu     $7, $7, 0x1
      addu       $8, $11, $0
      addu       $4, $13, $0
  .L800B6AC4:
      lw         $2, 0x0($8)
      sll        $3, $6, 6
      addu       $2, $2, $3
      addu       $3, $2, $24
      slt        $2, $9, $4
      bnel       $2, $0, .L800B6B0C
       addiu     $6, $6, 0x1
  .L800B6AE0:
      lhu        $2, 0x0($3)
      beqz       $2, .L800B6AF8
       addiu     $3, $3, 0x2
      addu       $14, $7, $0
      j          .L800B6B28
       sw        $14, 0x0($5)
  .L800B6AF8:
      addiu      $4, $4, 0x1
      slt        $2, $9, $4
      beqz       $2, .L800B6AE0
       nop
      addiu      $6, $6, 0x1
  .L800B6B0C:
      slt        $2, $10, $6
      beql       $2, $0, .L800B6AC4
       addu      $4, $13, $0
      addiu      $7, $7, 0x1
  .L800B6B1C:
      slt        $2, $12, $7
      beqz       $2, .L800B6AAC
       addiu     $11, $11, 0x4
  .L800B6B28:
      slt        $2, $14, $12
  .L800B6B2C:
      beqz       $2, .L800B6BC4
       slt       $2, $12, $14
      bnez       $2, .L800B6BC4
       addu      $7, $12, $0
      sll        $24, $13, 1
      sll        $2, $12, 2
      addu       $11, $2, $25
  .L800B6B48:
      addu       $6, $15, $0
      slt        $2, $10, $6
      bnel       $2, $0, .L800B6BB8
       addiu     $7, $7, -0x1
      addu       $8, $11, $0
      addu       $4, $13, $0
  .L800B6B60:
      lw         $2, 0x0($8)
      sll        $3, $6, 6
      addu       $2, $2, $3
      addu       $3, $2, $24
      slt        $2, $9, $4
      bnel       $2, $0, .L800B6BA8
       addiu     $6, $6, 0x1
  .L800B6B7C:
      lhu        $2, 0x0($3)
      beqz       $2, .L800B6B94
       addiu     $3, $3, 0x2
      addu       $12, $7, $0
      j          .L800B6BC4
       sw        $12, 0x4($5)
  .L800B6B94:
      addiu      $4, $4, 0x1
      slt        $2, $9, $4
      beqz       $2, .L800B6B7C
       nop
      addiu      $6, $6, 0x1
  .L800B6BA8:
      slt        $2, $10, $6
      beql       $2, $0, .L800B6B60
       addu      $4, $13, $0
      addiu      $7, $7, -0x1
  .L800B6BB8:
      slt        $2, $7, $14
      beqz       $2, .L800B6B48
       addiu     $11, $11, -0x4
  .L800B6BC4:
      slt        $2, $15, $10
      beqz       $2, .L800B6CF8
       slt       $2, $10, $15
      addu       $6, $15, $0
      bnez       $2, .L800B6C64
       slt       $2, $15, $10
      sll        $24, $13, 1
      addu       $7, $14, $0
  .L800B6BE4:
      slt        $2, $12, $7
      bnel       $2, $0, .L800B6C54
       addiu     $6, $6, 0x1
      sll        $11, $6, 6
      sll        $2, $7, 2
      addu       $8, $2, $25
  .L800B6BFC:
      lw         $2, 0x0($8)
      addu       $4, $13, $0
      addu       $2, $2, $11
      addu       $3, $2, $24
      slt        $2, $9, $4
      bnel       $2, $0, .L800B6C44
       addiu     $7, $7, 0x1
  .L800B6C18:
      lhu        $2, 0x0($3)
      beqz       $2, .L800B6C30
       addiu     $3, $3, 0x2
      addu       $15, $6, $0
      j          .L800B6C60
       sw        $15, 0x8($5)
  .L800B6C30:
      addiu      $4, $4, 0x1
      slt        $2, $9, $4
      beqz       $2, .L800B6C18
       nop
      addiu      $7, $7, 0x1
  .L800B6C44:
      slt        $2, $12, $7
      beqz       $2, .L800B6BFC
       addiu     $8, $8, 0x4
      addiu      $6, $6, 0x1
  .L800B6C54:
      slt        $2, $10, $6
      beql       $2, $0, .L800B6BE4
       addu      $7, $14, $0
  .L800B6C60:
      slt        $2, $15, $10
  .L800B6C64:
      beqz       $2, .L800B6CF8
       slt       $2, $10, $15
      bnez       $2, .L800B6CF8
       addu      $6, $10, $0
      sll        $24, $13, 1
      addu       $7, $14, $0
  .L800B6C7C:
      slt        $2, $12, $7
      bnel       $2, $0, .L800B6CEC
       addiu     $6, $6, -0x1
      sll        $11, $6, 6
      sll        $2, $7, 2
      addu       $8, $2, $25
  .L800B6C94:
      lw         $2, 0x0($8)
      addu       $4, $13, $0
      addu       $2, $2, $11
      addu       $3, $2, $24
      slt        $2, $9, $4
      bnel       $2, $0, .L800B6CDC
       addiu     $7, $7, 0x1
  .L800B6CB0:
      lhu        $2, 0x0($3)
      beqz       $2, .L800B6CC8
       addiu     $3, $3, 0x2
      addu       $10, $6, $0
      j          .L800B6CF8
       sw        $10, 0xC($5)
  .L800B6CC8:
      addiu      $4, $4, 0x1
      slt        $2, $9, $4
      beqz       $2, .L800B6CB0
       nop
      addiu      $7, $7, 0x1
  .L800B6CDC:
      slt        $2, $12, $7
      beqz       $2, .L800B6C94
       addiu     $8, $8, 0x4
      addiu      $6, $6, -0x1
  .L800B6CEC:
      slt        $2, $6, $15
      beql       $2, $0, .L800B6C7C
       addu      $7, $14, $0
  .L800B6CF8:
      slt        $2, $13, $9
      beqz       $2, .L800B6E24
       addu      $4, $13, $0
      slt        $2, $9, $4
      bnez       $2, .L800B6D94
       slt       $2, $13, $9
      sll        $24, $15, 6
      addu       $7, $14, $0
  .L800B6D18:
      slt        $2, $12, $7
      bnel       $2, $0, .L800B6D84
       addiu     $4, $4, 0x1
      sll        $11, $4, 1
      sll        $2, $7, 2
      addu       $8, $2, $25
  .L800B6D30:
      lw         $2, 0x0($8)
      addu       $6, $15, $0
      addu       $2, $2, $24
      addu       $3, $2, $11
      slt        $2, $10, $6
      bnel       $2, $0, .L800B6D74
       addiu     $7, $7, 0x1
  .L800B6D4C:
      lhu        $2, 0x0($3)
      beql       $2, $0, .L800B6D64
       addiu     $6, $6, 0x1
      addu       $13, $4, $0
      j          .L800B6D90
       sw        $13, 0x10($5)
  .L800B6D64:
      slt        $2, $10, $6
      beqz       $2, .L800B6D4C
       addiu     $3, $3, 0x40
      addiu      $7, $7, 0x1
  .L800B6D74:
      slt        $2, $12, $7
      beqz       $2, .L800B6D30
       addiu     $8, $8, 0x4
      addiu      $4, $4, 0x1
  .L800B6D84:
      slt        $2, $9, $4
      beql       $2, $0, .L800B6D18
       addu      $7, $14, $0
  .L800B6D90:
      slt        $2, $13, $9
  .L800B6D94:
      beqz       $2, .L800B6E24
       slt       $2, $9, $13
      bnez       $2, .L800B6E24
       addu      $4, $9, $0
      sll        $24, $15, 6
      addu       $7, $14, $0
  .L800B6DAC:
      slt        $2, $12, $7
      bnel       $2, $0, .L800B6E18
       addiu     $4, $4, -0x1
      sll        $11, $4, 1
      sll        $2, $7, 2
      addu       $8, $2, $25
  .L800B6DC4:
      lw         $2, 0x0($8)
      addu       $6, $15, $0
      addu       $2, $2, $24
      addu       $3, $2, $11
      slt        $2, $10, $6
      bnel       $2, $0, .L800B6E08
       addiu     $7, $7, 0x1
  .L800B6DE0:
      lhu        $2, 0x0($3)
      beqz       $2, .L800B6DF8
       addiu     $6, $6, 0x1
      addu       $9, $4, $0
      j          .L800B6E24
       sw        $9, 0x14($5)
  .L800B6DF8:
      slt        $2, $10, $6
      beqz       $2, .L800B6DE0
       addiu     $3, $3, 0x40
      addiu      $7, $7, 0x1
  .L800B6E08:
      slt        $2, $12, $7
      beqz       $2, .L800B6DC4
       addiu     $8, $8, 0x4
      addiu      $4, $4, -0x1
  .L800B6E18:
      slt        $2, $4, $13
      beqz       $2, .L800B6DAC
       addu      $7, $14, $0
  .L800B6E24:
      subu       $2, $12, $14
      sll        $2, $2, 4
      mult       $2, $2
      subu       $2, $10, $15
      sll        $3, $2, 2
      mflo       $4
      sll        $2, $2, 3
      addu       $2, $2, $3
      mult       $2, $2
      mflo       $3
      subu       $2, $9, $13
      sll        $2, $2, 3
      mult       $2, $2
      addu       $7, $14, $0
      addu       $2, $4, $3
      mflo       $6
      addu       $2, $2, $6
      sw         $2, 0x18($5)
      slt        $2, $12, $7
      bnez       $2, .L800B6EEC
       addu      $11, $0, $0
      sll        $24, $13, 1
      sll        $2, $7, 2
      addu       $14, $2, $25
  .L800B6E84:
      addu       $6, $15, $0
      slt        $2, $10, $6
      bnel       $2, $0, .L800B6EE0
       addiu     $7, $7, 0x1
      lw         $3, 0x0($14)
      sll        $2, $6, 6
      addu       $8, $2, $3
  .L800B6EA0:
      addu       $4, $13, $0
      slt        $2, $9, $4
      bnez       $2, .L800B6ECC
       addu      $3, $8, $24
  .L800B6EB0:
      lhu        $2, 0x0($3)
      bnel       $2, $0, .L800B6EBC
       addiu     $11, $11, 0x1
  .L800B6EBC:
      addiu      $4, $4, 0x1
      slt        $2, $9, $4
      beqz       $2, .L800B6EB0
       addiu     $3, $3, 0x2
  .L800B6ECC:
      addiu      $6, $6, 0x1
      slt        $2, $10, $6
      beqz       $2, .L800B6EA0
       addiu     $8, $8, 0x40
      addiu      $7, $7, 0x1
  .L800B6EE0:
      slt        $2, $12, $7
      beqz       $2, .L800B6E84
       addiu     $14, $14, 0x4
  .L800B6EEC:
      sw         $11, 0x1C($5)
      lw         $16, 0x0($29)
      jr         $31
       addiu     $29, $29, 0x8
.end func_800B6A60

.globl func_800B6EFC
.ent func_800B6EFC
func_800B6EFC:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $19, 0x1C($29)
      addu       $19, $7, $0
      slt        $2, $17, $19
      sw         $31, 0x24($29)
      beqz       $2, .L800B709C
       sw        $16, 0x10($29)
      sll        $2, $17, 1
  .L800B6F34:
      slt        $2, $19, $2
      bnez       $2, .L800B6F50
       addu      $4, $18, $0
      jal        func_800B69DC
       addu      $5, $17, $0
      j          .L800B6F5C
       addu      $5, $2, $0
  .L800B6F50:
      jal        func_800B6A24
       addu      $5, $17, $0
      addu       $5, $2, $0
  .L800B6F5C:
      beqz       $5, .L800B709C
       sll       $2, $17, 5
      lw         $3, 0x4($5)
      addu       $16, $18, $2
      sw         $3, 0x4($16)
      lw         $2, 0xC($5)
      sw         $2, 0xC($16)
      lw         $2, 0x14($5)
      sw         $2, 0x14($16)
      lw         $2, 0x0($5)
      sw         $2, 0x0($16)
      lw         $2, 0x8($5)
      sw         $2, 0x8($16)
      lw         $2, 0x10($5)
      sw         $2, 0x10($16)
      lw         $13, 0xC($5)
      lw         $12, 0x8($5)
      lw         $11, 0x4($5)
      lw         $10, 0x0($5)
      lw         $9, 0x14($5)
      lw         $8, 0x10($5)
      subu       $2, $13, $12
      sll        $3, $2, 2
      sll        $2, $2, 3
      addu       $3, $2, $3
      subu       $2, $11, $10
      sll        $4, $2, 4
      subu       $2, $9, $8
      sll        $7, $2, 3
      slt        $2, $3, $4
      beqz       $2, .L800B6FE4
       addiu     $6, $0, 0x1
      addu       $3, $4, $0
      addu       $6, $0, $0
  .L800B6FE4:
      slt        $2, $3, $7
      bnel       $2, $0, .L800B6FF0
       addiu     $6, $0, 0x2
  .L800B6FF0:
      addiu      $2, $0, 0x1
      beq        $6, $2, .L800B7040
       slti      $2, $6, 0x2
      beqz       $2, .L800B7014
       addiu     $2, $0, 0x2
      beqz       $6, .L800B7024
       addu      $2, $11, $10
      j          .L800B7078
       nop
  .L800B7014:
      beq        $6, $2, .L800B7060
       addu      $2, $9, $8
      j          .L800B7078
       nop
  .L800B7024:
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $2, $2, 1
      sw         $2, 0x4($5)
      addiu      $2, $2, 0x1
      j          .L800B7078
       sw        $2, 0x0($16)
  .L800B7040:
      addu       $2, $13, $12
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $2, $2, 1
      sw         $2, 0xC($5)
      addiu      $2, $2, 0x1
      j          .L800B7078
       sw        $2, 0x8($16)
  .L800B7060:
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $2, $2, 1
      sw         $2, 0x14($5)
      addiu      $2, $2, 0x1
      sw         $2, 0x10($16)
  .L800B7078:
      jal        func_800B6A60
       addu      $4, $20, $0
      addu       $4, $20, $0
      jal        func_800B6A60
       addu      $5, $16, $0
      addiu      $17, $17, 0x1
      slt        $2, $17, $19
      bnez       $2, .L800B6F34
       sll       $2, $17, 1
  .L800B709C:
      addu       $2, $17, $0
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B6EFC

.globl func_800B70C0
.ent func_800B70C0
func_800B70C0:
      addiu      $29, $29, -0x30
      sw         $23, 0x24($29)
      addu       $23, $4, $0
      addu       $13, $0, $0
      addu       $4, $13, $0
      addu       $25, $13, $0
      sw         $6, 0x38($29)
      sw         $30, 0x28($29)
      sw         $22, 0x20($29)
      sw         $21, 0x1C($29)
      sw         $20, 0x18($29)
      sw         $19, 0x14($29)
      sw         $18, 0x10($29)
      sw         $17, 0xC($29)
      sw         $16, 0x8($29)
      lw         $15, 0x0($5)
      lw         $22, 0x4($5)
      lw         $2, 0x1C8($23)
      lw         $30, 0x8($5)
      lw         $19, 0xC($5)
      lw         $20, 0x10($5)
      lw         $24, 0x14($5)
      slt        $3, $22, $15
      lw         $7, 0x18($2)
      bnez       $3, .L800B7208
       addu      $6, $13, $0
      sll        $21, $20, 1
      sw         $21, 0x0($29)
      sll        $2, $15, 3
      addiu      $18, $2, 0x4
      sll        $2, $15, 2
      addu       $17, $2, $7
  .L800B7140:
      addu       $10, $30, $0
      slt        $2, $19, $10
      bnel       $2, $0, .L800B71F8
       addiu     $18, $18, 0x8
      addu       $16, $18, $0
      sll        $2, $10, 2
      addiu      $12, $2, 0x2
      lw         $3, 0x0($17)
      sll        $2, $10, 6
      addu       $11, $2, $3
  .L800B7168:
      lw         $21, 0x0($29)
      addu       $7, $20, $0
      slt        $2, $24, $7
      bnez       $2, .L800B71E0
       addu      $9, $11, $21
      addu       $14, $12, $0
      sll        $2, $7, 3
      addiu      $8, $2, 0x4
  .L800B7188:
      lhu        $2, 0x0($9)
      beqz       $2, .L800B71D0
       addiu     $9, $9, 0x2
      mult       $16, $2
      mflo       $21
      nop
      nop
      mult       $14, $2
      mflo       $3
      nop
      nop
      mult       $8, $2
      addu       $13, $13, $2
      sw         $21, 0x4($29)
      addu       $4, $4, $21
      addu       $25, $25, $3
      mflo       $5
      addu       $6, $6, $5
  .L800B71D0:
      addiu      $7, $7, 0x1
      slt        $2, $24, $7
      beqz       $2, .L800B7188
       addiu     $8, $8, 0x8
  .L800B71E0:
      addiu      $12, $12, 0x4
      addiu      $10, $10, 0x1
      slt        $2, $19, $10
      beqz       $2, .L800B7168
       addiu     $11, $11, 0x40
      addiu      $18, $18, 0x8
  .L800B71F8:
      addiu      $15, $15, 0x1
      slt        $2, $22, $15
      beqz       $2, .L800B7140
       addiu     $17, $17, 0x4
  .L800B7208:
      sra        $3, $13, 1
      addu       $4, $4, $3
      div        $zero, $4, $13
      bnez       $13, .L800B7220
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B7220:
      addiu      $1, $0, -0x1
      bne        $13, $1, .L800B7238
       lui       $1, (0x80000000 >> 16)
      bne        $4, $1, .L800B7238
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B7238:
      mflo       $4
      addu       $5, $25, $3
      nop
      div        $zero, $5, $13
      bnez       $13, .L800B7254
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B7254:
      addiu      $1, $0, -0x1
      bne        $13, $1, .L800B726C
       lui       $1, (0x80000000 >> 16)
      bne        $5, $1, .L800B726C
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B726C:
      mflo       $5
      addu       $3, $6, $3
      nop
      div        $zero, $3, $13
      bnez       $13, .L800B7288
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B7288:
      addiu      $1, $0, -0x1
      bne        $13, $1, .L800B72A0
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800B72A0
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B72A0:
      mflo       $3
      lw         $2, 0x88($23)
      lw         $21, 0x38($29)
      lw         $2, 0x0($2)
      addu       $2, $2, $21
      sb         $4, 0x0($2)
      lw         $2, 0x88($23)
      lw         $2, 0x4($2)
      addu       $2, $2, $21
      sb         $5, 0x0($2)
      lw         $2, 0x88($23)
      lw         $2, 0x8($2)
      addu       $2, $2, $21
      sb         $3, 0x0($2)
      lw         $30, 0x28($29)
      lw         $23, 0x24($29)
      lw         $22, 0x20($29)
      lw         $21, 0x1C($29)
      lw         $20, 0x18($29)
      lw         $19, 0x14($29)
      lw         $18, 0x10($29)
      lw         $17, 0xC($29)
      lw         $16, 0x8($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800B70C0

.globl func_800B7304
.ent func_800B7304
func_800B7304:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      addiu      $5, $0, 0x1
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lw         $2, 0x4($20)
      sll        $6, $16, 5
      lw         $2, 0x0($2)
      jalr       $2
       addu      $18, $0, $0
      addu       $4, $20, $0
      addu       $17, $2, $0
      addu       $5, $17, $0
      addiu      $3, $0, 0x1F
      addiu      $2, $0, 0x3F
      sw         $0, 0x0($17)
      sw         $3, 0x4($17)
      sw         $0, 0x8($17)
      sw         $2, 0xC($17)
      sw         $0, 0x10($17)
      jal        func_800B6A60
       sw        $3, 0x14($17)
      addu       $4, $20, $0
      addu       $5, $17, $0
      addiu      $6, $0, 0x1
      jal        func_800B6EFC
       addu      $7, $16, $0
      addu       $19, $2, $0
      blez       $19, .L800B73B0
       addu      $16, $17, $0
  .L800B7390:
      addu       $4, $20, $0
      addu       $5, $16, $0
      jal        func_800B70C0
       addu      $6, $18, $0
      addiu      $18, $18, 0x1
      slt        $2, $18, $19
      bnez       $2, .L800B7390
       addiu     $16, $16, 0x20
  .L800B73B0:
      lw         $3, 0x0($20)
      addiu      $2, $0, 0x5D
      sw         $19, 0x84($20)
      sw         $2, 0x14($3)
      lw         $2, 0x0($20)
      sw         $19, 0x18($2)
      lw         $2, 0x0($20)
      addu       $4, $20, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B7304

.globl func_800B73FC
.ent func_800B73FC
func_800B73FC:
      addiu      $29, $29, -0x418
      sw         $16, 0x400($29)
      lui        $16, (0x7FFFFFFF >> 16)
      ori        $16, $16, (0x7FFFFFFF & 0xFFFF)
      addu       $12, $0, $0
      addiu      $15, $5, 0x18
      addu       $2, $5, $15
      sw         $19, 0x40C($29)
      sra        $19, $2, 1
      addiu      $14, $6, 0x1C
      addu       $2, $6, $14
      sw         $18, 0x408($29)
      sra        $18, $2, 1
      addiu      $13, $7, 0x18
      addu       $2, $7, $13
      sw         $17, 0x404($29)
      sw         $21, 0x414($29)
      sw         $20, 0x410($29)
      lw         $25, 0x84($4)
      lw         $20, 0x428($29)
      blez       $25, .L800B75F8
       sra       $17, $2, 1
      addu       $24, $29, $0
  .L800B7458:
      lw         $2, 0x88($4)
      lw         $2, 0x0($2)
      addu       $2, $2, $12
      lbu        $8, 0x0($2)
      slt        $2, $8, $5
      beqz       $2, .L800B7488
       subu      $2, $8, $5
      sll        $2, $2, 1
      mult       $2, $2
      mflo       $11
      j          .L800B74C0
       subu      $2, $8, $15
  .L800B7488:
      slt        $2, $15, $8
      beqz       $2, .L800B74A8
       subu      $2, $8, $15
      sll        $2, $2, 1
      mult       $2, $2
      mflo       $11
      j          .L800B74C0
       subu      $2, $8, $5
  .L800B74A8:
      slt        $2, $19, $8
      bnez       $2, .L800B74BC
       addu      $11, $0, $0
      j          .L800B74C0
       subu      $2, $8, $15
  .L800B74BC:
      subu       $2, $8, $5
  .L800B74C0:
      sll        $2, $2, 1
      mult       $2, $2
      mflo       $9
      lw         $2, 0x88($4)
      lw         $2, 0x4($2)
      addu       $2, $2, $12
      lbu        $8, 0x0($2)
      slt        $2, $8, $6
      beqz       $2, .L800B74FC
       subu      $3, $8, $6
      sll        $2, $3, 1
      addu       $2, $2, $3
      mult       $2, $2
      j          .L800B7518
       subu      $3, $8, $14
  .L800B74FC:
      slt        $2, $14, $8
      beqz       $2, .L800B7538
       subu      $3, $8, $14
      sll        $2, $3, 1
      addu       $2, $2, $3
      mult       $2, $2
      subu       $3, $8, $6
  .L800B7518:
      mflo       $10
      sll        $2, $3, 1
      addu       $2, $2, $3
      mult       $2, $2
      addu       $11, $11, $10
      mflo       $3
      j          .L800B755C
       addu      $9, $9, $3
  .L800B7538:
      slt        $2, $18, $8
      bnez       $2, .L800B7548
       subu      $3, $8, $6
      subu       $3, $8, $14
  .L800B7548:
      sll        $2, $3, 1
      addu       $2, $2, $3
      mult       $2, $2
      mflo       $21
      addu       $9, $9, $21
  .L800B755C:
      lw         $2, 0x88($4)
      lw         $2, 0x8($2)
      addu       $2, $2, $12
      lbu        $8, 0x0($2)
      slt        $2, $8, $7
      beqz       $2, .L800B7588
       subu      $2, $8, $7
      mult       $2, $2
      mflo       $3
      j          .L800B75A0
       subu      $2, $8, $13
  .L800B7588:
      slt        $2, $13, $8
      beqz       $2, .L800B75B8
       subu      $2, $8, $13
      mult       $2, $2
      mflo       $3
      subu       $2, $8, $7
  .L800B75A0:
      nop
      mult       $2, $2
      addu       $11, $11, $3
      mflo       $8
      j          .L800B75D4
       addu      $9, $9, $8
  .L800B75B8:
      slt        $2, $17, $8
      bnez       $2, .L800B75C8
       subu      $2, $8, $7
      subu       $2, $8, $13
  .L800B75C8:
      mult       $2, $2
      mflo       $21
      addu       $9, $9, $21
  .L800B75D4:
      slt        $2, $9, $16
      beqz       $2, .L800B75E4
       sw        $11, 0x0($24)
      addu       $16, $9, $0
  .L800B75E4:
      addiu      $12, $12, 0x1
      slt        $2, $12, $25
      bnez       $2, .L800B7458
       addiu     $24, $24, 0x4
      addu       $12, $0, $0
  .L800B75F8:
      blez       $25, .L800B7630
       addu      $3, $12, $0
      addu       $4, $29, $0
  .L800B7604:
      lw         $2, 0x0($4)
      slt        $2, $16, $2
      bnel       $2, $0, .L800B7624
       addiu     $12, $12, 0x1
      addu       $2, $20, $3
      sb         $12, 0x0($2)
      addiu      $3, $3, 0x1
      addiu      $12, $12, 0x1
  .L800B7624:
      slt        $2, $12, $25
      bnez       $2, .L800B7604
       addiu     $4, $4, 0x4
  .L800B7630:
      lw         $21, 0x414($29)
      lw         $20, 0x410($29)
      lw         $19, 0x40C($29)
      lw         $18, 0x408($29)
      lw         $17, 0x404($29)
      lw         $16, 0x400($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x418
.end func_800B73FC

.globl func_800B7654
.ent func_800B7654
func_800B7654:
      addiu      $29, $29, -0x220
      sw         $19, 0x20C($29)
      addu       $19, $4, $0
      sw         $20, 0x210($29)
      addu       $20, $5, $0
      sw         $21, 0x214($29)
      addu       $21, $6, $0
      sw         $22, 0x218($29)
      addu       $22, $7, $0
      addu       $13, $29, $0
      sw         $16, 0x200($29)
      lw         $16, 0x230($29)
      addiu      $24, $0, 0x7F
      sw         $18, 0x208($29)
      lw         $18, 0x234($29)
      lui        $2, (0x7FFFFFFF >> 16)
      sw         $17, 0x204($29)
      lw         $17, 0x238($29)
      ori        $2, $2, (0x7FFFFFFF & 0xFFFF)
      sw         $23, 0x21C($29)
  .L800B76A4:
      sw         $2, 0x0($13)
      addiu      $24, $24, -0x1
      bgez       $24, .L800B76A4
       addiu     $13, $13, 0x4
      blez       $16, .L800B77C8
       addu      $24, $0, $0
      addu       $13, $29, $0
  .L800B76C0:
      addu       $2, $18, $24
      addu       $14, $17, $0
      lw         $6, 0x88($19)
      lbu        $25, 0x0($2)
      lw         $2, 0x0($6)
      addiu      $7, $0, 0x3
      addu       $2, $2, $25
      lbu        $5, 0x0($2)
      lw         $2, 0x4($6)
      subu       $5, $20, $5
      sll        $4, $5, 1
      addu       $2, $2, $25
      sll        $5, $5, 6
      mult       $4, $4
      lbu        $3, 0x0($2)
      lw         $2, 0x8($6)
      subu       $3, $21, $3
      sll        $4, $3, 1
      mflo       $12
      addu       $2, $2, $25
      addu       $4, $4, $3
      mult       $4, $4
      lbu        $2, 0x0($2)
      addiu      $5, $5, 0x100
      subu       $15, $22, $2
      sll        $2, $4, 1
      mflo       $3
      addu       $2, $2, $4
      sllv       $2, $2, $7
      mult       $15, $15
      addiu      $4, $2, 0x90
      sll        $2, $15, 4
      addiu      $15, $2, 0x40
      addu       $12, $12, $3
      mflo       $8
      addu       $12, $12, $8
  .L800B7750:
      addu       $11, $12, $0
      addu       $10, $4, $0
      addiu      $9, $0, 0x7
  .L800B775C:
      addu       $3, $11, $0
      addu       $8, $15, $0
      addiu      $6, $0, 0x3
  .L800B7768:
      lw         $2, 0x0($13)
      slt        $2, $3, $2
      beql       $2, $0, .L800B7784
       addu      $3, $3, $8
      sw         $3, 0x0($13)
      sb         $25, 0x0($14)
      addu       $3, $3, $8
  .L800B7784:
      addiu      $8, $8, 0x80
      addiu      $13, $13, 0x4
      addiu      $6, $6, -0x1
      bgez       $6, .L800B7768
       addiu     $14, $14, 0x1
      addu       $11, $11, $10
      addiu      $9, $9, -0x1
      bgez       $9, .L800B775C
       addiu     $10, $10, 0x120
      addu       $12, $12, $5
      addiu      $7, $7, -0x1
      bgez       $7, .L800B7750
       addiu     $5, $5, 0x200
      addiu      $24, $24, 0x1
      slt        $2, $24, $16
      bnel       $2, $0, .L800B76C0
       addu      $13, $29, $0
  .L800B77C8:
      lw         $23, 0x21C($29)
      lw         $22, 0x218($29)
      lw         $21, 0x214($29)
      lw         $20, 0x210($29)
      lw         $19, 0x20C($29)
      lw         $18, 0x208($29)
      lw         $17, 0x204($29)
      lw         $16, 0x200($29)
      jr         $31
       addiu     $29, $29, 0x220
.end func_800B7654

.globl func_800B77F0
.ent func_800B77F0
func_800B77F0:
      addiu      $29, $29, -0x1C8
      sw         $20, 0x1B0($29)
      addu       $20, $4, $0
      sw         $23, 0x1BC($29)
      sra        $23, $5, 2
      sw         $22, 0x1B8($29)
      sra        $22, $6, 3
      sw         $19, 0x1AC($29)
      sra        $19, $7, 2
      sw         $18, 0x1A8($29)
      sll        $18, $23, 5
      addiu      $18, $18, 0x4
      addu       $5, $18, $0
      sw         $17, 0x1A4($29)
      sll        $17, $22, 5
      addiu      $17, $17, 0x2
      addu       $6, $17, $0
      sw         $16, 0x1A0($29)
      sll        $16, $19, 5
      addiu      $16, $16, 0x4
      addu       $7, $16, $0
      sll        $23, $23, 2
      sw         $31, 0x1C4($29)
      sw         $30, 0x1C0($29)
      sw         $21, 0x1B4($29)
      lw         $2, 0x1C8($20)
      sll        $22, $22, 3
      lw         $30, 0x18($2)
      addiu      $21, $29, 0x20
      jal        func_800B73FC
       sw        $21, 0x10($29)
      addu       $4, $20, $0
      addu       $5, $18, $0
      addu       $6, $17, $0
      addu       $7, $16, $0
      addiu      $16, $29, 0x120
      sw         $2, 0x10($29)
      sw         $21, 0x14($29)
      jal        func_800B7654
       sw        $16, 0x18($29)
      addu       $6, $0, $0
      sll        $19, $19, 3
      addu       $5, $0, $0
  .L800B789C:
      addu       $2, $23, $6
      sll        $2, $2, 2
      addu       $7, $2, $30
      addu       $4, $0, $0
  .L800B78AC:
      addu       $2, $22, $5
      lw         $3, 0x0($7)
      sll        $2, $2, 6
      addu       $3, $3, $2
      addu       $3, $3, $19
  .L800B78C0:
      lbu        $2, 0x0($16)
      addiu      $16, $16, 0x1
      addiu      $4, $4, 0x1
      addiu      $2, $2, 0x1
      sh         $2, 0x0($3)
      slti       $2, $4, 0x4
      bnez       $2, .L800B78C0
       addiu     $3, $3, 0x2
      addiu      $5, $5, 0x1
      slti       $2, $5, 0x8
      bnel       $2, $0, .L800B78AC
       addu      $4, $0, $0
      addiu      $6, $6, 0x1
      slti       $2, $6, 0x4
      bnel       $2, $0, .L800B789C
       addu      $5, $0, $0
      lw         $31, 0x1C4($29)
      lw         $30, 0x1C0($29)
      lw         $23, 0x1BC($29)
      lw         $22, 0x1B8($29)
      lw         $21, 0x1B4($29)
      lw         $20, 0x1B0($29)
      lw         $19, 0x1AC($29)
      lw         $18, 0x1A8($29)
      lw         $17, 0x1A4($29)
      lw         $16, 0x1A0($29)
      jr         $31
       addiu     $29, $29, 0x1C8
.end func_800B77F0

.globl func_800B7930
.ent func_800B7930
func_800B7930:
      addiu      $29, $29, -0x40
      sw         $30, 0x38($29)
      addu       $30, $4, $0
      sw         $31, 0x3C($29)
      sw         $23, 0x34($29)
      sw         $22, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      sw         $7, 0x4C($29)
      lw         $2, 0x1C8($30)
      lw         $8, 0x70($30)
      lw         $23, 0x18($2)
      addu       $20, $0, $0
      blez       $7, .L800B7A18
       sw        $8, 0x10($29)
      addu       $22, $6, $0
      addu       $21, $5, $0
  .L800B7984:
      lw         $18, 0x10($29)
      lw         $16, 0x0($21)
      lw         $19, 0x0($22)
      beql       $18, $0, .L800B7A04
       addiu     $22, $22, 0x4
  .L800B7998:
      lbu        $2, 0x0($16)
      addiu      $16, $16, 0x1
      lbu        $3, 0x0($16)
      addiu      $16, $16, 0x1
      srl        $5, $2, 3
      lbu        $2, 0x0($16)
      srl        $6, $3, 2
      srl        $7, $2, 3
      sll        $2, $5, 2
      addu       $2, $2, $23
      lw         $3, 0x0($2)
      sll        $2, $6, 6
      addu       $3, $3, $2
      sll        $2, $7, 1
      addu       $17, $3, $2
      lhu        $2, 0x0($17)
      bnez       $2, .L800B79E8
       addiu     $16, $16, 0x1
      jal        func_800B77F0
       addu      $4, $30, $0
  .L800B79E8:
      lbu        $2, 0x1($17)
      addiu      $18, $18, -0x1
      addiu      $2, $2, -0x1
      sb         $2, 0x0($19)
      bnez       $18, .L800B7998
       addiu     $19, $19, 0x1
      addiu      $22, $22, 0x4
  .L800B7A04:
      lw         $8, 0x4C($29)
      addiu      $20, $20, 0x1
      slt        $2, $20, $8
      bnez       $2, .L800B7984
       addiu     $21, $21, 0x4
  .L800B7A18:
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
.end func_800B7930

.globl func_800B7A48
.ent func_800B7A48
func_800B7A48:
      addiu      $29, $29, -0xA0
      sw         $31, 0x9C($29)
      sw         $30, 0x98($29)
      sw         $23, 0x94($29)
      sw         $22, 0x90($29)
      sw         $21, 0x8C($29)
      sw         $20, 0x88($29)
      sw         $19, 0x84($29)
      sw         $18, 0x80($29)
      sw         $17, 0x7C($29)
      sw         $16, 0x78($29)
      sw         $4, 0xA0($29)
      sw         $7, 0xAC($29)
      lw         $13, 0x1C8($4)
      sw         $0, 0x14($29)
      lw         $14, 0x18($13)
      sw         $14, 0x10($29)
      lw         $15, 0x70($4)
      sw         $15, 0x18($29)
      lw         $14, 0x140($4)
      sw         $14, 0x1C($29)
      lw         $15, 0x28($13)
      lw         $2, 0x88($4)
      sw         $15, 0x20($29)
      lw         $14, 0x0($2)
      sw         $14, 0x24($29)
      lw         $15, 0x4($2)
      sw         $15, 0x28($29)
      lw         $2, 0x8($2)
      blez       $7, .L800B7D9C
       sw        $2, 0x2C($29)
      lw         $14, 0x18($29)
      addiu      $14, $14, -0x1
      sll        $2, $14, 1
      lw         $15, 0x18($29)
      addu       $2, $2, $14
      sw         $14, 0x30($29)
      sw         $2, 0x34($29)
      sw         $6, 0x3C($29)
      sw         $5, 0x40($29)
      addiu      $3, $15, 0x1
      sll        $2, $3, 1
      addu       $2, $2, $3
      sll        $2, $2, 1
      sw         $2, 0x38($29)
  .L800B7AFC:
      lw         $14, 0x40($29)
      lw         $2, 0x24($13)
      lw         $15, 0x3C($29)
      lw         $21, 0x0($14)
      lw         $8, 0x0($15)
      beqz       $2, .L800B7B40
       addiu     $24, $0, -0x1
      lw         $14, 0x34($29)
      addu       $21, $21, $14
      lw         $15, 0x30($29)
      lw         $2, 0x20($13)
      addiu      $9, $0, -0x3
      sw         $0, 0x24($13)
      lw         $14, 0x38($29)
      addu       $8, $8, $15
      j          .L800B7B50
       addu      $20, $2, $14
  .L800B7B40:
      addiu      $24, $0, 0x1
      lw         $20, 0x20($13)
      addiu      $9, $0, 0x3
      sw         $24, 0x24($13)
  .L800B7B50:
      addu       $18, $0, $0
      addu       $17, $18, $0
      addu       $16, $18, $0
      addu       $25, $18, $0
      addu       $12, $18, $0
      addu       $11, $18, $0
      lw         $30, 0x18($29)
      addu       $10, $18, $0
      sw         $0, 0x74($29)
      beqz       $30, .L800B7D5C
       sw        $0, 0x70($29)
      addiu      $23, $21, 0x2
  .L800B7B80:
      sll        $2, $9, 1
      addu       $22, $2, $20
      lh         $2, 0x0($22)
      lh         $3, 0x2($22)
      lw         $15, 0x20($29)
      lw         $14, 0x1C($29)
      addu       $2, $16, $2
      addiu      $2, $2, 0x8
      sra        $16, $2, 4
      addu       $3, $17, $3
      addiu      $3, $3, 0x8
      sra        $17, $3, 4
      lh         $2, 0x4($22)
      lbu        $3, 0x0($21)
      addu       $2, $18, $2
      addiu      $2, $2, 0x8
      sra        $18, $2, 4
      sll        $2, $16, 2
      addu       $2, $2, $15
      lw         $16, 0x0($2)
      sll        $2, $17, 2
      addu       $2, $2, $15
      lw         $17, 0x0($2)
      sll        $2, $18, 2
      addu       $2, $2, $15
      lw         $18, 0x0($2)
      lbu        $2, -0x1($23)
      lw         $15, 0x10($29)
      addu       $16, $16, $3
      addu       $17, $17, $2
      addu       $2, $14, $16
      lbu        $16, 0x0($2)
      addu       $2, $14, $17
      lbu        $3, 0x0($23)
      lbu        $17, 0x0($2)
      addu       $18, $18, $3
      addu       $2, $14, $18
      sra        $5, $16, 3
      lbu        $18, 0x0($2)
      sll        $2, $5, 2
      addu       $2, $2, $15
      sra        $6, $17, 2
      lw         $3, 0x0($2)
      sll        $2, $6, 6
      addu       $3, $3, $2
      sra        $7, $18, 3
      sll        $2, $7, 1
      addu       $19, $3, $2
      lhu        $2, 0x0($19)
      bnel       $2, $0, .L800B7C98
       addu      $23, $23, $9
      lw         $4, 0xA0($29)
      sw         $8, 0x48($29)
      sw         $9, 0x4C($29)
      sw         $10, 0x50($29)
      sw         $11, 0x54($29)
      sw         $12, 0x58($29)
      sw         $13, 0x5C($29)
      sw         $24, 0x68($29)
      jal        func_800B77F0
       sw        $25, 0x6C($29)
      lw         $25, 0x6C($29)
      lw         $24, 0x68($29)
      lw         $13, 0x5C($29)
      lw         $12, 0x58($29)
      lw         $11, 0x54($29)
      lw         $10, 0x50($29)
      lw         $9, 0x4C($29)
      lw         $8, 0x48($29)
      addu       $23, $23, $9
  .L800B7C98:
      addu       $21, $21, $9
      lhu        $3, 0x0($19)
      addiu      $30, $30, -0x1
      addiu      $3, $3, -0x1
      sb         $3, 0x0($8)
      addu       $8, $8, $24
      lw         $14, 0x24($29)
      lw         $15, 0x28($29)
      addu       $2, $14, $3
      lbu        $2, 0x0($2)
      lw         $14, 0x2C($29)
      subu       $16, $16, $2
      addu       $2, $15, $3
      addu       $3, $14, $3
      addu       $6, $16, $0
      lbu        $2, 0x0($2)
      lbu        $3, 0x0($3)
      lw         $15, 0x70($29)
      lw         $14, 0x74($29)
      subu       $17, $17, $2
      subu       $18, $18, $3
      sll        $2, $16, 1
      addu       $16, $16, $2
      addu       $5, $10, $16
      addu       $16, $16, $2
      addu       $10, $15, $16
      addu       $16, $16, $2
      sw         $6, 0x70($29)
      addu       $6, $17, $0
      sll        $2, $17, 1
      addu       $17, $17, $2
      addu       $4, $11, $17
      addu       $17, $17, $2
      addu       $11, $14, $17
      addu       $17, $17, $2
      sw         $6, 0x74($29)
      addu       $6, $18, $0
      sll        $2, $18, 1
      addu       $18, $18, $2
      addu       $3, $12, $18
      addu       $18, $18, $2
      addu       $12, $25, $18
      addu       $25, $6, $0
      addu       $18, $18, $2
      sh         $5, 0x0($20)
      sh         $4, 0x2($20)
      sh         $3, 0x4($20)
      bnez       $30, .L800B7B80
       addu      $20, $22, $0
  .L800B7D5C:
      lw         $15, 0x3C($29)
      lw         $14, 0x40($29)
      addiu      $15, $15, 0x4
      sw         $15, 0x3C($29)
      lw         $15, 0x14($29)
      addiu      $14, $14, 0x4
      sw         $14, 0x40($29)
      addiu      $15, $15, 0x1
      sw         $15, 0x14($29)
      sh         $10, 0x0($20)
      sh         $11, 0x2($20)
      sh         $12, 0x4($20)
      lw         $14, 0xAC($29)
      slt        $2, $15, $14
      bnez       $2, .L800B7AFC
       nop
  .L800B7D9C:
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
.end func_800B7A48

.globl func_800B7DCC
.ent func_800B7DCC
func_800B7DCC:
      addiu      $29, $29, -0x18
      addiu      $5, $0, 0x1
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($4)
      lw         $2, 0x0($2)
      lw         $16, 0x1C8($4)
      jalr       $2
       addiu     $6, $0, 0x7FC
      addu       $4, $0, $0
      addu       $3, $4, $0
      addiu      $7, $2, 0x3FC
      addu       $6, $7, $0
      addu       $5, $7, $0
      sw         $7, 0x28($16)
  .L800B7E08:
      negu       $2, $4
      sw         $4, 0x0($5)
      sw         $2, 0x0($6)
      addiu      $6, $6, -0x4
      addiu      $5, $5, 0x4
      addiu      $3, $3, 0x1
      slti       $2, $3, 0x10
      bnez       $2, .L800B7E08
       addiu     $4, $4, 0x1
      slti       $2, $3, 0x30
      beqz       $2, .L800B7E6C
       sll       $2, $3, 2
      subu       $6, $7, $2
      addu       $5, $2, $7
  .L800B7E40:
      negu       $2, $4
      sw         $4, 0x0($5)
      sw         $2, 0x0($6)
      addiu      $6, $6, -0x4
      addiu      $3, $3, 0x1
      xori       $2, $3, 0x1
      andi       $2, $2, 0x1
      addu       $4, $4, $2
      slti       $2, $3, 0x30
      bnez       $2, .L800B7E40
       addiu     $5, $5, 0x4
  .L800B7E6C:
      slti       $2, $3, 0x100
      beqz       $2, .L800B7EA0
       sll       $2, $3, 2
      negu       $8, $4
      subu       $6, $7, $2
      addu       $5, $2, $7
  .L800B7E84:
      sw         $4, 0x0($5)
      sw         $8, 0x0($6)
      addiu      $6, $6, -0x4
      addiu      $3, $3, 0x1
      slti       $2, $3, 0x100
      bnez       $2, .L800B7E84
       addiu     $5, $5, 0x4
  .L800B7EA0:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B7DCC

.globl func_800B7EB0
.ent func_800B7EB0
func_800B7EB0:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $16, 0x1C8($4)
      lw         $2, 0x10($16)
      sw         $2, 0x88($4)
      lw         $5, 0x14($16)
      jal        func_800B7304
       nop
      addiu      $2, $0, 0x1
      sw         $2, 0x1C($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B7EB0

.globl func_800B7EEC
.ent func_800B7EEC
func_800B7EEC:
      jr         $31
       nop
.end func_800B7EEC

.globl func_800B7EF4
.ent func_800B7EF4
func_800B7EF4:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lw         $18, 0x1C8($16)
      lw         $2, 0x58($16)
      lw         $20, 0x18($18)
      beqz       $2, .L800B7F2C
       addiu     $2, $0, 0x2
      sw         $2, 0x58($16)
  .L800B7F2C:
      beqz       $5, .L800B7F54
       lui       $2, %hi(D_800B6940)
      addiu      $2, $2, %lo(D_800B6940)
      sw         $2, 0x4($18)
      lui        $2, %hi(func_800B7EB0)
      addiu      $2, $2, %lo(func_800B7EB0)
      sw         $2, 0x8($18)
      addiu      $2, $0, 0x1
      j          .L800B8054
       sw        $2, 0x1C($18)
  .L800B7F54:
      lw         $3, 0x58($16)
      addiu      $2, $0, 0x2
      bnel       $3, $2, .L800B7F70
       lui       $2, %hi(func_800B7930)
      lui        $2, %hi(func_800B7A48)
      j          .L800B7F74
       addiu     $2, $2, %lo(func_800B7A48)
  .L800B7F70:
      addiu      $2, $2, %lo(func_800B7930)
  .L800B7F74:
      sw         $2, 0x4($18)
      lui        $2, %hi(func_800B7EEC)
      addiu      $2, $2, %lo(func_800B7EEC)
      sw         $2, 0x8($18)
      lw         $17, 0x84($16)
      bgtz       $17, .L800B7FBC
       slti      $2, $17, 0x101
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x35
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x1
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      slti       $2, $17, 0x101
  .L800B7FBC:
      bnez       $2, .L800B7FE8
       addiu     $2, $0, 0x36
      lw         $3, 0x0($16)
      sw         $2, 0x14($3)
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x100
      sw         $2, 0x18($3)
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
  .L800B7FE8:
      lw         $3, 0x58($16)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L800B8054
       nop
      lw         $2, 0x70($16)
      addiu      $2, $2, 0x2
      sll        $3, $2, 1
      addu       $3, $3, $2
      lw         $2, 0x20($18)
      bnez       $2, .L800B8030
       sll       $17, $3, 1
      addu       $4, $16, $0
      lw         $2, 0x4($16)
      addiu      $5, $0, 0x1
      lw         $2, 0x4($2)
      jalr       $2
       addu      $6, $17, $0
      sw         $2, 0x20($18)
  .L800B8030:
      lw         $4, 0x20($18)
      jal        func_800B83D4
       addu      $5, $17, $0
      lw         $2, 0x28($18)
      bnel       $2, $0, .L800B8054
       sw        $0, 0x24($18)
      jal        func_800B7DCC
       addu      $4, $16, $0
      sw         $0, 0x24($18)
  .L800B8054:
      lw         $2, 0x1C($18)
      beqz       $2, .L800B808C
       addiu     $19, $0, 0x1000
      addu       $17, $0, $0
      addu       $16, $20, $0
  .L800B8068:
      lw         $4, 0x0($16)
      addu       $5, $19, $0
      addiu      $16, $16, 0x4
      jal        func_800B83D4
       addiu     $17, $17, 0x1
      slti       $2, $17, 0x20
      bnez       $2, .L800B8068
       nop
      sw         $0, 0x1C($18)
  .L800B808C:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B7EF4

.globl func_800B80AC
.ent func_800B80AC
func_800B80AC:
      lw         $3, 0x1C8($4)
      addiu      $2, $0, 0x1
      jr         $31
       sw        $2, 0x1C($3)
.end func_800B80AC

.globl func_800B80BC
.ent func_800B80BC
func_800B80BC:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($17)
      addiu      $5, $0, 0x1
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $0, 0x2C
      addu       $18, $2, $0
      lui        $2, %hi(func_800B7EF4)
      addiu      $2, $2, %lo(func_800B7EF4)
      sw         $18, 0x1C8($17)
      sw         $2, 0x0($18)
      lui        $2, %hi(func_800B80AC)
      addiu      $2, $2, %lo(func_800B80AC)
      sw         $2, 0xC($18)
      sw         $0, 0x20($18)
      sw         $0, 0x28($18)
      lw         $3, 0x78($17)
      addiu      $2, $0, 0x3
      beq        $3, $2, .L800B813C
       addiu     $2, $0, 0x2C
      lw         $3, 0x0($17)
      sw         $2, 0x14($3)
      lw         $2, 0x0($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $17, $0
  .L800B813C:
      addu       $4, $17, $0
      addiu      $5, $0, 0x1
      addiu      $6, $0, 0x80
      lw         $2, 0x4($17)
      addiu      $19, $0, 0x1000
      lw         $2, 0x0($2)
      jalr       $2
       addu      $16, $0, $0
      sw         $2, 0x18($18)
      addu       $4, $17, $0
  .L800B8164:
      lw         $2, 0x4($17)
      addiu      $5, $0, 0x1
      lw         $2, 0x4($2)
      jalr       $2
       addu      $6, $19, $0
      sll        $3, $16, 2
      lw         $4, 0x18($18)
      addiu      $16, $16, 0x1
      addu       $3, $3, $4
      sw         $2, 0x0($3)
      slti       $2, $16, 0x20
      bnel       $2, $0, .L800B8164
       addu      $4, $17, $0
      addiu      $2, $0, 0x1
      sw         $2, 0x1C($18)
      lw         $2, 0x6C($17)
      beql       $2, $0, .L800B8238
       sw        $0, 0x10($18)
      lw         $16, 0x60($17)
      slti       $2, $16, 0x8
      beqz       $2, .L800B81E0
       addiu     $2, $0, 0x35
      lw         $3, 0x0($17)
      sw         $2, 0x14($3)
      lw         $3, 0x0($17)
      addiu      $2, $0, 0x8
      sw         $2, 0x18($3)
      lw         $2, 0x0($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $17, $0
  .L800B81E0:
      slti       $2, $16, 0x101
      bnez       $2, .L800B8218
       addu      $4, $17, $0
      lw         $3, 0x0($17)
      addiu      $2, $0, 0x36
      sw         $2, 0x14($3)
      lw         $3, 0x0($17)
      addiu      $2, $0, 0x100
      sw         $2, 0x18($3)
      lw         $2, 0x0($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $17, $0
      addu       $4, $17, $0
  .L800B8218:
      addiu      $5, $0, 0x1
      lw         $2, 0x4($17)
      addu       $6, $16, $0
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $7, $0, 0x3
      sw         $2, 0x10($18)
      sw         $16, 0x14($18)
  .L800B8238:
      lw         $2, 0x58($17)
      beqz       $2, .L800B8248
       addiu     $2, $0, 0x2
      sw         $2, 0x58($17)
  .L800B8248:
      lw         $3, 0x58($17)
      addiu      $2, $0, 0x2
  .L800B8250:
      bne        $3, $2, .L800B8288
       addu      $4, $17, $0
      addiu      $5, $0, 0x1
      lw         $2, 0x70($17)
      lw         $3, 0x4($17)
      addiu      $2, $2, 0x2
      sllv       $6, $2, $5
      addu       $6, $6, $2
      lw         $2, 0x4($3)
      jalr       $2
       sllv      $6, $6, $5
      addu       $4, $17, $0
      jal        func_800B7DCC
       sw        $2, 0x20($18)
  .L800B8288:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B80BC

.globl func_800B82A4
.ent func_800B82A4
func_800B82A4:
      addiu      $10, $10, 0x120
      addu       $12, $12, $5
      addiu      $7, $7, -0x1
      bgez       $7, .L800B8250
       addiu     $5, $5, 0x200
      addiu      $24, $24, 0x1
      slt        $2, $24, $16
.end func_800B82A4

.globl func_800B82C0
.ent func_800B82C0
func_800B82C0:
      addu       $2, $4, $5
      addiu      $2, $2, -0x1
      div        $zero, $2, $5
      bnez       $5, .L800B82D8
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B82D8:
      addiu      $1, $0, -0x1
      bne        $5, $1, .L800B82F0
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L800B82F0
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B82F0:
      mflo       $2
      jr         $31
       nop
.end func_800B82C0

.globl func_800B82FC
.ent func_800B82FC
func_800B82FC:
      addiu      $4, $4, -0x1
      addu       $4, $4, $5
      div        $zero, $4, $5
      bnez       $5, .L800B8314
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B8314:
      addiu      $1, $0, -0x1
      bne        $5, $1, .L800B832C
       lui       $1, (0x80000000 >> 16)
      bne        $4, $1, .L800B832C
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800B832C:
      mfhi       $2
      jr         $31
       subu      $2, $4, $2
.end func_800B82FC

.globl func_800B8338
.ent func_800B8338
func_800B8338:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      lw         $17, 0x38($29)
      sll        $5, $5, 2
      sw         $18, 0x18($29)
      addu       $18, $4, $5
      sw         $19, 0x1C($29)
      lw         $19, 0x3C($29)
      sll        $7, $7, 2
      sw         $16, 0x10($29)
      addu       $16, $6, $7
      blez       $17, .L800B8390
       sw        $31, 0x20($29)
  .L800B836C:
      lw         $5, 0x0($18)
      addiu      $18, $18, 0x4
      lw         $4, 0x0($16)
      addiu      $16, $16, 0x4
      addiu      $17, $17, -0x1
      jal        func_80013F00
       addu      $6, $19, $0
      bgtz       $17, .L800B836C
       nop
  .L800B8390:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
  .L800B839C:
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B8338

.globl func_800B83AC
.ent func_800B83AC
func_800B83AC:
      addiu      $29, $29, -0x18
      addu       $2, $4, $0
      addu       $4, $5, $0
      addu       $5, $2, $0
      sw         $31, 0x10($29)
      jal        func_80013F00
       sll       $6, $6, 7
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B83AC

.globl func_800B83D4
.ent func_800B83D4
func_800B83D4:
      addiu      $29, $29, -0x18
      addu       $6, $5, $0
      sw         $31, 0x10($29)
      jal        func_80016140
       addu      $5, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B83D4

.globl func_800B83F4
.ent func_800B83F4
func_800B83F4:
      slti       $2, $6, 0x4
      bnel       $2, $0, .L800B839C
       addu      $5, $0, $0
.end func_800B83F4

.globl func_800B8400
.ent func_800B8400
func_800B8400:
      addiu      $29, $29, -0xA8
      sw         $20, 0xA0($29)
      addu       $20, $4, $0
      lui        $2, %hi(D_800F5F58)
      sw         $17, 0x94($29)
      addiu      $17, $2, %lo(D_800F5F58)
      sw         $31, 0xA4($29)
      sw         $19, 0x9C($29)
      sw         $18, 0x98($29)
      jal        func_80017780
       sw        $16, 0x90($29)
      addu       $19, $2, $0
      addiu      $2, $19, 0x2
      sll        $2, $2, 2
      lui        $3, (0xAAAAAAAB >> 16)
      ori        $3, $3, (0xAAAAAAAB & 0xFFFF)
      multu      $2, $3
      addu       $16, $0, $0
      mfhi       $11
      srl        $2, $11, 1
      addiu      $4, $2, 0x1
      sltiu      $2, $4, 0x81
      bnez       $2, .L800B846C
       addiu     $18, $29, 0x10
      jal        func_800524E8
       addu      $5, $16, $0
      addu       $18, $2, $0
  .L800B846C:
      beqz       $18, .L800B85A8
       addu      $6, $18, $0
      addu       $7, $20, $0
      addu       $9, $7, $19
      sltu       $2, $9, $7
      bnez       $2, .L800B8524
       addu      $8, $0, $0
      addiu      $10, $0, 0x3
  .L800B848C:
      bne        $8, $10, .L800B84FC
       sltu      $2, $7, $9
      srl        $2, $16, 18
      srl        $3, $16, 12
      srl        $4, $16, 6
      andi       $5, $16, 0x3F
      addu       $16, $0, $0
      andi       $2, $2, 0x3F
      addu       $2, $17, $2
      addu       $8, $16, $0
      andi       $3, $3, 0x3F
      addu       $3, $17, $3
      andi       $4, $4, 0x3F
      addu       $4, $17, $4
      lbu        $2, 0x0($2)
      addu       $5, $17, $5
      sb         $2, 0x0($6)
      lbu        $2, 0x0($3)
      addiu      $6, $6, 0x1
      sb         $2, 0x0($6)
      lbu        $2, 0x0($4)
      addiu      $6, $6, 0x1
      sb         $2, 0x0($6)
      lbu        $2, 0x0($5)
      addiu      $6, $6, 0x1
      sb         $2, 0x0($6)
      addiu      $6, $6, 0x1
      sltu       $2, $7, $9
  .L800B84FC:
      beql       $2, $0, .L800B8518
       addiu     $7, $7, 0x1
      addiu      $8, $8, 0x1
      lbu        $3, 0x0($7)
      sll        $2, $16, 8
      or         $16, $2, $3
      addiu      $7, $7, 0x1
  .L800B8518:
      sltu       $2, $9, $7
      beqz       $2, .L800B848C
       nop
  .L800B8524:
      beqz       $8, .L800B85A4
       addiu     $2, $0, 0x3
      subu       $2, $2, $8
      sll        $2, $2, 3
      sllv       $16, $16, $2
      srl        $2, $16, 18
      andi       $2, $2, 0x3F
      addu       $2, $17, $2
      lbu        $2, 0x0($2)
      sb         $2, 0x0($6)
      srl        $2, $16, 12
      andi       $2, $2, 0x3F
      addu       $2, $17, $2
      lbu        $2, 0x0($2)
      addiu      $6, $6, 0x1
      sb         $2, 0x0($6)
      addiu      $6, $6, 0x1
      addu       $3, $6, $0
      addiu      $2, $0, 0x2
      bne        $8, $2, .L800B8590
       addiu     $6, $6, 0x1
      srl        $2, $16, 6
      andi       $2, $2, 0x3F
      addu       $2, $17, $2
      lbu        $2, 0x0($2)
      j          .L800B8598
       sb        $2, 0x0($3)
  .L800B8590:
      addiu      $2, $0, 0x3D
      sb         $2, 0x0($3)
  .L800B8598:
      addiu      $2, $0, 0x3D
      sb         $2, 0x0($6)
      addiu      $6, $6, 0x1
  .L800B85A4:
      sb         $0, 0x0($6)
  .L800B85A8:
      addiu      $2, $29, 0x10
      bne        $18, $2, .L800B85BC
       addu      $2, $18, $0
      jal        func_800523C0
       addu      $4, $18, $0
  .L800B85BC:
      lw         $31, 0xA4($29)
      lw         $20, 0xA0($29)
      lw         $19, 0x9C($29)
      lw         $18, 0x98($29)
      lw         $17, 0x94($29)
      lw         $16, 0x90($29)
      jr         $31
       addiu     $29, $29, 0xA8
.end func_800B8400

.globl func_800B85DC
.ent func_800B85DC
func_800B85DC:
      addiu      $29, $29, -0xC0
      sw         $22, 0xB8($29)
      addu       $22, $5, $0
      sw         $18, 0xA8($29)
      addu       $18, $0, $0
      sw         $17, 0xA4($29)
      addiu      $17, $29, 0x18
      addu       $5, $18, $0
      lui        $2, %hi(D_800F5F20)
      sw         $19, 0xAC($29)
      addiu      $19, $2, %lo(D_800F5F20)
      addu       $6, $19, $0
      addiu      $7, $29, 0x98
      lui        $2, %hi(D_800F5F48)
      sw         $20, 0xB0($29)
      addiu      $20, $2, %lo(D_800F5F48)
      lui        $2, %hi(D_800F5F30)
      sw         $21, 0xB4($29)
      addiu      $21, $2, %lo(D_800F5F30)
      sw         $31, 0xBC($29)
      sw         $16, 0xA0($29)
      jal        func_8005446C
       sw        $4, 0x9C($29)
      beqz       $2, .L800B864C
       addiu     $4, $29, 0x9C
      lw         $6, 0x98($29)
      jal        func_800545BC
       addu      $5, $19, $0
  .L800B864C:
      jal        func_80017780
       addu      $4, $20, $0
      addu       $4, $21, $0
      jal        func_80017780
       addu      $16, $2, $0
      lw         $4, 0x28($22)
      jal        func_80017780
       addu      $16, $16, $2
      addu       $16, $16, $2
      addiu      $16, $16, 0x1
      beqz       $16, .L800B86D4
       sltiu     $2, $16, 0x81
      bnez       $2, .L800B8690
       addu      $4, $16, $0
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $17, $2, $0
  .L800B8690:
      beqz       $17, .L800B86D0
       addu      $4, $17, $0
      addu       $5, $16, $0
      addu       $6, $20, $0
      lw         $2, 0x28($22)
      addu       $7, $21, $0
      jal        func_800520A4
       sw        $2, 0x10($29)
      blez       $2, .L800B86D4
       addiu     $4, $29, 0x9C
      addu       $5, $19, $0
      addu       $6, $17, $0
      jal        func_80054530
       addiu     $7, $0, -0x1
      j          .L800B86D4
       addu      $18, $2, $0
  .L800B86D0:
      addiu      $18, $0, -0x5
  .L800B86D4:
      addu       $2, $18, $0
      lw         $31, 0xBC($29)
      lw         $22, 0xB8($29)
      lw         $21, 0xB4($29)
      lw         $20, 0xB0($29)
      lw         $19, 0xAC($29)
      lw         $18, 0xA8($29)
      lw         $17, 0xA4($29)
      lw         $16, 0xA0($29)
      jr         $31
       addiu     $29, $29, 0xC0
.end func_800B85DC

.globl func_800B8700
.ent func_800B8700
func_800B8700:
      addiu      $29, $29, -0x30
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      lui        $2, %hi(D_800F5F30)
      sw         $17, 0x1C($29)
      addiu      $17, $2, %lo(D_800F5F30)
      addu       $5, $0, $0
      sw         $18, 0x20($29)
      lui        $18, %hi(D_800F5F20)
      sw         $31, 0x28($29)
      sw         $16, 0x18($29)
  .L800B872C:
      addu       $4, $19, $0
      addiu      $6, $18, %lo(D_800F5F20)
      jal        func_8005446C
       addiu     $7, $29, 0x10
      addu       $16, $2, $0
      beqz       $16, .L800B8774
       addu      $2, $0, $0
      jal        func_80017780
       addu      $4, $17, $0
      addu       $4, $16, $0
      addu       $5, $17, $0
      jal        func_80052224
       addu      $6, $2, $0
      beqz       $2, .L800B8774
       addiu     $2, $0, 0x1
      lw         $2, 0x10($29)
      j          .L800B872C
       addiu     $5, $2, 0x1
  .L800B8774:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800B8700

.globl func_800B8790
.ent func_800B8790
func_800B8790:
      sw         $5, 0x0($4)
      addu       $2, $5, $0
      sw         $6, 0x4($4)
      sb         $0, 0x0($2)
      jr         $31
       addiu     $2, $0, 0x1
.end func_800B8790

.globl func_800B87A8
.ent func_800B87A8
func_800B87A8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800175C0
       nop
      lw         $31, 0x10($29)
      sltiu      $2, $2, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B87A8

.globl func_800B87C8
.ent func_800B87C8
func_800B87C8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8005211C
       nop
      lw         $31, 0x10($29)
      sltiu      $2, $2, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B87C8

.globl func_800B87E8
.ent func_800B87E8
func_800B87E8:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      jal        func_80017780
       sw        $16, 0x10($29)
      addiu      $4, $2, 0x2
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $16, $2, $0
      beqz       $16, .L800B8840
       addu      $4, $16, $0
      jal        func_80017640
       addu      $5, $17, $0
      addu       $4, $16, $0
      jal        func_800563C0
       addiu     $5, $0, 0x2F
      addu       $3, $2, $0
      beqz       $3, .L800B8840
       addiu     $2, $0, 0x2A
      sb         $2, 0x1($3)
      sb         $0, 0x2($3)
  .L800B8840:
      addu       $2, $16, $0
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B87E8

.globl func_800B8858
.ent func_800B8858
func_800B8858:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      jal        func_800563C0
       addiu     $5, $0, 0x2A
      beqz       $2, .L800B8894
       addu      $4, $16, $0
      addu       $5, $17, $0
      jal        func_800177C0
       subu      $6, $2, $4
      j          .L800B88A0
       sltiu     $2, $2, 0x1
  .L800B8894:
      jal        func_800175C0
       addu      $5, $17, $0
      sltiu      $2, $2, 0x1
  .L800B88A0:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B8858

.globl func_800B88B4
.ent func_800B88B4
func_800B88B4:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $6, $0
      sw         $31, 0x1C($29)
      sw         $0, 0x10($29)
      lw         $2, 0x4($4)
      addu       $4, $5, $0
      addiu      $5, $0, 0x1
      jalr       $2
       addiu     $7, $16, 0x4
      addiu      $3, $0, 0x1
      beq        $2, $3, .L800B88FC
       lui       $2, %hi(D_800F5D58)
      addiu      $11, $2, %lo(D_800F5D58)
      lw         $8, 0x0($11)
      lw         $9, 0x4($11)
      sw         $8, 0x0($16)
      sw         $9, 0x4($16)
  .L800B88FC:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B88B4

.globl func_800B890C
.ent func_800B890C
func_800B890C:
      addiu      $29, $29, -0x18
      lui        $2, %hi(D_80125880)
      lw         $2, %lo(D_80125880)($2)
      addu       $6, $4, $0
      sw         $31, 0x10($29)
      lw         $4, 0x0($2)
      lw         $5, 0x4($2)
      jal        func_800B88B4
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B890C

.globl func_800B893C
.ent func_800B893C
func_800B893C:
      addiu      $29, $29, -0x18
      addiu      $4, $0, 0x10
      sw         $31, 0x10($29)
      jal        func_80052504
       addu      $5, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B893C

.globl func_800B895C
.ent func_800B895C
func_800B895C:
      lw         $2, 0x10($29)
      sb         $5, 0x0($4)
      sw         $6, 0x4($4)
      sh         $7, 0x8($4)
      jr         $31
       sw        $2, 0xC($4)
.end func_800B895C

.globl func_800B8974
.ent func_800B8974
func_800B8974:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
      lw         $4, 0xC($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B8974

.globl func_800B89B4
.ent func_800B89B4
func_800B89B4:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      lui        $2, %hi(D_800F5D60)
      sw         $16, 0x10($29)
      addiu      $16, $2, %lo(D_800F5D60)
      sw         $31, 0x1C($29)
  .L800B89D8:
      lw         $4, 0x0($16)
      jal        func_8005211C
       addu      $5, $18, $0
      bnez       $2, .L800B89F8
       addiu     $17, $17, 0x1
      lhu        $2, 0x6($16)
      j          .L800B8A08
       nop
  .L800B89F8:
      sltiu      $2, $17, 0x2
      bnez       $2, .L800B89D8
       addiu     $16, $16, 0x8
      addu       $2, $0, $0
  .L800B8A08:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B89B4

.globl func_800B8A20
.ent func_800B8A20
func_800B8A20:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      lui        $2, %hi(D_800F5D60)
      sw         $16, 0x10($29)
      addiu      $16, $2, %lo(D_800F5D60)
      sw         $31, 0x1C($29)
  .L800B8A44:
      lw         $4, 0x0($16)
      jal        func_8005211C
       addu      $5, $18, $0
      bnez       $2, .L800B8A64
       addiu     $17, $17, 0x1
      lbu        $2, 0x4($16)
      j          .L800B8A74
       nop
  .L800B8A64:
      sltiu      $2, $17, 0x2
      bnez       $2, .L800B8A44
       addiu     $16, $16, 0x8
      addu       $2, $0, $0
  .L800B8A74:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B8A20

.globl func_800B8A8C
.ent func_800B8A8C
func_800B8A8C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addu       $4, $5, $0
      sw         $31, 0x14($29)
      jal        func_80017580
       addiu     $5, $0, 0x3A
      bnel       $2, $0, .L800B8AC0
       sb        $0, 0x0($2)
      jal        func_800B89B4
       addu      $4, $16, $0
      j          .L800B8ACC
       andi      $2, $2, 0xFFFF
  .L800B8AC0:
      jal        func_80024000
       addiu     $4, $2, 0x1
      andi       $2, $2, 0xFFFF
  .L800B8ACC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B8A8C

.globl func_800B8ADC
.ent func_800B8ADC
func_800B8ADC:
      addiu      $29, $29, -0x38
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $21, 0x2C($29)
      addu       $21, $5, $0
      sw         $31, 0x30($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      jal        func_800B893C
       sw        $16, 0x18($29)
      addu       $19, $2, $0
      beqz       $19, .L800B8BE4
       addu      $4, $17, $0
      lui        $16, %hi(D_800F5F00)
      addiu      $16, $16, %lo(D_800F5F00)
      addu       $5, $16, $0
      jal        func_80057334
       addiu     $6, $0, 0x10
      addu       $4, $17, $0
      addu       $5, $16, $0
      addiu      $6, $0, 0x8
      jal        func_80057334
       addu      $20, $2, $0
      addu       $18, $2, $0
      addu       $4, $17, $0
      addu       $5, $16, $0
      jal        func_80057334
       addiu     $6, $0, 0x5
      beqz       $20, .L800B8BC0
       addu      $17, $2, $0
      beqz       $18, .L800B8BC4
       addiu     $16, $0, -0x5
      beqz       $17, .L800B8BC4
       addu      $4, $20, $0
      jal        func_800B8A8C
       addu      $5, $18, $0
      andi       $16, $2, 0xFFFF
      beql       $16, $0, .L800B8BC4
       addiu     $16, $0, -0xF
      jal        func_800B8A20
       addu      $4, $20, $0
      sw         $17, 0x10($29)
      addu       $4, $19, $0
      andi       $5, $2, 0xFF
      addu       $6, $18, $0
      jal        func_800B895C
       addu      $7, $16, $0
      addu       $18, $0, $0
      beqz       $21, .L800B8BB0
       addu      $17, $18, $0
      j          .L800B8BB8
       sw        $19, 0x0($21)
  .L800B8BB0:
      jal        func_800B8974
       addu      $4, $19, $0
  .L800B8BB8:
      j          .L800B8BC4
       addiu     $16, $0, 0x1
  .L800B8BC0:
      addiu      $16, $0, -0x5
  .L800B8BC4:
      jal        func_80052540
       addu      $4, $17, $0
      jal        func_80052540
       addu      $4, $18, $0
      jal        func_80052540
       addu      $4, $20, $0
      j          .L800B8BEC
       addu      $2, $16, $0
  .L800B8BE4:
      addiu      $16, $0, -0x5
      addu       $2, $16, $0
  .L800B8BEC:
      lw         $31, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800B8ADC

.globl func_800B8C10
.ent func_800B8C10
func_800B8C10:
      addiu      $29, $29, -0x18
      addiu      $4, $0, 0x30
      sw         $31, 0x10($29)
      jal        func_80052504
       addu      $5, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B8C10

.globl func_800B8C30
.ent func_800B8C30
func_800B8C30:
      addiu      $29, $29, -0x30
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $18, 0x20($29)
      addu       $18, $7, $0
      sw         $31, 0x28($29)
      jal        func_800B890C
       addiu     $4, $29, 0x10
      lui        $2, %hi(D_800F5D50)
      lw         $8, 0x10($29)
      lw         $9, 0x14($29)
      sw         $8, 0x4($19)
      sw         $9, 0x8($19)
      addiu      $11, $2, %lo(D_800F5D50)
      lw         $8, 0x0($11)
      lw         $9, 0x4($11)
      sw         $8, 0xC($19)
      sw         $9, 0x10($19)
      lui        $2, %hi(D_800F5D58)
      addiu      $11, $2, %lo(D_800F5D58)
      lw         $8, 0x0($11)
      lw         $9, 0x4($11)
      sw         $8, 0x14($19)
      sw         $9, 0x18($19)
      jal        func_800523C0
       addu      $4, $16, $0
      addu       $4, $17, $0
      jal        func_800B87E8
       sw        $2, 0x1C($19)
      addu       $4, $18, $0
      jal        func_800523C0
       sw        $2, 0x20($19)
      lw         $3, 0x1C($19)
      addiu      $16, $0, 0x1
      sw         $2, 0x24($19)
      beqz       $3, .L800B8CEC
       sw        $16, 0x2C($19)
      lw         $2, 0x20($19)
      beql       $2, $0, .L800B8CF0
       addiu     $16, $0, -0x5
      lw         $2, 0x24($19)
      bnez       $2, .L800B8CF4
       addu      $2, $16, $0
  .L800B8CEC:
      addiu      $16, $0, -0x5
  .L800B8CF0:
      addu       $2, $16, $0
  .L800B8CF4:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800B8C30

.globl func_800B8D10
.ent func_800B8D10
func_800B8D10:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x1C($16)
      jal        func_80052540
       nop
      lw         $4, 0x20($16)
      jal        func_80052540
       nop
      lw         $4, 0x24($16)
      jal        func_80052540
       nop
      lw         $4, 0x28($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B8D10

.globl func_800B8D68
.ent func_800B8D68
func_800B8D68:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      addiu      $4, $16, 0x4
      sw         $18, 0x18($29)
      sw         $31, 0x1C($29)
      jal        func_800B890C
       addu      $18, $6, $0
      lw         $4, 0x1C($16)
      jal        func_80052540
       nop
      lw         $2, 0x1C($17)
      sw         $2, 0x1C($16)
      sw         $0, 0x1C($17)
      lw         $4, 0x20($16)
      jal        func_80052540
       nop
      lw         $2, 0x20($17)
      sw         $2, 0x20($16)
      sw         $0, 0x20($17)
      lw         $4, 0x24($16)
      jal        func_80052540
       nop
      lw         $2, 0x24($17)
      sw         $2, 0x24($16)
      lw         $2, 0x28($17)
      beqz       $2, .L800B8DF8
       sw        $0, 0x24($17)
      lw         $4, 0x28($16)
      jal        func_80052540
       nop
      lw         $2, 0x28($17)
      sw         $2, 0x28($16)
      sw         $0, 0x28($17)
  .L800B8DF8:
      andi       $2, $18, 0xFF
.end func_800B8D68

.globl func_800B8DFC
.ent func_800B8DFC
func_800B8DFC:
      bnez       $2, .L800B8E0C
       addiu     $2, $0, 0x1
      lw         $2, 0x2C($16)
      addiu      $2, $2, 0x1
  .L800B8E0C:
      sw         $2, 0x2C($16)
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B8DFC

.globl func_800B8E2C
.ent func_800B8E2C
func_800B8E2C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800B890C
       addiu     $4, $4, 0xC
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B8E2C

.globl func_800B8E48
.ent func_800B8E48
func_800B8E48:
      addiu      $29, $29, -0xA8
      sw         $20, 0xA0($29)
      addu       $20, $4, $0
      sw         $17, 0x94($29)
      addu       $17, $5, $0
      sw         $19, 0x9C($29)
      addu       $19, $6, $0
      sw         $18, 0x98($29)
      addiu      $18, $0, 0x1
      sw         $31, 0xA4($29)
      sw         $16, 0x90($29)
      lw         $2, 0x4($17)
      lw         $3, 0x4($19)
      addu       $2, $2, $3
      addiu      $4, $2, 0x2
      sltiu      $2, $4, 0x81
      bnez       $2, .L800B8E9C
       addiu     $16, $29, 0x10
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $16, $2, $0
  .L800B8E9C:
      beql       $16, $0, .L800B8F00
       addiu     $18, $0, -0x5
      lw         $5, 0x0($17)
      lw         $6, 0x4($17)
      jal        func_80052310
       addu      $4, $16, $0
      lw         $2, 0x4($17)
      addiu      $3, $0, 0x3A
      addu       $2, $16, $2
      sb         $3, 0x0($2)
      lw         $2, 0x4($17)
      addu       $2, $2, $16
      sb         $0, 0x1($2)
      lw         $5, 0x0($19)
      lw         $6, 0x4($19)
      jal        func_80063140
       addu      $4, $16, $0
      lw         $4, 0x28($20)
      jal        func_80052540
       nop
      jal        func_800B8400
       addu      $4, $16, $0
      bnez       $2, .L800B8F00
       sw        $2, 0x28($20)
      addiu      $18, $0, -0x5
  .L800B8F00:
      addiu      $2, $29, 0x10
      beq        $16, $2, .L800B8F18
       addu      $2, $18, $0
      jal        func_80052540
       addu      $4, $16, $0
      addu       $2, $18, $0
  .L800B8F18:
      lw         $31, 0xA4($29)
      lw         $20, 0xA0($29)
      lw         $19, 0x9C($29)
      lw         $18, 0x98($29)
      lw         $17, 0x94($29)
      lw         $16, 0x90($29)
      jr         $31
       addiu     $29, $29, 0xA8
.end func_800B8E48

.globl func_800B8F38
.ent func_800B8F38
func_800B8F38:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      lw         $4, 0x1C($17)
      jal        func_800B87C8
       addu      $18, $6, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800B8F84
       addu      $2, $16, $0
      lw         $4, 0x20($17)
      jal        func_800B8858
       addu      $5, $18, $0
      andi       $2, $2, 0xFF
      sltu       $16, $16, $2
      addu       $2, $16, $0
  .L800B8F84:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B8F38

.globl func_800B8F9C
.ent func_800B8F9C
func_800B8F9C:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      lw         $4, 0x1C($17)
      jal        func_800B87C8
       addu      $18, $6, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800B8FE8
       addu      $2, $16, $0
      lw         $4, 0x24($17)
      jal        func_800B87A8
       addu      $5, $18, $0
      andi       $2, $2, 0xFF
      sltu       $16, $16, $2
      addu       $2, $16, $0
  .L800B8FE8:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B8F9C

.globl func_800B9000
.ent func_800B9000
func_800B9000:
      addiu      $29, $29, -0x18
      addiu      $4, $0, 0x8
      sw         $31, 0x10($29)
      jal        func_80052504
       addu      $5, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B9000

.globl func_800B9020
.ent func_800B9020
func_800B9020:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B9020

.globl func_800B9054
.ent func_800B9054
func_800B9054:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $31, 0x24($29)
      beqz       $18, .L800B90A8
       sw        $17, 0x14($29)
      addu       $17, $20, $0
  .L800B9088:
      lw         $4, 0x0($17)
      beqz       $4, .L800B909C
       addiu     $16, $16, 0x1
      jal        func_800B9020
       nop
  .L800B909C:
      sltu       $2, $16, $18
      bnez       $2, .L800B9088
       addiu     $17, $17, 0x4
  .L800B90A8:
      andi       $2, $19, 0xFF
      bnez       $2, .L800B90BC
       nop
      jal        func_80052540
       addu      $4, $20, $0
  .L800B90BC:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B9054

.globl func_800B90DC
.ent func_800B90DC
func_800B90DC:
      addiu      $29, $29, -0x30
      sw         $21, 0x24($29)
      addu       $21, $4, $0
      sw         $22, 0x28($29)
      addu       $22, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      andi       $2, $18, 0xFF
      sw         $31, 0x2C($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $20, 0x0($22)
      lw         $19, 0x0($21)
      beqz       $2, .L800B9134
       addu      $17, $20, $7
      sll        $4, $17, 2
      jal        func_800524E8
       addu      $5, $0, $0
      j          .L800B9148
       addu      $16, $2, $0
  .L800B9134:
      addu       $4, $19, $0
      sll        $5, $17, 2
      jal        func_80052524
       addu      $6, $0, $0
      addu       $16, $2, $0
  .L800B9148:
      beqz       $16, .L800B9174
       andi      $2, $18, 0xFF
      beqz       $2, .L800B9164
       addu      $4, $16, $0
      addu       $5, $19, $0
      jal        func_80013F00
       sll       $6, $20, 2
  .L800B9164:
      addiu      $2, $0, 0x1
      sw         $16, 0x0($21)
      j          .L800B9178
       sw        $17, 0x0($22)
  .L800B9174:
      addiu      $2, $0, -0x5
  .L800B9178:
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
.end func_800B90DC

.globl func_800B91A0
.ent func_800B91A0
func_800B91A0:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $16, 0x18($29)
      addu       $16, $0, $0
      addiu      $6, $29, 0x10
      sw         $31, 0x20($29)
      jal        func_800A1C90
       addiu     $7, $29, 0x14
      andi       $2, $2, 0xFF
      beqz       $2, .L800B91FC
       addu      $2, $16, $0
      lui        $5, %hi(D_800F5F30)
      lw         $4, 0x10($29)
      lw         $6, 0x14($29)
      jal        func_80052224
       addiu     $5, $5, %lo(D_800F5F30)
      bnez       $2, .L800B91FC
       addu      $2, $16, $0
      addiu      $2, $0, 0x1
      sw         $2, 0x0($17)
      addu       $16, $2, $0
      addu       $2, $16, $0
  .L800B91FC:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800B91A0

.globl func_800B9210
.ent func_800B9210
func_800B9210:
      addiu      $29, $29, -0x40
      sw         $18, 0x38($29)
      addu       $18, $6, $0
      sw         $16, 0x30($29)
      addiu      $16, $0, 0x1
      addiu      $2, $29, 0x28
      sw         $0, 0x28($29)
      sw         $0, 0x2C($29)
      sw         $2, 0x1C($29)
      addiu      $2, $29, 0x2C
      addiu      $6, $0, 0x2C
      addiu      $7, $0, 0x3D
      sw         $31, 0x3C($29)
      sw         $17, 0x34($29)
      sw         $0, 0x10($29)
      sw         $16, 0x14($29)
      sw         $0, 0x18($29)
      jal        func_800A1FE4
       sw        $2, 0x20($29)
      addu       $17, $2, $0
      bne        $17, $16, .L800B9288
       lui       $5, %hi(D_800F5F50)
      lw         $4, 0x28($29)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800F5F50)
      bnez       $2, .L800B9288
       nop
      lw         $2, 0x2C($29)
      sw         $0, 0x2C($29)
      sw         $2, 0x4($18)
  .L800B9288:
      lw         $4, 0x28($29)
      jal        func_80052540
       nop
      lw         $4, 0x2C($29)
      jal        func_80052540
       nop
      addu       $2, $17, $0
      lw         $31, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800B9210

.globl func_800B92BC
.ent func_800B92BC
func_800B92BC:
      addiu      $29, $29, -0x48
      sw         $18, 0x40($29)
      addu       $18, $5, $0
      addiu      $3, $0, 0x1
      sw         $16, 0x38($29)
      addu       $16, $4, $0
      sw         $31, 0x44($29)
      sw         $17, 0x3C($29)
      beqz       $16, .L800B9344
       sw        $0, 0x30($29)
      lbu        $2, 0x0($16)
      beqz       $2, .L800B9344
       addu      $17, $3, $0
      addu       $4, $16, $0
  .L800B92F4:
      addiu      $5, $29, 0x30
      addiu      $6, $0, 0x2C
      addiu      $7, $0, 0x3D
      sw         $17, 0x10($29)
      sw         $17, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $0, 0x20($29)
      sw         $0, 0x24($29)
      jal        func_800A20E0
       sw        $0, 0x28($29)
      addu       $3, $2, $0
      bne        $3, $17, .L800B9344
       nop
      lw         $16, 0x30($29)
      beqz       $16, .L800B9344
       nop
      lbu        $2, 0x0($16)
      bnez       $2, .L800B92F4
       addu      $4, $16, $0
  .L800B9344:
      bnez       $3, .L800B9350
       sw        $16, 0x0($18)
      addiu      $3, $0, 0x1
  .L800B9350:
      lw         $31, 0x44($29)
      lw         $18, 0x40($29)
      lw         $17, 0x3C($29)
      lw         $16, 0x38($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x48
.end func_800B92BC

.globl func_800B936C
.ent func_800B936C
func_800B936C:
      addiu      $29, $29, -0x38
      sw         $22, 0x30($29)
      addu       $22, $5, $0
      sw         $16, 0x18($29)
      addiu      $16, $0, 0x1
      sw         $21, 0x2C($29)
      addu       $21, $7, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x34($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $17, 0x1C($29)
      sw         $0, 0x0($21)
      beqz       $4, .L800B9464
       sw        $4, 0x10($29)
      jal        func_800B9000
       nop
      addu       $17, $2, $0
      beqz       $17, .L800B9448
       andi      $2, $18, 0xFF
      beqz       $2, .L800B93E0
       addiu     $5, $29, 0x10
      lw         $4, 0x10($29)
      jal        func_800A1DA0
       addiu     $6, $0, 0x2C
      andi       $2, $2, 0xFF
      beqz       $2, .L800B944C
       nop
  .L800B93E0:
      lw         $4, 0x10($29)
      addiu      $18, $29, 0x10
      addu       $5, $18, $0
      jal        func_800B91A0
       addu      $6, $17, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800B944C
       addu      $20, $16, $0
      lw         $4, 0x10($29)
      addu       $5, $18, $0
      jal        func_800B9210
       addu      $6, $17, $0
      addu       $16, $2, $0
      bne        $16, $20, .L800B944C
       addu      $19, $16, $0
      lw         $4, 0x10($29)
      addu       $5, $18, $0
      jal        func_800B92BC
       addu      $6, $17, $0
      addu       $16, $2, $0
      bne        $16, $19, .L800B944C
       nop
      sw         $17, 0x0($21)
      j          .L800B944C
       addu      $17, $0, $0
  .L800B9448:
      addiu      $16, $0, -0x5
  .L800B944C:
      beqz       $17, .L800B9464
       addiu     $2, $0, 0x1
      beq        $16, $2, .L800B9470
       nop
      jal        func_800B9020
       addu      $4, $17, $0
  .L800B9464:
      addiu      $2, $0, 0x1
      bnel       $16, $2, .L800B9478
       sw        $0, 0x0($22)
  .L800B9470:
      lw         $2, 0x10($29)
      sw         $2, 0x0($22)
  .L800B9478:
      addu       $2, $16, $0
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
.end func_800B936C

.globl func_800B94A4
.ent func_800B94A4
func_800B94A4:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $16, 0x18($29)
      addu       $16, $7, $0
      sw         $19, 0x24($29)
      lbu        $19, 0x43($29)
      addu       $6, $0, $0
      sw         $31, 0x2C($29)
      sw         $20, 0x28($29)
      beqz       $4, .L800B9580
       sw        $4, 0x10($29)
      lbu        $2, 0x0($4)
      beqz       $2, .L800B9580
       addiu     $20, $0, 0x1
      addiu      $5, $29, 0x10
  .L800B94EC:
      lw         $6, 0x0($16)
      addiu      $7, $29, 0x14
      jal        func_800B936C
       sltu      $6, $0, $6
      addu       $6, $2, $0
      bltz       $6, .L800B9588
       nop
      lw         $2, 0x14($29)
      beqz       $2, .L800B9568
       nop
      lw         $3, 0x0($16)
      lw         $2, 0x0($18)
      bne        $3, $2, .L800B9538
       addu      $4, $17, $0
      addu       $5, $18, $0
      andi       $6, $19, 0xFF
      jal        func_800B90DC
       addiu     $7, $0, 0x4
      addu       $6, $2, $0
  .L800B9538:
      lw         $5, 0x0($17)
      beqz       $5, .L800B9580
       nop
      bne        $6, $20, .L800B9580
       nop
      lw         $2, 0x0($16)
      lw         $4, 0x14($29)
      sll        $3, $2, 2
      addiu      $2, $2, 0x1
      addu       $3, $3, $5
      sw         $4, 0x0($3)
      sw         $2, 0x0($16)
  .L800B9568:
      lw         $4, 0x10($29)
      beqz       $4, .L800B9580
       nop
      lbu        $2, 0x0($4)
      bnez       $2, .L800B94EC
       addiu     $5, $29, 0x10
  .L800B9580:
      bgezl      $6, .L800B9588
       addiu     $6, $0, 0x1
  .L800B9588:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $6, $0
      jr         $31
       addiu     $29, $29, 0x30
.end func_800B94A4

.globl func_800B95AC
.ent func_800B95AC
func_800B95AC:
      addiu      $29, $29, -0x18
      addiu      $4, $0, 0x34
      sw         $31, 0x10($29)
      jal        func_80052504
       addu      $5, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B95AC

.globl func_800B95CC
.ent func_800B95CC
func_800B95CC:
      addiu      $29, $29, -0x30
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $21, 0x24($29)
      addu       $21, $7, $0
      addiu      $4, $0, 0x80
      addu       $5, $0, $0
      sw         $31, 0x28($29)
      sw         $18, 0x18($29)
      jal        func_800524E8
       sw        $17, 0x14($29)
      beqz       $2, .L800B96D0
       sw        $2, 0x1C($16)
      addiu      $4, $0, 0x80
      jal        func_800524E8
       addu      $5, $0, $0
      beqz       $2, .L800B96D0
       sw        $2, 0x28($16)
      addiu      $4, $16, 0x20
      lw         $5, 0x1C($16)
      jal        func_800B8790
       addiu     $6, $0, 0x80
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800B96D4
       addu      $17, $3, $0
      addiu      $4, $16, 0x2C
      lw         $5, 0x28($16)
      jal        func_800B8790
       addiu     $6, $0, 0x80
      addu       $3, $2, $0
      bne        $3, $17, .L800B96D4
       addu      $18, $3, $0
      lui        $4, %hi(func_800B99C8)
      addiu      $4, $4, %lo(func_800B99C8)
      addu       $5, $16, $0
      jal        func_800BAA2C
       addu      $6, $16, $0
      addu       $3, $2, $0
      bne        $3, $18, .L800B96D4
       addu      $17, $3, $0
      addu       $4, $19, $0
      lui        $5, %hi(D_800F5E00)
      addiu      $5, $5, %lo(D_800F5E00)
      addiu      $6, $0, 0x1
      lw         $2, 0x30($20)
      jalr       $2
       addiu     $7, $16, 0x4
      addu       $3, $2, $0
      bne        $3, $17, .L800B96D4
       nop
      sw         $21, 0x8($16)
      lw         $2, 0x40($29)
      sw         $2, 0xC($16)
      lw         $2, 0x44($29)
      sw         $2, 0x10($16)
      lw         $2, 0x48($29)
      sw         $2, 0x14($16)
      lw         $2, 0x4C($29)
      j          .L800B96D4
       sw        $2, 0x18($16)
  .L800B96D0:
      addiu      $3, $0, -0x5
  .L800B96D4:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x30
.end func_800B95CC

.globl func_800B96FC
.ent func_800B96FC
func_800B96FC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x4($16)
      beqz       $4, .L800B9728
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       nop
  .L800B9728:
      lw         $4, 0x0($16)
      beqz       $4, .L800B973C
       nop
      jal        func_800BAAD8
       nop
  .L800B973C:
      lw         $4, 0x8($16)
      beqz       $4, .L800B9750
       nop
      jal        func_800B8D10
       nop
  .L800B9750:
      lw         $4, 0x28($16)
      jal        func_80052540
       nop
      lw         $4, 0x1C($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B96FC

.globl func_800B9780
.ent func_800B9780
func_800B9780:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $4, 0x0($5)
      jal        func_800BAB24
       addu      $5, $6, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B9780

.globl func_800B97A0
.ent func_800B97A0
func_800B97A0:
      addiu      $29, $29, -0x38
      sw         $16, 0x30($29)
      addu       $16, $4, $0
      sw         $31, 0x34($29)
      lw         $4, 0x4($16)
      lui        $5, %hi(func_800B9780)
      lw         $2, 0x4($4)
      addiu      $5, $5, %lo(func_800B9780)
      lw         $2, 0x8($2)
      jalr       $2
       addu      $6, $16, $0
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800B9870
       addu      $5, $16, $0
      lui        $6, %hi(D_800F5E18)
      lui        $2, %hi(D_801377FC)
      addiu      $6, $6, %lo(D_800F5E18)
      lui        $8, %hi(D_8013363C)
      addiu      $8, $8, %lo(D_8013363C)
      lw         $2, %lo(D_801377FC)($2)
      lw         $3, 0x4($5)
      sll        $7, $2, 3
      subu       $7, $7, $2
      sll        $7, $7, 4
      addu       $7, $7, $2
      sll        $7, $7, 1
      addiu      $2, $8, 0x30
      lw         $3, 0x4($3)
      addu       $2, $7, $2
      sw         $2, 0x10($29)
      lui        $2, %hi(D_800F5EB0)
      addiu      $2, $2, %lo(D_800F5EB0)
      sw         $2, 0x14($29)
      lui        $2, %hi(D_800F5EB8)
      addiu      $2, $2, %lo(D_800F5EB8)
      sw         $2, 0x18($29)
      lui        $2, %hi(D_800F5EC4)
      addiu      $2, $2, %lo(D_800F5EC4)
      sw         $2, 0x1C($29)
      lui        $2, %hi(D_800F5EC8)
      addiu      $2, $2, %lo(D_800F5EC8)
      sw         $2, 0x20($29)
      addiu      $2, $5, 0x20
      sw         $2, 0x24($29)
      addiu      $2, $5, 0x2C
      sw         $2, 0x28($29)
      lw         $4, 0x4($5)
      lw         $2, 0x20($3)
      jalr       $2
       addu      $7, $7, $8
      addu       $3, $2, $0
  .L800B9870:
      lw         $31, 0x34($29)
      lw         $16, 0x30($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x38
.end func_800B97A0

.globl func_800B9884
.ent func_800B9884
func_800B9884:
      addiu      $29, $29, -0x30
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $21, 0x24($29)
      addu       $21, $0, $0
      lui        $2, %hi(D_80125880)
      sw         $18, 0x18($29)
      lw         $18, %lo(D_80125880)($2)
      addiu      $2, $0, 0x2
      sw         $31, 0x28($29)
      sw         $20, 0x20($29)
      bne        $16, $2, .L800B98C4
       sw        $19, 0x1C($29)
      addiu      $16, $0, 0x1
  .L800B98C4:
      addiu      $20, $0, 0x1
      bne        $16, $20, .L800B9930
       addiu     $5, $17, 0x20
      lw         $4, 0x8($17)
      jal        func_800B8E48
       addiu     $6, $17, 0x2C
      addu       $16, $2, $0
      bne        $16, $20, .L800B9924
       addu      $19, $16, $0
      jal        func_800B9A88
       addu      $4, $18, $0
      addu       $16, $2, $0
      bne        $16, $19, .L800B9924
       addu      $20, $16, $0
      lw         $5, 0x8($17)
      jal        func_800B9C08
       addu      $4, $18, $0
      addu       $16, $2, $0
      bne        $16, $20, .L800B991C
       nop
      sw         $0, 0x8($17)
      addiu      $21, $0, 0x4
  .L800B991C:
      jal        func_800B9AB0
       addu      $4, $18, $0
  .L800B9924:
      addiu      $2, $0, 0x1
      beq        $16, $2, .L800B993C
       nop
  .L800B9930:
      lw         $2, 0x18($17)
      addiu      $21, $0, 0x5
      sw         $21, 0x0($2)
  .L800B993C:
      lw         $2, 0xC($17)
      lw         $4, 0x10($17)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $21, $0
      addu       $16, $2, $0
      jal        func_800B96FC
       addu      $4, $17, $0
      addu       $2, $16, $0
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800B9884

.globl func_800B9984
.ent func_800B9984
func_800B9984:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0xC($16)
      lw         $4, 0x10($16)
      lw         $2, 0x8($2)
      jalr       $2
       nop
      addu       $4, $16, $0
      jal        func_800B96FC
       addu      $16, $2, $0
      addu       $2, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B9984

.globl func_800B99C8
.ent func_800B99C8
func_800B99C8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      beqz       $4, .L800B9A34
       addiu     $2, $0, -0x4
      addiu      $2, $0, 0x1
      beq        $5, $2, .L800B9A0C
       nop
      beqz       $5, .L800B9A04
       addiu     $2, $0, 0x2
      beq        $5, $2, .L800B9A1C
       addiu     $2, $0, 0x3
      beq        $5, $2, .L800B9A2C
       addiu     $2, $0, -0x4
      j          .L800B9A34
       nop
  .L800B9A04:
      j          .L800B9A34
       addiu     $2, $0, 0x1
  .L800B9A0C:
      jal        func_800B97A0
       addu      $5, $6, $0
      j          .L800B9A34
       nop
  .L800B9A1C:
      jal        func_800B9884
       addu      $5, $6, $0
      j          .L800B9A34
       nop
  .L800B9A2C:
      jal        func_800B9984
       addu      $5, $6, $0
  .L800B9A34:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B99C8

.globl func_800B9A40
.ent func_800B9A40
func_800B9A40:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x0($16)
      jal        func_800BAAF8
       nop
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      bne        $4, $2, .L800B9A74
       addiu     $2, $0, 0x2
      lw         $3, 0x18($16)
      sw         $2, 0x0($3)
  .L800B9A74:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B9A40

.globl func_800B9A88
.ent func_800B9A88
func_800B9A88:
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
.end func_800B9A88

.globl func_800B9AB0
.ent func_800B9AB0
func_800B9AB0:
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
.end func_800B9AB0

.globl func_800B9AD8
.ent func_800B9AD8
func_800B9AD8:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $16, 0xC($4)
      beqz       $16, .L800B9B24
       addu      $18, $6, $0
      addu       $4, $16, $0
  .L800B9B00:
      addu       $5, $17, $0
      jal        func_800B8F38
       addu      $6, $18, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L800B9B28
       addu      $2, $16, $0
      lw         $16, 0x0($16)
      bnez       $16, .L800B9B00
       addu      $4, $16, $0
  .L800B9B24:
      addu       $2, $16, $0
  .L800B9B28:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B9AD8

.globl func_800B9B40
.ent func_800B9B40
func_800B9B40:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $16, 0xC($4)
      beqz       $16, .L800B9B8C
       addu      $18, $6, $0
      addu       $4, $16, $0
  .L800B9B68:
      addu       $5, $17, $0
      jal        func_800B8F9C
       addu      $6, $18, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L800B9B90
       addu      $2, $16, $0
      lw         $16, 0x0($16)
      bnez       $16, .L800B9B68
       addu      $4, $16, $0
  .L800B9B8C:
      addu       $2, $16, $0
  .L800B9B90:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B9B40

.globl func_800B9BA8
.ent func_800B9BA8
func_800B9BA8:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $31, 0x1C($29)
      lw         $5, 0x4($16)
      lw         $6, 0xC($16)
      jal        func_800B9AD8
       addu      $17, $4, $0
      bnez       $2, .L800B9BF0
       nop
      beqz       $18, .L800B9BF0
       addu      $4, $17, $0
      lw         $5, 0x4($16)
      jal        func_800B9B40
       addu      $6, $18, $0
  .L800B9BF0:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B9BA8

.globl func_800B9C08
.ent func_800B9C08
func_800B9C08:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $16, 0x10($29)
      sw         $31, 0x1C($29)
      lw         $5, 0x1C($18)
      lw         $6, 0x20($18)
      jal        func_800B9AD8
       addiu     $16, $0, 0x1
      beqz       $2, .L800B9C68
       addu      $4, $2, $0
      addu       $5, $18, $0
      jal        func_800B8D68
       addu      $6, $0, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800B9C78
       addu      $2, $16, $0
      jal        func_800B8D10
       addu      $4, $18, $0
      j          .L800B9C78
       addu      $2, $16, $0
  .L800B9C68:
      lw         $2, 0xC($17)
      sw         $2, 0x0($18)
      sw         $18, 0xC($17)
      addu       $2, $16, $0
  .L800B9C78:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B9C08

.globl func_800B9C90
.ent func_800B9C90
func_800B9C90:
      addiu      $29, $29, -0x18
      addu       $6, $4, $0
      sw         $31, 0x10($29)
      lw         $4, 0xC($6)
      beqz       $4, .L800B9CEC
       addu      $3, $0, $0
  .L800B9CA8:
      beq        $4, $5, .L800B9CC0
       nop
      addu       $3, $4, $0
      lw         $4, 0x0($4)
      bnez       $4, .L800B9CA8
       nop
  .L800B9CC0:
      beqz       $4, .L800B9CEC
       nop
      beqz       $3, .L800B9CDC
       nop
      lw         $2, 0x0($4)
      j          .L800B9CE4
       sw        $2, 0x0($3)
  .L800B9CDC:
      lw         $2, 0x0($4)
      sw         $2, 0xC($6)
  .L800B9CE4:
      jal        func_800B8D10
       nop
  .L800B9CEC:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800B9C90

.globl func_800B9CF8
.ent func_800B9CF8
func_800B9CF8:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $4, 0xC($17)
      beql       $4, $0, .L800B9D34
       sw        $0, 0xC($17)
  .L800B9D18:
      lw         $16, 0x0($4)
      jal        func_800B8D10
       nop
      addu       $4, $16, $0
      bnez       $4, .L800B9D18
       nop
      sw         $0, 0xC($17)
  .L800B9D34:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800B9CF8

.globl func_800B9D48
.ent func_800B9D48
func_800B9D48:
      addiu      $29, $29, -0x38
      sw         $18, 0x28($29)
      addu       $18, $4, $0
      sw         $20, 0x30($29)
      addu       $20, $5, $0
      sw         $16, 0x20($29)
      addu       $16, $6, $0
      sw         $19, 0x2C($29)
      addu       $19, $7, $0
      sw         $31, 0x34($29)
      jal        func_800B95AC
       sw        $17, 0x24($29)
      addu       $17, $2, $0
      beqz       $17, .L800B9DF4
       addu      $4, $17, $0
      lw         $2, 0x48($29)
      sw         $2, 0x18($29)
      lw         $2, 0x50($29)
      sw         $16, 0x10($29)
      sw         $19, 0x14($29)
      sw         $2, 0x1C($29)
      lw         $5, 0x0($18)
      lw         $6, 0x4($18)
      jal        func_800B95CC
       addu      $7, $20, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800B9DE4
       addu      $18, $16, $0
      jal        func_800B9A40
       addu      $4, $17, $0
      addu       $16, $2, $0
      bne        $16, $18, .L800B9DDC
       addiu     $2, $0, 0x1
      lw         $2, 0x4C($29)
      sw         $17, 0x0($2)
      addiu      $2, $0, 0x1
  .L800B9DDC:
      beq        $16, $2, .L800B9DFC
       addu      $2, $16, $0
  .L800B9DE4:
      jal        func_800B96FC
       addu      $4, $17, $0
      j          .L800B9DFC
       addu      $2, $16, $0
  .L800B9DF4:
      addiu      $16, $0, -0x5
      addu       $2, $16, $0
  .L800B9DFC:
      lw         $31, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800B9D48

.globl func_800B9E1C
.ent func_800B9E1C
func_800B9E1C:
      addiu      $29, $29, -0x170
      sw         $20, 0x158($29)
      addu       $20, $4, $0
      sw         $22, 0x160($29)
      addu       $22, $5, $0
      sw         $23, 0x164($29)
      addu       $23, $7, $0
      lui        $5, %hi(D_800F5E00)
      addiu      $5, $5, %lo(D_800F5E00)
      addu       $6, $0, $0
      sw         $31, 0x168($29)
      sw         $21, 0x15C($29)
      sw         $19, 0x154($29)
      sw         $18, 0x150($29)
      sw         $17, 0x14C($29)
      sw         $16, 0x148($29)
      lw         $2, 0x0($20)
      lw         $4, 0x4($20)
      lw         $2, 0x30($2)
      jalr       $2
       addiu     $7, $29, 0x140
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800B9F64
       addu      $21, $16, $0
      addu       $5, $0, $0
      lui        $6, %hi(D_800F5E18)
      addiu      $2, $29, 0x40
      addiu      $3, $0, 0x80
      sw         $2, 0x30($29)
      addiu      $2, $29, 0xC0
      lui        $7, %hi(D_800F5F00)
      addiu      $7, $7, %lo(D_800F5F00)
      sw         $2, 0x38($29)
      lui        $2, %hi(D_800F5EB0)
      addiu      $2, $2, %lo(D_800F5EB0)
      lw         $4, 0x140($29)
      addiu      $18, $29, 0x30
      sb         $0, 0x40($29)
      sw         $3, 0x34($29)
      sb         $0, 0xC0($29)
      sw         $3, 0x3C($29)
      lw         $3, 0x4($4)
      addiu      $17, $29, 0x38
      sw         $2, 0x14($29)
      lui        $2, %hi(D_800F5EB8)
      addiu      $2, $2, %lo(D_800F5EB8)
      sw         $2, 0x18($29)
      lui        $2, %hi(D_800F5EC4)
      addiu      $2, $2, %lo(D_800F5EC4)
      sw         $2, 0x1C($29)
      lui        $2, %hi(D_800F5EC8)
      addiu      $2, $2, %lo(D_800F5EC8)
      sw         $7, 0x10($29)
      sw         $2, 0x20($29)
      sw         $18, 0x24($29)
      sw         $17, 0x28($29)
      lw         $2, 0x20($3)
      jalr       $2
       addiu     $6, $6, %lo(D_800F5E18)
      addu       $16, $2, $0
      bne        $16, $21, .L800B9F50
       addu      $19, $16, $0
      addu       $4, $22, $0
      addu       $5, $18, $0
      jal        func_800B8E48
       addu      $6, $17, $0
      addu       $16, $2, $0
      bne        $16, $19, .L800B9F50
       addu      $17, $16, $0
      addu       $4, $20, $0
      jal        func_800B9C08
       addu      $5, $22, $0
      addu       $16, $2, $0
      bne        $16, $17, .L800B9F50
       addiu     $2, $0, 0x4
      sw         $2, 0x0($23)
  .L800B9F50:
      lw         $4, 0x140($29)
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       nop
  .L800B9F64:
      addu       $2, $16, $0
      lw         $31, 0x168($29)
      lw         $23, 0x164($29)
      lw         $22, 0x160($29)
      lw         $21, 0x15C($29)
      lw         $20, 0x158($29)
      lw         $19, 0x154($29)
      lw         $18, 0x150($29)
      lw         $17, 0x14C($29)
      lw         $16, 0x148($29)
      jr         $31
       addiu     $29, $29, 0x170
.end func_800B9E1C

.globl func_800B9F94
.ent func_800B9F94
func_800B9F94:
      addiu      $29, $29, -0x48
      sw         $21, 0x34($29)
      lw         $21, 0x60($29)
      sw         $22, 0x38($29)
      lw         $22, 0x68($29)
      sw         $20, 0x30($29)
      addu       $20, $4, $0
      sw         $18, 0x28($29)
      addu       $18, $5, $0
      sw         $30, 0x40($29)
      addu       $30, $7, $0
      sw         $23, 0x3C($29)
      addu       $23, $6, $0
      sw         $31, 0x44($29)
      sw         $19, 0x2C($29)
      sw         $17, 0x24($29)
      jal        func_800B8C10
       sw        $16, 0x20($29)
      addu       $17, $2, $0
      beqz       $17, .L800BA0F0
       addiu     $16, $0, -0x5
      lw         $5, 0x4($18)
      lw         $6, 0xC($18)
      lw         $7, 0x4($30)
      jal        func_800B8C30
       addu      $4, $17, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800BA0D8
       addu      $19, $16, $0
      addu       $4, $20, $0
      lw         $6, 0x4($30)
      jal        func_800B9BA8
       addu      $5, $18, $0
      addu       $5, $2, $0
      beqz       $5, .L800BA078
       andi      $2, $23, 0xFF
      bnez       $2, .L800BA050
       addu      $4, $5, $0
      addu       $5, $17, $0
      jal        func_800B8D68
       addiu     $6, $0, 0x1
      addu       $16, $2, $0
      bne        $16, $19, .L800BA0D8
       addiu     $2, $0, 0x4
      j          .L800BA0D8
       sw        $2, 0x0($22)
  .L800BA050:
      beqz       $5, .L800BA078
       addiu     $2, $0, 0x3
      lw         $3, 0x2C($5)
      bne        $3, $2, .L800BA07C
       andi      $2, $21, 0x1
      jal        func_800B9C90
       addu      $4, $20, $0
      addiu      $2, $0, 0x5
      j          .L800BA0D8
       sw        $2, 0x0($22)
  .L800BA078:
      andi       $2, $21, 0x1
  .L800BA07C:
      beqz       $2, .L800BA0B4
       addu      $4, $20, $0
      lw         $6, 0x58($29)
      lw         $7, 0x5C($29)
      lw         $2, 0x64($29)
      addu       $5, $17, $0
      sw         $21, 0x10($29)
      sw         $22, 0x18($29)
      jal        func_800B9D48
       sw        $2, 0x14($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      beql       $16, $2, .L800BA0D8
       addu      $17, $0, $0
  .L800BA0B4:
      addu       $4, $20, $0
      addu       $5, $17, $0
      addu       $6, $21, $0
      jal        func_800B9E1C
       addu      $7, $22, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      beql       $16, $2, .L800BA0D8
       addu      $17, $0, $0
  .L800BA0D8:
      beqz       $17, .L800BA0F4
       addu      $2, $16, $0
      jal        func_800B8D10
       addu      $4, $17, $0
      j          .L800BA0F4
       addu      $2, $16, $0
  .L800BA0F0:
      addu       $2, $16, $0
  .L800BA0F4:
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
.end func_800B9F94

.globl func_800BA124
.ent func_800BA124
func_800BA124:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      addiu      $4, $0, 0x14
      sw         $31, 0x18($29)
      jal        func_80052504
       addu      $5, $0, $0
      beqz       $2, .L800BA158
       nop
      sw         $16, 0x0($2)
      sw         $17, 0x4($2)
  .L800BA158:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800BA124

.globl func_800BA16C
.ent func_800BA16C
func_800BA16C:
      addiu      $29, $29, -0x18
      addu       $6, $4, $0
      addu       $5, $0, $0
      sw         $31, 0x10($29)
      lw         $2, 0x0($6)
      lw         $4, 0x4($6)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $6, $6, 0x8
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800BA16C

.globl func_800BA19C
.ent func_800BA19C
func_800BA19C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      sw         $31, 0x14($29)
      jal        func_800B9CF8
       addu      $16, $4, $0
      lw         $4, 0x8($16)
      beqz       $4, .L800BA1CC
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       nop
  .L800BA1CC:
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800BA19C

.globl func_800BA1E4
.ent func_800BA1E4
func_800BA1E4:
      addiu      $29, $29, -0x30
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      addu       $4, $5, $0
      addiu      $5, $29, 0x10
      sw         $19, 0x24($29)
      addu       $19, $6, $0
      sw         $20, 0x28($29)
      addu       $20, $7, $0
      sw         $31, 0x2C($29)
      sw         $18, 0x20($29)
      jal        func_800B8ADC
       sw        $17, 0x1C($29)
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800BA270
       addu      $18, $17, $0
      addu       $4, $16, $0
      lw         $5, 0x10($29)
      jal        func_800B9BA8
       addu      $6, $0, $0
      addu       $16, $2, $0
      beqz       $16, .L800BA264
       addu      $4, $19, $0
      jal        func_800B85DC
       addu      $5, $16, $0
      addu       $17, $2, $0
      bne        $17, $18, .L800BA264
       nop
      jal        func_800B8E2C
       addu      $4, $16, $0
      sw         $17, 0x0($20)
  .L800BA264:
      lw         $4, 0x10($29)
      jal        func_800B8974
       nop
  .L800BA270:
      addu       $2, $17, $0
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800BA1E4

.globl func_800BA294
.ent func_800BA294
func_800BA294:
      addiu      $29, $29, -0x70
      sw         $22, 0x68($29)
      addu       $22, $4, $0
      addu       $4, $5, $0
      addiu      $5, $29, 0x38
      sw         $17, 0x54($29)
      addiu      $17, $29, 0x28
      addiu      $2, $0, 0x4
      sw         $21, 0x64($29)
      addu       $21, $6, $0
      sw         $20, 0x60($29)
      addu       $20, $7, $0
      sw         $31, 0x6C($29)
      sw         $19, 0x5C($29)
      sw         $18, 0x58($29)
      sw         $16, 0x50($29)
      sw         $17, 0x40($29)
      sw         $2, 0x44($29)
      jal        func_800B8ADC
       sw        $0, 0x48($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800BA3BC
       addu      $5, $0, $0
      lui        $19, %hi(D_800F5F0C)
      addu       $18, $2, $0
  .L800BA2FC:
      addu       $4, $20, $0
      addiu      $6, $19, %lo(D_800F5F0C)
      jal        func_8005446C
       addiu     $7, $29, 0x3C
      beqz       $2, .L800BA34C
       addu      $4, $2, $0
      addiu      $5, $29, 0x40
      addiu      $6, $29, 0x44
      lw         $2, 0x40($29)
      addiu      $7, $29, 0x48
      xor        $2, $2, $17
      sltiu      $2, $2, 0x1
      jal        func_800B94A4
       sw        $2, 0x10($29)
      addu       $16, $2, $0
      bne        $16, $18, .L800BA350
       addiu     $2, $0, 0x1
      lw         $2, 0x3C($29)
      j          .L800BA2FC
       addiu     $5, $2, 0x1
  .L800BA34C:
      addiu      $2, $0, 0x1
  .L800BA350:
      bne        $16, $2, .L800BA3B0
       nop
      lw         $2, 0x48($29)
      bne        $2, $16, .L800BA3B0
       nop
      jal        func_800B8700
       addu      $4, $21, $0
      andi       $6, $2, 0xFF
      lw         $2, 0x80($29)
      lw         $5, 0x38($29)
      lw         $3, 0x40($29)
      sw         $2, 0x10($29)
      lw         $2, 0x84($29)
      sw         $2, 0x14($29)
      lw         $2, 0x88($29)
      sw         $2, 0x18($29)
      lw         $2, 0x8C($29)
      sw         $2, 0x1C($29)
      lw         $2, 0x90($29)
      sw         $2, 0x20($29)
      lw         $7, 0x0($3)
      jal        func_800B9F94
       addu      $4, $22, $0
      addu       $16, $2, $0
  .L800BA3B0:
      lw         $4, 0x38($29)
      jal        func_800B8974
       nop
  .L800BA3BC:
      lw         $4, 0x40($29)
      beqz       $4, .L800BA3D8
       addiu     $2, $29, 0x28
      lw         $5, 0x48($29)
      xor        $6, $4, $2
      jal        func_800B9054
       sltiu     $6, $6, 0x1
  .L800BA3D8:
      addu       $2, $16, $0
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
.end func_800BA294

.globl func_800BA404
.ent func_800BA404
func_800BA404:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      lw         $20, 0x38($29)
      lw         $3, 0x40($29)
      sw         $18, 0x18($29)
      lw         $18, 0x44($29)
      lui        $2, %hi(D_80125880)
      sw         $17, 0x14($29)
      lw         $17, %lo(D_80125880)($2)
      sw         $19, 0x1C($29)
      addu       $19, $7, $0
      sw         $31, 0x24($29)
      beqz       $19, .L800BA454
       sw        $16, 0x10($29)
      beqz       $20, .L800BA4B0
       addiu     $16, $0, -0x4
      beqz       $3, .L800BA4B4
       addu      $2, $16, $0
      bnel       $18, $0, .L800BA45C
       sw        $0, 0x0($3)
  .L800BA454:
      j          .L800BA4B0
       addiu     $16, $0, -0x4
  .L800BA45C:
      beqz       $17, .L800BA4AC
       sw        $0, 0x0($18)
      jal        func_800B9A88
       addu      $4, $17, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800BA4B4
       addu      $2, $16, $0
      addu       $4, $17, $0
      addu       $5, $19, $0
      addu       $6, $20, $0
      jal        func_800BA1E4
       addu      $7, $18, $0
      addu       $16, $2, $0
      beql       $16, $0, .L800BA49C
       addiu     $16, $0, 0x1
  .L800BA49C:
      jal        func_800B9AB0
       addu      $4, $17, $0
      j          .L800BA4B4
       addu      $2, $16, $0
  .L800BA4AC:
      addiu      $16, $0, 0x1
  .L800BA4B0:
      addu       $2, $16, $0
  .L800BA4B4:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800BA404

.globl func_800BA4D4
.ent func_800BA4D4
func_800BA4D4:
      addiu      $29, $29, -0x50
      lw         $3, 0x64($29)
      sw         $20, 0x38($29)
      lw         $20, 0x6C($29)
      sw         $18, 0x30($29)
      lw         $18, 0x74($29)
      sw         $19, 0x34($29)
      lw         $19, 0x78($29)
      lui        $2, %hi(D_80125880)
      sw         $17, 0x2C($29)
      lw         $17, %lo(D_80125880)($2)
      sw         $22, 0x40($29)
      addu       $22, $4, $0
      sw         $23, 0x44($29)
      addu       $23, $5, $0
      sw         $21, 0x3C($29)
      addu       $21, $7, $0
      sw         $31, 0x48($29)
      beqz       $21, .L800BA53C
       sw        $16, 0x28($29)
      beqz       $20, .L800BA5BC
       addiu     $16, $0, -0x4
      beql       $18, $0, .L800BA5C0
       addu      $2, $16, $0
      bnez       $19, .L800BA544
       addiu     $2, $0, 0x191
  .L800BA53C:
      j          .L800BA5BC
       addiu     $16, $0, -0x4
  .L800BA544:
      bne        $3, $2, .L800BA5BC
       addiu     $16, $0, -0x1
      sw         $0, 0x0($18)
      beqz       $17, .L800BA5B8
       sw        $0, 0x0($19)
      jal        func_800B9A88
       addu      $4, $17, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800BA5C0
       addu      $2, $16, $0
      addu       $4, $17, $0
      addu       $5, $21, $0
      lw         $2, 0x70($29)
      lw         $6, 0x60($29)
      addu       $7, $20, $0
      sw         $22, 0x10($29)
      sw         $23, 0x14($29)
      sw         $18, 0x1C($29)
      sw         $19, 0x20($29)
      jal        func_800BA294
       sw        $2, 0x18($29)
      addu       $16, $2, $0
      beql       $16, $0, .L800BA5A8
       addiu     $16, $0, 0x1
  .L800BA5A8:
      jal        func_800B9AB0
       addu      $4, $17, $0
      j          .L800BA5C0
       addu      $2, $16, $0
  .L800BA5B8:
      addiu      $16, $0, 0x1
  .L800BA5BC:
      addu       $2, $16, $0
  .L800BA5C0:
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
.end func_800BA4D4

.globl func_800BA5EC
.ent func_800BA5EC
func_800BA5EC:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800BA5EC

.globl func_800BA5F4
.ent func_800BA5F4
func_800BA5F4:
      addiu      $29, $29, -0x20
      lui        $2, %hi(D_80125880)
      sw         $16, 0x10($29)
      lw         $16, %lo(D_80125880)($2)
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x1C($29)
      beqz       $16, .L800BA658
       sw        $17, 0x14($29)
      jal        func_800B9A88
       addu      $4, $16, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800BA660
       addu      $2, $17, $0
      beqz       $18, .L800BA640
       addiu     $2, $0, 0x2
      bne        $18, $2, .L800BA648
       nop
  .L800BA640:
      jal        func_800B9CF8
       addu      $4, $16, $0
  .L800BA648:
      jal        func_800B9AB0
       addu      $4, $16, $0
      j          .L800BA660
       addu      $2, $17, $0
  .L800BA658:
      addiu      $17, $0, 0x1
      addu       $2, $17, $0
  .L800BA660:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800BA5F4

.globl func_800BA678
.ent func_800BA678
func_800BA678:
      beqz       $5, .L800BA6CC
       addiu     $3, $0, 0x1
      lui        $2, %hi(D_800F5D94)
      addiu      $2, $2, %lo(D_800F5D94)
      addiu      $4, $2, 0x30
  .L800BA68C:
      lw         $6, 0x0($2)
      lw         $7, 0x4($2)
      lw         $8, 0x8($2)
      lw         $9, 0xC($2)
      sw         $6, 0x0($5)
      sw         $7, 0x4($5)
      sw         $8, 0x8($5)
      sw         $9, 0xC($5)
      addiu      $2, $2, 0x10
      bne        $2, $4, .L800BA68C
       addiu     $5, $5, 0x10
      lw         $6, 0x0($2)
      lw         $7, 0x4($2)
      sw         $6, 0x0($5)
      j          .L800BA6D0
       sw        $7, 0x4($5)
  .L800BA6CC:
      addiu      $3, $0, -0x4
  .L800BA6D0:
      jr         $31
       addu      $2, $3, $0
.end func_800BA678

.globl func_800BA6D8
.ent func_800BA6D8
func_800BA6D8:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800BA6D8

.globl func_800BA6E0
.ent func_800BA6E0
func_800BA6E0:
      addiu      $29, $29, -0x20
      addu       $4, $0, $0
      lui        $2, %hi(D_80125880)
      lw         $2, %lo(D_80125880)($2)
      addu       $5, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      bnez       $2, .L800BA780
       sw        $16, 0x10($29)
      slt        $2, $5, $7
      beqz       $2, .L800BA734
       addu      $3, $4, $0
      addiu      $8, $0, 0x2010
  .L800BA714:
      lw         $2, 0x0($6)
      bne        $2, $8, .L800BA728
       addiu     $3, $3, 0x1
      lw         $4, 0x4($6)
      lw         $5, 0x8($6)
  .L800BA728:
      slt        $2, $3, $7
      bnez       $2, .L800BA714
       addiu     $6, $6, 0xC
  .L800BA734:
      beqz       $4, .L800BA784
       addiu     $17, $0, -0x10
      jal        func_800BA124
       nop
      addu       $16, $2, $0
      beqz       $16, .L800BA784
       addiu     $17, $0, -0x5
      jal        func_800BA16C
       addu      $4, $16, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800BA770
       lui       $2, %hi(D_80125880)
      j          .L800BA784
       sw        $16, %lo(D_80125880)($2)
  .L800BA770:
      jal        func_800BA19C
       addu      $4, $16, $0
      j          .L800BA788
       addu      $2, $17, $0
  .L800BA780:
      addiu      $17, $0, -0x12
  .L800BA784:
      addu       $2, $17, $0
  .L800BA788:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
.end func_800BA6E0

.globl func_800BA790
.ent func_800BA790
func_800BA790:
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800BA790

.globl func_800BA79C
.ent func_800BA79C
func_800BA79C:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      lui        $18, %hi(D_80125880)
      sw         $16, 0x10($29)
      lw         $16, %lo(D_80125880)($18)
      sw         $31, 0x1C($29)
      beqz       $16, .L800BA7D8
       sw        $17, 0x14($29)
      jal        func_800B9A88
       addu      $4, $16, $0
      addu       $17, $2, $0
      jal        func_800BA19C
       addu      $4, $16, $0
      j          .L800BA7DC
       sw        $0, %lo(D_80125880)($18)
  .L800BA7D8:
      addiu      $17, $0, 0x1
  .L800BA7DC:
      addu       $2, $17, $0
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800BA79C

.globl func_800BA7F8
.ent func_800BA7F8
func_800BA7F8:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
.end func_800BA7F8

.globl func_800BA800
.ent func_800BA800
func_800BA800:
      addiu      $29, $29, -0x18
      addiu      $4, $0, 0x10
      sw         $31, 0x10($29)
      jal        func_80052504
       addu      $5, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800BA800

.globl func_800BA820
.ent func_800BA820
func_800BA820:
      addiu      $2, $0, 0x1
      sw         $5, 0x0($4)
      sw         $6, 0x4($4)
      jr         $31
       sw        $0, 0x8($4)
.end func_800BA820

.globl func_800BA834
.ent func_800BA834
func_800BA834:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80052540
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800BA834

.globl func_800BA850
.ent func_800BA850
func_800BA850:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $16, 0x0($18)
      bnez       $16, .L800BA87C
       addiu     $17, $0, -0x1
      bne        $4, $17, .L800BA9A4
       addu      $2, $17, $0
  .L800BA87C:
      addiu      $3, $4, 0x1
      sltiu      $2, $3, 0x5
      beqz       $2, .L800BA9A0
       lui       $2, %hi(jtbl_800F5FC0)
      addiu      $2, $2, %lo(jtbl_800F5FC0)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800BA8A4
.L800BA8A4:
      addiu      $5, $0, 0x1
      lw         $4, 0x4($16)
      lw         $2, 0x0($16)
      jalr       $2
       addu      $6, $5, $0
      addu       $3, $2, $0
      addu       $4, $3, $0
      addiu      $2, $0, -0x7
      beq        $3, $2, .L800BA968
       sw        $3, 0xC($16)
      slti       $2, $3, -0x6
      beqz       $2, .L800BA8E8
       addiu     $2, $0, -0xD
      beq        $3, $2, .L800BA918
       addu      $2, $17, $0
      j          .L800BA9A4
       nop
  .L800BA8E8:
      addiu      $2, $0, 0x1
      beq        $4, $2, .L800BA904
       addiu     $2, $0, 0x2
      beq        $4, $2, .L800BA920
       addu      $2, $17, $0
      j          .L800BA9A4
       nop
  .L800BA904:
      addiu      $4, $0, 0x2
      jal        func_800BA850
       addu      $5, $18, $0
      j          .L800BA9A0
       addu      $17, $2, $0
  .L800BA918:
      j          .L800BA9A0
       addiu     $17, $0, 0x1
  .L800BA920:
      j          .L800BA9A0
       addiu     $17, $0, 0x3
  .globl .L800BA928
.L800BA928:
      lw         $4, 0x8($16)
      jal        func_800513F4
       addiu     $17, $0, 0x3
      j          .L800BA9A4
       addu      $2, $17, $0
  .globl .L800BA93C
.L800BA93C:
      lw         $4, 0x4($16)
      lw         $6, 0xC($16)
      lw         $2, 0x0($16)
      jalr       $2
       addiu     $5, $0, 0x2
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800BA968
       sw        $2, 0xC($16)
      addiu      $17, $0, 0x7FFF
      j          .L800BA9A0
       sw        $0, 0x0($18)
  .L800BA968:
      j          .L800BA9A0
       addiu     $17, $0, -0x1
  .globl .L800BA970
.L800BA970:
      beql       $16, $0, .L800BA99C
       sw        $0, 0x0($18)
      lw         $2, 0x0($16)
      beql       $2, $0, .L800BA99C
       sw        $0, 0x0($18)
      lw         $4, 0x4($16)
      lw         $6, 0xC($16)
      jalr       $2
       addiu     $5, $0, 0x3
      sw         $2, 0xC($16)
      sw         $0, 0x0($18)
  .L800BA99C:
      addiu      $17, $0, 0x7FFF
  .L800BA9A0:
      addu       $2, $17, $0
  .L800BA9A4:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800BA850

.globl func_800BA9BC
.ent func_800BA9BC
func_800BA9BC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      lui        $4, %hi(func_800BA850)
      addiu      $4, $4, %lo(func_800BA850)
      addu       $5, $16, $0
      addu       $6, $0, $0
      sw         $31, 0x14($29)
      jal        func_80051388
       addu      $7, $6, $0
      addiu      $3, $0, -0x5
      beqz       $2, .L800BA9F4
       sw        $2, 0x8($16)
      addiu      $3, $0, 0x1
  .L800BA9F4:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_800BA9BC

.globl func_800BAA08
.ent func_800BAA08
func_800BAA08:
      addiu      $29, $29, -0x18
      addu       $2, $4, $0
      sw         $31, 0x10($29)
      lw         $4, 0x8($2)
      jal        func_80051414
       sw        $5, 0xC($2)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800BAA08

.globl func_800BAA2C
.ent func_800BAA2C
func_800BAA2C:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $31, 0x20($29)
      beqz       $17, .L800BAA5C
       sw        $16, 0x10($29)
      bnez       $19, .L800BAA64
       nop
  .L800BAA5C:
      j          .L800BAAB8
       addiu     $17, $0, -0x4
  .L800BAA64:
      jal        func_800BA800
       nop
      addu       $16, $2, $0
      beqz       $16, .L800BAAB4
       addu      $4, $16, $0
      addu       $5, $17, $0
      jal        func_800BA820
       addu      $6, $18, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800BAA9C
       nop
      sw         $16, 0x0($19)
      addu       $16, $0, $0
  .L800BAA9C:
      beqz       $16, .L800BAABC
       addu      $2, $17, $0
      jal        func_800BA834
       addu      $4, $16, $0
      j          .L800BAABC
       addu      $2, $17, $0
  .L800BAAB4:
      addiu      $17, $0, -0x5
  .L800BAAB8:
      addu       $2, $17, $0
  .L800BAABC:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800BAA2C

.globl func_800BAAD8
.ent func_800BAAD8
func_800BAAD8:
      addiu      $29, $29, -0x18
      beqz       $4, .L800BAAEC
       sw        $31, 0x10($29)
      jal        func_800BA834
       nop
  .L800BAAEC:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800BAAD8

.globl func_800BAAF8
.ent func_800BAAF8
func_800BAAF8:
      addiu      $29, $29, -0x18
      beqz       $4, .L800BAB14
       sw        $31, 0x10($29)
      jal        func_800BA9BC
       nop
      j          .L800BAB18
       nop
  .L800BAB14:
      addiu      $2, $0, -0x4
  .L800BAB18:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800BAAF8

.globl func_800BAB24
.ent func_800BAB24
func_800BAB24:
      addiu      $29, $29, -0x18
      beqz       $4, .L800BAB40
       sw        $31, 0x10($29)
      jal        func_800BAA08
       nop
      j          .L800BAB44
       nop
  .L800BAB40:
      addiu      $2, $0, -0x4
  .L800BAB44:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800BAB24

.globl func_800BAB50
.ent func_800BAB50
func_800BAB50:
      beqz       $5, .L800BAB78
       addiu     $2, $0, 0x3
      lw         $3, 0x2C($5)
      bne        $3, $2, .L800BAB7C
       andi      $2, $21, 0x1
      jal        func_800BA790
       addu      $4, $20, $0
      addiu      $2, $0, 0x5
      j          .L800BABD8
       sw        $2, 0x0($22)
  .L800BAB78:
      andi       $2, $21, 0x1
  .L800BAB7C:
      beqz       $2, .L800BABB4
.end func_800BAB50

.globl func_800BAB80
.ent func_800BAB80
func_800BAB80:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $20, 0x20($29)
      addu       $20, $7, $0
      addu       $4, $0, $0
      addu       $5, $4, $0
      addiu      $6, $0, 0x2C
      sw         $31, 0x24($29)
  .L800BABB4:
      jal        func_800D27D0
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L800BABF8
       addiu     $4, $16, 0x14
      lw         $5, 0x3C($29)
      sw         $17, 0x0($16)
      sw         $18, 0x4($16)
      sw         $19, 0x8($16)
  .L800BABD8:
      sw         $20, 0xC($16)
      lw         $2, 0x38($29)
      sw         $2, 0x10($16)
      lw         $2, 0x40($29)
      sw         $2, 0x24($16)
      lw         $2, 0x44($29)
      jal        func_800CD210
       sw        $2, 0x28($16)
  .L800BABF8:
      addu       $2, $16, $0
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800BAB80

.globl func_800BAC1C
.ent func_800BAC1C
func_800BAC1C:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $31, 0x20($29)
      bnez       $17, .L800BAC60
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F602C)
      addiu      $4, $4, %lo(D_800F602C)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6098)
      addiu      $6, $6, %lo(D_800F6098)
      jal        func_80002E80
       addiu     $7, $0, 0x112
  .L800BAC60:
      lw         $2, 0x24($17)
      bnez       $2, .L800BAC98
       addiu     $16, $17, 0x14
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F60AC)
      addiu      $4, $4, %lo(D_800F60AC)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6098)
      addiu      $6, $6, %lo(D_800F6098)
      jal        func_80002E80
       addiu     $7, $0, 0x113
  .L800BAC98:
      jal        func_800CD2A4
       addu      $4, $16, $0
      bnel       $2, $0, .L800BACD8
       addu      $4, $16, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6108)
      addiu      $4, $4, %lo(D_800F6108)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6098)
      addiu      $6, $6, %lo(D_800F6098)
      jal        func_80002E80
       addiu     $7, $0, 0x114
      addu       $4, $16, $0
  .L800BACD8:
      addu       $5, $0, $0
      jal        func_800CD234
       addu      $6, $5, $0
      lw         $4, 0x24($17)
      jal        func_800D2814
       nop
      jal        func_800D2814
       addu      $4, $17, $0
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800BAC1C

.globl func_800BAD0C
.ent func_800BAD0C
func_800BAD0C:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      addu       $4, $0, $0
      addu       $5, $4, $0
      addiu      $6, $0, 0x24
      sw         $31, 0x18($29)
      jal        func_800D27D0
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      bnez       $16, .L800BAD44
       addiu     $4, $0, 0x2
      j          .L800BAD8C
       addu      $2, $0, $0
  .L800BAD44:
      addiu      $5, $0, 0x1
      addiu      $6, $0, 0x800
      lui        $2, %hi(D_800F6000)
      addiu      $2, $2, %lo(D_800F6000)
      sw         $2, 0x0($16)
      sw         $16, 0x4($16)
      jal        func_8004F65C
       sw        $17, 0x8($16)
      addiu      $4, $16, 0x14
      addu       $5, $0, $0
      jal        func_800CD1EC
       sw        $2, 0xC($16)
      lw         $2, 0xC($16)
      bnez       $2, .L800BAD8C
       addu      $2, $16, $0
      jal        func_800D2814
       addu      $4, $16, $0
      addu       $2, $0, $0
  .L800BAD8C:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800BAD0C

.globl func_800BADA0
.ent func_800BADA0
func_800BADA0:
      addiu      $29, $29, -0x38
      sw         $20, 0x28($29)
      addu       $20, $4, $0
      sw         $19, 0x24($29)
      addu       $19, $5, $0
      sw         $16, 0x18($29)
      addu       $16, $6, $0
      sw         $31, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $18, 0x20($29)
      bnez       $20, .L800BADFC
       sw        $17, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6168)
      addiu      $4, $4, %lo(D_800F6168)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F61BC)
      addiu      $6, $6, %lo(D_800F61BC)
      jal        func_80002E80
       addiu     $7, $0, 0x15E
  .L800BADFC:
      bnez       $19, .L800BAE30
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F61D0)
      addiu      $4, $4, %lo(D_800F61D0)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F61BC)
      addiu      $6, $6, %lo(D_800F61BC)
      jal        func_80002E80
       addiu     $7, $0, 0x15F
  .L800BAE30:
      bnez       $16, .L800BAE64
       addu      $17, $0, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6224)
      addiu      $4, $4, %lo(D_800F6224)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F61BC)
      addiu      $6, $6, %lo(D_800F61BC)
      jal        func_80002E80
       addiu     $7, $0, 0x160
  .L800BAE64:
      addiu      $21, $0, 0x1
      addu       $18, $16, $0
  .L800BAE6C:
      jal        func_800CD26C
       addu      $4, $19, $0
      sltu       $2, $17, $2
      beqz       $2, .L800BAED8
       addu      $4, $19, $0
      lw         $2, 0x0($18)
      bne        $2, $21, .L800BAEA4
       nop
      addu       $4, $17, $0
      lw         $2, 0x14($20)
      jalr       $2
       addu      $5, $0, $0
      sw         $0, 0x0($18)
      addu       $4, $19, $0
  .L800BAEA4:
      jal        func_800CD3B0
       addu      $5, $17, $0
      addu       $16, $2, $0
      beqz       $16, .L800BAECC
       addu      $4, $17, $0
      lw         $2, 0xC($20)
      jalr       $2
       addu      $5, $16, $0
      jal        func_800D2814
       addu      $4, $16, $0
  .L800BAECC:
      addiu      $18, $18, 0x4
      j          .L800BAE6C
       addiu     $17, $17, 0x1
  .L800BAED8:
      addu       $5, $0, $0
      addu       $6, $5, $0
      jal        func_800CD330
       addu      $7, $5, $0
      lw         $31, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800BADA0

.globl func_800BAF0C
.ent func_800BAF0C
func_800BAF0C:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L800BAF4C
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F602C)
      addiu      $4, $4, %lo(D_800F602C)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F627C)
      addiu      $6, $6, %lo(D_800F627C)
      jal        func_80002E80
       addiu     $7, $0, 0x183
  .L800BAF4C:
      lw         $2, 0xC($16)
      bnez       $2, .L800BAF84
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6294)
      addiu      $4, $4, %lo(D_800F6294)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F627C)
      addiu      $6, $6, %lo(D_800F627C)
      jal        func_80002E80
       addiu     $7, $0, 0x184
  .L800BAF84:
      lw         $4, 0xC($16)
      lw         $6, 0x24($16)
      jal        func_800BADA0
       addiu     $5, $16, 0x14
      lw         $2, 0xC($16)
      lw         $2, 0x18($2)
      jalr       $2
       nop
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800BAF0C

.globl func_800BAFB4
.ent func_800BAFB4
func_800BAFB4:
      addiu      $29, $29, -0x28
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $20, 0x4($4)
      addu       $17, $0, $0
      addiu      $19, $20, 0x14
      jal        func_800CD26C
       addu      $4, $19, $0
      addu       $18, $2, $0
      beqz       $18, .L800BB024
       addu      $4, $19, $0
  .L800BAFF0:
      jal        func_800CD394
       addu      $5, $17, $0
      addu       $16, $2, $0
      beql       $16, $0, .L800BB018
       addiu     $17, $17, 0x1
      jal        func_800BAF0C
       addu      $4, $16, $0
      jal        func_800BAC1C
       addu      $4, $16, $0
      addiu      $17, $17, 0x1
  .L800BB018:
      sltu       $2, $17, $18
      bnez       $2, .L800BAFF0
       addu      $4, $19, $0
  .L800BB024:
      addu       $5, $0, $0
      jal        func_800CD234
       addu      $6, $5, $0
      lw         $4, 0xC($20)
      beqz       $4, .L800BB044
       nop
      jal        func_8004F708
       nop
  .L800BB044:
      jal        func_800D2814
       addu      $4, $20, $0
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800BAFB4

.globl func_800BB06C
.ent func_800BB06C
func_800BB06C:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L800BB0AC
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F62EC)
      lui        $5, %hi(D_800F6078)
      lui        $6, %hi(D_800F6338)
      addiu      $4, $4, %lo(D_800F62EC)
      addiu      $5, $5, %lo(D_800F6078)
      addiu      $6, $6, %lo(D_800F6338)
      jal        func_80002E80
       addiu     $7, $0, 0x1C8
  .L800BB0AC:
      lw         $3, 0x10($16)
      addu       $2, $3, $0
      addiu      $3, $3, 0x1
      sw         $3, 0x10($16)
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800BB06C

.globl func_800BB0CC
.ent func_800BB0CC
func_800BB0CC:
      addiu      $29, $29, -0x30
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $19, 0x24($29)
      addu       $19, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $18, 0x20($29)
      addu       $18, $7, $0
      bnez       $16, .L800BB124
       sw        $31, 0x28($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F62EC)
      addiu      $4, $4, %lo(D_800F62EC)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F634C)
      addiu      $6, $6, %lo(D_800F634C)
      jal        func_80002E80
       addiu     $7, $0, 0x1E3
  .L800BB124:
      bnez       $17, .L800BB158
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6360)
      addiu      $4, $4, %lo(D_800F6360)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F634C)
      addiu      $6, $6, %lo(D_800F634C)
      jal        func_80002E80
       addiu     $7, $0, 0x1E4
  .L800BB158:
      lw         $6, 0x0($17)
      addiu      $2, $0, 0x1
      beq        $6, $2, .L800BB178
       addiu     $2, $0, 0x2
      beq        $6, $2, .L800BB1C0
       addu      $7, $19, $0
      j          .L800BB1C4
       nop
  .L800BB178:
      bnez       $18, .L800BB1AC
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F63AC)
      addiu      $4, $4, %lo(D_800F63AC)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F634C)
      addiu      $6, $6, %lo(D_800F634C)
      jal        func_80002E80
       addiu     $7, $0, 0x1EA
  .L800BB1AC:
      lw         $2, 0xC($16)
      addu       $7, $18, $0
      sw         $19, 0x4($7)
      j          .L800BB1C4
       sw        $2, 0x0($7)
  .L800BB1C0:
      lw         $7, 0xC($16)
  .L800BB1C4:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $7, $0
      jr         $31
       addiu     $29, $29, 0x30
.end func_800BB0CC

.globl func_800BB1E4
.ent func_800BB1E4
func_800BB1E4:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      bnez       $16, .L800BB224
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F62EC)
      addiu      $4, $4, %lo(D_800F62EC)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F63FC)
      addiu      $6, $6, %lo(D_800F63FC)
      jal        func_80002E80
       addiu     $7, $0, 0x212
  .L800BB224:
      lw         $2, 0x8($16)
      bnez       $2, .L800BB25C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6410)
      addiu      $4, $4, %lo(D_800F6410)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F63FC)
      addiu      $6, $6, %lo(D_800F63FC)
      jal        func_80002E80
       addiu     $7, $0, 0x213
  .L800BB25C:
      lw         $4, 0x8($16)
      lw         $2, 0x0($4)
      addu       $5, $0, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $6, $29, 0x18
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800BB284
       addu      $2, $0, $0
      lw         $2, 0x18($29)
  .L800BB284:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800BB1E4

.globl func_800BB294
.ent func_800BB294
func_800BB294:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      bnez       $16, .L800BB2D4
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F62EC)
      addiu      $4, $4, %lo(D_800F62EC)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6460)
      addiu      $6, $6, %lo(D_800F6460)
      jal        func_80002E80
       addiu     $7, $0, 0x232
  .L800BB2D4:
      lw         $2, 0x8($16)
      bnez       $2, .L800BB30C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6410)
      addiu      $4, $4, %lo(D_800F6410)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6460)
      addiu      $6, $6, %lo(D_800F6460)
      jal        func_80002E80
       addiu     $7, $0, 0x233
  .L800BB30C:
      lw         $4, 0x8($16)
      lw         $2, 0x0($4)
      addiu      $5, $29, 0x18
      lw         $2, 0x4($2)
      jalr       $2
       addu      $6, $0, $0
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800BB334
       addu      $2, $0, $0
      lw         $2, 0x18($29)
  .L800BB334:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800BB294

.globl func_800BB344
.ent func_800BB344
func_800BB344:
      addiu      $29, $29, -0x48
      sw         $22, 0x38($29)
      addu       $22, $4, $0
      sw         $30, 0x40($29)
      addu       $30, $7, $0
      sw         $21, 0x34($29)
      addu       $21, $0, $0
      sw         $23, 0x3C($29)
      addu       $23, $21, $0
      sw         $31, 0x44($29)
      sw         $20, 0x30($29)
      sw         $19, 0x2C($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      sw         $16, 0x20($29)
      sw         $5, 0x4C($29)
      bnez       $22, .L800BB3B8
       sw        $6, 0x50($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F62EC)
      addiu      $4, $4, %lo(D_800F62EC)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6470)
      addiu      $6, $6, %lo(D_800F6470)
      jal        func_80002E80
       addiu     $7, $0, 0x254
  .L800BB3B8:
      bnez       $30, .L800BB3EC
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F61D0)
      addiu      $4, $4, %lo(D_800F61D0)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6470)
      addiu      $6, $6, %lo(D_800F6470)
      jal        func_80002E80
       addiu     $7, $0, 0x255
  .L800BB3EC:
      lw         $8, 0x58($29)
      bnez       $8, .L800BB424
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6480)
      addiu      $4, $4, %lo(D_800F6480)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6470)
      addiu      $6, $6, %lo(D_800F6470)
      jal        func_80002E80
       addiu     $7, $0, 0x256
  .L800BB424:
      lw         $8, 0x5C($29)
      bnez       $8, .L800BB45C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F64D8)
      addiu      $4, $4, %lo(D_800F64D8)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6470)
      addiu      $6, $6, %lo(D_800F6470)
      jal        func_80002E80
       addiu     $7, $0, 0x257
  .L800BB45C:
      jal        func_800CD2A4
       addu      $4, $30, $0
      bnez       $2, .L800BB544
       nop
      jal        func_800CD26C
       addu      $4, $30, $0
      addu       $4, $0, $0
      addu       $5, $4, $0
      addu       $20, $2, $0
      jal        func_800D27D0
       sll       $6, $20, 2
      addu       $23, $2, $0
      bnez       $23, .L800BB49C
       sltu      $2, $21, $20
      j          .L800BB558
       addiu     $2, $0, -0x5
  .L800BB49C:
      beqz       $2, .L800BB544
       addu      $18, $0, $0
      addu       $19, $23, $0
  .L800BB4A8:
      addu       $4, $30, $0
      jal        func_800CD394
       addu      $5, $18, $0
      addu       $6, $2, $0
      beql       $6, $0, .L800BB538
       addiu     $18, $18, 0x1
      lw         $2, 0xC($6)
      andi       $2, $2, 0x8000
      beqz       $2, .L800BB4D8
       addiu     $8, $0, -0x3
      j          .L800BB534
       sw        $8, 0x0($19)
  .L800BB4D8:
      addu       $4, $22, $0
      lw         $5, 0x50($29)
      jal        func_800BB0CC
       addiu     $7, $29, 0x18
      addu       $4, $22, $0
      jal        func_800BB294
       addu      $17, $2, $0
      addu       $4, $22, $0
      jal        func_800BB1E4
       addu      $16, $2, $0
      addu       $4, $18, $0
      addu       $5, $17, $0
      lw         $8, 0x4C($29)
      addu       $6, $16, $0
      lw         $3, 0x10($8)
      jalr       $3
       addu      $7, $2, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addiu      $8, $0, 0x1
      bne        $2, $8, .L800BB534
       sw        $2, 0x0($19)
      addu       $21, $21, $8
  .L800BB534:
      addiu      $18, $18, 0x1
  .L800BB538:
      sltu       $2, $18, $20
      bnez       $2, .L800BB4A8
       addiu     $19, $19, 0x4
  .L800BB544:
      lw         $8, 0x58($29)
      sw         $23, 0x0($8)
      lw         $8, 0x5C($29)
      addiu      $2, $0, 0x1
      sw         $21, 0x0($8)
  .L800BB558:
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
.end func_800BB344

.globl func_800BB588
.ent func_800BB588
func_800BB588:
      addiu      $29, $29, -0x50
      sw         $22, 0x40($29)
      addu       $22, $4, $0
      sw         $23, 0x44($29)
      addu       $23, $5, $0
      sw         $31, 0x4C($29)
      sw         $30, 0x48($29)
      sw         $21, 0x3C($29)
      sw         $20, 0x38($29)
      sw         $19, 0x34($29)
      sw         $18, 0x30($29)
      sw         $17, 0x2C($29)
      sw         $16, 0x28($29)
      sw         $6, 0x58($29)
      sw         $7, 0x5C($29)
      sw         $0, 0x18($29)
      beqz       $22, .L800BB5F0
       sw        $0, 0x1C($29)
      beqz       $23, .L800BB5E8
       nop
      bnez       $6, .L800BB5E8
       nop
      beqz       $7, .L800BB63C
       nop
  .L800BB5E8:
      bnez       $22, .L800BB610
       nop
  .L800BB5F0:
      bnez       $23, .L800BB610
       nop
      lw         $3, 0x58($29)
      beqz       $3, .L800BB610
       nop
      lw         $8, 0x5C($29)
      bnez       $8, .L800BB63C
       nop
  .L800BB610:
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6530)
      addiu      $4, $4, %lo(D_800F6530)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6620)
      addiu      $6, $6, %lo(D_800F6620)
      jal        func_80002E80
       addiu     $7, $0, 0x299
  .L800BB63C:
      beqz       $23, .L800BB65C
       nop
      lw         $2, 0x0($23)
      bnez       $2, .L800BB65C
       nop
      lw         $2, 0x8($23)
      beqz       $2, .L800BB8F8
       addiu     $2, $0, 0x1
  .L800BB65C:
      lw         $3, 0x5C($29)
      beqz       $3, .L800BB680
       nop
      lw         $2, 0x0($3)
      bnez       $2, .L800BB680
       nop
      lw         $2, 0x10($3)
      beqz       $2, .L800BB8F8
       addiu     $2, $0, 0x1
  .L800BB680:
      beqz       $22, .L800BB694
       nop
      lw         $30, 0x0($22)
      j          .L800BB69C
       nop
  .L800BB694:
      lw         $8, 0x58($29)
      lw         $30, 0x0($8)
  .L800BB69C:
      beqz       $23, .L800BB6B0
       nop
      lw         $3, 0x0($23)
      j          .L800BB6BC
       sw        $3, 0x20($29)
  .L800BB6B0:
      lw         $8, 0x5C($29)
      lw         $8, 0x0($8)
      sw         $8, 0x20($29)
  .L800BB6BC:
      lw         $3, 0x20($29)
      blez       $3, .L800BB7B0
       addu      $20, $0, $0
      lw         $8, 0x60($29)
      andi       $8, $8, 0x8
      sw         $8, 0x24($29)
      addu       $21, $20, $0
  .L800BB6D8:
      beqz       $23, .L800BB6EC
       nop
      lw         $2, 0x4($23)
      j          .L800BB6F8
       addu      $19, $2, $21
  .L800BB6EC:
      lw         $3, 0x5C($29)
      lw         $2, 0x4($3)
      addu       $19, $2, $21
  .L800BB6F8:
      blez       $30, .L800BB79C
       addu      $17, $0, $0
      addu       $18, $17, $0
  .L800BB704:
      beqz       $22, .L800BB718
       nop
      lw         $2, 0x4($22)
      j          .L800BB724
       addu      $16, $2, $18
  .L800BB718:
      lw         $8, 0x58($29)
      lw         $2, 0x4($8)
      addu       $16, $2, $18
  .L800BB724:
      lw         $4, 0x0($16)
      lw         $5, 0x0($19)
      jal        func_8005211C
       nop
      bnel       $2, $0, .L800BB790
       addiu     $17, $17, 0x1
      lw         $3, 0x24($29)
      bnez       $3, .L800BB768
       nop
      lw         $4, 0x4($16)
      lw         $5, 0x4($19)
      jal        func_8005211C
       nop
      bnel       $2, $0, .L800BB790
       addiu     $17, $17, 0x1
      j          .L800BB780
       nop
  .L800BB768:
      lw         $4, 0x4($16)
      lw         $5, 0x4($19)
      jal        func_800CC4AC
       nop
      beql       $2, $0, .L800BB790
       addiu     $17, $17, 0x1
  .L800BB780:
      lw         $8, 0x18($29)
      addiu      $8, $8, 0x1
      j          .L800BB79C
       sw        $8, 0x18($29)
  .L800BB790:
      slt        $2, $17, $30
      bnez       $2, .L800BB704
       addiu     $18, $18, 0x8
  .L800BB79C:
      lw         $3, 0x20($29)
      addiu      $20, $20, 0x1
      slt        $2, $20, $3
      bnez       $2, .L800BB6D8
       addiu     $21, $21, 0x8
  .L800BB7B0:
      beqz       $22, .L800BB7C4
       nop
      lw         $21, 0x8($22)
      j          .L800BB7CC
       nop
  .L800BB7C4:
      lw         $8, 0x58($29)
      lw         $21, 0x10($8)
  .L800BB7CC:
      beqz       $23, .L800BB7E0
       addu      $20, $0, $0
      lw         $30, 0x8($23)
      j          .L800BB7E8
       nop
  .L800BB7E0:
      lw         $3, 0x5C($29)
      lw         $30, 0x10($3)
  .L800BB7E8:
      blez       $30, .L800BB87C
       nop
      addu       $18, $20, $0
  .L800BB7F4:
      beqz       $23, .L800BB818
       nop
      lw         $2, 0xC($23)
      j          .L800BB824
       addu      $19, $2, $18
  .L800BB808:
      lw         $8, 0x1C($29)
      addiu      $8, $8, 0x1
      j          .L800BB86C
       sw        $8, 0x1C($29)
  .L800BB818:
      lw         $3, 0x5C($29)
      lw         $2, 0x14($3)
      addu       $19, $2, $18
  .L800BB824:
      blez       $21, .L800BB86C
       addu      $17, $0, $0
      addu       $16, $17, $0
  .L800BB830:
      beqz       $22, .L800BB844
       nop
      lw         $2, 0xC($22)
      j          .L800BB850
       addu      $4, $2, $16
  .L800BB844:
      lw         $8, 0x58($29)
      lw         $2, 0x14($8)
      addu       $4, $2, $16
  .L800BB850:
      jal        func_8005211C
       addu      $5, $19, $0
      beqz       $2, .L800BB808
       addiu     $17, $17, 0x1
      slt        $2, $17, $21
      bnez       $2, .L800BB830
       addiu     $16, $16, 0x11
  .L800BB86C:
      addiu      $20, $20, 0x1
      slt        $2, $20, $30
      bnez       $2, .L800BB7F4
       addiu     $18, $18, 0x11
  .L800BB87C:
      lw         $3, 0x60($29)
      andi       $2, $3, 0x2
      beqz       $2, .L800BB898
       andi      $2, $3, 0x4
      lw         $8, 0x18($29)
      j          .L800BB8F8
       slt       $2, $0, $8
  .L800BB898:
      beqz       $2, .L800BB8AC
       nop
      lw         $8, 0x1C($29)
      j          .L800BB8F8
       slt       $2, $0, $8
  .L800BB8AC:
      lw         $3, 0x60($29)
      andi       $2, $3, 0x1
      beqz       $2, .L800BB8DC
       nop
      lw         $8, 0x18($29)
      bgtz       $8, .L800BB8D4
       addu      $2, $0, $0
      lw         $3, 0x1C($29)
      blez       $3, .L800BB8F8
       nop
  .L800BB8D4:
      j          .L800BB8F8
       addiu     $2, $0, 0x1
  .L800BB8DC:
      lw         $8, 0x18($29)
      lw         $3, 0x20($29)
      bne        $8, $3, .L800BB8F8
       addu      $2, $0, $0
      lw         $8, 0x1C($29)
      xor        $2, $8, $30
      sltiu      $2, $2, 0x1
  .L800BB8F8:
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
.end func_800BB588

.globl func_800BB928
.ent func_800BB928
func_800BB928:
      addiu      $29, $29, -0x20
      sw         $6, 0x10($29)
      addu       $6, $0, $0
      sw         $31, 0x18($29)
      jal        func_800BB588
       addu      $7, $6, $0
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800BB928

.globl func_800BB94C
.ent func_800BB94C
func_800BB94C:
      addiu      $29, $29, -0x20
      addu       $2, $4, $0
      addu       $7, $5, $0
      addu       $4, $0, $0
      addu       $5, $4, $0
      sw         $6, 0x10($29)
      sw         $31, 0x18($29)
      jal        func_800BB588
       addu      $6, $2, $0
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800BB94C

.globl func_800BB97C
.ent func_800BB97C
func_800BB97C:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $3, 0x0($18)
      bltz       $3, .L800BB9B4
       addu      $17, $5, $0
      lw         $2, 0x0($17)
      bltz       $2, .L800BB9B4
       nop
      bne        $3, $2, .L800BBA38
       addu      $2, $0, $0
  .L800BB9B4:
      lw         $4, 0x4($18)
      beqz       $4, .L800BB9DC
       nop
      lw         $5, 0x4($17)
      beqz       $5, .L800BB9DC
       nop
      jal        func_800175C0
       nop
      bnez       $2, .L800BBA38
       addu      $2, $0, $0
  .L800BB9DC:
      lw         $4, 0x8($18)
      beqz       $4, .L800BBA38
       addiu     $2, $0, 0x1
      lw         $2, 0x8($17)
      beqz       $2, .L800BBA38
       addiu     $2, $0, 0x1
      jal        func_80017780
       nop
      lw         $4, 0x8($17)
      jal        func_80017780
       addu      $16, $2, $0
      addu       $6, $2, $0
      sltu       $2, $16, $6
      bnel       $2, $0, .L800BBA18
       addu      $6, $16, $0
  .L800BBA18:
      lw         $4, 0x8($18)
      lw         $5, 0x8($17)
      jal        func_800177C0
       nop
      addu       $3, $2, $0
      bnez       $3, .L800BBA38
       addu      $2, $0, $0
      addiu      $2, $0, 0x1
  .L800BBA38:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800BB97C

.globl func_800BBA50
.ent func_800BBA50
func_800BBA50:
      addiu      $29, $29, -0x38
      sw         $21, 0x2C($29)
      addu       $21, $4, $0
      sw         $22, 0x30($29)
      addu       $22, $5, $0
      sw         $31, 0x34($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      bnez       $21, .L800BBAAC
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6634)
      addiu      $4, $4, %lo(D_800F6634)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6680)
      addiu      $6, $6, %lo(D_800F6680)
      jal        func_80002E80
       addiu     $7, $0, 0x334
  .L800BBAAC:
      bnez       $22, .L800BBAE0
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6698)
      addiu      $4, $4, %lo(D_800F6698)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6680)
      addiu      $6, $6, %lo(D_800F6680)
      jal        func_80002E80
       addiu     $7, $0, 0x335
  .L800BBAE0:
      lw         $3, 0x0($21)
      beqz       $3, .L800BBB00
       nop
      lw         $2, 0x0($22)
      beqz       $2, .L800BBB00
       nop
      bne        $3, $2, .L800BBB88
       addu      $2, $0, $0
  .L800BBB00:
      lw         $2, 0x4($22)
      blezl      $2, .L800BBB88
       addiu     $2, $0, 0x1
      blez       $2, .L800BBB80
       addu      $18, $0, $0
      addu       $20, $18, $0
  .L800BBB18:
      addu       $17, $0, $0
      lw         $2, 0x8($22)
      lw         $3, 0x4($21)
      blez       $3, .L800BBB5C
       addu      $19, $2, $20
      addu       $16, $17, $0
  .L800BBB30:
      lw         $4, 0x8($21)
      addu       $5, $19, $0
      jal        func_800BB97C
       addu      $4, $4, $16
      bnez       $2, .L800BBB5C
       nop
      lw         $2, 0x4($21)
      addiu      $17, $17, 0x1
      slt        $2, $17, $2
      bnez       $2, .L800BBB30
       addiu     $16, $16, 0xC
  .L800BBB5C:
      lw         $2, 0x4($21)
      beq        $17, $2, .L800BBB7C
       nop
      lw         $2, 0x4($22)
      addiu      $18, $18, 0x1
      slt        $2, $18, $2
      bnez       $2, .L800BBB18
       addiu     $20, $20, 0xC
  .L800BBB7C:
      lw         $2, 0x4($22)
  .L800BBB80:
      xor        $2, $18, $2
      sltiu      $2, $2, 0x1
  .L800BBB88:
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
.end func_800BBA50

.globl func_800BBBB0
.ent func_800BBBB0
func_800BBBB0:
      jr         $31
       addu      $2, $0, $0
.end func_800BBBB0

.globl func_800BBBB8
.ent func_800BBBB8
func_800BBBB8:
      addiu      $29, $29, -0x18
      addu       $3, $5, $0
      addu       $5, $6, $0
      addu       $6, $7, $0
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      beqz       $4, .L800BBC90
       sw        $31, 0x14($29)
      lw         $2, 0x8($4)
      beqz       $2, .L800BBC94
       addu      $2, $16, $0
      beqz       $5, .L800BBC94
       nop
      lw         $2, 0x4($4)
      bne        $3, $2, .L800BBC94
       addu      $2, $16, $0
      addiu      $3, $3, -0x1
      sltiu      $2, $3, 0x8
      beqz       $2, .L800BBC90
       lui       $2, %hi(jtbl_800F66E8)
      addiu      $2, $2, %lo(jtbl_800F66E8)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800BBC20
.L800BBC20:
      lw         $4, 0x8($4)
      jal        func_8005211C
       nop
      beql       $2, $0, .L800BBC90
       addiu     $16, $0, 0x1
      j          .L800BBC94
       addu      $2, $16, $0
  .globl .L800BBC3C
.L800BBC3C:
      lw         $4, 0x8($4)
      jal        func_800BB928
       nop
      j          .L800BBC90
       addu      $16, $2, $0
  .globl .L800BBC50
.L800BBC50:
      lw         $4, 0x8($4)
      jal        func_800BB94C
       nop
      j          .L800BBC90
       addu      $16, $2, $0
  .globl .L800BBC64
.L800BBC64:
      lw         $4, 0x8($4)
      jal        func_800BBA50
       nop
      j          .L800BBC90
       addu      $16, $2, $0
  .globl .L800BBC78
.L800BBC78:
      lw         $4, 0x8($4)
      jal        func_800BBBB0
       nop
      j          .L800BBC90
       addu      $16, $2, $0
  .globl .L800BBC8C
.L800BBC8C:
      addiu      $16, $0, -0x2
  .L800BBC90:
      addu       $2, $16, $0
  .L800BBC94:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800BBBB8

.globl func_800BBCA4
.ent func_800BBCA4
func_800BBCA4:
      addiu      $29, $29, -0x40
      sw         $19, 0x24($29)
      lw         $19, 0x50($29)
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $21, 0x2C($29)
      addu       $21, $5, $0
      sw         $22, 0x30($29)
      addu       $22, $6, $0
      sw         $23, 0x34($29)
      addu       $23, $7, $0
      sw         $31, 0x38($29)
      sw         $20, 0x28($29)
      sw         $18, 0x20($29)
      bnez       $16, .L800BBD10
       sw        $17, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F602C)
      addiu      $4, $4, %lo(D_800F602C)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6708)
      addiu      $6, $6, %lo(D_800F6708)
      jal        func_80002E80
       addiu     $7, $0, 0x3BA
  .L800BBD10:
      addiu      $18, $16, 0x14
      addu       $16, $0, $0
      addiu      $20, $0, 0x1
  .L800BBD1C:
      jal        func_800CD26C
       addu      $4, $18, $0
      sltu       $2, $16, $2
      beqz       $2, .L800BBD68
       addu      $4, $18, $0
      jal        func_800CD394
       addu      $5, $16, $0
      addu       $17, $2, $0
      addu       $4, $17, $0
      addu       $5, $21, $0
      addu       $6, $22, $0
      jal        func_800BBBB8
       addu      $7, $23, $0
      bne        $2, $20, .L800BBD1C
       addiu     $16, $16, 0x1
      bnel       $19, $0, .L800BBD60
       sw        $17, 0x0($19)
  .L800BBD60:
      j          .L800BBD6C
       addiu     $2, $0, 0x1
  .L800BBD68:
      addu       $2, $0, $0
  .L800BBD6C:
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
.end func_800BBCA4

.globl func_800BBD98
.ent func_800BBD98
func_800BBD98:
      addiu      $29, $29, -0x40
      sw         $30, 0x38($29)
      lw         $30, 0x50($29)
      sw         $19, 0x24($29)
      lw         $19, 0x54($29)
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $21, 0x2C($29)
      addu       $21, $5, $0
      sw         $22, 0x30($29)
      addu       $22, $6, $0
      sw         $23, 0x34($29)
      addu       $23, $7, $0
      sw         $31, 0x3C($29)
      sw         $20, 0x28($29)
      sw         $18, 0x20($29)
      bnez       $16, .L800BBE0C
       sw        $17, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F62EC)
      addiu      $4, $4, %lo(D_800F62EC)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6724)
      addiu      $6, $6, %lo(D_800F6724)
      jal        func_80002E80
       addiu     $7, $0, 0x3E1
  .L800BBE0C:
      addiu      $18, $16, 0x14
      addu       $16, $0, $0
      addiu      $20, $0, 0x1
  .L800BBE18:
      jal        func_800CD26C
       addu      $4, $18, $0
      sltu       $2, $16, $2
      beqz       $2, .L800BBE70
       addu      $4, $18, $0
      jal        func_800CD394
       addu      $5, $16, $0
      sw         $30, 0x10($29)
      addu       $17, $2, $0
      addu       $4, $17, $0
      addu       $5, $21, $0
      addu       $6, $22, $0
      jal        func_800BBCA4
       addu      $7, $23, $0
      bne        $2, $20, .L800BBE18
       addiu     $16, $16, 0x1
      beql       $19, $0, .L800BBE74
       addiu     $2, $0, 0x1
      lw         $2, 0x10($17)
      sw         $2, 0x0($19)
      j          .L800BBE74
       addiu     $2, $0, 0x1
  .L800BBE70:
      addu       $2, $0, $0
  .L800BBE74:
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
.end func_800BBD98

.globl func_800BBEA4
.ent func_800BBEA4
func_800BBEA4:
      addiu      $29, $29, -0x40
      sw         $23, 0x34($29)
      addu       $23, $5, $0
      sw         $19, 0x24($29)
      addu       $19, $6, $0
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $31, 0x38($29)
      sw         $22, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $18, 0x20($29)
      sw         $16, 0x18($29)
      beqz       $17, .L800BBF68
       addiu     $2, $0, -0x4
      lw         $2, 0x10($17)
      blez       $2, .L800BBF64
       addu      $16, $0, $0
      lui        $22, %hi(D_800F6738)
      lui        $21, %hi(D_800F6078)
      lui        $20, %hi(D_800F678C)
      addu       $18, $16, $0
  .L800BBEFC:
      lw         $2, 0x14($17)
      bnez       $2, .L800BBF30
       addu      $3, $2, $18
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      addiu      $4, $22, %lo(D_800F6738)
      addiu      $5, $21, %lo(D_800F6078)
      addiu      $6, $20, %lo(D_800F678C)
      jal        func_80002E80
       addiu     $7, $0, 0x411
      lw         $2, 0x14($17)
      addu       $3, $2, $18
  .L800BBF30:
      lw         $2, 0x0($3)
      bne        $2, $23, .L800BBF54
       addiu     $16, $16, 0x1
      beql       $19, $0, .L800BBF68
       addiu     $2, $0, 0x1
      lw         $2, 0x4($3)
      sw         $2, 0x0($19)
      j          .L800BBF68
       addiu     $2, $0, 0x1
  .L800BBF54:
      lw         $2, 0x10($17)
      slt        $2, $16, $2
      bnez       $2, .L800BBEFC
       addiu     $18, $18, 0xC
  .L800BBF64:
      addu       $2, $0, $0
  .L800BBF68:
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
.end func_800BBEA4

.globl func_800BBF94
.ent func_800BBF94
func_800BBF94:
      beqz       $4, .L800BBFB4
       addiu     $2, $0, -0x4
      beqz       $5, .L800BBFAC
       nop
      lw         $2, 0xC($4)
      sw         $2, 0x0($5)
  .L800BBFAC:
      jr         $31
       addiu     $2, $0, 0x1
  .L800BBFB4:
      jr         $31
       nop
.end func_800BBF94

.globl func_800BBFBC
.ent func_800BBFBC
func_800BBFBC:
      addiu      $29, $29, -0x28
      addiu      $2, $29, 0x18
      sw         $31, 0x24($29)
      sw         $16, 0x20($29)
      sw         $2, 0x10($29)
      jal        func_800BBD98
       sw        $0, 0x14($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800BC034
       addu      $2, $16, $0
      lw         $4, 0x18($29)
      lw         $6, 0x38($29)
      jal        func_800BBEA4
       addiu     $5, $0, 0x2000
      bne        $2, $16, .L800BC034
       addu      $2, $16, $0
      lw         $4, 0x18($29)
      lw         $6, 0x3C($29)
      jal        func_800BBEA4
       addiu     $5, $0, 0x2002
      lw         $4, 0x18($29)
      lw         $6, 0x40($29)
      jal        func_800BBEA4
       addiu     $5, $0, 0x2003
      lw         $4, 0x18($29)
      lw         $5, 0x44($29)
      jal        func_800BBF94
       nop
      addu       $2, $16, $0
  .L800BC034:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800BBFBC

.globl func_800BC044
.ent func_800BC044
func_800BC044:
      addiu      $29, $29, -0x38
      sw         $20, 0x30($29)
      addu       $20, $4, $0
      sw         $18, 0x28($29)
      addu       $18, $5, $0
      sw         $31, 0x34($29)
      sw         $19, 0x2C($29)
      sw         $17, 0x24($29)
      beqz       $18, .L800BC128
       sw        $16, 0x20($29)
      beqz       $20, .L800BC128
       addu      $4, $18, $0
      addiu      $5, $0, 0x200D
      jal        func_800BBEA4
       addiu     $6, $29, 0x18
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800BC12C
       addu      $19, $16, $0
      lw         $2, 0x18($29)
      bnez       $2, .L800BC0CC
       addu      $4, $0, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F679C)
      addiu      $4, $4, %lo(D_800F679C)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F67EC)
      addiu      $6, $6, %lo(D_800F67EC)
      jal        func_80002E80
       addiu     $7, $0, 0x47C
      addu       $4, $0, $0
  .L800BC0CC:
      addu       $5, $4, $0
      jal        func_800D27D0
       addiu     $6, $0, 0xC
      addu       $17, $2, $0
      beqz       $17, .L800BC120
       addu      $4, $20, $0
      lw         $2, 0x18($29)
      addiu      $3, $0, 0x200D
      sw         $3, 0x0($17)
      sw         $2, 0x4($17)
      lw         $2, 0x8($18)
      addu       $5, $17, $0
      jal        func_800CD370
       sw        $2, 0x8($17)
      addu       $16, $2, $0
      beq        $16, $19, .L800BC12C
       nop
      jal        func_800D2814
       addu      $4, $17, $0
      j          .L800BC12C
       nop
  .L800BC120:
      j          .L800BC12C
       addiu     $16, $0, -0x5
  .L800BC128:
      addiu      $16, $0, -0x4
  .L800BC12C:
      beql       $16, $0, .L800BC134
       addiu     $16, $0, 0x1
  .L800BC134:
      addu       $2, $16, $0
      lw         $31, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800BC044

.globl func_800BC158
.ent func_800BC158
func_800BC158:
      addiu      $29, $29, -0x40
      sw         $30, 0x38($29)
      lw         $30, 0x54($29)
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $21, 0x2C($29)
      addiu      $21, $0, 0x1
      sw         $31, 0x3C($29)
      sw         $23, 0x34($29)
      sw         $22, 0x30($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $5, 0x44($29)
      sw         $6, 0x48($29)
      bnez       $16, .L800BC1CC
       sw        $7, 0x4C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F62EC)
      addiu      $4, $4, %lo(D_800F62EC)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F67FC)
      addiu      $6, $6, %lo(D_800F67FC)
      jal        func_80002E80
       addiu     $7, $0, 0x4A5
  .L800BC1CC:
      addiu      $22, $16, 0x14
      addu       $20, $0, $0
      addiu      $23, $0, 0x1
  .L800BC1D8:
      jal        func_800CD26C
       addu      $4, $22, $0
      sltu       $2, $20, $2
      beqz       $2, .L800BC294
       addu      $4, $22, $0
      jal        func_800CD394
       addu      $5, $20, $0
      addu       $16, $2, $0
      bnez       $16, .L800BC22C
       addiu     $19, $16, 0x14
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $3, %hi(D_800F602C)
      addiu      $4, $3, %lo(D_800F602C)
      lui        $3, %hi(D_800F6078)
      addiu      $5, $3, %lo(D_800F6078)
      lui        $3, %hi(D_800F67FC)
      addiu      $6, $3, %lo(D_800F67FC)
      jal        func_80002E80
       addiu     $7, $0, 0x4AA
  .L800BC22C:
      addu       $18, $0, $0
  .L800BC230:
      jal        func_800CD26C
       addu      $4, $19, $0
      sltu       $2, $18, $2
      beqz       $2, .L800BC28C
       addu      $4, $19, $0
      jal        func_800CD394
       addu      $5, $18, $0
      addu       $17, $2, $0
      lw         $5, 0x44($29)
      lw         $6, 0x48($29)
      lw         $7, 0x4C($29)
      jal        func_800BBBB8
       addu      $4, $17, $0
      addu       $16, $2, $0
      bnel       $16, $23, .L800BC230
       addiu     $18, $18, 0x1
      addu       $4, $30, $0
      lw         $3, 0x50($29)
      jalr       $3
       addu      $5, $17, $0
      addu       $21, $2, $0
      beq        $21, $16, .L800BC230
       addiu     $18, $18, 0x1
  .L800BC28C:
      j          .L800BC1D8
       addiu     $20, $20, 0x1
  .L800BC294:
      addu       $2, $21, $0
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
.end func_800BC158

.globl func_800BC2C8
.ent func_800BC2C8
func_800BC2C8:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $5, $0
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $31, 0x2C($29)
      bnez       $17, .L800BC314
       sw        $18, 0x28($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6818)
      addiu      $4, $4, %lo(D_800F6818)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6864)
      addiu      $6, $6, %lo(D_800F6864)
      jal        func_80002E80
       addiu     $7, $0, 0x4CF
  .L800BC314:
      lw         $2, 0x0($17)
      bnez       $2, .L800BC34C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6874)
      addiu      $4, $4, %lo(D_800F6874)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6864)
      addiu      $6, $6, %lo(D_800F6864)
      jal        func_80002E80
       addiu     $7, $0, 0x4D0
  .L800BC34C:
      lw         $2, 0x4($17)
      bnez       $2, .L800BC384
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F68C8)
      addiu      $4, $4, %lo(D_800F68C8)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6864)
      addiu      $6, $6, %lo(D_800F6864)
      jal        func_80002E80
       addiu     $7, $0, 0x4D1
  .L800BC384:
      bnez       $16, .L800BC3BC
       addu      $4, $16, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6360)
      addiu      $4, $4, %lo(D_800F6360)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6864)
      addiu      $6, $6, %lo(D_800F6864)
      jal        func_80002E80
       addiu     $7, $0, 0x4D2
      addu       $4, $16, $0
  .L800BC3BC:
      addiu      $5, $0, 0x200C
      jal        func_800BBEA4
       addiu     $6, $29, 0x18
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800BC448
       addu      $18, $16, $0
      lw         $2, 0x18($29)
      lw         $4, 0x0($17)
      lw         $2, 0x8($2)
      jalr       $2
       nop
      addu       $3, $2, $0
      beqz       $3, .L800BC448
       nop
      lw         $2, 0x4($17)
      lw         $5, 0x0($2)
      bnez       $5, .L800BC410
       nop
      j          .L800BC448
       sw        $3, 0x4($2)
  .L800BC410:
      lw         $6, 0x4($2)
      sltu       $2, $6, $3
      bnez       $2, .L800BC448
       addiu     $16, $0, -0x9
      lw         $2, 0x18($29)
      lw         $4, 0x0($17)
      lw         $2, 0xC($2)
      jalr       $2
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      beql       $16, $18, .L800BC448
       sw        $16, 0xC($17)
  .L800BC448:
      beql       $16, $0, .L800BC450
       addiu     $16, $0, 0x1
  .L800BC450:
      lw         $2, 0xC($17)
      bnez       $2, .L800BC460
       addu      $3, $0, $0
      addu       $3, $16, $0
  .L800BC460:
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x30
.end func_800BC2C8

.globl func_800BC47C
.ent func_800BC47C
func_800BC47C:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $16, 0x20($29)
      addu       $16, $5, $0
      bnez       $17, .L800BC4C4
       sw        $31, 0x28($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6818)
      addiu      $4, $4, %lo(D_800F6818)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F691C)
      addiu      $6, $6, %lo(D_800F691C)
      jal        func_80002E80
       addiu     $7, $0, 0x4FB
  .L800BC4C4:
      lw         $2, 0x0($17)
      bnez       $2, .L800BC4FC
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6874)
      addiu      $4, $4, %lo(D_800F6874)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F691C)
      addiu      $6, $6, %lo(D_800F691C)
      jal        func_80002E80
       addiu     $7, $0, 0x4FC
  .L800BC4FC:
      lw         $2, 0x4($17)
      bnez       $2, .L800BC534
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F68C8)
      addiu      $4, $4, %lo(D_800F68C8)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F691C)
      addiu      $6, $6, %lo(D_800F691C)
      jal        func_80002E80
       addiu     $7, $0, 0x4FD
  .L800BC534:
      bnez       $16, .L800BC56C
       addu      $4, $16, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6360)
      addiu      $4, $4, %lo(D_800F6360)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F691C)
      addiu      $6, $6, %lo(D_800F691C)
      jal        func_80002E80
       addiu     $7, $0, 0x4FE
      addu       $4, $16, $0
  .L800BC56C:
      addiu      $5, $0, 0x200C
      jal        func_800BBEA4
       addiu     $6, $29, 0x18
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800BC5B4
       addu      $16, $3, $0
      lw         $4, 0x0($17)
      lw         $2, 0x18($29)
      lw         $5, 0x4($17)
      lw         $2, 0x0($2)
      jalr       $2
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $3, $2, $0
      beql       $3, $16, .L800BC5B4
       sw        $3, 0x8($17)
  .L800BC5B4:
      beql       $3, $0, .L800BC5BC
       addiu     $3, $0, 0x1
  .L800BC5BC:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x30
.end func_800BC47C

.globl func_800BC5D4
.ent func_800BC5D4
func_800BC5D4:
      addiu      $29, $29, -0x40
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $21, 0x2C($29)
      addu       $21, $5, $0
      sw         $23, 0x34($29)
      addu       $23, $6, $0
      sw         $30, 0x38($29)
      addu       $30, $7, $0
      sw         $19, 0x24($29)
      addiu      $19, $0, 0x1
      sw         $31, 0x3C($29)
      sw         $22, 0x30($29)
      sw         $20, 0x28($29)
      sw         $18, 0x20($29)
      bnez       $16, .L800BC644
       sw        $17, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F62EC)
      addiu      $4, $4, %lo(D_800F62EC)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F692C)
      addiu      $6, $6, %lo(D_800F692C)
      jal        func_80002E80
       addiu     $7, $0, 0x51F
  .L800BC644:
      addiu      $20, $16, 0x14
      addu       $18, $0, $0
      addiu      $22, $0, 0x1
  .L800BC650:
      jal        func_800CD26C
       addu      $4, $20, $0
      sltu       $2, $18, $2
      beqz       $2, .L800BC6F4
       addu      $4, $20, $0
      jal        func_800CD394
       addu      $5, $18, $0
      addu       $16, $2, $0
      bnez       $16, .L800BC6A4
       addiu     $17, $16, 0x14
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $3, %hi(D_800F602C)
      addiu      $4, $3, %lo(D_800F602C)
      lui        $3, %hi(D_800F6078)
      addiu      $5, $3, %lo(D_800F6078)
      lui        $3, %hi(D_800F692C)
      addiu      $6, $3, %lo(D_800F692C)
      jal        func_80002E80
       addiu     $7, $0, 0x524
  .L800BC6A4:
      addu       $16, $0, $0
  .L800BC6A8:
      jal        func_800CD26C
       addu      $4, $17, $0
      sltu       $2, $16, $2
      beqz       $2, .L800BC6EC
       addu      $4, $17, $0
      jal        func_800CD394
       addu      $5, $16, $0
      beqz       $21, .L800BC6D8
       addu      $5, $2, $0
      lw         $2, 0x0($5)
      bnel       $2, $21, .L800BC6A8
       addiu     $16, $16, 0x1
  .L800BC6D8:
      jalr       $23
       addu      $4, $30, $0
      addu       $19, $2, $0
      beq        $19, $22, .L800BC6A8
       addiu     $16, $16, 0x1
  .L800BC6EC:
      j          .L800BC650
       addiu     $18, $18, 0x1
  .L800BC6F4:
      addu       $2, $19, $0
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
.end func_800BC5D4

.globl func_800BC728
.ent func_800BC728
func_800BC728:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      bnez       $17, .L800BC770
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F62EC)
      addiu      $4, $4, %lo(D_800F62EC)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6944)
      addiu      $6, $6, %lo(D_800F6944)
      jal        func_80002E80
       addiu     $7, $0, 0x547
  .L800BC770:
      bnez       $16, .L800BC7A8
       addu      $4, $17, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6360)
      addiu      $4, $4, %lo(D_800F6360)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6944)
      addiu      $6, $6, %lo(D_800F6944)
      jal        func_80002E80
       addiu     $7, $0, 0x548
      addu       $4, $17, $0
  .L800BC7A8:
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      lw         $5, 0x4($16)
      lw         $6, 0x8($16)
      jal        func_800BBD98
       addu      $7, $0, $0
      addu       $4, $2, $0
      addiu      $3, $0, 0x1
      beq        $4, $3, .L800BC7D4
       addiu     $2, $0, -0x6
      addu       $2, $3, $0
  .L800BC7D4:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800BC728

.globl func_800BC7E8
.ent func_800BC7E8
func_800BC7E8:
      jr         $31
       nop
.end func_800BC7E8

.globl func_800BC7F0
.ent func_800BC7F0
func_800BC7F0:
      addiu      $29, $29, -0x40
      sw         $22, 0x30($29)
      addu       $22, $4, $0
      sw         $21, 0x2C($29)
      addu       $21, $5, $0
      sw         $16, 0x18($29)
      addu       $16, $6, $0
      sw         $23, 0x34($29)
      addu       $23, $7, $0
      sw         $19, 0x24($29)
      addiu      $19, $0, 0x1
      sw         $20, 0x28($29)
      addu       $20, $0, $0
      sw         $31, 0x3C($29)
      sw         $30, 0x38($29)
      sw         $18, 0x20($29)
      bnez       $22, .L800BC864
       sw        $17, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F62EC)
      addiu      $4, $4, %lo(D_800F62EC)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6954)
      addiu      $6, $6, %lo(D_800F6954)
      jal        func_80002E80
       addiu     $7, $0, 0x58A
  .L800BC864:
      bnez       $21, .L800BC898
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F61D0)
      addiu      $4, $4, %lo(D_800F61D0)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6954)
      addiu      $6, $6, %lo(D_800F6954)
      jal        func_80002E80
       addiu     $7, $0, 0x58B
  .L800BC898:
      lw         $3, 0x50($29)
      bnez       $3, .L800BC8D0
       addu      $17, $0, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6964)
      addiu      $4, $4, %lo(D_800F6964)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6954)
      addiu      $6, $6, %lo(D_800F6954)
      jal        func_80002E80
       addiu     $7, $0, 0x58C
  .L800BC8D0:
      addiu      $30, $0, -0x5
      addu       $18, $16, $0
  .L800BC8D8:
      jal        func_800CD26C
       addu      $4, $21, $0
      sltu       $2, $17, $2
      beqz       $2, .L800BC944
       addu      $4, $21, $0
      jal        func_800CD394
       addu      $5, $17, $0
      beqz       $2, .L800BC938
       addiu     $3, $0, 0x1
      lw         $16, 0x0($18)
      bnel       $16, $3, .L800BC93C
       addiu     $18, $18, 0x4
      addu       $4, $22, $0
      addu       $5, $2, $0
      jal        func_800BC728
       addu      $6, $23, $0
      addu       $19, $2, $0
      bne        $19, $16, .L800BC92C
       nop
      j          .L800BC938
       addiu     $20, $20, 0x1
  .L800BC92C:
      beq        $19, $30, .L800BC948
       addiu     $2, $0, 0x1
      addiu      $19, $0, 0x1
  .L800BC938:
      addiu      $18, $18, 0x4
  .L800BC93C:
      j          .L800BC8D8
       addiu     $17, $17, 0x1
  .L800BC944:
      addiu      $2, $0, 0x1
  .L800BC948:
      beq        $19, $2, .L800BC95C
       addu      $4, $22, $0
      jal        func_800BC7E8
       addu      $5, $23, $0
      addu       $20, $0, $0
  .L800BC95C:
      lw         $3, 0x50($29)
      addu       $2, $19, $0
      sw         $20, 0x0($3)
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
.end func_800BC7F0

.globl func_800BC998
.ent func_800BC998
func_800BC998:
      addiu      $29, $29, -0x38
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $18, 0x28($29)
      addu       $18, $6, $0
      sw         $19, 0x2C($29)
      addu       $19, $7, $0
      sw         $16, 0x20($29)
      addiu      $16, $4, 0x14
      sw         $31, 0x30($29)
      jal        func_800CD2E8
       addu      $4, $16, $0
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800BCA28
       addu      $2, $3, $0
      lw         $2, 0x4C($29)
      lw         $7, 0x48($29)
      sw         $2, 0x10($29)
      lw         $2, 0x50($29)
      addu       $4, $17, $0
      sw         $2, 0x14($29)
      lw         $2, 0x54($29)
      addu       $5, $18, $0
      sw         $2, 0x18($29)
      lw         $2, 0x58($29)
      addu       $6, $19, $0
      jal        func_800BAB80
       sw        $2, 0x1C($29)
      beqz       $2, .L800BCA24
       addu      $4, $16, $0
      jal        func_800CD370
       addu      $5, $2, $0
      j          .L800BCA28
       addiu     $2, $0, 0x1
  .L800BCA24:
      addiu      $2, $0, -0x5
  .L800BCA28:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800BC998

.globl func_800BCA44
.ent func_800BCA44
func_800BCA44:
      addiu      $29, $29, -0x60
      sw         $22, 0x50($29)
      lw         $22, 0x70($29)
      sw         $23, 0x54($29)
      lw         $23, 0x74($29)
      sw         $21, 0x4C($29)
      lw         $21, 0x78($29)
      sw         $18, 0x40($29)
      addu       $18, $4, $0
      sw         $30, 0x58($29)
      lw         $30, 0x7C($29)
      sw         $31, 0x5C($29)
      sw         $20, 0x48($29)
      sw         $19, 0x44($29)
      sw         $17, 0x3C($29)
      sw         $16, 0x38($29)
      sw         $5, 0x64($29)
      sw         $6, 0x68($29)
      sw         $7, 0x6C($29)
      sw         $0, 0x28($29)
      sw         $0, 0x2C($29)
      jal        func_800BB06C
       sw        $0, 0x30($29)
      addu       $4, $18, $0
      addiu      $3, $29, 0x28
      sw         $3, 0x10($29)
      addiu      $3, $29, 0x2C
      addu       $17, $2, $0
      sw         $3, 0x14($29)
      addu       $5, $22, $0
      addu       $6, $23, $0
      jal        func_800BB344
       addu      $7, $21, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800BCB5C
       addu      $19, $16, $0
      lw         $2, 0x2C($29)
      beqz       $2, .L800BCB14
       addu      $4, $18, $0
      addu       $5, $21, $0
      addu       $7, $17, $0
      lw         $6, 0x28($29)
      addiu      $2, $29, 0x30
      jal        func_800BC7F0
       sw        $2, 0x10($29)
      addu       $16, $2, $0
      bne        $16, $19, .L800BCB50
       addu      $20, $16, $0
      lw         $2, 0x30($29)
      bnez       $2, .L800BCB1C
       addu      $4, $18, $0
  .L800BCB14:
      j          .L800BCB50
       addu      $16, $0, $0
  .L800BCB1C:
      lw         $5, 0x64($29)
      lw         $6, 0x68($29)
      sw         $22, 0x10($29)
      sw         $23, 0x14($29)
      sw         $21, 0x18($29)
      lw         $2, 0x28($29)
      lw         $7, 0x6C($29)
      sw         $17, 0x20($29)
      jal        func_800BC998
       sw        $2, 0x1C($29)
      addu       $16, $2, $0
      beql       $16, $20, .L800BCB50
       sw        $0, 0x28($29)
  .L800BCB50:
      addiu      $2, $0, 0x1
      beq        $16, $2, .L800BCB84
       nop
  .L800BCB5C:
      lw         $6, 0x28($29)
      beqz       $6, .L800BCBC4
       addu      $4, $22, $0
      jal        func_800BADA0
       addu      $5, $21, $0
      lw         $4, 0x28($29)
      jal        func_800D2814
       nop
      j          .L800BCB8C
       sw        $0, 0x28($29)
  .L800BCB84:
      bnel       $30, $0, .L800BCB8C
       sw        $17, 0x0($30)
  .L800BCB8C:
      lw         $2, 0x28($29)
      beqz       $2, .L800BCBC8
       addu      $2, $16, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F69BC)
      addiu      $4, $4, %lo(D_800F69BC)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6A14)
      addiu      $6, $6, %lo(D_800F6A14)
      jal        func_80002E80
       addiu     $7, $0, 0x5F9
  .L800BCBC4:
      addu       $2, $16, $0
  .L800BCBC8:
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
.end func_800BCA44

.globl func_800BCBF8
.ent func_800BCBF8
func_800BCBF8:
      addiu      $29, $29, -0x58
      sw         $22, 0x48($29)
      lw         $22, 0x68($29)
      sw         $30, 0x50($29)
      addu       $30, $4, $0
      sw         $17, 0x34($29)
      addu       $17, $0, $0
      sw         $20, 0x40($29)
      addiu      $20, $0, 0x1
      sw         $19, 0x3C($29)
      addiu      $19, $29, 0x20
      sw         $31, 0x54($29)
      sw         $23, 0x4C($29)
      sw         $21, 0x44($29)
      sw         $18, 0x38($29)
      sw         $16, 0x30($29)
      sw         $5, 0x5C($29)
      sw         $6, 0x60($29)
      bnez       $30, .L800BCC74
       sw        $7, 0x64($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F62EC)
      addiu      $4, $4, %lo(D_800F62EC)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6A2C)
      addiu      $6, $6, %lo(D_800F6A2C)
      jal        func_80002E80
       addiu     $7, $0, 0x61B
  .L800BCC74:
      bnez       $22, .L800BCCAC
       addu      $4, $19, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6168)
      addiu      $4, $4, %lo(D_800F6168)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6A2C)
      addiu      $6, $6, %lo(D_800F6A2C)
      jal        func_80002E80
       addiu     $7, $0, 0x61C
      addu       $4, $19, $0
  .L800BCCAC:
      jal        func_800CD1EC
       addu      $5, $0, $0
      lw         $2, 0x4($22)
      jalr       $2
       nop
      addu       $18, $2, $0
      beqz       $18, .L800BCD8C
       addu      $4, $19, $0
      jal        func_800CD2C4
       addu      $5, $18, $0
      addu       $21, $2, $0
      bne        $21, $20, .L800BCD90
       nop
      beqz       $18, .L800BCD3C
       addu      $16, $0, $0
      addiu      $23, $0, 0x1
  .L800BCCEC:
      addu       $4, $0, $0
      addu       $5, $4, $0
      jal        func_800D27B4
       addiu     $6, $0, 0x38
      addu       $17, $2, $0
      beqz       $17, .L800BCD84
       addu      $4, $16, $0
      lw         $2, 0x8($22)
      jalr       $2
       addu      $5, $17, $0
      addu       $20, $2, $0
      bne        $20, $23, .L800BCD74
       addu      $4, $19, $0
      addu       $5, $16, $0
      jal        func_800CD34C
       addu      $6, $17, $0
      addiu      $16, $16, 0x1
      sltu       $2, $16, $18
      bnez       $2, .L800BCCEC
       addu      $17, $0, $0
  .L800BCD3C:
      bne        $16, $18, .L800BCD90
       addu      $4, $30, $0
      lw         $2, 0x6C($29)
      lw         $5, 0x5C($29)
      lw         $6, 0x60($29)
      lw         $7, 0x64($29)
      sw         $2, 0x14($29)
      lw         $2, 0x70($29)
      sw         $22, 0x10($29)
      sw         $19, 0x18($29)
      jal        func_800BCA44
       sw        $2, 0x1C($29)
      j          .L800BCD90
       addu      $21, $2, $0
  .L800BCD74:
      jal        func_800CC3A0
       addu      $4, $20, $0
      j          .L800BCD3C
       addu      $21, $2, $0
  .L800BCD84:
      j          .L800BCD3C
       addiu     $21, $0, -0x5
  .L800BCD8C:
      addiu      $21, $0, 0x1
  .L800BCD90:
      beqz       $17, .L800BCDA0
       nop
      jal        func_800D2814
       addu      $4, $17, $0
  .L800BCDA0:
      jal        func_800CD2A4
       addu      $4, $19, $0
      bnez       $2, .L800BCE08
       addu      $2, $21, $0
      addu       $16, $0, $0
  .L800BCDB4:
      jal        func_800CD26C
       addu      $4, $19, $0
      sltu       $2, $16, $2
      beqz       $2, .L800BCDF8
       addu      $4, $19, $0
      jal        func_800CD3B0
       addu      $5, $16, $0
      addu       $17, $2, $0
      beqz       $17, .L800BCDF0
       addu      $4, $16, $0
      lw         $2, 0xC($22)
      jalr       $2
       addu      $5, $17, $0
      jal        func_800D2814
       addu      $4, $17, $0
  .L800BCDF0:
      j          .L800BCDB4
       addiu     $16, $16, 0x1
  .L800BCDF8:
      addu       $5, $0, $0
      jal        func_800CD234
       addu      $6, $5, $0
      addu       $2, $21, $0
  .L800BCE08:
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
.end func_800BCBF8

.globl func_800BCE38
.ent func_800BCE38
func_800BCE38:
      addiu      $29, $29, -0x38
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $20, 0x28($29)
      addu       $20, $6, $0
      lui        $2, %hi(D_800FAD48)
      sw         $21, 0x2C($29)
      addiu      $21, $2, %lo(D_800FAD48)
      sw         $31, 0x30($29)
      sw         $18, 0x20($29)
      bnez       $19, .L800BCE9C
       sw        $17, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6A3C)
      addiu      $4, $4, %lo(D_800F6A3C)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6A8C)
      addiu      $6, $6, %lo(D_800F6A8C)
      jal        func_80002E80
       addiu     $7, $0, 0x65B
  .L800BCE9C:
      bnez       $16, .L800BCED0
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6A9C)
      addiu      $4, $4, %lo(D_800F6A9C)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6A8C)
      addiu      $6, $6, %lo(D_800F6A8C)
      jal        func_80002E80
       addiu     $7, $0, 0x65C
  .L800BCED0:
      beqz       $20, .L800BCF10
       addu      $17, $0, $0
      addiu      $18, $0, 0x1
  .L800BCEDC:
      lw         $4, 0x0($16)
      jal        func_8005211C
       addu      $5, $21, $0
      bnel       $2, $0, .L800BCF04
       addiu     $17, $17, 0x1
      lw         $5, 0x4($16)
      jal        func_800CD370
       addu      $4, $19, $0
      bne        $2, $18, .L800BCF14
       addiu     $17, $17, 0x1
  .L800BCF04:
      sltu       $2, $17, $20
      bnez       $2, .L800BCEDC
       addiu     $16, $16, 0x8
  .L800BCF10:
      addiu      $2, $0, 0x1
  .L800BCF14:
      lw         $31, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800BCE38

.globl func_800BCF38
.ent func_800BCF38
func_800BCF38:
      addiu      $29, $29, -0x48
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $23, 0x3C($29)
      addiu      $23, $0, 0x1
      sw         $31, 0x44($29)
      sw         $30, 0x40($29)
      sw         $22, 0x38($29)
      sw         $21, 0x34($29)
      sw         $20, 0x30($29)
      sw         $19, 0x2C($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      bnez       $16, .L800BCFA0
       sw        $5, 0x4C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F62EC)
      addiu      $4, $4, %lo(D_800F62EC)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6AF0)
      addiu      $6, $6, %lo(D_800F6AF0)
      jal        func_80002E80
       addiu     $7, $0, 0x67E
  .L800BCFA0:
      lw         $8, 0x4C($29)
      bnez       $8, .L800BCFD8
       addiu     $16, $16, 0x14
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6A3C)
      addiu      $4, $4, %lo(D_800F6A3C)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6AF0)
      addiu      $6, $6, %lo(D_800F6AF0)
      jal        func_80002E80
       addiu     $7, $0, 0x67F
  .L800BCFD8:
      sw         $16, 0x18($29)
      addu       $30, $0, $0
      lui        $21, %hi(D_800F6078)
      lui        $20, %hi(D_800F6AF0)
  .L800BCFE8:
      lw         $4, 0x18($29)
      jal        func_800CD26C
       nop
      sltu       $2, $30, $2
      beqz       $2, .L800BD1BC
       addu      $2, $23, $0
      lw         $4, 0x18($29)
      jal        func_800CD394
       addu      $5, $30, $0
      addu       $16, $2, $0
      bnez       $16, .L800BD03C
       addiu     $22, $16, 0x14
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F602C)
      addiu      $4, $4, %lo(D_800F602C)
      addiu      $5, $21, %lo(D_800F6078)
      addiu      $6, $20, %lo(D_800F6AF0)
      jal        func_80002E80
       addiu     $7, $0, 0x684
  .L800BD03C:
      addu       $19, $0, $0
  .L800BD040:
      jal        func_800CD26C
       addu      $4, $22, $0
      sltu       $2, $19, $2
      beqz       $2, .L800BD1B4
       addu      $4, $22, $0
      jal        func_800CD394
       addu      $5, $19, $0
      addu       $18, $0, $0
      addu       $16, $2, $0
      bnez       $16, .L800BD090
       addu      $17, $18, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6360)
      addiu      $4, $4, %lo(D_800F6360)
      addiu      $5, $21, %lo(D_800F6078)
      addiu      $6, $20, %lo(D_800F6AF0)
      jal        func_80002E80
       addiu     $7, $0, 0x68A
  .L800BD090:
      lw         $3, 0x0($16)
      addiu      $8, $0, 0x2
      beq        $3, $8, .L800BD0B0
       addiu     $2, $0, 0x3
      beq        $3, $2, .L800BD114
       nop
      j          .L800BD180
       nop
  .L800BD0B0:
      addiu      $3, $0, 0x7
      lw         $2, 0x4($16)
      lw         $16, 0x8($16)
      beq        $2, $3, .L800BD0E8
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6B08)
      addiu      $4, $4, %lo(D_800F6B08)
      addiu      $5, $21, %lo(D_800F6078)
      addiu      $6, $20, %lo(D_800F6AF0)
      jal        func_80002E80
       addiu     $7, $0, 0x68F
  .L800BD0E8:
      bnez       $16, .L800BD178
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $8, %hi(D_800F6B70)
      addiu      $4, $8, %lo(D_800F6B70)
      addiu      $5, $21, %lo(D_800F6078)
      addiu      $6, $20, %lo(D_800F6AF0)
      j          .L800BD170
       addiu     $7, $0, 0x690
  .L800BD114:
      lw         $2, 0x4($16)
      lw         $16, 0x8($16)
      beq        $2, $8, .L800BD148
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6BBC)
      addiu      $4, $4, %lo(D_800F6BBC)
      addiu      $5, $21, %lo(D_800F6078)
      addiu      $6, $20, %lo(D_800F6AF0)
      jal        func_80002E80
       addiu     $7, $0, 0x698
  .L800BD148:
      bnez       $16, .L800BD178
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $8, %hi(D_800F6B70)
      addiu      $4, $8, %lo(D_800F6B70)
      addiu      $5, $21, %lo(D_800F6078)
      addiu      $6, $20, %lo(D_800F6AF0)
      addiu      $7, $0, 0x699
  .L800BD170:
      jal        func_80002E80
       nop
  .L800BD178:
      lw         $18, 0x4($16)
      lw         $17, 0x0($16)
  .L800BD180:
      beql       $18, $0, .L800BD040
       addiu     $19, $19, 0x1
      beqz       $17, .L800BD1AC
       addu      $5, $18, $0
      lw         $4, 0x4C($29)
      jal        func_800BCE38
       addu      $6, $17, $0
      addu       $23, $2, $0
      addiu      $2, $0, 0x1
      bne        $23, $2, .L800BD1BC
       addu      $2, $23, $0
  .L800BD1AC:
      j          .L800BD040
       addiu     $19, $19, 0x1
  .L800BD1B4:
      j          .L800BCFE8
       addiu     $30, $30, 0x1
  .L800BD1BC:
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
.end func_800BCF38

.globl func_800BD1EC
.ent func_800BD1EC
func_800BD1EC:
      addiu      $29, $29, -0x18
      addu       $6, $5, $0
      lui        $5, %hi(D_800FAD3C)
      sw         $31, 0x10($29)
      jal        func_800CC7AC
       addiu     $5, $5, %lo(D_800FAD3C)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800BD1EC

.globl func_800BD210
.ent func_800BD210
func_800BD210:
      addiu      $29, $29, -0x18
      beqz       $4, .L800BD22C
       sw        $31, 0x10($29)
      jal        func_800BAFB4
       nop
      j          .L800BD230
       addiu     $2, $0, 0x1
  .L800BD22C:
      addiu      $2, $0, -0x4
  .L800BD230:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800BD210

.globl func_800BD23C
.ent func_800BD23C
func_800BD23C:
      addiu      $29, $29, -0x68
      sw         $19, 0x54($29)
      lw         $19, 0x80($29)
      sw         $22, 0x60($29)
      addu       $22, $4, $0
      sw         $18, 0x50($29)
      addu       $18, $5, $0
      sw         $21, 0x5C($29)
      addu       $21, $6, $0
      sw         $20, 0x58($29)
      addu       $20, $7, $0
      sw         $31, 0x64($29)
      sw         $17, 0x4C($29)
      sw         $16, 0x48($29)
      beqz       $22, .L800BD28C
       sw        $0, 0x40($29)
      beqz       $18, .L800BD388
       addiu     $2, $0, -0x4
      bnez       $21, .L800BD294
       nop
  .L800BD28C:
      j          .L800BD388
       addiu     $2, $0, -0x4
  .L800BD294:
      beqz       $19, .L800BD2A0
       addiu     $2, $0, -0x1
      sw         $2, 0x0($19)
  .L800BD2A0:
      addu       $4, $20, $0
      jalr       $18
       addiu     $5, $29, 0x40
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800BD388
       addu      $2, $16, $0
      lw         $2, 0x40($29)
      bnez       $2, .L800BD2FC
       addiu     $4, $29, 0x20
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F6168)
      addiu      $4, $4, %lo(D_800F6168)
      lui        $5, %hi(D_800F6078)
      addiu      $5, $5, %lo(D_800F6078)
      lui        $6, %hi(D_800F6C24)
      addiu      $6, $6, %lo(D_800F6C24)
      jal        func_80002E80
       addiu     $7, $0, 0x710
      lw         $2, 0x40($29)
      addiu      $4, $29, 0x20
  .L800BD2FC:
      lw         $2, 0x0($2)
      jalr       $2
       addu      $5, $0, $0
      addu       $17, $2, $0
      beq        $17, $16, .L800BD324
       addu      $5, $18, $0
      jal        func_800CC3A0
       addu      $4, $17, $0
      j          .L800BD364
       addu      $16, $2, $0
  .L800BD324:
      lw         $3, 0x40($29)
      lw         $2, 0x78($29)
      addu       $6, $21, $0
      sw         $19, 0x18($29)
      sw         $2, 0x14($29)
      sw         $3, 0x10($29)
      lw         $4, 0x4($22)
      jal        func_800BCBF8
       addu      $7, $20, $0
      addu       $16, $2, $0
      beq        $16, $17, .L800BD368
       addiu     $2, $0, 0x1
      lw         $2, 0x40($29)
      lw         $2, 0x18($2)
      jalr       $2
       nop
  .L800BD364:
      addiu      $2, $0, 0x1
  .L800BD368:
      beq        $16, $2, .L800BD388
       addu      $2, $16, $0
      lw         $5, 0x40($29)
      beqz       $5, .L800BD388
       nop
      jalr       $21
       addu      $4, $20, $0
      addu       $2, $16, $0
  .L800BD388:
      lw         $31, 0x64($29)
      lw         $22, 0x60($29)
      lw         $21, 0x5C($29)
      lw         $20, 0x58($29)
      lw         $19, 0x54($29)
      lw         $18, 0x50($29)
      lw         $17, 0x4C($29)
      lw         $16, 0x48($29)
      jr         $31
       addiu     $29, $29, 0x68
.end func_800BD23C

.globl func_800BD3B0
.ent func_800BD3B0
func_800BD3B0:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $4, 0x4($4)
      jal        func_800CD3B0
       addiu     $4, $4, 0x14
      addu       $16, $2, $0
      jal        func_800BAF0C
       addu      $4, $16, $0
      jal        func_800BAC1C
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800BD3B0

.globl func_800BD3F0
.ent func_800BD3F0
func_800BD3F0:
      addiu      $29, $29, -0x20
      beqz       $4, .L800BD41C
       sw        $31, 0x18($29)
      lw         $2, 0x30($29)
      sw         $7, 0x10($29)
      sw         $2, 0x14($29)
      lw         $4, 0x4($4)
      jal        func_800BBD98
       addu      $7, $0, $0
      j          .L800BD420
       nop
  .L800BD41C:
      addiu      $2, $0, -0x4
  .L800BD420:
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800BD3F0

.globl func_800BD42C
.ent func_800BD42C
func_800BD42C:
      addiu      $29, $29, -0x40
      sw         $17, 0x2C($29)
      lw         $17, 0x50($29)
      sw         $19, 0x34($29)
      lw         $19, 0x54($29)
      sw         $18, 0x30($29)
      addu       $18, $7, $0
      sw         $31, 0x38($29)
      sw         $16, 0x28($29)
      beqz       $4, .L800BD4C4
       addiu     $2, $0, -0x4
      addiu      $2, $29, 0x18
      sw         $2, 0x10($29)
      addiu      $2, $29, 0x1C
      sw         $2, 0x14($29)
      lw         $4, 0x4($4)
      jal        func_800BBD98
       addu      $7, $0, $0
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800BD4C0
       addu      $16, $3, $0
      lw         $4, 0x18($29)
      addu       $5, $18, $0
      jal        func_800BBEA4
       addiu     $6, $29, 0x20
      addu       $3, $2, $0
      bne        $3, $16, .L800BD4C4
       addu      $2, $3, $0
      beqz       $17, .L800BD4B0
       nop
      lw         $2, 0x20($29)
      sw         $2, 0x0($17)
  .L800BD4B0:
      beqz       $19, .L800BD4C4
       addu      $2, $3, $0
      lw         $2, 0x1C($29)
      sw         $2, 0x0($19)
  .L800BD4C0:
      addu       $2, $3, $0
  .L800BD4C4:
      lw         $31, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800BD42C

.globl func_800BD4E0
.ent func_800BD4E0
func_800BD4E0:
      addiu      $29, $29, -0x88
      sw         $22, 0x80($29)
      lw         $22, 0x98($29)
      sw         $21, 0x7C($29)
      lw         $21, 0x9C($29)
      sw         $20, 0x78($29)
      lw         $20, 0xA0($29)
      sw         $16, 0x68($29)
      addu       $16, $5, $0
      sw         $19, 0x74($29)
      lw         $19, 0xA4($29)
      addu       $5, $6, $0
      sw         $31, 0x84($29)
      sw         $18, 0x70($29)
      bnez       $4, .L800BD528
       sw        $17, 0x6C($29)
      j          .L800BD630
       addiu     $2, $0, -0x4
  .L800BD528:
      lw         $17, 0x4($4)
      bnez       $16, .L800BD548
       lui       $2, %hi(D_800FAD48)
      bnez       $5, .L800BD54C
       addiu     $2, $2, %lo(D_800FAD48)
      lui        $2, %hi(D_800FAD74)
      addiu      $16, $2, %lo(D_800FAD74)
.end func_800BD4E0

.globl func_800BD544
.ent func_800BD544
func_800BD544:
      lui        $2, %hi(D_800FAD48)
  .L800BD548:
      addiu      $2, $2, %lo(D_800FAD48)
  .L800BD54C:
      sw         $2, 0x20($29)
      beqz       $5, .L800BD56C
       sw        $16, 0x24($29)
      addiu      $4, $29, 0x28
      jal        func_80052310
       addiu     $6, $0, 0x10
      j          .L800BD574
       addu      $5, $0, $0
  .L800BD56C:
      sb         $0, 0x28($29)
      addu       $5, $0, $0
  .L800BD574:
      beql       $16, $0, .L800BD588
       addu      $16, $0, $0
      lbu        $2, 0x0($16)
      sltu       $5, $5, $2
      addu       $16, $0, $0
  .L800BD588:
      addiu      $18, $0, 0x1
      addiu      $2, $29, 0x20
      lbu        $3, 0x28($29)
      addiu      $4, $29, 0x28
      sw         $5, 0x40($29)
      sw         $2, 0x44($29)
      sw         $4, 0x4C($29)
      sw         $5, 0x50($29)
      sw         $2, 0x54($29)
      sw         $0, 0x58($29)
      sw         $0, 0x5C($29)
      sw         $4, 0x64($29)
      sltu       $3, $16, $3
      sw         $3, 0x48($29)
      sw         $3, 0x60($29)
      andi       $2, $16, 0x1
  .L800BD5C8:
      beqz       $2, .L800BD5D8
       addiu     $5, $0, 0x2
      j          .L800BD5E0
       addiu     $6, $29, 0x40
  .L800BD5D8:
      addiu      $5, $0, 0x7
      addiu      $6, $29, 0x50
  .L800BD5E0:
      andi       $2, $16, 0x4
      bnez       $2, .L800BD5FC
       addiu     $7, $0, 0xA
      addiu      $7, $0, 0x2
      and        $2, $16, $7
      bnel       $2, $0, .L800BD5FC
       addiu     $7, $0, 0x4
  .L800BD5FC:
      addu       $4, $17, $0
      sw         $22, 0x10($29)
      sw         $21, 0x14($29)
      sw         $20, 0x18($29)
      jal        func_800BBFBC
       sw        $19, 0x1C($29)
      addu       $3, $2, $0
      beq        $3, $18, .L800BD62C
       addiu     $16, $16, 0x1
      slti       $2, $16, 0x6
      bnez       $2, .L800BD5C8
       andi      $2, $16, 0x1
  .L800BD62C:
      addu       $2, $3, $0
  .L800BD630:
      lw         $31, 0x84($29)
      lw         $22, 0x80($29)
      lw         $21, 0x7C($29)
      lw         $20, 0x78($29)
      lw         $19, 0x74($29)
      lw         $18, 0x70($29)
      lw         $17, 0x6C($29)
      lw         $16, 0x68($29)
      jr         $31
       addiu     $29, $29, 0x88
.end func_800BD544

.globl func_800BD658
.ent func_800BD658
func_800BD658:
      addiu      $29, $29, -0x30
      beqz       $4, .L800BD66C
       sw        $31, 0x28($29)
      bnez       $5, .L800BD674
       lui       $2, %hi(func_800BC044)
  .L800BD66C:
      j          .L800BD6A0
       addiu     $2, $0, -0x4
  .L800BD674:
      addiu      $2, $2, %lo(func_800BC044)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $0, 0x20($29)
      sw         $5, 0x14($29)
      addiu      $5, $0, 0x5
      addiu      $6, $29, 0x18
      sw         $2, 0x10($29)
      lw         $4, 0x4($4)
      jal        func_800BC158
       addu      $7, $0, $0
  .L800BD6A0:
      lw         $31, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800BD658

.globl func_800BD6AC
.ent func_800BD6AC
func_800BD6AC:
      addiu      $29, $29, -0x38
      sw         $18, 0x28($29)
      addu       $18, $4, $0
      sw         $19, 0x2C($29)
      addu       $19, $5, $0
      sw         $31, 0x30($29)
      sw         $17, 0x24($29)
      beqz       $18, .L800BD6D8
       sw        $16, 0x20($29)
      bnez       $19, .L800BD6E0
       addiu     $4, $29, 0x10
  .L800BD6D8:
      j          .L800BD72C
       addiu     $16, $0, -0x4
  .L800BD6E0:
      jal        func_800CD1EC
       addiu     $5, $0, 0x10
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800BD72C
       addu      $17, $16, $0
      lw         $4, 0x4($18)
      jal        func_800BCF38
       addiu     $5, $29, 0x10
      addu       $16, $2, $0
      bne        $16, $17, .L800BD720
       addiu     $4, $29, 0x10
      jal        func_800BD1EC
       addu      $5, $19, $0
      addu       $16, $2, $0
      addiu      $4, $29, 0x10
  .L800BD720:
      addu       $5, $0, $0
      jal        func_800CD234
       addu      $6, $5, $0
  .L800BD72C:
      addu       $2, $16, $0
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800BD6AC

.globl func_800BD74C
.ent func_800BD74C
func_800BD74C:
      beqz       $4, .L800BD770
       addiu     $3, $0, -0x4
      bnez       $5, .L800BD764
       addiu     $3, $0, 0x1
      j          .L800BD770
       addiu     $3, $0, -0x4
  .L800BD764:
      lw         $2, 0x4($4)
      lw         $2, 0xC($2)
      sw         $2, 0x0($5)
  .L800BD770:
      jr         $31
       addu      $2, $3, $0
.end func_800BD74C

.globl func_800BD778
.ent func_800BD778
func_800BD778:
      addiu      $29, $29, -0x28
      lw         $2, 0x38($29)
      sw         $6, 0x10($29)
      lui        $6, %hi(func_800BC2C8)
      addiu      $6, $6, %lo(func_800BC2C8)
      sw         $31, 0x20($29)
      sw         $7, 0x14($29)
      sw         $0, 0x1C($29)
      sw         $2, 0x18($29)
      lw         $4, 0x4($4)
      jal        func_800BC5D4
       addiu     $7, $29, 0x10
      bltz       $2, .L800BD7B8
       nop
      lw         $2, 0x1C($29)
      sltu       $2, $0, $2
  .L800BD7B8:
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800BD778

.globl func_800BD7C4
.ent func_800BD7C4
func_800BD7C4:
      addiu      $29, $29, -0x28
      sw         $6, 0x10($29)
      lui        $6, %hi(func_800BC47C)
      addiu      $6, $6, %lo(func_800BC47C)
      sw         $31, 0x20($29)
      sw         $7, 0x14($29)
      sw         $0, 0x18($29)
      lw         $4, 0x4($4)
      jal        func_800BC5D4
       addiu     $7, $29, 0x10
      bltz       $2, .L800BD7FC
       nop
      lw         $2, 0x18($29)
      sltu       $2, $0, $2
  .L800BD7FC:
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800BD7C4

.globl func_800BD808
.ent func_800BD808
func_800BD808:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      bnez       $16, .L800BD824
       sw        $31, 0x14($29)
      j          .L800BD83C
       addiu     $2, $0, -0x4
  .L800BD824:
      jal        func_800BAD0C
       nop
      beql       $2, $0, .L800BD83C
       addiu     $2, $0, -0x5
      sw         $2, 0x0($16)
      addiu      $2, $0, 0x1
  .L800BD83C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800BD808

.globl func_800BD84C
.ent func_800BD84C
func_800BD84C:
      lw         $6, 0x60($29)
      lw         $7, 0x64($29)
      sw         $2, 0x14($29)
      lw         $2, 0x70($29)
      sw         $22, 0x10($29)
      sw         $19, 0x18($29)
      jal        func_800BD544
       sw        $2, 0x1C($29)
      j          .L800BD890
       addu      $21, $2, $0
      jal        func_800CCEA0
       addu      $4, $20, $0
      j          .L800BD83C
.end func_800BD84C
