.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

.globl func_80079A00
.ent func_80079A00
func_80079A00:
      jr         $31
       addu      $2, $0, $0
.end func_80079A00

.globl func_80079A08
.ent func_80079A08
func_80079A08:
      bnez       $2, .L800799EC
       addiu     $4, $19, 0xAC8
  .L80079A10:
      lui        $2, %hi(D_8010051C)
      addiu      $19, $2, %lo(D_8010051C)
      jal        .L80006EC4
       addu      $4, $19, $0
      lui        $3, %hi(D_801004E3)
      lbu        $3, %lo(D_801004E3)($3)
      beqz       $3, .L80079A4C
       addu      $16, $2, $0
      lui        $4, %hi(D_800F1E6C)
      addiu      $4, $4, %lo(D_800F1E6C)
      lw         $6, 0xAC0($17)
      lw         $7, 0xAC4($18)
  .globl func_80079A40
func_80079A40:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
  .L80079A4C:
      sw         $31, 0x28($29)
      sw         $16, 0x20($29)
      lw         $4, 0x10($17)
      jal        func_8008C058
       addu      $16, $5, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80079ACC
       nop
      lw         $4, 0x4($16)
      beqz       $4, .L80079ACC
       nop
      jal        func_80058268
       addu      $5, $0, $0
      addiu      $16, $29, 0x10
      addu       $4, $16, $0
      lw         $3, 0x0($2)
      lw         $7, 0x4($2)
      lw         $8, 0x8($2)
      lw         $9, 0xC($2)
      sw         $3, 0x10($29)
      sw         $7, 0x14($29)
      sw         $8, 0x18($29)
      sw         $9, 0x1C($29)
      lw         $5, 0x50($17)
      lw         $6, 0x4C($17)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
      addu       $4, $17, $0
      addu       $5, $16, $0
      jal        func_8008BB08
       addu      $6, $0, $0
  .L80079ACC:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
  .globl func_80079AE0
func_80079AE0:
      addiu      $3, $4, -0x1
      sltiu      $2, $3, 0x8
      beqz       $2, .L80079B40
       lui       $2, %hi(jtbl_800F0A38)
      addiu      $2, $2, %lo(jtbl_800F0A38)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80079B08
.L80079B08:
      jr         $31
       addiu     $2, $0, 0x6
  .globl .L80079B10
.L80079B10:
      jr         $31
       addiu     $2, $0, 0x7
  .globl .L80079B18
.L80079B18:
      jr         $31
       addiu     $2, $0, 0x4
  .globl .L80079B20
.L80079B20:
      jr         $31
       addiu     $2, $0, 0x5
  .globl .L80079B28
.L80079B28:
      jr         $31
       addiu     $2, $0, 0x2
  .globl .L80079B30
.L80079B30:
      jr         $31
       addiu     $2, $0, 0x3
  .globl .L80079B38
.L80079B38:
      jr         $31
       addiu     $2, $0, 0x1
  .globl .L80079B40
.L80079B40:
      jr         $31
       addu      $2, $0, $0
  .globl D_80079B48
D_80079B48:
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
      beqz       $16, .L80079BC8
       addiu     $2, $0, -0x5
      addiu      $2, $0, 0x1
      sw         $2, 0x0($16)
      addiu      $4, $0, 0xC
      jal        func_80052504
       addu      $5, $0, $0
      addu       $4, $2, $0
      beqz       $4, .L80079BBC
       addiu     $2, $0, 0x1
      addiu      $3, $0, 0x2003
      sw         $4, 0x4($16)
      sw         $3, 0x0($4)
      lui        $3, %hi(D_800F0980)
      lw         $4, 0x4($16)
      addiu      $3, $3, %lo(D_800F0980)
      sw         $3, 0x4($4)
      j          .L80079BC8
       sw        $16, 0x0($17)
  .L80079BBC:
      jal        func_80052540
       addu      $4, $16, $0
      addiu      $2, $0, -0x5
  .L80079BC8:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl D_80079BDC
D_80079BDC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      beqz       $16, .L80079C04
       sw        $31, 0x14($29)
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
  .L80079C04:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_80079C18
func_80079C18:
      lw         $2, 0x24($4)
      bnez       $2, .L80079C34
       nop
      lw         $3, 0x20($4)
      bnez       $3, .L80079C34
       addu      $2, $3, $0
      addu       $2, $0, $0
  .L80079C34:
      jr         $31
       nop
  .globl func_80079C3C
func_80079C3C:
      addiu      $29, $29, -0x18
      addiu      $4, $0, 0x10
      sw         $31, 0x10($29)
      jal        func_80052504
       addu      $5, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl D_80079C5C
