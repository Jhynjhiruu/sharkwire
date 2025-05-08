.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

.globl func_80080700
.ent func_80080700
func_80080700:
      jr         $31
       addu      $2, $0, $0
.end func_80080700

.globl func_80080708
.ent func_80080708
func_80080708:
      jr         $31
       addiu     $2, $0, 0x1
.end func_80080708

.globl func_80080710
.ent func_80080710
func_80080710:
      jr         $31
       addu      $2, $0, $0
.end func_80080710

.globl func_80080718
.ent func_80080718
func_80080718:
      jr         $31
       addiu     $2, $0, 0x1
.end func_80080718

.globl func_80080720
.ent func_80080720
func_80080720:
      jr         $31
       addu      $2, $0, $0
.end func_80080720

.globl func_80080728
.ent func_80080728
func_80080728:
      jr         $31
       addiu     $2, $0, 0x1
.end func_80080728

.globl func_80080730
.ent func_80080730
func_80080730:
      jr         $31
       addu      $2, $0, $0
.end func_80080730

.globl func_80080738
.ent func_80080738
func_80080738:
      jr         $31
       addiu     $2, $0, 0x1
.end func_80080738

.globl func_80080740
.ent func_80080740
func_80080740:
      jr         $31
       addu      $2, $0, $0
.end func_80080740

.globl func_80080748
.ent func_80080748
func_80080748:
      jr         $31
       addiu     $2, $0, 0x1
.end func_80080748

.globl func_80080750
.ent func_80080750
func_80080750:
      jr         $31
       addu      $2, $0, $0
.end func_80080750

.globl func_80080758
.ent func_80080758
func_80080758:
      jr         $31
       addiu     $2, $0, 0x1
.end func_80080758

.globl func_80080760
.ent func_80080760
func_80080760:
      beqz       $17, .L80080810
       nop
      lw         $2, 0x8($16)
      bne        $2, $17, .L8008078C
       nop
      lw         $2, 0x10($16)
      sw         $0, 0x8($16)
      beqz       $2, .L8008084C
.end func_80080760

.globl func_80080780
.ent func_80080780
func_80080780:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
  .L8008078C:
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      lw         $5, 0x80($16)
      lw         $6, 0x84($16)
      jal        func_8008A204
       addu      $4, $17, $0
      jal        func_8007A084
       addu      $4, $16, $0
      addu       $16, $2, $0
      beqz       $16, .L800807D4
       nop
      jal        func_8007A084
       addu      $4, $16, $0
      beqz       $2, .L800807D4
       addu      $4, $16, $0
      jal        func_80080780
       addu      $5, $17, $0
  .L800807D4:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80080780

.globl func_800807E8
.ent func_800807E8
func_800807E8:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addu       $4, $5, $0
      sw         $31, 0x18($29)
      beqz       $4, .L80080840
       sw        $17, 0x14($29)
      lw         $2, 0x4($16)
      lw         $2, 0x0($2)
      lbu        $2, 0xD9($2)
  .L80080810:
      beqz       $2, .L80080844
       addu      $2, $16, $0
      jal        func_8007D4AC
       nop
      lw         $4, 0x8($2)
      jal        func_8007A060
       addu      $17, $2, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80080844
       addu      $2, $16, $0
      lw         $2, 0x8($17)
      lw         $16, 0x8($2)
  .L80080840:
      addu       $2, $16, $0
  .L80080844:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
  .L8008084C:
      lw         $16, 0x10($29)
      jr         $31
  .L80080854:
       addiu     $29, $29, 0x20
.end func_800807E8

.globl func_80080858
.ent func_80080858
func_80080858:
      addiu      $29, $29, -0x80
      sw         $19, 0x6C($29)
      addu       $19, $4, $0
      sw         $21, 0x74($29)
      addu       $21, $5, $0
      sw         $18, 0x68($29)
      addiu      $18, $19, 0xB8
      addu       $4, $18, $0
      sw         $16, 0x60($29)
      addiu      $16, $29, 0x20
      addu       $5, $16, $0
      sw         $31, 0x78($29)
      sw         $20, 0x70($29)
      jal        func_8002D560
       sw        $17, 0x64($29)
  .L80080894:
      bnez       $2, .L80080994
       nop
      lw         $2, 0x4($19)
      lw         $2, 0x0($2)
      lw         $17, 0x48($2)
      beqz       $17, .L80080994
       addu      $20, $16, $0
      addu       $4, $17, $0
  .L800808B4:
      jal        func_80058268
       addu      $5, $0, $0
      addiu      $4, $29, 0x10
      addu       $5, $2, $0
      jal        func_8008A3BC
       addu      $6, $21, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80080978
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $16, 0x0($2)
      lbu        $3, 0x22($16)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L8008097C
       addu      $4, $17, $0
      addu       $4, $19, $0
      jal        func_80060B40
       addu      $5, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80080978
       addu      $5, $17, $0
      lw         $2, 0x4($19)
      addiu      $6, $29, 0x58
      lw         $4, 0x0($2)
      jal        func_80084994
       addu      $7, $20, $0
      addu       $4, $18, $0
      lw         $2, 0x58($29)
      addu       $5, $20, $0
      jal        func_8002D5E4
       sw        $2, 0x48($29)
      bnez       $2, .L80080994
       addu      $4, $19, $0
      lw         $16, 0x28($16)
      jal        func_8008747C
       addu      $5, $17, $0
      lw         $3, 0x48($18)
      lw         $2, 0x40($16)
      slt        $2, $2, $3
      beqz       $2, .L8008097C
       addu      $4, $17, $0
      lw         $2, 0x44($16)
      lw         $3, 0x4C($18)
      slt        $2, $2, $3
      beqz       $2, .L8008097C
       nop
      jal        func_8002DFFC
       addu      $4, $16, $0
  .L80080978:
      addu       $4, $17, $0
  .L8008097C:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $17, 0x0($2)
      bnez       $17, .L800808B4
       addu      $4, $17, $0
  .L80080994:
      lw         $31, 0x78($29)
      lw         $21, 0x74($29)
      lw         $20, 0x70($29)
      lw         $19, 0x6C($29)
      lw         $18, 0x68($29)
      lw         $17, 0x64($29)
      lw         $16, 0x60($29)
      jr         $31
       addiu     $29, $29, 0x80
.end func_80080858

.globl func_800809B8
.ent func_800809B8
func_800809B8:
      addiu      $29, $29, -0x48
      sw         $18, 0x38($29)
      addu       $18, $4, $0
      sw         $31, 0x40($29)
      sw         $19, 0x3C($29)
      sw         $17, 0x34($29)
      sw         $16, 0x30($29)
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $2, 0xE8($2)
      andi       $2, $2, 0x1
      beqz       $2, .L800809F8
       lui       $3, %hi(D_80125540)
      addiu      $2, $0, 0x1
      j          .L80080A00
       sb        $2, %lo(D_80125540)($3)
  .L800809F8:
      lui        $2, %hi(D_80125540)
      sb         $0, %lo(D_80125540)($2)
  .L80080A00:
      lw         $2, 0x44($18)
      lw         $3, 0x3C($18)
      subu       $2, $2, $3
      blez       $2, .L80080A44
       lui       $2, %hi(D_80125C01)
      lw         $2, 0x40($18)
      lw         $3, 0x38($18)
      subu       $2, $2, $3
      blez       $2, .L80080A40
       addiu     $17, $18, 0xB8
      lw         $2, 0xAC($17)
      bgtz       $2, .L80080A44
       lui       $2, %hi(D_80125C01)
      lw         $2, 0xB0($17)
      blez       $2, .L80080A64
       addu      $4, $17, $0
  .L80080A40:
      lui        $2, %hi(D_80125C01)
  .L80080A44:
      j          .L80080C68
       sb        $0, %lo(D_80125C01)($2)
  .L80080A4C:
      lw         $2, 0x8($16)
      lw         $4, 0x8($2)
      jal        func_8007F764
       nop
      j          .L80080BC4
       addu      $4, $19, $0
  .L80080A64:
      addiu      $16, $18, 0x38
      lw         $9, 0x38($18)
      lw         $10, 0x3C($18)
      lw         $11, 0x40($18)
      lw         $12, 0x44($18)
      sw         $9, 0x18($29)
      sw         $10, 0x1C($29)
      sw         $11, 0x20($29)
      sw         $12, 0x24($29)
      lw         $5, 0x20($29)
      lw         $7, 0x18($29)
      lw         $2, 0x24($29)
      lw         $3, 0x1C($29)
      subu       $7, $5, $7
      subu       $2, $2, $3
      sw         $2, 0x10($29)
      lw         $5, 0x18($29)
      jal        func_8002DC64
       addu      $6, $3, $0
      addu       $4, $16, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      addu       $7, $5, $0
      jal        func_8008A15C
       sw        $0, 0x10($29)
      lw         $4, 0x68($17)
      jal        func_8002B1B4
       nop
      jal        func_8002DFFC
       addu      $4, $17, $0
      jal        func_8002DD40
       addu      $4, $17, $0
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lbu        $2, 0xD9($2)
      beqz       $2, .L80080B04
       addu      $4, $17, $0
      lbu        $2, 0x7E($18)
      beqz       $2, .L80080B38
       nop
  .L80080B04:
      sb         $0, 0x7E($18)
      lw         $8, 0x20($29)
      lw         $2, 0x24($29)
      lw         $3, 0x1C($29)
      lw         $7, 0x18($29)
      subu       $2, $2, $3
      sw         $2, 0x10($29)
      addu       $5, $7, $0
      addu       $6, $3, $0
      jal        func_8002DC64
       subu      $7, $8, $7
      jal        func_8002DD5C
       addu      $4, $17, $0
  .L80080B38:
      jal        func_8007A084
       addu      $4, $18, $0
      addu       $19, $2, $0
      beqz       $19, .L80080C18
       nop
      lw         $2, 0x20($19)
      bnez       $2, .L80080BF8
       nop
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lbu        $2, 0xDD($2)
      beqz       $2, .L80080BF8
       nop
      addu       $17, $19, $0
  .L80080B70:
      jal        func_80077B54
       addu      $4, $17, $0
      jal        func_8007D4AC
       addu      $4, $2, $0
      addu       $16, $2, $0
      beqz       $16, .L80080BB0
       nop
      lw         $2, 0x8($16)
      beqz       $2, .L80080BB0
       nop
      lw         $4, 0x4($16)
      jal        func_80077848
       nop
      andi       $2, $2, 0xFF
      bnez       $2, .L80080A4C
       nop
  .L80080BB0:
      jal        func_8007A084
       addu      $4, $17, $0
      addu       $17, $2, $0
      bnez       $17, .L80080B70
       addu      $4, $19, $0
  .L80080BC4:
      jal        func_8007F574
       addu      $5, $0, $0
      lw         $3, 0x20($18)
      lw         $2, 0xC($18)
      bne        $3, $2, .L80080C4C
       lui       $16, %hi(D_80125C01)
      addiu      $2, $0, 0x1
      sw         $2, 0x10($29)
      addu       $4, $18, $0
      addu       $5, $2, $0
      addu       $6, $2, $0
      jal        func_80077BA4
       addiu     $7, $29, 0x28
  .L80080BF8:
      lw         $3, 0x20($18)
      lw         $2, 0xC($18)
      bne        $3, $2, .L80080C4C
       lui       $16, %hi(D_80125C01)
      jal        func_800779CC
       addu      $4, $18, $0
      j          .L80080C44
       addu      $4, $19, $0
  .L80080C18:
      jal        func_80077B54
       addu      $4, $18, $0
      bnez       $2, .L80080C44
       addu      $4, $18, $0
      addiu      $2, $0, 0x1
      sw         $2, 0x10($29)
      addu       $5, $2, $0
      addu       $6, $2, $0
      jal        func_80077CD0
       addiu     $7, $29, 0x2C
      addu       $4, $18, $0
  .L80080C44:
      jal        func_800779CC
       lui       $16, %hi(D_80125C01)
  .L80080C4C:
      lbu        $3, %lo(D_80125C01)($16)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80080C68
       nop
      jal        func_8001CACC
       addiu     $4, $0, 0x1B58
      sb         $0, %lo(D_80125C01)($16)
  .L80080C68:
      lw         $31, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_800809B8

.globl func_80080C84
.ent func_80080C84
func_80080C84:
      addiu      $29, $29, -0x68
      sw         $17, 0x4C($29)
      addu       $17, $4, $0
      sw         $18, 0x50($29)
      addu       $18, $5, $0
      sw         $19, 0x54($29)
      addiu      $19, $17, 0xB8
      sw         $16, 0x48($29)
      addiu      $16, $29, 0x38
      addu       $4, $16, $0
      addu       $5, $0, $0
      sw         $20, 0x58($29)
      addu       $20, $6, $0
      addu       $6, $5, $0
      sw         $31, 0x60($29)
      sw         $21, 0x5C($29)
      lw         $2, 0x88($17)
      lw         $7, 0x80($17)
      lw         $3, 0x84($17)
      subu       $7, $2, $7
      lw         $2, 0x8C($17)
      lw         $21, 0x68($19)
      subu       $2, $2, $3
      jal        func_8008A15C
       sw        $2, 0x10($29)
      addu       $4, $18, $0
      addu       $5, $16, $0
      jal        func_8008A3BC
       addu      $6, $18, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80080E4C
       andi      $2, $20, 0xFF
      beqz       $2, .L80080DF4
       addu      $4, $21, $0
      jal        func_8007A084
       addu      $4, $17, $0
      beqz       $2, .L80080D24
       addu      $4, $17, $0
      jal        func_80080780
       addu      $5, $18, $0
  .L80080D24:
      jal        func_8008A788
       addu      $4, $17, $0
      addiu      $19, $2, 0xB8
      addu       $4, $19, $0
      jal        func_8002E904
       addiu     $5, $29, 0x18
      lw         $2, 0x8($18)
      lw         $5, 0x0($18)
      addiu      $2, $2, -0x2
      bne        $5, $2, .L80080D88
       nop
      lw         $2, 0x20($29)
      lw         $3, 0x1C($29)
      subu       $5, $2, $5
      lw         $2, 0x18($29)
      sw         $3, 0x2C($29)
      subu       $2, $2, $5
      sw         $2, 0x28($29)
      lw         $2, 0x0($18)
      lw         $3, 0x8($18)
      addu       $2, $2, $5
      addu       $3, $3, $5
      sw         $2, 0x0($18)
      j          .L80080DC0
       sw        $3, 0x8($18)
  .L80080D88:
      lw         $5, 0x24($29)
      lw         $3, 0x4($18)
      lw         $4, 0x18($29)
      lw         $2, 0x1C($29)
      subu       $5, $5, $3
      subu       $2, $2, $5
      sw         $4, 0x28($29)
      sw         $2, 0x2C($29)
      lw         $2, 0x4($18)
      lw         $3, 0xC($18)
      addu       $2, $2, $5
      addu       $3, $3, $5
      sw         $2, 0x4($18)
      sw         $3, 0xC($18)
  .L80080DC0:
      addu       $4, $19, $0
      lw         $2, 0x20($29)
      lw         $3, 0x24($29)
      addiu      $2, $2, 0x2
      addiu      $3, $3, 0x2
      sw         $2, 0x30($29)
      sw         $3, 0x34($29)
      sw         $3, 0x10($29)
      lw         $5, 0x28($29)
      lw         $6, 0x2C($29)
      jal        func_8002E92C
       addu      $7, $2, $0
      addu       $4, $21, $0
  .L80080DF4:
      lw         $8, 0x8($18)
      lw         $2, 0xC($18)
      lw         $3, 0x4($18)
      lw         $6, 0x0($18)
      subu       $2, $2, $3
      sw         $2, 0x10($29)
      lw         $2, 0x4($18)
      addu       $5, $19, $0
      sw         $2, 0x14($29)
      lw         $7, 0x0($18)
      jal        func_8002AFE0
       subu      $6, $8, $6
      andi       $2, $20, 0xFF
      beqz       $2, .L80080E4C
       nop
      lw         $2, 0x24($29)
      sw         $2, 0x10($29)
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      lw         $7, 0x20($29)
      jal        func_8002E92C
       addu      $4, $19, $0
  .L80080E4C:
      lw         $31, 0x60($29)
      lw         $21, 0x5C($29)
      lw         $20, 0x58($29)
      lw         $19, 0x54($29)
      lw         $18, 0x50($29)
      lw         $17, 0x4C($29)
      lw         $16, 0x48($29)
      jr         $31
       addiu     $29, $29, 0x68
.end func_80080C84

.globl func_80080E70
.ent func_80080E70
func_80080E70:
      addiu      $29, $29, -0x38
      sw         $16, 0x28($29)
      lw         $16, 0x50($29)
      sw         $17, 0x2C($29)
      addiu      $17, $0, 0x1
      sw         $5, 0x24($29)
      addiu      $5, $29, 0x20
      sw         $6, 0x20($29)
      sw         $31, 0x30($29)
      jal        func_8002D480
       addiu     $6, $29, 0x10
      bnel       $2, $0, .L80080EB8
       addiu     $17, $0, -0x1
      lw         $2, 0x10($29)
      sw         $2, 0x0($16)
      lw         $2, 0x14($29)
      j          .L80080EC0
       sw        $2, 0x4($16)
  .L80080EB8:
      sw         $0, 0x0($16)
      sw         $0, 0x4($16)
  .L80080EC0:
      addu       $2, $17, $0
      lw         $31, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80080E70

.globl func_80080ED8
.ent func_80080ED8
func_80080ED8:
      lui        $2, %hi(D_80137AE0)
      lbu        $2, %lo(D_80137AE0)($2)
      bnez       $2, .L80080F24
       lui       $2, %hi(D_80137ADC)
      beqz       $4, .L80080F24
       nop
      lw         $4, 0x4($4)
      beqz       $4, .L80080F24
       nop
      lw         $4, 0x0($4)
      beqz       $4, .L80080F24
       nop
      lw         $2, 0xB0($4)
      andi       $2, $2, 0x1
      beqz       $2, .L80080F24
       lui       $2, %hi(D_80137ADC)
      lw         $2, 0xB4($4)
      jr         $31
       nop
  .L80080F24:
      lw         $2, %lo(D_80137ADC)($2)
      jr         $31
       nop
.end func_80080ED8

.globl func_80080F30
.ent func_80080F30
func_80080F30:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lbu        $2, 0x10($5)
      addiu      $3, $2, -0x1
      sltiu      $2, $3, 0x2C
      beqz       $2, .L80080FCC
       lui       $2, %hi(jtbl_800F0DC0)
      addiu      $2, $2, %lo(jtbl_800F0DC0)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80080F64
.L80080F64:
      jal        func_800817D8
       nop
      j          .L80080FCC
       nop
  .globl .L80080F74
.L80080F74:
      jal        func_80081A54
       nop
      j          .L80080FCC
       nop
  .globl .L80080F84
.L80080F84:
      jal        func_80081C30
       addu      $6, $0, $0
      j          .L80080FCC
       nop
  .globl .L80080F94
.L80080F94:
      jal        func_80081D68
       nop
      j          .L80080FCC
       nop
  .globl .L80080FA4
.L80080FA4:
      jal        func_80082000
       nop
      j          .L80080FCC
       nop
  .globl .L80080FB4
.L80080FB4:
      jal        func_80082688
       nop
      j          .L80080FCC
       nop
  .globl .L80080FC4
.L80080FC4:
      jal        func_800815EC
       nop
  .globl .L80080FCC
.L80080FCC:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80080F30

.globl func_80080FD8
.ent func_80080FD8
func_80080FD8:
      addiu      $29, $29, -0x60
      sw         $23, 0x54($29)
      addu       $23, $4, $0
      sw         $16, 0x38($29)
      addu       $16, $5, $0
      sw         $22, 0x50($29)
      addu       $22, $6, $0
      sw         $30, 0x58($29)
      addu       $30, $7, $0
      andi       $2, $22, 0xFF
      sw         $31, 0x5C($29)
      sw         $21, 0x4C($29)
      sw         $20, 0x48($29)
      sw         $19, 0x44($29)
      sw         $18, 0x40($29)
      beqz       $2, .L8008102C
       sw        $17, 0x3C($29)
      jal        func_8008A788
       nop
      j          .L80081030
       addu      $20, $2, $0
  .L8008102C:
      addu       $20, $23, $0
  .L80081030:
      addiu      $21, $20, 0xB8
      lw         $4, 0xC($16)
      lw         $6, 0x4($16)
      lw         $3, 0x8($16)
      lw         $2, 0x0($16)
      subu       $19, $4, $6
      bgez       $19, .L8008105C
       subu      $18, $3, $2
      addu       $17, $4, $0
      j          .L80081060
       negu      $19, $19
  .L8008105C:
      addu       $17, $6, $0
  .L80081060:
      bgez       $18, .L80081074
       nop
      lw         $16, 0x8($16)
      j          .L80081078
       negu      $18, $18
  .L80081074:
      lw         $16, 0x0($16)
  .L80081078:
      bgez       $16, .L80081088
       nop
      addu       $18, $18, $16
      addu       $16, $0, $0
  .L80081088:
      bgez       $17, .L80081098
       andi      $2, $30, 0xFF
      addu       $19, $19, $17
      addu       $17, $0, $0
  .L80081098:
      bnez       $2, .L800811A4
       nop
      bltz       $18, .L800811A4
       nop
      bltz       $19, .L800811A4
       andi      $2, $22, 0xFF
      beqz       $2, .L80081148
       addu      $4, $21, $0
      jal        func_8002E904
       addiu     $5, $29, 0x18
      addu       $4, $21, $0
      lw         $2, 0x20($29)
      lw         $3, 0x24($29)
      addiu      $2, $2, 0x2
      addiu      $3, $3, 0x2
      sw         $2, 0x20($29)
      sw         $3, 0x24($29)
      sw         $3, 0x10($29)
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      jal        func_8002E92C
       addu      $7, $2, $0
      addu       $4, $23, $0
      sw         $17, 0x2C($29)
      sw         $17, 0x34($29)
      sw         $16, 0x28($29)
      jal        func_8007A084
       sw        $16, 0x30($29)
      beqz       $2, .L80081118
       addu      $4, $23, $0
      jal        func_80080780
       addiu     $5, $29, 0x28
  .L80081118:
      addiu      $2, $0, 0x2
      bne        $18, $2, .L80081138
       nop
      lw         $3, 0x88($20)
      lw         $2, 0x80($20)
      lw         $17, 0x2C($29)
      j          .L80081148
       subu      $16, $3, $2
  .L80081138:
      lw         $3, 0x8C($20)
      lw         $2, 0x84($20)
      lw         $16, 0x28($29)
      subu       $17, $3, $2
  .L80081148:
      sw         $19, 0x10($29)
      addu       $4, $21, $0
      addu       $5, $16, $0
      addu       $6, $17, $0
      jal        func_8002BD94
       addu      $7, $18, $0
      andi       $2, $22, 0xFF
      beqz       $2, .L800811A4
       addu      $4, $21, $0
      jal        func_8002E904
       addiu     $5, $29, 0x18
      addu       $4, $21, $0
      lw         $2, 0x20($29)
      lw         $3, 0x24($29)
      addiu      $2, $2, -0x2
      addiu      $3, $3, -0x2
      sw         $2, 0x20($29)
      sw         $3, 0x24($29)
      sw         $3, 0x10($29)
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      jal        func_8002E92C
       addu      $7, $2, $0
  .L800811A4:
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
.end func_80080FD8

.globl func_800811D4
.ent func_800811D4
func_800811D4:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $18, 0x18($29)
      sw         $31, 0x1C($29)
      jal        func_8008A788
       addu      $18, $6, $0
      jal        func_8008C060
       addu      $4, $2, $0
      addu       $4, $16, $0
      addiu      $3, $0, 0x1
      sw         $3, 0x8($2)
      jal        func_80082A24
       sw        $0, 0x20($2)
      jal        func_80082A48
       addu      $4, $16, $0
      addu       $4, $17, $0
      addu       $5, $16, $0
      addiu      $6, $0, 0x1
      jal        func_80080FD8
       andi      $7, $18, 0xFF
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800811D4

.globl func_80081248
.ent func_80081248
func_80081248:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $16, 0x10($29)
      sw         $31, 0x20($29)
      jal        func_8008C060
       addiu     $16, $17, 0xB8
      addu       $4, $16, $0
      addiu      $5, $0, 0x1
      addu       $6, $19, $0
      addiu      $3, $0, 0x2
      sw         $3, 0x8($2)
      jal        func_8008A484
       sw        $0, 0x20($2)
      jal        func_80082A24
       addu      $4, $18, $0
      jal        func_80082A48
       addu      $4, $18, $0
      addu       $4, $17, $0
      addu       $5, $18, $0
      addu       $6, $0, $0
      jal        func_80080FD8
       addu      $7, $6, $0
      jal        func_8001B2C0
       nop
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80081248

.globl func_800812D8
.ent func_800812D8
func_800812D8:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $0, $0
      sw         $19, 0x24($29)
      addiu      $19, $4, 0xB8
      sw         $18, 0x20($29)
      addiu      $18, $6, -0x1
      sw         $31, 0x28($29)
      blez       $18, .L80081334
       sw        $16, 0x18($29)
      addu       $3, $5, $0
  .L80081304:
      addiu      $16, $3, 0x8
      lw         $2, 0x4($16)
      addiu      $17, $17, 0x1
      sw         $2, 0x10($29)
      lw         $5, 0x0($3)
      lw         $6, 0x4($3)
      lw         $7, 0x8($3)
      jal        func_8002B8C0
       addu      $4, $19, $0
      slt        $2, $17, $18
      bnez       $2, .L80081304
       addu      $3, $16, $0
  .L80081334:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800812D8

.globl func_80081350
.ent func_80081350
func_80081350:
      addiu      $29, $29, -0x38
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $16, 0x20($29)
      addu       $16, $5, $0
      sw         $19, 0x2C($29)
      addu       $19, $6, $0
      sw         $31, 0x34($29)
      sw         $20, 0x30($29)
      sw         $18, 0x28($29)
      lw         $2, 0x0($16)
      lw         $18, 0x48($29)
      addu       $20, $7, $0
      sw         $2, 0x10($29)
      lw         $2, 0x0($16)
      addu       $2, $2, $19
      sw         $2, 0x18($29)
      lw         $2, 0x4($16)
      addiu      $5, $29, 0x10
      sw         $2, 0x14($29)
      lw         $2, 0xC($16)
      addu       $6, $18, $0
      jal        func_80081248
       sw        $2, 0x1C($29)
      addu       $4, $17, $0
      lw         $2, 0x8($16)
      addiu      $5, $29, 0x10
      subu       $2, $2, $19
      sw         $2, 0x10($29)
      lw         $2, 0x8($16)
      addu       $6, $18, $0
      jal        func_80081248
       sw        $2, 0x18($29)
      lw         $2, 0x0($16)
      sw         $2, 0x10($29)
      lw         $2, 0x8($16)
      addu       $4, $17, $0
      sw         $2, 0x18($29)
      lw         $2, 0x4($16)
      addiu      $5, $29, 0x10
      sw         $2, 0x14($29)
      lw         $2, 0x4($16)
      addu       $6, $18, $0
      addu       $2, $2, $20
      jal        func_80081248
       sw        $2, 0x1C($29)
      addu       $4, $17, $0
      lw         $2, 0xC($16)
      addiu      $5, $29, 0x10
      subu       $2, $2, $20
      sw         $2, 0x14($29)
      lw         $2, 0xC($16)
      addu       $6, $18, $0
      jal        func_80081248
       sw        $2, 0x1C($29)
      lw         $31, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80081350

.globl func_8008144C
.ent func_8008144C
func_8008144C:
      addiu      $29, $29, -0x70
      sw         $18, 0x58($29)
      addu       $18, $6, $0
      lw         $6, 0x80($29)
      sw         $17, 0x54($29)
      lw         $17, 0x84($29)
      lbu        $2, 0x8B($29)
      sw         $20, 0x60($29)
      addu       $20, $4, $0
      sw         $16, 0x50($29)
      addu       $16, $5, $0
      sw         $19, 0x5C($29)
      addu       $19, $7, $0
      sw         $21, 0x64($29)
      addiu      $21, $20, 0xB8
      beqz       $2, .L8008149C
       sw        $31, 0x68($29)
      addu       $2, $6, $0
      addu       $6, $17, $0
      addu       $17, $2, $0
  .L8008149C:
      lw         $2, 0x0($16)
      sw         $2, 0x10($29)
      lw         $2, 0x4($16)
      sw         $2, 0x14($29)
      lw         $2, 0x8($16)
      sw         $2, 0x18($29)
      lw         $2, 0x4($16)
      sw         $2, 0x1C($29)
      lw         $2, 0x8($16)
      subu       $2, $2, $18
      sw         $2, 0x20($29)
      lw         $2, 0x4($16)
      addu       $2, $2, $19
      sw         $2, 0x24($29)
      lw         $2, 0x0($16)
      addu       $2, $2, $18
      sw         $2, 0x28($29)
      lw         $2, 0x4($16)
      addu       $2, $2, $19
      sw         $2, 0x2C($29)
      lw         $2, 0x0($16)
      addu       $2, $2, $18
      sw         $2, 0x30($29)
      lw         $2, 0xC($16)
      subu       $2, $2, $19
      sw         $2, 0x34($29)
      lw         $2, 0x0($16)
      sw         $2, 0x38($29)
      lw         $2, 0xC($16)
      sw         $2, 0x3C($29)
      lw         $2, 0x0($16)
      sw         $2, 0x40($29)
      lw         $2, 0x4($16)
      sw         $2, 0x44($29)
      lw         $2, 0x0($16)
      addu       $4, $21, $0
      addu       $2, $2, $18
      sw         $2, 0x48($29)
      lw         $2, 0x4($16)
      addiu      $5, $0, 0x1
      addu       $2, $2, $19
      jal        func_8008A484
       sw        $2, 0x4C($29)
      addu       $4, $20, $0
      addiu      $5, $29, 0x10
      jal        func_800812D8
       addiu     $6, $0, 0x8
      lw         $2, 0x8($16)
      sw         $2, 0x10($29)
      lw         $2, 0xC($16)
      sw         $2, 0x14($29)
      lw         $2, 0x8($16)
      subu       $2, $2, $18
      sw         $2, 0x28($29)
      lw         $2, 0xC($16)
      subu       $2, $2, $19
      sw         $2, 0x2C($29)
      lw         $2, 0x8($16)
      sw         $2, 0x40($29)
      lw         $2, 0xC($16)
      addu       $4, $21, $0
      sw         $2, 0x44($29)
      lw         $2, 0x8($16)
      addiu      $5, $0, 0x1
      subu       $2, $2, $18
      sw         $2, 0x48($29)
      lw         $2, 0xC($16)
      addu       $6, $17, $0
      subu       $2, $2, $19
      jal        func_8008A484
       sw        $2, 0x4C($29)
      addu       $4, $20, $0
      addiu      $5, $29, 0x10
      jal        func_800812D8
       addiu     $6, $0, 0x8
      lw         $31, 0x68($29)
      lw         $21, 0x64($29)
      lw         $20, 0x60($29)
      lw         $19, 0x5C($29)
      lw         $18, 0x58($29)
      lw         $17, 0x54($29)
      lw         $16, 0x50($29)
      jr         $31
       addiu     $29, $29, 0x70
.end func_8008144C

.globl func_800815EC
.ent func_800815EC
func_800815EC:
      addiu      $29, $29, -0x38
      sw         $18, 0x30($29)
      addu       $18, $4, $0
      sw         $17, 0x2C($29)
      addu       $17, $5, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      sw         $31, 0x34($29)
      jal        func_80058268
       sw        $16, 0x28($29)
      addiu      $5, $29, 0x20
      lui        $3, %hi(D_80137AD8)
      lw         $16, %lo(D_80137AD8)($3)
      addiu      $6, $29, 0x24
      lw         $7, 0x0($2)
      lw         $8, 0x4($2)
      lw         $9, 0x8($2)
      lw         $10, 0xC($2)
      sw         $7, 0x10($29)
      sw         $8, 0x14($29)
      sw         $9, 0x18($29)
      sw         $10, 0x1C($29)
      jal        func_80082848
       addu      $4, $16, $0
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x8($2)
      beqz       $2, .L80081684
       nop
      lw         $3, 0x10($29)
      blez       $3, .L800816A0
       addiu     $3, $3, -0x1
      lw         $2, 0x18($29)
      sw         $3, 0x10($29)
      addiu      $2, $2, 0x1
      j          .L800816A0
       sw        $2, 0x18($29)
  .L80081684:
      lw         $3, 0x14($29)
      blez       $3, .L800816A0
       addiu     $3, $3, -0x1
      lw         $2, 0x1C($29)
      sw         $3, 0x14($29)
      addiu      $2, $2, 0x1
      sw         $2, 0x1C($29)
  .L800816A0:
      addu       $4, $18, $0
      addiu      $5, $29, 0x10
      jal        func_80081248
       addu      $6, $16, $0
      addu       $4, $18, $0
      addiu      $5, $29, 0x10
      jal        func_80080C84
       addu      $6, $0, $0
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      lw         $7, 0x0($2)
      lw         $8, 0x4($2)
      lw         $9, 0x8($2)
      lw         $10, 0xC($2)
      sw         $7, 0x10($29)
      sw         $8, 0x14($29)
      sw         $9, 0x18($29)
      sw         $10, 0x1C($29)
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x8($2)
      beqz       $2, .L80081714
       nop
      lw         $2, 0x14($29)
      addiu      $2, $2, 0x1
      j          .L80081720
       sw        $2, 0x1C($29)
  .L80081714:
      lw         $2, 0x10($29)
      addiu      $2, $2, 0x1
      sw         $2, 0x18($29)
  .L80081720:
      addu       $4, $18, $0
      addiu      $5, $29, 0x10
      jal        func_80081248
       addu      $6, $16, $0
      addu       $4, $18, $0
      addiu      $5, $29, 0x10
      jal        func_80080C84
       addu      $6, $0, $0
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      lw         $7, 0x0($2)
      lw         $8, 0x4($2)
      lw         $9, 0x8($2)
      lw         $10, 0xC($2)
      sw         $7, 0x10($29)
      sw         $8, 0x14($29)
      sw         $9, 0x18($29)
      sw         $10, 0x1C($29)
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x8($2)
      beqz       $2, .L80081794
       nop
      lw         $2, 0x1C($29)
      addiu      $2, $2, -0x1
      j          .L800817A0
       sw        $2, 0x14($29)
  .L80081794:
      lw         $2, 0x18($29)
      addiu      $2, $2, -0x1
      sw         $2, 0x10($29)
  .L800817A0:
      addu       $4, $18, $0
      addiu      $5, $29, 0x10
      jal        func_80081248
       addu      $6, $16, $0
      addu       $4, $18, $0
      addiu      $5, $29, 0x10
      jal        func_80080C84
       addu      $6, $0, $0
      lw         $31, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800815EC