D_80079C5C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x0($16)
      jal        func_80052540
       nop
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
      addiu      $29, $29, -0x48
      sw         $20, 0x30($29)
      lw         $20, 0x5C($29)
      lw         $8, 0x60($29)
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $19, 0x2C($29)
      addu       $19, $5, $0
      sw         $23, 0x3C($29)
      addu       $23, $6, $0
      sw         $30, 0x40($29)
      addu       $30, $7, $0
      sw         $31, 0x44($29)
      sw         $22, 0x38($29)
      sw         $21, 0x34($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      bnez       $16, .L80079CF0
       sw        $0, 0x0($8)
      j          .L80079F10
       addiu     $2, $0, -0x4
  .L80079CF0:
      addiu      $4, $0, 0x1AC
      jal        func_80052504
       addu      $5, $0, $0
      addu       $17, $2, $0
      bnez       $17, .L80079D10
       addiu     $4, $0, 0xC
      j          .L80079F10
       addiu     $2, $0, -0x5
  .L80079D10:
      jal        func_80052504
       addu      $5, $0, $0
      addu       $18, $2, $0
      bnez       $18, .L80079D34
       lui       $3, (0x48544D56 >> 16)
      jal        func_80052540
       addu      $4, $17, $0
      j          .L80079F10
       addiu     $2, $0, -0x5
  .L80079D34:
      ori        $3, $3, (0x48544D56 & 0xFFFF)
      addu       $4, $17, $0
      addu       $5, $23, $0
      lui        $2, %hi(D_80079B48)
      addiu      $2, $2, %lo(D_80079B48)
      sw         $2, 0x0($18)
      lui        $2, %hi(D_80079BDC)
      addiu      $2, $2, %lo(D_80079BDC)
      sw         $2, 0x4($18)
      addiu      $2, $0, 0x3
      addiu      $21, $0, 0x1
      lui        $22, %hi(D_80137AC8)
      sw         $17, 0x8($18)
      sw         $3, 0x0($17)
      sw         $0, 0x50($17)
      sw         $0, 0x4C($17)
      sw         $2, 0x60($17)
      sb         $0, 0x78($17)
      sw         $19, 0x34($17)
      sb         $21, 0x7E($17)
      sb         $0, 0x79($17)
      sw         $0, 0x10($17)
      sw         $0, 0x2C($17)
      sw         $0, 0x30($17)
      lw         $3, 0x8($16)
      addiu      $19, $22, %lo(D_80137AC8)
      sw         $16, 0x8($17)
      sw         $18, 0xC($17)
      sw         $0, 0x90($17)
      sw         $2, 0x48($17)
      sw         $0, 0x40($17)
      sw         $0, 0x38($17)
      sw         $0, 0x44($17)
      sw         $0, 0x3C($17)
      sw         $3, 0x4($17)
      lw         $2, 0x24($19)
      lw         $7, 0x58($29)
      addu       $6, $30, $0
      jal        func_8007EFEC
       sw        $2, 0x70($17)
      addu       $4, $17, $0
      addu       $5, $23, $0
      lw         $7, 0x58($29)
      jal        func_8007F12C
       addu      $6, $30, $0
      sw         $0, 0x24($17)
      sw         $0, 0xB0($17)
      sw         $0, 0xB4($17)
      lw         $2, 0x2C($19)
      sb         $21, 0x7B($17)
      sw         $20, 0xA0($17)
      beqz       $20, .L80079E18
       sw        $2, 0x74($17)
      lw         $2, 0x0($20)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $20, $0
  .L80079E18:
      lw         $4, 0x4($17)
      jal        func_80054070
       addu      $5, $17, $0
      addiu      $3, $0, -0x1
      bne        $2, $3, .L80079E48
       nop
      jal        func_80052540
       addu      $4, $17, $0
      jal        func_80052540
       addu      $4, $18, $0
      j          .L80079F10
       addiu     $2, $0, -0x1
  .L80079E48:
      jal        func_8008BBF0
       addu      $4, $17, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      lw         $4, 0xC($17)
      jal        func_80079FA0
       addu      $7, $5, $0
      lw         $2, 0x4($17)
      lw         $4, 0x28($19)
      lw         $16, 0x0($2)
      jal        func_8005236C
       nop
      sb         $2, 0xE0($16)
      addiu      $2, $0, 0x1
      sw         $0, 0x88($16)
      sw         $0, 0x8C($16)
      sw         $0, 0x90($16)
      sw         $0, 0x94($16)
      sb         $21, 0xDC($16)
      sw         $2, 0x10($16)
      sb         $0, 0xDD($16)
      lw         $2, %lo(D_80137AC8)($22)
      sw         $2, 0xA4($16)
      lw         $2, 0x4($19)
      sw         $2, 0xA0($16)
      lw         $2, 0x8($19)
      sw         $2, 0xA8($16)
      lw         $2, 0x10($19)
      sw         $2, 0xAC($16)
      lw         $2, 0x14($19)
      sw         $2, 0xB4($16)
      lw         $4, 0x4($17)
      beqz       $4, .L80079F04
       nop
      lw         $4, 0x4B0($4)
      beqz       $4, .L80079F04
       lui       $6, %hi(D_800ECCB4)
      addu       $5, $0, $0
      addiu      $6, $6, %lo(D_800ECCB4)
      jal        func_8005446C
       addiu     $7, $29, 0x18
      beqz       $2, .L80079F04
       addu      $4, $17, $0
      jal        func_8007D7E8
       addu      $5, $2, $0
  .L80079F04:
      lw         $8, 0x60($29)
      addiu      $2, $0, 0x1
      sw         $18, 0x0($8)
  .L80079F10:
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
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $3, 0x8($4)
      addu       $7, $6, $0
      beqz       $3, .L80079F94
       addiu     $2, $0, -0x4
      lw         $2, 0x2C($3)
      bnez       $2, .L80079F94
       addiu     $2, $0, -0x1
      lw         $2, 0x30($3)
      bnez       $2, .L80079F94
       addiu     $2, $0, -0x1
      addiu      $6, $0, -0x1
      sw         $5, 0x2C($3)
      addu       $4, $5, $0
      sw         $7, 0x30($3)
      lw         $2, 0x20($7)
      lw         $5, 0xC($3)
      jalr       $2
       addu      $7, $6, $0
      addiu      $2, $0, 0x1
  .L80079F94:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_80079FA0
func_80079FA0:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $16, 0x8($4)
      addu       $18, $7, $0
      beqz       $16, .L8007A018
       addiu     $2, $0, -0x4
      lw         $2, 0x10($16)
      beqz       $2, .L80079FDC
       nop
      bnez       $17, .L8007A018
       addiu     $2, $0, -0x1
  .L80079FDC:
      beql       $6, $0, .L80079FF0
       sw        $0, 0x9C($16)
      jal        func_800523C0
       addu      $4, $6, $0
      sw         $2, 0x9C($16)
  .L80079FF0:
      addu       $4, $16, $0
      sw         $18, 0x6C($4)
      lw         $2, 0x30($29)
      sw         $2, 0x68($4)
      lw         $2, 0x34($29)
      addu       $5, $17, $0
      sw         $0, 0x4C($4)
      sw         $0, 0x50($4)
      jal        func_8008BBF8
       sw        $2, 0x64($4)
  .L8007A018:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_8007A030
func_8007A030:
      lw         $2, 0x70($4)
      bgtz       $2, .L8007A054
       addu      $3, $0, $0
      lw         $4, 0x48($4)
      addiu      $2, $0, 0x3
      beq        $4, $2, .L8007A058
       nop
      beqz       $4, .L8007A058
       nop
  .L8007A054:
      addiu      $3, $0, 0x1
  .L8007A058:
      jr         $31
       addu      $2, $3, $0
  .globl func_8007A060
func_8007A060:
      bnez       $4, .L8007A070
       lui       $3, %hi(D_80079B48)
      jr         $31
       addu      $2, $0, $0
  .L8007A070:
      lw         $2, 0x0($4)
      addiu      $3, $3, %lo(D_80079B48)
      xor        $2, $2, $3
      jr         $31
       sltiu     $2, $2, 0x1
  .globl func_8007A084
func_8007A084:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $16, 0x2C($4)
      jal        func_8007A060
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8007A0AC
       addu      $2, $0, $0
      lw         $2, 0x8($16)
  .L8007A0AC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_8007A0BC
func_8007A0BC:
      lw         $3, 0x70($4)
      addiu      $2, $0, 0x3
      bne        $3, $2, .L8007A0D0
       addiu     $2, $0, 0x2
      sw         $2, 0x70($4)
  .L8007A0D0:
      jr         $31
       nop
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $3, 0x8($4)
      addu       $17, $5, $0
      beqz       $3, .L8007A140
       addiu     $2, $0, -0x4
      lw         $2, 0x4($3)
      sw         $17, 0x60($3)
      lw         $2, 0x0($2)
      lw         $16, 0xC0($2)
      beqz       $16, .L8007A140
       addiu     $2, $0, 0x1
  .L8007A110:
      lw         $4, 0x8($16)
      beqz       $4, .L8007A134
       nop
      lw         $2, 0xC($16)
      beqz       $2, .L8007A134
       nop
      lw         $2, 0x10($2)
      jalr       $2
       addu      $5, $17, $0
  .L8007A134:
      lw         $16, 0x10($16)
      bnez       $16, .L8007A110
       addiu     $2, $0, 0x1
  .L8007A140:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
      addiu      $29, $29, -0x40
      sw         $21, 0x2C($29)
      lw         $21, 0x50($29)
      sw         $22, 0x30($29)
      addu       $22, $5, $0
      sw         $23, 0x34($29)
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x38($29)
      sw         $20, 0x28($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      lw         $4, 0x8($4)
      bnez       $19, .L8007A19C
       addu      $23, $6, $0
      j          .L8007A2F8
       addiu     $2, $0, -0x4
  .L8007A19C:
      beqz       $4, .L8007A200
       addiu     $2, $0, 0x1
      beq        $21, $2, .L8007A1B4
       addiu     $2, $0, 0x5
      bne        $21, $2, .L8007A1C4
       nop
  .L8007A1B4:
      beqz       $22, .L8007A2E0
       addiu     $17, $0, -0x4
      beqz       $23, .L8007A2E4
       addiu     $2, $0, 0x5
  .L8007A1C4:
      lw         $7, 0x8($19)
      beql       $7, $0, .L8007A2E0
       addiu     $17, $0, -0x4
      lw         $2, 0xC($19)
      beqz       $2, .L8007A200
       addiu     $2, $0, 0x1
      lw         $3, 0x4($19)
      bne        $3, $2, .L8007A2C8
       addu      $5, $22, $0
      lw         $2, 0x8($7)
      beql       $2, $0, .L8007A2E0
       addiu     $17, $0, -0x4
      lw         $2, 0xC($7)
      bnez       $2, .L8007A208
       nop
  .L8007A200:
      j          .L8007A2E0
       addiu     $17, $0, -0x4
  .L8007A208:
      lw         $18, 0x14($4)
      beqz       $18, .L8007A2C0
       addu      $17, $0, $0
      addiu      $20, $0, 0x1
  .L8007A218:
      lw         $2, 0x8($18)
      beqz       $2, .L8007A24C
       nop
      lw         $2, 0xC($18)
      beqz       $2, .L8007A24C
       addu      $5, $22, $0
      sw         $21, 0x10($29)
      lw         $4, 0x8($18)
      lw         $7, 0xC($19)
      lw         $2, 0x34($2)
      jalr       $2
       addu      $6, $23, $0
      addu       $17, $2, $0
  .L8007A24C:
      beq        $17, $20, .L8007A2F8
       addu      $2, $17, $0
      lw         $2, 0x10($18)
      beqz       $2, .L8007A2AC
       nop
      addu       $16, $2, $0
  .L8007A264:
      lw         $2, 0x0($16)
      beqz       $2, .L8007A298
       nop
      lw         $2, 0x4($16)
      beqz       $2, .L8007A298
       addu      $5, $22, $0
      sw         $21, 0x10($29)
      lw         $4, 0x0($16)
      lw         $7, 0xC($19)
      lw         $2, 0x34($2)
      jalr       $2
       addu      $6, $23, $0
      addu       $17, $2, $0
  .L8007A298:
      beq        $17, $20, .L8007A2F8
       addu      $2, $17, $0
      lw         $16, 0x8($16)
      bnez       $16, .L8007A264
       nop
  .L8007A2AC:
      beq        $17, $20, .L8007A2F8
       addu      $2, $17, $0
      lw         $18, 0x18($18)
      bnez       $18, .L8007A218
       nop
  .L8007A2C0:
      j          .L8007A2F8
       addu      $2, $0, $0
  .L8007A2C8:
      addu       $6, $23, $0
      sw         $19, 0x10($29)
      jal        func_8007D13C
       sw        $21, 0x14($29)
      j          .L8007A2F8
       nop
  .L8007A2E0:
      addiu      $2, $0, 0x5
  .L8007A2E4:
      beq        $21, $2, .L8007A2F8
       addu      $2, $17, $0
      jal        func_80052540
       addu      $4, $19, $0
      addu       $2, $17, $0
  .L8007A2F8:
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
  .globl func_8007A324
func_8007A324:
      addiu      $29, $29, -0x50
      sw         $31, 0x48($29)
      sw         $23, 0x44($29)
      sw         $22, 0x40($29)
      sw         $21, 0x3C($29)
      sw         $20, 0x38($29)
      sw         $19, 0x34($29)
      sw         $18, 0x30($29)
      sw         $17, 0x2C($29)
      sw         $16, 0x28($29)
      lw         $19, 0x8($4)
      lw         $2, 0x4($19)
      addu       $22, $5, $0
      lw         $2, 0x0($2)
      addu       $23, $6, $0
      lw         $17, 0xC0($2)
      beqz       $17, .L8007A40C
       addu      $18, $0, $0
      addiu      $21, $0, 0x2B
      addiu      $20, $0, 0x1
      addiu      $4, $29, 0x10
  .L8007A378:
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x18
      lw         $2, 0x8($17)
      sw         $2, 0x10($29)
      lw         $2, 0xC($17)
      sw         $2, 0x14($29)
      lw         $2, 0x34($17)
      sw         $2, 0x1C($29)
      lw         $16, 0x4($17)
      beqz       $16, .L8007A3F0
       addu      $4, $23, $0
      lbu        $2, 0x10($16)
      bne        $2, $21, .L8007A3F0
       nop
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x14($2)
      beqz       $2, .L8007A3EC
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x4($19)
      lw         $4, 0x0($3)
      lw         $5, 0x14($2)
      jal        func_80063054
       addiu     $4, $4, 0x34
      sw         $2, 0x18($29)
  .L8007A3EC:
      addu       $4, $23, $0
  .L8007A3F0:
      jalr       $22
       addiu     $5, $29, 0x10
      bne        $2, $20, .L8007A40C
       addiu     $18, $18, 0x1
      lw         $17, 0x10($17)
      bnez       $17, .L8007A378
       addiu     $4, $29, 0x10
  .L8007A40C:
      addu       $2, $18, $0
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
  .globl func_8007A43C
func_8007A43C:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $31, 0x20($29)
      sw         $18, 0x18($29)
      bnez       $19, .L8007A468
       sw        $17, 0x14($29)
  .L8007A460:
      j          .L8007A4F8
       addu      $2, $0, $0
  .L8007A468:
      jal        func_80017780
       addu      $4, $19, $0
      lw         $3, 0x4($16)
      lw         $17, 0x0($3)
      lw         $16, 0x48($17)
      beqz       $16, .L8007A4F4
       addu      $18, $2, $0
      addu       $4, $16, $0
  .L8007A488:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      beqz       $2, .L8007A460
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x6
      lw         $2, 0x4($2)
      bne        $2, $18, .L8007A4DC
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x6
      addiu      $4, $17, 0x34
      addu       $5, $19, $0
      lw         $3, 0x40($17)
      lw         $6, 0x0($2)
      lw         $3, 0x1C($3)
      jalr       $3
       addu      $7, $18, $0
      beqz       $2, .L8007A4F4
       addu      $4, $16, $0
  .L8007A4DC:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $16, 0x0($2)
      bnez       $16, .L8007A488
       addu      $4, $16, $0
  .L8007A4F4:
      addu       $2, $16, $0
  .L8007A4F8:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $17, 0x8($4)
      beqz       $17, .L8007A5D4
       addiu     $2, $0, -0x4
      beqz       $5, .L8007A5D4
       nop
      lbu        $2, 0x0($5)
      beqz       $2, .L8007A5D4
       addiu     $2, $0, -0x4
      jal        func_8007A43C
       addu      $4, $17, $0
      addu       $16, $2, $0
      bnez       $16, .L8007A560
       addu      $4, $16, $0
      j          .L8007A5D4
       addiu     $2, $0, -0x4
  .L8007A560:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lbu        $3, 0x22($2)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L8007A5D4
       addiu     $2, $0, 0x1
      lbu        $2, 0x10($16)
      bne        $2, $3, .L8007A5C8
       addu      $4, $17, $0
      jal        func_8007D4AC
       addu      $4, $16, $0
      beql       $2, $0, .L8007A5D4
       addiu     $2, $0, 0x1
      lw         $4, 0x8($2)
      beql       $4, $0, .L8007A5D4
       addiu     $2, $0, 0x1
      lw         $2, 0xC($2)
      beql       $2, $0, .L8007A5D4
       addiu     $2, $0, 0x1
      lui        $5, %hi(D_800ED060)
      lw         $2, 0x3C($2)
      jalr       $2
       addiu     $5, $5, %lo(D_800ED060)
      j          .L8007A5D4
       addiu     $2, $0, 0x1
  .L8007A5C8:
      jal        func_8008678C
       addu      $5, $16, $0
      addiu      $2, $0, 0x1
  .L8007A5D4:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $18, 0x18($29)
      addu       $18, $7, $0
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $17, 0x8($4)
      beqz       $17, .L8007A640
       addiu     $19, $0, 0x1
      beqz       $5, .L8007A768
       addiu     $2, $0, -0x4
      lbu        $2, 0x0($5)
      beqz       $2, .L8007A768
       addiu     $2, $0, -0x4
      jal        func_8007A43C
       addu      $4, $17, $0
      addu       $16, $2, $0
      bnez       $16, .L8007A648
       addu      $4, $16, $0
  .L8007A640:
      j          .L8007A768
       addiu     $2, $0, -0x4
  .L8007A648:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lbu        $3, 0x22($2)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L8007A768
       addiu     $2, $0, -0xD
      lbu        $2, 0x10($16)
      addiu      $3, $2, -0x2
      sltiu      $2, $3, 0x34
      beqz       $2, .L8007A760
       lui       $2, %hi(jtbl_800F0A58)
      addiu      $2, $2, %lo(jtbl_800F0A58)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8007A690
.L8007A690:
      beqz       $20, .L8007A6C0
       addu      $18, $0, $0
      lbu        $3, 0x0($20)
      addiu      $2, $0, 0x31
      beql       $3, $2, .L8007A6C0
       addiu     $18, $0, 0x1
      jal        func_800521D8
       addu      $4, $20, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8007A6C4
       addu      $4, $17, $0
      addiu      $18, $0, 0x1
  .L8007A6C0:
      addu       $4, $17, $0
  .L8007A6C4:
      addu       $5, $16, $0
      jal        func_800865F0
       addu      $6, $18, $0
      j          .L8007A768
       addu      $2, $19, $0
  .globl .L8007A6D8
.L8007A6D8:
      addu       $4, $17, $0
      addu       $5, $16, $0
      jal        func_800871EC
       addu      $6, $20, $0
      j          .L8007A768
       addu      $2, $19, $0
  .globl .L8007A6F0
.L8007A6F0:
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $17, $0
      lw         $5, 0x0($2)
      jal        func_800864E4
       addu      $6, $20, $0
      j          .L8007A768
       addu      $2, $19, $0
  .globl .L8007A714
.L8007A714:
      jal        func_8007D4AC
       addu      $4, $16, $0
      beqz       $2, .L8007A764
       addiu     $19, $0, -0x1
      lw         $4, 0x8($2)
      beql       $4, $0, .L8007A768
       addu      $2, $19, $0
      lw         $2, 0xC($2)
      beqz       $2, .L8007A764
       lui       $5, %hi(D_800ED060)
      addiu      $5, $5, %lo(D_800ED060)
      addu       $6, $20, $0
      lw         $2, 0x40($2)
      jalr       $2
       addu      $7, $18, $0
      j          .L8007A764
       addu      $19, $2, $0
  .globl .L8007A758
.L8007A758:
      j          .L8007A764
       addiu     $19, $0, -0x1
  .globl .L8007A760
.L8007A760:
      addu       $19, $0, $0
  .L8007A764:
      addu       $2, $19, $0
  .L8007A768:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
      addiu      $29, $29, -0x30
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $19, 0x1C($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $17, 0x8($4)
      beqz       $17, .L8007A7E4
       addiu     $21, $0, 0x1
      beqz       $5, .L8007A9A0
       addiu     $2, $0, -0x4
      lbu        $2, 0x0($5)
      beqz       $2, .L8007A9A0
       addiu     $2, $0, -0x4
      jal        func_8007A43C
       addu      $4, $17, $0
      addu       $16, $2, $0
      bnez       $16, .L8007A7EC
       addu      $4, $16, $0
  .L8007A7E4:
      j          .L8007A9A0
       addiu     $2, $0, -0x4
  .L8007A7EC:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lbu        $3, 0x22($2)
      addiu      $2, $0, 0x2
      beq        $3, $2, .L8007A814
       addiu     $2, $0, 0x17
      lbu        $3, 0x10($16)
      bne        $3, $2, .L8007A9A0
       addiu     $2, $0, -0xD
  .L8007A814:
      lbu        $2, 0x10($16)
      addiu      $3, $2, -0x2
      sltiu      $2, $3, 0x34
      beqz       $2, .L8007A998
       lui       $2, %hi(jtbl_800F0B28)
      addiu      $2, $2, %lo(jtbl_800F0B28)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8007A840
.L8007A840:
      addu       $4, $17, $0
      jal        func_8008669C
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8007A85C
       addiu     $3, $0, 0x30
      addiu      $3, $0, 0x31
  .L8007A85C:
      sb         $3, 0x0($20)
      j          .L8007A99C
       sb        $0, 0x1($20)
  .globl .L8007A868
.L8007A868:
      addu       $4, $17, $0
      addu       $5, $16, $0
      addu       $6, $20, $0
      jal        func_80087330
       addu      $7, $19, $0
      addu       $3, $2, $0
      slt        $2, $3, $19
      bnez       $2, .L8007A8C4
       addu      $2, $20, $3
      j          .L8007A8D0
       addu      $2, $19, $20
  .globl .L8007A894
.L8007A894:
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $17, $0
      lw         $5, 0x0($2)
      addu       $6, $20, $0
      jal        func_80086570
       addu      $7, $19, $0
      addu       $3, $2, $0
      slt        $2, $3, $19
      beqz       $2, .L8007A8CC
       addu      $2, $20, $3
  .L8007A8C4:
      j          .L8007A99C
       sb        $0, 0x0($2)
  .L8007A8CC:
      addu       $2, $19, $20
  .L8007A8D0:
      j          .L8007A99C
       sb        $0, -0x1($2)
  .globl .L8007A8D8
.L8007A8D8:
      jal        func_8007D4AC
       addu      $4, $16, $0
      beqz       $2, .L8007A99C
       addiu     $21, $0, -0x1
      lw         $4, 0x8($2)
      beql       $4, $0, .L8007A9A0
       addu      $2, $21, $0
      lw         $2, 0xC($2)
      beqz       $2, .L8007A99C
       lui       $5, %hi(D_800ED060)
      addiu      $5, $5, %lo(D_800ED060)
      addu       $6, $20, $0
      lw         $2, 0x44($2)
      jalr       $2
       addu      $7, $19, $0
      j          .L8007A99C
       addu      $21, $2, $0
  .globl .L8007A91C
.L8007A91C:
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $18, 0x4($2)
      sltu       $2, $18, $19
      beql       $2, $0, .L8007A938
       addiu     $18, $19, -0x1
  .L8007A938:
      beql       $17, $0, .L8007A99C
       addiu     $21, $0, -0x1
      lw         $2, 0x4($17)
      beql       $2, $0, .L8007A99C
       addiu     $21, $0, -0x1
      lw         $2, 0x0($2)
      beqz       $2, .L8007A990
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $3, 0x4($17)
      lw         $4, 0x0($3)
      lw         $5, 0x0($2)
      jal        func_80063054
       addiu     $4, $4, 0x34
      addu       $4, $20, $0
      addu       $5, $2, $0
      jal        func_80052310
       addu      $6, $18, $0
      addu       $2, $20, $18
      j          .L8007A99C
       sb        $0, 0x0($2)
  .globl .L8007A990
.L8007A990:
      j          .L8007A99C
       addiu     $21, $0, -0x1
  .globl .L8007A998
.L8007A998:
      addu       $21, $0, $0
  .L8007A99C:
      addu       $2, $21, $0
  .L8007A9A0:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $17, 0x8($4)
      beqz       $17, .L8007AB10
       addiu     $2, $0, -0x4
      beqz       $5, .L8007AB10
       nop
      lbu        $2, 0x0($5)
      beqz       $2, .L8007AB10
       addiu     $2, $0, -0x4
      jal        func_8007A43C
       addu      $4, $17, $0
      addu       $16, $2, $0
      bnez       $16, .L8007AA10
       addu      $4, $16, $0
      j          .L8007AB10
       addiu     $2, $0, -0x4
  .L8007AA10:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lbu        $3, 0x22($2)
      addiu      $2, $0, 0x2
      beq        $3, $2, .L8007AA38
       addiu     $2, $0, 0x17
      lbu        $3, 0x10($16)
      bne        $3, $2, .L8007AB10
       addiu     $2, $0, -0xD
  .L8007AA38:
      lbu        $2, 0x10($16)
      addiu      $3, $2, -0x2
      sltiu      $2, $3, 0x34
      beqz       $2, .L8007AB0C
       lui       $2, %hi(jtbl_800F0BF8)
      addiu      $2, $2, %lo(jtbl_800F0BF8)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8007AA64
.L8007AA64:
      j          .L8007AB10
       addiu     $2, $0, 0x2
  .globl .L8007AA6C
.L8007AA6C:
      addu       $4, $17, $0
      addu       $5, $16, $0
      addu       $6, $0, $0
      jal        func_80087330
       addu      $7, $6, $0
      j          .L8007AB10
       nop
  .globl .L8007AA88
.L8007AA88:
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $17, $0
      lw         $5, 0x0($2)
      addu       $6, $0, $0
      jal        func_80086570
       addu      $7, $6, $0
      j          .L8007AB10
       nop
  .globl .L8007AAB0
.L8007AAB0:
      jal        func_8007D4AC
       addu      $4, $16, $0
      beql       $2, $0, .L8007AB10
       addiu     $2, $0, -0x1
      lw         $4, 0x8($2)
      beql       $4, $0, .L8007AB10
       addiu     $2, $0, -0x1
      lw         $2, 0xC($2)
      beqz       $2, .L8007AAEC
       lui       $5, %hi(D_800ED060)
      lw         $2, 0x48($2)
      jalr       $2
       addiu     $5, $5, %lo(D_800ED060)
      j          .L8007AB10
       nop
  .globl .L8007AAEC
.L8007AAEC:
      j          .L8007AB10
       addiu     $2, $0, -0x1
  .globl .L8007AAF4
.L8007AAF4:
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $2, 0x4($2)
      j          .L8007AB10
       addiu     $2, $2, 0x1
  .globl .L8007AB0C
.L8007AB0C:
      addu       $2, $0, $0
  .L8007AB10:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
      addiu      $29, $29, -0x28
      sw         $31, 0x20($29)
      lw         $3, 0x8($4)
      lw         $2, 0x2C($3)
      beqz       $2, .L8007AB48
       addu      $8, $6, $0
      lw         $4, 0x30($3)
      bnez       $4, .L8007AB50
       addu      $6, $5, $0
  .L8007AB48:
      j          .L8007AB80
       addiu     $2, $0, -0x4
  .L8007AB50:
      lw         $2, 0x38($29)
      sw         $2, 0x14($29)
      lw         $2, 0x3C($29)
      sw         $2, 0x18($29)
      lw         $2, 0x40($29)
      sw         $7, 0x10($29)
      sw         $2, 0x1C($29)
      lw         $2, 0x14($4)
      lw         $4, 0x2C($3)
      lw         $5, 0xC($3)
      jalr       $2
       addu      $7, $8, $0
  .L8007AB80:
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
      addiu      $29, $29, -0x30
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $31, 0x28($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      lw         $17, 0x8($19)
      beqz       $17, .L8007ADA8
       addiu     $2, $0, -0x4
      lw         $2, 0x60($17)
      addiu      $3, $0, 0x1
      bnel       $2, $3, .L8007ABC4
       sw        $3, 0x60($17)
  .L8007ABC4:
      lw         $4, 0x90($17)
      beqz       $4, .L8007ABDC
       nop
      jal        func_80052488
       nop
      sw         $0, 0x90($17)
  .L8007ABDC:
      lw         $4, 0x14($17)
      beqz       $4, .L8007AC58
       nop
      addu       $16, $4, $0
  .L8007ABEC:
      lw         $2, 0x4($16)
      lw         $18, 0x18($16)
      beql       $2, $0, .L8007AC18
       addu      $16, $18, $0
      addiu      $4, $17, 0x14
      addu       $5, $0, $0
      sw         $0, 0x10($29)
      lw         $6, 0x4($16)
      jal        func_8007FBBC
       addu      $7, $5, $0
      addu       $16, $18, $0
  .L8007AC18:
      bnez       $16, .L8007ABEC
       nop
      lw         $16, 0x14($17)
      beqz       $16, .L8007AC58
       nop
  .L8007AC2C:
      lw         $4, 0x4($16)
      lw         $18, 0x18($16)
      beqz       $4, .L8007AC44
       nop
      jal        func_80052540
       nop
  .L8007AC44:
      jal        func_80052540
       addu      $4, $16, $0
      addu       $16, $18, $0
      bnez       $16, .L8007AC2C
       nop
  .L8007AC58:
      lw         $2, 0x30($17)
      beqz       $2, .L8007AC80
       nop
      lw         $4, 0x2C($17)
      beqz       $4, .L8007AC80
       nop
      lw         $5, 0xC($17)
      lw         $2, 0x48($2)
      jalr       $2
       nop
  .L8007AC80:
      lbu        $2, 0x78($17)
      beql       $2, $0, .L8007AC9C
       addu      $4, $17, $0
      addu       $4, $19, $0
      jal        func_8007C590
       addiu     $5, $0, 0x3
      addu       $4, $17, $0
  .L8007AC9C:
      jal        func_8007F7F8
       addiu     $5, $0, 0x3
      jal        func_8007C140
       addu      $4, $17, $0
      jal        func_8007BD68
       addu      $4, $17, $0
      lw         $2, 0x10($17)
      beqz       $2, .L8007ACC8
       nop
      jal        func_8008BE90
       addu      $4, $17, $0
  .L8007ACC8:
      lw         $4, 0x1C($17)
      jal        func_80052540
       nop
      lw         $4, 0x4($17)
      sw         $0, 0x1C($17)
      beqz       $4, .L8007AD3C
       sw        $0, 0x18($17)
      jal        func_800540A4
       addu      $5, $17, $0
      lw         $2, 0x34($17)
      andi       $2, $2, 0x1
      bnez       $2, .L8007AD30
       nop
      lw         $4, 0x2C($17)
      beqz       $4, .L8007AD3C
       nop
      lw         $2, 0x30($17)
      beqz       $2, .L8007AD3C
       nop
      lw         $5, 0x8($17)
      lw         $2, 0x38($2)
      jalr       $2
       nop
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8007AD3C
       nop
  .L8007AD30:
      lw         $4, 0x8($17)
      jal        func_800541B4
       nop
  .L8007AD3C:
      lw         $4, 0xA4($17)
      jal        func_80052540
       nop
      lw         $4, 0xAC($17)
      beqz       $4, .L8007AD5C
       nop
      jal        func_80051C04
       nop
  .L8007AD5C:
      lw         $4, 0xA0($17)
      beqz       $4, .L8007AD78
       nop
      lw         $2, 0x0($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L8007AD78:
      lw         $4, 0x98($17)
      jal        func_80052540
       nop
      lw         $4, 0x9C($17)
      jal        func_80052540
       nop
      addu       $4, $17, $0
      jal        func_80052540
       sw        $0, 0x0($4)
      jal        func_80052540
       addu      $4, $19, $0
      addiu      $2, $0, 0x1
  .L8007ADA8:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $31, 0x20($29)
      sw         $16, 0x18($29)
      beqz       $4, .L8007ADF4
       sw        $0, 0x10($29)
      lw         $4, 0x8($4)
      beqz       $4, .L8007AE44
       addiu     $2, $0, -0x4
      bnez       $17, .L8007ADFC
       nop
  .L8007ADF4:
      j          .L8007AE44
       addiu     $2, $0, -0x4
  .L8007ADFC:
      jal        func_80065884
       addiu     $6, $29, 0x10
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8007AE44
       addu      $2, $16, $0
      lw         $2, 0x0($17)
      lw         $5, 0x10($29)
      lw         $2, 0x3C($2)
      jalr       $2
       addu      $4, $17, $0
      lw         $4, 0x10($29)
      lw         $3, 0x0($4)
      addu       $16, $2, $0
      lw         $2, 0x4($3)
      jalr       $2
       nop
      addu       $2, $16, $0
  .L8007AE44:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
  .globl func_8007AE58
func_8007AE58:
      addiu      $29, $29, -0x28
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      beqz       $4, .L8007AE8C
       sw        $16, 0x10($29)
      lw         $4, 0x4($4)
      beqz       $4, .L8007AF08
       addiu     $2, $0, -0x1
      lw         $4, 0x0($4)
      bnez       $4, .L8007AE94
       nop
  .L8007AE8C:
      j          .L8007AF08
       addiu     $2, $0, -0x1
  .L8007AE94:
      lw         $16, 0xC0($4)
      beqz       $16, .L8007AF04
       addiu     $19, $0, 0x6
      addiu      $17, $0, 0x1
      addiu      $18, $0, 0x7
  .L8007AEA8:
      lbu        $2, 0x38($16)
      beql       $2, $0, .L8007AF08
       addiu     $2, $0, 0x1
      beql       $2, $19, .L8007AF08
       addiu     $2, $0, 0x1
      beql       $2, $17, .L8007AF08
       addiu     $2, $0, 0x1
      beq        $2, $18, .L8007AF08
       addiu     $2, $0, 0x1
      lw         $2, 0xC($16)
      beqz       $2, .L8007AEF8
       nop
      lw         $2, 0x20($2)
      beqz       $2, .L8007AEF8
       addiu     $5, $0, 0x8
      lw         $4, 0x8($16)
      jalr       $2
       addu      $6, $0, $0
      beq        $2, $17, .L8007AF08
       addiu     $2, $0, 0x1
  .L8007AEF8:
      lw         $16, 0x10($16)
      bnez       $16, .L8007AEA8
       nop
  .L8007AF04:
      addu       $2, $0, $0
  .L8007AF08:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
  .globl func_8007AF24
func_8007AF24:
      jr         $31
       addu      $2, $0, $0
  .globl func_8007AF2C
func_8007AF2C:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $2, 0x1C($4)
      lw         $17, 0x4($4)
      blez       $2, .L8007AF60
       addu      $16, $0, $0
      lw         $2, 0x18($4)
      blez       $2, .L8007AF60
       nop
      lui        $16, (0xF4240 >> 16)
      ori        $16, $16, (0xF4240 & 0xFFFF)
  .L8007AF60:
      beqz       $17, .L8007AFB4
       addiu     $2, $0, 0x2
      lbu        $3, 0x10($17)
      bne        $3, $2, .L8007AF8C
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $2, $0
      lbu        $2, 0x18($2)
      andi       $2, $2, 0x10
      bnel       $2, $0, .L8007AF8C
       addiu     $16, $16, 0x1F4
  .L8007AF8C:
      lhu        $2, 0x0($17)
      andi       $2, $2, 0x1
      beqz       $2, .L8007AFAC
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $2, 0x4($2)
      addu       $16, $16, $2
  .L8007AFAC:
      lw         $2, 0x4($17)
      addu       $16, $16, $2
  .L8007AFB4:
      addu       $2, $16, $0
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl D_8007AFCC
D_8007AFCC:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $4, 0x0($4)
      jal        func_8007AF2C
       addu      $16, $5, $0
      lw         $4, 0x0($16)
      jal        func_8007AF2C
       addu      $16, $2, $0
      addu       $3, $2, $0
      sltu       $2, $16, $3
      bnez       $2, .L8007B004
       addiu     $2, $0, -0x1
      sltu       $2, $3, $16
  .L8007B004:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_8007B014
func_8007B014:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $3, 0x4($4)
      beqz       $3, .L8007B058
       addu      $2, $0, $0
      lw         $4, 0x0($3)
      beqz       $4, .L8007B058
       nop
      lw         $4, 0x2C($4)
      beqz       $4, .L8007B058
       nop
      lw         $5, 0x20($5)
      beqz       $5, .L8007B058
       nop
      jal        func_800175C0
       nop
      sltiu      $2, $2, 0x1
  .L8007B058:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_8007B064
func_8007B064:
      lbu        $3, 0x38($4)
      beqz       $3, .L8007B090
       andi      $2, $5, 0xFF
      beqz       $2, .L8007B098
       addiu     $2, $0, 0x6
      beq        $3, $2, .L8007B090
       addiu     $2, $0, 0x1
      beq        $3, $2, .L8007B090
       addiu     $2, $0, 0x7
      bne        $3, $2, .L8007B098
       nop
  .L8007B090:
      jr         $31
       addiu     $2, $0, 0x1
  .L8007B098:
      jr         $31
       addu      $2, $0, $0
  .globl func_8007B0A0
func_8007B0A0:
      addiu      $29, $29, -0x20
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($4)
      lw         $2, 0x0($2)
      addu       $18, $5, $0
      lw         $16, 0xC0($2)
      beqz       $16, .L8007B0F0
       addu      $17, $0, $0
      addu       $4, $16, $0
  .L8007B0D0:
      jal        func_8007B064
       andi      $5, $18, 0xFF
      andi       $2, $2, 0xFF
      bnel       $2, $0, .L8007B0E4
       addiu     $17, $17, 0x1
  .L8007B0E4:
      lw         $16, 0x10($16)
      bnez       $16, .L8007B0D0
       addu      $4, $16, $0
  .L8007B0F0:
      addu       $2, $17, $0
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_8007B10C
func_8007B10C:
      addiu      $29, $29, -0x28
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($5)
      addu       $19, $4, $0
      lw         $2, 0x0($2)
      addu       $17, $19, $0
      lw         $16, 0xC0($2)
      beqz       $16, .L8007B16C
       addu      $18, $6, $0
      addu       $4, $16, $0
  .L8007B144:
      jal        func_8007B064
       andi      $5, $18, 0xFF
      andi       $2, $2, 0xFF
      beqz       $2, .L8007B160
       nop
      sw         $16, 0x0($17)
      addiu      $17, $17, 0x4
  .L8007B160:
      lw         $16, 0x10($16)
      bnez       $16, .L8007B144
       addu      $4, $16, $0
  .L8007B16C:
      addu       $2, $19, $0
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
  .globl func_8007B18C
func_8007B18C:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      addu       $4, $0, $0
      addu       $5, $4, $0
      addu       $6, $17, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      jal        func_80054380
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8007B1F8
       addu      $18, $16, $0
      addu       $4, $17, $0
      lui        $5, %hi(D_800ECCBC)
      addiu      $5, $5, %lo(D_800ECCBC)
      lui        $6, %hi(D_800ECCC4)
      addiu      $6, $6, %lo(D_800ECCC4)
      jal        func_80054530
       addiu     $7, $0, -0x1
      addu       $16, $2, $0
      beq        $16, $18, .L8007B1FC
       addu      $2, $16, $0
      lw         $4, 0x0($17)
      jal        func_800546DC
       nop
  .L8007B1F8:
      addu       $2, $16, $0
  .L8007B1FC:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_8007B214
func_8007B214:
      addiu      $29, $29, -0x130
      sw         $30, 0x128($29)
      addu       $30, $4, $0
      sw         $21, 0x11C($29)
      addu       $21, $5, $0
      sw         $16, 0x108($29)
      addiu      $16, $0, 0x1
      sw         $31, 0x12C($29)
      sw         $23, 0x124($29)
      sw         $22, 0x120($29)
      sw         $20, 0x118($29)
      sw         $19, 0x114($29)
      sw         $18, 0x110($29)
      sw         $17, 0x10C($29)
      lw         $2, 0x20($21)
      beqz       $2, .L8007B2CC
       addu      $17, $6, $0
      lbu        $2, 0x0($2)
      beqz       $2, .L8007B2CC
       addu      $4, $30, $0
      jal        func_8007B014
       addu      $5, $21, $0
      addu       $4, $21, $0
      andi       $18, $17, 0xFF
      addu       $5, $18, $0
      jal        func_8007B064
       addu      $17, $2, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8007BB2C
       andi      $2, $17, 0xFF
      bnez       $2, .L8007BB30
       addu      $2, $16, $0
      sw         $0, 0xF8($29)
      sw         $0, 0xFC($29)
      bnez       $18, .L8007B2D4
       sw        $0, 0x100($29)
      lw         $2, 0x4($21)
      beqz       $2, .L8007B2D8
       addiu     $4, $0, 0x14
      lbu        $3, 0x10($2)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L8007B2D8
       lui       $2, %hi(D_80137AE3)
      lbu        $2, %lo(D_80137AE3)($2)
      bnez       $2, .L8007B2D8
       nop
  .L8007B2CC:
      j          .L8007BB30
       addiu     $2, $0, 0x1
  .L8007B2D4:
      addiu      $4, $0, 0x14
  .L8007B2D8:
      jal        func_80052504
       addu      $5, $0, $0
      addu       $23, $2, $0
      beqz       $23, .L8007BB30
       addiu     $2, $0, -0x5
      lw         $4, 0x4($21)
      beqz       $4, .L8007B358
       addiu     $2, $0, 0x2
      lbu        $3, 0x10($4)
      bne        $3, $2, .L8007B35C
       addiu     $2, $0, -0x5
      lhu        $2, 0x2($4)
      andi       $2, $2, 0x10
      beqz       $2, .L8007B35C
       addiu     $2, $0, -0x5
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x4($2)
      beqz       $2, .L8007B35C
       addiu     $2, $0, -0x5
      lw         $4, 0x4($21)
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x4($2)
      lw         $3, 0x4($2)
      addiu      $2, $0, 0x4
      bne        $3, $2, .L8007B35C
       addiu     $2, $0, -0x5
      lw         $5, 0x4($21)
      jal        func_80056184
       addu      $4, $30, $0
      addu       $16, $2, $0
  .L8007B358:
      addiu      $2, $0, -0x5
  .L8007B35C:
      beq        $16, $2, .L8007BB30
       nop
      lui        $2, (0x52515752 >> 16)
      ori        $2, $2, (0x52515752 & 0xFFFF)
      sw         $2, 0x0($23)
      lbu        $3, 0x38($21)
      addiu      $2, $0, 0x7
      bne        $3, $2, .L8007B38C
       nop
      lw         $8, 0x100($29)
      ori        $8, $8, 0x4
      sw         $8, 0x100($29)
  .L8007B38C:
      lw         $2, 0x4($30)
      lw         $2, 0x0($2)
      lw         $2, 0xB8($2)
      beql       $2, $0, .L8007B3B8
       addiu     $2, $0, 0x3
      lw         $2, 0x0($2)
      bne        $21, $2, .L8007B3B8
       addiu     $2, $0, 0x3
      lw         $8, 0x100($29)
      ori        $8, $8, 0x10
      sw         $8, 0x100($29)
  .L8007B3B8:
      sw         $2, 0x48($30)
      lbu        $17, 0x38($21)
      addiu      $2, $0, 0x2
      sb         $2, 0x38($21)
      sw         $0, 0x4($23)
      sw         $21, 0x8($23)
      sw         $21, 0xC($23)
      lw         $8, 0x100($29)
      lw         $20, 0x4($21)
      ori        $8, $8, 0x8
      beqz       $20, .L8007B9EC
       sw        $8, 0x100($29)
      lbu        $3, 0x10($20)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L8007B7DC
       addiu     $2, $0, 0x2B
      sw         $0, 0xE0($29)
      jal        func_8007B18C
       addiu     $4, $29, 0xE0
      addu       $16, $2, $0
      bgez       $16, .L8007B418
       addu      $4, $20, $0
      j          .L8007BB24
       addu      $4, $23, $0
  .L8007B418:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $8, 0x100($29)
      lbu        $2, 0x18($2)
      ori        $8, $8, 0x10
      andi       $2, $2, 0x2
      bnez       $2, .L8007B7BC
       sw        $8, 0x100($29)
      addu       $22, $0, $0
      addu       $4, $20, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x8($2)
      beqz       $2, .L8007B51C
       addu      $19, $22, $0
      addu       $4, $20, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x8($2)
      jal        func_80056C94
       nop
      addu       $19, $2, $0
      blez       $19, .L8007B51C
       nop
      sll        $16, $19, 2
      addu       $4, $16, $0
      jal        func_80052504
       addu      $5, $22, $0
      bnez       $2, .L8007B498
       sw        $2, 0xF8($29)
      j          .L8007B850
       addu      $4, $23, $0
  .L8007B498:
      addu       $4, $16, $0
      jal        func_80052504
       addu      $5, $0, $0
      bnez       $2, .L8007B4C0
       sw        $2, 0xFC($29)
      lw         $4, 0xF8($29)
      jal        func_80052540
       nop
      j          .L8007B850
       addu      $4, $23, $0
  .L8007B4C0:
      slt        $2, $22, $19
      beqz       $2, .L8007B51C
       addu      $16, $0, $0
      lw         $18, 0xFC($29)
      lw         $17, 0xF8($29)
  .L8007B4D4:
      addu       $4, $20, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $5, $16, $0
      addiu      $6, $29, 0xE4
      sw         $0, 0x10($29)
      lw         $4, 0x8($2)
      jal        func_80056F40
       addiu     $7, $29, 0xE8
      lw         $2, 0xE4($29)
      lw         $3, 0xE8($29)
      addiu      $16, $16, 0x1
      sw         $2, 0x0($17)
      sw         $3, 0x0($18)
      addiu      $18, $18, 0x4
      slt        $2, $16, $19
      bnez       $2, .L8007B4D4
       addiu     $17, $17, 0x4
  .L8007B51C:
      lw         $2, 0x28($21)
      bnez       $2, .L8007B54C
       addiu     $4, $0, 0x14
      lw         $2, 0x24($21)
      bnez       $2, .L8007B54C
       nop
      lw         $2, 0x2C($21)
      bnez       $2, .L8007B54C
       nop
      lw         $2, 0x30($21)
      beqz       $2, .L8007B5A8
       nop
  .L8007B54C:
      jal        func_80052504
       addu      $5, $0, $0
      addu       $22, $2, $0
      bnez       $22, .L8007B580
       nop
      jal        func_80052540
       addu      $4, $23, $0
      lw         $4, 0xF8($29)
      jal        func_80052540
       nop
      lw         $4, 0xFC($29)
      j          .L8007B850
       nop
  .L8007B580:
      lw         $2, 0x28($21)
      sw         $2, 0x0($22)
      lw         $2, 0x24($21)
      sw         $2, 0x4($22)
      lw         $2, 0x2C($21)
      sw         $2, 0x8($22)
      lw         $2, 0x30($21)
      sw         $2, 0xC($22)
      lw         $2, 0x20($21)
      sw         $2, 0x10($22)
  .L8007B5A8:
      beqz       $22, .L8007B670
       addu      $17, $0, $0
      lw         $2, 0x24($21)
      beqz       $2, .L8007B670
       addiu     $4, $29, 0x20
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x3C
      addiu      $17, $30, 0x14
      addu       $4, $17, $0
      addu       $5, $21, $0
      lw         $2, 0x24($5)
      lw         $3, 0xE0($29)
      lw         $8, 0xF8($29)
      addu       $6, $0, $0
      sw         $8, 0x40($29)
      lw         $8, 0xFC($29)
      addu       $7, $6, $0
      sw         $22, 0x2C($29)
      sw         $19, 0x3C($29)
      sw         $2, 0x20($29)
      sw         $3, 0x30($29)
      sw         $8, 0x44($29)
      jal        func_8007FA4C
       sw        $23, 0x10($29)
      addu       $6, $23, $0
      lui        $2, %hi(D_800ED7E4)
      lw         $3, 0x30($30)
      lw         $8, 0x100($29)
      addiu      $2, $2, %lo(D_800ED7E4)
      sw         $2, 0x14($29)
      addiu      $2, $23, 0x10
      sw         $0, 0x18($29)
      sw         $2, 0x1C($29)
      sw         $8, 0x10($29)
      lw         $4, 0x2C($30)
      lw         $5, 0xC($30)
      lw         $2, 0x14($3)
      jalr       $2
       addiu     $7, $29, 0x20
      addu       $16, $2, $0
      bgez       $16, .L8007B794
       addu      $4, $17, $0
      sw         $0, 0x10($29)
      addu       $5, $0, $0
      addu       $6, $23, $0
      jal        func_8007FBBC
       addu      $7, $5, $0
      j          .L8007B794
       nop
  .L8007B670:
      addiu      $4, $29, 0x20
      addu       $5, $17, $0
      jal        func_80016140
       addiu     $6, $0, 0x3C
      lw         $4, 0x4($30)
      lw         $5, 0x20($21)
      jal        func_80065874
       addiu     $16, $0, 0x1
      andi       $2, $2, 0xFF
      beqz       $2, .L8007B6E4
       addiu     $4, $0, 0x401
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      beqz       $17, .L8007B6DC
       addu      $4, $17, $0
      lw         $5, 0x20($21)
      jal        func_80052310
       addiu     $6, $0, 0x4
      addu       $5, $17, $0
      lw         $4, 0x4($30)
      jal        func_8006587C
       addiu     $6, $0, 0x4
      bnel       $2, $16, .L8007B6D4
       sb        $0, 0x0($17)
  .L8007B6D4:
      j          .L8007B6EC
       sw        $17, 0x20($29)
  .L8007B6DC:
      j          .L8007B6EC
       addiu     $16, $0, -0x5
  .L8007B6E4:
      lw         $2, 0x20($21)
      sw         $2, 0x20($29)
  .L8007B6EC:
      lw         $8, 0xF8($29)
      lw         $2, 0xE0($29)
      sw         $8, 0x40($29)
      lw         $8, 0xFC($29)
      sw         $22, 0x2C($29)
      sw         $19, 0x3C($29)
      sw         $2, 0x30($29)
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8007B78C
       sw        $8, 0x44($29)
      addiu      $18, $30, 0x14
      addu       $4, $18, $0
      addu       $5, $21, $0
      addu       $6, $0, $0
      addu       $7, $6, $0
      jal        func_8007FA4C
       sw        $23, 0x10($29)
      addu       $6, $23, $0
      lui        $2, %hi(D_800ED7E4)
      lw         $3, 0x30($30)
      lw         $8, 0x100($29)
      addiu      $2, $2, %lo(D_800ED7E4)
      sw         $2, 0x14($29)
      addiu      $2, $23, 0x10
      sw         $0, 0x18($29)
      sw         $2, 0x1C($29)
      sw         $8, 0x10($29)
      lw         $4, 0x2C($30)
      lw         $5, 0xC($30)
      lw         $2, 0x14($3)
      jalr       $2
       addiu     $7, $29, 0x20
      addu       $16, $2, $0
      bgez       $16, .L8007B78C
       addu      $4, $18, $0
      sw         $0, 0x10($29)
      addu       $5, $0, $0
      addu       $6, $23, $0
      jal        func_8007FBBC
       addu      $7, $5, $0
  .L8007B78C:
      jal        func_80052540
       addu      $4, $17, $0
  .L8007B794:
      lw         $4, 0xF8($29)
      jal        func_80052540
       nop
      lw         $4, 0xFC($29)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $22, $0
      j          .L8007B7C0
       nop
  .L8007B7BC:
      sb         $17, 0x38($21)
  .L8007B7C0:
      lw         $4, 0xE0($29)
      beqz       $4, .L8007BB30
       addu      $2, $16, $0
      jal        func_800546DC
       nop
      j          .L8007BB30
       addu      $2, $16, $0
  .L8007B7DC:
      bne        $3, $2, .L8007B9F0
       addu      $17, $0, $0
      addu       $19, $0, $0
      addu       $4, $20, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x4($2)
      beqz       $2, .L8007B8BC
       addu      $22, $19, $0
      addu       $4, $20, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x4($2)
      jal        func_80056C94
       nop
      addu       $19, $2, $0
      blez       $19, .L8007B8BC
       sll       $16, $19, 2
      addu       $4, $16, $0
      jal        func_80052504
       addu      $5, $0, $0
      beqz       $2, .L8007B858
       sw        $2, 0xF8($29)
      addu       $4, $16, $0
      jal        func_80052504
       addu      $5, $0, $0
      bnez       $2, .L8007B860
       sw        $2, 0xFC($29)
      lw         $4, 0xF8($29)
  .L8007B850:
      jal        func_80052540
       nop
  .L8007B858:
      j          .L8007BB30
       addiu     $2, $0, -0x5
  .L8007B860:
      slt        $2, $22, $19
      beqz       $2, .L8007B8BC
       addu      $16, $0, $0
      lw         $18, 0xFC($29)
      lw         $17, 0xF8($29)
  .L8007B874:
      addu       $4, $20, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $5, $16, $0
      addiu      $6, $29, 0xEC
      sw         $0, 0x10($29)
      lw         $4, 0x4($2)
      jal        func_80056F40
       addiu     $7, $29, 0xF0
      lw         $2, 0xEC($29)
      lw         $3, 0xF0($29)
      addiu      $16, $16, 0x1
      sw         $2, 0x0($17)
      sw         $3, 0x0($18)
      addiu      $18, $18, 0x4
      slt        $2, $16, $19
      bnez       $2, .L8007B874
       addiu     $17, $17, 0x4
  .L8007B8BC:
      addiu      $4, $29, 0x60
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x3C
      lw         $8, 0xF8($29)
      sw         $8, 0x80($29)
      lw         $8, 0xFC($29)
      sw         $19, 0x7C($29)
      sw         $8, 0x84($29)
      lw         $4, 0x4($30)
      lw         $5, 0x20($21)
      jal        func_80065874
       addiu     $16, $0, 0x1
      andi       $2, $2, 0xFF
      beqz       $2, .L8007B944
       addiu     $4, $0, 0x401
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $22, $2, $0
      beqz       $22, .L8007B93C
       addu      $4, $22, $0
      lw         $5, 0x20($21)
      jal        func_80052310
       addiu     $6, $0, 0x4
      addu       $5, $22, $0
      lw         $4, 0x4($30)
      jal        func_8006587C
       addiu     $6, $0, 0x4
      bnel       $2, $16, .L8007B934
       sb        $0, 0x0($22)
  .L8007B934:
      j          .L8007B94C
       sw        $22, 0x60($29)
  .L8007B93C:
      j          .L8007B94C
       addiu     $16, $0, -0x5
  .L8007B944:
      lw         $2, 0x20($21)
      sw         $2, 0x60($29)
  .L8007B94C:
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8007B9CC
       addiu     $17, $30, 0x14
      addu       $4, $17, $0
      addu       $5, $21, $0
      addu       $6, $0, $0
      addu       $7, $6, $0
      jal        func_8007FA4C
       sw        $23, 0x10($29)
      addu       $6, $23, $0
      lui        $2, %hi(D_800ED7E4)
      lw         $3, 0x30($30)
      lw         $8, 0x100($29)
      addiu      $2, $2, %lo(D_800ED7E4)
      sw         $2, 0x14($29)
      addiu      $2, $23, 0x10
      sw         $0, 0x18($29)
      sw         $2, 0x1C($29)
      sw         $8, 0x10($29)
      lw         $4, 0x2C($30)
      lw         $5, 0xC($30)
      lw         $2, 0x14($3)
      jalr       $2
       addiu     $7, $29, 0x60
      addu       $16, $2, $0
      bgez       $16, .L8007B9CC
       addu      $4, $17, $0
      sw         $0, 0x10($29)
      addu       $5, $0, $0
      addu       $6, $23, $0
      jal        func_8007FBBC
       addu      $7, $5, $0
  .L8007B9CC:
      jal        func_80052540
       addu      $4, $22, $0
      lw         $4, 0xF8($29)
      jal        func_80052540
       nop
      lw         $4, 0xFC($29)
      j          .L8007BB24
       nop
  .L8007B9EC:
      addu       $17, $0, $0
  .L8007B9F0:
      addiu      $4, $29, 0xA0
      addu       $5, $17, $0
      addiu      $6, $0, 0x3C
      jal        func_80016140
       sw        $0, 0xF4($29)
      lw         $4, 0x4($30)
      lw         $5, 0x20($21)
      jal        func_80065874
       addiu     $16, $0, 0x1
      andi       $2, $2, 0xFF
      beqz       $2, .L8007BA68
       addiu     $4, $0, 0x401
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      beqz       $17, .L8007BA60
       addu      $4, $17, $0
      lw         $5, 0x20($21)
      jal        func_80052310
       addiu     $6, $0, 0x4
      addu       $5, $17, $0
      lw         $4, 0x4($30)
      jal        func_8006587C
       addiu     $6, $0, 0x4
      bnel       $2, $16, .L8007BA58
       sb        $0, 0x0($17)
  .L8007BA58:
      j          .L8007BA70
       sw        $17, 0xA0($29)
  .L8007BA60:
      j          .L8007BA70
       addiu     $16, $0, -0x5
  .L8007BA68:
      lw         $2, 0x20($21)
      sw         $2, 0xA0($29)
  .L8007BA70:
      addiu      $18, $0, 0x1
      bne        $16, $18, .L8007BA88
       nop
      jal        func_8007B18C
       addiu     $4, $29, 0xF4
      addu       $16, $2, $0
  .L8007BA88:
      lw         $2, 0xF4($29)
      bne        $16, $18, .L8007BB0C
       sw        $2, 0xB0($29)
      addiu      $18, $30, 0x14
      addu       $4, $18, $0
      addu       $5, $21, $0
      addu       $6, $0, $0
      addu       $7, $6, $0
      jal        func_8007FA4C
       sw        $23, 0x10($29)
      addu       $6, $23, $0
      lui        $2, %hi(D_800ED7E4)
      lw         $3, 0x30($30)
      lw         $8, 0x100($29)
      addiu      $2, $2, %lo(D_800ED7E4)
      sw         $2, 0x14($29)
      addiu      $2, $23, 0x10
      sw         $0, 0x18($29)
      sw         $2, 0x1C($29)
      sw         $8, 0x10($29)
      lw         $4, 0x2C($30)
      lw         $5, 0xC($30)
      lw         $2, 0x14($3)
      jalr       $2
       addiu     $7, $29, 0xA0
      addu       $16, $2, $0
      bgez       $16, .L8007BB0C
       addu      $4, $18, $0
      sw         $0, 0x10($29)
      addu       $5, $0, $0
      addu       $6, $23, $0
      jal        func_8007FBBC
       addu      $7, $5, $0
  .L8007BB0C:
      lw         $4, 0xF4($29)
      beql       $4, $0, .L8007BB24
       addu      $4, $17, $0
      jal        func_800546DC
       nop
      addu       $4, $17, $0
  .L8007BB24:
      jal        func_80052540
       nop
  .L8007BB2C:
      addu       $2, $16, $0
  .L8007BB30:
      lw         $31, 0x12C($29)
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
  .globl func_8007BB60
func_8007BB60:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x1C($29)
      jal        func_8007AE58
       sw        $17, 0x14($29)
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L8007BC3C
       addu      $2, $17, $0
      jal        func_8007A0BC
       addu      $4, $18, $0
      bnez       $16, .L8007BBF8
       addiu     $2, $0, 0x2
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $16, 0xC0($2)
      beql       $16, $0, .L8007BBE8
       addu      $4, $18, $0
  .L8007BBB4:
      lw         $2, 0xC($16)
      beqz       $2, .L8007BBD8
       nop
      lw         $2, 0x24($2)
      beqz       $2, .L8007BBD8
       addiu     $5, $0, 0x8
      lw         $4, 0x8($16)
      jalr       $2
       addu      $6, $0, $0
  .L8007BBD8:
      lw         $16, 0x10($16)
      bnez       $16, .L8007BBB4
       nop
      addu       $4, $18, $0
  .L8007BBE8:
      jal        func_8007BC54
       addiu     $5, $0, 0x1
      j          .L8007BC3C
       addu      $2, $17, $0
  .L8007BBF8:
      lbu        $3, 0x10($16)
      beq        $3, $2, .L8007BC0C
       addiu     $2, $0, 0x2B
      bne        $3, $2, .L8007BC3C
       addu      $2, $17, $0
  .L8007BC0C:
      jal        func_8007D4AC
       addu      $4, $16, $0
      lw         $3, 0x30($18)
      beqz       $3, .L8007BC38
       addu      $16, $2, $0
      beqz       $16, .L8007BC38
       addu      $4, $18, $0
      addu       $5, $16, $0
      jal        func_8007B214
       addiu     $6, $0, 0x1
      addu       $17, $2, $0
  .L8007BC38:
      addu       $2, $17, $0
  .L8007BC3C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_8007BC54
func_8007BC54:
      addiu      $29, $29, -0x38
      sw         $21, 0x24($29)
      addu       $21, $4, $0
      sw         $20, 0x20($29)
      addiu      $20, $0, 0x1
      sw         $31, 0x30($29)
      sw         $23, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x30($21)
      beqz       $2, .L8007BD38
       addu      $22, $5, $0
      addu       $4, $21, $0
      andi       $16, $22, 0xFF
      jal        func_8007B0A0
       addu      $5, $16, $0
      addu       $18, $2, $0
      beqz       $18, .L8007BD3C
       addu      $2, $20, $0
      sb         $20, 0x79($21)
      sll        $4, $18, 2
      jal        func_80052504
       addu      $5, $0, $0
      addu       $19, $2, $0
      bnez       $19, .L8007BCD0
       addu      $4, $19, $0
      j          .L8007BD3C
       addiu     $2, $0, -0x5
  .L8007BCD0:
      addu       $5, $21, $0
      jal        func_8007B10C
       addu      $6, $16, $0
      addu       $4, $19, $0
      addu       $5, $18, $0
      addiu      $6, $0, 0x4
      lui        $7, %hi(D_8007AFCC)
      jal        func_800162C0
       addiu     $7, $7, %lo(D_8007AFCC)
      beqz       $18, .L8007BD2C
       addu      $16, $0, $0
      addiu      $23, $0, -0x5
      addu       $17, $19, $0
  .L8007BD04:
      addu       $4, $21, $0
      lw         $5, 0x0($17)
      jal        func_8007B214
       andi      $6, $22, 0xFF
      addu       $20, $2, $0
      beq        $20, $23, .L8007BD2C
       addiu     $16, $16, 0x1
      sltu       $2, $16, $18
      bnez       $2, .L8007BD04
       addiu     $17, $17, 0x4
  .L8007BD2C:
      sb         $0, 0x79($21)
      jal        func_80052540
       addu      $4, $19, $0
  .L8007BD38:
      addu       $2, $20, $0
  .L8007BD3C:
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
  .globl func_8007BD68
func_8007BD68:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      beqz       $4, .L8007BDCC
       sw        $16, 0x10($29)
      lw         $4, 0x4($4)
      beqz       $4, .L8007BDD0
       addiu     $2, $0, 0x1
      lw         $4, 0x0($4)
      beqz       $4, .L8007BDD0
       nop
      lw         $16, 0xC0($4)
      beqz       $16, .L8007BDD0
       nop
  .L8007BD9C:
      lw         $4, 0x8($16)
      beqz       $4, .L8007BDC0
       nop
      lw         $2, 0xC($16)
      beqz       $2, .L8007BDC0
       nop
      lw         $2, 0x50($2)
      jalr       $2
       nop
  .L8007BDC0:
      lw         $16, 0x10($16)
      bnez       $16, .L8007BD9C
       nop
  .L8007BDCC:
      addiu      $2, $0, 0x1
  .L8007BDD0:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_8007BDE0
func_8007BDE0:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $16, 0xC0($2)
      beqz       $16, .L8007BE8C
       addu      $17, $5, $0
      addiu      $19, $0, 0x2
  .L8007BE14:
      lw         $2, 0x8($16)
      beqz       $2, .L8007BE80
       nop
      lw         $2, 0xC($16)
      beqz       $2, .L8007BE80
       addiu     $3, $0, 0x1
      lbu        $2, 0x3B($16)
      bne        $2, $3, .L8007BE48
       addu      $4, $18, $0
      addu       $5, $16, $0
      jal        func_80080214
       addu      $6, $17, $0
      addu       $3, $2, $0
  .L8007BE48:
      bne        $17, $19, .L8007BE80
       nop
      bnez       $3, .L8007BE80
       nop
      lw         $2, 0xC($16)
      lw         $4, 0x8($16)
      lw         $2, 0x50($2)
      jalr       $2
       nop
      sb         $0, 0x38($16)
      sw         $0, 0x8($16)
      sw         $0, 0xC($16)
      sb         $0, 0x3B($16)
      sw         $0, 0x14($16)
  .L8007BE80:
      lw         $16, 0x10($16)
      bnez       $16, .L8007BE14
       nop
  .L8007BE8C:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x28
  .globl func_8007BEAC
func_8007BEAC:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($17)
      lw         $18, 0x0($2)
      beql       $17, $0, .L8007C120
       addu      $2, $0, $0
      beqz       $2, .L8007C120
       addu      $2, $0, $0
      beqz       $18, .L8007C120
       nop
      lw         $2, 0x10($17)
      beqz       $2, .L8007C120
       addu      $2, $0, $0
      lw         $16, 0x48($18)
      beqz       $16, .L8007C070
       addu      $19, $0, $0
      lui        $2, %hi(jtbl_800F0CC8)
      addiu      $20, $2, %lo(jtbl_800F0CC8)
      addu       $4, $16, $0
  .L8007BF10:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      beqz       $2, .L8007C08C
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lbu        $3, 0x22($2)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8007C058
       addu      $4, $16, $0
      bnez       $19, .L8007BF5C
       addiu     $2, $0, 0x17
      lbu        $3, 0x10($16)
      beq        $3, $2, .L8007BF5C
       addiu     $2, $0, 0x2
      bnel       $3, $2, .L8007BF5C
       addu      $19, $16, $0
  .L8007BF5C:
      lbu        $2, 0x10($16)
      addiu      $3, $2, -0x2
      sltiu      $2, $3, 0x34
      beqz       $2, .L8007C054
       sll       $2, $3, 2
      addu       $2, $2, $20
      lw         $2, 0x0($2)
      jr         $2
       nop
  .globl .L8007BF80
.L8007BF80:
      addu       $4, $17, $0
      jal        func_8008624C
       addu      $5, $16, $0
      j          .L8007C058
       addu      $4, $16, $0
  .globl .L8007BF94
.L8007BF94:
      addu       $4, $17, $0
      jal        func_8008626C
       addu      $5, $16, $0
      j          .L8007C058
       addu      $4, $16, $0
  .globl .L8007BFA8
.L8007BFA8:
      addu       $4, $17, $0
      jal        func_8008628C
       addu      $5, $16, $0
      j          .L8007C058
       addu      $4, $16, $0
  .globl .L8007BFBC
.L8007BFBC:
      addu       $4, $17, $0
      jal        func_800862AC
       addu      $5, $16, $0
      j          .L8007C058
       addu      $4, $16, $0
  .globl .L8007BFD0
.L8007BFD0:
      addu       $4, $17, $0
      jal        func_800862CC
       addu      $5, $16, $0
      j          .L8007C058
       addu      $4, $16, $0
  .globl .L8007BFE4
.L8007BFE4:
      addu       $4, $17, $0
      jal        func_80086360
       addu      $5, $16, $0
      j          .L8007C058
       addu      $4, $16, $0
  .globl .L8007BFF8
.L8007BFF8:
      addu       $4, $17, $0
      jal        func_800864C4
       addu      $5, $16, $0
      j          .L8007C058
       addu      $4, $16, $0
  .globl .L8007C00C
.L8007C00C:
      addu       $4, $17, $0
      jal        func_80086380
       addu      $5, $16, $0
      j          .L8007C058
       addu      $4, $16, $0
  .globl .L8007C020
.L8007C020:
      addu       $4, $17, $0
      jal        func_800863EC
       addu      $5, $16, $0
      j          .L8007C058
       addu      $4, $16, $0
  .globl .L8007C034
.L8007C034:
      addu       $4, $17, $0
      jal        func_80086458
       addu      $5, $16, $0
      j          .L8007C058
       addu      $4, $16, $0
  .globl .L8007C048
.L8007C048:
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
  .globl .L8007C054
.L8007C054:
      addu       $4, $16, $0
  .L8007C058:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $16, 0x0($2)
      bnez       $16, .L8007BF10
       addu      $4, $16, $0
  .L8007C070:
      beqz       $19, .L8007C11C
       addiu     $2, $0, -0x1
      lw         $3, 0x80($18)
      bne        $3, $2, .L8007C094
       addu      $17, $0, $0
      j          .L8007C120
       addiu     $2, $0, 0x1
  .L8007C08C:
      j          .L8007C120
       addu      $2, $0, $0
  .L8007C094:
      lw         $4, 0x44($18)
      jal        func_80058434
       addu      $20, $17, $0
      addu       $16, $2, $0
      beqz       $16, .L8007C104
       andi      $2, $20, 0xFF
  .L8007C0AC:
      beql       $16, $19, .L8007C100
       addiu     $20, $0, 0x1
      lw         $4, 0x68($18)
      beqz       $4, .L8007C0F4
       nop
      lw         $2, 0x7C($18)
      beqz       $2, .L8007C0F4
       addu      $5, $17, $0
      jal        func_80060CE0
       addiu     $6, $0, 0x1
      lw         $2, 0x4($2)
      bne        $16, $2, .L8007C0F4
       nop
      lw         $2, 0x80($18)
      slt        $2, $17, $2
      beqz       $2, .L8007C104
       andi      $2, $20, 0xFF
      addiu      $17, $17, 0x1
  .L8007C0F4:
      lw         $16, 0x8($16)
      bnez       $16, .L8007C0AC
       nop
  .L8007C100:
      andi       $2, $20, 0xFF
  .L8007C104:
      beqz       $2, .L8007C11C
       addiu     $2, $17, -0x1
      bgez       $2, .L8007C11C
       sw        $2, 0x80($18)
      addiu      $2, $0, -0x1
      sw         $2, 0x80($18)
  .L8007C11C:
      addiu      $2, $0, 0x1
  .L8007C120:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
  .globl func_8007C140
func_8007C140:
      addiu      $29, $29, -0x20
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      beqz       $4, .L8007C170
       sw        $16, 0x10($29)
      lw         $4, 0x4($4)
      beqz       $4, .L8007C218
       addu      $2, $0, $0
      lw         $2, 0x0($4)
      bnez       $2, .L8007C178
       nop
  .L8007C170:
      j          .L8007C218
       addu      $2, $0, $0
  .L8007C178:
      lw         $16, 0x48($2)
      beqz       $16, .L8007C214
       addiu     $18, $0, 0x2
      addiu      $17, $0, 0x1
      addu       $4, $16, $0
  .L8007C18C:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      beqz       $2, .L8007C170
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lbu        $2, 0x22($2)
      bne        $2, $18, .L8007C1E4
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $4, 0x0($2)
      jal        func_80086154
       nop
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      j          .L8007C1F8
       sb        $17, 0x22($2)
  .L8007C1E4:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $4, 0x0($2)
      jal        func_80086188
       nop
  .L8007C1F8:
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $16, 0x0($2)
      bnez       $16, .L8007C18C
       addu      $4, $16, $0
  .L8007C214:
      addiu      $2, $0, 0x1
  .L8007C218:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_8007C230
func_8007C230:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      beqz       $18, .L8007C2F0
       sw        $16, 0x10($29)
      lw         $2, 0x4($18)
      beqz       $2, .L8007C2F0
       nop
      lw         $4, 0x0($2)
      beqz       $4, .L8007C2F0
       andi      $2, $17, 0xFF
      beqz       $2, .L8007C280
       nop
      lw         $2, 0x10($18)
      beqz       $2, .L8007C2F0
       nop
  .L8007C280:
      lw         $16, 0x48($4)
      beqz       $16, .L8007C2F0
       addiu     $19, $0, 0x2
      addu       $4, $16, $0
  .L8007C290:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      beqz       $2, .L8007C2F0
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lbu        $2, 0x22($2)
      bne        $2, $19, .L8007C2D8
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $18, $0
      lw         $5, 0x0($2)
      jal        func_80086130
       andi      $6, $17, 0xFF
      addu       $4, $16, $0
  .L8007C2D8:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $16, 0x0($2)
      bnez       $16, .L8007C290
       addu      $4, $16, $0
  .L8007C2F0:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
      addiu      $29, $29, -0x38
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x34($29)
      sw         $22, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      beqz       $4, .L8007C3E4
       sw        $16, 0x18($29)
      lw         $4, 0x4($4)
      beqz       $4, .L8007C3E8
       addu      $2, $0, $0
      lw         $4, 0x0($4)
      beqz       $4, .L8007C3E8
       nop
      lw         $4, 0x44($4)
      jal        func_80058434
       addu      $22, $0, $0
      addu       $16, $2, $0
      sw         $17, 0x10($29)
      beqz       $16, .L8007C3E4
       sw        $18, 0x14($29)
      addiu      $21, $0, 0x22
      addiu      $20, $0, 0x24
      addiu      $19, $0, 0x25
      addiu      $18, $0, 0x23
      addiu      $17, $0, 0x29
      addu       $4, $16, $0
  .L8007C388:
      jal        func_80058268
       addu      $5, $0, $0
      lw         $5, 0x10($29)
      lw         $6, 0x14($29)
      jal        func_8008A23C
       addu      $4, $2, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8007C3D8
       nop
      lbu        $2, 0x10($16)
      beq        $2, $21, .L8007C3D8
       nop
      beq        $2, $20, .L8007C3D8
       nop
      beq        $2, $19, .L8007C3D8
       nop
      beq        $2, $18, .L8007C3D8
       nop
      bne        $2, $17, .L8007C3E8
       addu      $2, $16, $0
  .L8007C3D8:
      lw         $16, 0x8($16)
      bne        $16, $22, .L8007C388
       addu      $4, $16, $0
  .L8007C3E4:
      addu       $2, $0, $0
  .L8007C3E8:
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
      lw         $2, 0x8($4)
      beqz       $2, .L8007C42C
       nop
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x1
      jr         $31
       sw        $3, 0x0($5)
  .L8007C42C:
      jr         $31
       addiu     $2, $0, -0x4
      jr         $31
       addu      $2, $0, $0
  .globl func_8007C43C
func_8007C43C:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $20, 0x28($29)
      addu       $20, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $0, $0
      sw         $16, 0x18($29)
      addu       $16, $19, $0
      beqz       $18, .L8007C47C
       sw        $31, 0x2C($29)
      jal        func_8007D4A0
       addu      $4, $18, $0
      addu       $16, $2, $0
  .L8007C47C:
      beqz       $16, .L8007C4EC
       addiu     $2, $0, 0x2B
      lbu        $3, 0x10($16)
      bne        $3, $2, .L8007C4EC
       nop
      beql       $17, $0, .L8007C4D4
       addiu     $17, $0, 0x1
      lw         $2, 0x4($17)
      beql       $2, $0, .L8007C4D4
       addiu     $17, $0, 0x1
      lw         $2, 0x0($2)
      beqz       $2, .L8007C4D0
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x4($17)
      lw         $4, 0x0($3)
      lw         $5, 0x14($2)
      jal        func_80063054
       addiu     $4, $4, 0x34
      addu       $19, $2, $0
  .L8007C4D0:
      addiu      $17, $0, 0x1
  .L8007C4D4:
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $4, 0x24($2)
      j          .L8007C530
       addiu     $3, $0, 0x2
  .L8007C4EC:
      lw         $2, 0x4($17)
      lw         $2, 0x0($2)
      lw         $2, 0xB8($2)
      beqz       $2, .L8007C51C
       addiu     $17, $0, 0x2
      lw         $2, 0x0($2)
      bne        $18, $2, .L8007C520
       addu      $4, $16, $0
      addiu      $17, $0, 0x3
      addiu      $4, $0, 0x2
      j          .L8007C530
       addu      $3, $17, $0
  .L8007C51C:
      addu       $4, $16, $0
  .L8007C520:
      jal        func_80058268
       addu      $5, $17, $0
      lbu        $4, 0x1B($2)
      addiu      $3, $0, 0x1
  .L8007C530:
      lw         $2, 0x8($18)
      beqz       $2, .L8007C570
       addiu     $2, $0, 0x1
      lw         $2, 0xC($18)
      beqz       $2, .L8007C56C
       addu      $5, $20, $0
      addu       $6, $19, $0
      sw         $3, 0x10($29)
      sw         $4, 0x14($29)
      lw         $4, 0x8($18)
      lw         $2, 0x8($2)
      jalr       $2
       addu      $7, $17, $0
      j          .L8007C570
       nop
  .L8007C56C:
      addiu      $2, $0, 0x1
  .L8007C570:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
  .globl func_8007C590
func_8007C590:
      addiu      $29, $29, -0x38
      sw         $20, 0x30($29)
      addu       $20, $5, $0
      sw         $31, 0x34($29)
      sw         $19, 0x2C($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      sw         $16, 0x20($29)
      lw         $17, 0x8($4)
      bnez       $17, .L8007C5C4
       addiu     $18, $0, 0x1
      j          .L8007C8A0
       addiu     $2, $0, -0x4
  .L8007C5C4:
      beq        $20, $18, .L8007C5D8
       addu      $19, $0, $0
      addiu      $2, $0, 0x4
      bne        $20, $2, .L8007C5E0
       andi      $2, $19, 0xFF
  .L8007C5D8:
      addiu      $19, $0, 0x1
      andi       $2, $19, 0xFF
  .L8007C5E0:
      beqz       $2, .L8007C770
       addiu     $2, $0, 0x4
      bne        $20, $2, .L8007C63C
       nop
      lw         $4, 0xAC($17)
      beqz       $4, .L8007C63C
       addiu     $5, $0, 0x2
      addiu      $16, $29, 0x10
      jal        func_80051C70
       addu      $6, $16, $0
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8007C63C
       nop
      lw         $3, 0x10($29)
      lw         $2, 0x0($3)
      bnez       $2, .L8007C63C
       nop
      lw         $2, 0x8($3)
      bnez       $2, .L8007C63C
       addiu     $5, $0, 0x1
      lw         $4, 0xAC($17)
      jal        func_80051C70
       addu      $6, $16, $0
  .L8007C63C:
      lw         $2, 0x10($17)
      bnez       $2, .L8007C6DC
       nop
      lw         $2, 0x28($17)
      beqz       $2, .L8007C8A0
       addu      $2, $0, $0
      lw         $2, 0x30($17)
      beql       $2, $0, .L8007C8A0
       addu      $2, $0, $0
      lw         $2, 0x2C($2)
      beqz       $2, .L8007C8A0
       addu      $2, $0, $0
      jal        func_8008BC6C
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8007C8A0
       addiu     $2, $0, -0x1
      lw         $4, 0x2C($17)
      lw         $5, 0xC($17)
      lw         $2, 0x30($17)
      lw         $6, 0x10($17)
      lw         $2, 0x2C($2)
      jalr       $2
       nop
      lw         $2, 0x4($17)
      lw         $2, 0x0($2)
      lw         $16, 0xC0($2)
      beqz       $16, .L8007C6C8
       addu      $4, $17, $0
  .L8007C6B0:
      lw         $6, 0x10($17)
      jal        func_8007C43C
       addu      $5, $16, $0
      lw         $16, 0x10($16)
      bnez       $16, .L8007C6B0
       addu      $4, $17, $0
  .L8007C6C8:
      lw         $2, 0x70($17)
      bgtz       $2, .L8007C6DC
       nop
      jal        func_8008B964
       addu      $4, $17, $0
  .L8007C6DC:
      jal        func_8005F1E0
       addu      $4, $17, $0
      addu       $4, $17, $0
      jal        func_8007BC54
       addu      $5, $0, $0
      addiu      $2, $0, 0x4
      bne        $20, $2, .L8007C750
       addu      $4, $17, $0
      lw         $4, 0xAC($17)
      addiu      $5, $0, 0x2
      jal        func_80051C70
       addiu     $6, $29, 0x14
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8007C738
       nop
      lw         $2, 0x14($29)
      lw         $5, 0x8($2)
      beqz       $5, .L8007C750
       addu      $4, $17, $0
      jal        func_8008B7CC
       addu      $4, $17, $0
      j          .L8007C750
       addu      $4, $17, $0
  .L8007C738:
      lw         $2, 0xA4($17)
      beqz       $2, .L8007C750
       addu      $4, $17, $0
      jal        func_800790AC
       addu      $4, $17, $0
      addu       $4, $17, $0
  .L8007C750:
      andi       $16, $19, 0xFF
      jal        func_8007C230
       addu      $5, $16, $0
      addu       $4, $17, $0
      jal        func_8008BED4
       addu      $5, $16, $0
      j          .L8007C878
       addu      $4, $17, $0
  .L8007C770:
      addu       $4, $17, $0
      jal        func_8008BED4
       addu      $5, $0, $0
      addu       $4, $17, $0
      jal        func_8007C230
       addu      $5, $0, $0
      addu       $4, $17, $0
      jal        func_8007F7F8
       addiu     $5, $0, 0x3
      lw         $4, 0xA4($17)
      jal        func_80052540
       nop
      addiu      $2, $0, 0x2
      bne        $20, $2, .L8007C874
       sw        $0, 0xA4($17)
      lw         $4, 0xAC($17)
      addu       $5, $2, $0
      addiu      $16, $29, 0x18
      jal        func_80051C70
       addu      $6, $16, $0
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      bnel       $4, $2, .L8007C878
       addu      $4, $17, $0
      lw         $3, 0x18($29)
      lw         $2, 0x0($3)
      bnez       $2, .L8007C804
       addiu     $2, $0, 0x1
      lw         $2, 0x8($3)
      bnez       $2, .L8007C804
       addiu     $2, $0, 0x1
      lw         $4, 0xAC($17)
      addiu      $5, $0, 0x1
      jal        func_80051C70
       addu      $6, $16, $0
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
  .L8007C804:
      bne        $4, $2, .L8007C878
       addu      $4, $17, $0
      jal        func_80079C3C
       nop
      beqz       $2, .L8007C870
       sw        $2, 0x18($29)
      lw         $5, 0x0($2)
      beqz       $5, .L8007C83C
       lui       $16, %hi(D_80138B70)
      addiu      $16, $16, %lo(D_80138B70)
      addu       $4, $16, $0
      jal        func_80052310
       addiu     $6, $0, 0x100
      sb         $0, 0xFF($16)
  .L8007C83C:
      lw         $4, 0xAC($17)
      lw         $5, 0x18($29)
      jal        func_80051CF4
       nop
      addu       $18, $2, $0
      lui        $2, %hi(D_80138B70)
      bgez       $18, .L8007C874
       sb        $0, %lo(D_80138B70)($2)
      lw         $4, 0x18($29)
      jal        func_80052540
       nop
      j          .L8007C878
       addu      $4, $17, $0
  .L8007C870:
      addiu      $18, $0, -0x5
  .L8007C874:
      addu       $4, $17, $0
  .L8007C878:
      jal        func_8007BDE0
       addu      $5, $20, $0
      andi       $2, $19, 0xFF
      bnel       $2, $0, .L8007C89C
       sb        $19, 0x78($17)
      addu       $4, $17, $0
      jal        func_80089D00
       addu      $5, $0, $0
      sb         $19, 0x78($17)
  .L8007C89C:
      addu       $2, $18, $0
  .L8007C8A0:
      lw         $31, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
      jr         $31
       addu      $2, $0, $0
      addiu      $29, $29, -0x18
      beqz       $4, .L8007C8E0
       sw        $31, 0x10($29)
      lw         $4, 0x8($4)
      bnez       $4, .L8007C8E8
       nop
  .L8007C8E0:
      j          .L8007C90C
       addiu     $2, $0, -0x4
  .L8007C8E8:
      lw         $3, 0x2C($4)
      beqz       $3, .L8007C90C
       addiu     $2, $0, -0x1
      lw         $4, 0x30($4)
      beqz       $4, .L8007C90C
       nop
      lw         $2, 0x4($4)
      jalr       $2
       addu      $4, $3, $0
  .L8007C90C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
      addiu      $29, $29, -0x18
      beqz       $4, .L8007C930
       sw        $31, 0x10($29)
      lw         $4, 0x8($4)
      bnez       $4, .L8007C938
       nop
  .L8007C930:
      j          .L8007C95C
       addiu     $2, $0, -0x4
  .L8007C938:
      lw         $3, 0x2C($4)
      beqz       $3, .L8007C95C
       addiu     $2, $0, -0x1
      lw         $4, 0x30($4)
      beqz       $4, .L8007C95C
       nop
      lw         $2, 0x8($4)
      jalr       $2
       addu      $4, $3, $0
  .L8007C95C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
      addiu      $29, $29, -0x20
      beqz       $4, .L8007C980
       sw        $31, 0x18($29)
      lw         $4, 0x8($4)
      bnez       $4, .L8007C988
       nop
  .L8007C980:
      j          .L8007C9B8
       addiu     $2, $0, -0x4
  .L8007C988:
      lw         $2, 0x2C($4)
      beqz       $2, .L8007C9B8
       addiu     $2, $0, -0x1
      lw         $3, 0x30($4)
      beqz       $3, .L8007C9B8
       nop
      lw         $2, 0x30($29)
      sw         $2, 0x10($29)
      lw         $2, 0xC($3)
      lw         $4, 0x2C($4)
      jalr       $2
       nop
  .L8007C9B8:
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
      addiu      $29, $29, -0x18
      beqz       $4, .L8007C9DC
       sw        $31, 0x10($29)
      lw         $4, 0x8($4)
      bnez       $4, .L8007C9E4
       nop
  .L8007C9DC:
      j          .L8007CA08
       addiu     $2, $0, -0x4
  .L8007C9E4:
      lw         $3, 0x2C($4)
      beqz       $3, .L8007CA08
       addiu     $2, $0, -0x1
      lw         $4, 0x30($4)
      beqz       $4, .L8007CA08
       nop
      lw         $2, 0x10($4)
      jalr       $2
       addu      $4, $3, $0
  .L8007CA08:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
      addiu      $29, $29, -0x28
      beqz       $4, .L8007CA2C
       sw        $31, 0x20($29)
      lw         $4, 0x8($4)
      bnez       $4, .L8007CA34
       nop
  .L8007CA2C:
      j          .L8007CA7C
       addiu     $2, $0, -0x4
  .L8007CA34:
      lw         $2, 0x2C($4)
      beqz       $2, .L8007CA7C
       addiu     $2, $0, -0x1
      lw         $3, 0x30($4)
      beqz       $3, .L8007CA7C
       nop
      lw         $2, 0x38($29)
      sw         $2, 0x10($29)
      lw         $2, 0x3C($29)
      sw         $2, 0x14($29)
      lw         $2, 0x40($29)
      sw         $2, 0x18($29)
      lw         $2, 0x44($29)
      sw         $2, 0x1C($29)
      lw         $2, 0x1C($3)
      lw         $4, 0x2C($4)
      jalr       $2
       nop
  .L8007CA7C:
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
      addiu      $29, $29, -0x38
      sw         $22, 0x28($29)
      addu       $22, $6, $0
      sw         $21, 0x24($29)
      addu       $21, $7, $0
      sw         $23, 0x2C($29)
      addiu      $23, $0, 0x1
      sw         $31, 0x34($29)
      sw         $30, 0x30($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      beqz       $4, .L8007CAD0
       sw        $16, 0x10($29)
      lw         $4, 0x8($4)
      bnez       $4, .L8007CAD8
       nop
  .L8007CAD0:
      j          .L8007CD68
       addiu     $2, $0, -0x4
  .L8007CAD8:
      jal        func_8007D50C
       addu      $19, $4, $0
      addu       $18, $2, $0
      bnez       $18, .L8007CB1C
       nop
      lw         $2, 0x4($19)
      lw         $2, 0x0($2)
      lw         $2, 0xB8($2)
      beql       $2, $0, .L8007CD68
       addiu     $2, $0, -0x1
      sh         $21, 0x12($2)
      lw         $2, 0x4($19)
      lw         $2, 0x0($2)
      lw         $3, 0xB8($2)
      addiu      $2, $0, 0x1
      j          .L8007CD68
       sh        $22, 0x10($3)
  .L8007CB1C:
      jal        func_8007D4AC
       addu      $4, $18, $0
      addu       $17, $2, $0
      beqz       $17, .L8007CD68
       addiu     $2, $0, -0x1
      lbu        $2, 0x38($17)
      sltiu      $2, $2, 0x5
      beqz       $2, .L8007CB44
       addiu     $2, $0, 0x5
      sb         $2, 0x38($17)
  .L8007CB44:
      lw         $2, 0x18($17)
      bne        $2, $22, .L8007CB6C
       nop
      lw         $2, 0x1C($17)
      bne        $2, $21, .L8007CB6C
       nop
      lbu        $2, 0x38($17)
      sltiu      $2, $2, 0x6
      beqz       $2, .L8007CD68
       addiu     $2, $0, 0x1
  .L8007CB6C:
      bltz       $22, .L8007CB7C
       addiu     $2, $0, -0x1
      bgez       $21, .L8007CB88
       nop
  .L8007CB7C:
      sw         $2, 0x18($17)
      j          .L8007CBA8
       sw        $2, 0x1C($17)
  .L8007CB88:
      beql       $22, $0, .L8007CB9C
       sw        $0, 0x18($17)
      bnel       $21, $0, .L8007CBA4
       sw        $22, 0x18($17)
      sw         $0, 0x18($17)
  .L8007CB9C:
      j          .L8007CBA8
       sw        $0, 0x1C($17)
  .L8007CBA4:
      sw         $21, 0x1C($17)
  .L8007CBA8:
      lbu        $3, 0x10($18)
      addiu      $2, $0, 0x2B
      beq        $3, $2, .L8007CC30
       addu      $30, $0, $0
      addiu      $2, $0, 0x2
      bne        $3, $2, .L8007CC38
       addu      $4, $18, $0
      jal        func_80058268
       addu      $5, $2, $0
      lbu        $2, 0x18($2)
      andi       $2, $2, 0x8
      bnez       $2, .L8007CC38
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lhu        $2, 0x10($2)
      bnez       $2, .L8007CC04
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x19($2)
      beqz       $2, .L8007CC34
       addu      $4, $18, $0
  .L8007CC04:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lhu        $2, 0x12($2)
      bnel       $2, $0, .L8007CC34
       addiu     $30, $0, 0x1
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x1A($2)
      beqz       $2, .L8007CC38
       addu      $4, $18, $0
  .L8007CC30:
      addiu      $30, $0, 0x1
  .L8007CC34:
      addu       $4, $18, $0
  .L8007CC38:
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $18, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $18, $0
      lw         $3, 0x8($16)
      lw         $2, 0x0($2)
      addu       $5, $0, $0
      jal        func_80058268
       subu      $20, $3, $2
      addu       $4, $18, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      lw         $3, 0xC($16)
      lw         $2, 0x4($2)
      subu       $3, $3, $2
      andi       $2, $30, 0xFF
      bnez       $2, .L8007CCA0
       nop
      bne        $22, $3, .L8007CD24
       nop
      bne        $21, $20, .L8007CD24
       nop
  .L8007CCA0:
      lbu        $2, 0x3B($17)
      bnez       $2, .L8007CD68
       addu      $2, $23, $0
      lbu        $2, 0x3C($17)
      beqz       $2, .L8007CD68
       addu      $2, $23, $0
      beqz       $20, .L8007CD68
       nop
      beqz       $3, .L8007CD68
       nop
      lw         $2, 0x70($19)
      blez       $2, .L8007CD64
       addu      $5, $18, $0
      addu       $4, $19, $0
      addu       $6, $17, $0
      addiu      $2, $0, 0x1
      addiu      $7, $0, 0x2
      jal        func_80058AD0
       sb        $2, 0x3B($17)
      addu       $4, $19, $0
      jal        func_80079A40
       addu      $5, $17, $0
      lbu        $2, 0x78($19)
      beqz       $2, .L8007CD68
       addu      $2, $23, $0
      lbu        $2, 0x7B($19)
      beqz       $2, .L8007CD64
       addu      $5, $17, $0
      addu       $4, $19, $0
      jal        func_80080214
       addiu     $6, $0, 0x1
      j          .L8007CD68
       addu      $2, $23, $0
  .L8007CD24:
      lw         $2, 0x4($19)
      lw         $4, 0x0($2)
      jal        func_8005F1E8
       addu      $5, $17, $0
      addu       $4, $19, $0
      jal        func_8007D654
       addu      $5, $18, $0
      lw         $3, 0x70($19)
      addiu      $2, $0, 0x2
      beq        $3, $2, .L8007CD58
       slti      $2, $3, 0x3
      bnez       $2, .L8007CD68
       addu      $2, $23, $0
  .L8007CD58:
      jal        func_8005F2DC
       addu      $4, $19, $0
      addu       $23, $2, $0
  .L8007CD64:
      addu       $2, $23, $0
  .L8007CD68:
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
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      beqz       $4, .L8007CDB8
       sw        $31, 0x14($29)
      lw         $4, 0x8($4)
      bnez       $4, .L8007CDC0
       nop
  .L8007CDB8:
      j          .L8007CDE8
       addiu     $2, $0, -0x4
  .L8007CDC0:
      jal        func_8007D50C
       nop
      beql       $2, $0, .L8007CDE8
       addiu     $2, $0, -0x1
      jal        func_8007D4AC
       addu      $4, $2, $0
      beql       $2, $0, .L8007CDE8
       addiu     $2, $0, -0x1
      sw         $16, 0x14($2)
      addiu      $2, $0, 0x1
  .L8007CDE8:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
      addiu      $29, $29, -0x18
      beqz       $4, .L8007CE10
       sw        $31, 0x10($29)
      lw         $4, 0x8($4)
      bnez       $4, .L8007CE18
       nop
  .L8007CE10:
      j          .L8007CE3C
       addiu     $2, $0, -0x4
  .L8007CE18:
      lw         $3, 0x2C($4)
      beqz       $3, .L8007CE3C
       addiu     $2, $0, -0x1
      lw         $4, 0x30($4)
      beqz       $4, .L8007CE3C
       nop
      lw         $2, 0x38($4)
      jalr       $2
       addu      $4, $3, $0
  .L8007CE3C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
      addiu      $29, $29, -0x18
      beqz       $4, .L8007CE60
       sw        $31, 0x10($29)
      lw         $3, 0x8($4)
      bnez       $3, .L8007CE68
       addiu     $2, $0, 0xC
  .L8007CE60:
      j          .L8007CEA0
       addiu     $2, $0, -0x4
  .L8007CE68:
      beq        $6, $2, .L8007CEA0
       addiu     $2, $0, 0x1
      lw         $4, 0x2C($3)
      beqz       $4, .L8007CEA0
       addu      $2, $0, $0
      lw         $2, 0x30($3)
      bnez       $2, .L8007CE90
       nop
      j          .L8007CEA0
       addu      $2, $0, $0
  .L8007CE90:
      lw         $2, 0x24($2)
      lw         $5, 0xC($3)
      jalr       $2
       nop
  .L8007CEA0:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_8007CEAC
func_8007CEAC:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      beqz       $20, .L8007CED8
       sw        $16, 0x10($29)
      bnez       $5, .L8007CEE0
       nop
  .L8007CED8:
      j          .L8007CF9C
       addiu     $2, $0, -0x4
  .L8007CEE0:
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $6, 0xC0($2)
      beqz       $6, .L8007CF9C
       addu      $2, $0, $0
      addiu      $4, $0, 0x2B
      lui        $7, %hi(D_800EC604)
  .L8007CEFC:
      lw         $3, 0x8($6)
      lw         $2, 0x0($5)
      bne        $3, $2, .L8007CF90
       nop
      lw         $19, 0x4($6)
      beqz       $19, .L8007CF90
       nop
      lbu        $2, 0x10($19)
      bne        $2, $4, .L8007CF90
       nop
      lw         $18, 0x4($5)
      beql       $18, $0, .L8007CF30
       addiu     $18, $7, %lo(D_800EC604)
  .L8007CF30:
      jal        func_80017780
       addu      $4, $18, $0
      addu       $4, $19, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       addu      $17, $2, $0
      lw         $3, 0x4($20)
      lw         $4, 0x0($3)
      addu       $16, $2, $0
      jal        func_80063060
       addiu     $4, $4, 0x34
      addu       $5, $18, $0
      sw         $2, 0x14($16)
      lw         $2, 0x4($20)
      addu       $6, $17, $0
      lw         $4, 0x0($2)
      jal        func_8006E520
       addu      $7, $0, $0
      addu       $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      sw         $17, 0x1C($2)
      j          .L8007CF9C
       addiu     $2, $0, 0x1
  .L8007CF90:
      lw         $6, 0x10($6)
      bnez       $6, .L8007CEFC
       addu      $2, $0, $0
  .L8007CF9C:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $17, 0x14($29)
      addu       $17, $7, $0
      sw         $31, 0x1C($29)
      beqz       $4, .L8007CFF8
       sw        $16, 0x10($29)
      lw         $4, 0x8($4)
      beqz       $4, .L8007CFF8
       addiu     $2, $0, 0xC
      bne        $18, $2, .L8007D010
       addu      $16, $4, $0
      bnez       $17, .L8007D000
       addu      $4, $16, $0
  .L8007CFF8:
      j          .L8007D040
       addiu     $2, $0, -0x4
  .L8007D000:
      jal        func_8007CEAC
       addu      $5, $17, $0
      bnez       $2, .L8007D040
       nop
  .L8007D010:
      lw         $4, 0x2C($16)
      beqz       $4, .L8007D040
       addu      $2, $0, $0
      lw         $2, 0x30($16)
      bnez       $2, .L8007D030
       addu      $6, $18, $0
      j          .L8007D040
       addu      $2, $0, $0
  .L8007D030:
      lw         $5, 0xC($16)
      lw         $2, 0x28($2)
      jalr       $2
       addu      $7, $17, $0
  .L8007D040:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
      jr         $31
       addiu     $2, $0, -0x1
  .globl func_8007D060
func_8007D060:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x2EC($16)
      beqz       $2, .L8007D0B4
       nop
      lbu        $2, 0xAD4($16)
      bnez       $2, .L8007D0B4
       nop
      lw         $2, 0x2F0($16)
      lw         $3, 0x2EC($16)
      addiu      $2, $2, 0x1
      bne        $2, $3, .L8007D0B4
       sw        $2, 0x2F0($16)
      addu       $5, $0, $0
      addiu      $6, $0, 0x7
      jal        func_800656D4
       addu      $7, $5, $0
      addiu      $2, $0, 0x1
      sb         $2, 0xAD4($16)
  .L8007D0B4:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_8007D0C4
func_8007D0C4:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      jal        func_8007D50C
       sw        $16, 0x10($29)
      addu       $5, $2, $0
      bnez       $5, .L8007D0F0
       addiu     $2, $0, 0x2B
      j          .L8007D128
       addiu     $2, $0, -0x1
  .L8007D0F0:
      lbu        $3, 0x10($5)
      bne        $3, $2, .L8007D128
       addu      $2, $0, $0
      addu       $4, $17, $0
      jal        func_800658B4
       addu      $6, $0, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8007D128
       addu      $2, $16, $0
      lw         $4, 0x4($17)
      jal        func_8007D060
       nop
      addu       $2, $16, $0
  .L8007D128:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_8007D13C
func_8007D13C:
      addiu      $29, $29, -0x50
      sw         $16, 0x28($29)
      lw         $16, 0x64($29)
      sw         $19, 0x34($29)
      lw         $19, 0x60($29)
      sw         $21, 0x3C($29)
      addu       $21, $4, $0
      sw         $22, 0x40($29)
      addu       $22, $5, $0
      sw         $30, 0x48($29)
      addu       $30, $6, $0
      sw         $18, 0x30($29)
      addu       $18, $7, $0
      sw         $23, 0x44($29)
      addu       $23, $0, $0
      sw         $20, 0x38($29)
      addiu      $20, $0, 0x1
      sw         $31, 0x4C($29)
      beq        $16, $20, .L8007D198
       sw        $17, 0x2C($29)
      addiu      $2, $0, 0x5
      bnel       $16, $2, .L8007D384
       addiu     $20, $0, 0x6
  .L8007D198:
      bnez       $22, .L8007D1A8
       addu      $5, $19, $0
      j          .L8007D470
       addiu     $2, $0, -0x4
  .L8007D1A8:
      lw         $4, 0x14($21)
      jal        func_8007FB2C
       addu      $6, $0, $0
      addu       $17, $2, $0
      beqz       $17, .L8007D470
       addu      $2, $0, $0
      addiu      $2, $0, 0x5
      bne        $16, $2, .L8007D1D4
       nop
      j          .L8007D1E0
       sb        $20, 0x14($17)
  .L8007D1D4:
      lbu        $2, 0x14($17)
      bnel       $2, $0, .L8007D1E0
       sb        $0, 0x14($17)
  .L8007D1E0:
      lw         $4, 0x8($17)
      beql       $4, $0, .L8007D2AC
       sw        $22, 0x8($17)
      lw         $3, 0xC($17)
      beqz       $3, .L8007D2A8
       addu      $19, $4, $0
      addiu      $23, $0, 0x1
      lw         $2, 0x10($17)
      beqz       $2, .L8007D24C
       addu      $20, $3, $0
      addu       $16, $2, $0
      lw         $2, 0x8($16)
      beql       $2, $0, .L8007D22C
       addiu     $4, $0, 0xC
  .L8007D218:
      lw         $16, 0x8($16)
      lw         $2, 0x8($16)
      bnez       $2, .L8007D218
       nop
      addiu      $4, $0, 0xC
  .L8007D22C:
      jal        func_80052504
       addu      $5, $0, $0
      beqz       $2, .L8007D260
       sw        $2, 0x8($16)
      addu       $16, $2, $0
      sw         $19, 0x0($16)
      j          .L8007D274
       sw        $20, 0x4($16)
  .L8007D24C:
      addiu      $4, $0, 0xC
      jal        func_80052504
       addu      $5, $0, $0
      bnez       $2, .L8007D268
       sw        $2, 0x10($17)
  .L8007D260:
      j          .L8007D470
       addiu     $2, $0, -0x5
  .L8007D268:
      sw         $19, 0x0($2)
      lw         $2, 0x10($17)
      sw         $20, 0x4($2)
  .L8007D274:
      addu       $4, $19, $0
      addiu      $5, $0, 0xF
      lw         $2, 0x20($20)
      jalr       $2
       addu      $6, $0, $0
      addiu      $3, $0, 0x1
      bnel       $2, $3, .L8007D2AC
       sw        $22, 0x8($17)
      addu       $4, $19, $0
      addiu      $5, $0, 0xF
      lw         $2, 0x24($20)
      jalr       $2
       addu      $6, $0, $0
  .L8007D2A8:
      sw         $22, 0x8($17)
  .L8007D2AC:
      sw         $30, 0xC($17)
      lw         $6, 0x8($18)
      beqz       $6, .L8007D310
       nop
      lw         $2, 0xC($18)
      beqz       $2, .L8007D310
       nop
      lw         $2, 0x50($2)
      beqz       $2, .L8007D310
       andi      $2, $23, 0xFF
      bnez       $2, .L8007D310
       nop
      lw         $4, 0x14($21)
      jal        func_8007FB2C
       addu      $5, $0, $0
      addu       $3, $2, $0
      beqz       $3, .L8007D2FC
       addiu     $2, $0, 0x1
      j          .L8007D310
       sb        $2, 0x16($3)
  .L8007D2FC:
      lw         $2, 0xC($18)
      lw         $4, 0x8($18)
      lw         $2, 0x50($2)
      jalr       $2
       nop
  .L8007D310:
      lbu        $3, 0x38($18)
      addiu      $2, $0, 0x3
      sw         $22, 0x8($18)
      sw         $30, 0xC($18)
      bne        $3, $2, .L8007D334
       sw        $0, 0x14($18)
      addiu      $2, $0, 0x5
      j          .L8007D348
       sb        $2, 0x38($18)
  .L8007D334:
      addiu      $2, $0, 0x4
      sb         $2, 0x38($18)
      sb         $0, 0x3B($18)
      sw         $0, 0x18($18)
      sw         $0, 0x1C($18)
  .L8007D348:
      addu       $4, $21, $0
      lw         $6, 0x10($21)
      jal        func_8007C43C
       addu      $5, $18, $0
      addu       $4, $22, $0
      lui        $6, %hi(D_800F09D8)
      lw         $5, 0xC($21)
      lw         $2, 0x4($30)
      jalr       $2
       addiu     $6, $6, %lo(D_800F09D8)
      addu       $4, $21, $0
      jal        func_8007D0C4
       addu      $5, $22, $0
      j          .L8007D470
       addiu     $2, $0, 0x1
  .L8007D384:
      bne        $16, $20, .L8007D3D8
       addu      $5, $19, $0
      lw         $4, 0x14($21)
      jal        func_8007FB2C
       addu      $6, $0, $0
      addu       $17, $2, $0
      beqz       $17, .L8007D470
       addu      $2, $0, $0
      lw         $2, 0x8($17)
      bnez       $2, .L8007D464
       sb        $0, 0x14($17)
      lw         $2, 0x10($17)
      bnez       $2, .L8007D464
       addiu     $4, $21, 0x14
      sw         $0, 0x10($29)
      addu       $5, $0, $0
      addu       $6, $19, $0
      jal        func_8007FBBC
       addu      $7, $5, $0
      j          .L8007D464
       nop
  .L8007D3D8:
      lw         $4, 0x14($21)
      jal        func_8007FB2C
       addu      $6, $0, $0
      addu       $17, $2, $0
      beqz       $17, .L8007D470
       addu      $2, $0, $0
      lbu        $2, 0x14($17)
      bnel       $2, $0, .L8007D3FC
       sb        $0, 0x14($17)
  .L8007D3FC:
      lbu        $2, 0x16($17)
      bnel       $2, $0, .L8007D41C
       sw        $0, 0x10($29)
      addiu      $2, $0, -0x7
      beql       $16, $2, .L8007D418
       sb        $0, 0x38($18)
      sb         $20, 0x38($18)
  .L8007D418:
      sw         $0, 0x10($29)
  .L8007D41C:
      addiu      $4, $21, 0x14
      addu       $5, $0, $0
      addu       $6, $19, $0
      jal        func_8007FBBC
       addu      $7, $5, $0
      bnez       $22, .L8007D464
       nop
      lw         $2, 0x4($18)
      bnez       $2, .L8007D464
       addiu     $2, $0, 0x1
      sb         $2, 0x7B($21)
      addu       $4, $21, $0
      jal        func_8008BB94
       addiu     $5, $29, 0x18
      addu       $4, $21, $0
      addiu      $5, $29, 0x18
      jal        func_8008BB08
       addiu     $6, $0, 0x1
  .L8007D464:
      jal        func_8007E070
       addu      $4, $21, $0
      addiu      $2, $0, 0x1
  .L8007D470:
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
  .globl func_8007D4A0
func_8007D4A0:
      lw         $2, 0x4($4)
      jr         $31
       nop
  .globl func_8007D4AC
func_8007D4AC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      beqz       $4, .L8007D4FC
       addu      $3, $0, $0
      lbu        $5, 0x10($4)
      addiu      $2, $0, 0x2
      beq        $5, $2, .L8007D4DC
       addiu     $2, $0, 0x2B
      beq        $5, $2, .L8007D4F0
       nop
      j          .L8007D4FC
       nop
  .L8007D4DC:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x0($2)
      j          .L8007D4FC
       nop
  .L8007D4F0:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x8($2)
  .L8007D4FC:
      lw         $31, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_8007D50C
func_8007D50C:
      lw         $2, 0x4($4)
      lw         $2, 0x0($2)
      lw         $3, 0xC0($2)
      beqz       $3, .L8007D544
       nop
  .L8007D520:
      lw         $2, 0x8($3)
      bne        $2, $5, .L8007D538
       nop
      lw         $2, 0x4($3)
      jr         $31
       nop
  .L8007D538:
      lw         $3, 0x10($3)
      bnez       $3, .L8007D520
       nop
  .L8007D544:
      jr         $31
       addu      $2, $0, $0
  .globl D_8007D54C
D_8007D54C:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x1C($29)
      beqz       $17, .L8007D600
       sw        $16, 0x10($29)
      beqz       $18, .L8007D604
       addiu     $2, $0, 0x1
      lw         $5, 0x8($17)
      beqz       $5, .L8007D594
       addu      $16, $18, $0
      lw         $4, 0x8($16)
      jal        func_8005211C
       nop
      beqz       $2, .L8007D5B4
       nop
  .L8007D594:
      lw         $5, 0xC($17)
      beqz       $5, .L8007D5CC
       nop
      lw         $4, 0x8($16)
      jal        func_8005211C
       nop
      bnez       $2, .L8007D5CC
       nop
  .L8007D5B4:
      lw         $2, 0x0($17)
      sw         $2, 0x0($16)
      lw         $3, 0x4($17)
      addu       $2, $0, $0
      j          .L8007D604
       sw        $3, 0x4($16)
  .L8007D5CC:
      lw         $2, 0x4($17)
      beqz       $2, .L8007D600
       lui       $5, %hi(D_8007D54C)
      addiu      $5, $5, %lo(D_8007D54C)
      lw         $4, 0x0($17)
      lw         $2, 0x38($2)
      jalr       $2
       addu      $6, $18, $0
      blez       $2, .L8007D604
       addiu     $2, $0, 0x1
      lw         $3, 0x0($16)
      bnez       $3, .L8007D604
       addu      $2, $0, $0
  .L8007D600:
      addiu      $2, $0, 0x1
  .L8007D604:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_8007D61C
func_8007D61C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      lui        $5, %hi(D_8007D54C)
      addiu      $5, $5, %lo(D_8007D54C)
      sw         $31, 0x14($29)
      jal        func_8007A324
       addu      $6, $16, $0
      lw         $2, 0x0($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      sltu       $2, $0, $2
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_8007D654
func_8007D654:
      addiu      $29, $29, -0x30
      sw         $21, 0x24($29)
      addu       $21, $4, $0
      sw         $31, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($21)
      lw         $2, 0x0($2)
      addu       $20, $5, $0
      lw         $16, 0xC0($2)
      beqz       $16, .L8007D7BC
       addu      $19, $0, $0
      addiu      $22, $0, 0x4
  .L8007D698:
      lw         $3, 0x4($16)
      beqz       $3, .L8007D7B0
       addiu     $2, $0, 0x2
      lbu        $18, 0x10($3)
      bne        $18, $2, .L8007D7B0
       nop
      beq        $3, $20, .L8007D7B0
       nop
      lw         $2, 0x18($16)
      beqz       $2, .L8007D6D0
       nop
      lw         $2, 0x1C($16)
      bnez       $2, .L8007D7B0
       nop
  .L8007D6D0:
      lbu        $2, 0x38($16)
      beq        $2, $22, .L8007D6E4
       nop
      bne        $2, $18, .L8007D7B0
       nop
  .L8007D6E4:
      jal        func_80079C18
       addu      $4, $16, $0
      addu       $4, $20, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       addu      $17, $2, $0
      lw         $4, 0x0($2)
      jal        func_80079C18
       nop
      beqz       $17, .L8007D7B0
       nop
      beqz       $2, .L8007D7B0
       addu      $4, $17, $0
      jal        func_800175C0
       addu      $5, $2, $0
      bnez       $2, .L8007D7B0
       nop
      lw         $2, 0x1C($16)
      bnez       $2, .L8007D74C
       addu      $4, $20, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x0($2)
      lw         $2, 0x1C($2)
      addiu      $19, $0, 0x1
      sw         $2, 0x1C($16)
  .L8007D74C:
      lw         $2, 0x18($16)
      bnez       $2, .L8007D770
       addu      $4, $20, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x0($2)
      lw         $2, 0x18($2)
      addiu      $19, $0, 0x1
      sw         $2, 0x18($16)
  .L8007D770:
      lbu        $2, 0x38($16)
      bne        $2, $22, .L8007D784
       nop
      j          .L8007D78C
       addiu     $2, $0, 0x5
  .L8007D784:
      bne        $2, $18, .L8007D790
       addiu     $2, $0, 0x3
  .L8007D78C:
      sb         $2, 0x38($16)
  .L8007D790:
      lw         $3, 0x70($21)
      addiu      $2, $0, 0x1
      beq        $3, $2, .L8007D7B0
       nop
      lw         $2, 0x4($21)
      lw         $4, 0x0($2)
      jal        func_8005F1E8
       addu      $5, $16, $0
  .L8007D7B0:
      lw         $16, 0x10($16)
      bnez       $16, .L8007D698
       nop
  .L8007D7BC:
      addu       $2, $19, $0
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
  .globl func_8007D7E8
func_8007D7E8:
      addiu      $29, $29, -0x50
      sw         $19, 0x34($29)
      addu       $19, $4, $0
      sw         $18, 0x30($29)
      addu       $18, $5, $0
      sw         $31, 0x48($29)
      sw         $23, 0x44($29)
      sw         $22, 0x40($29)
      sw         $21, 0x3C($29)
      sw         $20, 0x38($29)
      sw         $17, 0x2C($29)
      beqz       $18, .L8007DA30
       sw        $16, 0x28($29)
      beqz       $19, .L8007DA30
       nop
      addiu      $4, $0, 0x401
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $21, $2, $0
      beqz       $21, .L8007DA28
       addu      $4, $18, $0
      jal        func_80017580
       addiu     $5, $0, 0x3B
      addu       $16, $2, $0
      beqz       $16, .L8007D994
       subu      $17, $16, $18
      slti       $2, $17, 0x5
      beqz       $2, .L8007DA28
       addiu     $4, $29, 0x10
      addu       $5, $18, $0
      jal        func_80052310
       addu      $6, $17, $0
      addiu      $4, $29, 0x10
      addu       $2, $4, $17
      jal        func_80024000
       sb        $0, 0x0($2)
      bnez       $2, .L8007D888
       sw        $2, 0x18($19)
      addiu      $2, $0, 0x1
      sw         $2, 0x18($19)
  .L8007D888:
      addu       $18, $0, $0
      addiu      $20, $0, 0x3B
      addiu      $22, $0, 0x20
      addiu      $23, $0, 0xA
  .L8007D898:
      lbu        $2, 0x0($16)
      beql       $2, $0, .L8007D8E0
       addiu     $18, $0, 0x1
      andi       $2, $2, 0xFF
  .L8007D8A8:
      beql       $2, $20, .L8007D8C4
       addiu     $16, $16, 0x1
      beql       $2, $22, .L8007D8C4
       addiu     $16, $16, 0x1
      bne        $2, $23, .L8007D8D0
       nop
      addiu      $16, $16, 0x1
  .L8007D8C4:
      lbu        $2, 0x0($16)
      bnez       $2, .L8007D8A8
       andi      $2, $2, 0xFF
  .L8007D8D0:
      lbu        $2, 0x0($16)
      bnez       $2, .L8007D8E4
       addu      $4, $16, $0
      addiu      $18, $0, 0x1
  .L8007D8E0:
      addu       $4, $16, $0
  .L8007D8E4:
      lui        $5, %hi(D_800ECC84)
      addiu      $5, $5, %lo(D_800ECC84)
      jal        func_80052224
       addiu     $6, $0, 0x3
      bnel       $2, $0, .L8007D980
       addiu     $18, $0, 0x1
      addu       $4, $16, $0
      jal        func_80017580
       addiu     $5, $0, 0x3D
      addu       $16, $2, $0
      beqz       $16, .L8007DA1C
       addiu     $16, $16, 0x1
      lbu        $2, 0x0($16)
      bne        $2, $22, .L8007D934
       nop
      addiu      $3, $0, 0x20
      addiu      $16, $16, 0x1
  .L8007D928:
      lbu        $2, 0x0($16)
      beql       $2, $3, .L8007D928
       addiu     $16, $16, 0x1
  .L8007D934:
      beql       $16, $0, .L8007DA28
       sw        $0, 0x18($19)
      lbu        $2, 0x0($16)
      beqz       $2, .L8007DA1C
       addu      $17, $21, $0
  .L8007D948:
      lbu        $4, 0x0($16)
      jal        func_800126C0
       nop
      bnel       $2, $0, .L8007D980
       sb        $0, 0x0($17)
      lbu        $2, 0x0($16)
      beql       $2, $20, .L8007D980
       sb        $0, 0x0($17)
      addiu      $16, $16, 0x1
      sb         $2, 0x0($17)
      lbu        $2, 0x0($16)
      bnez       $2, .L8007D948
       addiu     $17, $17, 0x1
      sb         $0, 0x0($17)
  .L8007D980:
      andi       $2, $18, 0xFF
      beqz       $2, .L8007D898
       addu      $4, $21, $0
      j          .L8007D9C8
       addiu     $5, $0, 0x1
  .L8007D994:
      jal        func_80024000
       addu      $4, $18, $0
      bnez       $2, .L8007D9AC
       sw        $2, 0x18($19)
      addiu      $2, $0, 0x1
      sw         $2, 0x18($19)
  .L8007D9AC:
      lw         $2, 0x4($19)
      lw         $2, 0x0($2)
      lw         $5, 0x2C($2)
      jal        func_80017640
       addu      $4, $21, $0
      addu       $4, $21, $0
      addiu      $5, $0, 0x1
  .L8007D9C8:
      jal        func_800570AC
       addiu     $6, $29, 0x20
      addu       $16, $2, $0
      beql       $16, $0, .L8007DA24
       sw        $0, 0x18($19)
      lw         $4, 0x1C($19)
      jal        func_80052540
       nop
      lw         $2, 0x4($19)
      lw         $2, 0x0($2)
      addu       $4, $16, $0
      lw         $5, 0x2C($2)
      jal        func_80057334
       addiu     $6, $0, 0x1F
      lbu        $3, 0x20($29)
      beqz       $3, .L8007DA28
       sw        $2, 0x1C($19)
      jal        func_80052540
       addu      $4, $16, $0
      j          .L8007DA28
       nop
  .L8007DA1C:
      j          .L8007DA28
       sw        $0, 0x18($19)
  .L8007DA24:
      sw         $0, 0x1C($19)
  .L8007DA28:
      jal        func_80052540
       addu      $4, $21, $0
  .L8007DA30:
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
  .globl func_8007DA5C
func_8007DA5C:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      addu       $4, $19, $0
      sw         $31, 0x20($29)
      jal        func_80017780
       sw        $17, 0x14($29)
      lw         $4, 0x44($18)
      beqz       $4, .L8007DB04
       addu      $17, $2, $0
      jal        func_80058434
       nop
      addu       $16, $2, $0
      beqz       $16, .L8007DB08
       addu      $2, $16, $0
  .L8007DAA8:
      lhu        $2, 0x2($16)
      andi       $2, $2, 0x4
      beqz       $2, .L8007DAF8
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x6
      lw         $2, 0x4($2)
      bne        $2, $17, .L8007DAF8
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
      beqz       $2, .L8007DB08
       addu      $2, $16, $0
  .L8007DAF8:
      lw         $16, 0x8($16)
      bnez       $16, .L8007DAA8
       nop
  .L8007DB04:
      addu       $2, $16, $0
  .L8007DB08:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
  .globl func_8007DB24
func_8007DB24:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $4, 0x44($4)
      beqz       $4, .L8007DB90
       addu      $16, $0, $0
      bnez       $5, .L8007DB54
       nop
      jal        func_80058434
       nop
      j          .L8007DB58
       addu      $16, $2, $0
  .L8007DB54:
      lw         $16, 0x8($5)
  .L8007DB58:
      beqz       $16, .L8007DB94
       addu      $2, $16, $0
  .L8007DB60:
      lhu        $2, 0x0($16)
      andi       $2, $2, 0x100
      beqz       $2, .L8007DB84
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $2, 0x0($2)
      bnez       $2, .L8007DB94
       addu      $2, $16, $0
  .L8007DB84:
      lw         $16, 0x8($16)
      bnez       $16, .L8007DB60
       nop
  .L8007DB90:
      addu       $2, $16, $0
  .L8007DB94:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
      addiu      $29, $29, -0x48
      sw         $20, 0x38($29)
      addu       $20, $5, $0
      sw         $19, 0x34($29)
      addu       $19, $6, $0
      sw         $16, 0x28($29)
      addu       $16, $0, $0
      sw         $21, 0x3C($29)
      addu       $21, $16, $0
      sw         $31, 0x40($29)
      sw         $18, 0x30($29)
      beqz       $4, .L8007DBE4
       sw        $17, 0x2C($29)
      lw         $4, 0x8($4)
      bnez       $4, .L8007DBEC
       addu      $18, $4, $0
  .L8007DBE4:
      j          .L8007DE34
       addiu     $2, $0, -0x4
  .L8007DBEC:
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $2, 0xB8($2)
      beql       $2, $0, .L8007DC88
       addu      $4, $18, $0
      lw         $3, 0x0($2)
      lw         $2, 0x8($3)
      bnel       $2, $20, .L8007DC88
       addu      $4, $18, $0
      addu       $17, $3, $0
      addiu      $2, $0, 0x1
      sb         $2, 0x7B($18)
      jal        func_8007BDE0
       addiu     $5, $0, 0x1
      addiu      $2, $0, 0x1
      bne        $19, $2, .L8007DCB4
       nop
      lw         $2, 0x70($18)
      blez       $2, .L8007DCB4
       nop
      sb         $19, 0x3B($17)
      lbu        $2, 0x78($18)
      beqz       $2, .L8007DCB4
       addiu     $3, $0, 0x8
      lw         $4, 0x8($17)
      lw         $2, 0xC($17)
      sb         $3, 0x38($17)
      lw         $2, 0x18($2)
      jalr       $2
       addiu     $5, $0, 0x1
      addu       $4, $18, $0
      jal        func_8008BB94
       addiu     $5, $29, 0x18
      addu       $4, $18, $0
      addiu      $5, $29, 0x18
      jal        func_8008BB08
       addiu     $6, $0, 0x1
      j          .L8007DCB4
       nop
  .L8007DC88:
      jal        func_8007D50C
       addu      $5, $20, $0
      jal        func_8007D4AC
       addu      $4, $2, $0
      addu       $17, $2, $0
      bnez       $17, .L8007DCCC
       addu      $5, $0, $0
      lw         $4, 0x14($18)
      jal        func_8007FB2C
       addu      $6, $20, $0
      addu       $16, $2, $0
  .L8007DCB4:
      bnez       $17, .L8007DCCC
       nop
      bnez       $16, .L8007DCD4
       addiu     $2, $0, -0x1
      j          .L8007DE34
       nop
  .L8007DCCC:
      beqz       $16, .L8007DD34
       nop
  .L8007DCD4:
      lw         $2, 0x8($16)
      bne        $2, $20, .L8007DCF8
       nop
      lw         $2, 0xC($16)
      lw         $2, 0x50($2)
      jalr       $2
       addu      $4, $20, $0
      j          .L8007DD80
       nop
  .L8007DCF8:
      lw         $4, 0x10($16)
      lw         $2, 0x0($4)
      beq        $2, $20, .L8007DD18
       nop
  .L8007DD08:
      lw         $4, 0x8($4)
      lw         $2, 0x0($4)
      bne        $2, $20, .L8007DD08
       nop
  .L8007DD18:
      lw         $2, 0x4($4)
      lw         $4, 0x0($4)
      lw         $2, 0x50($2)
      jalr       $2
       nop
      j          .L8007DD80
       nop
  .L8007DD34:
      beql       $19, $0, .L8007DD80
       sb        $0, 0x38($17)
      bgtz       $19, .L8007DD58
       addiu     $2, $0, 0x1
      addiu      $2, $0, -0x1
      beq        $19, $2, .L8007DD7C
       addiu     $2, $0, 0x6
      j          .L8007DE34
       addiu     $2, $0, -0x1
  .L8007DD58:
      beq        $19, $2, .L8007DD70
       addiu     $2, $0, 0x2
      beq        $19, $2, .L8007DD78
       addiu     $2, $0, -0x1
      j          .L8007DE34
       nop
  .L8007DD70:
      j          .L8007DD7C
       addiu     $2, $0, 0x8
  .L8007DD78:
      addiu      $2, $0, 0x7
  .L8007DD7C:
      sb         $2, 0x38($17)
  .L8007DD80:
      lw         $4, 0x14($18)
      addu       $5, $0, $0
      jal        func_8007FB2C
       addu      $6, $20, $0
      addu       $16, $2, $0
      beqz       $16, .L8007DDA0
       nop
      lbu        $21, 0x14($16)
  .L8007DDA0:
      bnez       $21, .L8007DDCC
       addiu     $4, $18, 0x14
      sw         $0, 0x10($29)
      addu       $5, $0, $0
      addu       $6, $5, $0
      jal        func_8007FBBC
       addu      $7, $20, $0
      jal        func_8007E070
       addu      $4, $18, $0
      j          .L8007DE34
       addiu     $2, $0, 0x1
  .L8007DDCC:
      lw         $2, 0x8($16)
      bne        $2, $20, .L8007DDF0
       nop
      lw         $2, 0x10($16)
      bnel       $2, $0, .L8007DE0C
       sw        $0, 0x10($29)
      sw         $0, 0x8($16)
      j          .L8007DE30
       sw        $0, 0xC($16)
  .L8007DDF0:
      bnel       $2, $0, .L8007DE0C
       sw        $0, 0x10($29)
      lw         $3, 0x10($16)
      lw         $2, 0x8($3)
      beql       $2, $0, .L8007DE28
       sw        $0, 0x0($3)
      sw         $0, 0x10($29)
  .L8007DE0C:
      addiu      $4, $18, 0x14
      addu       $5, $0, $0
      addu       $6, $5, $0
      jal        func_8007FBBC
       addu      $7, $20, $0
      j          .L8007DE34
       addiu     $2, $0, 0x1
  .L8007DE28:
      lw         $2, 0x10($16)
      sw         $0, 0x4($2)
  .L8007DE30:
      addiu      $2, $0, 0x1
  .L8007DE34:
      lw         $31, 0x40($29)
      lw         $21, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x48
      addiu      $29, $29, -0x18
      beqz       $4, .L8007DE70
       sw        $31, 0x10($29)
      lw         $4, 0x8($4)
      bnez       $4, .L8007DE78
       nop
  .L8007DE70:
      j          .L8007DE9C
       addiu     $2, $0, -0x4
  .L8007DE78:
      lw         $3, 0x2C($4)
      beqz       $3, .L8007DE9C
       addiu     $2, $0, 0x1
      lw         $4, 0x30($4)
      beqz       $4, .L8007DE9C
       nop
      lw         $2, 0x48($4)
      jalr       $2
       addu      $4, $3, $0
  .L8007DE9C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      beqz       $4, .L8007DECC
       sw        $16, 0x10($29)
      lw         $16, 0x8($4)
      bnez       $16, .L8007DED4
       nop
  .L8007DECC:
      j          .L8007DF78
       addiu     $2, $0, -0x4
  .L8007DED4:
      bnez       $6, .L8007DF5C
       addu      $4, $16, $0
      jal        func_8007D50C
       addu      $5, $17, $0
      beql       $2, $0, .L8007DF78
       addiu     $2, $0, -0x1
      jal        func_8007D4AC
       addu      $4, $2, $0
      bnez       $2, .L8007DF04
       addu      $5, $0, $0
      j          .L8007DF78
       addiu     $2, $0, -0x1
  .L8007DF04:
      lw         $4, 0x14($16)
      jal        func_8007FB2C
       addu      $6, $17, $0
      addu       $3, $2, $0
      beqz       $3, .L8007DF78
       addiu     $2, $0, 0x1
      lw         $2, 0x4($3)
      beqz       $2, .L8007DF78
       addiu     $2, $0, 0x1
      lbu        $2, 0x15($3)
      bnez       $2, .L8007DF78
       addiu     $2, $0, 0x1
      addiu      $2, $0, 0x1
      sb         $2, 0x15($3)
      lw         $4, 0x2C($16)
      lw         $5, 0xC($16)
      lw         $2, 0x4($3)
      lw         $3, 0x30($16)
      lw         $6, 0x10($2)
      lw         $2, 0x4C($3)
      j          .L8007DF6C
       nop
  .L8007DF5C:
      lw         $4, 0x2C($16)
      lw         $2, 0x30($16)
      lw         $5, 0xC($16)
      lw         $2, 0x4C($2)
  .L8007DF6C:
      jalr       $2
       nop
      addiu      $2, $0, 0x1
  .L8007DF78:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $31, 0x20($29)
      sw         $16, 0x18($29)
      beqz       $4, .L8007DFBC
       sw        $0, 0x10($29)
      lw         $4, 0x8($4)
      beqz       $4, .L8007E00C
       addiu     $2, $0, -0x4
      bnez       $17, .L8007DFC4
       nop
  .L8007DFBC:
      j          .L8007E00C
       addiu     $2, $0, -0x4
  .L8007DFC4:
      jal        func_80065884
       addiu     $6, $29, 0x10
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8007E00C
       addu      $2, $16, $0
      lw         $2, 0x0($17)
      lw         $5, 0x10($29)
      lw         $2, 0x3C($2)
      jalr       $2
       addu      $4, $17, $0
      lw         $4, 0x10($29)
      lw         $3, 0x0($4)
      addu       $16, $2, $0
      lw         $2, 0x4($3)
      jalr       $2
       nop
      addu       $2, $16, $0
  .L8007E00C:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
      addiu      $29, $29, -0x18
      beqz       $4, .L8007E038
       sw        $31, 0x10($29)
      lw         $4, 0x8($4)
      bnez       $4, .L8007E040
       nop
  .L8007E038:
      j          .L8007E064
       addiu     $2, $0, -0x4
  .L8007E040:
      lw         $3, 0x2C($4)
      beqz       $3, .L8007E064
       addu      $2, $0, $0
      lw         $4, 0x30($4)
      beqz       $4, .L8007E064
       nop
      lw         $2, 0x54($4)
      jalr       $2
       addu      $4, $3, $0
  .L8007E064:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_8007E070
func_8007E070:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($18)
      lw         $3, 0x2C0($2)
      addiu      $2, $0, -0x1
      beq        $3, $2, .L8007E0BC
       addiu     $19, $0, 0x1
      slt        $2, $3, $2
      bnez       $2, .L8007E0C4
       slti      $2, $3, 0x3
      beqz       $2, .L8007E0C4
       nop
      blez       $3, .L8007E0C4
       nop
  .L8007E0BC:
      j          .L8007E0D4
       addiu     $3, $0, 0x1
  .L8007E0C4:
      lw         $2, 0x4($18)
      lw         $2, 0x2C0($2)
      addu       $3, $0, $0
      sw         $2, 0x48($18)
  .L8007E0D4:
      andi       $2, $3, 0xFF
      beqz       $2, .L8007E22C
       addu      $2, $19, $0
      lw         $2, 0x14($18)
      bnez       $2, .L8007E22C
       addu      $2, $19, $0
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $16, 0xC0($2)
      beqz       $16, .L8007E164
       addu      $4, $0, $0
  .L8007E100:
      lbu        $2, 0x38($16)
      addiu      $2, $2, -0x2
      sltiu      $2, $2, 0x4
      bnez       $2, .L8007E158
       nop
      lbu        $2, 0x3B($16)
      bnez       $2, .L8007E148
       nop
      lw         $2, 0x18($16)
      blez       $2, .L8007E148
       nop
      lw         $2, 0x1C($16)
      blez       $2, .L8007E148
       nop
      lw         $2, 0x4($18)
      lw         $4, 0x0($2)
      jal        func_8005F1E8
       addu      $5, $16, $0
  .L8007E148:
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      addiu      $4, $0, 0x1
      sb         $4, 0xDF($2)
  .L8007E158:
      lw         $16, 0x10($16)
      bnez       $16, .L8007E100
       nop
  .L8007E164:
      lw         $2, 0x4($18)
      lw         $3, 0x70($18)
      lw         $2, 0x2C0($2)
      blez       $3, .L8007E184
       sw        $2, 0x48($18)
      andi       $2, $4, 0xFF
      beqz       $2, .L8007E19C
       nop
  .L8007E184:
      jal        func_8005F2DC
       addu      $4, $18, $0
      addu       $19, $2, $0
      addiu      $2, $0, 0x1
      bne        $19, $2, .L8007E22C
       addu      $2, $19, $0
  .L8007E19C:
      jal        func_8007A0BC
       addu      $4, $18, $0
      lw         $17, 0xA8($18)
      beql       $17, $0, .L8007E1D8
       addu      $4, $18, $0
      addu       $16, $17, $0
  .L8007E1B4:
      lw         $4, 0x0($16)
      lw         $17, 0x4($17)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
      bnel       $17, $0, .L8007E1B4
       addu      $16, $17, $0
      addu       $4, $18, $0
  .L8007E1D8:
      jal        func_800790AC
       sw        $0, 0xA8($18)
      lw         $3, 0x18($18)
      addiu      $2, $0, -0x1
      bne        $3, $2, .L8007E1F8
       nop
      jal        func_80089D5C
       addu      $4, $18, $0
  .L8007E1F8:
      lw         $2, 0x30($18)
      beql       $2, $0, .L8007E22C
       addu      $2, $19, $0
      lw         $2, 0x44($2)
      beql       $2, $0, .L8007E22C
       addu      $2, $19, $0
      lw         $4, 0x2C($18)
      lw         $5, 0xC($18)
      lw         $6, 0x48($18)
      jalr       $2
       nop
      addu       $19, $2, $0
      addu       $2, $19, $0
  .L8007E22C:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
  .globl func_8007E248
func_8007E248:
      addiu      $29, $29, -0x38
      sw         $22, 0x28($29)
      addu       $22, $4, $0
      sw         $23, 0x2C($29)
      addu       $23, $5, $0
      sw         $31, 0x34($29)
      sw         $30, 0x30($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      sw         $6, 0x40($29)
      beqz       $22, .L8007E2A4
       sw        $7, 0x44($29)
      beqz       $6, .L8007E40C
       addiu     $2, $0, -0x4
      beqz       $7, .L8007E40C
       nop
      lw         $8, 0x48($29)
      bnez       $8, .L8007E2AC
       nop
  .L8007E2A4:
      j          .L8007E40C
       addiu     $2, $0, -0x4
  .L8007E2AC:
      lw         $8, 0x44($29)
      lw         $19, 0x0($8)
      lw         $8, 0x40($29)
      lw         $21, 0x0($8)
      lw         $8, 0x48($29)
      lw         $20, 0x0($8)
      blez       $21, .L8007E340
       addu      $17, $0, $0
      lui        $30, %hi(D_800ECC48)
      addu       $16, $20, $0
      addu       $18, $19, $0
  .L8007E2D8:
      lw         $5, 0x0($18)
      beql       $5, $0, .L8007E330
       addiu     $16, $16, 0x4
      jal        func_8005211C
       addu      $4, $22, $0
      bnel       $2, $0, .L8007E330
       addiu     $16, $16, 0x4
      lw         $4, 0x0($16)
      jal        func_80052540
       nop
      addu       $4, $23, $0
      bnez       $23, .L8007E310
       sw        $0, 0x0($16)
      addiu      $4, $30, %lo(D_800ECC48)
  .L8007E310:
      jal        func_800523C0
       nop
      addu       $3, $2, $0
      sw         $3, 0x0($16)
      beqz       $3, .L8007E40C
       addiu     $2, $0, -0x5
      j          .L8007E40C
       addiu     $2, $0, 0x1
  .L8007E330:
      addiu      $17, $17, 0x1
      slt        $2, $17, $21
      bnez       $2, .L8007E2D8
       addiu     $18, $18, 0x4
  .L8007E340:
      bnez       $21, .L8007E36C
       addu      $4, $19, $0
      addiu      $4, $0, 0x4
      jal        func_80052504
       addu      $5, $0, $0
      addu       $19, $2, $0
      addiu      $4, $0, 0x4
      jal        func_80052504
       addu      $5, $0, $0
      j          .L8007E398
       addu      $20, $2, $0
  .L8007E36C:
      addiu      $16, $21, 0x1
      sll        $16, $16, 2
      addu       $5, $16, $0
      jal        func_80052524
       addu      $6, $0, $0
      addu       $19, $2, $0
      addu       $4, $20, $0
      addu       $5, $16, $0
      jal        func_80052524
       addu      $6, $0, $0
      addu       $20, $2, $0
  .L8007E398:
      beqz       $19, .L8007E40C
       addiu     $2, $0, -0x5
      bnez       $20, .L8007E3B8
       nop
      jal        func_80052540
       addu      $4, $19, $0
      j          .L8007E40C
       addiu     $2, $0, -0x5
  .L8007E3B8:
      jal        func_800523C0
       addu      $4, $22, $0
      sll        $16, $21, 2
      addu       $3, $16, $19
      addu       $4, $23, $0
      bnez       $4, .L8007E3DC
       sw        $2, 0x0($3)
      lui        $2, %hi(D_800ECC48)
      addiu      $4, $2, %lo(D_800ECC48)
  .L8007E3DC:
      jal        func_800523C0
       nop
      addu       $3, $16, $20
      sw         $2, 0x0($3)
      addiu      $2, $0, 0x1
      lw         $8, 0x40($29)
      addu       $3, $21, $2
      sw         $3, 0x0($8)
      lw         $8, 0x44($29)
      sw         $19, 0x0($8)
      lw         $8, 0x48($29)
      sw         $20, 0x0($8)
  .L8007E40C:
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
  .globl func_8007E43C
func_8007E43C:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x20($17)
      beqz       $2, .L8007E49C
       nop
      lw         $2, 0x1C($17)
      blez       $2, .L8007E490
       addu      $16, $0, $0
  .L8007E468:
      lw         $2, 0x20($17)
      sll        $3, $16, 2
      addu       $3, $3, $2
      lw         $4, 0x0($3)
      jal        func_80052540
       addiu     $16, $16, 0x1
      lw         $2, 0x1C($17)
      slt        $2, $16, $2
      bnez       $2, .L8007E468
       nop
  .L8007E490:
      lw         $4, 0x20($17)
      jal        func_80052540
       nop
  .L8007E49C:
      lw         $2, 0x24($17)
      beqz       $2, .L8007E4E8
       nop
      lw         $2, 0x1C($17)
      blez       $2, .L8007E4DC
       addu      $16, $0, $0
  .L8007E4B4:
      lw         $2, 0x24($17)
      sll        $3, $16, 2
      addu       $3, $3, $2
      lw         $4, 0x0($3)
      jal        func_80052540
       addiu     $16, $16, 0x1
      lw         $2, 0x1C($17)
      slt        $2, $16, $2
      bnez       $2, .L8007E4B4
       nop
  .L8007E4DC:
      lw         $4, 0x24($17)
      jal        func_80052540
       nop
  .L8007E4E8:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_8007E500
func_8007E500:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $31, 0x20($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x1C($19)
      blez       $2, .L8007E5E4
       addu      $18, $5, $0
      sw         $2, 0x1C($18)
      lw         $4, 0x1C($19)
      addu       $5, $0, $0
      jal        func_80052504
       sll       $4, $4, 2
      beqz       $2, .L8007E5EC
       sw        $2, 0x20($18)
      lw         $4, 0x1C($19)
      addu       $5, $0, $0
      jal        func_80052504
       sll       $4, $4, 2
      beqz       $2, .L8007E5EC
       sw        $2, 0x24($18)
      lw         $2, 0x1C($19)
      blez       $2, .L8007E5E4
       addu      $17, $0, $0
  .L8007E568:
      lw         $2, 0x20($19)
      sll        $16, $17, 2
      addu       $2, $16, $2
      lw         $4, 0x0($2)
      jal        func_800523C0
       nop
      lw         $3, 0x20($18)
      addu       $3, $16, $3
      sw         $2, 0x0($3)
      lw         $2, 0x20($18)
      addu       $2, $16, $2
      lw         $2, 0x0($2)
      beqz       $2, .L8007E5EC
       nop
      lw         $2, 0x24($19)
      addu       $2, $16, $2
      lw         $4, 0x0($2)
      jal        func_800523C0
       nop
      lw         $3, 0x24($18)
      addu       $3, $16, $3
      sw         $2, 0x0($3)
      lw         $2, 0x24($18)
      addu       $2, $16, $2
      lw         $2, 0x0($2)
      beqz       $2, .L8007E5EC
       addiu     $17, $17, 0x1
      lw         $2, 0x1C($19)
      slt        $2, $17, $2
      bnez       $2, .L8007E568
       nop
  .L8007E5E4:
      j          .L8007E5F8
       addiu     $2, $0, 0x1
  .L8007E5EC:
      jal        func_8007E43C
       addu      $4, $18, $0
      addiu      $2, $0, -0x5
  .L8007E5F8:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
  .globl func_8007E614
func_8007E614:
      addiu      $29, $29, -0x40
      sw         $21, 0x34($29)
      addu       $21, $5, $0
      sw         $17, 0x24($29)
      addu       $17, $6, $0
      addu       $5, $17, $0
      sw         $31, 0x38($29)
      sw         $20, 0x30($29)
      sw         $19, 0x2C($29)
      sw         $18, 0x28($29)
      jal        func_8007E500
       sw        $16, 0x20($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8007E6F4
       addu      $20, $16, $0
      addu       $4, $21, $0
      lui        $2, %hi(D_800ED0F0)
      addiu      $18, $2, %lo(D_800ED0F0)
      addu       $5, $18, $0
      addiu      $19, $29, 0x18
      addu       $6, $19, $0
      jal        func_800568F4
       addu      $7, $0, $0
      bltz       $2, .L8007E6A0
       addu      $4, $18, $0
      addiu      $6, $17, 0x1C
      addiu      $7, $17, 0x20
      lw         $5, 0x18($29)
      addiu      $2, $17, 0x24
      jal        func_8007E248
       sw        $2, 0x10($29)
      addu       $16, $2, $0
      bne        $16, $20, .L8007E6E4
       addiu     $2, $0, 0x1
  .L8007E6A0:
      addu       $4, $21, $0
      lui        $2, %hi(D_800ED100)
      addiu      $18, $2, %lo(D_800ED100)
      addu       $5, $18, $0
      addu       $6, $19, $0
      jal        func_800568F4
       addu      $7, $0, $0
      bltz       $2, .L8007E6E0
       addu      $4, $18, $0
      addiu      $6, $17, 0x1C
      addiu      $7, $17, 0x20
      lw         $5, 0x18($29)
      addiu      $2, $17, 0x24
      jal        func_8007E248
       sw        $2, 0x10($29)
      addu       $16, $2, $0
  .L8007E6E0:
      addiu      $2, $0, 0x1
  .L8007E6E4:
      beq        $16, $2, .L8007E6F8
       addu      $2, $16, $0
      jal        func_8007E43C
       addu      $4, $17, $0
  .L8007E6F4:
      addu       $2, $16, $0
  .L8007E6F8:
      lw         $31, 0x38($29)
      lw         $21, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x40
  .globl D_8007E71C
D_8007E71C:
      addiu      $29, $29, -0xA8
      sw         $21, 0x94($29)
      lw         $21, 0xBC($29)
      sw         $23, 0x9C($29)
      lw         $23, 0xC4($29)
      sw         $19, 0x8C($29)
      addu       $19, $5, $0
      sw         $30, 0xA0($29)
      addu       $30, $7, $0
      sw         $31, 0xA4($29)
      sw         $22, 0x98($29)
      sw         $20, 0x90($29)
      sw         $18, 0x88($29)
      sw         $17, 0x84($29)
      sw         $16, 0x80($29)
      beqz       $4, .L8007E76C
       sw        $6, 0xB0($29)
      lw         $4, 0x8($4)
      bnez       $4, .L8007E774
       addu      $17, $4, $0
  .L8007E76C:
      j          .L8007EE5C
       addiu     $2, $0, -0x4
  .L8007E774:
      lw         $2, 0x2C($17)
      beqz       $2, .L8007EE5C
       addiu     $2, $0, -0x1
      lw         $2, 0x30($17)
      beqz       $2, .L8007E7AC
       addu      $4, $17, $0
      jal        func_8007D50C
       addu      $5, $19, $0
      addu       $22, $2, $0
      jal        func_8007D4AC
       addu      $4, $22, $0
      addu       $20, $2, $0
      bnez       $20, .L8007E7B4
       nop
  .L8007E7AC:
      j          .L8007EE5C
       addiu     $2, $0, -0x1
  .L8007E7B4:
      beqz       $21, .L8007E7C8
       nop
      lbu        $2, 0x0($21)
      bnez       $2, .L8007E7E8
       addu      $4, $21, $0
  .L8007E7C8:
      lw         $2, 0x30($17)
      lw         $8, 0xB8($29)
      addu       $6, $0, $0
      sw         $21, 0x14($29)
      sw         $0, 0x18($29)
      sw         $23, 0x1C($29)
      j          .L8007EE44
       sw        $8, 0x10($29)
  .L8007E7E8:
      lui        $5, %hi(D_800ED7E4)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED7E4)
      bnez       $2, .L8007E950
       addu      $4, $21, $0
      lw         $9, 0xB8($29)
      andi       $2, $9, 0x68
      bnez       $2, .L8007E85C
       addiu     $4, $0, 0x14
      lw         $16, 0xC0($29)
      beqz       $16, .L8007E848
       addu      $4, $17, $0
      lw         $2, 0xC($16)
      bnez       $2, .L8007E848
       nop
      lw         $2, 0xC($20)
      lw         $4, 0x8($20)
      lw         $2, 0x2C($2)
      jalr       $2
       addiu     $5, $29, 0x70
      lw         $4, 0x70($29)
      jal        func_800542BC
       addiu     $5, $16, 0xC
      addu       $4, $17, $0
  .L8007E848:
      jal        func_8007FF24
       addu      $5, $16, $0
      addiu      $3, $0, -0x5
      beq        $2, $3, .L8007E8EC
       addiu     $4, $0, 0x14
  .L8007E85C:
      jal        func_80052504
       addu      $5, $0, $0
      addu       $18, $2, $0
      beqz       $18, .L8007EE5C
       addiu     $2, $0, -0x5
      lui        $2, (0x52515752 >> 16)
      ori        $2, $2, (0x52515752 & 0xFFFF)
      sw         $2, 0x0($18)
      addiu      $2, $0, 0x1
      sw         $2, 0x4($18)
      lw         $10, 0xB0($29)
      sw         $10, 0xC($18)
      sw         $20, 0x8($18)
      lw         $2, 0xA8($17)
      bnel       $2, $0, .L8007E8B8
       addu      $16, $2, $0
      addiu      $4, $0, 0x8
      jal        func_80052504
       addu      $5, $0, $0
      beqz       $2, .L8007E8E4
       sw        $2, 0xA8($17)
      j          .L8007E8F8
       sw        $18, 0x0($2)
  .L8007E8B8:
      lw         $2, 0x4($16)
      beqz       $2, .L8007E8D4
       addiu     $4, $0, 0x8
  .L8007E8C4:
      lw         $16, 0x4($16)
      lw         $2, 0x4($16)
      bnez       $2, .L8007E8C4
       addiu     $4, $0, 0x8
  .L8007E8D4:
      jal        func_80052504
       addu      $5, $0, $0
      bnez       $2, .L8007E8F4
       sw        $2, 0x4($16)
  .L8007E8E4:
      jal        func_80052540
       addu      $4, $18, $0
  .L8007E8EC:
      j          .L8007EE5C
       addiu     $2, $0, -0x5
  .L8007E8F4:
      sw         $18, 0x0($2)
  .L8007E8F8:
      lw         $4, 0x14($17)
      addu       $5, $0, $0
      jal        func_8007FB2C
       addu      $6, $19, $0
      bnez       $2, .L8007E92C
       addu      $6, $18, $0
      addiu      $4, $17, 0x14
      addu       $5, $20, $0
      sw         $0, 0x10($29)
      lw         $7, 0xC($5)
      jal        func_8007FA4C
       addu      $6, $19, $0
      addu       $6, $18, $0
  .L8007E92C:
      lui        $3, %hi(D_800ED7E4)
      lw         $2, 0x30($17)
      lw         $11, 0xB8($29)
      addiu      $3, $3, %lo(D_800ED7E4)
      sw         $3, 0x14($29)
      sw         $0, 0x18($29)
      sw         $23, 0x1C($29)
      j          .L8007EE44
       sw        $11, 0x10($29)
  .L8007E950:
      lui        $5, %hi(D_800ED7DC)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED7DC)
      beqz       $2, .L8007E984
       addu      $19, $0, $0
      lbu        $2, 0x0($21)
      bnez       $2, .L8007ED2C
       nop
      beqz       $22, .L8007ED2C
       addiu     $2, $0, 0x2B
      lbu        $3, 0x10($22)
      bne        $3, $2, .L8007ED2C
       nop
  .L8007E984:
      lw         $8, 0xB8($29)
      andi       $2, $8, 0x68
      bnez       $2, .L8007EA88
       addu      $23, $19, $0
      addu       $4, $22, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x4($17)
      lw         $4, 0x0($3)
      lw         $5, 0x14($2)
      jal        func_80063054
       addiu     $4, $4, 0x34
      sw         $2, 0x28($29)
      sw         $0, 0x24($29)
      lw         $2, 0xC($20)
      lw         $4, 0x8($20)
      lw         $2, 0x2C($2)
      jalr       $2
       addiu     $5, $29, 0x74
      lw         $4, 0x74($29)
      beqz       $4, .L8007EA64
       addu      $16, $19, $0
      lw         $3, 0x0($4)
      beql       $3, $0, .L8007EA68
       addu      $4, $17, $0
      lw         $2, 0x4($4)
      beql       $2, $0, .L8007EA68
       addu      $4, $17, $0
      jalr       $3
       addiu     $5, $29, 0x78
      lw         $5, 0x78($29)
      lw         $3, 0x0($5)
      slt        $2, $19, $3
      beqz       $2, .L8007EA38
       addu      $4, $19, $0
      addiu      $7, $0, 0x2002
      addu       $6, $3, $0
      lw         $3, 0x4($5)
  .L8007EA1C:
      lw         $2, 0x0($3)
      bne        $2, $7, .L8007EA2C
       addiu     $4, $4, 0x1
      lw         $16, 0x4($3)
  .L8007EA2C:
      slt        $2, $4, $6
      bnez       $2, .L8007EA1C
       addiu     $3, $3, 0xC
  .L8007EA38:
      beqz       $16, .L8007EA68
       addu      $4, $17, $0
      lw         $4, 0x74($29)
      lw         $2, 0x0($16)
      jalr       $2
       addiu     $5, $29, 0x24
      lw         $4, 0x74($29)
      lw         $5, 0x78($29)
      lw         $2, 0x4($4)
      jalr       $2
       nop
  .L8007EA64:
      addu       $4, $17, $0
  .L8007EA68:
      lw         $2, 0x0($30)
      addiu      $5, $29, 0x20
      sw         $0, 0x2C($29)
      jal        func_8007FF24
       sw        $2, 0x20($29)
      addiu      $3, $0, -0x5
      beq        $2, $3, .L8007E8EC
       addiu     $23, $29, 0x20
  .L8007EA88:
      lw         $18, 0x14($17)
      beqz       $18, .L8007EB7C
       addiu     $19, $0, 0x1
      addu       $16, $18, $0
  .L8007EA98:
      lw         $2, 0x0($16)
      lw         $18, 0x18($18)
      bne        $2, $20, .L8007EB74
       nop
      lbu        $2, 0x15($16)
      bnez       $2, .L8007EB74
       nop
      lw         $4, 0x8($16)
      beql       $4, $0, .L8007EB54
       sb        $19, 0x15($16)
      lw         $2, 0xC($16)
      beql       $2, $0, .L8007EB54
       sb        $19, 0x15($16)
      lw         $2, 0x10($2)
      jalr       $2
       addiu     $5, $0, 0x1
      addiu      $5, $0, 0xF
      lw         $2, 0xC($16)
      lw         $4, 0x8($16)
      lw         $2, 0x20($2)
      jalr       $2
       addu      $6, $0, $0
      bne        $2, $19, .L8007EB0C
       addiu     $5, $0, 0xF
      lw         $2, 0xC($16)
      lw         $4, 0x8($16)
      lw         $2, 0x24($2)
      j          .L8007EB30
       addu      $6, $0, $0
  .L8007EB0C:
      beqz       $2, .L8007EB38
       nop
      sb         $19, 0x15($16)
      lw         $4, 0x2C($17)
      lw         $5, 0xC($17)
      lw         $2, 0x4($16)
      lw         $3, 0x30($17)
      lw         $6, 0x10($2)
      lw         $2, 0x4C($3)
  .L8007EB30:
      jalr       $2
       nop
  .L8007EB38:
      lbu        $2, 0x14($16)
      beqz       $2, .L8007EB74
       nop
      lbu        $2, 0x15($16)
      bnez       $2, .L8007EB74
       nop
      sb         $19, 0x15($16)
  .L8007EB54:
      lw         $4, 0x2C($17)
      lw         $5, 0xC($17)
      lw         $2, 0x4($16)
      lw         $3, 0x30($17)
      lw         $6, 0x10($2)
      lw         $2, 0x4C($3)
      jalr       $2
       nop
  .L8007EB74:
      bnez       $18, .L8007EA98
       addu      $16, $18, $0
  .L8007EB7C:
      addiu      $4, $0, 0x14
      jal        func_80052504
       addu      $5, $0, $0
      addu       $19, $2, $0
      beqz       $19, .L8007E8EC
       lui       $2, (0x52515752 >> 16)
      ori        $2, $2, (0x52515752 & 0xFFFF)
      addiu      $4, $17, 0x14
      addu       $5, $20, $0
      addu       $6, $0, $0
      addu       $7, $6, $0
      sw         $2, 0x0($19)
      addiu      $2, $0, 0x3
      sw         $2, 0x48($17)
      addiu      $2, $0, 0x2
      sb         $2, 0x38($5)
      sw         $0, 0x4($19)
      sw         $5, 0x8($19)
      sw         $5, 0xC($19)
      jal        func_8007FA4C
       sw        $19, 0x10($29)
      beqz       $21, .L8007ECF0
       addu      $4, $21, $0
      lui        $5, %hi(D_800ED7DC)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED7DC)
      bnez       $2, .L8007ECF4
       addu      $6, $19, $0
      beqz       $22, .L8007ECF4
       addiu     $2, $0, 0x2B
      lbu        $3, 0x10($22)
      bne        $3, $2, .L8007ECF8
       lui       $2, %hi(D_800ED7E4)
      addiu      $16, $29, 0x30
      addu       $4, $16, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x3C
      addu       $2, $30, $0
      addiu      $3, $30, 0x30
  .L8007EC1C:
      lw         $9, 0x0($2)
      lw         $10, 0x4($2)
      lw         $11, 0x8($2)
      lw         $8, 0xC($2)
      sw         $9, 0x0($16)
      sw         $10, 0x4($16)
      sw         $11, 0x8($16)
      sw         $8, 0xC($16)
      addiu      $2, $2, 0x10
      bne        $2, $3, .L8007EC1C
       addiu     $16, $16, 0x10
      addu       $4, $22, $0
      addiu      $5, $0, 0x2
      lw         $9, 0x0($2)
      lw         $10, 0x4($2)
      lw         $11, 0x8($2)
      sw         $9, 0x0($16)
      sw         $10, 0x4($16)
      sw         $11, 0x8($16)
      sw         $0, 0x4C($29)
      sw         $0, 0x50($29)
      jal        func_80058268
       sw        $0, 0x54($29)
      addu       $4, $30, $0
      addiu      $18, $29, 0x30
      lw         $5, 0x4($2)
      jal        func_8007E614
       addu      $6, $18, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      beq        $16, $2, .L8007ECA4
       addu      $6, $19, $0
      j          .L8007EE5C
       addu      $2, $16, $0
  .L8007ECA4:
      lui        $2, %hi(D_800ED7E4)
      lw         $3, 0x30($17)
      lw         $9, 0xB8($29)
      addiu      $2, $2, %lo(D_800ED7E4)
      sw         $2, 0x14($29)
      addiu      $2, $6, 0x10
      sw         $23, 0x18($29)
      sw         $2, 0x1C($29)
      sw         $9, 0x10($29)
      lw         $4, 0x2C($17)
      lw         $5, 0xC($17)
      lw         $2, 0x14($3)
      jalr       $2
       addu      $7, $18, $0
      addu       $16, $2, $0
      jal        func_8007E43C
       addu      $4, $18, $0
      j          .L8007EE5C
       addu      $2, $16, $0
  .L8007ECF0:
      addu       $6, $19, $0
  .L8007ECF4:
      lui        $2, %hi(D_800ED7E4)
  .L8007ECF8:
      lw         $3, 0x30($17)
      lw         $10, 0xB8($29)
      addiu      $2, $2, %lo(D_800ED7E4)
      sw         $2, 0x14($29)
      addiu      $2, $6, 0x10
      sw         $23, 0x18($29)
      sw         $2, 0x1C($29)
      sw         $10, 0x10($29)
      lw         $4, 0x2C($17)
      lw         $5, 0xC($17)
      lw         $2, 0x14($3)
      j          .L8007EE54
       addu      $7, $30, $0
  .L8007ED2C:
      beqz       $21, .L8007EDB8
       addu      $4, $21, $0
      lui        $5, %hi(D_800ED7D4)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED7D4)
      bnez       $2, .L8007ED70
       addu      $4, $21, $0
      addu       $6, $0, $0
      lui        $3, %hi(D_800ED7DC)
      lw         $2, 0x30($17)
      lw         $11, 0xB8($29)
      addiu      $3, $3, %lo(D_800ED7DC)
      sw         $3, 0x14($29)
      sw         $0, 0x18($29)
      sw         $23, 0x1C($29)
      j          .L8007EE44
       sw        $11, 0x10($29)
  .L8007ED70:
      lui        $5, %hi(D_800ED7CC)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED7CC)
      beqz       $2, .L8007ED98
       addu      $4, $21, $0
      lui        $5, %hi(D_800ED7F0)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED7F0)
      bnez       $2, .L8007EDBC
       addiu     $16, $29, 0x30
  .L8007ED98:
      lw         $2, 0x30($17)
      lw         $8, 0xB8($29)
      addu       $6, $0, $0
      sw         $21, 0x14($29)
      sw         $0, 0x18($29)
      sw         $23, 0x1C($29)
      j          .L8007EE44
       sw        $8, 0x10($29)
  .L8007EDB8:
      addiu      $16, $29, 0x30
  .L8007EDBC:
      addu       $4, $16, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0xC
      sw         $21, 0x38($29)
      lw         $4, 0xC($17)
      jal        func_8007D61C
       addu      $5, $16, $0
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8007EE28
       nop
      lw         $2, 0x30($29)
      beqz       $2, .L8007EE28
       nop
      lw         $3, 0x34($29)
      beqz       $3, .L8007EE28
       addu      $5, $0, $0
      lui        $2, %hi(D_800ED7DC)
      addiu      $2, $2, %lo(D_800ED7DC)
      sw         $2, 0x10($29)
      sw         $0, 0x14($29)
      sw         $23, 0x18($29)
      lw         $4, 0x30($29)
      lw         $2, 0x4C($3)
      lw         $7, 0xB8($29)
      j          .L8007EE54
       addu      $6, $30, $0
  .L8007EE28:
      lw         $2, 0x30($17)
      lw         $9, 0xB8($29)
      addu       $6, $0, $0
      sw         $21, 0x14($29)
      sw         $0, 0x18($29)
      sw         $23, 0x1C($29)
      sw         $9, 0x10($29)
  .L8007EE44:
      lw         $4, 0x2C($17)
      lw         $5, 0xC($17)
      lw         $2, 0x14($2)
      addu       $7, $30, $0
  .L8007EE54:
      jalr       $2
       nop
  .L8007EE5C:
      lw         $31, 0xA4($29)
      lw         $30, 0xA0($29)
      lw         $23, 0x9C($29)
      lw         $22, 0x98($29)
      lw         $21, 0x94($29)
      lw         $20, 0x90($29)
      lw         $19, 0x8C($29)
      lw         $18, 0x88($29)
      lw         $17, 0x84($29)
      lw         $16, 0x80($29)
      jr         $31
       addiu     $29, $29, 0xA8
  .globl func_8007EE8C
func_8007EE8C:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      beqz       $17, .L8007EFB0
       addiu     $2, $0, -0x4
      lw         $2, 0x4($17)
      lw         $3, 0x2C0($2)
      addiu      $2, $0, 0x3
      bne        $3, $2, .L8007EEDC
       nop
      lw         $4, 0x2C($17)
      lw         $2, 0x30($17)
      lw         $5, 0xC($17)
      lw         $2, 0x4C($2)
      jalr       $2
       addu      $6, $0, $0
  .L8007EEDC:
      lw         $18, 0x14($17)
      beqz       $18, .L8007EFAC
       addiu     $19, $0, 0x1
      addu       $16, $18, $0
  .L8007EEEC:
      lbu        $2, 0x15($16)
      lw         $18, 0x18($18)
      bnez       $2, .L8007EFA4
       nop
      lw         $4, 0x8($16)
      beql       $4, $0, .L8007EF84
       sb        $19, 0x15($16)
      lw         $2, 0xC($16)
      beqz       $2, .L8007EF80
       addiu     $5, $0, 0xF
      lw         $2, 0x20($2)
      jalr       $2
       addu      $6, $0, $0
      bne        $2, $19, .L8007EF3C
       addiu     $5, $0, 0xF
      lw         $2, 0xC($16)
      lw         $4, 0x8($16)
      lw         $2, 0x24($2)
      j          .L8007EF60
       addu      $6, $0, $0
  .L8007EF3C:
      beqz       $2, .L8007EF68
       nop
      sb         $19, 0x15($16)
      lw         $4, 0x2C($17)
      lw         $5, 0xC($17)
      lw         $2, 0x4($16)
      lw         $3, 0x30($17)
      lw         $6, 0x10($2)
      lw         $2, 0x4C($3)
  .L8007EF60:
      jalr       $2
       nop
  .L8007EF68:
      lbu        $2, 0x14($16)
      beqz       $2, .L8007EFA4
       nop
      lbu        $2, 0x15($16)
      bnez       $2, .L8007EFA4
       nop
  .L8007EF80:
      sb         $19, 0x15($16)
  .L8007EF84:
      lw         $4, 0x2C($17)
      lw         $5, 0xC($17)
      lw         $2, 0x4($16)
      lw         $3, 0x30($17)
      lw         $6, 0x10($2)
      lw         $2, 0x4C($3)
      jalr       $2
       nop
  .L8007EFA4:
      bnez       $18, .L8007EEEC
       addu      $16, $18, $0
  .L8007EFAC:
      addiu      $2, $0, 0x1
  .L8007EFB0:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
      addiu      $29, $29, -0x18
      addu       $5, $6, $0
      sw         $31, 0x10($29)
      jal        func_8007A324
       addu      $6, $7, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_8007EFEC
func_8007EFEC:
      addiu      $29, $29, -0x38
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $23, 0x2C($29)
      addu       $23, $5, $0
      lui        $2, %hi(D_80137AC8)
      addiu      $2, $2, %lo(D_80137AC8)
      sw         $31, 0x34($29)
      sw         $30, 0x30($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $3, 0xF4($2)
      addu       $22, $0, $0
      sw         $3, 0x54($20)
      lw         $2, 0xF8($2)
      addu       $21, $22, $0
      beqz       $23, .L8007F0FC
       sw        $2, 0x58($20)
      blez       $23, .L8007F0FC
       addu      $18, $0, $0
      lui        $30, %hi(D_800ED100)
      addu       $16, $7, $0
      addu       $19, $6, $0
  .L8007F058:
      lw         $17, 0x0($19)
      andi       $2, $22, 0xFF
      bnez       $2, .L8007F0A8
       andi      $2, $21, 0xFF
      lui        $8, %hi(D_800ED0F0)
      addiu      $4, $8, %lo(D_800ED0F0)
      jal        func_8005211C
       addu      $5, $17, $0
      bnez       $2, .L8007F0A8
       andi      $2, $21, 0xFF
      lw         $4, 0x0($16)
      jal        func_80024000
       addiu     $22, $0, 0x1
      lw         $3, 0x4($20)
      sw         $2, 0x54($20)
      lw         $3, 0x0($3)
      lw         $2, 0xB0($3)
      ori        $2, $2, 0x80
      sw         $2, 0xB0($3)
      andi       $2, $21, 0xFF
  .L8007F0A8:
      bnel       $2, $0, .L8007F0EC
       addiu     $16, $16, 0x4
      addiu      $4, $30, %lo(D_800ED100)
      jal        func_8005211C
       addu      $5, $17, $0
      bnel       $2, $0, .L8007F0EC
       addiu     $16, $16, 0x4
      lw         $4, 0x0($16)
      jal        func_80024000
       addiu     $21, $0, 0x1
      lw         $3, 0x4($20)
      sw         $2, 0x58($20)
      lw         $3, 0x0($3)
      lw         $2, 0xB0($3)
      ori        $2, $2, 0x100
      sw         $2, 0xB0($3)
      addiu      $16, $16, 0x4
  .L8007F0EC:
      addiu      $18, $18, 0x1
      slt        $2, $18, $23
      bnez       $2, .L8007F058
       addiu     $19, $19, 0x4
  .L8007F0FC:
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
  .globl func_8007F12C
func_8007F12C:
      addiu      $29, $29, -0x30
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x34($19)
      addu       $17, $0, $0
      srl        $2, $2, 1
      xori       $2, $2, 0x1
      andi       $2, $2, 0x1
      blez       $20, .L8007F1B4
       sw        $2, 0x5C($19)
      lui        $21, %hi(D_800ECF7C)
      addu       $18, $7, $0
      addu       $16, $6, $0
  .L8007F17C:
      lw         $5, 0x0($16)
      jal        func_8005211C
       addiu     $4, $21, %lo(D_800ECF7C)
      bnel       $2, $0, .L8007F1A4
       addiu     $18, $18, 0x4
      lw         $4, 0x0($18)
      jal        func_80024000
       nop
      j          .L8007F1B4
       sw        $2, 0x5C($19)
  .L8007F1A4:
      addiu      $17, $17, 0x1
      slt        $2, $17, $20
      bnez       $2, .L8007F17C
       addiu     $16, $16, 0x4
  .L8007F1B4:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
  .globl func_8007F1D8
func_8007F1D8:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $31, 0x2C($29)
      sw         $18, 0x28($29)
      beqz       $17, .L8007F20C
       sw        $16, 0x20($29)
      lw         $2, 0x4($17)
      beql       $2, $0, .L8007F2EC
       addiu     $2, $0, -0x4
      lw         $16, 0x0($2)
      bnez       $16, .L8007F214
       lui       $2, %hi(D_80137AC8)
  .L8007F20C:
      j          .L8007F2EC
       addiu     $2, $0, -0x4
  .L8007F214:
      addiu      $18, $2, %lo(D_80137AC8)
      lw         $4, 0x28($18)
      jal        func_8005236C
       nop
      lw         $3, 0xB0($16)
      andi       $3, $3, 0x100
      bnez       $3, .L8007F23C
       sb        $2, 0xE0($16)
      lw         $2, 0xF8($18)
      sw         $2, 0x58($17)
  .L8007F23C:
      lw         $2, 0xB0($16)
      andi       $2, $2, 0x80
      bnez       $2, .L8007F254
       nop
      lw         $2, 0xF4($18)
      sw         $2, 0x54($17)
  .L8007F254:
      lw         $2, 0x70($17)
      lw         $3, 0x24($18)
      beq        $2, $3, .L8007F270
       nop
      sw         $3, 0x70($17)
      jal        func_8007A0BC
       addu      $4, $17, $0
  .L8007F270:
      jal        func_8007A030
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8007F2A8
       nop
      jal        func_8005FC84
       addu      $4, $17, $0
      addu       $4, $17, $0
      jal        func_8008BB94
       addiu     $5, $29, 0x10
      addu       $4, $17, $0
      addiu      $5, $29, 0x10
      jal        func_8008BB08
       addiu     $6, $0, 0x1
  .L8007F2A8:
      lw         $2, 0x4($17)
      lw         $2, 0x0($2)
      lw         $16, 0xC0($2)
      beqz       $16, .L8007F2EC
       addiu     $2, $0, 0x1
  .L8007F2BC:
      lw         $4, 0x8($16)
      beqz       $4, .L8007F2E0
       nop
      lw         $2, 0xC($16)
      beqz       $2, .L8007F2E0
       addiu     $5, $0, 0xD
      lw         $2, 0x24($2)
      jalr       $2
       addu      $6, $0, $0
  .L8007F2E0:
      lw         $16, 0x10($16)
      bnez       $16, .L8007F2BC
       addiu     $2, $0, 0x1
  .L8007F2EC:
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
  .globl func_8007F304
func_8007F304:
      addiu      $29, $29, -0x50
      sw         $16, 0x30($29)
      lw         $16, 0x60($29)
      sw         $19, 0x3C($29)
      lw         $19, 0x64($29)
      sw         $20, 0x40($29)
      lw         $20, 0x68($29)
      sw         $17, 0x34($29)
      addu       $17, $4, $0
      sw         $18, 0x38($29)
      addu       $18, $5, $0
      sw         $21, 0x44($29)
      addu       $21, $6, $0
      sw         $22, 0x48($29)
      addu       $22, $7, $0
      beqz       $16, .L8007F3BC
       sw        $31, 0x4C($29)
      lbu        $2, 0x0($16)
      beqz       $2, .L8007F3BC
       addiu     $4, $29, 0x20
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0xC
      sw         $16, 0x28($29)
      lw         $4, 0xC($17)
      jal        func_8007D61C
       addiu     $5, $29, 0x20
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8007F3D8
       nop
      lw         $2, 0x20($29)
      beqz       $2, .L8007F3D8
       nop
      lw         $3, 0x24($29)
      beqz       $3, .L8007F3D8
       addu      $5, $18, $0
      addu       $6, $21, $0
      lui        $2, %hi(D_800ED7DC)
      addiu      $2, $2, %lo(D_800ED7DC)
      sw         $2, 0x10($29)
      sw         $19, 0x14($29)
      sw         $20, 0x18($29)
      lw         $4, 0x20($29)
      lw         $2, 0x4C($3)
      j          .L8007F400
       addu      $7, $22, $0
  .L8007F3BC:
      lw         $2, 0x4($17)
      lw         $2, 0x0($2)
      lw         $2, 0xC4($2)
      bnez       $2, .L8007F3D8
       addu      $16, $2, $0
      lui        $2, %hi(D_800ED7DC)
      addiu      $16, $2, %lo(D_800ED7DC)
  .L8007F3D8:
      lw         $2, 0x30($17)
      addu       $6, $18, $0
      sw         $22, 0x10($29)
      sw         $16, 0x14($29)
      sw         $19, 0x18($29)
      sw         $20, 0x1C($29)
      lw         $4, 0x2C($17)
      lw         $5, 0xC($17)
      lw         $2, 0x14($2)
      addu       $7, $21, $0
  .L8007F400:
      jalr       $2
       nop
      lw         $31, 0x4C($29)
      lw         $22, 0x48($29)
      lw         $21, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x50
  .globl func_8007F430
func_8007F430:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      addu       $4, $20, $0
      sw         $31, 0x24($29)
      jal        func_8007D4AC
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L8007F4CC
       addu      $2, $17, $0
      lw         $4, 0x8($16)
      beqz       $4, .L8007F4CC
       nop
      lw         $2, 0xC($16)
      beql       $2, $0, .L8007F4CC
       addu      $2, $17, $0
      lw         $2, 0x14($2)
      jalr       $2
       addu      $5, $19, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L8007F4CC
       addu      $2, $17, $0
      lw         $4, 0x2C($18)
      lw         $2, 0x30($18)
      lw         $5, 0xC($18)
      lw         $2, 0x30($2)
      jalr       $2
       nop
      lw         $2, 0x8($16)
      sw         $20, 0x24($18)
      sw         $2, 0x20($18)
      addu       $2, $17, $0
  .L8007F4CC:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
  .globl func_8007F4EC
func_8007F4EC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8007D4AC
       nop
      lw         $31, 0x10($29)
      sltiu      $2, $2, 0x1
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_8007F50C
func_8007F50C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      sw         $31, 0x14($29)
      jal        func_8007F4EC
       addu      $16, $4, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8007F534
       addu      $2, $0, $0
      jal        func_8008BF8C
       addu      $4, $16, $0
  .L8007F534:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_8007F548
func_8007F548:
      lw         $2, 0x20($4)
      xor        $2, $2, $5
      jr         $31
       sltiu     $2, $2, 0x1
  .globl func_8007F558
func_8007F558:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80077B54
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_8007F574
func_8007F574:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $16, 0x20($29)
      sw         $31, 0x28($29)
      jal        func_80077B54
       addu      $16, $5, $0
      bnez       $2, .L8007F5B4
       addu      $4, $17, $0
      addiu      $5, $0, 0x1
      addu       $2, $5, $0
      addu       $6, $5, $0
      addiu      $7, $29, 0x18
      sw         $0, 0x18($29)
      jal        func_80077CD0
       sw        $2, 0x10($29)
  .L8007F5B4:
      lw         $5, 0xC($17)
      jal        func_8007F548
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L8007F60C
       nop
      lw         $4, 0x2C($17)
      beqz       $4, .L8007F60C
       nop
      lw         $3, 0x30($17)
      beqz       $3, .L8007F60C
       andi      $2, $16, 0xFF
      beqz       $2, .L8007F5FC
       nop
      lw         $5, 0xC($17)
      lw         $2, 0x30($3)
      jalr       $2
       nop
  .L8007F5FC:
      lw         $2, 0xC($17)
      addu       $4, $17, $0
      jal        func_8008BFA4
       sw        $2, 0x20($17)
  .L8007F60C:
      jal        func_80077B54
       addu      $4, $17, $0
      jal        func_8007D4AC
       addu      $4, $2, $0
      addu       $16, $2, $0
      beqz       $16, .L8007F660
       nop
      lw         $2, 0xC($16)
      beqz       $2, .L8007F660
       nop
      lw         $4, 0x8($16)
      lw         $2, 0x14($2)
      jalr       $2
       addiu     $5, $0, 0x1
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8007F660
       nop
      lw         $2, 0x20($17)
      lw         $3, 0x8($16)
      bnel       $2, $3, .L8007F660
       sw        $3, 0x20($17)
  .L8007F660:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
  .globl func_8007F674
func_8007F674:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      lw         $5, 0xC($16)
      jal        func_8007F548
       addu      $18, $6, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8007F6B4
       nop
      lw         $2, 0x24($16)
      beq        $2, $17, .L8007F6F0
       nop
  .L8007F6B4:
      jal        func_8007F50C
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8007F6E8
       addu      $4, $16, $0
      jal        func_8007F574
       addiu     $5, $0, 0x1
      addu       $4, $16, $0
      addu       $5, $17, $0
      jal        func_8008BF94
       andi      $6, $18, 0xFF
      j          .L8007F6F0
       sw        $17, 0x24($16)
  .L8007F6E8:
      jal        func_8007F574
       addiu     $5, $0, 0x1
  .L8007F6F0:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_8007F708
func_8007F708:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      addu       $4, $5, $0
      addu       $3, $0, $0
      addiu      $2, $0, 0x3
      beq        $4, $2, .L8007F750
       sw        $31, 0x24($29)
      jal        func_80079AE0
       nop
      addiu      $3, $0, 0x1
      sw         $3, 0x10($29)
      addu       $4, $16, $0
      addu       $5, $2, $0
      addu       $6, $3, $0
      jal        func_80077BA4
       addiu     $7, $29, 0x18
      addu       $3, $2, $0
  .L8007F750:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x28
  .globl func_8007F764
func_8007F764:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      jal        func_80077B54
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L8007F7D8
       nop
      jal        func_8007F4EC
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8007F7AC
       addu      $4, $17, $0
      jal        func_8008BF9C
       addu      $5, $16, $0
      j          .L8007F7D8
       nop
  .L8007F7AC:
      jal        func_8007D4AC
       addu      $4, $16, $0
      beqz       $2, .L8007F7D8
       nop
      lw         $3, 0xC($2)
      beqz       $3, .L8007F7D8
       nop
      lw         $4, 0x8($2)
      lw         $2, 0x14($3)
      jalr       $2
       addiu     $5, $0, 0x3
  .L8007F7D8:
      jal        func_8008BFC0
       addu      $4, $17, $0
      sw         $0, 0x20($17)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_8007F7F8
func_8007F7F8:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      addiu      $2, $0, 0x3
      bne        $18, $2, .L8007F82C
       sw        $31, 0x1C($29)
      lw         $2, 0x20($16)
      beqz       $2, .L8007F830
       nop
  .L8007F82C:
      addiu      $17, $0, 0x1
  .L8007F830:
      jal        func_8007F764
       addu      $4, $16, $0
      andi       $2, $17, 0xFF
      beqz       $2, .L8007F86C
       nop
      lw         $4, 0x2C($16)
      beqz       $4, .L8007F86C
       nop
      lw         $2, 0x30($16)
      beqz       $2, .L8007F86C
       nop
      lw         $2, 0x34($2)
      lw         $5, 0xC($16)
      jalr       $2
       addu      $6, $18, $0
  .L8007F86C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_8007F884
func_8007F884:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addiu      $16, $0, 0x1
      bnez       $4, .L8007F8A0
       sw        $31, 0x14($29)
      j          .L8007F8F4
       addiu     $2, $0, -0x4
  .L8007F8A0:
      lw         $4, 0x8($4)
      addiu      $3, $5, -0x1
      sltiu      $2, $3, 0x8
      beqz       $2, .L8007F8EC
       lui       $2, %hi(jtbl_800F0D98)
      addiu      $2, $2, %lo(jtbl_800F0D98)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8007F8CC
.L8007F8CC:
      jal        func_8007F574
       addu      $5, $0, $0
      j          .L8007F8F4
       addu      $2, $16, $0
  .globl .L8007F8DC
.L8007F8DC:
      jal        func_8007F764
       nop
      j          .L8007F8F4
       addu      $2, $16, $0
  .L8007F8EC:
      addiu      $16, $0, -0x4
      addu       $2, $16, $0
  .L8007F8F4:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      beqz       $4, .L8007F928
       sw        $16, 0x10($29)
      lw         $16, 0x8($4)
      bnez       $16, .L8007F930
       nop
  .L8007F928:
      j          .L8007F978
       addiu     $2, $0, -0x4
  .L8007F930:
      lw         $4, 0x2C($16)
      beqz       $4, .L8007F978
       addiu     $2, $0, -0x1
      lw         $2, 0x30($16)
      bnez       $2, .L8007F950
       nop
      j          .L8007F978
       addiu     $2, $0, -0x1
  .L8007F950:
      lw         $5, 0xC($16)
      lw         $2, 0x30($2)
      jalr       $2
       nop
      addu       $4, $16, $0
      jal        func_8007D50C
       addu      $5, $17, $0
      sw         $2, 0x24($16)
      addiu      $2, $0, 0x1
      sw         $17, 0x20($16)
  .L8007F978:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $31, 0x18($29)
      beqz       $4, .L8007F9B0
       sw        $16, 0x10($29)
      lw         $16, 0x8($4)
      bnez       $16, .L8007F9B8
       nop
  .L8007F9B0:
      j          .L8007FA38
       addiu     $2, $0, -0x4
  .L8007F9B8:
      lw         $2, 0x2C($16)
      beqz       $2, .L8007FA38
       addiu     $2, $0, -0x1
      lw         $2, 0x30($16)
      bnez       $2, .L8007F9D8
       addiu     $2, $0, 0x3
      j          .L8007FA38
       addiu     $2, $0, -0x1
  .L8007F9D8:
      bne        $17, $2, .L8007FA04
       addu      $4, $16, $0
      jal        func_8008BFC0
       addu      $4, $16, $0
      lw         $4, 0x2C($16)
      lw         $5, 0xC($16)
      lw         $2, 0x30($16)
      sw         $0, 0x20($16)
      lw         $2, 0x34($2)
      j          .L8007FA2C
       addiu     $6, $0, 0x3
  .L8007FA04:
      addu       $5, $17, $0
      jal        func_8007F708
       addu      $6, $0, $0
      addiu      $3, $0, 0x1
      beq        $2, $3, .L8007FA34
       addu      $6, $17, $0
      lw         $4, 0x2C($16)
      lw         $2, 0x30($16)
      lw         $5, 0xC($16)
      lw         $2, 0x34($2)
  .L8007FA2C:
      jalr       $2
       nop
  .L8007FA34:
      addiu      $2, $0, 0x1
  .L8007FA38:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_8007FA4C
func_8007FA4C:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      lw         $17, 0x38($29)
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $20, 0x20($29)
      addu       $20, $7, $0
      beqz       $16, .L8007FA90
       sw        $31, 0x24($29)
      bnez       $17, .L8007FA98
       nop
      bnez       $18, .L8007FA98
       nop
  .L8007FA90:
      j          .L8007FB0C
       addiu     $2, $0, -0x4
  .L8007FA98:
      lw         $2, 0x0($16)
      bnel       $2, $0, .L8007FAC0
       addu      $16, $2, $0
      addiu      $4, $0, 0x1C
      jal        func_80052504
       addu      $5, $0, $0
      beqz       $2, .L8007FAEC
       sw        $2, 0x0($16)
      j          .L8007FAF8
       addu      $16, $2, $0
  .L8007FAC0:
      lw         $2, 0x18($16)
      beqz       $2, .L8007FADC
       addiu     $4, $0, 0x1C
  .L8007FACC:
      lw         $16, 0x18($16)
      lw         $2, 0x18($16)
      bnez       $2, .L8007FACC
       addiu     $4, $0, 0x1C
  .L8007FADC:
      jal        func_80052504
       addu      $5, $0, $0
      bnez       $2, .L8007FAF4
       sw        $2, 0x18($16)
  .L8007FAEC:
      j          .L8007FB0C
       addiu     $2, $0, -0x5
  .L8007FAF4:
      addu       $16, $2, $0
  .L8007FAF8:
      addiu      $2, $0, 0x1
      sw         $19, 0x0($16)
      sw         $17, 0x4($16)
      sw         $18, 0x8($16)
      sw         $20, 0xC($16)
  .L8007FB0C:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
  .globl func_8007FB2C
func_8007FB2C:
      beqz       $4, .L8007FB44
       nop
      bnez       $6, .L8007FB54
       nop
      bnez       $5, .L8007FB54
       nop
  .L8007FB44:
      jr         $31
       addu      $2, $0, $0
  .L8007FB4C:
      jr         $31
       addu      $2, $4, $0
  .L8007FB54:
      beqz       $4, .L8007FBB4
       nop
  .L8007FB5C:
      beqz       $6, .L8007FB9C
       nop
      lw         $2, 0x8($4)
      beq        $2, $6, .L8007FB4C
       nop
      lw         $2, 0x10($4)
      beqz       $2, .L8007FBA8
       addu      $3, $2, $0
  .L8007FB7C:
      lw         $2, 0x0($3)
      beq        $2, $6, .L8007FB4C
       nop
      lw         $3, 0x8($3)
      beqz       $3, .L8007FBA8
       nop
      j          .L8007FB7C
       nop
  .L8007FB9C:
      lw         $2, 0x4($4)
      beq        $2, $5, .L8007FB4C
       nop
  .L8007FBA8:
      lw         $4, 0x18($4)
      bnez       $4, .L8007FB5C
       nop
  .L8007FBB4:
      jr         $31
       addu      $2, $0, $0
  .globl func_8007FBBC
func_8007FBBC:
      addiu      $29, $29, -0x30
      sw         $21, 0x24($29)
      lw         $21, 0x40($29)
      sw         $22, 0x28($29)
      addu       $22, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $17, 0x14($29)
      addu       $17, $7, $0
      sw         $31, 0x2C($29)
      sw         $18, 0x18($29)
      beqz       $22, .L8007FD54
       sw        $16, 0x10($29)
      lw         $2, 0x0($22)
      beql       $2, $0, .L8007FD94
       addiu     $2, $0, -0x4
      bnez       $20, .L8007FC2C
       lui       $3, (0x52515752 >> 16)
      bnez       $17, .L8007FC24
       nop
      bnez       $19, .L8007FC24
       nop
      beqz       $21, .L8007FD94
       addiu     $2, $0, -0x4
  .L8007FC24:
      beqz       $20, .L8007FC3C
       lui       $3, (0x52515752 >> 16)
  .L8007FC2C:
      lw         $2, 0x0($20)
      ori        $3, $3, (0x52515752 & 0xFFFF)
      bne        $2, $3, .L8007FD94
       addiu     $2, $0, -0x4
  .L8007FC3C:
      lw         $16, 0x0($22)
      beqz       $16, .L8007FD54
       addu      $18, $0, $0
  .L8007FC48:
      beqz       $19, .L8007FC60
       nop
      beq        $16, $19, .L8007FD4C
       nop
      j          .L8007FD40
       addu      $18, $16, $0
  .L8007FC60:
      beqz       $17, .L8007FD10
       nop
      lw         $2, 0x8($16)
      bne        $2, $17, .L8007FC8C
       nop
      lw         $2, 0x10($16)
      sw         $0, 0x8($16)
      beqz       $2, .L8007FD4C
       sw        $0, 0xC($16)
      j          .L8007FD94
       addiu     $2, $0, 0x1
  .L8007FC8C:
      lw         $4, 0x10($16)
      beqz       $4, .L8007FD3C
       addu      $5, $0, $0
      addu       $3, $0, $0
  .L8007FC9C:
      lw         $2, 0x0($4)
      bnel       $2, $17, .L8007FCD8
       addu      $3, $4, $0
      bnez       $3, .L8007FCC0
       nop
      lw         $2, 0x10($16)
      lw         $2, 0x8($2)
      j          .L8007FCC8
       sw        $2, 0x10($16)
  .L8007FCC0:
      lw         $2, 0x8($4)
      sw         $2, 0x8($3)
  .L8007FCC8:
      jal        func_80052540
       nop
      j          .L8007FCE4
       addiu     $5, $0, 0x1
  .L8007FCD8:
      lw         $4, 0x8($4)
      bnez       $4, .L8007FC9C
       nop
  .L8007FCE4:
      andi       $2, $5, 0xFF
      beql       $2, $0, .L8007FD40
       addu      $18, $16, $0
      lw         $2, 0x8($16)
      bnez       $2, .L8007FD94
       addiu     $2, $0, 0x1
      lw         $2, 0x10($16)
      beqz       $2, .L8007FD4C
       addiu     $2, $0, 0x1
      j          .L8007FD94
       nop
  .L8007FD10:
      beqz       $21, .L8007FD30
       nop
      lw         $2, 0x4($16)
      beqz       $2, .L8007FD34
       nop
      lw         $2, 0x10($2)
      beq        $2, $21, .L8007FD4C
       nop
  .L8007FD30:
      lw         $2, 0x4($16)
  .L8007FD34:
      beq        $2, $20, .L8007FD4C
       nop
  .L8007FD3C:
      addu       $18, $16, $0
  .L8007FD40:
      lw         $16, 0x18($16)
      bnez       $16, .L8007FC48
       nop
  .L8007FD4C:
      bnez       $16, .L8007FD5C
       nop
  .L8007FD54:
      j          .L8007FD94
       addiu     $2, $0, -0x4
  .L8007FD5C:
      bnez       $18, .L8007FD74
       nop
      lw         $2, 0x0($22)
      lw         $2, 0x18($2)
      j          .L8007FD7C
       sw        $2, 0x0($22)
  .L8007FD74:
      lw         $2, 0x18($16)
      sw         $2, 0x18($18)
  .L8007FD7C:
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
      addiu      $2, $0, 0x1
  .L8007FD94:
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
  .globl func_8007FDBC
func_8007FDBC:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $16, 0x10($29)
      sw         $31, 0x20($29)
      jal        func_80079C3C
       addu      $16, $7, $0
      bnez       $2, .L8007FDF8
       sw        $2, 0x0($18)
      j          .L8007FE64
       addiu     $16, $0, -0x5
  .L8007FDF8:
      addu       $4, $2, $0
      addu       $5, $17, $0
      jal        func_8007FE84
       addu      $6, $16, $0
      addu       $16, $2, $0
      bltz       $16, .L8007FE54
       nop
      beqz       $17, .L8007FE34
       lui       $16, %hi(D_80138B70)
      addiu      $16, $16, %lo(D_80138B70)
      addu       $4, $16, $0
      addu       $5, $17, $0
      jal        func_80052310
       addiu     $6, $0, 0x100
      sb         $0, 0xFF($16)
  .L8007FE34:
      lw         $4, 0xAC($19)
      lw         $5, 0x0($18)
      jal        func_80051CF4
       nop
      addu       $16, $2, $0
      lui        $2, %hi(D_80138B70)
      bgez       $16, .L8007FE64
       sb        $0, %lo(D_80138B70)($2)
  .L8007FE54:
      lw         $4, 0x0($18)
      jal        func_80052540
       nop
      sw         $0, 0x0($18)
  .L8007FE64:
      addu       $2, $16, $0
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
  .globl func_8007FE84
func_8007FE84:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      addu       $4, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $16, 0x10($29)
      addiu      $16, $0, 0x1
      bnez       $17, .L8007FEB4
       sw        $31, 0x1C($29)
      j          .L8007FF0C
       addiu     $2, $0, -0x4
  .L8007FEB4:
      beql       $4, $0, .L8007FEE0
       sw        $0, 0x0($17)
      lbu        $2, 0x0($4)
      beql       $2, $0, .L8007FEE0
       sw        $0, 0x0($17)
      jal        func_800523C0
       nop
      bnez       $2, .L8007FEE0
       sw        $2, 0x0($17)
      j          .L8007FF08
       addiu     $16, $0, -0x5
  .L8007FEE0:
      beql       $18, $0, .L8007FF08
       sw        $0, 0x4($17)
      lbu        $2, 0x0($18)
      beql       $2, $0, .L8007FF08
       sw        $0, 0x4($17)
      jal        func_800523C0
       addu      $4, $18, $0
      bnez       $2, .L8007FF08
       sw        $2, 0x4($17)
      addiu      $16, $0, -0x5
  .L8007FF08:
      addu       $2, $16, $0
  .L8007FF0C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_8007FF24
func_8007FF24:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $16, 0x20($29)
      addu       $16, $5, $0
      sw         $31, 0x2C($29)
      beqz       $17, .L8007FF4C
       sw        $18, 0x28($29)
      bnez       $16, .L8007FF54
       lui       $3, %hi(D_8007E71C)
  .L8007FF4C:
      j          .L8008008C
       addiu     $2, $0, -0x4
  .L8007FF54:
      lw         $2, 0x30($17)
      lw         $2, 0x14($2)
      addiu      $3, $3, %lo(D_8007E71C)
      beq        $2, $3, .L8008008C
       addiu     $2, $0, 0x1
      lw         $2, 0xAC($17)
      bnez       $2, .L8007FFA4
       addiu     $4, $0, 0x32
      lui        $5, %hi(D_80079C5C)
      addiu      $5, $5, %lo(D_80079C5C)
      jal        func_80051B88
       addiu     $6, $17, 0xAC
      bltz       $2, .L8008008C
       addu      $4, $17, $0
      lw         $6, 0x4($16)
      lw         $7, 0x8($16)
      jal        func_8007FDBC
       addiu     $5, $29, 0x10
      bltz       $2, .L8008008C
       nop
  .L8007FFA4:
      lw         $4, 0xAC($17)
      addiu      $5, $0, 0x2
      jal        func_80051C70
       addiu     $6, $29, 0x14
      bltz       $2, .L8008008C
       nop
      lw         $4, 0x8($16)
      beql       $4, $0, .L8007FFE8
       addu      $4, $17, $0
      lw         $2, 0x14($29)
      lw         $5, 0x4($2)
      beql       $5, $0, .L8007FFE8
       addu      $4, $17, $0
      jal        func_800175C0
       nop
      beqz       $2, .L80080078
       addu      $4, $17, $0
  .L8007FFE8:
      lw         $6, 0x4($16)
      lw         $7, 0x8($16)
      jal        func_8007FDBC
       addiu     $5, $29, 0x10
      bltz       $2, .L8008008C
       nop
      lw         $2, 0xC($16)
      beqz       $2, .L80080078
       addu      $5, $0, $0
      lw         $4, 0xAC($17)
      addu       $6, $5, $0
      jal        func_80051D68
       addiu     $7, $29, 0x18
      bltz       $2, .L8008008C
       addiu     $18, $0, 0x1
      lw         $3, 0x10($29)
      addu       $2, $18, $0
      sb         $2, 0xD($3)
  .L80080030:
      lw         $4, 0x18($29)
      jal        func_80051E6C
       nop
      beqz       $2, .L8008006C
       sw        $2, 0x10($29)
      lw         $4, 0x0($2)
      beqz       $4, .L80080030
       nop
      lw         $5, 0xC($16)
      jal        func_800175C0
       nop
      bnez       $2, .L80080030
       nop
      lw         $2, 0x10($29)
      sb         $18, 0xC($2)
  .L8008006C:
      lw         $4, 0x18($29)
      jal        func_80051E40
       nop
  .L80080078:
      addu       $4, $17, $0
      lw         $6, 0x0($16)
      lw         $7, 0x8($16)
      jal        func_8007FDBC
       addiu     $5, $29, 0x10
  .L8008008C:
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
  .globl func_800800A4
func_800800A4:
      addiu      $29, $29, -0x90
      sw         $18, 0x80($29)
      addu       $18, $4, $0
      sw         $17, 0x7C($29)
      addu       $17, $5, $0
      sw         $16, 0x78($29)
      addu       $16, $6, $0
      sw         $20, 0x88($29)
      addu       $20, $7, $0
      sw         $19, 0x84($29)
      addiu      $19, $29, 0x30
      addu       $4, $19, $0
      addu       $5, $0, $0
      addiu      $6, $0, 0x3C
      sw         $31, 0x8C($29)
      jal        func_80016140
       sw        $0, 0x70($29)
      addiu      $4, $29, 0x20
      addu       $5, $0, $0
      addiu      $6, $0, 0xC
      jal        func_80016140
       sw        $16, 0x30($29)
      sw         $17, 0x28($29)
      lw         $4, 0xC($18)
      jal        func_8007D61C
       addiu     $5, $29, 0x20
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8008015C
       addu      $2, $0, $0
      lw         $2, 0x20($29)
      beqz       $2, .L8008015C
       addu      $2, $0, $0
      lw         $3, 0x24($29)
      beqz       $3, .L8008015C
       addu      $5, $0, $0
      addu       $6, $19, $0
      lui        $2, %hi(D_800ED7DC)
      addiu      $2, $2, %lo(D_800ED7DC)
      sw         $2, 0x10($29)
      addiu      $2, $29, 0x70
      sw         $0, 0x14($29)
      sw         $2, 0x18($29)
      lw         $4, 0x20($29)
      lw         $2, 0x4C($3)
      jalr       $2
       addu      $7, $20, $0
  .L8008015C:
      lw         $31, 0x8C($29)
      lw         $20, 0x88($29)
      lw         $19, 0x84($29)
      lw         $18, 0x80($29)
      lw         $17, 0x7C($29)
      lw         $16, 0x78($29)
      jr         $31
       addiu     $29, $29, 0x90
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800842D4
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8008451C
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
      addiu      $29, $29, -0x20
      lw         $2, 0x34($29)
      sw         $2, 0x10($29)
      lw         $7, 0x30($29)
      sw         $31, 0x18($29)
      jal        func_8008456C
       nop
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8008BB30
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8008C070
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_80080214
func_80080214:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      addu       $5, $6, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      lw         $2, 0x4($16)
      bnez       $2, .L8008025C
       addiu     $3, $0, 0x1
      lw         $2, 0xC($16)
      lw         $4, 0x8($16)
      lw         $2, 0x18($2)
      jalr       $2
       nop
      j          .L800802E8
       nop
  .L8008025C:
      addiu      $17, $0, 0x2
      beq        $5, $17, .L800802D8
       slti      $2, $5, 0x3
      beqz       $2, .L80080280
       addiu     $2, $0, 0x3
      beq        $5, $3, .L800802AC
       addiu     $2, $0, -0x4
      j          .L800802E8
       nop
  .L80080280:
      beq        $5, $2, .L800802B8
       addiu     $2, $0, 0x4
      bne        $5, $2, .L800802E8
       addiu     $2, $0, -0x4
      lw         $2, 0xC($16)
      lw         $4, 0x8($16)
      lw         $2, 0x18($2)
      jalr       $2
       addiu     $5, $0, 0x4
      addiu      $2, $0, 0x1
      sb         $2, 0x3A($16)
  .L800802AC:
      addiu      $2, $0, 0x1
      j          .L800802DC
       sb        $2, 0x39($16)
  .L800802B8:
      lw         $2, 0xC($16)
      lw         $4, 0x8($16)
      lw         $2, 0x18($2)
      jalr       $2
       addiu     $5, $0, 0x3
      sb         $17, 0x3A($16)
      j          .L800802E8
       sb        $17, 0x39($16)
  .L800802D8:
      sb         $5, 0x39($16)
  .L800802DC:
      addu       $4, $18, $0
      jal        func_80080300
       addu      $5, $16, $0
  .L800802E8:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_80080300
func_80080300:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lw         $5, 0x4($16)
      beqz       $5, .L80080334
       addiu     $17, $0, 0x1
      lw         $3, 0xC($16)
      bnez       $3, .L8008033C
       addiu     $18, $0, 0x2
  .L80080334:
      j          .L800803FC
       addiu     $2, $0, 0x1
  .L8008033C:
      lbu        $2, 0x39($16)
      bne        $2, $18, .L80080370
       nop
      lbu        $2, 0x3A($16)
      beq        $2, $18, .L800803FC
       addu      $2, $17, $0
      lw         $4, 0x8($16)
      lw         $2, 0x18($3)
      jalr       $2
       addu      $5, $18, $0
      addu       $17, $2, $0
      j          .L800803F8
       sb        $18, 0x3A($16)
  .L80080370:
      bne        $2, $17, .L800803FC
       addiu     $2, $0, -0x4
      lbu        $2, 0x3A($16)
      lbu        $3, 0x10($5)
      xori       $2, $2, 0x1
      sltiu      $2, $2, 0x1
      bne        $3, $18, .L800803A0
       addu      $19, $2, $0
      jal        func_8007837C
       nop
      j          .L800803A8
       andi      $2, $2, 0xFF
  .L800803A0:
      addiu      $2, $0, 0x1
      andi       $2, $2, 0xFF
  .L800803A8:
      beql       $2, $0, .L800803D0
       andi      $2, $19, 0xFF
      lw         $2, 0xC($16)
      lw         $4, 0x8($16)
      lw         $2, 0x18($2)
      jalr       $2
       addiu     $5, $0, 0x1
      addu       $17, $2, $0
      j          .L800803F4
       addiu     $2, $0, 0x1
  .L800803D0:
      beql       $2, $0, .L800803FC
       addu      $2, $17, $0
      lw         $2, 0xC($16)
      lw         $4, 0x8($16)
      lw         $2, 0x18($2)
      jalr       $2
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      addiu      $2, $0, 0x2
  .L800803F4:
      sb         $2, 0x3A($16)
  .L800803F8:
      addu       $2, $17, $0
  .L800803FC:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
  .globl func_80080418
func_80080418:
      bltz       $5, .L80080438
       addu      $2, $0, $0
      lw         $2, 0x4($4)
      lw         $2, 0x0($2)
      lw         $2, 0xC($2)
      slt        $3, $2, $5
      beql       $3, $0, .L80080438
       addu      $2, $5, $0
  .L80080438:
      jr         $31
       nop
  .globl func_80080440
func_80080440:
      bltz       $5, .L80080460
       addu      $2, $0, $0
      lw         $2, 0x4($4)
      lw         $2, 0x0($2)
      lw         $2, 0x8($2)
      slt        $3, $2, $5
      beql       $3, $0, .L80080460
       addu      $2, $5, $0
  .L80080460:
      jr         $31
       nop
  .globl func_80080468
func_80080468:
      lw         $2, 0x4($4)
      lw         $3, 0x8C($4)
      lw         $2, 0x0($2)
      lw         $4, 0x4C($4)
      lw         $2, 0x18($2)
      addu       $3, $3, $4
      slt        $2, $2, $3
      jr         $31
       xori      $2, $2, 0x1
  .globl func_8008048C
func_8008048C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      beqz       $16, .L800804EC
       addiu     $2, $0, -0x4
      addiu      $2, $0, 0xC
      bne        $5, $2, .L800804CC
       addiu     $2, $0, 0xB
      lw         $4, 0x90($16)
      beqz       $4, .L800804EC
       addiu     $2, $0, 0x1
      jal        func_80052488
       nop
      j          .L800804E8
       sw        $0, 0x90($16)
  .L800804CC:
      bne        $5, $2, .L800804EC
       addiu     $2, $0, 0x1
      lw         $2, 0x18($16)
      blez       $2, .L800804EC
       addiu     $2, $0, 0x1
      jal        func_80089DEC
       addu      $4, $16, $0
  .L800804E8:
      addiu      $2, $0, 0x1
  .L800804EC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
      j          .L8008052C
  .globl func_80080500
func_80080500:
       addiu     $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addiu      $4, $0, 0x10
      sw         $31, 0x14($29)
      jal        func_800524E8
       addu      $5, $0, $0
      beqz       $2, .L80080534
       nop
      sw         $0, 0xC($2)
      sw         $16, 0x4($2)
  .L8008052C:
      sw         $0, 0x0($2)
      sw         $0, 0x8($2)
  .L80080534:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_80080544
func_80080544:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0xC($16)
      jal        func_80052540
       nop
      sw         $0, 0xC($16)
      sw         $0, 0x0($16)
      sw         $0, 0x8($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_8008057C
func_8008057C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0xC($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_800805B0
func_800805B0:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $16, 0x8($17)
      lw         $2, 0x0($17)
      slt        $2, $2, $16
      bnez       $2, .L80080620
       addu      $18, $5, $0
      lw         $2, 0x4($17)
      lw         $4, 0xC($17)
      beqz       $4, .L80080600
       addu      $16, $16, $2
      addu       $5, $16, $0
      jal        func_80052524
       addu      $6, $0, $0
      j          .L80080610
       sw        $2, 0xC($17)
  .L80080600:
      addu       $4, $16, $0
      jal        func_800524E8
       addu      $5, $0, $0
      sw         $2, 0xC($17)
  .L80080610:
      bnel       $2, $0, .L80080620
       sw        $16, 0x8($17)
      j          .L8008063C
       addiu     $2, $0, -0x5
  .L80080620:
      lw         $4, 0x0($17)
      lw         $3, 0xC($17)
      addiu      $2, $0, 0x1
      addu       $3, $3, $4
      addu       $4, $4, $2
      sb         $18, 0x0($3)
      sw         $4, 0x0($17)
  .L8008063C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
  .globl func_80080654
func_80080654:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800805B0
       addu      $5, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
  .globl func_80080670
func_80080670:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      lbu        $2, 0x0($16)
      beqz       $2, .L800806B4
       addiu     $17, $0, 0x1
  .L80080698:
      lbu        $5, 0x0($16)
      addiu      $16, $16, 0x1
      jal        func_800805B0
       addu      $4, $18, $0
      lbu        $3, 0x0($16)
      bnez       $3, .L80080698
       or        $17, $17, $2
  .L800806B4:
      addu       $2, $17, $0
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $17, 0x14($29)
      addu       $17, $7, $0
      sw         $31, 0x2C($29)
      sw         $18, 0x18($29)
      beqz       $22, .L80080854
       sw        $16, 0x10($29)
      lw         $2, 0x0($22)
      beql       $2, $0, .L80080894
.end func_80079A08