.globl func_800817D8
.ent func_800817D8
func_800817D8:
      addiu      $29, $29, -0x68
      sw         $19, 0x54($29)
      addu       $19, $4, $0
      sw         $20, 0x58($29)
      addu       $20, $5, $0
      sw         $18, 0x50($29)
      addu       $18, $6, $0
      addu       $4, $20, $0
      addiu      $5, $0, 0x2
      sw         $31, 0x60($29)
      sw         $21, 0x5C($29)
      sw         $17, 0x4C($29)
      jal        func_80058268
       sw        $16, 0x48($29)
      lw         $4, 0x4($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $20, $0
      addiu      $5, $0, 0x2
      lw         $3, 0x0($2)
      lw         $6, 0x4($19)
      sllv       $2, $3, $5
      addu       $2, $2, $3
      sllv       $2, $2, $5
      lw         $6, 0x0($6)
      subu       $2, $2, $3
      lw         $3, 0x5C($6)
      sll        $2, $2, 3
      jal        func_80058268
       addu      $21, $3, $2
      lbu        $2, 0x23($2)
      beqz       $2, .L800818F0
       addu      $4, $20, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $20, $0
      lw         $17, 0xC($2)
      jal        func_80058268
       addu      $5, $0, $0
      addiu      $16, $29, 0x20
      addu       $4, $16, $0
      addu       $5, $18, $0
      lw         $9, 0x0($2)
      lw         $10, 0x4($2)
      lw         $11, 0x8($2)
      lw         $12, 0xC($2)
      sw         $9, 0x20($29)
      sw         $10, 0x24($29)
      sw         $11, 0x28($29)
      sw         $12, 0x2C($29)
      jal        func_8008A3BC
       addu      $6, $16, $0
      addu       $4, $16, $0
      lw         $5, 0x50($19)
      lw         $6, 0x4C($19)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
      lbu        $2, 0x88($21)
      bnez       $2, .L800818E4
       addu      $4, $19, $0
      lw         $2, 0x24($29)
      lw         $3, 0x20($29)
      addiu      $2, $2, 0x1
      addiu      $3, $3, 0x1
      sw         $2, 0x24($29)
      sw         $3, 0x20($29)
  .L800818E4:
      addu       $5, $16, $0
      jal        func_80081248
       addu      $6, $17, $0
  .L800818F0:
      addu       $4, $20, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x20($2)
      beqz       $2, .L80081A30
       addu      $4, $20, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $19, $0
      addiu      $5, $29, 0x40
      lw         $9, 0x0($2)
      lw         $10, 0x4($2)
      lw         $11, 0x8($2)
      lw         $12, 0xC($2)
      sw         $9, 0x30($29)
      sw         $10, 0x34($29)
      sw         $11, 0x38($29)
      sw         $12, 0x3C($29)
      jal        func_80082808
       addiu     $6, $29, 0x44
      addiu      $18, $29, 0x30
      addu       $4, $18, $0
      lw         $5, 0x50($19)
      lw         $6, 0x4C($19)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
      lbu        $2, 0x88($21)
      beqz       $2, .L80081A14
       addu      $4, $20, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x4($19)
      lw         $3, 0x0($3)
      lw         $4, 0x9C($3)
      lbu        $3, 0x20($2)
      lh         $2, 0x44($4)
      mult       $3, $2
      mflo       $3
      lui        $17, (0x2AAAAAAB >> 16)
      ori        $17, $17, (0x2AAAAAAB & 0xFFFF)
      mult       $3, $17
      addiu      $5, $0, 0x2
      addu       $4, $20, $0
      sra        $3, $3, 31
      mfhi       $8
      sra        $16, $8, 4
      jal        func_80058268
       subu      $16, $16, $3
      lw         $3, 0x4($19)
      lw         $3, 0x0($3)
      lw         $3, 0x9C($3)
      lbu        $8, 0x20($2)
      lh         $2, 0x46($3)
      mult       $8, $2
      addu       $4, $19, $0
      addu       $5, $18, $0
      addu       $6, $16, $0
      lw         $2, 0x40($29)
      mflo       $8
      sw         $2, 0x10($29)
      lw         $3, 0x44($29)
      mult       $8, $17
      addiu      $2, $0, 0x1
      sw         $2, 0x18($29)
      sw         $3, 0x14($29)
      sra        $8, $8, 31
      mfhi       $13
      sra        $7, $13, 4
      jal        func_8008144C
       subu      $7, $7, $8
      j          .L80081A30
       nop
  .L80081A14:
      addu       $4, $19, $0
      addu       $5, $18, $0
      addiu      $6, $0, 0x1
      lw         $2, 0x44($29)
      addu       $7, $6, $0
      jal        func_80081350
       sw        $2, 0x10($29)
  .L80081A30:
      lw         $31, 0x60($29)
      lw         $21, 0x5C($29)
      lw         $20, 0x58($29)
      lw         $19, 0x54($29)
      lw         $18, 0x50($29)
      lw         $17, 0x4C($29)
      lw         $16, 0x48($29)
      jr         $31
       addiu     $29, $29, 0x68
.end func_800817D8

.globl func_80081A54
.ent func_80081A54
func_80081A54:
      addiu      $29, $29, -0x60
      sw         $18, 0x50($29)
      addu       $18, $4, $0
      sw         $19, 0x54($29)
      addu       $19, $5, $0
      sw         $20, 0x58($29)
      addu       $20, $6, $0
      addu       $4, $19, $0
      addiu      $5, $0, 0x2
      sw         $31, 0x5C($29)
      sw         $17, 0x4C($29)
      jal        func_80058268
       sw        $16, 0x48($29)
      lw         $3, 0x4($18)
      addu       $5, $19, $0
      lw         $4, 0x0($3)
      lw         $3, 0x0($2)
      addiu      $6, $29, 0x20
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      lw         $3, 0x5C($4)
      sll        $2, $2, 3
      jal        func_8006065C
       addu      $17, $3, $2
      lbu        $2, 0x89($17)
      beqz       $2, .L80081B08
       addiu     $4, $29, 0x20
      addiu      $16, $29, 0x30
      addu       $4, $16, $0
      addu       $5, $20, $0
      jal        func_8008A3BC
       addiu     $6, $29, 0x20
      addu       $4, $16, $0
      lw         $5, 0x50($18)
      lw         $6, 0x4C($18)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
      addu       $4, $18, $0
      lw         $6, 0x64($17)
      jal        func_80081248
       addu      $5, $16, $0
      addiu      $4, $29, 0x20
  .L80081B08:
      lw         $5, 0x50($18)
      lw         $6, 0x4C($18)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
      addu       $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0xC($2)
      beqz       $2, .L80081C10
       addu      $4, $18, $0
      addiu      $5, $29, 0x40
      jal        func_80082808
       addiu     $6, $29, 0x44
      lbu        $2, 0x88($17)
      beqz       $2, .L80081BF4
       addu      $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x4($18)
      lw         $3, 0x0($3)
      lw         $4, 0x9C($3)
      lbu        $3, 0xC($2)
      lh         $2, 0x44($4)
      mult       $3, $2
      mflo       $3
      lui        $17, (0x2AAAAAAB >> 16)
      ori        $17, $17, (0x2AAAAAAB & 0xFFFF)
      mult       $3, $17
      addiu      $5, $0, 0x2
      addu       $4, $19, $0
      sra        $3, $3, 31
      mfhi       $9
      sra        $16, $9, 4
      jal        func_80058268
       subu      $16, $16, $3
      lw         $3, 0x4($18)
      lw         $3, 0x0($3)
      lw         $3, 0x9C($3)
      lbu        $7, 0xC($2)
      lh         $2, 0x46($3)
      mult       $7, $2
      addu       $4, $18, $0
      addiu      $5, $29, 0x20
      lw         $2, 0x40($29)
      mflo       $7
      sw         $2, 0x10($29)
      lw         $2, 0x44($29)
      mult       $7, $17
      addu       $6, $16, $0
      sw         $0, 0x18($29)
      sw         $2, 0x14($29)
      sra        $7, $7, 31
      mfhi       $3
      sra        $2, $3, 4
      jal        func_8008144C
       subu      $7, $2, $7
      j          .L80081C10
       nop
  .L80081BF4:
      addu       $4, $18, $0
      addiu      $5, $29, 0x20
      addiu      $6, $0, 0x1
      lw         $2, 0x44($29)
      addu       $7, $6, $0
      jal        func_80081350
       sw        $2, 0x10($29)
  .L80081C10:
      lw         $31, 0x5C($29)
      lw         $20, 0x58($29)
      lw         $19, 0x54($29)
      lw         $18, 0x50($29)
      lw         $17, 0x4C($29)
      lw         $16, 0x48($29)
      jr         $31
       addiu     $29, $29, 0x60
.end func_80081A54

.globl func_80081C30
.ent func_80081C30
func_80081C30:
      addiu      $29, $29, -0x68
      sw         $19, 0x54($29)
      addu       $19, $4, $0
      sw         $16, 0x48($29)
      addu       $16, $5, $0
      addu       $4, $16, $0
      addu       $5, $0, $0
      sw         $31, 0x60($29)
      sw         $21, 0x5C($29)
      sw         $20, 0x58($29)
      sw         $18, 0x50($29)
      sw         $17, 0x4C($29)
      lw         $2, 0x4($19)
      lw         $17, 0x0($2)
      jal        func_80058268
       addu      $18, $6, $0
      addu       $4, $19, $0
      addu       $5, $16, $0
      andi       $7, $18, 0xFF
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      lw         $11, 0xC($2)
      sw         $8, 0x30($29)
      sw         $9, 0x34($29)
      sw         $10, 0x38($29)
      sw         $11, 0x3C($29)
      jal        func_80082488
       addu      $6, $17, $0
      addu       $4, $17, $0
      addu       $5, $16, $0
      addiu      $21, $29, 0x40
      addu       $6, $21, $0
      addiu      $20, $19, 0x124
      jal        func_80084994
       addu      $7, $20, $0
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $5, 0x0($2)
      jal        func_80063054
       addiu     $4, $17, 0x34
      addu       $4, $16, $0
      addiu      $5, $0, 0x1
      jal        func_80058268
       addu      $18, $2, $0
      lw         $3, 0xC8($17)
      lhu        $7, 0x2($16)
      sw         $3, 0x10($29)
      lw         $3, 0xCC($17)
      addu       $4, $19, $0
      sw         $3, 0x14($29)
      lw         $2, 0x4($2)
      addu       $5, $18, $0
      sw         $20, 0x1C($29)
      sw         $2, 0x18($29)
      lw         $2, 0x30($29)
      lw         $3, 0x50($4)
      addu       $6, $21, $0
      subu       $2, $2, $3
      sw         $2, 0x20($29)
      lw         $2, 0x3C($29)
      lw         $3, 0x4C($4)
      srl        $7, $7, 15
      sw         $0, 0x28($29)
      sw         $0, 0x2C($29)
      subu       $2, $2, $3
      jal        func_800845F4
       sw        $2, 0x24($29)
      lw         $31, 0x60($29)
      lw         $21, 0x5C($29)
      lw         $20, 0x58($29)
      lw         $19, 0x54($29)
      lw         $18, 0x50($29)
      lw         $17, 0x4C($29)
      lw         $16, 0x48($29)
      jr         $31
       addiu     $29, $29, 0x68
.end func_80081C30

.globl func_80081D68
.ent func_80081D68
func_80081D68:
      addiu      $29, $29, -0x50
      sw         $21, 0x44($29)
      addu       $21, $4, $0
      sw         $16, 0x30($29)
      addu       $16, $5, $0
      addu       $4, $16, $0
      addu       $5, $0, $0
      sw         $31, 0x48($29)
      sw         $20, 0x40($29)
      sw         $19, 0x3C($29)
      sw         $18, 0x38($29)
      jal        func_80058268
       sw        $17, 0x34($29)
      lui        $3, %hi(D_80137AC8)
      addiu      $3, $3, %lo(D_80137AC8)
      lw         $7, 0x4($3)
      lw         $5, 0x8($3)
      lw         $6, 0x10($3)
      lbu        $3, 0x18($3)
      lw         $9, 0x0($2)
      lw         $10, 0x4($2)
      lw         $11, 0x8($2)
      lw         $12, 0xC($2)
      sw         $9, 0x20($29)
      sw         $10, 0x24($29)
      sw         $11, 0x28($29)
      sw         $12, 0x2C($29)
      bnez       $3, .L80081E10
       nop
      lw         $2, 0x4($21)
      lw         $4, 0x0($2)
      lw         $3, 0xB0($4)
      andi       $2, $3, 0x8
      beqz       $2, .L80081DF8
       andi      $2, $3, 0x4
      lw         $7, 0xA0($4)
  .L80081DF8:
      beqz       $2, .L80081E04
       andi      $2, $3, 0x10
      lw         $5, 0xA8($4)
  .L80081E04:
      beqz       $2, .L80081E10
       nop
      lw         $6, 0xAC($4)
  .L80081E10:
      lhu        $3, 0x2($16)
      andi       $2, $3, 0x12
      beqz       $2, .L80081E30
       addu      $18, $6, $0
      andi       $2, $3, 0x1
      beqz       $2, .L80081E30
       addu      $18, $5, $0
      addu       $18, $7, $0
  .L80081E30:
      addiu      $20, $21, 0xB8
      addu       $4, $20, $0
      addiu      $5, $0, 0x1
      jal        func_8008A484
       addu      $6, $18, $0
      addu       $4, $16, $0
      addiu      $5, $0, 0x2
      lw         $2, 0x20($29)
      lw         $3, 0x50($21)
      lw         $7, 0x28($29)
      lw         $6, 0x24($29)
      subu       $3, $2, $3
      subu       $7, $7, $2
      lw         $2, 0x2C($29)
      addiu      $7, $7, 0x1
      sw         $3, 0x10($29)
      addu       $3, $3, $7
      sw         $3, 0x18($29)
      subu       $2, $2, $6
      addiu      $2, $2, 0x1
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $8, $2, 1
      srl        $2, $2, 31
      addu       $2, $8, $2
      sra        $16, $2, 1
      srl        $2, $7, 31
      addu       $7, $7, $2
      lw         $3, 0x4C($21)
      sra        $17, $7, 1
      subu       $6, $6, $3
      addu       $6, $6, $16
      sw         $6, 0x14($29)
      addu       $6, $6, $8
      jal        func_80058268
       sw        $6, 0x1C($29)
      lw         $2, 0x8($2)
      addiu      $19, $0, 0x1
      beq        $2, $19, .L80081EF0
       addu      $4, $21, $0
      bnez       $2, .L80081F04
       nop
      jal        func_8008C060
       addu      $4, $21, $0
      addu       $4, $20, $0
      addu       $7, $17, $0
      j          .L80081F18
       sw        $0, 0x8($2)
  .L80081EF0:
      addiu      $5, $29, 0x10
      jal        func_80081248
       addu      $6, $18, $0
      j          .L80081F2C
       nop
  .L80081F04:
      jal        func_8008C060
       addu      $4, $21, $0
      addu       $4, $20, $0
      addu       $7, $17, $0
      sw         $19, 0x8($2)
  .L80081F18:
      lw         $5, 0x10($29)
      lw         $6, 0x14($29)
      addu       $5, $5, $7
      jal        func_8002B930
       addu      $6, $6, $16
  .L80081F2C:
      lw         $31, 0x48($29)
      lw         $21, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_80081D68

.globl func_80081F50
.ent func_80081F50
func_80081F50:
      addiu      $29, $29, -0x20
      addu       $8, $6, $0
      addu       $6, $7, $0
      lw         $7, 0x30($29)
      bgtz       $6, .L80081F70
       sw        $31, 0x18($29)
      blez       $7, .L80081FF4
       nop
  .L80081F70:
      lhu        $5, 0x2($5)
      andi       $2, $5, 0x12
      beqz       $2, .L80081FB0
       andi      $2, $5, 0x1
      beqz       $2, .L80081F9C
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x0($2)
      lw         $2, 0xA0($2)
      j          .L80081FEC
       sw        $2, 0x10($29)
  .L80081F9C:
      lw         $2, 0x4($4)
      lw         $2, 0x0($2)
      lw         $2, 0xA8($2)
      j          .L80081FEC
       sw        $2, 0x10($29)
  .L80081FB0:
      lui        $2, %hi(D_80137AE0)
      lbu        $2, %lo(D_80137AE0)($2)
      bnez       $2, .L80081FE4
       lui       $2, %hi(D_80137AD8)
      lw         $2, 0x4($4)
      lw         $3, 0x0($2)
      lw         $2, 0xB0($3)
      andi       $2, $2, 0x10
      beqz       $2, .L80081FE4
       lui       $2, %hi(D_80137AD8)
      lw         $2, 0xAC($3)
      j          .L80081FEC
       sw        $2, 0x10($29)
  .L80081FE4:
      lw         $2, %lo(D_80137AD8)($2)
      sw         $2, 0x10($29)
  .L80081FEC:
      jal        func_80081350
       addu      $5, $8, $0
  .L80081FF4:
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80081F50

.globl func_80082000
.ent func_80082000
func_80082000:
      addiu      $29, $29, -0x98
      sw         $20, 0x80($29)
      addu       $20, $4, $0
      sw         $23, 0x8C($29)
      addu       $23, $5, $0
      sw         $31, 0x94($29)
      sw         $30, 0x90($29)
      sw         $22, 0x88($29)
      sw         $21, 0x84($29)
      sw         $19, 0x7C($29)
      sw         $18, 0x78($29)
      sw         $17, 0x74($29)
      jal        func_8008C060
       sw        $16, 0x70($29)
      addu       $4, $23, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $17, $2, $0
      addiu      $21, $29, 0x30
      addu       $4, $21, $0
      lw         $9, 0x0($2)
      lw         $10, 0x4($2)
      lw         $11, 0x8($2)
      lw         $12, 0xC($2)
      sw         $9, 0x30($29)
      sw         $10, 0x34($29)
      sw         $11, 0x38($29)
      sw         $12, 0x3C($29)
      lw         $5, 0x50($20)
      lw         $6, 0x4C($20)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
      addu       $4, $23, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x4($20)
      lw         $3, 0x0($3)
      lw         $4, 0x9C($3)
      lbu        $3, 0x1C($2)
      lh         $2, 0x44($4)
      mult       $3, $2
      mflo       $3
      lui        $16, (0x2AAAAAAB >> 16)
      ori        $16, $16, (0x2AAAAAAB & 0xFFFF)
      mult       $3, $16
      addiu      $5, $0, 0x2
      addu       $4, $23, $0
      sra        $3, $3, 31
      mfhi       $8
      sra        $2, $8, 4
      subu       $2, $2, $3
      jal        func_80058268
       sw        $2, 0x6C($29)
      lw         $3, 0x4($20)
      lw         $3, 0x0($3)
      lw         $4, 0x9C($3)
      lbu        $3, 0x1C($2)
      lh         $2, 0x46($4)
      mult       $3, $2
      mflo       $3
      addiu      $5, $0, 0x2
      addu       $19, $5, $0
      mult       $3, $16
      addu       $4, $23, $0
      sw         $19, 0x8($17)
      sw         $0, 0x20($17)
      sra        $3, $3, 31
      mfhi       $8
      sra        $2, $8, 4
      jal        func_80058268
       subu      $30, $2, $3
      lw         $18, 0x0($2)
      beqz       $18, .L800821F4
       addu      $4, $23, $0
      lbu        $2, 0x3B($18)
      beqz       $2, .L800821F4
       nop
      lw         $2, 0xC($18)
      beqz       $2, .L800821F4
       nop
      lw         $2, 0x14($18)
      bnez       $2, .L80082458
       nop
      jal        func_80058268
       addu      $5, $0, $0
      addiu      $17, $29, 0x40
      addu       $4, $17, $0
      lw         $9, 0x6C($29)
      negu       $5, $9
      lw         $10, 0x0($2)
      lw         $11, 0x4($2)
      lw         $12, 0x8($2)
      lw         $9, 0xC($2)
      sw         $10, 0x40($29)
      sw         $11, 0x44($29)
      sw         $12, 0x48($29)
      sw         $9, 0x4C($29)
      jal        func_8008A44C
       negu      $6, $30
      addu       $4, $17, $0
      lw         $5, 0x50($20)
      lw         $6, 0x4C($20)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
      jal        func_8008C060
       addu      $4, $20, $0
      addu       $4, $20, $0
      jal        func_80080ED8
       addu      $16, $2, $0
      addu       $5, $16, $0
      lw         $3, 0xC($18)
      addu       $6, $17, $0
      sw         $2, 0x10($29)
      sw         $19, 0x14($29)
      lw         $4, 0x8($18)
      lw         $2, 0x1C($3)
      jalr       $2
       addu      $7, $0, $0
      addu       $4, $20, $0
      addu       $5, $23, $0
      lw         $7, 0x6C($29)
      j          .L80082450
       addu      $6, $21, $0
  .L800821F4:
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $18, 0x4($2)
      lw         $5, 0x38($29)
      lw         $3, 0x30($29)
      lw         $4, 0x3C($29)
      lw         $2, 0x34($29)
      subu       $16, $5, $3
      beqz       $18, .L80082458
       subu      $19, $4, $2
      lw         $10, 0x6C($29)
      addiu      $2, $10, 0x5
      slt        $2, $2, $16
      beqz       $2, .L80082458
       addiu     $2, $30, 0x5
      slt        $2, $2, $19
      beqz       $2, .L80082458
       addiu     $16, $29, 0x40
      addu       $4, $16, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x8
      addu       $4, $23, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      addiu      $4, $29, 0x50
      lw         $11, 0x6C($29)
      lw         $21, 0x0($2)
      nor        $5, $0, $11
      lw         $12, 0x30($29)
      lw         $9, 0x34($29)
      lw         $10, 0x38($29)
      lw         $11, 0x3C($29)
      sw         $12, 0x50($29)
      sw         $9, 0x54($29)
      sw         $10, 0x58($29)
      sw         $11, 0x5C($29)
      jal        func_8008A44C
       nor       $6, $0, $30
      addu       $5, $23, $0
      addiu      $6, $29, 0x60
      addiu      $7, $20, 0x124
      addu       $22, $7, $0
      addu       $17, $16, $0
      lw         $3, 0x58($29)
      lw         $2, 0x50($29)
      lw         $8, 0x5C($29)
      subu       $16, $3, $2
      lw         $2, 0x4($20)
      lw         $3, 0x54($29)
      lw         $4, 0x0($2)
      jal        func_800848F0
       subu      $19, $8, $3
  .L800822C8:
      lw         $2, 0x4($20)
      lw         $4, 0x0($2)
      addu       $5, $21, $0
      jal        func_80063054
       addiu     $4, $4, 0x34
      addu       $4, $22, $0
      addu       $5, $2, $0
      addu       $6, $18, $0
      addu       $7, $0, $0
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      jal        func_80080E70
       sw        $17, 0x18($29)
      lw         $3, 0x40($29)
      slt        $2, $16, $3
      beqz       $2, .L80082318
       nop
      addiu      $18, $18, -0x1
      bnez       $18, .L800822C8
       nop
  .L80082318:
      beqz       $18, .L80082408
       addu      $4, $20, $0
      bnez       $2, .L8008240C
       addiu     $5, $29, 0x64
      lw         $5, 0x44($29)
      slt        $2, $19, $5
      bnel       $2, $0, .L8008240C
       addiu     $5, $29, 0x64
      addu       $4, $20, $0
      srl        $2, $3, 31
      addu       $2, $3, $2
      sra        $2, $2, 1
      lw         $17, 0x50($29)
      addiu      $2, $2, -0x1
      subu       $17, $17, $2
      addiu      $2, $16, -0x1
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $2, $2, 1
      addu       $17, $17, $2
      srl        $2, $5, 31
      addu       $2, $5, $2
      lw         $16, 0x54($29)
      sra        $2, $2, 1
      addu       $16, $16, $2
      srl        $2, $19, 31
      addu       $2, $19, $2
      sra        $2, $2, 1
      jal        func_80080ED8
       addu      $16, $16, $2
      addu       $4, $20, $0
      addiu      $5, $29, 0x50
      jal        func_80081248
       addu      $6, $2, $0
      addu       $4, $20, $0
      lw         $2, 0x4($20)
      addu       $5, $23, $0
      lw         $6, 0x0($2)
      jal        func_80082488
       addu      $7, $0, $0
      lw         $2, 0x4($20)
      lw         $4, 0x0($2)
      addu       $5, $21, $0
      jal        func_80063054
       addiu     $4, $4, 0x34
      addu       $4, $20, $0
      addu       $5, $2, $0
      addiu      $6, $29, 0x60
      addu       $7, $0, $0
      addiu      $2, $29, 0x30
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      sw         $18, 0x18($29)
      sw         $22, 0x1C($29)
      sw         $17, 0x20($29)
      sw         $16, 0x24($29)
      sw         $2, 0x28($29)
      jal        func_800845F4
       sw        $0, 0x2C($29)
      addu       $4, $20, $0
  .L80082408:
      addiu      $5, $29, 0x64
  .L8008240C:
      jal        func_80082808
       addiu     $6, $29, 0x68
      addu       $4, $20, $0
      addiu      $5, $29, 0x50
      addiu      $6, $0, 0x1
      lw         $2, 0x64($29)
      addu       $7, $6, $0
      sw         $2, 0x10($29)
      lw         $3, 0x68($29)
      addu       $2, $6, $0
      sw         $2, 0x18($29)
      jal        func_8008144C
       sw        $3, 0x14($29)
      addu       $4, $20, $0
      addu       $5, $23, $0
      lw         $7, 0x6C($29)
      addiu      $6, $29, 0x30
  .L80082450:
      jal        func_80081F50
       sw        $30, 0x10($29)
  .L80082458:
      lw         $31, 0x94($29)
      lw         $30, 0x90($29)
      lw         $23, 0x8C($29)
      lw         $22, 0x88($29)
      lw         $21, 0x84($29)
      lw         $20, 0x80($29)
      lw         $19, 0x7C($29)
      lw         $18, 0x78($29)
      lw         $17, 0x74($29)
      lw         $16, 0x70($29)
      jr         $31
       addiu     $29, $29, 0x98
.end func_80082000

.globl func_80082488
.ent func_80082488
func_80082488:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      sw         $20, 0x20($29)
      addu       $20, $7, $0
      sw         $16, 0x10($29)
      sw         $31, 0x24($29)
      jal        func_80058268
       addiu     $16, $18, 0xB8
      lbu        $2, 0x1($2)
      andi       $2, $2, 0x4
      bnez       $2, .L800824F0
       lui       $2, %hi(D_80137AE1)
      lbu        $2, %lo(D_80137AE1)($2)
      beqz       $2, .L80082504
       nop
      lhu        $2, 0x2($17)
      andi       $2, $2, 0x2
      beqz       $2, .L80082504
       nop
  .L800824F0:
      jal        func_8008C060
       addu      $4, $18, $0
      addiu      $3, $0, 0x1
      j          .L80082510
       sb        $3, 0x2C($2)
  .L80082504:
      jal        func_8008C060
       addu      $4, $18, $0
      sb         $0, 0x2C($2)
  .L80082510:
      lhu        $4, 0x2($17)
      andi       $2, $4, 0x20
      beqz       $2, .L8008252C
       lui       $2, %hi(D_80137AD4)
      lw         $6, %lo(D_80137AD4)($2)
      j          .L80082660
       addu      $4, $16, $0
  .L8008252C:
      andi       $2, $4, 0x2
      beqz       $2, .L800825FC
       andi      $2, $20, 0xFF
      beqz       $2, .L8008255C
       nop
      lw         $2, 0xB0($19)
      andi       $2, $2, 0x2
      beqz       $2, .L8008255C
       addu      $4, $16, $0
      lw         $6, 0xA4($19)
      j          .L80082660
       nop
  .L8008255C:
      lhu        $3, 0x2($17)
      andi       $2, $3, 0x40
      beqz       $2, .L80082580
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $6, 0x4($2)
      j          .L80082660
       addu      $4, $16, $0
  .L80082580:
      andi       $2, $3, 0x1
      beqz       $2, .L800825C4
       lui       $2, %hi(D_80137AE0)
      lbu        $2, %lo(D_80137AE0)($2)
      bnez       $2, .L800825B8
       lui       $2, %hi(D_80137ACC)
      lw         $2, 0xB0($19)
      andi       $2, $2, 0x8
      beqz       $2, .L800825B4
       addu      $4, $16, $0
      lw         $6, 0xA0($19)
      j          .L80082660
       nop
  .L800825B4:
      lui        $2, %hi(D_80137ACC)
  .L800825B8:
      lw         $6, %lo(D_80137ACC)($2)
      j          .L80082660
       addu      $4, $16, $0
  .L800825C4:
      lbu        $2, %lo(D_80137AE0)($2)
      bnez       $2, .L800825F0
       lui       $2, %hi(D_80137AD0)
      lw         $2, 0xB0($19)
      andi       $2, $2, 0x4
      beqz       $2, .L800825EC
       addu      $4, $16, $0
      lw         $6, 0xA8($19)
      j          .L80082660
       nop
  .L800825EC:
      lui        $2, %hi(D_80137AD0)
  .L800825F0:
      lw         $6, %lo(D_80137AD0)($2)
      j          .L80082660
       addu      $4, $16, $0
  .L800825FC:
      lbu        $3, 0x10($17)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80082630
       lui       $2, %hi(D_80137AE0)
      andi       $2, $4, 0x40
      beqz       $2, .L8008262C
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $6, 0x4($2)
      j          .L80082660
       addu      $4, $16, $0
  .L8008262C:
      lui        $2, %hi(D_80137AE0)
  .L80082630:
      lbu        $2, %lo(D_80137AE0)($2)
      bnez       $2, .L80082658
       addu      $4, $16, $0
      lw         $2, 0xB0($19)
      andi       $2, $2, 0x10
      beqz       $2, .L8008265C
       lui       $2, %hi(D_80137AD8)
      lw         $6, 0xAC($19)
      j          .L80082660
       nop
  .L80082658:
      lui        $2, %hi(D_80137AD8)
  .L8008265C:
      lw         $6, %lo(D_80137AD8)($2)
  .L80082660:
      jal        func_8008A484
       addiu     $5, $0, 0x8
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80082488

.globl func_80082688
.ent func_80082688
func_80082688:
      addiu      $29, $29, -0x48
      sw         $17, 0x3C($29)
      addu       $17, $4, $0
      sw         $31, 0x40($29)
      sw         $16, 0x38($29)
      lw         $2, 0x4($17)
      addu       $16, $5, $0
      lw         $2, 0x0($2)
      lw         $6, 0x9C($2)
      jal        func_8006085C
       addiu     $4, $29, 0x10
      addiu      $4, $29, 0x10
      lw         $5, 0x50($17)
      lw         $6, 0x4C($17)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x4($2)
      andi       $2, $2, 0x4
      beqz       $2, .L8008272C
       lui       $2, %hi(D_80137AE0)
      lbu        $2, %lo(D_80137AE0)($2)
      bnez       $2, .L8008271C
       lui       $2, %hi(D_80137AD8)
      lw         $2, 0x4($17)
      lw         $6, 0x0($2)
      lw         $2, 0xB0($6)
      andi       $2, $2, 0x10
      beqz       $2, .L80082718
       addu      $4, $17, $0
      lw         $6, 0xAC($6)
      j          .L800827EC
       addiu     $5, $29, 0x10
  .L80082718:
      lui        $2, %hi(D_80137AD8)
  .L8008271C:
      lw         $6, %lo(D_80137AD8)($2)
      addu       $4, $17, $0
      j          .L800827EC
       addiu     $5, $29, 0x10
  .L8008272C:
      addu       $4, $17, $0
      addiu      $5, $29, 0x30
      jal        func_80082808
       addiu     $6, $29, 0x34
      addu       $4, $17, $0
      addiu      $16, $29, 0x20
      lw         $6, 0x34($29)
      lw         $3, 0x10($29)
      lw         $7, 0x18($29)
      lw         $2, 0x14($29)
      addu       $5, $16, $0
      sw         $2, 0x24($29)
      addiu      $2, $2, 0x1
      sw         $3, 0x20($29)
      sw         $7, 0x28($29)
      jal        func_80081248
       sw        $2, 0x2C($29)
      addu       $4, $17, $0
      addu       $5, $16, $0
      lw         $6, 0x34($29)
      lw         $2, 0x20($29)
      lw         $3, 0x1C($29)
      addiu      $2, $2, 0x1
      sw         $2, 0x28($29)
      jal        func_80081248
       sw        $3, 0x2C($29)
      lw         $6, 0x30($29)
      lw         $2, 0x18($29)
      lw         $3, 0x1C($29)
      addu       $4, $17, $0
      sw         $2, 0x28($29)
      addiu      $2, $2, -0x1
      sw         $2, 0x20($29)
      lw         $2, 0x14($29)
      addu       $5, $16, $0
      sw         $3, 0x2C($29)
      addiu      $2, $2, 0x1
      jal        func_80081248
       sw        $2, 0x24($29)
      addu       $4, $17, $0
      addu       $5, $16, $0
      lw         $6, 0x30($29)
      lw         $2, 0x2C($29)
      lw         $3, 0x10($29)
      addiu      $2, $2, -0x1
      addiu      $3, $3, 0x1
      sw         $2, 0x24($29)
      sw         $3, 0x20($29)
  .L800827EC:
      jal        func_80081248
       nop
      lw         $31, 0x40($29)
      lw         $17, 0x3C($29)
      lw         $16, 0x38($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_80082688

.globl func_80082808
.ent func_80082808
func_80082808:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $17, 0x14($29)
      sw         $31, 0x18($29)
      jal        func_80080ED8
       addu      $17, $6, $0
      addu       $4, $2, $0
      addu       $5, $16, $0
      jal        func_80082848
       addu      $6, $17, $0
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80082808

.globl func_80082848
.ent func_80082848
func_80082848:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      addiu      $4, $0, 0xAF
      addu       $5, $4, $0
      sw         $17, 0x14($29)
      lui        $17, %hi(D_80137AC8)
      addiu      $17, $17, %lo(D_80137AC8)
      sw         $31, 0x1C($29)
      lw         $7, 0xF0($17)
      jal        func_80053284
       addu      $6, $4, $0
      addiu      $4, $0, 0x5F
      addu       $5, $4, $0
      sw         $2, 0x0($16)
      lw         $7, 0xF0($17)
      jal        func_80053284
       addu      $6, $4, $0
      sw         $2, 0x0($18)
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80082848

.globl func_800828B4
.ent func_800828B4
func_800828B4:
      addiu      $29, $29, -0x48
      sw         $19, 0x3C($29)
      addu       $19, $6, $0
      sw         $18, 0x38($29)
      addiu      $18, $29, 0x10
      sw         $31, 0x40($29)
      sw         $17, 0x34($29)
      sw         $16, 0x30($29)
      lw         $3, 0x0($5)
      lw         $8, 0x4($5)
      lw         $9, 0x8($5)
      lw         $10, 0xC($5)
      sw         $3, 0x10($29)
      sw         $8, 0x14($29)
      sw         $9, 0x18($29)
      sw         $10, 0x1C($29)
      lw         $3, 0x0($4)
      lw         $8, 0x4($4)
      lw         $9, 0x8($4)
      lw         $10, 0xC($4)
      sw         $3, 0x20($29)
      sw         $8, 0x24($29)
      sw         $9, 0x28($29)
      sw         $10, 0x2C($29)
      addu       $4, $18, $0
      negu       $16, $7
      addu       $5, $16, $0
      jal        func_8008A178
       addu      $6, $16, $0
      addiu      $17, $29, 0x20
      addu       $4, $17, $0
      addu       $5, $16, $0
      jal        func_8008A178
       addu      $6, $5, $0
      addu       $4, $19, $0
      addu       $5, $18, $0
      jal        func_8008A3BC
       addu      $6, $17, $0
      lw         $31, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x48
.end func_800828B4

.globl func_8008296C
.ent func_8008296C
func_8008296C:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $6, $0
      addiu      $6, $29, 0x10
      sw         $31, 0x24($29)
      jal        func_800828B4
       addu      $7, $16, $0
      addu       $4, $2, $0
      andi       $2, $4, 0xFF
      beqz       $2, .L800829B4
       nop
      lw         $2, 0x18($29)
      lw         $3, 0x10($29)
      subu       $2, $2, $3
      sll        $3, $16, 1
      slt        $3, $3, $2
      beql       $3, $0, .L800829B4
       addu      $4, $0, $0
  .L800829B4:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      andi       $2, $4, 0xFF
      jr         $31
       addiu     $29, $29, 0x28
.end func_8008296C

.globl func_800829C8
.ent func_800829C8
func_800829C8:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $6, $0
      addiu      $6, $29, 0x10
      sw         $31, 0x24($29)
      jal        func_800828B4
       addu      $7, $16, $0
      addu       $4, $2, $0
      andi       $2, $4, 0xFF
      beqz       $2, .L80082A10
       nop
      lw         $2, 0x1C($29)
      lw         $3, 0x14($29)
      subu       $2, $2, $3
      sll        $3, $16, 1
      slt        $3, $3, $2
      beql       $3, $0, .L80082A10
       addu      $4, $0, $0
  .L80082A10:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      andi       $2, $4, 0xFF
      jr         $31
       addiu     $29, $29, 0x28
.end func_800829C8

.globl func_80082A24
.ent func_80082A24
func_80082A24:
      lw         $3, 0x0($4)
      lw         $5, 0x8($4)
      slt        $2, $5, $3
      beqz       $2, .L80082A40
       nop
      sw         $3, 0x8($4)
      sw         $5, 0x0($4)
  .L80082A40:
      jr         $31
       nop
.end func_80082A24

.globl func_80082A48
.ent func_80082A48
func_80082A48:
      lw         $5, 0x4($4)
      lw         $3, 0xC($4)
      slt        $2, $3, $5
      beqz       $2, .L80082A64
       nop
      sw         $3, 0x4($4)
      sw         $5, 0xC($4)
  .L80082A64:
      jr         $31
       nop
.end func_80082A48

.globl func_80082A6C
.ent func_80082A6C
func_80082A6C:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $7, $0
      lw         $7, 0x30($29)
      lbu        $4, 0x37($29)
      lhu        $8, 0x3A($29)
      lbu        $9, 0x3F($29)
      sw         $31, 0x1C($29)
      beqz       $5, .L80082AA4
       sw        $17, 0x14($29)
      bnez       $4, .L80082AB8
       nop
  .L80082AA4:
      lw         $2, 0x0($6)
      lw         $3, 0x50($18)
      subu       $2, $2, $3
      j          .L80082AC4
       subu      $2, $2, $7
  .L80082AB8:
      lw         $2, 0x0($6)
      lw         $3, 0x50($18)
      subu       $2, $2, $3
  .L80082AC4:
      sw         $2, 0x0($16)
      andi       $2, $4, 0xFF
      bnez       $2, .L80082AE8
       nop
      lw         $2, 0x8($6)
      lw         $3, 0x50($18)
      subu       $2, $2, $3
      j          .L80082AF4
       addu      $2, $2, $7
  .L80082AE8:
      lw         $2, 0x8($6)
      lw         $3, 0x50($18)
      subu       $2, $2, $3
  .L80082AF4:
      sw         $2, 0x8($16)
      lw         $3, 0x4($6)
      lw         $2, 0x4C($18)
      subu       $3, $3, $2
      sll        $2, $8, 16
      sra        $2, $2, 16
      sw         $3, 0xC($16)
      subu       $3, $3, $2
      bgez       $3, .L80082B2C
       sw        $3, 0x4($16)
      lw         $2, 0xC($16)
      sw         $0, 0x4($16)
      subu       $2, $2, $3
      sw         $2, 0xC($16)
  .L80082B2C:
      addu       $4, $18, $0
      addu       $5, $16, $0
      andi       $17, $9, 0xFF
      jal        func_800811D4
       addu      $6, $17, $0
      lw         $4, 0x40($29)
      beql       $4, $0, .L80082B4C
       addu      $4, $18, $0
  .L80082B4C:
      addu       $5, $16, $0
      jal        func_80080C84
       sltiu     $6, $17, 0x1
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80082A6C

.globl func_80082B70
.ent func_80082B70
func_80082B70:
      addiu      $29, $29, -0x38
      sw         $18, 0x18($29)
      lw         $18, 0x48($29)
      sw         $17, 0x14($29)
      lbu        $17, 0x57($29)
      sw         $20, 0x20($29)
      lhu        $20, 0x5A($29)
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $21, 0x24($29)
      addu       $21, $5, $0
      sw         $22, 0x28($29)
      addu       $22, $6, $0
      sw         $16, 0x10($29)
      addu       $16, $7, $0
      sw         $23, 0x2C($29)
      lbu        $23, 0x5F($29)
      sw         $31, 0x30($29)
      jal        func_80082A24
       addu      $4, $16, $0
      lw         $2, 0x8($16)
      lw         $3, 0x0($16)
      subu       $2, $2, $3
      blez       $2, .L80082C78
       andi      $2, $17, 0xFF
      bnez       $2, .L80082BE0
       subu      $2, $3, $18
      addu       $2, $3, $18
  .L80082BE0:
      sw         $2, 0x0($16)
      lw         $3, 0x4($22)
      lw         $4, 0xC($21)
      slt        $2, $3, $4
      beqz       $2, .L80082C14
       nop
      lw         $2, 0x4($21)
      slt        $2, $2, $3
      beqz       $2, .L80082C14
       nop
      lw         $2, 0x4C($19)
      j          .L80082C20
       subu      $2, $4, $2
  .L80082C14:
      lw         $2, 0x4($22)
      lw         $3, 0x4C($19)
      subu       $2, $2, $3
  .L80082C20:
      sw         $2, 0x4($16)
      sll        $2, $20, 16
      lw         $3, 0x4($16)
      sra        $2, $2, 16
      addu       $4, $3, $0
      addu       $2, $3, $2
      bgez       $4, .L80082C4C
       sw        $2, 0xC($16)
      subu       $2, $2, $4
      sw         $2, 0xC($16)
      sw         $0, 0x4($16)
  .L80082C4C:
      addu       $4, $19, $0
      addu       $5, $16, $0
      andi       $17, $23, 0xFF
      jal        func_800811D4
       addu      $6, $17, $0
      lw         $4, 0x60($29)
      beql       $4, $0, .L80082C6C
       addu      $4, $19, $0
  .L80082C6C:
      addu       $5, $16, $0
      jal        func_80080C84
       sltiu     $6, $17, 0x1
  .L80082C78:
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
.end func_80082B70

.globl func_80082CA4
.ent func_80082CA4
func_80082CA4:
      addiu      $29, $29, -0x68
      sw         $21, 0x54($29)
      lw         $21, 0x78($29)
      sw         $23, 0x5C($29)
      lw         $23, 0x7C($29)
      sw         $16, 0x40($29)
      lw         $16, 0x88($29)
      sw         $30, 0x60($29)
      lw         $30, 0x90($29)
      sw         $18, 0x48($29)
      lbu        $18, 0x83($29)
      lbu        $2, 0x87($29)
      sw         $17, 0x44($29)
      lbu        $17, 0x8F($29)
      sw         $20, 0x50($29)
      addu       $20, $4, $0
      sw         $22, 0x58($29)
      addu       $22, $7, $0
      sw         $31, 0x64($29)
      beqz       $5, .L80082D18
       sw        $19, 0x4C($29)
      andi       $19, $2, 0xFF
      beqz       $19, .L80082D1C
       addu      $4, $20, $0
      lw         $2, 0x4($21)
      lw         $3, 0x4($22)
      slt        $2, $2, $3
      beql       $2, $0, .L80082D54
       addu      $5, $22, $0
  .L80082D18:
      addu       $4, $20, $0
  .L80082D1C:
      addu       $6, $21, $0
      addiu      $7, $29, 0x30
      andi       $2, $18, 0xFF
      sw         $2, 0x14($29)
      sll        $2, $16, 16
      sra        $2, $2, 16
      sw         $2, 0x18($29)
      andi       $2, $17, 0xFF
      sw         $23, 0x10($29)
      sw         $2, 0x1C($29)
      jal        func_80082A6C
       sw        $30, 0x20($29)
      j          .L80082E00
       nop
  .L80082D54:
      addu       $6, $21, $0
      addiu      $7, $29, 0x30
      andi       $18, $18, 0xFF
      sll        $16, $16, 16
      lw         $2, 0x0($22)
      lw         $3, 0x50($20)
      sra        $16, $16, 16
      subu       $2, $2, $3
      sw         $2, 0x30($29)
      lw         $2, 0x0($21)
      lw         $3, 0x50($20)
      andi       $17, $17, 0xFF
      subu       $2, $2, $3
      sw         $2, 0x38($29)
      addiu      $2, $0, 0x1
      sw         $23, 0x10($29)
      sw         $18, 0x14($29)
      sw         $19, 0x18($29)
      sw         $2, 0x1C($29)
      sw         $16, 0x20($29)
      sw         $17, 0x24($29)
      jal        func_80082B70
       sw        $30, 0x28($29)
      addu       $4, $20, $0
      addu       $5, $22, $0
      lw         $2, 0x8($5)
      lw         $3, 0x50($4)
      addu       $6, $21, $0
      subu       $2, $2, $3
      sw         $2, 0x30($29)
      lw         $2, 0x8($6)
      lw         $3, 0x50($4)
      addiu      $7, $29, 0x30
      subu       $2, $2, $3
      sw         $2, 0x38($29)
      sw         $23, 0x10($29)
      sw         $18, 0x14($29)
      sw         $19, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $16, 0x20($29)
      sw         $17, 0x24($29)
      jal        func_80082B70
       sw        $30, 0x28($29)
  .L80082E00:
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
.end func_80082CA4

.globl func_80082E30
.ent func_80082E30
func_80082E30:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      lw         $4, 0x40($29)
      lw         $9, 0x48($29)
      lbu        $7, 0x4F($29)
      lhu        $8, 0x56($29)
      lbu        $2, 0x53($29)
      lbu        $6, 0x5B($29)
      sw         $31, 0x28($29)
      bnez       $2, .L80082F38
       sw        $16, 0x20($29)
      beqz       $7, .L80082E70
       nop
      bnez       $5, .L80082E84
       nop
  .L80082E70:
      lw         $2, 0x0($4)
      lw         $3, 0x50($17)
      subu       $2, $2, $3
      j          .L80082E90
       subu      $2, $2, $9
  .L80082E84:
      lw         $2, 0x0($4)
      lw         $3, 0x50($17)
      subu       $2, $2, $3
  .L80082E90:
      sw         $2, 0x10($29)
      andi       $2, $7, 0xFF
      bnez       $2, .L80082EB4
       nop
      lw         $2, 0x8($4)
      lw         $3, 0x50($17)
      subu       $2, $2, $3
      j          .L80082EC0
       addu      $2, $2, $9
  .L80082EB4:
      lw         $2, 0x8($4)
      lw         $3, 0x50($17)
      subu       $2, $2, $3
  .L80082EC0:
      sw         $2, 0x18($29)
      lw         $3, 0xC($4)
      lw         $2, 0x4C($17)
      subu       $5, $3, $2
      sll        $2, $8, 16
      sra        $2, $2, 16
      addu       $4, $5, $2
      sw         $5, 0x14($29)
      sw         $4, 0x1C($29)
      lw         $3, 0x8C($17)
      lw         $2, 0x84($17)
      subu       $3, $3, $2
      slt        $2, $3, $4
      beqz       $2, .L80082F0C
       subu      $2, $4, $3
      subu       $3, $5, $2
      subu       $2, $4, $2
      sw         $3, 0x14($29)
      sw         $2, 0x1C($29)
  .L80082F0C:
      addu       $4, $17, $0
      addiu      $5, $29, 0x10
      andi       $16, $6, 0xFF
      jal        func_800811D4
       addu      $6, $16, $0
      lw         $4, 0x5C($29)
      beql       $4, $0, .L80082F2C
       addu      $4, $17, $0
  .L80082F2C:
      addiu      $5, $29, 0x10
      jal        func_80080C84
       sltiu     $6, $16, 0x1
  .L80082F38:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80082E30

.globl func_80082F4C
.ent func_80082F4C
func_80082F4C:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      lw         $3, 0x0($5)
      lw         $4, 0x50($18)
      lw         $2, 0x30($29)
      subu       $3, $3, $4
      sll        $2, $2, 16
      sra        $2, $2, 16
      sw         $3, 0x8($16)
      subu       $3, $3, $2
      sw         $3, 0x0($16)
      lw         $2, 0x4($5)
      lw         $3, 0x4C($18)
      subu       $2, $2, $3
      sw         $2, 0x4($16)
      lw         $2, 0xC($5)
      lw         $3, 0x4C($18)
      subu       $2, $2, $3
      lw         $3, 0x0($16)
      addiu      $2, $2, 0x1
      sw         $2, 0xC($16)
      lbu        $6, 0x37($29)
      bgez       $3, .L80082FD0
       addu      $4, $18, $0
      lw         $2, 0x8($16)
      sw         $0, 0x0($16)
      subu       $2, $2, $3
      sw         $2, 0x8($16)
  .L80082FD0:
      addu       $5, $16, $0
      andi       $17, $6, 0xFF
      jal        func_800811D4
       addu      $6, $17, $0
      lw         $4, 0x38($29)
      beql       $4, $0, .L80082FEC
       addu      $4, $18, $0
  .L80082FEC:
      addu       $5, $16, $0
      jal        func_80080C84
       sltiu     $6, $17, 0x1
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80082F4C

.globl func_80083010
.ent func_80083010
func_80083010:
      addiu      $29, $29, -0x38
      sw         $18, 0x18($29)
      lw         $18, 0x48($29)
      sw         $17, 0x14($29)
      lbu        $17, 0x57($29)
      sw         $20, 0x20($29)
      lhu        $20, 0x5A($29)
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $23, 0x2C($29)
      addu       $23, $5, $0
      sw         $22, 0x28($29)
      addu       $22, $6, $0
      sw         $16, 0x10($29)
      addu       $16, $7, $0
      sw         $21, 0x24($29)
      lbu        $21, 0x5F($29)
      sw         $31, 0x30($29)
      jal        func_80082A48
       addu      $4, $16, $0
      lw         $4, 0xC($16)
      lw         $3, 0x4($16)
      subu       $2, $4, $3
      blez       $2, .L8008310C
       andi      $2, $17, 0xFF
      beqz       $2, .L80083084
       subu      $2, $3, $18
      j          .L8008308C
       sw        $2, 0x4($16)
  .L80083084:
      addu       $2, $4, $18
      sw         $2, 0xC($16)
  .L8008308C:
      lw         $6, 0x0($22)
      lw         $5, 0x8($23)
      slt        $2, $6, $5
      beqz       $2, .L800830AC
       nop
      lw         $2, 0x50($19)
      j          .L800830B4
       subu      $2, $6, $2
  .L800830AC:
      lw         $2, 0x50($19)
      subu       $2, $5, $2
  .L800830B4:
      sw         $2, 0x0($16)
      sll        $2, $20, 16
      lw         $3, 0x0($16)
      sra        $2, $2, 16
      addu       $4, $3, $0
      addu       $2, $3, $2
      bgez       $4, .L800830E0
       sw        $2, 0x8($16)
      subu       $2, $2, $4
      sw         $2, 0x8($16)
      sw         $0, 0x0($16)
  .L800830E0:
      addu       $4, $19, $0
      addu       $5, $16, $0
      andi       $17, $21, 0xFF
      jal        func_800811D4
       addu      $6, $17, $0
      lw         $4, 0x60($29)
      beql       $4, $0, .L80083100
       addu      $4, $19, $0
  .L80083100:
      addu       $5, $16, $0
      jal        func_80080C84
       sltiu     $6, $17, 0x1
  .L8008310C:
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
.end func_80083010

.globl func_80083138
.ent func_80083138
func_80083138:
      addiu      $29, $29, -0x68
      sw         $21, 0x54($29)
      lw         $21, 0x78($29)
      sw         $23, 0x5C($29)
      lw         $23, 0x80($29)
      sw         $16, 0x40($29)
      lw         $16, 0x8C($29)
      sw         $30, 0x60($29)
      lw         $30, 0x94($29)
      sw         $18, 0x48($29)
      lbu        $18, 0x8B($29)
      sw         $19, 0x4C($29)
      lbu        $19, 0x87($29)
      sw         $17, 0x44($29)
      lbu        $17, 0x93($29)
      sw         $20, 0x50($29)
      addu       $20, $4, $0
      sw         $22, 0x58($29)
      addu       $22, $7, $0
      beqz       $19, .L800831A8
       sw        $31, 0x64($29)
      beqz       $5, .L800831AC
       addu      $4, $20, $0
      lw         $2, 0x0($21)
      lw         $3, 0x0($22)
      slt        $2, $2, $3
      beqz       $2, .L800831DC
       addu      $5, $22, $0
  .L800831A8:
      addu       $4, $20, $0
  .L800831AC:
      addu       $5, $21, $0
      addiu      $6, $29, 0x30
      addu       $7, $23, $0
      sll        $2, $16, 16
      sra        $2, $2, 16
      sw         $2, 0x10($29)
      andi       $2, $17, 0xFF
      sw         $2, 0x14($29)
      jal        func_80082F4C
       sw        $30, 0x18($29)
      j          .L80083288
       nop
  .L800831DC:
      addu       $6, $21, $0
      addiu      $7, $29, 0x30
      andi       $18, $18, 0xFF
      sll        $16, $16, 16
      lw         $2, 0x4($22)
      lw         $3, 0x4C($20)
      sra        $16, $16, 16
      subu       $2, $2, $3
      sw         $2, 0x34($29)
      lw         $2, 0x4($21)
      lw         $3, 0x4C($20)
      andi       $17, $17, 0xFF
      subu       $2, $2, $3
      sw         $2, 0x3C($29)
      addiu      $2, $0, 0x1
      sw         $23, 0x10($29)
      sw         $19, 0x14($29)
      sw         $18, 0x18($29)
      sw         $2, 0x1C($29)
      sw         $16, 0x20($29)
      sw         $17, 0x24($29)
      jal        func_80083010
       sw        $30, 0x28($29)
      addu       $4, $20, $0
      addu       $5, $22, $0
      lw         $2, 0xC($5)
      lw         $3, 0x4C($4)
      addu       $6, $21, $0
      subu       $2, $2, $3
      sw         $2, 0x34($29)
      lw         $2, 0xC($6)
      lw         $3, 0x4C($4)
      addiu      $7, $29, 0x30
      subu       $2, $2, $3
      sw         $2, 0x3C($29)
      sw         $23, 0x10($29)
      sw         $19, 0x14($29)
      sw         $18, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $16, 0x20($29)
      sw         $17, 0x24($29)
      jal        func_80083010
       sw        $30, 0x28($29)
  .L80083288:
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
.end func_80083138

.globl func_800832B8
.ent func_800832B8
func_800832B8:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      lw         $5, 0x40($29)
      lbu        $4, 0x4F($29)
      lhu        $8, 0x52($29)
      lbu        $2, 0x4B($29)
      lbu        $9, 0x57($29)
      sw         $31, 0x28($29)
      beqz       $2, .L80083318
       sw        $16, 0x20($29)
      beqz       $6, .L800833D0
       nop
      lw         $3, 0x8($5)
      lw         $2, 0x8($7)
      slt        $2, $2, $3
      bnez       $2, .L800833D0
       nop
      beqz       $6, .L800833D0
       addu      $2, $3, $0
      lw         $3, 0x8($7)
      slt        $2, $2, $3
      beqz       $2, .L800833D0
       nop
  .L80083318:
      bnez       $4, .L80083338
       nop
      lw         $2, 0x4($7)
      lw         $3, 0x4C($17)
      subu       $2, $2, $3
      lw         $3, 0x44($29)
      j          .L80083344
       subu      $2, $2, $3
  .L80083338:
      lw         $2, 0x4($7)
      lw         $3, 0x4C($17)
      subu       $2, $2, $3
  .L80083344:
      sw         $2, 0x14($29)
      lw         $2, 0xC($7)
      lw         $3, 0x4C($17)
      subu       $2, $2, $3
      addiu      $2, $2, 0x1
      sw         $2, 0x1C($29)
      lw         $3, 0x8($7)
      lw         $2, 0x50($17)
      subu       $5, $3, $2
      sll        $2, $8, 16
      sra        $2, $2, 16
      addu       $4, $5, $2
      sw         $5, 0x10($29)
      sw         $4, 0x18($29)
      lw         $3, 0x88($17)
      lw         $2, 0x80($17)
      subu       $3, $3, $2
      slt        $2, $3, $4
      beqz       $2, .L800833A4
       subu      $2, $4, $3
      subu       $3, $5, $2
      subu       $2, $4, $2
      sw         $3, 0x10($29)
      sw         $2, 0x18($29)
  .L800833A4:
      addu       $4, $17, $0
      addiu      $5, $29, 0x10
      andi       $16, $9, 0xFF
      jal        func_800811D4
       addu      $6, $16, $0
      lw         $4, 0x58($29)
      beql       $4, $0, .L800833C4
       addu      $4, $17, $0
  .L800833C4:
      addiu      $5, $29, 0x10
      jal        func_80080C84
       sltiu     $6, $16, 0x1
  .L800833D0:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800832B8

.globl func_800833E4
.ent func_800833E4
func_800833E4:
      addiu      $29, $29, -0xB0
      sw         $18, 0x90($29)
      lbu        $18, 0xC3($29)
      sw         $20, 0x98($29)
      addu       $20, $5, $0
      sw         $16, 0x88($29)
      addu       $16, $7, $0
      sw         $21, 0x9C($29)
      addu       $21, $6, $0
      sw         $31, 0xAC($29)
      sw         $30, 0xA8($29)
      sw         $23, 0xA4($29)
      sw         $22, 0xA0($29)
      sw         $19, 0x94($29)
      sw         $17, 0x8C($29)
      sw         $4, 0xB0($29)
      sw         $0, 0x60($29)
      sb         $0, 0x64($29)
      sb         $0, 0x65($29)
      jal        func_8008C060
       sb        $0, 0x6F($29)
      lw         $4, 0xB0($29)
      addiu      $3, $0, 0x2
      sw         $3, 0x8($2)
      sll        $2, $16, 16
      jal        func_8008C060
       sra       $19, $2, 16
      lw         $4, 0xB0($29)
      addu       $5, $20, $0
      jal        func_800781AC
       sw        $0, 0x20($2)
      addu       $17, $2, $0
      bnel       $17, $0, .L80083480
       addu      $20, $17, $0
      lbu        $3, 0x10($20)
      addiu      $2, $0, 0x2B
      beql       $3, $2, .L8008347C
       addu      $17, $20, $0
  .L8008347C:
      addu       $20, $17, $0
  .L80083480:
      beqz       $20, .L800837EC
       addiu     $8, $29, 0x30
      andi       $30, $18, 0xFF
      addiu      $23, $29, 0x50
      addiu      $9, $29, 0x40
      sll        $21, $21, 16
      sra        $10, $21, 16
      sll        $16, $16, 16
      sra        $11, $16, 16
      sw         $8, 0x70($29)
      sw         $9, 0x7C($29)
      sw         $21, 0x74($29)
      sw         $10, 0x80($29)
      sw         $16, 0x78($29)
      sw         $11, 0x84($29)
      addu       $4, $20, $0
  .L800834C0:
      jal        func_80058268
       addu      $5, $0, $0
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      lw         $11, 0xC($2)
      sw         $8, 0x30($29)
      sw         $9, 0x34($29)
      sw         $10, 0x38($29)
      sw         $11, 0x3C($29)
      lbu        $3, 0x10($20)
      addiu      $2, $0, 0x2B
      bne        $3, $2, .L80083540
       addu      $18, $0, $0
      lw         $4, 0x70($29)
      lw         $8, 0x74($29)
      lw         $9, 0x78($29)
      sra        $5, $8, 16
      jal        func_8008A178
       sra       $6, $9, 16
      beqz       $30, .L80083540
       nop
      lw         $4, 0xB0($29)
      jal        func_800807E8
       addu      $5, $20, $0
      addu       $18, $2, $0
      lw         $4, 0x70($29)
      lw         $5, 0x80($18)
      lw         $6, 0x84($18)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
  .L80083540:
      lw         $4, 0xB0($29)
      jal        func_80078258
       addu      $5, $20, $0
      addu       $17, $2, $0
      beqz       $17, .L800835AC
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $10, 0x0($2)
      lw         $11, 0x4($2)
      lw         $8, 0x8($2)
      lw         $9, 0xC($2)
      sw         $10, 0x50($29)
      sw         $11, 0x54($29)
      sw         $8, 0x58($29)
      sw         $9, 0x5C($29)
      addiu      $4, $29, 0x30
      addu       $5, $23, $0
      jal        func_8008296C
       addu      $6, $19, $0
      addu       $22, $2, $0
      addiu      $4, $29, 0x30
      addu       $5, $23, $0
      jal        func_800829C8
       addu      $6, $19, $0
      j          .L800835BC
       addu      $21, $2, $0
  .L800835AC:
      addu       $22, $0, $0
      addu       $21, $22, $0
      addiu      $10, $0, 0x1
      sb         $10, 0x6F($29)
  .L800835BC:
      lw         $11, 0x60($29)
      beqz       $11, .L800835F0
       addiu     $5, $29, 0x30
      lw         $4, 0x7C($29)
      jal        func_8008296C
       addu      $6, $19, $0
      addiu      $5, $29, 0x30
      lw         $4, 0x7C($29)
      addu       $6, $19, $0
      jal        func_800829C8
       sb        $2, 0x65($29)
      j          .L8008364C
       sb        $2, 0x64($29)
  .L800835F0:
      beqz       $17, .L80083650
       addu      $6, $17, $0
      lw         $2, 0x50($29)
      lw         $3, 0x30($29)
      slt        $2, $2, $3
      beqz       $2, .L80083650
       addu      $5, $17, $0
      addu       $6, $17, $0
      addu       $7, $23, $0
      lw         $4, 0xB0($29)
      lw         $8, 0x70($29)
      lw         $9, 0x80($29)
      andi       $2, $21, 0xFF
      sw         $2, 0x1C($29)
      andi       $2, $22, 0xFF
      sw         $23, 0x14($29)
      sw         $19, 0x18($29)
      sw         $2, 0x20($29)
      sw         $30, 0x28($29)
      sw         $18, 0x2C($29)
      sw         $8, 0x10($29)
      j          .L8008368C
       sw        $9, 0x24($29)
  .L8008364C:
      addu       $6, $17, $0
  .L80083650:
      lw         $4, 0xB0($29)
      lw         $5, 0x60($29)
      lw         $10, 0x70($29)
      lbu        $2, 0x64($29)
      lw         $11, 0x80($29)
      addiu      $7, $29, 0x40
      sw         $23, 0x14($29)
      sw         $19, 0x18($29)
      sw         $30, 0x28($29)
      sw         $18, 0x2C($29)
      sw         $2, 0x1C($29)
      andi       $2, $22, 0xFF
      sw         $10, 0x10($29)
      sw         $2, 0x20($29)
      sw         $11, 0x24($29)
  .L8008368C:
      jal        func_80083138
       nop
      lw         $4, 0xB0($29)
      lw         $5, 0x60($29)
      lbu        $16, 0x6F($29)
      lw         $8, 0x70($29)
      andi       $2, $21, 0xFF
      sw         $2, 0x18($29)
      lbu        $2, 0x65($29)
      lw         $9, 0x84($29)
      addiu      $7, $29, 0x40
      sw         $19, 0x14($29)
      sw         $30, 0x24($29)
      sw         $18, 0x28($29)
      addu       $6, $16, $0
      sw         $8, 0x10($29)
      sw         $2, 0x1C($29)
      jal        func_80082CA4
       sw        $9, 0x20($29)
      beqz       $16, .L80083704
       addu      $6, $17, $0
      lbu        $2, 0x64($29)
      beqz       $2, .L80083708
       addiu     $7, $29, 0x30
      lw         $3, 0x40($29)
      lw         $2, 0x30($29)
      slt        $2, $2, $3
      bnel       $2, $0, .L80083708
       addiu     $21, $0, 0x1
      addu       $6, $17, $0
  .L80083704:
      addiu      $7, $29, 0x30
  .L80083708:
      lw         $4, 0xB0($29)
      lbu        $16, 0x6F($29)
      lw         $10, 0x80($29)
      andi       $2, $21, 0xFF
      sw         $2, 0x18($29)
      andi       $2, $22, 0xFF
      sw         $23, 0x10($29)
      sw         $19, 0x14($29)
      sw         $2, 0x1C($29)
      sw         $30, 0x24($29)
      sw         $18, 0x28($29)
      addu       $5, $16, $0
      jal        func_800832B8
       sw        $10, 0x20($29)
      beqz       $16, .L8008376C
       addu      $6, $17, $0
      lbu        $2, 0x65($29)
      beqz       $2, .L8008376C
       nop
      lw         $3, 0x44($29)
      lw         $2, 0x34($29)
      slt        $2, $2, $3
      bnel       $2, $0, .L8008376C
       addiu     $22, $0, 0x1
      addu       $6, $17, $0
  .L8008376C:
      lw         $4, 0xB0($29)
      lw         $5, 0x60($29)
      lbu        $11, 0x6F($29)
      lw         $8, 0x70($29)
      lw         $9, 0x84($29)
      andi       $2, $21, 0xFF
      sw         $2, 0x1C($29)
      andi       $2, $22, 0xFF
      sw         $23, 0x14($29)
      sw         $19, 0x18($29)
      sw         $2, 0x20($29)
      sw         $30, 0x28($29)
      sw         $18, 0x2C($29)
      addu       $7, $11, $0
      sw         $8, 0x10($29)
      jal        func_80082E30
       sw        $9, 0x24($29)
      lw         $4, 0xB0($29)
      sw         $20, 0x60($29)
      lw         $10, 0x30($29)
      lw         $11, 0x34($29)
      lw         $8, 0x38($29)
      lw         $9, 0x3C($29)
      sw         $10, 0x40($29)
      sw         $11, 0x44($29)
      sw         $8, 0x48($29)
      sw         $9, 0x4C($29)
      jal        func_80078258
       addu      $5, $20, $0
      addu       $20, $2, $0
      bnez       $20, .L800834C0
       addu      $4, $20, $0
  .L800837EC:
      lw         $31, 0xAC($29)
      lw         $30, 0xA8($29)
      lw         $23, 0xA4($29)
      lw         $22, 0xA0($29)
      lw         $21, 0x9C($29)
      lw         $20, 0x98($29)
      lw         $19, 0x94($29)
      lw         $18, 0x90($29)
      lw         $17, 0x8C($29)
      lw         $16, 0x88($29)
      jr         $31
       addiu     $29, $29, 0xB0
.end func_800833E4

.globl func_8008381C
.ent func_8008381C
func_8008381C:
      addiu      $29, $29, -0x40
      sw         $17, 0x2C($29)
      addu       $17, $4, $0
      sw         $18, 0x30($29)
      addu       $18, $5, $0
      sw         $16, 0x28($29)
      lui        $16, %hi(D_80137AC8)
      addiu      $16, $16, %lo(D_80137AC8)
      lui        $4, %hi(D_800EC734)
      sw         $31, 0x38($29)
      sw         $19, 0x34($29)
      lw         $5, 0xF0($16)
      lw         $9, 0xB0($17)
      lw         $10, 0xB4($17)
      sw         $9, 0x20($29)
      sw         $10, 0x24($29)
      jal        func_8005339C
       addiu     $4, $4, %lo(D_800EC734)
      addu       $4, $17, $0
      jal        func_8008A788
       addu      $19, $2, $0
      jal        func_8008C060
       addu      $4, $2, $0
      addu       $4, $17, $0
      addiu      $3, $0, 0x1
      sw         $0, 0x8($2)
      sw         $3, 0x20($2)
      lw         $3, 0x8($16)
      addiu      $5, $29, 0x10
      sw         $3, 0x14($2)
      lw         $3, 0x8($16)
      addiu      $6, $0, 0x1
      sw         $19, 0x1C($2)
      sw         $19, 0x18($2)
      sw         $3, 0x10($2)
      lw         $2, 0x20($29)
      lw         $3, 0x50($17)
      andi       $18, $18, 0xFF
      subu       $2, $2, $3
      lw         $3, 0x24($29)
      addu       $7, $18, $0
      sw         $2, 0x10($29)
      lw         $8, 0x4C($17)
      addiu      $2, $2, 0x2
      sw         $2, 0x18($29)
      subu       $3, $3, $8
      addiu      $2, $3, -0x4
      addiu      $3, $3, 0x6
      sw         $2, 0x14($29)
      jal        func_80080FD8
       sw        $3, 0x1C($29)
      addu       $4, $17, $0
      addiu      $5, $29, 0x10
      sltiu      $16, $18, 0x1
      jal        func_80080C84
       addu      $6, $16, $0
      addu       $4, $17, $0
      lw         $2, 0x20($29)
      lw         $3, 0x50($17)
      addiu      $5, $29, 0x10
      subu       $2, $2, $3
      addiu      $3, $2, -0x4
      addiu      $2, $2, 0x6
      sw         $2, 0x18($29)
      lw         $2, 0x24($29)
      addiu      $6, $0, 0x1
      sw         $3, 0x10($29)
      lw         $3, 0x4C($17)
      addu       $7, $18, $0
      subu       $2, $2, $3
      sw         $2, 0x14($29)
      addiu      $2, $2, 0x2
      jal        func_80080FD8
       sw        $2, 0x1C($29)
      addu       $4, $17, $0
      addiu      $5, $29, 0x10
      jal        func_80080C84
       addu      $6, $16, $0
      lw         $31, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_8008381C

.globl func_80083970
.ent func_80083970
func_80083970:
      addiu      $29, $29, -0x48
      sw         $19, 0x2C($29)
      addu       $19, $4, $0
      sw         $18, 0x28($29)
      addu       $18, $5, $0
      sw         $23, 0x3C($29)
      addu       $23, $6, $0
      sw         $17, 0x24($29)
      addu       $17, $0, $0
      sw         $21, 0x34($29)
      addu       $21, $17, $0
      sw         $31, 0x40($29)
      sw         $22, 0x38($29)
      sw         $20, 0x30($29)
      jal        func_8008A788
       sw        $16, 0x20($29)
      addiu      $22, $2, 0xB8
      addu       $4, $22, $0
      jal        func_8002EACC
       addiu     $5, $29, 0x18
      bnez       $2, .L800839D4
       addu      $20, $0, $0
      lw         $2, 0x18($29)
      beqz       $2, .L80083B7C
       addiu     $2, $0, 0x1
  .L800839D4:
      sltiu      $2, $23, 0x7
      beqz       $2, .L80083AC0
       addu      $16, $20, $0
      lui        $2, %hi(jtbl_800F0E70)
      addiu      $2, $2, %lo(jtbl_800F0E70)
      sll        $3, $23, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800839FC
.L800839FC:
      jal        func_80077960
       addu      $4, $18, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80083A18
       nop
      jal        func_8008A6C0
       addu      $4, $18, $0
  .L80083A18:
      lhu        $2, 0x2($18)
      j          .L80083A28
       addiu     $16, $0, 0x1
  .globl .L80083A24
.L80083A24:
      lhu        $2, 0x2($18)
  .L80083A28:
      andi       $2, $2, 0x1000
      beqz       $2, .L80083AC4
       andi      $2, $16, 0xFF
      lw         $2, 0x4($19)
      lw         $2, 0x0($2)
      lw         $21, 0xB4($2)
      j          .L80083AC0
       addiu     $20, $0, 0x1
  .globl .L80083A48
.L80083A48:
      lhu        $2, 0x2($18)
      andi       $2, $2, 0x1000
      beqz       $2, .L80083A70
       nop
      jal        func_800512D4
       addiu     $20, $0, 0x1
      lui        $2, %hi(D_80137AD0)
      lw         $21, %lo(D_80137AD0)($2)
      j          .L80083AC4
       andi      $2, $16, 0xFF
  .L80083A70:
      jal        func_80051308
       nop
      j          .L80083AC4
       andi      $2, $16, 0xFF
  .globl .L80083A80
.L80083A80:
      jal        func_80077960
       addu      $4, $18, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80083A9C
       nop
      jal        func_8008A630
       addu      $4, $18, $0
  .globl .L80083A9C
.L80083A9C:
      lw         $2, 0x4($19)
      lw         $2, 0x0($2)
      lw         $17, 0xA8($2)
      j          .L80083AC0
       addiu     $16, $0, 0x1
  .globl .L80083AB0
.L80083AB0:
      lw         $2, 0x4($19)
      lw         $2, 0x0($2)
      addiu      $16, $0, 0x1
      lw         $17, 0xA4($2)
  .L80083AC0:
      andi       $2, $16, 0xFF
  .L80083AC4:
      beqz       $2, .L80083B40
       addu      $4, $22, $0
      addiu      $5, $0, 0x1
      jal        func_8008A484
       addu      $6, $17, $0
      sltiu      $2, $23, 0x1
      sw         $2, 0x10($29)
      addu       $4, $19, $0
      addu       $5, $18, $0
      addiu      $6, $0, 0x2
      sll        $6, $6, 16
      srl        $6, $6, 16
      addiu      $7, $0, 0x2
      sll        $7, $7, 16
      jal        func_800833E4
       srl       $7, $7, 16
      beqz       $18, .L80083B40
       lui       $3, %hi(D_800FEF78)
      lw         $4, 0x14($18)
      addiu      $2, $0, 0x1
      beqz       $4, .L80083B38
       sb        $2, %lo(D_800FEF78)($3)
      lw         $3, 0x14($4)
      lui        $2, %hi(func_80031D04)
      addiu      $2, $2, %lo(func_80031D04)
      bne        $3, $2, .L80083B3C
       lui       $2, %hi(D_800FEF78)
      jal        func_80083BA8
       nop
  .L80083B38:
      lui        $2, %hi(D_800FEF78)
  .L80083B3C:
      sb         $0, %lo(D_800FEF78)($2)
  .L80083B40:
      andi       $2, $20, 0xFF
      beqz       $2, .L80083B78
       addu      $4, $22, $0
      addiu      $5, $0, 0x1
      jal        func_8008A484
       addu      $6, $21, $0
      addu       $4, $19, $0
      xori       $5, $23, 0x6
      jal        func_8008381C
       sltiu     $5, $5, 0x1
      addu       $4, $19, $0
      addu       $5, $18, $0
      jal        func_80083970
       addiu     $6, $0, 0x1
  .L80083B78:
      addiu      $2, $0, 0x1
  .L80083B7C:
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
.end func_80083970

.globl func_80083BA8
.ent func_80083BA8
func_80083BA8:
      addiu      $29, $29, -0x18
      beqz       $4, .L80083BD4
       sw        $31, 0x10($29)
      addiu      $4, $4, 0x140
      lw         $3, 0x14($4)
      lui        $2, %hi(func_8003269C)
      addiu      $2, $2, %lo(func_8003269C)
      bne        $3, $2, .L80083BD4
       nop
      jal        func_8003269C
       nop
  .L80083BD4:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80083BA8

.globl func_80083BE0
.ent func_80083BE0
func_80083BE0:
      addiu      $29, $29, -0x88
      sw         $20, 0x70($29)
      addu       $20, $4, $0
      sw         $18, 0x68($29)
      addu       $18, $5, $0
      sw         $19, 0x6C($29)
      addu       $19, $6, $0
      sw         $22, 0x78($29)
      addu       $22, $7, $0
      sw         $21, 0x74($29)
      addu       $21, $0, $0
      sw         $17, 0x64($29)
      sw         $31, 0x80($29)
      sw         $23, 0x7C($29)
      sw         $16, 0x60($29)
      lw         $8, 0x0($18)
      lw         $9, 0x4($18)
      lw         $10, 0x8($18)
      lw         $11, 0xC($18)
      sw         $8, 0x20($29)
      sw         $9, 0x24($29)
      sw         $10, 0x28($29)
      sw         $11, 0x2C($29)
      beqz       $20, .L800841BC
       addiu     $17, $29, 0x20
      lw         $2, 0x4($20)
      beqz       $2, .L800841BC
       nop
      lw         $3, 0x0($2)
      beqz       $3, .L800841BC
       nop
      lw         $2, 0x7C($3)
      blez       $2, .L800841BC
       nop
      lw         $2, 0x80($3)
      bltz       $2, .L800841BC
       addiu     $16, $20, 0xB8
      addu       $4, $16, $0
      lw         $6, 0xAC($3)
      jal        func_8008A484
       addiu     $5, $0, 0x1
      jal        func_80080ED8
       addu      $4, $20, $0
      addu       $4, $16, $0
      addu       $5, $21, $0
      jal        func_8008A484
       addu      $6, $2, $0
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lbu        $2, 0xD9($2)
      bnez       $2, .L80083CCC
       nop
      jal        func_8008C060
       addu      $4, $20, $0
      lw         $4, 0xC($20)
      addu       $6, $2, $0
      addu       $7, $18, $0
      jal        func_800842D4
       addu      $5, $4, $0
  .L80083CCC:
      lw         $5, 0x50($20)
      lw         $6, 0x4C($20)
      jal        func_8008A204
       addu      $4, $17, $0
      addiu      $4, $29, 0x30
      lw         $8, 0x80($20)
      lw         $9, 0x84($20)
      lw         $10, 0x88($20)
      lw         $11, 0x8C($20)
      sw         $8, 0x30($29)
      sw         $9, 0x34($29)
      sw         $10, 0x38($29)
      sw         $11, 0x3C($29)
      lw         $3, 0x50($20)
      lw         $5, 0x30($29)
      lw         $2, 0x4C($20)
      lw         $6, 0x34($29)
      subu       $5, $3, $5
      jal        func_8008A204
       subu      $6, $2, $6
      beqz       $19, .L80083D30
       addu      $16, $0, $0
      lw         $17, 0x0($19)
      j          .L80083DE8
       nop
  .L80083D30:
      lw         $3, 0x4($20)
      lw         $2, 0x0($3)
      lw         $2, 0x80($2)
      bltz       $2, .L80083DB0
       nop
  .L80083D44:
      lw         $2, 0x0($3)
      lw         $4, 0x68($2)
      beqz       $4, .L80083D64
       addu      $5, $16, $0
      jal        func_80060CE0
       addiu     $6, $0, 0x1
      j          .L80083D68
       nop
  .L80083D64:
      addu       $2, $0, $0
  .L80083D68:
      lw         $2, 0xC($2)
      lw         $3, 0x34($29)
      slt        $2, $2, $3
      beqz       $2, .L80083D98
       nop
      lw         $3, 0x4($20)
      lw         $2, 0x0($3)
      lw         $2, 0x80($2)
      addiu      $16, $16, 0x1
      slt        $2, $2, $16
      beqz       $2, .L80083D44
       nop
  .L80083D98:
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $2, 0x80($2)
      slt        $2, $2, $16
      beqz       $2, .L80083DBC
       nop
  .L80083DB0:
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $16, 0x80($2)
  .L80083DBC:
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $4, 0x68($2)
      beqz       $4, .L80083DE0
       addu      $5, $16, $0
      jal        func_80060CE0
       addiu     $6, $0, 0x1
      j          .L80083DE4
       nop
  .L80083DE0:
      addu       $2, $0, $0
  .L80083DE4:
      lw         $17, 0x0($2)
  .L80083DE8:
      beqz       $22, .L80083DFC
       nop
      lw         $21, 0x0($22)
      j          .L80083EF8
       nop
  .L80083DFC:
      lw         $3, 0x4($20)
      lw         $2, 0x0($3)
      lw         $2, 0x80($2)
      slt        $2, $2, $16
      bnez       $2, .L80083ED4
       nop
  .L80083E14:
      lw         $2, 0x0($3)
      lw         $4, 0x68($2)
      beqz       $4, .L80083E34
       addu      $5, $16, $0
      jal        func_80060CE0
       addiu     $6, $0, 0x1
      j          .L80083E38
       nop
  .L80083E34:
      addu       $2, $0, $0
  .L80083E38:
      lw         $3, 0x8($2)
      lw         $2, 0x3C($29)
      slt        $2, $2, $3
      beql       $2, $0, .L80083EA4
       addiu     $16, $16, 0x1
      blez       $16, .L80083E88
       nop
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $4, 0x68($2)
      beqz       $4, .L80083E78
       addiu     $5, $16, -0x1
      jal        func_80060CE0
       addiu     $6, $0, 0x1
      j          .L80083E7C
       nop
  .L80083E78:
      addu       $2, $0, $0
  .L80083E7C:
      lw         $21, 0x4($2)
      j          .L80083EBC
       nop
  .L80083E88:
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $4, 0x44($2)
      jal        func_80058434
       nop
      j          .L80083EBC
       addu      $21, $2, $0
  .L80083EA4:
      lw         $3, 0x4($20)
      lw         $2, 0x0($3)
      lw         $2, 0x80($2)
      slt        $2, $2, $16
      beqz       $2, .L80083E14
       nop
  .L80083EBC:
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $2, 0x80($2)
      slt        $2, $2, $16
      beqz       $2, .L80083EF8
       nop
  .L80083ED4:
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $4, 0x68($2)
      beql       $4, $0, .L80083EF4
       addu      $2, $0, $0
      lw         $5, 0x80($2)
      jal        func_80060CE0
       addiu     $6, $0, 0x1
  .L80083EF4:
      lw         $21, 0x4($2)
  .L80083EF8:
      bnez       $19, .L80083F40
       nop
      bnez       $22, .L80083F40
       nop
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      sw         $0, 0x6C($2)
      lw         $2, 0x4C($20)
      bnez       $2, .L80083F40
       nop
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $4, 0x44($2)
      jal        func_80058434
       nop
      lw         $3, 0x4($20)
      lw         $3, 0x0($3)
      sw         $2, 0x6C($3)
  .L80083F40:
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $2, 0x7C($2)
      beqz       $2, .L8008404C
       addu      $16, $17, $0
      beqz       $16, .L8008404C
       addiu     $19, $29, 0x20
  .L80083F5C:
      lbu        $2, 0x1($16)
      andi       $18, $2, 0x1
      andi       $17, $18, 0xFF
      beqz       $17, .L80083F98
       addu      $4, $16, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      lw         $11, 0xC($2)
      sw         $8, 0x40($29)
      sw         $9, 0x44($29)
      sw         $10, 0x48($29)
      sw         $11, 0x4C($29)
  .L80083F98:
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $2, 0x6C($2)
      bnez       $2, .L80083FDC
       andi      $2, $18, 0xFF
      beqz       $17, .L80084008
       addiu     $4, $29, 0x10
      addiu      $5, $29, 0x30
      jal        func_8008A3BC
       addiu     $6, $29, 0x40
      andi       $2, $2, 0xFF
      beqz       $2, .L80083FDC
       andi      $2, $18, 0xFF
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      sw         $16, 0x6C($2)
      andi       $2, $18, 0xFF
  .L80083FDC:
      beqz       $2, .L80084008
       addiu     $4, $29, 0x10
      addu       $5, $19, $0
      jal        func_8008A3BC
       addiu     $6, $29, 0x40
      andi       $2, $2, 0xFF
      beqz       $2, .L80084008
       addu      $4, $20, $0
      addu       $5, $16, $0
      jal        func_80080F30
       addu      $6, $19, $0
  .L80084008:
      addiu      $2, $0, 0x2
      lbu        $3, 0x10($16)
      lw         $17, 0x8($16)
      bne        $3, $2, .L8008403C
       addu      $4, $16, $0
      jal        func_80058268
       addu      $5, $2, $0
      lw         $2, 0xC($2)
      beqz       $2, .L8008403C
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $17, 0xC($2)
  .L8008403C:
      beq        $16, $21, .L8008404C
       addu      $16, $17, $0
      bnez       $16, .L80083F5C
       nop
  .L8008404C:
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $21, 0xBC($2)
      beqz       $21, .L800841B0
       addiu     $19, $29, 0x20
      addiu      $22, $0, 0x22
      addiu      $23, $0, 0x23
  .L80084068:
      lw         $16, 0x0($21)
      addu       $5, $0, $0
      jal        func_80058268
       addu      $4, $16, $0
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      lw         $11, 0xC($2)
      sw         $8, 0x50($29)
      sw         $9, 0x54($29)
      sw         $10, 0x58($29)
      sw         $11, 0x5C($29)
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $2, 0x6C($2)
      bnez       $2, .L800840E0
       nop
      lhu        $2, 0x0($16)
      andi       $2, $2, 0x1
      beqz       $2, .L800841A4
       addiu     $4, $29, 0x10
      addiu      $5, $29, 0x30
      jal        func_8008A3BC
       addiu     $6, $29, 0x50
      andi       $2, $2, 0xFF
      beqz       $2, .L800840E0
       nop
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      sw         $16, 0x6C($2)
  .L800840E0:
      lhu        $2, 0x0($16)
      andi       $2, $2, 0x1
      beqz       $2, .L800841A4
       addiu     $4, $29, 0x10
      addu       $5, $19, $0
      jal        func_8008A3BC
       addiu     $6, $29, 0x50
      andi       $2, $2, 0xFF
      beqz       $2, .L800841A4
       addu      $4, $20, $0
      addu       $5, $16, $0
      jal        func_80080F30
       addu      $6, $19, $0
      lbu        $2, 0x10($16)
      bne        $2, $22, .L800841A4
       nop
      addu       $18, $0, $0
      addu       $17, $0, $0
  .L80084128:
      lhu        $2, 0x0($16)
      andi       $2, $2, 0x1
      beqz       $2, .L80084168
       addu      $4, $16, $0
      jal        func_80058268
       addu      $5, $0, $0
      addiu      $4, $29, 0x10
      addu       $5, $19, $0
      jal        func_8008A3BC
       addu      $6, $2, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80084168
       addu      $4, $20, $0
      addu       $5, $16, $0
      jal        func_80080F30
       addu      $6, $19, $0
  .L80084168:
      lbu        $2, 0x10($16)
      beql       $2, $22, .L8008418C
       addiu     $17, $17, 0x1
      beql       $2, $23, .L80084184
       addiu     $17, $17, -0x1
      j          .L8008418C
       nop
  .L80084184:
      beql       $17, $0, .L8008418C
       addiu     $18, $0, 0x1
  .L8008418C:
      lw         $16, 0x8($16)
      beql       $16, $0, .L80084198
       addiu     $18, $0, 0x1
  .L80084198:
      andi       $2, $18, 0xFF
      beqz       $2, .L80084128
       nop
  .L800841A4:
      lw         $21, 0x4($21)
      bnez       $21, .L80084068
       nop
  .L800841B0:
      addu       $4, $20, $0
      jal        func_80080858
       addiu     $5, $29, 0x20
  .L800841BC:
      lw         $31, 0x80($29)
      lw         $23, 0x7C($29)
      lw         $22, 0x78($29)
      lw         $21, 0x74($29)
      lw         $20, 0x70($29)
      lw         $19, 0x6C($29)
      lw         $18, 0x68($29)
      lw         $17, 0x64($29)
      lw         $16, 0x60($29)
      jr         $31
       addiu     $29, $29, 0x88
.end func_80083BE0

.globl func_800841E8
.ent func_800841E8
func_800841E8:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $19, 0x1C($29)
      addiu      $19, $0, 0x1
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      beqz       $16, .L800842B0
       sw        $17, 0x14($29)
      lw         $2, 0x4($16)
      beqz       $2, .L800842B4
       addu      $2, $19, $0
      beqz       $5, .L800842B4
       nop
      jal        func_80083970
       nop
      lw         $3, 0x4($16)
      lw         $4, 0x0($3)
      lbu        $3, 0xD9($4)
      beqz       $3, .L800842B0
       addu      $19, $2, $0
      bnez       $18, .L800842B4
       addu      $2, $19, $0
      lw         $4, 0x44($4)
      jal        func_80058434
       nop
      addu       $16, $2, $0
      beqz       $16, .L800842B0
       addiu     $20, $0, 0x2B
  .L80084264:
      lbu        $2, 0x10($16)
      bne        $2, $20, .L800842A4
       nop
      jal        func_8007D4AC
       addu      $4, $16, $0
      addu       $17, $2, $0
      lw         $4, 0x8($17)
      jal        func_8007A060
       nop
      andi       $2, $2, 0xFF
      beqz       $2, .L800842A4
       addu      $5, $16, $0
      lw         $2, 0x8($17)
      lw         $4, 0x8($2)
      jal        func_800841E8
       addu      $6, $18, $0
  .L800842A4:
      lw         $16, 0x8($16)
      bnez       $16, .L80084264
       nop
  .L800842B0:
      addu       $2, $19, $0
  .L800842B4:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800841E8

.globl func_800842D4
.ent func_800842D4
func_800842D4:
      addiu      $29, $29, -0x50
      sw         $16, 0x30($29)
      addu       $16, $6, $0
      sw         $21, 0x44($29)
      addu       $21, $7, $0
      sw         $17, 0x34($29)
      addiu      $17, $0, 0x1
      sw         $31, 0x48($29)
      sw         $20, 0x40($29)
      sw         $19, 0x3C($29)
      beqz       $4, .L80084310
       sw        $18, 0x38($29)
      lw         $4, 0x8($4)
      bnez       $4, .L80084318
       nop
  .L80084310:
      j          .L800844F8
       addiu     $2, $0, -0x4
  .L80084318:
      jal        func_80080ED8
       addu      $18, $4, $0
      lui        $3, %hi(D_800FEF74)
      lbu        $3, %lo(D_800FEF74)($3)
      beq        $3, $17, .L8008434C
       addu      $20, $2, $0
      lui        $2, %hi(D_800FEF75)
      lbu        $2, %lo(D_800FEF75)($2)
      beq        $2, $17, .L8008434C
       lui       $2, %hi(D_800FEF76)
      lbu        $2, %lo(D_800FEF76)($2)
      bne        $2, $17, .L80084360
       nop
  .L8008434C:
      lui        $2, %hi(D_800FEF75)
      jal        func_80003964
       sb        $0, %lo(D_800FEF75)($2)
      lui        $2, %hi(D_800FEF74)
      sb         $0, %lo(D_800FEF74)($2)
  .L80084360:
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $3, 0xB8($2)
      beqz       $3, .L8008447C
       addu      $4, $21, $0
      lbu        $2, 0xDF($2)
      beqz       $2, .L8008447C
       nop
      lw         $3, 0x0($3)
      lw         $2, 0xC($3)
      beqz       $2, .L8008447C
       nop
      lbu        $2, 0x3B($3)
      beqz       $2, .L80084478
       addu      $4, $18, $0
      addiu      $5, $29, 0x18
      lw         $8, 0x0($21)
      lw         $9, 0x4($21)
      lw         $10, 0x8($21)
      lw         $11, 0xC($21)
      sw         $8, 0x18($29)
      sw         $9, 0x1C($29)
      sw         $10, 0x20($29)
      sw         $11, 0x24($29)
      jal        func_80081248
       addu      $6, $20, $0
      lw         $2, 0x50($18)
      sw         $2, 0x28($29)
      lui        $2, %hi(D_80137108)
      addiu      $19, $2, %lo(D_80137108)
      lui        $2, %hi(D_80125540)
      lw         $3, 0x4C($18)
      lbu        $2, %lo(D_80125540)($2)
      addiu      $4, $0, 0x1
      sb         $4, 0x5A($19)
      bnez       $2, .L800843F8
       sw        $3, 0x2C($29)
      sb         $4, 0x59($19)
  .L800843F8:
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $2, 0xB8($2)
      addu       $5, $16, $0
      lw         $2, 0x0($2)
      addu       $6, $21, $0
      lw         $3, 0xC($2)
      addiu      $16, $0, 0x1
      sw         $20, 0x10($29)
      sw         $16, 0x14($29)
      lw         $4, 0x8($2)
      lw         $2, 0x1C($3)
      jalr       $2
       addiu     $7, $29, 0x28
      addu       $17, $2, $0
      sb         $0, 0x59($19)
      bne        $17, $16, .L80084464
       sb        $0, 0x5A($19)
      lui        $16, %hi(D_800FEF76)
      lbu        $2, %lo(D_800FEF76)($16)
      bne        $2, $17, .L800844F8
       addiu     $2, $0, 0x1
      jal        func_8001CACC
       addiu     $4, $0, 0x4A42
      sb         $0, %lo(D_800FEF76)($16)
      j          .L800844F8
       addiu     $2, $0, 0x1
  .L80084464:
      bgez       $17, .L8008447C
       addu      $4, $21, $0
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      sb         $0, 0xDF($2)
  .L80084478:
      addu       $4, $21, $0
  .L8008447C:
      jal        func_8008A1B0
       addiu     $5, $18, 0x80
      andi       $2, $2, 0xFF
      beqz       $2, .L800844A8
       addu      $4, $18, $0
      jal        func_8002DC48
       addiu     $4, $18, 0xB8
      bnel       $2, $0, .L800844D4
       addiu     $17, $0, -0x1
      j          .L800844D8
       lui       $16, %hi(D_800FEF76)
  .L800844A8:
      lw         $8, 0x0($21)
      lw         $9, 0x4($21)
      lw         $10, 0x8($21)
      lw         $11, 0xC($21)
      sw         $8, 0x18($29)
      sw         $9, 0x1C($29)
      sw         $10, 0x20($29)
      sw         $11, 0x24($29)
      addiu      $5, $29, 0x18
      jal        func_80081248
       addu      $6, $20, $0
  .L800844D4:
      lui        $16, %hi(D_800FEF76)
  .L800844D8:
      lbu        $3, %lo(D_800FEF76)($16)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800844F8
       addu      $2, $17, $0
      jal        func_8001CACC
       addiu     $4, $0, 0x4A38
      sb         $0, %lo(D_800FEF76)($16)
      addu       $2, $17, $0
  .L800844F8:
      lw         $31, 0x48($29)
      lw         $21, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_800842D4

.globl func_8008451C
.ent func_8008451C
func_8008451C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      beqz       $4, .L80084544
       sw        $31, 0x14($29)
      lw         $4, 0x8($4)
      beqz       $4, .L8008455C
       addiu     $2, $0, -0x4
      bnez       $16, .L8008454C
       nop
  .L80084544:
      j          .L8008455C
       addiu     $2, $0, -0x4
  .L8008454C:
      jal        func_80080ED8
       nop
      sw         $2, 0x0($16)
      addiu      $2, $0, 0x1
  .L8008455C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008451C

.globl func_8008456C
.ent func_8008456C
func_8008456C:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $17, 0x8($4)
      beql       $16, $0, .L8008458C
       addiu     $16, $17, 0x80
  .L8008458C:
      beqz       $17, .L800845E0
       addiu     $2, $0, -0x4
      beqz       $16, .L800845E0
       nop
      beqz       $5, .L800845E0
       nop
      lw         $2, 0x4($17)
      lw         $2, 0x0($2)
      beql       $2, $0, .L800845E0
       addiu     $2, $0, 0x1
      lw         $4, 0x44($2)
      jal        func_8005832C
       nop
      blez       $2, .L800845DC
       addu      $5, $16, $0
      addu       $4, $17, $0
      jal        func_8008BB08
       addiu     $6, $0, 0x1
      jal        func_800809B8
       addu      $4, $17, $0
  .L800845DC:
      addiu      $2, $0, 0x1
  .L800845E0:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008456C

.globl func_800845F4
.ent func_800845F4
func_800845F4:
      addiu      $29, $29, -0x30
      sw         $20, 0x28($29)
      addu       $20, $5, $0
      lw         $5, 0x4C($29)
      sw         $19, 0x24($29)
      addiu      $19, $4, 0xB8
      sw         $31, 0x2C($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      lw         $2, 0x0($6)
      sw         $2, 0x28($5)
      sw         $0, 0x34($5)
      lw         $18, 0x48($29)
      lw         $16, 0x50($29)
      lw         $17, 0x54($29)
      jal        func_8002D5E4
       addu      $4, $19, $0
      addu       $4, $19, $0
      addiu      $7, $29, 0x10
      sw         $20, 0x14($29)
      addu       $5, $16, $0
      addu       $6, $17, $0
      jal        func_8002C0C4
       sw        $18, 0x10($29)
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x30
.end func_800845F4

.globl func_8008467C
.ent func_8008467C
func_8008467C:
      addiu      $29, $29, -0x28
      addu       $9, $4, $0
      addu       $8, $7, $0
      addu       $7, $6, $0
      lw         $6, 0x44($29)
      addiu      $3, $0, -0x1
      sw         $31, 0x20($29)
      lw         $2, 0x0($6)
      lw         $4, 0x40($29)
      beql       $2, $3, .L800846A8
       sw        $0, 0x0($6)
  .L800846A8:
      beqz       $5, .L800846B8
       nop
      lw         $2, 0x0($5)
      sw         $2, 0x28($4)
  .L800846B8:
      lw         $2, 0x38($29)
      lw         $6, 0x3C($29)
      addu       $5, $9, $0
      sw         $2, 0x14($29)
      lw         $2, 0x48($29)
      andi       $7, $7, 0xFF
      sw         $8, 0x10($29)
      jal        func_80080E70
       sw        $2, 0x18($29)
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8008467C

.globl func_800846E8
.ent func_800846E8
func_800846E8:
      addiu      $29, $29, -0x30
      addu       $8, $4, $0
      addu       $3, $7, $0
      lw         $4, 0x48($29)
      addu       $7, $6, $0
      beqz       $5, .L8008470C
       sw        $31, 0x28($29)
      lw         $2, 0x0($5)
      sw         $2, 0x28($4)
  .L8008470C:
      addu       $5, $8, $0
      lw         $2, 0x40($29)
      lw         $6, 0x44($29)
      andi       $7, $7, 0xFF
      sw         $3, 0x10($29)
      sw         $2, 0x14($29)
      addiu      $2, $29, 0x20
      jal        func_80080E70
       sw        $2, 0x18($29)
      addiu      $3, $0, 0x1
      bnel       $2, $3, .L8008473C
       sw        $0, 0x20($29)
  .L8008473C:
      lw         $2, 0x20($29)
      lw         $31, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800846E8
      nop

.globl func_80084750
.ent func_80084750
func_80084750:
      lw         $3, 0x0($2)
      beqz       $3, .L80084CBC
       nop
      lw         $2, 0x7C($3)
      blez       $2, .L80084CBC
       nop
      lw         $2, 0x80($3)
      bltz       $2, .L80084CBC
       addiu     $16, $20, 0xB8
      addu       $4, $16, $0
      lw         $6, 0xAC($3)
      jal        func_8008AF84
.end func_80084750
