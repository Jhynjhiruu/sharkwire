.include "macro.inc"

#.set noat
.set noreorder

.section .text, "ax"

.globl func_80054040
.ent func_80054040
func_80054040:
      bnez       $4, .L80054050
       nop
  .L80054048:
      jr         $31
       addiu     $2, $0, -0x1
  .L80054050:
      beql       $5, $0, .L80054068
       sw        $5, 0xC($4)
      lw         $2, 0xC($4)
      bnez       $2, .L80054048
       nop
      sw         $5, 0xC($4)
  .L80054068:
      jr         $31
       addu      $2, $0, $0
.end func_80054040

.globl func_80054070
.ent func_80054070
func_80054070:
      beqz       $4, .L80054080
       nop
      bnez       $5, .L80054088
       nop
  .L80054080:
      jr         $31
       addiu     $2, $0, -0x1
  .L80054088:
      lw         $2, 0x8($4)
      bnez       $2, .L8005409C
       addu      $2, $0, $0
      jr         $31
       sw        $5, 0x8($4)
  .L8005409C:
      jr         $31
  .L800540A0:
       addiu     $2, $0, -0x1
.end func_80054070

.globl func_800540A4
.ent func_800540A4
func_800540A4:
      beqz       $4, .L800540B4
       nop
      bnel       $5, $0, .L800540BC
       sw        $0, 0x8($4)
  .L800540B4:
      jr         $31
       addiu     $2, $0, -0x1
  .L800540BC:
      jr         $31
       addu      $2, $0, $0
.end func_800540A4

.globl func_800540C4
.ent func_800540C4
func_800540C4:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L80054110
       sw        $31, 0x14($29)
      lw         $4, 0x8($16)
      beqz       $4, .L80054110
       andi      $3, $5, 0xFF
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800540FC
       nop
      jal        func_8007BC54
       addu      $5, $0, $0
      lw         $4, 0x8($16)
  .L800540FC:
      lw         $2, 0x70($4)
      blez       $2, .L80054110
       nop
      jal        func_8005F2DC
       nop
  .L80054110:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800540C4

.globl func_80054120
.ent func_80054120
func_80054120:
      addiu      $29, $29, -0x18
      addiu      $2, $0, -0x5
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $16, 0x8($4)
      beq        $5, $2, .L80054168
       slti      $2, $5, -0x4
      beqz       $2, .L80054154
       addiu     $2, $0, -0x7
      beq        $5, $2, .L80054168
       addiu     $2, $0, -0x1
      j          .L80054170
       sw        $2, 0x2C0($16)
  .L80054154:
      addiu      $2, $0, 0x1
      bne        $5, $2, .L8005416C
       addiu     $2, $0, -0x1
      j          .L80054170
       sw        $5, 0x2C0($16)
  .L80054168:
      addiu      $2, $0, 0x2
  .L8005416C:
      sw         $2, 0x2C0($16)
  .L80054170:
      lw         $4, 0x8($16)
      beqz       $4, .L800541A0
       nop
      jal        func_8007E070
       nop
      lw         $2, 0x2EC($16)
      bnez       $2, .L800541A0
       addu      $4, $16, $0
      addu       $5, $0, $0
      addiu      $6, $0, 0x7
      jal        func_800656D4
       addu      $7, $5, $0
  .L800541A0:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_80054120

.globl func_800541B4
.ent func_800541B4
func_800541B4:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $16, 0x8($17)
      beqz       $17, .L800542A8
       addiu     $2, $0, -0x4
      lw         $4, 0x0($16)
      beqz       $4, .L800541F8
       nop
      jal        func_80074860
       nop
      lw         $4, 0x0($16)
      jal        func_80052540
       nop
      sw         $0, 0x0($16)
  .L800541F8:
      lw         $4, 0x14($16)
      beqz       $4, .L8005420C
       nop
      jal        func_8005432C
       nop
  .L8005420C:
      lw         $4, 0x4B0($16)
      beqz       $4, .L80054220
       nop
      jal        func_800546DC
       nop
  .L80054220:
      lw         $4, 0x10($16)
      beqz       $4, .L80054234
       nop
      jal        func_800517B4
       nop
  .L80054234:
      lw         $4, 0x2CC($16)
      jal        func_80052540
       nop
      lw         $4, 0x2D0($16)
      jal        func_80052540
       nop
      lw         $4, 0x2D4($16)
      jal        func_80052540
       nop
      lw         $4, 0x2D8($16)
      jal        func_80052540
       nop
      lw         $4, 0x2DC($16)
      jal        func_80052540
       nop
      lw         $4, 0x2E0($16)
      jal        func_80052540
       nop
      lw         $4, 0x2E4($16)
      jal        func_80052540
       nop
      lw         $4, 0x2E8($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
      jal        func_80052540
       addu      $4, $17, $0
      addu       $2, $0, $0
  .L800542A8:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800541B4

.globl func_800542BC
.ent func_800542BC
func_800542BC:
      lw         $2, 0x8($4)
      beqz       $2, .L800542D4
       nop
      lw         $2, 0x0($2)
      bnez       $2, .L800542DC
       nop
  .L800542D4:
      jr         $31
       addiu     $2, $0, -0x4
  .L800542DC:
      lw         $3, 0x2C($2)
      addiu      $2, $0, 0x1
      jr         $31
       sw        $3, 0x0($5)
.end func_800542BC

.globl func_800542EC
.ent func_800542EC
func_800542EC:
      lw         $2, 0x8($4)
      beqz       $2, .L8005430C
       nop
      lw         $2, 0x0($2)
      lw         $3, 0x30($2)
      addiu      $2, $0, 0x1
      jr         $31
       sw        $3, 0x0($5)
  .L8005430C:
      jr         $31
       addiu     $2, $0, -0x4
.end func_800542EC

.globl func_80054314
.ent func_80054314
func_80054314:
      lw         $3, 0x8($4)
      beqz       $3, .L80054324
       addiu     $2, $0, -0x4
      addiu      $2, $0, 0x1
  .L80054324:
      jr         $31
       nop
.end func_80054314

.globl func_8005432C
.ent func_8005432C
func_8005432C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L80054370
       sw        $31, 0x14($29)
  .L80054340:
      lw         $4, 0x0($16)
      lw         $2, 0x8($4)
      beql       $2, $0, .L8005435C
       addu      $4, $16, $0
      jalr       $2
       nop
      addu       $4, $16, $0
  .L8005435C:
      lw         $16, 0x4($16)
      jal        func_80052540
       nop
      bnez       $16, .L80054340
       nop
  .L80054370:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8005432C

.globl func_80054380
.ent func_80054380
func_80054380:
      addiu      $29, $29, -0x30
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $21, 0x24($29)
      addu       $21, $6, $0
      sw         $31, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      beqz       $21, .L800543C4
       sw        $17, 0x14($29)
      bnel       $16, $0, .L800543CC
       sw        $0, 0x0($21)
      blezl      $20, .L800543CC
       sw        $0, 0x0($21)
  .L800543C4:
      j          .L80054444
       addiu     $2, $0, -0x4
  .L800543CC:
      addiu      $4, $0, 0x4
      jal        func_80052504
       addu      $5, $0, $0
      addu       $19, $2, $0
      beqz       $19, .L80054444
       addiu     $2, $0, -0x5
      bgtz       $20, .L80054404
       nop
      j          .L80054440
       sw        $19, 0x0($21)
  .L800543F4:
      jal        func_800546DC
       addu      $4, $19, $0
      j          .L80054444
       addu      $2, $17, $0
  .L80054404:
      blez       $20, .L8005443C
       addu      $18, $0, $0
      addiu      $22, $0, 0x1
  .L80054410:
      lw         $5, 0x0($16)
      lw         $6, 0x4($16)
      lw         $7, 0x8($16)
      jal        func_80054998
       addu      $4, $19, $0
      addu       $17, $2, $0
      bne        $17, $22, .L800543F4
       addiu     $18, $18, 0x1
      slt        $2, $18, $20
      bnez       $2, .L80054410
       addiu     $16, $16, 0xC
  .L8005443C:
      sw         $19, 0x0($21)
  .L80054440:
      addiu      $2, $0, 0x1
  .L80054444:
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
.end func_80054380

.globl func_8005446C
.ent func_8005446C
func_8005446C:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $18, 0x18($29)
      addu       $18, $7, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $31, 0x20($29)
      beqz       $4, .L80054510
       sw        $16, 0x10($29)
      beqz       $19, .L80054510
       slt       $2, $17, $5
      lw         $16, 0x0($4)
      beqz       $2, .L800544C4
       nop
  .L800544A8:
      beqz       $16, .L800544C4
       nop
      lw         $16, 0x8($16)
      addiu      $17, $17, 0x1
      slt        $2, $17, $5
      bnez       $2, .L800544A8
       nop
  .L800544C4:
      bne        $17, $5, .L80054514
       addu      $2, $0, $0
      beqz       $16, .L80054514
       nop
  .L800544D4:
      lw         $4, 0x0($16)
      beqz       $4, .L80054504
       nop
      jal        func_8005211C
       addu      $5, $19, $0
      bnez       $2, .L80054504
       nop
      bnel       $18, $0, .L800544F8
       sw        $17, 0x0($18)
  .L800544F8:
      lw         $2, 0x4($16)
      j          .L80054514
       nop
  .L80054504:
      lw         $16, 0x8($16)
      bnez       $16, .L800544D4
       addiu     $17, $17, 0x1
  .L80054510:
      addu       $2, $0, $0
  .L80054514:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8005446C

.globl func_80054530
.ent func_80054530
func_80054530:
      addiu      $29, $29, -0x28
  .globl func_80054534
func_80054534:
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $19, 0x1C($29)
      addu       $19, $7, $0
      beqz       $16, .L8005456C
       sw        $31, 0x20($29)
      beqz       $17, .L800545A0
       addiu     $2, $0, -0x4
      bnez       $18, .L80054574
       nop
  .L8005456C:
      j          .L800545A0
       addiu     $2, $0, -0x4
  .L80054574:
      lw         $2, 0x0($16)
      bnez       $2, .L8005458C
       addu      $4, $0, $0
      addu       $5, $4, $0
      jal        func_80054380
       addu      $6, $16, $0
  .L8005458C:
      lw         $4, 0x0($16)
      addu       $5, $17, $0
      addu       $6, $18, $0
      jal        func_80054998
       addu      $7, $19, $0
  .L800545A0:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80054530

.globl func_800545BC
.ent func_800545BC
func_800545BC:
      addiu      $29, $29, -0x18
      bnez       $4, .L800545D0
       sw        $31, 0x10($29)
      j          .L800545F8
       addiu     $2, $0, -0x4
  .L800545D0:
      bltz       $6, .L800545EC
       nop
      lw         $4, 0x0($4)
      jal        func_80054B2C
       nop
      j          .L800545F8
       nop
  .L800545EC:
      lw         $4, 0x0($4)
      jal        func_80054C60
       nop
  .L800545F8:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800545BC

.globl func_80054604
.ent func_80054604
func_80054604:
      addiu      $29, $29, -0x28
      addu       $2, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $18, 0x18($29)
      addiu      $18, $0, 0x1
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $17, 0x14($29)
      beqz       $2, .L80054638
       sw        $16, 0x10($29)
      bnez       $19, .L80054640
       addiu     $4, $0, 0x4
  .L80054638:
      j          .L800546BC
       addiu     $2, $0, -0x4
  .L80054640:
      sw         $0, 0x0($19)
      lw         $16, 0x0($2)
      jal        func_80052504
       addu      $5, $0, $0
      addu       $17, $2, $0
      bnez       $17, .L80054674
       addiu     $2, $0, -0x5
      j          .L800546BC
       nop
  .L80054664:
      jal        func_800546DC
       addu      $4, $17, $0
      j          .L800546BC
       addu      $2, $18, $0
  .L80054674:
      beqz       $16, .L800546B4
       addiu     $20, $0, 0x1
  .L8005467C:
      lw         $5, 0x0($16)
      beqz       $5, .L800546A0
       nop
      lw         $6, 0x4($16)
      beqz       $6, .L800546A0
       addu      $4, $17, $0
      jal        func_80054998
       addiu     $7, $0, -0x1
      addu       $18, $2, $0
  .L800546A0:
      bne        $18, $20, .L80054664
       nop
      lw         $16, 0x8($16)
      bnez       $16, .L8005467C
       nop
  .L800546B4:
      sw         $17, 0x0($19)
      addiu      $2, $0, 0x1
  .L800546BC:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80054604

.globl func_800546DC
.ent func_800546DC
func_800546DC:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      bnez       $18, .L80054700
       sw        $16, 0x10($29)
      j          .L80054748
       addiu     $2, $0, -0x4
  .L80054700:
      lw         $17, 0x0($18)
      beqz       $17, .L8005473C
       nop
  .L8005470C:
      lw         $4, 0x0($17)
      lw         $16, 0x8($17)
      jal        func_80052540
       nop
      lw         $4, 0x4($17)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $17, $0
      addu       $17, $16, $0
      bnez       $17, .L8005470C
       nop
  .L8005473C:
      jal        func_80052540
       addu      $4, $18, $0
      addiu      $2, $0, 0x1
  .L80054748:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800546DC

.globl func_80054760
.ent func_80054760
func_80054760:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      lui        $4, %hi(D_800EC620)
      addiu      $4, $4, %lo(D_800EC620)
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      jal        func_80017780
       sw        $16, 0x10($29)
      lui        $4, %hi(D_800EC610)
      addiu      $4, $4, %lo(D_800EC610)
      jal        func_80017780
       addu      $18, $2, $0
      addu       $16, $0, $0
      beqz       $17, .L800547B0
       addu      $19, $2, $0
      lw         $4, 0x0($17)
      bnez       $4, .L800547B8
       addu      $17, $4, $0
  .L800547B0:
      j          .L80054800
       addiu     $2, $18, 0x1
  .L800547B8:
      lw         $4, 0x0($17)
      beqz       $4, .L800547F0
       nop
      lw         $2, 0x4($17)
      beqz       $2, .L800547F0
       nop
      jal        func_80017780
       nop
      addu       $16, $16, $2
      lw         $4, 0x4($17)
      jal        func_80017780
       addu      $16, $16, $19
      addu       $16, $16, $2
      addu       $16, $16, $18
  .L800547F0:
      lw         $17, 0x8($17)
      bnez       $17, .L800547B8
       addiu     $2, $16, 0x1
      addu       $2, $2, $18
  .L80054800:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80054760

.globl func_8005481C
.ent func_8005481C
func_8005481C:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      beqz       $16, .L80054848
       sw        $17, 0x14($29)
      lw         $2, 0x0($16)
      bnez       $2, .L80054874
       nop
  .L80054848:
      addiu      $4, $0, 0x3
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $17, $2, $0
      beqz       $17, .L80054894
       addu      $4, $17, $0
      lui        $5, %hi(D_800EC620)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800EC620)
      j          .L80054910
       addu      $2, $17, $0
  .L80054874:
      jal        func_80054760
       addu      $4, $16, $0
      addiu      $4, $2, 0x1
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $17, $2, $0
      bnel       $17, $0, .L8005489C
       sb        $0, 0x0($17)
  .L80054894:
      j          .L80054910
       addu      $2, $0, $0
  .L8005489C:
      lw         $16, 0x0($16)
      beqz       $16, .L800548FC
       lui       $19, %hi(D_800EC610)
      lui        $18, %hi(D_800EC620)
  .L800548AC:
      lw         $5, 0x0($16)
      beqz       $5, .L800548F0
       nop
      lw         $2, 0x4($16)
      beqz       $2, .L800548F0
       nop
      jal        func_80017500
       addu      $4, $17, $0
      addu       $4, $17, $0
      jal        func_80017500
       addiu     $5, $19, %lo(D_800EC610)
      lw         $5, 0x4($16)
      jal        func_80017500
       addu      $4, $17, $0
      addu       $4, $17, $0
      jal        func_80017500
       addiu     $5, $18, %lo(D_800EC620)
  .L800548F0:
      lw         $16, 0x8($16)
      bnez       $16, .L800548AC
       nop
  .L800548FC:
      addu       $4, $17, $0
      lui        $5, %hi(D_800EC620)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800EC620)
      addu       $2, $17, $0
  .L80054910:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8005481C

.globl func_8005492C
.ent func_8005492C
func_8005492C:
      beqz       $4, .L8005493C
       nop
      bgez       $5, .L80054944
       nop
  .L8005493C:
      jr         $31
       addu      $2, $0, $0
  .L80054944:
      lw         $4, 0x0($4)
      beqz       $4, .L8005493C
       addu      $3, $0, $0
  .L80054950:
      slt        $2, $3, $5
      beqz       $2, .L80054968
       nop
      lw         $4, 0x8($4)
      bnez       $4, .L80054950
       addiu     $3, $3, 0x1
  .L80054968:
      beqz       $4, .L8005493C
       nop
      bne        $3, $5, .L8005493C
       nop
      beqz       $6, .L80054990
       nop
      lw         $2, 0x0($4)
      sw         $2, 0x0($6)
      lw         $2, 0x4($4)
      sw         $2, 0x0($7)
  .L80054990:
      jr         $31
       addiu     $2, $0, 0x1
.end func_8005492C

.globl func_80054998
.ent func_80054998
func_80054998:
      addiu      $29, $29, -0x30
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $21, 0x24($29)
      addu       $21, $7, $0
      sw         $31, 0x28($29)
      sw         $17, 0x14($29)
      beqz       $18, .L800549DC
       sw        $16, 0x10($29)
      beqz       $19, .L80054B08
       addiu     $2, $0, -0x4
      bnez       $20, .L800549E4
       addiu     $4, $0, 0xC
  .L800549DC:
      j          .L80054B08
       addiu     $2, $0, -0x4
  .L800549E4:
      lw         $17, 0x0($18)
      jal        func_80052504
       addu      $5, $0, $0
      addu       $16, $2, $0
      beqz       $16, .L80054B08
       addiu     $2, $0, -0x5
      jal        func_80017780
       addu      $4, $19, $0
      addiu      $4, $2, 0x1
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $4, $20, $0
      jal        func_80017780
       sw        $2, 0x0($16)
      addiu      $4, $2, 0x1
      jal        func_800524E8
       addu      $5, $0, $0
      lw         $4, 0x0($16)
      beqz       $4, .L80054A3C
       sw        $2, 0x4($16)
      bnez       $2, .L80054A60
       nop
  .L80054A3C:
      jal        func_80052540
       nop
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
      j          .L80054B08
       addiu     $2, $0, -0x5
  .L80054A60:
      jal        func_80017640
       addu      $5, $19, $0
      lw         $4, 0x4($16)
      jal        func_80017640
       addu      $5, $20, $0
      bnez       $17, .L80054A88
       sw        $0, 0x8($16)
      sw         $16, 0x0($18)
      j          .L80054B08
       addiu     $2, $0, 0x1
  .L80054A88:
      bgez       $21, .L80054AB8
       addu      $4, $17, $0
      lw         $2, 0x8($4)
      beql       $2, $0, .L80054AB0
       sw        $16, 0x8($4)
  .L80054A9C:
      lw         $4, 0x8($4)
      lw         $2, 0x8($4)
      bnez       $2, .L80054A9C
       nop
      sw         $16, 0x8($4)
  .L80054AB0:
      j          .L80054B08
       addiu     $2, $0, 0x1
  .L80054AB8:
      bnez       $21, .L80054AD4
       addiu     $7, $21, -0x1
      lw         $3, 0x0($18)
      addiu      $2, $0, 0x1
      sw         $3, 0x8($16)
      j          .L80054B08
       sw        $16, 0x0($18)
  .L80054AD4:
      blez       $7, .L80054AF8
       addu      $3, $0, $0
  .L80054ADC:
      lw         $2, 0x8($4)
      beqz       $2, .L80054AF8
       addiu     $3, $3, 0x1
      addu       $4, $2, $0
      slt        $2, $3, $7
      bnez       $2, .L80054ADC
       nop
  .L80054AF8:
      lw         $3, 0x8($4)
      addiu      $2, $0, 0x1
      sw         $3, 0x8($16)
      sw         $16, 0x8($4)
  .L80054B08:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80054998

.globl func_80054B2C
.ent func_80054B2C
func_80054B2C:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      addu       $4, $5, $0
      addu       $3, $0, $0
      sw         $17, 0x14($29)
      addu       $17, $3, $0
      sw         $31, 0x1C($29)
      beqz       $18, .L80054B60
       sw        $16, 0x10($29)
      lw         $16, 0x0($18)
      bnez       $16, .L80054B68
       nop
  .L80054B60:
      j          .L80054C48
       addiu     $2, $0, -0x4
  .L80054B68:
      bnez       $6, .L80054BB8
       addiu     $5, $6, -0x1
      beqz       $4, .L80054B8C
       nop
      lw         $5, 0x0($16)
      jal        func_8005211C
       nop
      bnez       $2, .L80054C48
       addiu     $2, $0, -0x1
  .L80054B8C:
      lw         $2, 0x0($18)
      lw         $2, 0x8($2)
      sw         $2, 0x0($18)
      lw         $4, 0x0($16)
      jal        func_80052540
       nop
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
      j          .L80054C3C
       addu      $4, $16, $0
  .L80054BB8:
      slt        $2, $17, $5
      beqz       $2, .L80054BE4
       addiu     $2, $6, -0x1
  .L80054BC4:
      lw         $2, 0x8($16)
      beql       $2, $0, .L80054BE4
       addiu     $2, $6, -0x1
      addu       $16, $2, $0
      addiu      $3, $3, 0x1
      slt        $2, $3, $5
      bnez       $2, .L80054BC4
       addiu     $2, $6, -0x1
  .L80054BE4:
      bne        $3, $2, .L80054C48
       addiu     $2, $0, -0x1
      lw         $5, 0x8($16)
      beqz       $5, .L80054C48
       nop
      beqz       $4, .L80054C14
       nop
      lw         $5, 0x0($5)
      jal        func_8005211C
       nop
      bnez       $2, .L80054C48
       addiu     $2, $0, -0x1
  .L80054C14:
      lw         $17, 0x8($16)
      lw         $2, 0x8($17)
      sw         $2, 0x8($16)
      lw         $4, 0x0($17)
      jal        func_80052540
       nop
      lw         $4, 0x4($17)
      jal        func_80052540
       nop
      addu       $4, $17, $0
  .L80054C3C:
      jal        func_80052540
       nop
      addiu      $2, $0, 0x1
  .L80054C48:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80054B2C

.globl func_80054C60
.ent func_80054C60
func_80054C60:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $31, 0x1C($29)
      beqz       $16, .L80054C94
       sw        $17, 0x14($29)
      beqz       $18, .L80054D40
       addiu     $2, $0, -0x4
      lw         $17, 0x0($16)
      bnez       $17, .L80054C9C
       nop
  .L80054C94:
      j          .L80054D40
       addiu     $2, $0, -0x4
  .L80054C9C:
      lw         $17, 0x0($16)
      lw         $4, 0x0($17)
      jal        func_8005211C
       addu      $5, $18, $0
      bnez       $2, .L80054D30
       nop
      lw         $2, 0x8($17)
      sw         $2, 0x0($16)
      lw         $4, 0x0($17)
      jal        func_80052540
       nop
      lw         $4, 0x4($17)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $17, $0
      j          .L80054C9C
       nop
  .L80054CE4:
      lw         $4, 0x0($2)
      jal        func_8005211C
       addu      $5, $18, $0
      bnez       $2, .L80054D2C
       nop
      lw         $16, 0x8($17)
      lw         $2, 0x8($16)
      sw         $2, 0x8($17)
      lw         $4, 0x0($16)
      jal        func_80052540
       nop
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
      j          .L80054D30
       nop
  .L80054D2C:
      lw         $17, 0x8($17)
  .L80054D30:
      lw         $2, 0x8($17)
      bnez       $2, .L80054CE4
       nop
      addiu      $2, $0, 0x1
  .L80054D40:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80054C60

.globl func_80054D58
.ent func_80054D58
func_80054D58:
      lw         $4, 0x2D8($16)
      jal        func_80053040
       nop
      lw         $4, 0x2DC($16)
      jal        func_80053040
       nop
      lw         $4, 0x2E0($16)
      jal        func_80053040
       nop
      lw         $4, 0x2E4($16)
.end func_80054D58

.globl func_80054D80
.ent func_80054D80
func_80054D80:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      lui        $16, %hi(D_80125340)
      lbu        $2, %lo(D_80125340)($16)
      bnez       $2, .L80054DB8
       sw        $31, 0x14($29)
      lui        $4, %hi(D_801326C0)
      addiu      $4, $4, %lo(D_801326C0)
      addiu      $5, $0, 0x200
      addiu      $6, $0, 0x1F
      jal        func_80056400
       addiu     $7, $0, 0x10
      addiu      $2, $0, 0x1
      sb         $2, %lo(D_80125340)($16)
  .L80054DB8:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80054D80

.globl func_80054DC8
.ent func_80054DC8
func_80054DC8:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0xC($18)
      beqz       $2, .L80054E4C
       nop
      lw         $2, 0x8($18)
      blez       $2, .L80054E38
       addu      $16, $0, $0
      addiu      $19, $0, 0x3
      addu       $17, $16, $0
  .L80054E04:
      lw         $2, 0xC($18)
      addu       $3, $17, $2
      lw         $2, 0x0($3)
      bne        $2, $19, .L80054E24
       nop
      lw         $4, 0x14($3)
      jal        func_80052540
       nop
  .L80054E24:
      lw         $2, 0x8($18)
      addiu      $16, $16, 0x1
      slt        $2, $16, $2
      bnez       $2, .L80054E04
       addiu     $17, $17, 0x24
  .L80054E38:
      lw         $4, 0xC($18)
      jal        func_80052540
       nop
      sw         $0, 0xC($18)
      sw         $0, 0x8($18)
  .L80054E4C:
      lw         $4, 0x10($18)
      beqz       $4, .L80054E6C
       addiu     $2, $0, 0x4
      jal        func_80052540
       nop
      sw         $0, 0x10($18)
      sw         $0, 0x14($18)
      addiu      $2, $0, 0x4
  .L80054E6C:
      sw         $2, 0x4($18)
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80054DC8

.globl func_80054E8C
.ent func_80054E8C
func_80054E8C:
      addiu      $29, $29, -0x18
      addu       $2, $4, $0
      addu       $7, $5, $0
      lui        $4, %hi(D_801326C0)
      addiu      $4, $4, %lo(D_801326C0)
      addu       $5, $2, $0
      sw         $31, 0x10($29)
      jal        func_80056BFC
       addu      $6, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80054E8C

.globl func_80054EBC
.ent func_80054EBC
func_80054EBC:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      sw         $31, 0x1C($29)
      jal        func_80054D80
       addu      $16, $4, $0
      lui        $4, %hi(D_801326C0)
      addiu      $4, $4, %lo(D_801326C0)
      addu       $5, $16, $0
      addu       $6, $0, $0
      addiu      $7, $29, 0x10
      jal        func_800568F4
       sw        $0, 0x10($29)
      lw         $2, 0x10($29)
      bnez       $2, .L80054F24
       nop
      addiu      $4, $0, 0x1C
      jal        func_80052504
       addu      $5, $0, $0
      addu       $5, $2, $0
      beqz       $5, .L80054F20
       sw        $5, 0x10($29)
      addiu      $2, $0, 0x4
      sw         $2, 0x4($5)
      jal        func_80054E8C
       addu      $4, $16, $0
  .L80054F20:
      lw         $2, 0x10($29)
  .L80054F24:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80054EBC

.globl func_80054F34
.ent func_80054F34
func_80054F34:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      sw         $31, 0x24($29)
      jal        func_80054D80
       sw        $17, 0x14($29)
      addiu      $4, $0, 0x401
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      beqz       $17, .L8005503C
       addiu     $4, $0, 0x410
      jal        func_80052504
       addu      $5, $16, $0
      addu       $16, $2, $0
      beqz       $16, .L8005503C
       addu      $4, $17, $0
      lui        $5, %hi(D_800ED638)
      addiu      $5, $5, %lo(D_800ED638)
      addu       $6, $18, $0
      jal        func_80016580
       addu      $7, $19, $0
      lui        $4, %hi(D_801326C0)
      addiu      $4, $4, %lo(D_801326C0)
      addu       $5, $17, $0
      addu       $6, $0, $0
      jal        func_800568F4
       addu      $7, $16, $0
      lw         $4, 0x0($16)
      beql       $4, $0, .L80054FE4
       addiu     $4, $0, 0x1C
      lbu        $2, 0x18($4)
      bnez       $2, .L80054FF8
       nop
      jal        func_80054DC8
       nop
      j          .L80055020
       addiu     $4, $16, 0xC
  .L80054FE4:
      jal        func_80052504
       addu      $5, $0, $0
      addu       $3, $2, $0
      bnez       $3, .L80055008
       sw        $3, 0x0($16)
  .L80054FF8:
      jal        func_80052540
       addu      $4, $16, $0
      j          .L8005503C
       addu      $16, $0, $0
  .L80055008:
      addiu      $2, $0, 0x4
      sw         $2, 0x4($3)
      lw         $5, 0x0($16)
      jal        func_80054E8C
       addu      $4, $17, $0
      addiu      $4, $16, 0xC
  .L80055020:
      addu       $5, $20, $0
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x1
      sb         $2, 0x18($3)
      sw         $0, 0x8($16)
      jal        func_80017640
       sw        $0, 0x4($16)
  .L8005503C:
      jal        func_80052540
       addu      $4, $17, $0
      addu       $2, $16, $0
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80054F34

.globl func_80055068
.ent func_80055068
func_80055068:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x0($16)
      lw         $2, 0x4($16)
      lw         $3, 0x8($4)
      slt        $2, $3, $2
      beqz       $2, .L800550AC
       sll       $5, $3, 3
      addu       $5, $5, $3
      sll        $5, $5, 2
      lw         $4, 0xC($4)
      jal        func_80052524
       addu      $6, $0, $0
      lw         $3, 0x0($16)
      sw         $2, 0xC($3)
  .L800550AC:
      lw         $3, 0x0($16)
      lw         $2, 0x8($16)
      lw         $5, 0x14($3)
      slt        $2, $5, $2
      beqz       $2, .L800550D8
       nop
      lw         $4, 0x10($3)
      jal        func_80052524
       addu      $6, $0, $0
      lw         $3, 0x0($16)
      sw         $2, 0x10($3)
  .L800550D8:
      lw         $2, 0x0($16)
      sw         $0, 0x4($2)
      lw         $2, 0x0($16)
      addu       $4, $16, $0
      jal        func_80052540
       sb        $0, 0x18($2)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80055068

.globl func_80055100
.ent func_80055100
func_80055100:
      addiu      $29, $29, -0x18
  .globl func_80055104
func_80055104:
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x0($16)
      jal        func_80054DC8
       nop
      lw         $2, 0x0($16)
      addu       $4, $16, $0
      jal        func_80052540
       sb        $0, 0x18($2)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80055100

.globl func_8005513C
.ent func_8005513C
func_8005513C:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $17, 0x14($29)
      addiu      $17, $0, 0x1
      addu       $4, $19, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      j          .L80055170
       sw        $16, 0x10($29)
  .L8005516C:
      addu       $4, $16, $0
  .L80055170:
      jal        func_800560BC
       nop
      addu       $16, $2, $0
      bnel       $16, $0, .L8005516C
       addiu     $17, $17, 0x1
      sll        $4, $17, 16
      sra        $3, $4, 16
      slti       $2, $3, 0x6
      bnez       $2, .L80055368
       addu      $2, $0, $0
      andi       $2, $17, 0x1
      bnez       $2, .L80055368
       addu      $2, $0, $0
      srl        $2, $4, 31
      addu       $2, $3, $2
      sra        $17, $2, 1
      sll        $4, $17, 2
      jal        func_80052504
       addu      $5, $0, $0
      bnez       $2, .L800551CC
       sw        $2, 0x10($18)
      j          .L80055368
       addu      $2, $0, $0
  .L800551CC:
      addu       $16, $19, $0
      addu       $19, $0, $0
      addiu      $2, $0, 0x7FFF
      sh         $17, 0x14($18)
      lh         $4, 0x14($18)
      addiu      $3, $0, -0x8000
      sw         $2, 0x4($18)
      sw         $3, 0xC($18)
      sw         $3, 0x8($18)
      blez       $4, .L800552FC
       sw        $2, 0x0($18)
      lui        $2, %hi(D_80137108)
      addiu      $20, $2, %lo(D_80137108)
      addu       $17, $19, $0
  .L80055204:
      jal        func_80024000
       addu      $4, $16, $0
      lw         $3, 0x10($18)
      addu       $3, $17, $3
      sh         $2, 0x0($3)
      sll        $2, $2, 16
      lw         $3, 0x8($18)
      sra        $4, $2, 16
      slt        $3, $3, $4
      bnel       $3, $0, .L80055230
       sw        $4, 0x8($18)
  .L80055230:
      lw         $2, 0x0($18)
      slt        $2, $4, $2
      bnel       $2, $0, .L80055240
       sw        $4, 0x0($18)
  .L80055240:
      jal        func_800560BC
       addu      $4, $16, $0
      addu       $16, $2, $0
      beqz       $16, .L80055358
       nop
      jal        func_80024000
       addu      $4, $16, $0
      addu       $5, $2, $0
      lui        $2, %hi(D_80125540)
      lbu        $2, %lo(D_80125540)($2)
      bnez       $2, .L80055290
       addu      $4, $5, $0
      lw         $3, 0x3C($20)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80055290
       sll       $2, $5, 16
      sra        $3, $2, 16
      srl        $2, $2, 31
      addu       $3, $3, $2
      srl        $4, $3, 1
  .L80055290:
      lw         $2, 0x10($18)
      sll        $3, $4, 16
      addu       $2, $17, $2
      sh         $4, 0x2($2)
      lw         $2, 0x4($18)
      sra        $3, $3, 16
      slt        $2, $3, $2
      bnel       $2, $0, .L800552B4
       sw        $3, 0x4($18)
  .L800552B4:
      lw         $2, 0xC($18)
      slt        $2, $2, $3
      bnel       $2, $0, .L800552C4
       sw        $3, 0xC($18)
  .L800552C4:
      lh         $2, 0x14($18)
      addiu      $2, $2, -0x1
      beq        $19, $2, .L800552E8
       nop
      jal        func_800560BC
       addu      $4, $16, $0
      addu       $16, $2, $0
      beqz       $16, .L80055358
       nop
  .L800552E8:
      lh         $2, 0x14($18)
      addiu      $19, $19, 0x1
      slt        $2, $19, $2
      bnez       $2, .L80055204
       addiu     $17, $17, 0x4
  .L800552FC:
      lh         $2, 0x14($18)
      lw         $4, 0x10($18)
      sll        $2, $2, 2
      addu       $2, $2, $4
      addiu      $6, $2, -0x4
      lh         $3, 0x0($4)
      lh         $2, -0x4($2)
      lhu        $5, 0x14($18)
      bne        $3, $2, .L80055368
       addiu     $2, $0, 0x1
      lh         $3, 0x2($4)
      lh         $2, 0x2($6)
      bne        $3, $2, .L80055368
       addiu     $2, $0, 0x1
      addiu      $2, $5, -0x1
      sh         $2, 0x14($18)
      sll        $2, $2, 16
      sra        $2, $2, 16
      slti       $2, $2, 0x3
      beqz       $2, .L80055368
       addiu     $2, $0, 0x1
      j          .L8005535C
       nop
  .L80055358:
      lw         $4, 0x10($18)
  .L8005535C:
      jal        func_80052540
       nop
      addu       $2, $0, $0
  .L80055368:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8005513C

.globl func_80055388
.ent func_80055388
func_80055388:
      addiu      $29, $29, -0x38
      sw         $16, 0x18($29)
      lw         $16, 0x48($29)
      sw         $22, 0x30($29)
      lw         $22, 0x4C($29)
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $19, 0x24($29)
      addu       $19, $5, $0
      sw         $21, 0x2C($29)
      addu       $21, $6, $0
      sw         $31, 0x34($29)
      sw         $20, 0x28($29)
      beqz       $18, .L800553E4
       sw        $17, 0x1C($29)
      lw         $4, 0x0($18)
      beqz       $4, .L80055B0C
       addiu     $2, $0, -0x4
      beqz       $19, .L80055B0C
       nop
      lbu        $2, 0x0($19)
      bnez       $2, .L800553EC
       nop
  .L800553E4:
      j          .L80055B0C
       addiu     $2, $0, -0x4
  .L800553EC:
      lw         $2, 0x8($4)
      lw         $3, 0x4($18)
      slt        $2, $2, $3
      bnez       $2, .L80055448
       addiu     $20, $0, 0x1
      lw         $4, 0xC($4)
      beqz       $4, .L80055428
       addiu     $2, $3, 0x8
      sll        $5, $2, 3
      addu       $5, $5, $2
      sll        $5, $5, 2
      jal        func_80052524
       addu      $6, $0, $0
      j          .L80055434
       nop
  .L80055428:
      addiu      $4, $0, 0x120
      jal        func_800524E8
       addu      $5, $0, $0
  .L80055434:
      lw         $3, 0x0($18)
      sw         $2, 0xC($3)
      lw         $2, 0x4($18)
      addiu      $2, $2, 0x8
      sw         $2, 0x4($18)
  .L80055448:
      lw         $2, 0x0($18)
      lw         $3, 0xC($2)
      beqz       $3, .L80055A84
       addu      $5, $0, $0
      lw         $2, 0x8($2)
      addiu      $6, $0, 0x24
      sll        $4, $2, 3
      addu       $4, $4, $2
      sll        $4, $4, 2
      jal        func_80016140
       addu      $4, $3, $4
      beqz       $16, .L800554B0
       nop
      lbu        $2, 0x0($16)
      beqz       $2, .L800554B0
       addu      $4, $16, $0
      lui        $5, %hi(D_800ED308)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED308)
      beqz       $2, .L800554B0
       addu      $4, $16, $0
      lui        $5, %hi(D_800ED2FC)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2FC)
      bnez       $2, .L800554D8
       addu      $4, $16, $0
  .L800554B0:
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      sll        $2, $3, 3
      addu       $2, $2, $3
      lw         $3, 0xC($4)
      sll        $2, $2, 2
      addu       $2, $2, $3
      addiu      $3, $0, 0x1
      j          .L80055584
       sw        $3, 0x0($2)
  .L800554D8:
      lui        $5, %hi(D_800ED2A0)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2A0)
      bnez       $2, .L80055514
       addu      $4, $16, $0
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      sll        $2, $3, 3
      addu       $2, $2, $3
      lw         $3, 0xC($4)
      sll        $2, $2, 2
      addu       $2, $2, $3
      addiu      $3, $0, 0x2
      j          .L80055584
       sw        $3, 0x0($2)
  .L80055514:
      lui        $5, %hi(D_800ED2EC)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2EC)
      beqz       $2, .L8005553C
       addu      $4, $16, $0
      lui        $5, %hi(D_800ED2E4)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2E4)
      bnez       $2, .L80055564
       nop
  .L8005553C:
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      sll        $2, $3, 3
      addu       $2, $2, $3
      lw         $3, 0xC($4)
      sll        $2, $2, 2
      addu       $2, $2, $3
      addiu      $3, $0, 0x3
      j          .L80055584
       sw        $3, 0x0($2)
  .L80055564:
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      sll        $2, $3, 3
      addu       $2, $2, $3
      lw         $3, 0xC($4)
      sll        $2, $2, 2
      addu       $2, $2, $3
      sw         $0, 0x0($2)
  .L80055584:
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      sll        $2, $3, 3
      addu       $2, $2, $3
      lw         $3, 0xC($4)
      sll        $2, $2, 2
      addu       $4, $2, $3
      lw         $17, 0x0($4)
      addiu      $2, $0, 0x2
      beq        $17, $2, .L80055740
       sltiu     $2, $17, 0x3
      beqz       $2, .L800555C8
       addiu     $2, $0, 0x1
      beq        $17, $2, .L800555DC
       nop
      j          .L80055894
       nop
  .L800555C8:
      addiu      $2, $0, 0x3
      beq        $17, $2, .L8005583C
       addiu     $4, $4, 0x4
      j          .L80055894
       nop
  .L800555DC:
      jal        func_80024000
       addu      $4, $19, $0
      lw         $6, 0x0($18)
      lw         $5, 0x8($6)
      addu       $4, $19, $0
      sll        $3, $5, 3
      addu       $3, $3, $5
      lw         $5, 0xC($6)
      sll        $3, $3, 2
      addu       $3, $3, $5
      jal        func_800560BC
       sw        $2, 0x4($3)
      addu       $16, $2, $0
      beqz       $16, .L8005570C
       nop
      jal        func_80024000
       addu      $4, $16, $0
      lui        $3, %hi(D_80125540)
      lbu        $3, %lo(D_80125540)($3)
      bnez       $3, .L80055648
       addu      $6, $2, $0
      lui        $2, %hi(D_80137144)
      lw         $2, %lo(D_80137144)($2)
      bne        $2, $17, .L80055648
       srl       $2, $6, 31
      addu       $2, $6, $2
      sra        $6, $2, 1
  .L80055648:
      lw         $5, 0x0($18)
      lw         $3, 0x8($5)
      addu       $4, $16, $0
      sll        $2, $3, 3
      addu       $2, $2, $3
      lw         $3, 0xC($5)
      sll        $2, $2, 2
      addu       $2, $2, $3
      jal        func_800560BC
       sw        $6, 0x8($2)
      addu       $16, $2, $0
      beqz       $16, .L8005570C
       nop
      jal        func_80024000
       addu      $4, $16, $0
      lw         $6, 0x0($18)
      lw         $5, 0x8($6)
      addu       $4, $16, $0
      sll        $3, $5, 3
      addu       $3, $3, $5
      lw         $5, 0xC($6)
      sll        $3, $3, 2
      addu       $3, $3, $5
      jal        func_800560BC
       sw        $2, 0xC($3)
      addu       $16, $2, $0
      beqz       $16, .L8005570C
       nop
      jal        func_80024000
       addu      $4, $16, $0
      lui        $3, %hi(D_80125540)
      lbu        $3, %lo(D_80125540)($3)
      bnez       $3, .L800556EC
       addu      $6, $2, $0
      lui        $2, %hi(D_80137144)
      lw         $3, %lo(D_80137144)($2)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800556EC
       srl       $2, $6, 31
      addu       $2, $6, $2
      sra        $6, $2, 1
  .L800556EC:
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      sll        $2, $3, 3
      addu       $2, $2, $3
      lw         $3, 0xC($4)
      sll        $2, $2, 2
      addu       $2, $2, $3
      sw         $6, 0x10($2)
  .L8005570C:
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      sll        $2, $3, 3
      addu       $2, $2, $3
      lw         $3, 0xC($4)
      sll        $2, $2, 2
      addu       $3, $2, $3
      lw         $2, 0xC($3)
      beql       $2, $0, .L80055894
       sw        $0, 0x0($3)
      lw         $2, 0x10($3)
      j          .L8005582C
       nop
  .L80055740:
      jal        func_80024000
       addu      $4, $19, $0
      lw         $6, 0x0($18)
      lw         $5, 0x8($6)
      addu       $4, $19, $0
      sll        $3, $5, 3
      addu       $3, $3, $5
      lw         $5, 0xC($6)
      sll        $3, $3, 2
      addu       $3, $3, $5
      jal        func_800560BC
       sh        $2, 0x4($3)
      addu       $16, $2, $0
      beqz       $16, .L8005580C
       nop
      jal        func_80024000
       addu      $4, $16, $0
      lw         $6, 0x0($18)
      lw         $5, 0x8($6)
      addu       $4, $16, $0
      sll        $3, $5, 3
      addu       $3, $3, $5
      lw         $5, 0xC($6)
      sll        $3, $3, 2
      addu       $3, $3, $5
      jal        func_800560BC
       sh        $2, 0x6($3)
      addu       $16, $2, $0
      beqz       $16, .L8005580C
       nop
      jal        func_80024000
       addu      $4, $16, $0
      lw         $5, 0x0($18)
      lw         $4, 0x8($5)
      sll        $3, $4, 3
      addu       $3, $3, $4
      lw         $4, 0xC($5)
      sll        $3, $3, 2
      addu       $3, $3, $4
      sh         $2, 0x8($3)
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      sll        $2, $3, 3
      addu       $2, $2, $3
      lw         $3, 0xC($4)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lhu        $3, 0x8($2)
      mult       $3, $3
      mflo       $7
      sh         $7, 0x8($2)
  .L8005580C:
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      sll        $2, $3, 3
      addu       $2, $2, $3
      lw         $3, 0xC($4)
      sll        $2, $2, 2
      addu       $3, $2, $3
      lh         $2, 0x8($3)
  .L8005582C:
      bnez       $2, .L80055894
       nop
      j          .L80055894
       sw        $0, 0x0($3)
  .L8005583C:
      jal        func_8005513C
       addu      $5, $19, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80055874
       nop
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      sll        $2, $3, 3
      addu       $2, $2, $3
      lw         $3, 0xC($4)
      sll        $2, $2, 2
      addu       $2, $2, $3
      j          .L80055894
       sw        $17, 0x0($2)
  .L80055874:
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      sll        $2, $3, 3
      addu       $2, $2, $3
      lw         $3, 0xC($4)
      sll        $2, $2, 2
      addu       $2, $2, $3
      sw         $0, 0x0($2)
  .L80055894:
      beqz       $21, .L800559CC
       nop
      lbu        $2, 0x0($21)
      beqz       $2, .L800559CC
       addu      $17, $0, $0
      addu       $4, $21, $0
      addiu      $5, $0, 0x1
      jal        func_800570AC
       addiu     $6, $29, 0x10
      addu       $16, $2, $0
      beqz       $16, .L800558EC
       addiu     $5, $18, 0xC
      addu       $4, $16, $0
      jal        func_80057334
       addiu     $6, $0, 0x1F
      lbu        $3, 0x10($29)
      beqz       $3, .L800558E4
       addu      $17, $2, $0
      jal        func_80052540
       addu      $4, $16, $0
  .L800558E4:
      bnez       $17, .L800558F4
       addiu     $2, $0, 0x1
  .L800558EC:
      addiu      $20, $0, -0x5
      addiu      $2, $0, 0x1
  .L800558F4:
      bne        $20, $2, .L80055B0C
       addu      $2, $20, $0
      jal        func_80017780
       addu      $4, $17, $0
      lw         $3, 0x0($18)
      addu       $16, $2, $0
      lw         $2, 0x14($3)
      lw         $5, 0x8($18)
      addu       $2, $2, $16
      slt        $2, $2, $5
      bnez       $2, .L80055968
       nop
      lw         $2, 0x10($3)
      beqz       $2, .L8005594C
       addiu     $5, $5, 0x401
      addu       $2, $3, $0
      sw         $5, 0x8($18)
      lw         $4, 0x10($2)
      jal        func_80052524
       addu      $6, $0, $0
      j          .L80055960
       nop
  .L8005594C:
      addiu      $4, $0, 0x1004
      addu       $5, $0, $0
      addu       $2, $4, $0
      jal        func_800524E8
       sw        $2, 0x8($18)
  .L80055960:
      lw         $3, 0x0($18)
      sw         $2, 0x10($3)
  .L80055968:
      lw         $2, 0x0($18)
      lw         $3, 0x10($2)
      beqz       $3, .L80055A84
       addu      $5, $17, $0
      lw         $4, 0x14($2)
      jal        func_80017640
       addu      $4, $3, $4
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      sll        $2, $3, 3
      addu       $2, $2, $3
      sll        $2, $2, 2
      lw         $3, 0xC($4)
      lw         $4, 0x14($4)
      addu       $2, $2, $3
      sw         $4, 0x1C($2)
      lw         $3, 0x0($18)
      lw         $2, 0x14($3)
      addu       $4, $17, $0
      addiu      $2, $2, 0x1
      addu       $2, $2, $16
      jal        func_80052540
       sw        $2, 0x14($3)
      j          .L800559F0
       nop
  .L800559CC:
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      sll        $2, $3, 3
      addu       $2, $2, $3
      lw         $3, 0xC($4)
      sll        $2, $2, 2
      addu       $2, $2, $3
      addiu      $3, $0, -0x1
      sw         $3, 0x1C($2)
  .L800559F0:
      beqz       $22, .L80055AD4
       nop
      lbu        $2, 0x0($22)
      beqz       $2, .L80055AD4
       nop
      jal        func_80017780
       addu      $4, $22, $0
      lw         $3, 0x0($18)
      addu       $16, $2, $0
      lw         $2, 0x14($3)
      lw         $5, 0x8($18)
      addu       $2, $2, $16
      slt        $2, $5, $2
      beqz       $2, .L80055A74
       nop
      lw         $2, 0x10($3)
      beqz       $2, .L80055A58
       addiu     $5, $5, 0x1
      addu       $5, $5, $16
      addu       $2, $3, $0
      sw         $5, 0x8($18)
      lw         $4, 0x10($2)
      jal        func_80052524
       addu      $6, $0, $0
      j          .L80055A6C
       nop
  .L80055A58:
      addiu      $4, $0, 0x1004
      addu       $5, $0, $0
      addu       $2, $4, $0
      jal        func_800524E8
       sw        $2, 0x8($18)
  .L80055A6C:
      lw         $3, 0x0($18)
      sw         $2, 0x10($3)
  .L80055A74:
      lw         $2, 0x0($18)
      lw         $3, 0x10($2)
      bnez       $3, .L80055A8C
       addu      $5, $22, $0
  .L80055A84:
      j          .L80055B0C
       addiu     $2, $0, -0x5
  .L80055A8C:
      lw         $4, 0x14($2)
      jal        func_80017640
       addu      $4, $3, $4
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      sll        $2, $3, 3
      addu       $2, $2, $3
      sll        $2, $2, 2
      lw         $3, 0xC($4)
      lw         $4, 0x14($4)
      addu       $2, $2, $3
      sw         $4, 0x20($2)
      lw         $3, 0x0($18)
      lw         $2, 0x14($3)
      addiu      $2, $2, 0x1
      addu       $2, $2, $16
      j          .L80055AF8
       sw        $2, 0x14($3)
  .L80055AD4:
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      sll        $2, $3, 3
      addu       $2, $2, $3
      lw         $3, 0xC($4)
      sll        $2, $2, 2
      addu       $2, $2, $3
      addiu      $3, $0, -0x1
      sw         $3, 0x20($2)
  .L80055AF8:
      lw         $4, 0x0($18)
      lw         $3, 0x8($4)
      addu       $2, $20, $0
      addiu      $3, $3, 0x1
      sw         $3, 0x8($4)
  .L80055B0C:
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
.end func_80055388

.globl func_80055B34
.ent func_80055B34
func_80055B34:
      lw         $2, 0x0($6)
      slt        $2, $4, $2
      bnez       $2, .L80055B74
       nop
      lw         $2, 0x8($6)
      slt        $2, $2, $4
      bnez       $2, .L80055B74
       nop
      lw         $2, 0x4($6)
      slt        $2, $5, $2
      bnez       $2, .L80055B74
       nop
      lw         $2, 0xC($6)
      slt        $2, $2, $5
      beqz       $2, .L80055B7C
       nop
  .L80055B74:
      jr         $31
       addu      $2, $0, $0
  .L80055B7C:
      lh         $2, 0x14($6)
      lw         $13, 0x10($6)
      lhu        $6, 0x14($6)
      sll        $2, $2, 2
      addu       $7, $2, $13
      lh         $9, -0x2($7)
      lh         $10, 0x2($13)
      slt        $3, $9, $5
      xori       $3, $3, 0x1
      slt        $2, $10, $5
      xori       $2, $2, 0x1
      beq        $3, $2, .L80055C2C
       addu      $12, $0, $0
      lh         $3, -0x4($7)
      lh         $8, 0x0($13)
      slt        $2, $3, $4
      xori       $7, $2, 0x1
      slt        $2, $8, $4
      xori       $2, $2, 0x1
      bne        $7, $2, .L80055BD8
       subu      $2, $9, $5
      j          .L80055C2C
       sltu      $12, $12, $7
  .L80055BD8:
      mtc1       $2, $f2
      cvt.s.w    $f2, $f2
      subu       $2, $8, $3
      mtc1       $2, $f0
      cvt.s.w    $f0, $f0
      mul.s      $f2, $f2, $f0
      mtc1       $3, $f4
      cvt.s.w    $f4, $f4
      subu       $2, $10, $9
      mtc1       $2, $f0
      cvt.s.w    $f0, $f0
      div.s      $f2, $f2, $f0
      sub.s      $f4, $f4, $f2
      mtc1       $4, $f0
      cvt.s.w    $f0, $f0
      c.le.s     $f0, $f4
      nop
      bc1t       .L80055C28
       addiu     $2, $0, 0x1
      addu       $2, $0, $0
  .L80055C28:
      addu       $12, $2, $0
  .L80055C2C:
      addiu      $7, $0, 0x1
      sll        $2, $6, 16
      sra        $3, $2, 16
      slt        $2, $7, $3
      beqz       $2, .L80055D88
       addu      $11, $3, $0
      addiu      $8, $13, 0x4
      addu       $9, $13, $0
  .L80055C4C:
      lh         $2, 0x2($9)
      slt        $2, $2, $5
      bnez       $2, .L80055CA4
       nop
      lh         $2, 0x2($8)
      slt        $2, $2, $5
      bnez       $2, .L80055CE4
       slt       $2, $7, $11
      sll        $2, $7, 2
      addu       $3, $2, $13
      addiu      $9, $9, 0x4
  .L80055C78:
      addiu      $3, $3, 0x4
      addiu      $7, $7, 0x1
      slt        $2, $7, $11
      beqz       $2, .L80055D88
       addiu     $8, $8, 0x4
      lh         $2, 0x2($3)
      slt        $2, $2, $5
      beql       $2, $0, .L80055C78
       addiu     $9, $9, 0x4
      j          .L80055CE4
       slt       $2, $7, $11
  .L80055CA4:
      lh         $2, 0x2($8)
      slt        $2, $2, $5
      beqz       $2, .L80055CE0
       sll       $2, $7, 2
      addu       $3, $2, $13
      addiu      $9, $9, 0x4
  .L80055CBC:
      addiu      $3, $3, 0x4
      addiu      $7, $7, 0x1
      slt        $2, $7, $11
      beqz       $2, .L80055D88
       addiu     $8, $8, 0x4
      lh         $2, 0x2($3)
      slt        $2, $2, $5
      bnel       $2, $0, .L80055CBC
       addiu     $9, $9, 0x4
  .L80055CE0:
      slt        $2, $7, $11
  .L80055CE4:
      beqz       $2, .L80055D88
       nop
      lh         $6, 0x0($9)
      lh         $10, 0x0($8)
      slt        $2, $6, $4
      xori       $3, $2, 0x1
      slt        $2, $10, $4
      xori       $2, $2, 0x1
      bne        $3, $2, .L80055D1C
       nop
      beql       $3, $0, .L80055D78
       addiu     $9, $9, 0x4
      j          .L80055D74
       addiu     $12, $12, 0x1
  .L80055D1C:
      lh         $3, 0x2($9)
      subu       $2, $3, $5
      mtc1       $2, $f2
      cvt.s.w    $f2, $f2
      subu       $2, $10, $6
      mtc1       $2, $f0
      cvt.s.w    $f0, $f0
      mul.s      $f2, $f2, $f0
      lh         $2, 0x2($8)
      mtc1       $6, $f4
      cvt.s.w    $f4, $f4
      subu       $2, $2, $3
      mtc1       $2, $f0
      cvt.s.w    $f0, $f0
      div.s      $f2, $f2, $f0
      sub.s      $f4, $f4, $f2
      mtc1       $4, $f0
      cvt.s.w    $f0, $f0
      c.le.s     $f0, $f4
      nop
      bc1tl      .L80055D74
       addiu     $12, $12, 0x1
  .L80055D74:
      addiu      $9, $9, 0x4
  .L80055D78:
      addiu      $7, $7, 0x1
      slt        $2, $7, $11
      bnez       $2, .L80055C4C
       addiu     $8, $8, 0x4
  .L80055D88:
      jr         $31
       andi      $2, $12, 0x1
.end func_80055B34

.globl func_80055D90
.ent func_80055D90
func_80055D90:
      addiu      $29, $29, -0x38
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $22, 0x28($29)
      addu       $22, $7, $0
      sw         $21, 0x24($29)
      addu       $21, $0, $0
      addu       $4, $21, $0
      sw         $31, 0x30($29)
      sw         $23, 0x2C($29)
      sw         $18, 0x18($29)
      beqz       $22, .L80055DD8
       sw        $16, 0x10($29)
      sw         $0, 0x0($22)
  .L80055DD8:
      lw         $2, 0x8($17)
      slt        $2, $21, $2
      beqz       $2, .L80055F20
       addu      $18, $0, $0
      addiu      $23, $0, -0x1
      addu       $16, $18, $0
  .L80055DF0:
      lw         $2, 0xC($17)
      addu       $6, $16, $2
      lw         $3, 0x0($6)
      addiu      $2, $0, 0x2
      beq        $3, $2, .L80055E70
       sltiu     $2, $3, 0x3
      beqz       $2, .L80055E20
       addiu     $2, $0, 0x1
      beq        $3, $2, .L80055E34
       andi      $2, $4, 0xFF
      j          .L80055EC8
       nop
  .L80055E20:
      addiu      $2, $0, 0x3
      beq        $3, $2, .L80055EB0
       andi      $2, $4, 0xFF
      j          .L80055EC8
       nop
  .L80055E34:
      lw         $2, 0x4($6)
      slt        $2, $19, $2
      bnez       $2, .L80055EC8
       andi      $2, $4, 0xFF
      lw         $2, 0xC($6)
      slt        $2, $2, $19
      bnez       $2, .L80055EC8
       andi      $2, $4, 0xFF
      lw         $2, 0x8($6)
      slt        $2, $20, $2
      bnel       $2, $0, .L80055EC8
       andi      $2, $4, 0xFF
      lw         $2, 0x10($6)
      j          .L80055EA0
       slt       $2, $2, $20
  .L80055E70:
      lh         $2, 0x4($6)
      subu       $2, $19, $2
      mult       $2, $2
      lh         $2, 0x6($6)
      mflo       $3
      subu       $2, $20, $2
      nop
      mult       $2, $2
      lh         $2, 0x8($6)
      mflo       $9
      addu       $3, $3, $9
      slt        $2, $2, $3
  .L80055EA0:
      beql       $2, $0, .L80055EC4
       addiu     $4, $0, 0x1
      j          .L80055EC8
       andi      $2, $4, 0xFF
  .L80055EB0:
      addu       $4, $19, $0
      addu       $5, $20, $0
      jal        func_80055B34
       addiu     $6, $6, 0x4
      addu       $4, $2, $0
  .L80055EC4:
      andi       $2, $4, 0xFF
  .L80055EC8:
      beql       $2, $0, .L80055F10
       addiu     $18, $18, 0x1
      lw         $2, 0xC($17)
      addu       $4, $16, $2
      lw         $3, 0x1C($4)
      beq        $3, $23, .L80055EEC
       nop
      lw         $2, 0x10($17)
      addu       $21, $2, $3
  .L80055EEC:
      beqz       $22, .L80055F24
       addu      $2, $21, $0
      lw         $3, 0x20($4)
      beq        $3, $23, .L80055F24
       nop
      lw         $2, 0x10($17)
      addu       $2, $2, $3
      j          .L80055F20
       sw        $2, 0x0($22)
  .L80055F10:
      lw         $2, 0x8($17)
      slt        $2, $18, $2
      bnez       $2, .L80055DF0
       addiu     $16, $16, 0x24
  .L80055F20:
      addu       $2, $21, $0
  .L80055F24:
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
.end func_80055D90

.globl func_80055F50
.ent func_80055F50
func_80055F50:
      lui        $2, %hi(D_80125340)
      lbu        $2, %lo(D_80125340)($2)
      addiu      $29, $29, -0x38
      sw         $31, 0x30($29)
      sw         $19, 0x2C($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      beqz       $2, .L80055FDC
       sw        $16, 0x20($29)
      lui        $18, %hi(D_801326C0)
      jal        func_80056C94
       addiu     $4, $18, %lo(D_801326C0)
      addu       $17, $2, $0
      blez       $17, .L80055FD0
       addu      $16, $0, $0
      addu       $19, $18, $0
      addiu      $18, $29, 0x18
      addiu      $4, $19, %lo(D_801326C0)
  .L80055F98:
      addu       $5, $16, $0
      addu       $6, $0, $0
      addu       $7, $6, $0
      jal        func_80056F40
       sw        $18, 0x10($29)
      lw         $4, 0x18($29)
      jal        func_80054DC8
       addiu     $16, $16, 0x1
      lw         $4, 0x18($29)
      jal        func_80052540
       nop
      slt        $2, $16, $17
      bnel       $2, $0, .L80055F98
       addiu     $4, $19, %lo(D_801326C0)
  .L80055FD0:
      lui        $4, %hi(D_801326C0)
      jal        func_800564F0
       addiu     $4, $4, %lo(D_801326C0)
  .L80055FDC:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80055F50

.globl func_80055FF8
.ent func_80055FF8
func_80055FF8:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      beqz       $16, .L8005609C
       sw        $17, 0x14($29)
      lbu        $2, 0x0($16)
      beqz       $2, .L80056088
       nop
      addiu      $19, $0, 0x2D
      addiu      $18, $0, 0x2B
      andi       $17, $5, 0xFF
  .L80056030:
      lbu        $4, 0x0($16)
      jal        func_80012680
       nop
      bnez       $2, .L80056088
       nop
      lbu        $2, 0x0($16)
      beq        $2, $19, .L80056088
       nop
      beq        $2, $18, .L80056088
       nop
      beql       $2, $17, .L80056074
       addiu     $16, $16, 0x1
      jal        func_800126C0
       addu      $4, $2, $0
      beqz       $2, .L80056088
       nop
      addiu      $16, $16, 0x1
  .L80056074:
      beqz       $16, .L800560A0
       addu      $2, $16, $0
      lbu        $2, 0x0($16)
      bnez       $2, .L80056030
       nop
  .L80056088:
      beqz       $16, .L800560A0
       addu      $2, $16, $0
      lbu        $2, 0x0($16)
      beql       $2, $0, .L8005609C
       addu      $16, $0, $0
  .L8005609C:
      addu       $2, $16, $0
  .L800560A0:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80055FF8

.globl func_800560BC
.ent func_800560BC
func_800560BC:
      addiu      $29, $29, -0x20
      addiu      $5, $0, 0x2C
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      jal        func_80055FF8
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L8005616C
       addu      $2, $0, $0
      lbu        $2, 0x0($16)
      beqz       $2, .L80056168
       addiu     $18, $0, 0x2D
      addiu      $17, $0, 0x2B
  .L800560F4:
      lbu        $4, 0x0($16)
      jal        func_80012680
       nop
      bnel       $2, $0, .L80056120
       addiu     $16, $16, 0x1
      lbu        $2, 0x0($16)
      beql       $2, $18, .L80056120
       addiu     $16, $16, 0x1
      bne        $2, $17, .L80056134
       nop
      addiu      $16, $16, 0x1
  .L80056120:
      beqz       $16, .L8005616C
       addu      $2, $0, $0
      lbu        $2, 0x0($16)
      bnez       $2, .L800560F4
       nop
  .L80056134:
      beqz       $16, .L8005616C
       addu      $2, $0, $0
      lbu        $2, 0x0($16)
      beqz       $2, .L80056168
       addu      $4, $16, $0
      jal        func_80055FF8
       addiu     $5, $0, 0x2C
      addu       $16, $2, $0
      beqz       $16, .L8005616C
       addu      $2, $0, $0
      lbu        $2, 0x0($16)
      bnez       $2, .L8005616C
       addu      $2, $16, $0
  .L80056168:
      addu       $2, $0, $0
  .L8005616C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800560BC

.globl func_80056184
.ent func_80056184
func_80056184:
      addiu      $29, $29, -0x98
      sw         $21, 0x84($29)
      addu       $21, $4, $0
      sw         $22, 0x88($29)
      addu       $22, $5, $0
      sw         $17, 0x74($29)
      addiu      $17, $0, 0x1
      sw         $19, 0x7C($29)
      lui        $19, %hi(D_801326C0)
      addiu      $4, $19, %lo(D_801326C0)
      sw         $31, 0x90($29)
      sw         $23, 0x8C($29)
      sw         $20, 0x80($29)
      sw         $18, 0x78($29)
      sw         $16, 0x70($29)
      jal        func_80056C94
       sw        $0, 0x68($29)
      addu       $16, $0, $0
      addu       $18, $2, $0
      blez       $18, .L80056220
       addu      $23, $16, $0
      addu       $20, $19, $0
      addiu      $19, $29, 0x64
      addiu      $4, $20, %lo(D_801326C0)
  .L800561E4:
      addu       $5, $16, $0
      addiu      $6, $29, 0x60
      addu       $7, $0, $0
      jal        func_80056F40
       sw        $19, 0x10($29)
      addu       $4, $22, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x64($29)
      lw         $2, 0x4($2)
      beq        $3, $2, .L80056220
       addiu     $16, $16, 0x1
      slt        $2, $16, $18
      bnez       $2, .L800561E4
       addiu     $4, $20, %lo(D_801326C0)
  .L80056220:
      lw         $4, 0x60($29)
      jal        func_800563C0
       addiu     $5, $0, 0x23
      bnez       $2, .L80056354
       addu      $2, $17, $0
      addiu      $4, $0, 0x14
      jal        func_80052504
       addu      $5, $0, $0
      addu       $16, $2, $0
      bnez       $16, .L80056254
       addu      $4, $21, $0
      j          .L80056354
       addiu     $2, $0, -0x5
  .L80056254:
      addu       $5, $0, $0
      addiu      $6, $29, 0x68
      jal        func_800676D8
       addu      $7, $5, $0
      addu       $17, $2, $0
      addiu      $19, $0, 0x1
      bne        $17, $19, .L80056354
       addiu     $4, $29, 0x20
      addu       $5, $0, $0
      lw         $2, 0x60($29)
      addiu      $6, $0, 0x3C
      sw         $0, 0x28($29)
      sw         $0, 0x2C($29)
      sw         $0, 0x30($29)
      sw         $0, 0x3C($29)
      sw         $0, 0x40($29)
      sw         $0, 0x44($29)
      sw         $0, 0x48($29)
      sw         $0, 0x4C($29)
      sw         $0, 0x50($29)
      sw         $0, 0x54($29)
      sw         $0, 0x34($29)
      sw         $0, 0x38($29)
      jal        func_80016140
       sw        $2, 0x20($29)
      addiu      $18, $21, 0x14
      addu       $4, $18, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      lw         $2, 0x60($29)
      addu       $7, $5, $0
      sw         $2, 0x20($29)
      jal        func_8007FA4C
       sw        $16, 0x10($29)
      addiu      $6, $29, 0x20
      lui        $2, %hi(D_80125344)
      lw         $7, 0x30($21)
      addiu      $2, $2, %lo(D_80125344)
      sw         $0, 0x10($29)
      sw         $2, 0x14($29)
      lw         $3, 0x68($29)
      addiu      $2, $16, 0x10
      sw         $2, 0x1C($29)
      sw         $3, 0x18($29)
      lw         $4, 0x2C($21)
      lw         $5, 0xC($21)
      lw         $2, 0x1C($7)
      jalr       $2
       addu      $7, $23, $0
      addu       $17, $2, $0
      bnel       $17, $19, .L8005633C
       sw        $0, 0x10($29)
      lw         $4, 0x68($29)
      lw         $5, 0x10($16)
      jal        func_800676AC
       nop
      j          .L80056354
       addu      $2, $17, $0
  .L8005633C:
      addu       $4, $18, $0
      addu       $5, $0, $0
      addu       $6, $16, $0
      jal        func_8007FBBC
       addu      $7, $5, $0
      addu       $2, $17, $0
  .L80056354:
      lw         $31, 0x90($29)
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
.end func_80056184

.globl func_80056380
.ent func_80056380
func_80056380:
      jr         $31
       addiu     $2, $0, -0x1
.end func_80056380

.globl func_80056388
.ent func_80056388
func_80056388:
      sll        $2, $2, 2
      addu       $2, $2, $3
      sw         $0, 0x0($2)
      beqz       $21, .L800564CC
       nop
      lbu        $2, 0x0($21)
      beqz       $2, .L800564CC
       addu      $17, $0, $0
      addu       $4, $21, $0
      addiu      $5, $0, 0x1
      jal        func_80057BAC
       addiu     $6, $29, 0x10
      addu       $16, $2, $0
      beqz       $16, .L800563EC
.end func_80056388

.globl func_800563C0
.ent func_800563C0
func_800563C0:
      lbu        $2, 0x0($4)
      beqz       $2, .L800563E8
       addu      $3, $0, $0
  .L800563CC:
      lbu        $2, 0x0($4)
      beql       $2, $5, .L800563D8
       addu      $3, $4, $0
  .L800563D8:
      addiu      $4, $4, 0x1
      lbu        $2, 0x0($4)
      bnez       $2, .L800563CC
       nop
  .L800563E8:
      jr         $31
  .L800563EC:
       addu      $2, $3, $0
      addiu      $2, $0, 0x1
      bne        $20, $2, .L8005660C
       addu      $2, $20, $0
      jal        func_80018280
.end func_800563C0

.globl func_80056400
.ent func_80056400
func_80056400:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $18, 0x18($29)
      addu       $18, $7, $0
      beqz       $16, .L800564AC
       sw        $31, 0x20($29)
      addu       $4, $16, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x20
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80052504
       sw        $4, 0x8($16)
      beqz       $2, .L800564AC
       sw        $2, 0x0($16)
      sll        $4, $18, 4
      addu       $5, $0, $0
      sw         $0, 0x4($16)
      jal        func_80052504
       sw        $18, 0x14($16)
      beqz       $2, .L800564A0
       sw        $2, 0xC($16)
      sll        $4, $19, 3
      addu       $5, $0, $0
      sw         $0, 0x10($16)
      jal        func_80052504
       sw        $19, 0x18($16)
      beqz       $2, .L80056494
       sw        $2, 0x1C($16)
      j          .L800564B0
       addu      $2, $0, $0
  .L80056494:
      lw         $4, 0xC($16)
      jal        func_80052540
       nop
  .L800564A0:
      lw         $4, 0x0($16)
      jal        func_80052540
       nop
  .L800564AC:
      addiu      $2, $0, -0x1
  .L800564B0:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
  .L800564CC:
      addiu      $29, $29, -0x18
      addiu      $5, $0, 0x80
      addiu      $6, $0, 0x1F
      sw         $31, 0x10($29)
      jal        func_80056400
       addiu     $7, $0, 0x8
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80056400

.globl func_800564F0
.ent func_800564F0
func_800564F0:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      bnez       $16, .L8005650C
       sw        $31, 0x14($29)
      j          .L80056544
       addiu     $2, $0, -0x1
  .L8005650C:
      lw         $4, 0x0($16)
      jal        func_80052540
       nop
      lw         $4, 0xC($16)
      jal        func_80052540
       nop
      lw         $4, 0x1C($16)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x20
      addu       $2, $0, $0
  .L80056544:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800564F0

.globl func_80056554
.ent func_80056554
func_80056554:
      addiu      $29, $29, -0x18
      addiu      $4, $0, 0x20
      addu       $5, $0, $0
      sw         $31, 0x14($29)
      jal        func_80052504
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L8005659C
       addiu     $5, $0, 0x80
      addu       $4, $16, $0
      addiu      $6, $0, 0x1F
      jal        func_80056400
       addiu     $7, $0, 0x8
      beqz       $2, .L800565A0
       addu      $2, $16, $0
      jal        func_80052540
       addu      $4, $16, $0
      addu       $16, $0, $0
  .L8005659C:
      addu       $2, $16, $0
  .L800565A0:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80056554

.globl func_800565B0
.ent func_800565B0
func_800565B0:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      addiu      $4, $0, 0x20
      addu       $5, $0, $0
      sw         $31, 0x20($29)
      jal        func_80052504
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L80056610
       addu      $5, $17, $0
      addu       $4, $16, $0
      addu       $6, $18, $0
      jal        func_80056400
       addu      $7, $19, $0
      beqz       $2, .L80056614
       addu      $2, $16, $0
      jal        func_80052540
       addu      $4, $16, $0
  .L8005660C:
      addu       $16, $0, $0
  .L80056610:
      addu       $2, $16, $0
  .L80056614:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800565B0

.globl func_80056630
.ent func_80056630
func_80056630:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L80056654
       sw        $31, 0x14($29)
      jal        func_800564F0
       nop
      jal        func_80052540
       addu      $4, $16, $0
  .L80056654:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_80056630

.globl func_80056668
.ent func_80056668
func_80056668:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      beqz       $20, .L800566F8
       sw        $16, 0x10($29)
      beqz       $18, .L80056748
       addiu     $2, $0, -0x1
      jal        func_80017780
       addu      $4, $20, $0
      addu       $19, $2, $0
      lw         $3, 0x4($18)
      lw         $2, 0x8($18)
      addu       $3, $3, $19
      addiu      $3, $3, 0x1
      slt        $3, $3, $2
      bnez       $3, .L80056724
       addu      $16, $2, $0
  .L800566C0:
      jal        func_80056FDC
       addu      $4, $16, $0
      lw         $3, 0x4($18)
      addu       $16, $2, $0
      addu       $3, $19, $3
      addiu      $3, $3, 0x1
      slt        $3, $3, $16
      beqz       $3, .L800566C0
       addu      $4, $16, $0
      jal        func_80052504
       addu      $5, $0, $0
      addu       $17, $2, $0
      bnez       $17, .L80056700
       nop
  .L800566F8:
      j          .L80056748
       addiu     $2, $0, -0x1
  .L80056700:
      lw         $5, 0x0($18)
      lw         $6, 0x8($18)
      jal        func_80013F00
       addu      $4, $17, $0
      lw         $4, 0x0($18)
      jal        func_80052540
       nop
      sw         $17, 0x0($18)
      sw         $16, 0x8($18)
  .L80056724:
      lw         $16, 0x4($18)
      lw         $4, 0x0($18)
      addu       $5, $20, $0
      addu       $4, $4, $16
      addiu      $2, $16, 0x1
      addu       $2, $2, $19
      jal        func_80017640
       sw        $2, 0x4($18)
      addu       $2, $16, $0
  .L80056748:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80056668

.globl func_80056768
.ent func_80056768
func_80056768:
      addiu      $29, $29, -0x30
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $21, 0x24($29)
      addu       $21, $7, $0
      sw         $31, 0x28($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      beqz       $17, .L80056848
       addiu     $2, $0, -0x1
      lw         $2, 0x10($17)
      lw         $4, 0x14($17)
      slt        $2, $2, $4
      bnez       $2, .L80056804
       nop
      jal        func_8005700C
       nop
      addu       $18, $2, $0
      sll        $4, $2, 4
      jal        func_80052504
       addu      $5, $0, $0
      addu       $16, $2, $0
      bnez       $16, .L800567E0
       addu      $4, $16, $0
      j          .L80056848
       addiu     $2, $0, -0x1
  .L800567E0:
      lw         $6, 0x14($17)
      lw         $5, 0xC($17)
      jal        func_80013F00
       sll       $6, $6, 4
      lw         $4, 0xC($17)
      jal        func_80052540
       nop
      sw         $16, 0xC($17)
      sw         $18, 0x14($17)
  .L80056804:
      lw         $2, 0x10($17)
      addiu      $3, $2, 0x1
      sw         $3, 0x10($17)
      lw         $3, 0xC($17)
      sll        $4, $2, 4
      addu       $3, $4, $3
      sw         $19, 0x0($3)
      lw         $3, 0xC($17)
      addu       $3, $4, $3
      sw         $20, 0x4($3)
      lw         $3, 0xC($17)
      addu       $3, $4, $3
      sw         $21, 0x8($3)
      lw         $3, 0xC($17)
      addu       $4, $4, $3
      addiu      $3, $0, -0x1
      sw         $3, 0xC($4)
  .L80056848:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80056768

.globl func_8005686C
.ent func_8005686C
func_8005686C:
      beqz       $5, .L80056888
       nop
      beqz       $4, .L80056888
       nop
      lw         $3, 0x18($4)
      bnez       $3, .L80056890
       nop
  .L80056888:
      jr         $31
       addu      $2, $0, $0
  .L80056890:
      lbu        $2, 0x0($5)
      beqz       $2, .L800568D4
       addu      $6, $0, $0
      addu       $7, $3, $0
      lbu        $3, 0x0($5)
      addiu      $5, $5, 0x1
  .L800568A8:
      sll        $2, $6, 1
      addu       $2, $2, $6
      addu       $2, $2, $3
      lbu        $3, 0x0($5)
      divu       $zero, $2, $7
      bnez       $7, .L800568C8
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800568C8:
      mfhi       $6
      bnez       $3, .L800568A8
       addiu     $5, $5, 0x1
  .L800568D4:
      lw         $3, 0x18($4)
      divu       $zero, $6, $3
      bnez       $3, .L800568E8
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800568E8:
      mfhi       $2
      jr         $31
       nop
.end func_8005686C

.globl func_800568F4
.ent func_800568F4
func_800568F4:
      addiu      $29, $29, -0x38
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $21, 0x24($29)
      addu       $21, $5, $0
      sw         $22, 0x28($29)
      addu       $22, $6, $0
      sw         $23, 0x2C($29)
      addu       $23, $7, $0
      sw         $31, 0x30($29)
      sw         $20, 0x20($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      beqz       $21, .L80056A38
       sw        $16, 0x10($29)
      beqz       $19, .L80056A3C
       addiu     $2, $0, -0x1
      lw         $2, 0x18($19)
      beqz       $2, .L80056A38
       addu      $4, $19, $0
      jal        func_8005686C
       addu      $5, $21, $0
      lw         $3, 0x18($19)
      addu       $4, $2, $0
      slt        $3, $4, $3
      beqz       $3, .L80056974
       sll       $3, $4, 3
      lw         $2, 0x1C($19)
      addu       $2, $3, $2
      lw         $4, 0x4($2)
      bnez       $4, .L8005697C
       nop
  .L80056974:
      j          .L800569E8
       addiu     $18, $0, -0x1
  .L8005697C:
      lw         $18, 0x0($2)
      bltzl      $18, .L80056A3C
       addiu     $2, $0, -0x1
      blez       $4, .L800569E8
       addu      $16, $0, $0
      addu       $20, $3, $0
  .L80056994:
      bltz       $18, .L80056A38
       sll       $17, $18, 4
      lw         $2, 0xC($19)
      lw         $3, 0x0($19)
      addu       $2, $17, $2
      lw         $5, 0x0($2)
      addu       $4, $21, $0
      jal        func_800175C0
       addu      $5, $3, $5
      beqz       $2, .L800569E8
       nop
      addiu      $16, $16, 0x1
      lw         $2, 0xC($19)
      lw         $3, 0x1C($19)
      addu       $2, $17, $2
      addu       $3, $20, $3
      lw         $3, 0x4($3)
      lw         $18, 0xC($2)
      slt        $3, $16, $3
      bnez       $3, .L80056994
       nop
  .L800569E8:
      bltz       $18, .L80056A3C
       addiu     $2, $0, -0x1
      beqz       $22, .L80056A18
       sll       $2, $18, 4
      lw         $3, 0xC($19)
      addu       $2, $2, $3
      lw         $3, 0x4($2)
      bltzl      $3, .L80056A18
       sw        $0, 0x0($22)
      lw         $2, 0x0($19)
      addu       $2, $2, $3
      sw         $2, 0x0($22)
  .L80056A18:
      beqz       $23, .L80056A30
       sll       $3, $18, 4
      lw         $2, 0xC($19)
      addu       $3, $3, $2
      lw         $2, 0x8($3)
      sw         $2, 0x0($23)
  .L80056A30:
      j          .L80056A3C
       addu      $2, $18, $0
  .L80056A38:
      addiu      $2, $0, -0x1
  .L80056A3C:
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
.end func_800568F4

.globl func_80056A68
.ent func_80056A68
func_80056A68:
      addiu      $29, $29, -0x30
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $21, 0x24($29)
      addu       $21, $7, $0
      sw         $31, 0x28($29)
      sw         $19, 0x1C($29)
      beqz       $16, .L80056B48
       sw        $18, 0x18($29)
      beqz       $17, .L80056B48
       addu      $4, $17, $0
      addu       $5, $16, $0
      addu       $6, $0, $0
      jal        func_800568F4
       addu      $7, $6, $0
      bgez       $2, .L80056BD8
       addiu     $2, $0, -0x1
      addu       $4, $17, $0
      jal        func_80056668
       addu      $5, $16, $0
      addu       $19, $2, $0
      bltz       $19, .L80056B48
       addu      $4, $17, $0
      jal        func_80056668
       addu      $5, $20, $0
      beqz       $20, .L80056AEC
       addu      $18, $2, $0
      bltz       $18, .L80056BD8
       addiu     $2, $0, -0x1
  .L80056AEC:
      addu       $4, $17, $0
      jal        func_8005686C
       addu      $5, $16, $0
      addu       $20, $2, $0
      lw         $2, 0x1C($17)
      sll        $16, $20, 3
      addu       $2, $16, $2
      lw         $4, 0x4($2)
      bnez       $4, .L80056B50
       addu      $5, $19, $0
      addu       $4, $17, $0
      addu       $6, $18, $0
      jal        func_80056768
       addu      $7, $21, $0
      lw         $3, 0x1C($17)
      addu       $4, $2, $0
      addu       $3, $16, $3
      sw         $4, 0x0($3)
      lw         $2, 0x1C($17)
      addu       $3, $16, $2
      lw         $2, 0x0($3)
      bgez       $2, .L80056BD0
       addiu     $2, $0, 0x1
  .L80056B48:
      j          .L80056BD8
       addiu     $2, $0, -0x1
  .L80056B50:
      lw         $16, 0x0($2)
      addiu      $2, $4, -0x1
      blez       $2, .L80056B84
       addu      $3, $0, $0
      lw         $5, 0xC($17)
      addu       $4, $2, $0
      sll        $2, $16, 4
  .L80056B6C:
      addu       $2, $2, $5
      lw         $16, 0xC($2)
      addiu      $3, $3, 0x1
      slt        $2, $3, $4
      bnez       $2, .L80056B6C
       sll       $2, $16, 4
  .L80056B84:
      addu       $4, $17, $0
      addu       $5, $19, $0
      addu       $6, $18, $0
      jal        func_80056768
       addu      $7, $21, $0
      addu       $4, $2, $0
      lw         $2, 0xC($17)
      sll        $3, $16, 4
      addu       $2, $3, $2
      sw         $4, 0xC($2)
      lw         $2, 0xC($17)
      addu       $3, $3, $2
      lw         $2, 0xC($3)
      bltz       $2, .L80056B48
       sll       $3, $20, 3
      lw         $2, 0x1C($17)
      addu       $3, $3, $2
      lw         $2, 0x4($3)
      addiu      $2, $2, 0x1
  .L80056BD0:
      sw         $2, 0x4($3)
      addu       $2, $4, $0
  .L80056BD8:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80056A68

.globl func_80056BFC
.ent func_80056BFC
func_80056BFC:
      addiu      $29, $29, -0x30
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $19, 0x24($29)
      addu       $19, $6, $0
      sw         $18, 0x20($29)
      sw         $31, 0x28($29)
      jal        func_80056A68
       addu      $18, $7, $0
      bgez       $2, .L80056C78
       addu      $2, $0, $0
      addu       $4, $16, $0
      addu       $5, $17, $0
      addu       $6, $0, $0
      jal        func_800568F4
       addu      $7, $6, $0
      bgezl      $2, .L80056C54
       sw        $18, 0x10($29)
      j          .L80056C78
       addiu     $2, $0, -0x1
  .L80056C54:
      addu       $4, $16, $0
      addu       $5, $2, $0
      addu       $6, $17, $0
      jal        func_80056CCC
       addu      $7, $19, $0
      addu       $4, $2, $0
      addiu      $3, $0, -0x1
      bnel       $4, $3, .L80056C78
       addiu     $2, $0, 0x1
  .L80056C78:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80056BFC

.globl func_80056C94
.ent func_80056C94
func_80056C94:
      beqz       $4, .L80056CA0
       addiu     $2, $0, -0x1
      lw         $2, 0x10($4)
  .L80056CA0:
      jr         $31
       nop
.end func_80056C94

.globl func_80056CA8
.ent func_80056CA8
func_80056CA8:
      beqz       $4, .L80056CC4
       addu      $2, $0, $0
      lw         $4, 0xC($4)
      sll        $3, $5, 4
      addu       $3, $3, $4
      jr         $31
       sw        $6, 0x8($3)
  .L80056CC4:
      jr         $31
       addiu     $2, $0, -0x1
.end func_80056CA8

.globl func_80056CCC
.ent func_80056CCC
func_80056CCC:
      addiu      $29, $29, -0x30
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $21, 0x24($29)
      addu       $21, $7, $0
      sw         $31, 0x28($29)
      sw         $20, 0x20($29)
      beqz       $17, .L80056E38
       sw        $16, 0x10($29)
      bltz       $18, .L80056F1C
       addiu     $2, $0, -0x1
      lw         $2, 0x10($17)
      slt        $2, $18, $2
      beqz       $2, .L80056F1C
       addiu     $2, $0, -0x1
      beqz       $19, .L80056F1C
       nop
      lbu        $2, 0x0($19)
      beqz       $2, .L80056E38
       addu      $4, $17, $0
      addu       $5, $19, $0
      addu       $6, $0, $0
      jal        func_800568F4
       addu      $7, $6, $0
      bltz       $2, .L80056D50
       sll       $16, $18, 4
      bne        $2, $18, .L80056F1C
       addiu     $2, $0, -0x1
      sll        $16, $18, 4
  .L80056D50:
      lw         $2, 0xC($17)
      lw         $3, 0x0($17)
      addu       $2, $16, $2
      lw         $5, 0x0($2)
      addu       $4, $17, $0
      jal        func_8005686C
       addu      $5, $3, $5
      lw         $3, 0x1C($17)
      sll        $2, $2, 3
      addu       $2, $2, $3
      lw         $3, 0x4($2)
      addiu      $3, $3, -0x1
      sw         $3, 0x4($2)
      lw         $2, 0xC($17)
      addu       $16, $16, $2
      lw         $2, 0x10($17)
      lw         $5, 0xC($16)
      blez       $2, .L80056DC8
       addu      $4, $0, $0
  .L80056D9C:
      lw         $2, 0xC($17)
      sll        $3, $4, 4
      addu       $3, $3, $2
      lw         $2, 0xC($3)
      beql       $2, $18, .L80056DB4
       sw        $5, 0xC($3)
  .L80056DB4:
      lw         $2, 0x10($17)
      addiu      $4, $4, 0x1
      slt        $2, $4, $2
      bnez       $2, .L80056D9C
       nop
  .L80056DC8:
      lw         $2, 0x18($17)
      blez       $2, .L80056E00
       addu      $4, $0, $0
  .L80056DD4:
      lw         $2, 0x1C($17)
      sll        $3, $4, 3
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      beql       $2, $18, .L80056DEC
       sw        $5, 0x0($3)
  .L80056DEC:
      lw         $2, 0x18($17)
      addiu      $4, $4, 0x1
      slt        $2, $4, $2
      bnez       $2, .L80056DD4
       nop
  .L80056E00:
      addu       $4, $17, $0
      jal        func_80056668
       addu      $5, $19, $0
      beqz       $19, .L80056E1C
       addu      $20, $2, $0
      bltz       $20, .L80056F1C
       addiu     $2, $0, -0x1
  .L80056E1C:
      addu       $4, $17, $0
      jal        func_80056668
       addu      $5, $21, $0
      beqz       $21, .L80056E40
       addu      $16, $2, $0
      bgez       $16, .L80056E44
       addu      $4, $17, $0
  .L80056E38:
      j          .L80056F1C
       addiu     $2, $0, -0x1
  .L80056E40:
      addu       $4, $17, $0
  .L80056E44:
      jal        func_8005686C
       addu      $5, $19, $0
      addu       $7, $2, $0
      lw         $2, 0x1C($17)
      sll        $3, $7, 3
      addu       $2, $3, $2
      lw         $5, 0x4($2)
      bnez       $5, .L80056E80
       nop
      sw         $18, 0x0($2)
      lw         $2, 0x1C($17)
      addu       $2, $3, $2
      addiu      $3, $0, 0x1
      j          .L80056EDC
       sw        $3, 0x4($2)
  .L80056E80:
      lw         $4, 0x0($2)
      addiu      $2, $5, -0x1
      blez       $2, .L80056EB4
       addu      $3, $0, $0
      lw         $6, 0xC($17)
      addu       $5, $2, $0
      sll        $2, $4, 4
  .L80056E9C:
      addu       $2, $2, $6
      lw         $4, 0xC($2)
      addiu      $3, $3, 0x1
      slt        $2, $3, $5
      bnez       $2, .L80056E9C
       sll       $2, $4, 4
  .L80056EB4:
      lw         $3, 0xC($17)
      sll        $2, $4, 4
      addu       $2, $2, $3
      sw         $18, 0xC($2)
      lw         $2, 0x1C($17)
      sll        $3, $7, 3
      addu       $3, $3, $2
      lw         $2, 0x4($3)
      addiu      $2, $2, 0x1
      sw         $2, 0x4($3)
  .L80056EDC:
      lw         $2, 0xC($17)
      sll        $4, $18, 4
      addu       $2, $4, $2
      sw         $20, 0x0($2)
      lw         $2, 0xC($17)
      addu       $2, $4, $2
      sw         $16, 0x4($2)
      lw         $2, 0xC($17)
      lw         $3, 0x40($29)
      addu       $2, $4, $2
      sw         $3, 0x8($2)
      lw         $3, 0xC($17)
      addu       $2, $0, $0
      addu       $4, $4, $3
      addiu      $3, $0, -0x1
      sw         $3, 0xC($4)
  .L80056F1C:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80056CCC

.globl func_80056F40
.ent func_80056F40
func_80056F40:
      lw         $8, 0x10($29)
      bnez       $4, .L80056F54
       nop
  .L80056F4C:
      jr         $31
       addiu     $2, $0, -0x1
  .L80056F54:
      bltz       $5, .L80056F4C
       nop
      lw         $2, 0x10($4)
      slt        $2, $5, $2
      beqz       $2, .L80056F4C
       nop
      beqz       $6, .L80056F94
       sll       $2, $5, 4
      lw         $3, 0xC($4)
      addu       $2, $2, $3
      lw         $3, 0x0($2)
      bltzl      $3, .L80056F94
       sw        $0, 0x0($6)
      lw         $2, 0x0($4)
      addu       $2, $2, $3
      sw         $2, 0x0($6)
  .L80056F94:
      beqz       $7, .L80056FBC
       sll       $2, $5, 4
      lw         $3, 0xC($4)
      addu       $2, $2, $3
      lw         $3, 0x4($2)
      bltzl      $3, .L80056FBC
       sw        $0, 0x0($7)
      lw         $2, 0x0($4)
      addu       $2, $2, $3
      sw         $2, 0x0($7)
  .L80056FBC:
      beqz       $8, .L80056FD4
       sll       $3, $5, 4
      lw         $2, 0xC($4)
      addu       $3, $3, $2
      lw         $2, 0x8($3)
      sw         $2, 0x0($8)
  .L80056FD4:
      jr         $31
       addu      $2, $0, $0
.end func_80056F40

.globl func_80056FDC
.ent func_80056FDC
func_80056FDC:
      slti       $2, $4, 0x81
      bnez       $2, .L80057004
       addiu     $3, $0, 0x100
      slti       $2, $4, 0x101
      bnez       $2, .L80057004
       addiu     $3, $0, 0x200
      slti       $2, $4, 0x201
      bnez       $2, .L80057004
       addiu     $3, $0, 0x400
      addu       $3, $4, $3
  .L80057004:
      jr         $31
       addu      $2, $3, $0
.end func_80056FDC

.globl func_8005700C
.ent func_8005700C
func_8005700C:
      slti       $2, $4, 0x9
      bnez       $2, .L80057034
       addiu     $3, $0, 0x10
      slti       $2, $4, 0x11
      bnez       $2, .L80057034
       addiu     $3, $0, 0x20
      slti       $2, $4, 0x21
      bnez       $2, .L80057034
       addiu     $3, $0, 0x40
      addiu      $3, $4, 0x10
  .L80057034:
      jr         $31
       addu      $2, $3, $0
.end func_8005700C

.globl func_8005703C
.ent func_8005703C
func_8005703C:
      addiu      $6, $0, 0x20
.end func_8005703C

.globl func_80057040
.ent func_80057040
func_80057040:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $31, 0x20($29)
      bnez       $4, .L80057060
       sw        $17, 0x1C($29)
      lui        $2, %hi(D_800EC604)
      addiu      $4, $2, %lo(D_800EC604)
  .L80057060:
      addiu      $5, $0, 0x1
      jal        func_800570AC
       addiu     $6, $29, 0x10
      addu       $17, $2, $0
      addu       $4, $17, $0
      addu       $5, $16, $0
      jal        func_80057334
       addiu     $6, $0, 0x1F
      lbu        $3, 0x10($29)
      beqz       $3, .L80057094
       addu      $16, $2, $0
      jal        func_80052540
       addu      $4, $17, $0
  .L80057094:
      addu       $2, $16, $0
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80057040

.globl func_800570AC
.ent func_800570AC
func_800570AC:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $31, 0x24($29)
      sw         $18, 0x18($29)
      jal        func_80017780
       sw        $16, 0x10($29)
      addu       $18, $2, $0
      beql       $18, $0, .L80057114
       sb        $0, 0x0($20)
      lbu        $4, 0x0($17)
      jal        func_800126C0
       nop
      bnez       $2, .L8005711C
       addu      $16, $17, $18
      addu       $2, $18, $17
      lbu        $4, -0x1($2)
      jal        func_800126C0
       nop
      bnez       $2, .L80057120
       sltu      $2, $16, $17
      sb         $0, 0x0($20)
  .L80057114:
      j          .L800571D0
       addu      $2, $17, $0
  .L8005711C:
      sltu       $2, $16, $17
  .L80057120:
      bnez       $2, .L8005716C
       sltu      $2, $17, $16
      addiu      $16, $16, -0x1
  .L8005712C:
      lbu        $4, 0x0($16)
      jal        func_800126C0
       nop
      beqz       $2, .L80057168
       sltu      $2, $16, $17
      beql       $2, $0, .L8005712C
       addiu     $16, $16, -0x1
      j          .L8005716C
       sltu      $2, $17, $16
  .L80057150:
      lbu        $4, 0x0($17)
      jal        func_800126C0
       nop
      beqz       $2, .L80057174
       subu      $4, $16, $17
      addiu      $17, $17, 0x1
  .L80057168:
      sltu       $2, $17, $16
  .L8005716C:
      bnez       $2, .L80057150
       subu      $4, $16, $17
  .L80057174:
      andi       $2, $19, 0xFF
      beqz       $2, .L8005718C
       addiu     $18, $4, 0x1
      addiu      $4, $4, 0x2
      j          .L80057194
       addiu     $5, $0, 0x2
  .L8005718C:
      addiu      $4, $4, 0x2
      addu       $5, $0, $0
  .L80057194:
      jal        func_800524E8
       nop
      addu       $16, $2, $0
      beqz       $16, .L800571D0
       addu      $2, $16, $0
      blez       $18, .L800571BC
       addu      $4, $16, $0
      addu       $5, $17, $0
      jal        func_80013F00
       addu      $6, $18, $0
  .L800571BC:
      addu       $2, $16, $18
      sb         $0, 0x0($2)
      addiu      $2, $0, 0x1
      sb         $2, 0x0($20)
      addu       $2, $16, $0
  .L800571D0:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800570AC

.globl func_800571F0
.ent func_800571F0
func_800571F0:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      sw         $31, 0x18($29)
      jal        func_80017780
       addu      $16, $5, $0
      addu       $5, $17, $0
      addu       $4, $5, $0
      sw         $0, 0x0($16)
      sw         $0, 0x4($16)
      sw         $0, 0x8($16)
      sw         $0, 0xC($16)
      sw         $0, 0x10($16)
      lbu        $3, 0x0($5)
      beqz       $3, .L8005727C
       addu      $6, $2, $0
      addiu      $8, $0, 0x3A
      addiu      $7, $0, 0x2F
      addiu      $3, $0, 0x23
      lbu        $2, 0x0($4)
  .L80057244:
      bne        $2, $8, .L8005725C
       nop
      addiu      $5, $4, 0x1
      sb         $0, 0x0($4)
      sw         $17, 0x0($16)
      lbu        $2, 0x0($4)
  .L8005725C:
      beq        $2, $7, .L8005727C
       nop
      beq        $2, $3, .L8005727C
       nop
      addiu      $4, $4, 0x1
      lbu        $2, 0x0($4)
      bnez       $2, .L80057244
       nop
  .L8005727C:
      blez       $6, .L800572BC
       addu      $2, $17, $6
      addiu      $4, $2, -0x1
      sltu       $2, $4, $17
      bnez       $2, .L800572BC
       addiu     $3, $0, 0x23
  .L80057294:
      lbu        $2, 0x0($4)
      bnel       $2, $3, .L800572B0
       addiu     $4, $4, -0x1
      addiu      $2, $4, 0x1
      sw         $2, 0x10($16)
      sb         $0, 0x0($4)
      addiu      $4, $4, -0x1
  .L800572B0:
      sltu       $2, $4, $17
      beqz       $2, .L80057294
       nop
  .L800572BC:
      lbu        $3, 0x0($5)
      addiu      $2, $0, 0x2F
      bne        $3, $2, .L80057310
       nop
      lbu        $2, 0x1($5)
      bne        $2, $3, .L80057308
       addiu     $2, $5, 0x1
      addiu      $2, $5, 0x2
      sw         $2, 0x4($16)
      sb         $0, 0x0($5)
      lw         $4, 0x4($16)
      jal        func_80017580
       addiu     $5, $0, 0x2F
      addu       $4, $2, $0
      beqz       $4, .L80057320
       addiu     $2, $4, 0x1
      sb         $0, 0x0($4)
      j          .L80057320
       sw        $2, 0x8($16)
  .L80057308:
      j          .L80057320
       sw        $2, 0x8($16)
  .L80057310:
      beqz       $3, .L8005731C
       addu      $2, $0, $0
      addu       $2, $5, $0
  .L8005731C:
      sw         $2, 0xC($16)
  .L80057320:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800571F0

.globl func_80057334
.ent func_80057334
func_80057334:
      addiu      $29, $29, -0x60
      sw         $18, 0x48($29)
      addu       $18, $4, $0
      sw         $19, 0x4C($29)
      addu       $19, $5, $0
      sw         $21, 0x54($29)
      addu       $21, $6, $0
      sw         $16, 0x40($29)
      addu       $16, $0, $0
      sw         $22, 0x58($29)
      addu       $22, $16, $0
      sw         $17, 0x44($29)
      addu       $17, $16, $0
      sw         $31, 0x5C($29)
      jal        func_80017780
       sw        $20, 0x50($29)
      sltiu      $2, $2, 0x400
      bnez       $2, .L800573B4
       addiu     $4, $0, 0x401
      addiu      $4, $0, 0x400
      jal        func_800524E8
       addu      $5, $16, $0
      addu       $16, $2, $0
      beqz       $16, .L80057800
       addu      $5, $18, $0
      addu       $4, $16, $0
      jal        func_80052310
       addiu     $6, $0, 0x3FE
      addiu      $2, $0, 0x2F
      sb         $2, 0x3FE($16)
      j          .L80057800
       sb        $0, 0x3FF($16)
  .L800573B4:
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $20, $2, $0
      beqz       $20, .L800577E8
       addiu     $4, $0, 0x401
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $22, $2, $0
      beqz       $22, .L800577E8
       addiu     $4, $0, 0x801
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      beqz       $17, .L800577E8
       addu      $4, $20, $0
      addu       $5, $18, $0
      jal        func_80052310
       addiu     $6, $0, 0x400
      addu       $4, $22, $0
      addu       $5, $19, $0
      addiu      $6, $0, 0x400
      jal        func_80052310
       sb        $0, 0x400($20)
      addu       $4, $20, $0
      addiu      $5, $29, 0x10
      jal        func_800571F0
       sb        $0, 0x400($22)
      addu       $4, $22, $0
      jal        func_800571F0
       addiu     $5, $29, 0x28
      lw         $2, 0x10($29)
      beql       $2, $0, .L80057484
       sb        $0, 0x0($17)
      lw         $2, 0x14($29)
      beql       $2, $0, .L80057484
       sb        $0, 0x0($17)
      lw         $2, 0x18($29)
      bnel       $2, $0, .L80057484
       sb        $0, 0x0($17)
      addu       $4, $20, $0
      addu       $5, $18, $0
      jal        func_80052310
       addiu     $6, $0, 0x3FF
      sb         $0, 0x400($20)
      addu       $4, $20, $0
      lui        $5, %hi(D_800EC614)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800EC614)
      addu       $4, $20, $0
      jal        func_800571F0
       addiu     $5, $29, 0x10
      sb         $0, 0x0($17)
  .L80057484:
      lw         $18, 0x10($29)
      bnez       $18, .L80057494
       andi      $2, $21, 0x10
      lw         $18, 0x28($29)
  .L80057494:
      beqz       $2, .L800574C4
       nop
      beqz       $18, .L800574C4
       addu      $4, $17, $0
      jal        func_80017500
       addu      $5, $18, $0
      andi       $2, $21, 0x1
      beqz       $2, .L800574C4
       addu      $4, $17, $0
      lui        $5, %hi(D_800EC60C)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800EC60C)
  .L800574C4:
      lw         $4, 0x10($29)
      beqz       $4, .L800574FC
       andi      $2, $21, 0x8
      lw         $5, 0x28($29)
      beqz       $5, .L800574FC
       nop
      jal        func_800175C0
       nop
      beqz       $2, .L800574FC
       andi      $2, $21, 0x8
      sw         $0, 0x2C($29)
      sw         $0, 0x30($29)
      sw         $0, 0x34($29)
      sw         $0, 0x38($29)
  .L800574FC:
      beqz       $2, .L80057604
       nop
      lw         $2, 0x14($29)
      bnez       $2, .L8005751C
       nop
      lw         $2, 0x2C($29)
      beqz       $2, .L80057604
       nop
  .L8005751C:
      jal        func_80017780
       addu      $4, $17, $0
      addu       $19, $17, $2
      andi       $2, $21, 0x1
      beqz       $2, .L80057540
       addu      $4, $17, $0
      lui        $5, %hi(D_800EC618)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800EC618)
  .L80057540:
      lw         $5, 0x14($29)
      bnez       $5, .L80057550
       nop
      lw         $5, 0x2C($29)
  .L80057550:
      jal        func_80017500
       addu      $4, $17, $0
      addu       $4, $19, $0
      jal        func_80017580
       addiu     $5, $0, 0x3A
      addu       $16, $2, $0
      beqz       $16, .L800575D8
       nop
      beqz       $18, .L800575D0
       addu      $4, $18, $0
      lui        $5, %hi(D_800EC644)
      jal        func_800175C0
       addiu     $5, $5, %lo(D_800EC644)
      bnez       $2, .L800575A4
       addu      $4, $18, $0
      addu       $4, $16, $0
      lui        $5, %hi(D_800EC914)
      jal        func_800175C0
       addiu     $5, $5, %lo(D_800EC914)
      beqz       $2, .L800575CC
       addu      $4, $18, $0
  .L800575A4:
      lui        $5, %hi(D_800EC900)
      jal        func_800175C0
       addiu     $5, $5, %lo(D_800EC900)
      bnez       $2, .L800575D0
       addu      $4, $16, $0
      lui        $5, %hi(D_800EC918)
      jal        func_800175C0
       addiu     $5, $5, %lo(D_800EC918)
      bnez       $2, .L800575D0
       nop
  .L800575CC:
      sb         $0, 0x0($16)
  .L800575D0:
      bnez       $16, .L800575E4
       nop
  .L800575D8:
      jal        func_80017780
       addu      $4, $19, $0
      addu       $16, $19, $2
  .L800575E4:
      jal        func_80017780
       addu      $4, $16, $0
      beqz       $2, .L80057604
       addiu     $2, $0, 0x2E
      addiu      $16, $16, -0x1
      lbu        $3, 0x0($16)
      beql       $3, $2, .L80057604
       sb        $0, 0x0($16)
  .L80057604:
      lw         $4, 0x14($29)
      beqz       $4, .L80057638
       andi      $2, $21, 0x4
      lw         $5, 0x2C($29)
      beqz       $5, .L80057638
       nop
      jal        func_800175C0
       nop
      beqz       $2, .L80057638
       andi      $2, $21, 0x4
      sw         $0, 0x30($29)
      sw         $0, 0x34($29)
      sw         $0, 0x38($29)
  .L80057638:
      beqz       $2, .L8005778C
       andi      $2, $21, 0x2
      lw         $2, 0x18($29)
      beqz       $2, .L8005766C
       andi      $2, $21, 0x1
      beqz       $2, .L80057660
       addu      $4, $17, $0
      lui        $5, %hi(D_800EC614)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800EC614)
  .L80057660:
      lw         $5, 0x18($29)
      j          .L80057780
       addu      $4, $17, $0
  .L8005766C:
      lw         $2, 0x30($29)
      beqz       $2, .L80057700
       addu      $4, $17, $0
      lui        $5, %hi(D_800EC614)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800EC614)
      lw         $5, 0x30($29)
      jal        func_80017500
       addu      $4, $17, $0
      lw         $2, 0x1C($29)
      beqz       $2, .L80057788
       addu      $4, $17, $0
      jal        func_80017580
       addiu     $5, $0, 0x3F
      addu       $16, $2, $0
      bnez       $16, .L800576C0
       nop
      jal        func_80017780
       addu      $4, $17, $0
      addu       $2, $17, $2
      addiu      $16, $2, -0x1
  .L800576C0:
      lbu        $3, 0x0($16)
      addiu      $2, $0, 0x2F
      beq        $3, $2, .L800576E0
       addu      $3, $2, $0
      addiu      $16, $16, -0x1
  .L800576D4:
      lbu        $2, 0x0($16)
      bnel       $2, $3, .L800576D4
       addiu     $16, $16, -0x1
  .L800576E0:
      sb         $0, 0x1($16)
      lw         $5, 0x1C($29)
      jal        func_80017500
       addu      $4, $17, $0
      jal        func_800578D8
       addu      $4, $17, $0
      j          .L8005778C
       andi      $2, $21, 0x2
  .L80057700:
      lw         $2, 0x1C($29)
      beqz       $2, .L80057768
       andi      $2, $21, 0x8
      beqz       $2, .L8005775C
       nop
      lw         $2, 0x14($29)
      bnez       $2, .L8005772C
       andi      $2, $21, 0x1
      lw         $2, 0x2C($29)
      beqz       $2, .L8005775C
       andi      $2, $21, 0x1
  .L8005772C:
      beqz       $2, .L8005775C
       nop
      jal        func_80017780
       addu      $4, $17, $0
      addu       $2, $2, $17
      lbu        $3, -0x1($2)
      addiu      $2, $0, 0x2F
      beq        $3, $2, .L8005775C
       addu      $4, $17, $0
      lui        $5, %hi(D_800EC614)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800EC614)
  .L8005775C:
      lw         $5, 0x1C($29)
      j          .L80057780
       addu      $4, $17, $0
  .L80057768:
      lw         $5, 0x34($29)
      bnez       $5, .L80057780
       addu      $4, $17, $0
      addu       $4, $17, $0
      lui        $5, %hi(D_800EC614)
      addiu      $5, $5, %lo(D_800EC614)
  .L80057780:
      jal        func_80017500
       nop
  .L80057788:
      andi       $2, $21, 0x2
  .L8005778C:
      beql       $2, $0, .L800577DC
       sb        $0, 0x400($17)
      lw         $2, 0x20($29)
      bnez       $2, .L800577AC
       andi      $2, $21, 0x1
      lw         $2, 0x38($29)
      beqz       $2, .L800577D8
       andi      $2, $21, 0x1
  .L800577AC:
      beqz       $2, .L800577C0
       addu      $4, $17, $0
      lui        $5, %hi(D_800EC91C)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800EC91C)
  .L800577C0:
      lw         $5, 0x20($29)
      bnez       $5, .L800577D0
       nop
      lw         $5, 0x38($29)
  .L800577D0:
      jal        func_80017500
       addu      $4, $17, $0
  .L800577D8:
      sb         $0, 0x400($17)
  .L800577DC:
      jal        func_800523C0
       addu      $4, $17, $0
      addu       $16, $2, $0
  .L800577E8:
      jal        func_80052540
       addu      $4, $17, $0
      jal        func_80052540
       addu      $4, $22, $0
      jal        func_80052540
       addu      $4, $20, $0
  .L80057800:
      addu       $2, $16, $0
      lw         $31, 0x5C($29)
      lw         $22, 0x58($29)
      lw         $21, 0x54($29)
      lw         $20, 0x50($29)
      lw         $19, 0x4C($29)
      lw         $18, 0x48($29)
      lw         $17, 0x44($29)
      lw         $16, 0x40($29)
      jr         $31
       addiu     $29, $29, 0x60
.end func_80057334

.globl func_8005782C
.ent func_8005782C
func_8005782C:
      addiu      $29, $29, -0xA8
      sw         $19, 0x9C($29)
      addu       $19, $4, $0
      sw         $17, 0x94($29)
      addu       $17, $5, $0
      sw         $18, 0x98($29)
      addu       $18, $0, $0
      sw         $31, 0xA0($29)
      beqz       $19, .L800578BC
       sw        $16, 0x90($29)
      beqz       $17, .L800578BC
       nop
      jal        func_80017780
       addu      $4, $17, $0
      addu       $4, $2, $0
      sltiu      $2, $4, 0x7F
      bnez       $2, .L80057888
       addiu     $16, $29, 0x10
      addiu      $4, $4, 0x1
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $16, $2, $0
      addiu      $18, $0, 0x1
  .L80057888:
      beqz       $16, .L800578BC
       nop
      addu       $4, $16, $0
      jal        func_80017640
       addu      $5, $17, $0
      addu       $4, $19, $0
      jal        func_80017640
       addu      $5, $16, $0
      andi       $2, $18, 0xFF
      beqz       $2, .L800578BC
       nop
      jal        func_80052540
       addu      $4, $16, $0
  .L800578BC:
      lw         $31, 0xA0($29)
      lw         $19, 0x9C($29)
      lw         $18, 0x98($29)
      lw         $17, 0x94($29)
      lw         $16, 0x90($29)
      jr         $31
       addiu     $29, $29, 0xA8
.end func_8005782C

.globl func_800578D8
.ent func_800578D8
func_800578D8:
      addiu      $29, $29, -0x30
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $17, $0
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      beqz       $17, .L80057A68
       sw        $16, 0x10($29)
  .L80057904:
      lbu        $2, 0x0($17)
      addiu      $2, $2, -0x2E
      sltiu      $2, $2, 0x2
      bnel       $2, $0, .L80057904
       addiu     $17, $17, 0x1
      lbu        $2, 0x0($17)
      beqz       $2, .L80057A68
       addiu     $20, $0, 0x2F
      addiu      $21, $0, 0x2E
  .L80057928:
      bnel       $2, $20, .L80057A5C
       addiu     $17, $17, 0x1
      lbu        $2, 0x1($17)
      bnel       $2, $21, .L80057A5C
       addiu     $17, $17, 0x1
      lbu        $2, 0x2($17)
      bne        $2, $21, .L80057A2C
       nop
      lbu        $2, 0x3($17)
      beq        $2, $20, .L8005795C
       addiu     $16, $17, -0x1
      bnez       $2, .L80057A2C
       nop
  .L8005795C:
      sltu       $2, $16, $18
      bnez       $2, .L80057984
       nop
  .L80057968:
      lbu        $2, 0x0($16)
      beq        $2, $20, .L80057994
       addu      $4, $16, $0
      addiu      $16, $16, -0x1
      sltu       $2, $16, $18
      beqz       $2, .L80057968
       nop
  .L80057984:
      lbu        $2, 0x0($16)
      bnel       $2, $20, .L80057A5C
       addiu     $17, $17, 0x1
      addu       $4, $16, $0
  .L80057994:
      lui        $5, %hi(D_800EC920)
      addiu      $5, $5, %lo(D_800EC920)
      jal        func_800177C0
       addiu     $6, $0, 0x4
      beqz       $2, .L800579F0
       addiu     $19, $16, -0x1
      sltu       $2, $18, $19
      beqz       $2, .L800579C4
       addu      $4, $16, $0
      lbu        $2, -0x1($16)
      beq        $2, $20, .L800579F0
       nop
  .L800579C4:
      jal        func_8005782C
       addiu     $5, $17, 0x3
      lbu        $2, 0x0($18)
      bnez       $2, .L80057A58
       addu      $17, $19, $0
      addu       $4, $18, $0
      lui        $5, %hi(D_800EC614)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800EC614)
      j          .L80057A58
       addu      $17, $19, $0
  .L800579F0:
      lbu        $2, 0x0($16)
      bnel       $2, $20, .L80057A5C
       addiu     $17, $17, 0x1
      addiu      $2, $16, -0x1
      sltu       $2, $18, $2
      beql       $2, $0, .L80057A5C
       addiu     $17, $17, 0x1
      lbu        $2, -0x1($16)
      bnel       $2, $20, .L80057A5C
       addiu     $17, $17, 0x1
      addu       $4, $17, $0
      jal        func_8005782C
       addiu     $5, $4, 0x3
      j          .L80057A58
       addu      $17, $18, $0
  .L80057A2C:
      lbu        $2, 0x1($17)
      bnel       $2, $21, .L80057A5C
       addiu     $17, $17, 0x1
      lbu        $2, 0x2($17)
      beq        $2, $20, .L80057A50
       addu      $4, $17, $0
      bnel       $2, $0, .L80057A5C
       addiu     $17, $17, 0x1
      addu       $4, $17, $0
  .L80057A50:
      jal        func_8005782C
       addiu     $5, $17, 0x2
  .L80057A58:
      addiu      $17, $17, 0x1
  .L80057A5C:
      lbu        $2, 0x0($17)
      bnez       $2, .L80057928
       nop
  .L80057A68:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800578D8

.globl func_80057A8C
.ent func_80057A8C
func_80057A8C:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      addu       $5, $17, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      lui        $2, %hi(D_800ED8E0)
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      lbu        $3, 0x0($4)
      beqz       $3, .L80057B18
       addiu     $19, $2, %lo(D_800ED8E0)
      lui        $2, %hi(D_800ED880)
      addiu      $7, $2, %lo(D_800ED880)
      andi       $6, $18, 0xFF
      addiu      $2, $3, -0x20
  .L80057ADC:
      sltiu      $2, $2, 0x60
      beqz       $2, .L80057B00
       nop
      lbu        $2, 0x0($4)
      addu       $2, $2, $7
      lbu        $2, -0x20($2)
      and        $2, $2, $20
      bnel       $2, $0, .L80057B0C
       addiu     $4, $4, 0x1
  .L80057B00:
      bnel       $3, $6, .L80057B08
       addiu     $5, $5, 0x1
  .L80057B08:
      addiu      $4, $4, 0x1
  .L80057B0C:
      lbu        $3, 0x0($4)
      bnez       $3, .L80057ADC
       addiu     $2, $3, -0x20
  .L80057B18:
      subu       $4, $4, $16
      addu       $4, $4, $5
      addu       $4, $4, $5
      addiu      $4, $4, 0x1
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $7, $2, $0
      beqz       $7, .L80057BD4
       addu      $2, $17, $0
      addu       $4, $16, $0
      lbu        $5, 0x0($16)
      beqz       $5, .L80057BC8
       addu      $3, $7, $0
      lui        $2, %hi(D_800ED880)
      addiu      $9, $2, %lo(D_800ED880)
      andi       $6, $18, 0xFF
      addiu      $8, $0, 0x25
  .L80057B5C:
      addiu      $2, $5, -0x20
      sltiu      $2, $2, 0x60
      beqz       $2, .L80057B7C
       addu      $2, $5, $9
      lbu        $2, -0x20($2)
      and        $2, $2, $20
      bnez       $2, .L80057BB0
       nop
  .L80057B7C:
      andi       $2, $5, 0xFF
      beq        $2, $6, .L80057BB0
       srl       $2, $2, 4
      addu       $2, $19, $2
      sb         $8, 0x0($3)
      lbu        $2, 0x0($2)
      addiu      $3, $3, 0x1
      sb         $2, 0x0($3)
      andi       $2, $5, 0xF
      addu       $2, $19, $2
      lbu        $2, 0x0($2)
      j          .L80057BB4
.end func_80057A8C

.globl func_80057BAC
.ent func_80057BAC
func_80057BAC:
      addiu      $3, $3, 0x1
  .L80057BB0:
      lbu        $2, 0x0($4)
  .L80057BB4:
      sb         $2, 0x0($3)
      addiu      $4, $4, 0x1
      lbu        $5, 0x0($4)
      bnez       $5, .L80057B5C
       addiu     $3, $3, 0x1
  .L80057BC8:
      sb         $0, 0x0($3)
      addu       $17, $7, $0
      addu       $2, $17, $0
  .L80057BD4:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80057BAC

.globl func_80057BF4
.ent func_80057BF4
func_80057BF4:
      addiu      $2, $4, -0x30
      andi       $3, $2, 0xFF
      sltiu      $2, $3, 0xA
      beqz       $2, .L80057C10
       addiu     $2, $4, -0x41
      jr         $31
       addu      $2, $3, $0
  .L80057C10:
      andi       $2, $2, 0xFF
      sltiu      $2, $2, 0x6
      beql       $2, $0, .L80057C2C
       addiu     $2, $4, 0xA9
      addiu      $2, $4, 0xC9
      jr         $31
       andi      $2, $2, 0xFF
  .L80057C2C:
      jr         $31
       andi      $2, $2, 0xFF
.end func_80057BF4

.globl func_80057C34
.ent func_80057C34
func_80057C34:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $18, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      lbu        $2, 0x0($18)
      beqz       $2, .L80057CCC
       addu      $17, $18, $0
      addiu      $19, $0, 0x25
  .L80057C64:
      lbu        $2, 0x0($16)
      bnel       $2, $19, .L80057CBC
       sb        $2, 0x0($17)
      addiu      $16, $16, 0x1
      lbu        $2, 0x0($16)
      beqz       $2, .L80057CC4
       addu      $4, $2, $0
      jal        func_80057BF4
       addiu     $16, $16, 0x1
      andi       $2, $2, 0xFF
      sll        $2, $2, 4
      sb         $2, 0x0($17)
      lbu        $2, 0x0($16)
      beqz       $2, .L80057CC4
       nop
      jal        func_80057BF4
       addu      $4, $2, $0
      lbu        $3, 0x0($17)
      addiu      $16, $16, 0x1
      addu       $3, $3, $2
      j          .L80057CC0
       sb        $3, 0x0($17)
  .L80057CBC:
      addiu      $16, $16, 0x1
  .L80057CC0:
      lbu        $2, 0x0($16)
  .L80057CC4:
      bnez       $2, .L80057C64
       addiu     $17, $17, 0x1
  .L80057CCC:
      addu       $2, $18, $0
      sb         $0, 0x0($17)
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80057C34

.globl func_80057CF0
.ent func_80057CF0
func_80057CF0:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lbu        $2, 0x0($16)
      beqz       $2, .L80057D60
       addu      $2, $0, $0
      jal        func_80017780
       addu      $4, $16, $0
      addiu      $2, $2, -0x1
      addu       $3, $16, $2
      sltu       $2, $3, $16
      bnez       $2, .L80057D60
       addu      $2, $0, $0
      addiu      $6, $0, 0x5C
      addiu      $5, $0, 0x2F
      addiu      $4, $0, 0x2E
  .L80057D34:
      lbu        $2, 0x0($3)
      beql       $2, $6, .L80057D60
       addu      $2, $0, $0
      beql       $2, $5, .L80057D60
  .L80057D44:
       addu      $2, $0, $0
      beq        $2, $4, .L80057D60
       addu      $2, $3, $0
      addiu      $3, $3, -0x1
      sltu       $2, $3, $16
      beqz       $2, .L80057D34
       addu      $2, $0, $0
  .L80057D60:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80057CF0

.globl func_80057D70
.ent func_80057D70
func_80057D70:
      lbu        $2, 0x0($4)
      bnez       $2, .L80057D44
       nop
      blez       $6, .L80057DBC
.end func_80057D70

.globl func_80057D80
.ent func_80057D80
func_80057D80:
      addiu      $29, $29, -0x30
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $20, 0x28($29)
      addu       $20, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $16, 0x18($29)
      addu       $16, $20, $0
      sw         $31, 0x2C($29)
      bnez       $19, .L80057DB8
       sw        $18, 0x20($29)
  .L80057DB0:
      j          .L80057E34
       addu      $2, $0, $0
  .L80057DB8:
      andi       $16, $16, 0xFF
  .L80057DBC:
      addu       $4, $16, $0
      addu       $5, $0, $0
      jal        func_800581F4
       andi      $6, $7, 0xFF
      addu       $4, $16, $0
      addu       $18, $2, $0
      jal        func_80058240
       andi      $5, $18, 0xFFFF
      addu       $4, $19, $0
      addiu      $16, $2, 0x18
      addu       $5, $16, $0
      jal        func_80057F38
       addiu     $6, $29, 0x10
      andi       $2, $2, 0xFF
      bnez       $2, .L80057E0C
       nop
      bnel       $17, $0, .L80057DB0
       sw        $0, 0x0($17)
      j          .L80057E34
       addu      $2, $0, $0
  .L80057E0C:
      bnel       $17, $0, .L80057E14
       sw        $16, 0x0($17)
  .L80057E14:
      lw         $2, 0x10($29)
      sb         $20, 0x10($2)
      lw         $2, 0x10($29)
      sh         $18, 0x0($2)
      lw         $3, 0x8($19)
      addiu      $3, $3, 0x1
      sw         $3, 0x8($19)
      sw         $3, 0x4($2)
  .L80057E34:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80057D80

.globl func_80057E54
.ent func_80057E54
func_80057E54:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      addiu      $4, $0, 0x608
      jal        func_80052504
       addu      $5, $0, $0
      addu       $3, $2, $0
      beqz       $3, .L80057E80
       addiu     $2, $3, 0x8
      sw         $2, 0x4($3)
      j          .L80057E84
       addu      $2, $3, $0
  .L80057E80:
      addu       $2, $0, $0
  .L80057E84:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80057E54

.globl func_80057E90
.ent func_80057E90
func_80057E90:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      beqz       $4, .L80057EB4
       sw        $16, 0x10($29)
      lw         $16, 0x0($4)
      jal        func_80052540
       nop
      j          .L80057EB8
       addu      $2, $16, $0
  .L80057EB4:
      addu       $2, $0, $0
  .L80057EB8:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80057E90

.globl func_80057EC8
.ent func_80057EC8
func_80057EC8:
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $16, 0xC($4)
      beqz       $16, .L80057F04
       addu      $17, $5, $0
  .L80057EE4:
      jal        func_80057F1C
       addu      $4, $16, $0
      sltu       $2, $2, $17
      beqz       $2, .L80057F08
       addu      $2, $16, $0
      lw         $16, 0x0($16)
      bnez       $16, .L80057EE4
       nop
  .L80057F04:
      addu       $2, $16, $0
  .L80057F08:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80057EC8

.globl func_80057F1C
.ent func_80057F1C
func_80057F1C:
      beqz       $4, .L80057F30
       addiu     $2, $4, 0x608
      lw         $3, 0x4($4)
      jr         $31
       subu      $2, $2, $3
  .L80057F30:
      jr         $31
       addu      $2, $0, $0
.end func_80057F1C

.globl func_80057F38
.ent func_80057F38
func_80057F38:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      beqz       $16, .L80057FA0
       sw        $31, 0x1C($29)
      beqz       $18, .L80057FC8
       addu      $2, $0, $0
      bnez       $17, .L80057F74
       sw        $0, 0x0($18)
      j          .L80057FC8
       addiu     $2, $0, 0x1
  .L80057F74:
      addu       $4, $16, $0
      jal        func_80057EC8
       addu      $5, $17, $0
      addu       $5, $2, $0
      bnez       $5, .L80057FB4
       nop
      jal        func_80057E54
       nop
      addu       $5, $2, $0
      bnez       $5, .L80057FA8
       nop
  .L80057FA0:
      j          .L80057FC8
       addu      $2, $0, $0
  .L80057FA8:
      lw         $2, 0xC($16)
      sw         $2, 0x0($5)
      sw         $5, 0xC($16)
  .L80057FB4:
      lw         $3, 0x4($5)
      sltu       $2, $0, $3
      addu       $4, $3, $17
      sw         $4, 0x4($5)
      sw         $3, 0x0($18)
  .L80057FC8:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80057F38

.globl func_80057FE0
.ent func_80057FE0
func_80057FE0:
      addiu      $29, $29, -0x18
      addu       $4, $5, $0
      addu       $5, $6, $0
      sw         $31, 0x10($29)
      jal        func_80013F00
       addu      $6, $7, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80057FE0

.globl func_80058004
.ent func_80058004
func_80058004:
      andi       $4, $4, 0xFF
      addiu      $3, $4, -0x1
      sltiu      $2, $3, 0x33
      beqz       $2, .L80058088
       lui       $2, %hi(jtbl_800ED930)
      addiu      $2, $2, %lo(jtbl_800ED930)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80058030
.L80058030:
      jr         $31
       addiu     $2, $0, 0x10
  .globl .L80058038
.L80058038:
      jr         $31
       addiu     $2, $0, 0x20
  .globl .L80058040
.L80058040:
      jr         $31
       addiu     $2, $0, 0xC
  .globl .L80058048
.L80058048:
      jr         $31
       addiu     $2, $0, 0x24
  .globl .L80058050
.L80058050:
      jr         $31
       addiu     $2, $0, 0x4
  .globl .L80058058
.L80058058:
      jr         $31
       addiu     $2, $0, 0x6
  .globl .L80058060
.L80058060:
      jr         $31
       addiu     $2, $0, 0x1
  .globl .L80058068
.L80058068:
      jr         $31
       addiu     $2, $0, 0x2
  .globl .L80058070
.L80058070:
      jr         $31
       addiu     $2, $0, 0x14
  .globl .L80058078
.L80058078:
      jr         $31
       addiu     $2, $0, 0x28
  .globl .L80058080
.L80058080:
      jr         $31
       addiu     $2, $0, 0x1C
  .globl .L80058088
.L80058088:
      jr         $31
       addu      $2, $0, $0
.end func_80058004

.globl func_80058090
.ent func_80058090
func_80058090:
      addiu      $29, $29, -0x38
      sw         $21, 0x24($29)
      addu       $21, $7, $0
      sw         $22, 0x28($29)
      addu       $22, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      sltu       $2, $16, $21
      sw         $31, 0x30($29)
      sw         $23, 0x2C($29)
      sw         $20, 0x20($29)
      beqz       $2, .L80058138
       sw        $18, 0x18($29)
      addiu      $23, $0, 0x2
      addiu      $20, $0, -0x8
      lui        $2, %hi(D_800ED900)
      addiu      $2, $2, %lo(D_800ED900)
      sllv       $3, $16, $23
      addu       $18, $3, $2
  .L800580EC:
      andi       $2, $19, 0x1
      beql       $2, $0, .L80058124
       addiu     $16, $16, 0x1
      bne        $16, $23, .L80058110
       nop
      jal        func_80058004
       andi      $4, $22, 0xFF
      j          .L80058118
       addiu     $2, $2, 0x7
  .L80058110:
      lw         $2, 0x0($18)
      addiu      $2, $2, 0x7
  .L80058118:
      and        $2, $2, $20
      addu       $17, $17, $2
      addiu      $16, $16, 0x1
  .L80058124:
      andi       $2, $19, 0xFFFF
      srl        $19, $2, 1
      sltu       $2, $16, $21
      bnez       $2, .L800580EC
       addiu     $18, $18, 0x4
  .L80058138:
      addu       $2, $17, $0
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
.end func_80058090

.globl func_80058168
.ent func_80058168
func_80058168:
      andi       $3, $4, 0xFF
      sltiu      $2, $3, 0x100
      beqz       $2, .L800581E8
       addu      $5, $0, $0
      lui        $2, %hi(jtbl_800EDA00)
      addiu      $2, $2, %lo(jtbl_800EDA00)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80058194
.L80058194:
      j          .L800581EC
       ori       $5, $5, 0x357
  .globl .L8005819C
.L8005819C:
      j          .L800581EC
       ori       $5, $5, 0x200
  .globl .L800581A4
.L800581A4:
      j          .L800581EC
       ori       $5, $5, 0x4
  .globl .L800581AC
.L800581AC:
      j          .L800581EC
       ori       $5, $5, 0x1
  .globl .L800581B4
.L800581B4:
      j          .L800581EC
       ori       $5, $5, 0x37F
  .globl .L800581BC
.L800581BC:
      j          .L800581EC
       ori       $5, $5, 0x215
  .globl .L800581C4
.L800581C4:
      j          .L800581EC
       ori       $5, $5, 0x173
  .globl .L800581CC
.L800581CC:
      j          .L800581EC
       ori       $5, $5, 0x14C
  .globl .L800581D4
.L800581D4:
      j          .L800581EC
       ori       $5, $5, 0x15
  .globl .L800581DC
.L800581DC:
      ori        $5, $5, 0x100
  .globl .L800581E0
.L800581E0:
      j          .L800581EC
       ori       $5, $5, 0x5
  .globl .L800581E8
.L800581E8:
      addu       $5, $0, $0
  .globl .L800581EC
.L800581EC:
      jr         $31
       andi      $2, $5, 0xFFFF
.end func_80058168

.globl func_800581F4
.ent func_800581F4
func_800581F4:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      andi       $5, $5, 0xFF
      beqz       $5, .L80058214
       sw        $31, 0x14($29)
      j          .L8005822C
       addiu     $3, $0, 0x83
  .L80058214:
      jal        func_80058168
       andi      $4, $4, 0xFF
      addu       $3, $2, $0
      andi       $2, $16, 0xFF
      bnel       $2, $0, .L8005822C
       ori       $3, $3, 0x8
  .L8005822C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      andi       $2, $3, 0xFFFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_800581F4

.globl func_80058240
.ent func_80058240
func_80058240:
      addiu      $29, $29, -0x18
      andi       $4, $4, 0xFF
      andi       $5, $5, 0xFFFF
      addu       $6, $0, $0
      sw         $31, 0x10($29)
      jal        func_80058090
       addiu     $7, $0, 0xA
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80058240

.globl func_80058268
.ent func_80058268
func_80058268:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addu       $7, $5, $0
      sw         $31, 0x14($29)
      lbu        $4, 0x10($16)
      lhu        $5, 0x0($16)
      jal        func_80058090
       addu      $6, $0, $0
      addiu      $16, $16, 0x18
      addu       $2, $16, $2
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80058268

.globl func_800582A4
.ent func_800582A4
func_800582A4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      addiu      $4, $0, 0x10
      jal        func_800524E8
       addu      $5, $0, $0
      beql       $2, $0, .L800582D0
       addu      $2, $0, $0
      sw         $0, 0x8($2)
      sw         $0, 0x0($2)
      sw         $0, 0x4($2)
      sw         $0, 0xC($2)
  .L800582D0:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800582A4

.globl func_800582DC
.ent func_800582DC
func_800582DC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L8005831C
       sw        $31, 0x14($29)
      lw         $2, 0xC($16)
      beql       $2, $0, .L80058310
       sw        $0, 0x0($16)
  .L800582FC:
      jal        func_80057E90
       addu      $4, $2, $0
      bnez       $2, .L800582FC
       nop
      sw         $0, 0x0($16)
  .L80058310:
      sw         $0, 0x4($16)
      sw         $0, 0x8($16)
      sw         $0, 0xC($16)
  .L8005831C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800582DC

.globl func_8005832C
.ent func_8005832C
func_8005832C:
      beqz       $4, .L80058338
       addu      $2, $0, $0
      lw         $2, 0x8($4)
  .L80058338:
      jr         $31
       nop
.end func_8005832C

.globl func_80058340
.ent func_80058340
func_80058340:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $31, 0x24($29)
      beqz       $17, .L800583B4
       sw        $16, 0x18($29)
      beqz       $18, .L800583B4
       addu      $4, $17, $0
      andi       $5, $6, 0xFF
      lhu        $7, 0x0($18)
      addiu      $6, $29, 0x10
      srl        $7, $7, 3
      jal        func_80057D80
       andi      $7, $7, 0x1
      addu       $16, $2, $0
      beqz       $16, .L800583B4
       addu      $4, $17, $0
      addu       $5, $16, $0
      lw         $7, 0x10($29)
      jal        func_80057FE0
       addu      $6, $18, $0
      sw         $16, 0x8($18)
      lw         $3, 0x8($16)
      addu       $2, $16, $0
      sw         $18, 0xC($2)
      j          .L800583B8
       sw        $2, 0xC($3)
  .L800583B4:
      addu       $2, $0, $0
  .L800583B8:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80058340

.globl func_800583D0
.ent func_800583D0
func_800583D0:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      andi       $7, $6, 0xFF
      andi       $5, $5, 0xFF
      sw         $31, 0x14($29)
      jal        func_80057D80
       addu      $6, $0, $0
      addu       $4, $2, $0
      beqz       $4, .L80058424
       addu      $2, $0, $0
      lw         $2, 0x4($16)
      beql       $2, $0, .L80058408
       sw        $4, 0x4($16)
  .L80058408:
      lw         $2, 0x0($16)
      bnel       $2, $0, .L80058414
       sw        $4, 0x8($2)
  .L80058414:
      lw         $3, 0x0($16)
      addu       $2, $4, $0
      sw         $3, 0xC($2)
      sw         $2, 0x0($16)
  .L80058424:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800583D0

.globl func_80058434
.ent func_80058434
func_80058434:
      beqz       $4, .L80058440
       addu      $2, $0, $0
      lw         $2, 0x4($4)
  .L80058440:
      jr         $31
       nop
.end func_80058434

.globl func_80058448
.ent func_80058448
func_80058448:
      beqz       $4, .L80058454
       addu      $2, $0, $0
      lw         $2, 0x0($4)
  .L80058454:
      jr         $31
       nop
.end func_80058448

.globl func_8005845C
.ent func_8005845C
func_8005845C:
      addiu      $29, $29, -0x18
      beqz       $4, .L800584FC
       sw        $31, 0x10($29)
      lbu        $3, 0x10($4)
      addiu      $2, $0, 0x22
      beq        $3, $2, .L800584C0
       slti      $2, $3, 0x23
      beqz       $2, .L80058490
       addiu     $2, $0, 0x2
      beq        $3, $2, .L800584AC
       addu      $2, $0, $0
      j          .L80058500
       nop
  .L80058490:
      addiu      $2, $0, 0x24
      beq        $3, $2, .L800584D4
       addiu     $2, $0, 0x2B
      beq        $3, $2, .L800584E8
       addu      $2, $0, $0
      j          .L80058500
       nop
  .L800584AC:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x1C($2)
      j          .L80058500
       nop
  .L800584C0:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0xC($2)
      j          .L80058500
       nop
  .L800584D4:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x20($2)
      j          .L80058500
       nop
  .L800584E8:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x27($2)
      j          .L80058500
       nop
  .L800584FC:
      addu       $2, $0, $0
  .L80058500:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8005845C

.globl func_8005850C
.ent func_8005850C
func_8005850C:
      lbu        $2, -0x1($16)
      bnel       $2, $20, .L8005855C
       addiu     $17, $17, 0x1
      addu       $4, $17, $0
      jal        func_8005832C
       addiu     $5, $4, 0x3
      j          .L80058558
       addu      $17, $18, $0
      lbu        $2, 0x1($17)
      bnel       $2, $21, .L8005855C
       addiu     $17, $17, 0x1
      lbu        $2, 0x2($17)
      beq        $2, $20, .L80058550
.end func_8005850C

.globl func_80058540
.ent func_80058540
func_80058540:
      andi       $4, $4, 0xFF
      addiu      $2, $0, 0x10
      beq        $4, $2, .L80058558
       addiu     $2, $0, 0x16
  .L80058550:
      bne        $4, $2, .L80058560
       nop
  .L80058558:
      jr         $31
  .L8005855C:
       addiu     $2, $0, 0x2
  .L80058560:
      jr         $31
       addiu     $2, $0, 0x3
.end func_80058540

.globl func_80058568
.ent func_80058568
func_80058568:
      addiu      $29, $29, -0x18
      beqz       $4, .L80058588
       sw        $31, 0x10($29)
      lw         $4, 0x44($4)
      jal        func_80058340
       andi      $6, $6, 0xFF
      j          .L8005858C
       nop
  .L80058588:
      addu       $2, $0, $0
  .L8005858C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80058568

.globl func_80058598
.ent func_80058598
func_80058598:
      addiu      $29, $29, -0x50
      sw         $18, 0x30($29)
      lw         $18, 0x60($29)
      sw         $23, 0x44($29)
      addu       $23, $4, $0
      sw         $30, 0x48($29)
      addu       $30, $5, $0
      sw         $21, 0x3C($29)
      sw         $22, 0x40($29)
      addu       $22, $7, $0
      sw         $31, 0x4C($29)
      sw         $20, 0x38($29)
      sw         $19, 0x34($29)
      sw         $17, 0x2C($29)
      sw         $16, 0x28($29)
      sb         $0, 0x24($29)
      sw         $0, 0x0($18)
      sw         $0, 0x4($18)
      lbu        $3, 0x10($22)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L80058A9C
       addu      $21, $6, $0
      addu       $4, $22, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $22, $0
      lw         $17, 0x0($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $16, $2, $0
      lbu        $2, 0x1A($16)
      bnez       $2, .L80058628
       addu      $20, $0, $0
      lhu        $2, 0x12($16)
      beqz       $2, .L8005862C
       nop
  .L80058628:
      addiu      $20, $0, 0x1
  .L8005862C:
      lbu        $2, 0x19($16)
      bnez       $2, .L80058644
       addu      $19, $0, $0
      lhu        $2, 0x10($16)
      beqz       $2, .L80058648
       nop
  .L80058644:
      addiu      $19, $0, 0x1
  .L80058648:
      beqz       $17, .L80058680
       addiu     $6, $0, 0x1
      lw         $2, 0x18($17)
      blez       $2, .L80058680
       nop
      lw         $2, 0x1C($17)
      blez       $2, .L80058680
       addu      $4, $22, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x18($2)
      srl        $2, $2, 3
      xori       $2, $2, 0x1
      andi       $6, $2, 0x1
  .L80058680:
      lw         $5, 0x1C($30)
      lw         $3, 0x14($30)
      lw         $4, 0x8C($21)
      lw         $2, 0x84($21)
      subu       $4, $4, $2
      andi       $2, $20, 0xFF
      beqz       $2, .L80058734
       subu      $5, $5, $3
      andi       $2, $19, 0xFF
      beqz       $2, .L80058734
       andi      $2, $6, 0xFF
      beqz       $2, .L80058734
       nop
      lbu        $2, 0x1A($16)
      beqz       $2, .L800586E8
       addu      $3, $2, $0
      mult       $5, $3
      mflo       $3
      lui        $2, (0x51EB851F >> 16)
      ori        $2, $2, (0x51EB851F & 0xFFFF)
      mult       $3, $2
      sra        $3, $3, 31
      mfhi       $9
      sra        $2, $9, 5
      j          .L800586EC
       subu      $2, $2, $3
  .L800586E8:
      lhu        $2, 0x12($16)
  .L800586EC:
      sw         $2, 0x0($18)
      lbu        $2, 0x19($16)
      beqz       $2, .L80058728
       addu      $3, $2, $0
      mult       $4, $3
      mflo       $3
      lui        $2, (0x51EB851F >> 16)
      ori        $2, $2, (0x51EB851F & 0xFFFF)
      mult       $3, $2
      sra        $3, $3, 31
      mfhi       $9
      sra        $2, $9, 5
      subu       $2, $2, $3
      j          .L80058908
       sw        $2, 0x4($18)
  .L80058728:
      lhu        $2, 0x10($16)
      j          .L80058908
       sw        $2, 0x4($18)
  .L80058734:
      beqz       $17, .L800588D4
       addiu     $2, $0, 0x3
      lbu        $3, 0x38($17)
      beq        $3, $2, .L80058750
       sltiu     $2, $3, 0x5
      bnez       $2, .L800588D4
       nop
  .L80058750:
      lw         $2, 0x18($17)
      blez       $2, .L800588B4
       nop
      lw         $2, 0x1C($17)
      blez       $2, .L800588B0
       andi      $2, $19, 0xFF
      beqz       $2, .L80058800
       andi      $2, $6, 0xFF
      beqz       $2, .L80058804
       andi      $2, $20, 0xFF
      lbu        $2, 0x19($16)
      beqz       $2, .L800587AC
       addu      $3, $2, $0
      mult       $4, $3
      mflo       $3
      lui        $2, (0x51EB851F >> 16)
      ori        $2, $2, (0x51EB851F & 0xFFFF)
      mult       $3, $2
      sra        $3, $3, 31
      mfhi       $9
      sra        $2, $9, 5
      j          .L800587B0
       subu      $2, $2, $3
  .L800587AC:
      lhu        $2, 0x10($16)
  .L800587B0:
      sw         $2, 0x4($18)
      lw         $3, 0x1C($17)
      lw         $2, 0x4($18)
      mult       $3, $2
      mflo       $3
      lw         $2, 0x18($17)
      nop
      div        $zero, $3, $2
      bnez       $2, .L800587DC
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800587DC:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L800587F4
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800587F4
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800587F4:
      mflo       $2
      j          .L80058908
       sw        $2, 0x0($18)
  .L80058800:
      andi       $2, $20, 0xFF
  .L80058804:
      beqz       $2, .L8005889C
       andi      $2, $6, 0xFF
      beqz       $2, .L8005889C
       nop
      lbu        $2, 0x1A($16)
      beqz       $2, .L80058848
       addu      $3, $2, $0
      mult       $5, $3
      mflo       $3
      lui        $2, (0x51EB851F >> 16)
      ori        $2, $2, (0x51EB851F & 0xFFFF)
      mult       $3, $2
      sra        $3, $3, 31
      mfhi       $9
      sra        $2, $9, 5
      j          .L8005884C
       subu      $2, $2, $3
  .L80058848:
      lhu        $2, 0x12($16)
  .L8005884C:
      sw         $2, 0x0($18)
      lw         $3, 0x18($17)
      lw         $2, 0x0($18)
      mult       $3, $2
      mflo       $3
      lw         $2, 0x1C($17)
      nop
      div        $zero, $3, $2
      bnez       $2, .L80058878
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L80058878:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L80058890
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L80058890
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L80058890:
      mflo       $2
      j          .L80058908
       sw        $2, 0x4($18)
  .L8005889C:
      lw         $2, 0x1C($17)
      sw         $2, 0x0($18)
      lw         $2, 0x18($17)
      j          .L80058908
       sw        $2, 0x4($18)
  .L800588B0:
      lw         $2, 0x18($17)
  .L800588B4:
      bnez       $2, .L80058908
       addiu     $8, $0, 0x1
      lw         $2, 0x1C($17)
      sw         $2, 0x0($18)
      lw         $2, 0x18($17)
      sb         $8, 0x24($29)
      j          .L80058908
       sw        $2, 0x4($18)
  .L800588D4:
      lw         $2, 0x70($21)
      slti       $2, $2, 0x3
      bnez       $2, .L80058908
       nop
      beqz       $17, .L8005891C
       addiu     $2, $0, 0x2
      lbu        $3, 0x38($17)
      beq        $3, $2, .L80058900
       addiu     $2, $0, 0x4
      bne        $3, $2, .L80058908
       nop
  .L80058900:
      j          .L80058AA0
       addu      $2, $0, $0
  .L80058908:
      beqz       $17, .L8005891C
       nop
      lw         $2, 0x24C($30)
      sltiu      $2, $2, 0x1
      sb         $2, 0x3C($17)
  .L8005891C:
      lw         $4, 0x0($18)
      bnez       $4, .L80058934
       nop
      lbu        $2, 0x24($29)
      beql       $2, $0, .L8005899C
       addu      $4, $22, $0
  .L80058934:
      lw         $2, 0x9C($23)
      lh         $3, 0x44($2)
      mult       $4, $3
      mflo       $3
      lui        $4, (0x2AAAAAAB >> 16)
      ori        $4, $4, (0x2AAAAAAB & 0xFFFF)
      mult       $3, $4
      sra        $3, $3, 31
      mfhi       $9
      sra        $2, $9, 4
      subu       $2, $2, $3
      sw         $2, 0x0($18)
      lw         $2, 0x9C($23)
      lh         $3, 0x46($2)
      lw         $2, 0x4($18)
      mult       $2, $3
      mflo       $2
      nop
      nop
      mult       $2, $4
      sra        $2, $2, 31
      mfhi       $3
      sra        $3, $3, 4
      subu       $3, $3, $2
      j          .L80058A9C
       sw        $3, 0x4($18)
  .L8005899C:
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $17, 0x4($2)
      sltiu      $2, $17, 0x41
      beql       $2, $0, .L800589B4
       addiu     $17, $0, 0x40
  .L800589B4:
      beqz       $17, .L80058A04
       addu      $4, $23, $0
      addiu      $16, $29, 0x20
      lw         $6, 0x0($30)
      jal        func_8008494C
       addu      $5, $16, $0
      addu       $4, $22, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      addiu      $4, $23, 0x34
      lw         $3, 0x40($23)
      lw         $2, 0x0($2)
      addu       $5, $16, $0
      sw         $17, 0x14($29)
      sw         $18, 0x18($29)
      sw         $2, 0x10($29)
      lw         $6, 0x0($30)
      lw         $2, 0x10($3)
      jalr       $2
       addiu     $7, $30, 0x28
  .L80058A04:
      addu       $4, $22, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x9C($23)
      lbu        $3, 0x1C($2)
      lh         $2, 0x44($4)
      mult       $3, $2
      mflo       $3
      lui        $17, (0x2AAAAAAB >> 16)
      ori        $17, $17, (0x2AAAAAAB & 0xFFFF)
      mult       $3, $17
      addiu      $5, $0, 0x2
      addu       $4, $22, $0
      sra        $3, $3, 31
      mfhi       $9
      sra        $16, $9, 4
      jal        func_80058268
       subu      $16, $16, $3
      lw         $3, 0x9C($23)
      lbu        $4, 0x1C($2)
      lh         $2, 0x46($3)
      mult       $4, $2
      lw         $2, 0x0($18)
      sll        $16, $16, 2
      addiu      $2, $2, 0x4
      mflo       $4
      addu       $2, $2, $16
      sw         $2, 0x0($18)
      mult       $4, $17
      lw         $2, 0x4($18)
      addiu      $2, $2, 0x4
      sra        $4, $4, 31
      mfhi       $3
      sra        $3, $3, 4
      subu       $3, $3, $4
      sll        $3, $3, 2
      addu       $2, $2, $3
      sw         $2, 0x4($18)
  .L80058A9C:
      addiu      $2, $0, 0x1
  .L80058AA0:
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
.end func_80058598

.globl func_80058AD0
.ent func_80058AD0
func_80058AD0:
      addiu      $29, $29, -0x40
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $19, 0x2C($29)
      addu       $19, $5, $0
      sw         $18, 0x28($29)
      addu       $18, $6, $0
      sw         $22, 0x38($29)
      addu       $22, $7, $0
      sw         $31, 0x3C($29)
      sw         $21, 0x34($29)
      sw         $20, 0x30($29)
      bnez       $19, .L80058B64
       sw        $16, 0x20($29)
      sw         $0, 0x14($29)
      sw         $0, 0x10($29)
      lw         $2, 0x8C($17)
      lw         $3, 0x84($17)
      subu       $2, $2, $3
      sw         $2, 0x18($29)
      lw         $2, 0x88($17)
      lw         $3, 0x80($17)
      addiu      $4, $29, 0x10
      subu       $2, $2, $3
      sw         $2, 0x1C($29)
      lw         $5, 0x50($17)
      lw         $6, 0x4C($17)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
      addiu      $5, $29, 0x10
      addu       $6, $5, $0
      lw         $2, 0xC($18)
      lw         $4, 0x8($18)
      lw         $2, 0xC($2)
      j          .L80058D00
       addu      $7, $22, $0
  .L80058B64:
      lbu        $3, 0x10($19)
      addiu      $2, $0, 0x2
      bnel       $3, $2, .L80058C88
       addiu     $2, $0, 0x2B
      addu       $4, $19, $0
      jal        func_80058268
       addu      $5, $2, $0
      lw         $3, 0x4($17)
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
      addu       $4, $19, $0
      sra        $3, $3, 31
      mfhi       $12
      sra        $2, $12, 4
      jal        func_80058268
       subu      $21, $2, $3
      lw         $3, 0x4($17)
      lw         $3, 0x0($3)
      lw         $3, 0x9C($3)
      lbu        $2, 0x1C($2)
      lh         $3, 0x46($3)
      mult       $2, $3
      mflo       $2
      nop
      nop
      mult       $2, $16
      sra        $2, $2, 31
      mfhi       $3
      sra        $3, $3, 4
      beqz       $18, .L80058D08
       subu      $20, $3, $2
      lbu        $2, 0x3B($18)
      beqz       $2, .L80058D08
       nop
      lw         $2, 0xC($18)
      beqz       $2, .L80058D08
       addu      $4, $19, $0
      jal        func_80058268
       addu      $5, $0, $0
      addiu      $16, $29, 0x10
      addu       $4, $16, $0
      addu       $5, $21, $0
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      lw         $11, 0xC($2)
      sw         $8, 0x10($29)
      sw         $9, 0x14($29)
      sw         $10, 0x18($29)
      sw         $11, 0x1C($29)
      jal        func_8008A178
       addu      $6, $20, $0
      addu       $4, $16, $0
      lw         $5, 0x50($17)
      lw         $6, 0x4C($17)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
      addu       $5, $16, $0
      addu       $6, $5, $0
      lw         $2, 0xC($18)
      lw         $4, 0x8($18)
      lw         $2, 0xC($2)
      j          .L80058D00
       addu      $7, $22, $0
  .L80058C88:
      bne        $3, $2, .L80058D08
       nop
      beqz       $18, .L80058D08
       nop
      lw         $2, 0xC($18)
      beqz       $2, .L80058D08
       addu      $4, $19, $0
      jal        func_80058268
       addu      $5, $0, $0
      addiu      $16, $29, 0x10
      addu       $4, $16, $0
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      lw         $11, 0xC($2)
      sw         $8, 0x10($29)
      sw         $9, 0x14($29)
      sw         $10, 0x18($29)
      sw         $11, 0x1C($29)
      lw         $5, 0x50($17)
      lw         $6, 0x4C($17)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
      addu       $5, $16, $0
      addu       $6, $5, $0
      lw         $2, 0xC($18)
      lw         $4, 0x8($18)
      lw         $2, 0xC($2)
      addiu      $7, $0, 0x2
  .L80058D00:
      jalr       $2
       nop
  .L80058D08:
      lw         $31, 0x3C($29)
      lw         $22, 0x38($29)
      lw         $21, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x40
.end func_80058AD0

.globl func_80058D34
.ent func_80058D34
func_80058D34:
      addiu      $29, $29, -0x30
      sw         $22, 0x28($29)
      addu       $22, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      sw         $17, 0x14($29)
      addu       $17, $7, $0
      addu       $4, $20, $0
      addu       $5, $0, $0
      sw         $31, 0x2C($29)
      sw         $21, 0x24($29)
.end func_80058D34

.globl func_80058D68
.ent func_80058D68
func_80058D68:
      sw         $19, 0x1C($29)
      jal        func_80058268
       sw        $18, 0x18($29)
      addu       $4, $20, $0
      lw         $2, 0x0($2)
      addu       $5, $0, $0
      jal        func_80058268
       subu      $19, $16, $2
      lw         $2, 0x4($2)
      bnez       $19, .L80058D9C
       subu      $18, $17, $2
      beqz       $18, .L80058E58
       nop
  .L80058D9C:
      addu       $4, $20, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $17, $20, $0
      lw         $20, 0x4($2)
      beqz       $17, .L80058E58
       lui       $2, %hi(jtbl_800EDE00)
      addiu      $21, $2, %lo(jtbl_800EDE00)
  .L80058DBC:
      lw         $2, 0x8($20)
      beq        $17, $2, .L80058E58
       nop
      lbu        $2, 0x10($17)
      addiu      $3, $2, -0x1
      sltiu      $2, $3, 0x35
      beqz       $2, .L80058E4C
       sll       $2, $3, 2
      addu       $2, $2, $21
      lw         $2, 0x0($2)
      jr         $2
       nop
  .globl .L80058DEC
.L80058DEC:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $5, $19, $0
      lw         $2, 0x0($2)
      lw         $16, 0x5C($22)
      sll        $3, $2, 2
      addu       $3, $3, $2
      sll        $3, $3, 2
      subu       $3, $3, $2
      sll        $3, $3, 3
      addu       $16, $16, $3
      jal        func_800596E0
       addu      $4, $16, $0
      addiu      $4, $16, 0x8
      jal        func_800596E0
       addu      $5, $18, $0
  .globl .L80058E30
.L80058E30:
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $2, $0
      addu       $5, $19, $0
      jal        func_8008A204
       addu      $6, $18, $0
  .globl .L80058E4C
.L80058E4C:
      lw         $17, 0x8($17)
      bnez       $17, .L80058DBC
       nop
  .L80058E58:
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
.end func_80058D68

.globl func_80058E80
.ent func_80058E80
func_80058E80:
      addiu      $29, $29, -0x50
      sw         $18, 0x30($29)
      addu       $18, $5, $0
      sw         $31, 0x4C($29)
      sw         $30, 0x48($29)
      sw         $23, 0x44($29)
      sw         $22, 0x40($29)
      sw         $21, 0x3C($29)
      sw         $20, 0x38($29)
      sw         $19, 0x34($29)
      sw         $17, 0x2C($29)
      sw         $16, 0x28($29)
      sw         $6, 0x58($29)
      lw         $17, 0x8($18)
      beqz       $17, .L800595E0
       addu      $21, $4, $0
      addiu      $30, $0, 0x4
      addiu      $23, $0, 0x5
      lui        $22, (0x2AAAAAAB >> 16)
      ori        $22, $22, (0x2AAAAAAB & 0xFFFF)
  .L80058ED0:
      lbu        $3, 0x10($17)
      addiu      $2, $0, 0x2
      beq        $3, $2, .L800590F0
       addiu     $2, $0, 0x22
      bne        $3, $2, .L800595C8
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $2, 0x0($2)
      beq        $2, $30, .L80058F0C
       addu      $4, $21, $0
      beq        $2, $23, .L80058FB4
       addu      $4, $17, $0
      j          .L800590DC
       nop
  .L80058F0C:
      lw         $2, 0x9C($21)
      lh         $3, 0x250($18)
      lh         $2, 0x40($2)
      mult       $3, $2
      addu       $5, $17, $0
      lw         $6, 0x14($18)
      lw         $7, 0x18($18)
      mflo       $8
      jal        func_80058D34
       addu      $6, $6, $8
      lw         $3, 0x40($18)
      slti       $2, $3, 0x10
      beqz       $2, .L800590D8
       addu      $4, $17, $0
      sll        $2, $3, 4
      addu       $2, $18, $2
      addu       $5, $0, $0
      sw         $30, 0x50($2)
      lw         $2, 0x40($18)
      lw         $3, 0x14($18)
      sll        $2, $2, 4
      addu       $2, $18, $2
      jal        func_80058268
       sw        $3, 0x44($2)
      addu       $4, $17, $0
      lw         $3, 0x8($2)
      lw         $2, 0x40($18)
      addu       $5, $0, $0
      sll        $2, $2, 4
      addu       $2, $18, $2
      sw         $3, 0x14($18)
      jal        func_80058268
       sw        $3, 0x48($2)
      lw         $3, 0x40($18)
      lw         $2, 0xC($2)
      sll        $3, $3, 4
      addu       $3, $18, $3
      sw         $2, 0x4C($3)
      lw         $2, 0x40($18)
      addiu      $2, $2, 0x1
      j          .L800590D8
       sw        $2, 0x40($18)
  .L80058FB4:
      lw         $2, 0x24C($18)
      beqz       $2, .L80058FE8
       addu      $4, $21, $0
      lw         $2, 0x9C($21)
      lh         $3, 0x250($18)
      lh         $2, 0x40($2)
      mult       $3, $2
      addu       $5, $17, $0
      lw         $6, 0x14($18)
      lw         $7, 0x18($18)
      mflo       $8
      j          .L80059034
       addu      $6, $6, $8
  .L80058FE8:
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $21, $0
      addu       $5, $17, $0
      lw         $9, 0x0($2)
      lw         $10, 0x4($2)
      lw         $11, 0x8($2)
      lw         $8, 0xC($2)
      sw         $9, 0x18($29)
      sw         $10, 0x1C($29)
      sw         $11, 0x20($29)
      sw         $8, 0x24($29)
      lw         $7, 0x18($18)
      lw         $6, 0x20($29)
      lw         $2, 0x18($29)
      lw         $3, 0x1C($18)
      subu       $6, $6, $2
      subu       $6, $3, $6
  .L80059034:
      jal        func_80058D34
       nop
      lw         $3, 0x144($18)
      slti       $2, $3, 0x10
      beqz       $2, .L800590D8
       addu      $4, $17, $0
      sll        $2, $3, 4
      addu       $2, $18, $2
      addu       $5, $0, $0
      sw         $23, 0x154($2)
      lw         $2, 0x144($18)
      lw         $3, 0x1C($18)
      sll        $2, $2, 4
      addu       $2, $18, $2
      jal        func_80058268
       sw        $3, 0x148($2)
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      lw         $6, 0x8($16)
      lw         $2, 0x0($2)
      lw         $3, 0x1C($18)
      subu       $6, $6, $2
      lw         $2, 0x144($18)
      subu       $3, $3, $6
      sw         $3, 0x1C($18)
      sll        $2, $2, 4
      addu       $2, $18, $2
      jal        func_80058268
       sw        $3, 0x14C($2)
      lw         $3, 0x144($18)
      lw         $2, 0xC($2)
      sll        $3, $3, 4
      addu       $3, $18, $3
      sw         $2, 0x150($3)
      lw         $2, 0x144($18)
      addiu      $2, $2, 0x1
      sw         $2, 0x144($18)
  .L800590D8:
      addu       $4, $17, $0
  .L800590DC:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $17, 0x4($2)
      j          .L800595C8
       nop
  .L800590F0:
      addiu      $2, $29, 0x18
      addu       $4, $21, $0
      addu       $5, $18, $0
      lw         $6, 0x58($29)
      addu       $7, $17, $0
      jal        func_80058598
       sw        $2, 0x10($29)
      andi       $2, $2, 0xFF
      bnez       $2, .L8005912C
       addu      $4, $17, $0
      lw         $9, 0x58($29)
      addiu      $2, $0, 0x1
      sb         $2, 0x7A($9)
      j          .L800595E4
       addu      $2, $0, $0
  .L8005912C:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x1C($2)
      beqz       $2, .L800591CC
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x9C($21)
      lbu        $3, 0x1C($2)
      lh         $2, 0x44($4)
      mult       $3, $2
      mflo       $3
      nop
      nop
      mult       $3, $22
      addiu      $5, $0, 0x2
      addu       $4, $17, $0
      sra        $3, $3, 31
      mfhi       $12
      sra        $16, $12, 4
      jal        func_80058268
       subu      $16, $16, $3
      lw         $3, 0x9C($21)
      lbu        $4, 0x1C($2)
      lh         $2, 0x46($3)
      mult       $4, $2
      mflo       $4
      sll        $16, $16, 1
      lw         $2, 0x18($29)
      mult       $4, $22
      addu       $2, $2, $16
      sw         $2, 0x18($29)
      lw         $2, 0x1C($29)
      sra        $4, $4, 31
      mfhi       $3
      sra        $3, $3, 4
      subu       $3, $3, $4
      sll        $3, $3, 1
      addu       $2, $2, $3
      sw         $2, 0x1C($29)
  .L800591CC:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $2, 0x14($2)
      blez       $2, .L80059220
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x9C($21)
      lh         $3, 0x14($2)
      lh         $2, 0x44($4)
      mult       $3, $2
      mflo       $3
      nop
      nop
      mult       $3, $22
      sra        $3, $3, 31
      mfhi       $12
      sra        $2, $12, 4
      j          .L80059224
       subu      $19, $2, $3
  .L80059220:
      addu       $19, $0, $0
  .L80059224:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $2, 0x16($2)
      blez       $2, .L80059278
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x9C($21)
      lh         $3, 0x16($2)
      lh         $2, 0x46($4)
      mult       $3, $2
      mflo       $3
      nop
      nop
      mult       $3, $22
      sra        $3, $3, 31
      mfhi       $12
      sra        $2, $12, 4
      j          .L8005927C
       subu      $20, $2, $3
  .L80059278:
      addu       $20, $0, $0
  .L8005927C:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $2, 0x0($2)
      beq        $2, $30, .L800592A4
       addu      $4, $17, $0
      beq        $2, $23, .L80059414
       nop
      j          .L800595C8
       nop
  .L800592A4:
      jal        func_80058268
       addu      $5, $0, $0
      lw         $3, 0x9C($21)
      lh         $4, 0x250($18)
      lh         $3, 0x40($3)
      mult       $4, $3
      addu       $5, $0, $0
      addu       $4, $17, $0
      lw         $3, 0x14($18)
      mflo       $8
      addu       $3, $3, $8
      addu       $3, $3, $19
      jal        func_80058268
       sw        $3, 0x0($2)
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $17, $0
      lw         $2, 0x0($2)
      lw         $3, 0x18($29)
      addu       $5, $0, $0
      addu       $2, $2, $3
      jal        func_80058268
       sw        $2, 0x8($16)
      addu       $4, $17, $0
      lw         $3, 0x18($18)
      addu       $5, $0, $0
      addu       $3, $3, $20
      jal        func_80058268
       sw        $3, 0x4($2)
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      lui        $9, %hi(D_80137108)
      lw         $2, 0x4($2)
      lw         $3, 0x1C($29)
      addiu      $9, $9, %lo(D_80137108)
      addu       $2, $2, $3
      sw         $2, 0xC($16)
      lw         $3, 0x3C($9)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8005938C
       nop
      lw         $2, 0xE8($21)
      andi       $2, $2, 0x1
      bnez       $2, .L8005938C
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $4, 0x1C($29)
      srl        $3, $4, 31
      addu       $4, $4, $3
      lw         $3, 0xC($2)
      sra        $4, $4, 1
      subu       $3, $3, $4
      sw         $3, 0xC($2)
  .L8005938C:
      lw         $3, 0x40($18)
      slti       $2, $3, 0x10
      beqz       $2, .L800595C8
       addu      $4, $17, $0
      sll        $2, $3, 4
      addu       $2, $18, $2
      addu       $5, $0, $0
      sw         $30, 0x50($2)
      lw         $2, 0x40($18)
      lw         $3, 0x14($18)
      sll        $2, $2, 4
      addu       $2, $18, $2
      jal        func_80058268
       sw        $3, 0x44($2)
      addu       $4, $17, $0
      addu       $5, $0, $0
      lw         $3, 0x8($2)
      lw         $2, 0x40($18)
      addu       $3, $3, $19
      sll        $2, $2, 4
      addu       $2, $18, $2
      sw         $3, 0x14($18)
      jal        func_80058268
       sw        $3, 0x48($2)
      lw         $3, 0x40($18)
      lw         $2, 0xC($2)
      sll        $3, $3, 4
      addu       $3, $18, $3
      addu       $2, $2, $20
      sw         $2, 0x4C($3)
      lw         $2, 0x40($18)
      addiu      $2, $2, 0x1
      j          .L800595C8
       sw        $2, 0x40($18)
  .L80059414:
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      lw         $3, 0x1C($18)
      addu       $5, $0, $0
      subu       $3, $3, $19
      jal        func_80058268
       sw        $3, 0x8($2)
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $17, $0
      lw         $2, 0x8($2)
      lw         $3, 0x18($29)
      addu       $5, $0, $0
      subu       $2, $2, $3
      jal        func_80058268
       sw        $2, 0x0($16)
      addu       $4, $17, $0
      lw         $3, 0x18($18)
      addu       $5, $0, $0
      addu       $3, $3, $20
      jal        func_80058268
       sw        $3, 0x4($2)
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      lui        $10, %hi(D_80137108)
      lw         $2, 0x4($2)
      lw         $3, 0x1C($29)
      addiu      $10, $10, %lo(D_80137108)
      addu       $2, $2, $3
      sw         $2, 0xC($16)
      lw         $3, 0x3C($10)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800594E4
       nop
      lw         $2, 0xE8($21)
      andi       $2, $2, 0x1
      bnez       $2, .L800594E4
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $4, 0x1C($29)
      srl        $3, $4, 31
      addu       $4, $4, $3
      lw         $3, 0xC($2)
      sra        $4, $4, 1
      subu       $3, $3, $4
      sw         $3, 0xC($2)
  .L800594E4:
      lw         $2, 0x24C($18)
      beqz       $2, .L80059544
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $3, 0x9C($21)
      lh         $4, 0x250($18)
      lh         $3, 0x40($3)
      mult       $4, $3
      addu       $5, $0, $0
      addu       $4, $17, $0
      lw         $3, 0x14($18)
      mflo       $8
      addu       $3, $3, $8
      jal        func_80058268
       sw        $3, 0x0($2)
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      lw         $2, 0x0($2)
      lw         $3, 0x18($29)
      addu       $2, $2, $3
      sw         $2, 0x8($16)
  .L80059544:
      lw         $3, 0x144($18)
      slti       $2, $3, 0x10
      beqz       $2, .L800595C8
       addu      $4, $17, $0
      sll        $2, $3, 4
      addu       $2, $18, $2
      addu       $5, $0, $0
      sw         $23, 0x154($2)
      lw         $2, 0x144($18)
      lw         $3, 0x1C($18)
      sll        $2, $2, 4
      addu       $2, $18, $2
      sw         $3, 0x148($2)
      sll        $2, $19, 1
      lw         $6, 0x18($29)
      lw         $3, 0x1C($18)
      addu       $6, $6, $2
      lw         $2, 0x144($18)
      subu       $3, $3, $6
      sw         $3, 0x1C($18)
      sll        $2, $2, 4
      addu       $2, $18, $2
      jal        func_80058268
       sw        $3, 0x14C($2)
      lw         $3, 0x144($18)
      lw         $2, 0xC($2)
      sll        $3, $3, 4
      addu       $3, $18, $3
      addu       $2, $2, $20
      sw         $2, 0x150($3)
      lw         $2, 0x144($18)
      addiu      $2, $2, 0x1
      sw         $2, 0x144($18)
  .L800595C8:
      lw         $2, 0xC($18)
      beq        $17, $2, .L800595E4
.end func_80058E80

.globl func_800595D0
.ent func_800595D0
func_800595D0:
      addiu      $2, $0, 0x1
      lw         $17, 0x8($17)
      bnez       $17, .L80058ED0
       nop
  .L800595E0:
      addiu      $2, $0, 0x1
  .L800595E4:
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
.end func_800595D0

.globl func_80059614
.ent func_80059614
func_80059614:
      lw         $5, 0x40($4)
      blez       $5, .L8005965C
       nop
      lw         $6, 0x18($4)
  .L80059624:
      addiu      $2, $5, -0x1
      sll        $2, $2, 4
      addu       $3, $4, $2
      lw         $2, 0x4C($3)
      slt        $2, $2, $6
      beqz       $2, .L8005965C
       nop
      lw         $2, 0x40($4)
      lw         $3, 0x44($3)
      addiu      $2, $2, -0x1
      addu       $5, $2, $0
      sw         $3, 0x14($4)
      bgtz       $2, .L80059624
       sw        $2, 0x40($4)
  .L8005965C:
      lw         $5, 0x144($4)
      blez       $5, .L800596A4
       nop
      lw         $6, 0x18($4)
  .L8005966C:
      addiu      $2, $5, -0x1
      sll        $2, $2, 4
      addu       $3, $4, $2
      lw         $2, 0x150($3)
      slt        $2, $2, $6
      beqz       $2, .L800596A4
       nop
      lw         $2, 0x144($4)
      lw         $3, 0x148($3)
      addiu      $2, $2, -0x1
      addu       $5, $2, $0
      sw         $3, 0x1C($4)
      bgtz       $2, .L8005966C
       sw        $2, 0x144($4)
  .L800596A4:
      jr         $31
       nop
.end func_80059614

.globl func_800596AC
.ent func_800596AC
func_800596AC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x4($2)
      beqz       $3, .L800596D4
       addu      $2, $0, $0
      lbu        $2, 0x10($3)
      xori       $2, $2, 0x23
      sltiu      $2, $2, 0x1
  .L800596D4:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800596AC

.globl func_800596E0
.ent func_800596E0
func_800596E0:
      lhu        $2, 0x6($4)
      beqz       $2, .L80059718
       addu      $6, $0, $0
  .L800596EC:
      lw         $2, 0x0($4)
      sll        $3, $6, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      addu       $2, $2, $5
      sw         $2, 0x0($3)
      lhu        $2, 0x6($4)
      addiu      $6, $6, 0x1
      slt        $2, $6, $2
      bnez       $2, .L800596EC
       nop
  .L80059718:
      jr         $31
       nop
.end func_800596E0

.globl func_80059720
.ent func_80059720
func_80059720:
      addiu      $29, $29, -0x40
      sw         $22, 0x38($29)
      addu       $22, $4, $0
      sw         $19, 0x2C($29)
      addu       $19, $5, $0
      sw         $21, 0x34($29)
      addu       $21, $6, $0
      sw         $17, 0x24($29)
      lui        $17, (0x7FFFFFFF >> 16)
      ori        $17, $17, (0x7FFFFFFF & 0xFFFF)
      sw         $18, 0x28($29)
      lui        $18, (0x80000001 >> 16)
      sw         $31, 0x3C($29)
      sw         $20, 0x30($29)
      sw         $16, 0x20($29)
      lw         $2, 0x10($7)
      lw         $16, 0x8($19)
      beqz       $2, .L80059954
       ori       $18, $18, (0x80000001 & 0xFFFF)
      beqz       $16, .L80059800
       lui       $2, %hi(jtbl_800EDED8)
      addiu      $20, $2, %lo(jtbl_800EDED8)
  .L80059778:
      lbu        $2, 0x10($16)
      addiu      $3, $2, -0x1
      sltiu      $2, $3, 0x35
      beqz       $2, .L800597E8
       sll       $2, $3, 2
      addu       $2, $2, $20
      lw         $2, 0x0($2)
      jr         $2
       nop
  .globl .L8005979C
.L8005979C:
      addu       $4, $16, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      lw         $11, 0xC($2)
      sw         $8, 0x10($29)
      sw         $9, 0x14($29)
      sw         $10, 0x18($29)
      sw         $11, 0x1C($29)
      lw         $3, 0x10($29)
      slt        $2, $3, $17
      bnel       $2, $0, .L800597D8
       addu      $17, $3, $0
  .L800597D8:
      lw         $3, 0x18($29)
      slt        $2, $18, $3
      bnel       $2, $0, .L800597E8
       addu      $18, $3, $0
  .globl .L800597E8
.L800597E8:
      lw         $2, 0xC($19)
      beq        $16, $2, .L80059800
       nop
      lw         $16, 0x8($16)
      bnez       $16, .L80059778
       nop
  .L80059800:
      lw         $2, 0x10($16)
      lui        $3, (0xFFFF0000 >> 16)
      and        $2, $2, $3
      lui        $3, (0x40C0000 >> 16)
      bne        $2, $3, .L80059820
       subu      $5, $18, $17
      j          .L8005982C
       addu      $3, $5, $0
  .L80059820:
      lw         $3, 0x1C($19)
      lw         $2, 0x14($19)
      subu       $3, $3, $2
  .L8005982C:
      addiu      $2, $0, 0x1
      beq        $21, $2, .L80059848
       addiu     $2, $0, 0x2
      bne        $21, $2, .L80059858
       addu      $17, $0, $0
      j          .L80059858
       subu      $17, $3, $5
  .L80059848:
      subu       $2, $3, $5
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $17, $2, 1
  .L80059858:
      blez       $17, .L80059958
       addiu     $2, $0, 0x1
      lw         $16, 0x8($19)
      beqz       $16, .L80059954
       lui       $2, %hi(jtbl_800EDFB0)
      addiu      $20, $2, %lo(jtbl_800EDFB0)
      addu       $18, $18, $17
  .L80059874:
      lbu        $2, 0x10($16)
      addiu      $3, $2, -0x1
      sltiu      $2, $3, 0x35
      beqz       $2, .L8005993C
       sll       $2, $3, 2
      addu       $2, $2, $20
      lw         $2, 0x0($2)
      jr         $2
       nop
  .globl .L80059898
.L80059898:
      addu       $4, $16, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $16, $0
      lw         $3, 0x0($2)
      addu       $5, $0, $0
      addu       $3, $3, $17
      jal        func_80058268
       sw        $3, 0x0($2)
      lw         $2, 0x8($2)
      slt        $2, $2, $18
      bnez       $2, .L8005993C
       addu      $4, $16, $0
      j          .L80059928
       addu      $5, $0, $0
  .globl .L800598D4
.L800598D4:
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x0($2)
      addu       $5, $17, $0
      sll        $4, $2, 2
      addu       $4, $4, $2
      sll        $4, $4, 2
      subu       $4, $4, $2
      lw         $2, 0x5C($22)
      sll        $4, $4, 3
      jal        func_800596E0
       addu      $4, $2, $4
  .globl .L80059908
.L80059908:
      addu       $4, $16, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $16, $0
      lw         $3, 0x0($2)
      addu       $5, $0, $0
      addu       $3, $3, $17
      sw         $3, 0x0($2)
  .L80059928:
      jal        func_80058268
       nop
  .globl .L80059930
.L80059930:
      lw         $3, 0x8($2)
      addu       $3, $3, $17
      sw         $3, 0x8($2)
  .globl .L8005993C
.L8005993C:
      lw         $2, 0xC($19)
      beq        $16, $2, .L80059958
       addiu     $2, $0, 0x1
      lw         $16, 0x8($16)
  .globl .L8005994C
.L8005994C:
      bnez       $16, .L80059874
       nop
  .L80059954:
      addiu      $2, $0, 0x1
  .L80059958:
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
.end func_80059720

.globl func_80059980
.ent func_80059980
func_80059980:
      addiu      $29, $29, -0x28
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x10($5)
      beqz       $2, .L80059B54
       addu      $19, $4, $0
      lw         $17, 0x8($19)
      lw         $16, 0x18($19)
      beqz       $17, .L80059A54
       lui       $2, %hi(jtbl_800EE088)
      addiu      $18, $2, %lo(jtbl_800EE088)
  .L800599BC:
      lbu        $2, 0x10($17)
      addiu      $3, $2, -0x1
      sltiu      $2, $3, 0x35
      beqz       $2, .L80059A3C
       sll       $2, $3, 2
      addu       $2, $2, $18
      lw         $2, 0x0($2)
      jr         $2
       nop
  .globl .L800599E0
.L800599E0:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x4
      beq        $3, $2, .L80059A3C
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $2, $0
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x5
      beq        $3, $2, .L80059A3C
       nop
  .globl .L80059A14
.L80059A14:
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $2, 0x4($2)
      slt        $2, $2, $16
      beqz       $2, .L80059A3C
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $16, 0x4($2)
  .globl .L80059A3C
.L80059A3C:
      lw         $2, 0xC($19)
      beq        $17, $2, .L80059A54
       nop
      lw         $17, 0x8($17)
      bnez       $17, .L800599BC
       nop
  .L80059A54:
      lw         $2, 0x18($19)
      subu       $18, $2, $16
      beqz       $18, .L80059B54
       nop
      lw         $17, 0x8($19)
      beqz       $17, .L80059B3C
       lui       $2, %hi(jtbl_800EE160)
      addiu      $20, $2, %lo(jtbl_800EE160)
  .L80059A74:
      lbu        $2, 0x10($17)
      addiu      $3, $2, -0x1
      sltiu      $2, $3, 0x35
      beqz       $2, .L80059B24
       sll       $2, $3, 2
      addu       $2, $2, $20
      lw         $2, 0x0($2)
      jr         $2
       nop
  .globl .L80059A98
.L80059A98:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x4
      beq        $3, $2, .L80059B24
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $2, $0
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x5
      beq        $3, $2, .L80059B24
       nop
  .globl .L80059ACC
.L80059ACC:
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      lw         $3, 0x4($2)
      addu       $5, $0, $0
      addu       $3, $3, $18
      jal        func_80058268
       sw        $3, 0x4($2)
      addu       $4, $17, $0
      lw         $3, 0xC($2)
      addu       $5, $0, $0
      addu       $3, $3, $18
      jal        func_80058268
       sw        $3, 0xC($2)
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      lw         $2, 0x10($2)
      addu       $2, $2, $18
      sw         $2, 0x10($16)
  .globl .L80059B24
.L80059B24:
      lw         $2, 0xC($19)
      beq        $17, $2, .L80059B3C
       nop
      lw         $17, 0x8($17)
      bnez       $17, .L80059A74
       nop
  .L80059B3C:
      lw         $2, 0x18($19)
      lw         $3, 0x20($19)
      addu       $2, $2, $18
      addu       $3, $3, $18
      sw         $2, 0x18($19)
      sw         $3, 0x20($19)
  .L80059B54:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80059980

.globl func_80059B74
.ent func_80059B74
func_80059B74:
      addiu      $29, $29, -0x38
      sw         $31, 0x34($29)
      sw         $30, 0x30($29)
      sw         $23, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      sw         $4, 0x38($29)
      sw         $5, 0x3C($29)
      lw         $2, 0x10($6)
      bnez       $2, .L80059BBC
       lui       $23, (0x7FFFFFFF >> 16)
      j          .L8005A1AC
       addu      $2, $0, $0
  .L80059BBC:
      ori        $23, $23, (0x7FFFFFFF & 0xFFFF)
      lw         $7, 0x3C($29)
      addiu      $30, $0, -0x1
      lw         $17, 0x8($7)
      beqz       $17, .L80059DFC
       addu      $20, $0, $0
      lui        $2, %hi(jtbl_800EE238)
      addiu      $21, $2, %lo(jtbl_800EE238)
  .L80059BDC:
      lbu        $16, 0x10($17)
      addiu      $2, $0, 0x2
      bne        $16, $2, .L80059C40
       addu      $19, $0, $0
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $2, $0
      lh         $2, 0x16($2)
      blez       $2, .L80059C40
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $7, 0x38($29)
      lw         $4, 0x9C($7)
      lh         $3, 0x16($2)
      lh         $2, 0x46($4)
      mult       $3, $2
      mflo       $3
      lui        $2, (0x2AAAAAAB >> 16)
      ori        $2, $2, (0x2AAAAAAB & 0xFFFF)
      mult       $3, $2
      sra        $3, $3, 31
      mfhi       $8
      sra        $2, $8, 4
      subu       $19, $2, $3
  .L80059C40:
      andi       $2, $16, 0xFF
      addiu      $3, $2, -0x1
      sltiu      $2, $3, 0x35
      beqz       $2, .L80059DE0
       sll       $2, $3, 2
      addu       $2, $2, $21
      lw         $2, 0x0($2)
      jr         $2
       nop
  .globl .L80059C64
.L80059C64:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x4
      beq        $3, $2, .L80059DE0
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $2, $0
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x5
      beq        $3, $2, .L80059DE0
       nop
  .globl .L80059C98
.L80059C98:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $2, 0x0($2)
      bnez       $2, .L80059DA8
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $7, 0x3C($29)
      lw         $3, 0x10($2)
      lw         $2, 0x24($7)
      beq        $3, $2, .L80059CE8
       addu      $18, $0, $0
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $18, $0
      lw         $7, 0x3C($29)
      lw         $2, 0x10($2)
      lw         $3, 0x24($7)
      subu       $18, $3, $2
  .L80059CE8:
      beqz       $18, .L80059D44
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      lw         $3, 0x4($2)
      addu       $5, $0, $0
      addu       $3, $3, $18
      jal        func_80058268
       sw        $3, 0x4($2)
      addu       $4, $17, $0
      lw         $3, 0xC($2)
      addu       $5, $0, $0
      addu       $3, $3, $18
      jal        func_80058268
       sw        $3, 0xC($2)
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      lw         $2, 0x10($2)
      addu       $2, $2, $18
      sw         $2, 0x10($16)
  .L80059D44:
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $2, 0x4($2)
      subu       $2, $2, $19
      slt        $2, $2, $23
      beqz       $2, .L80059D74
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $2, 0x4($2)
      subu       $23, $2, $19
  .L80059D74:
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $2, 0xC($2)
      addu       $2, $2, $19
      slt        $2, $30, $2
      beqz       $2, .L80059DE0
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $2, 0xC($2)
      j          .L80059DE0
       addu      $30, $2, $19
  .L80059DA8:
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      lw         $3, 0xC($16)
      lw         $2, 0x4($2)
      subu       $3, $3, $2
      sll        $2, $19, 1
      addu       $3, $3, $2
      slt        $2, $20, $3
      bnel       $2, $0, .L80059DE0
       addu      $20, $3, $0
  .globl .L80059DE0
.L80059DE0:
      lw         $7, 0x3C($29)
      lw         $2, 0xC($7)
      beq        $17, $2, .L80059E00
       slt       $2, $30, $23
      lw         $17, 0x8($17)
      bnez       $17, .L80059BDC
       nop
  .L80059DFC:
      slt        $2, $30, $23
  .L80059E00:
      beqz       $2, .L80059E14
       nop
      lw         $7, 0x3C($29)
      lw         $23, 0x18($7)
      addu       $30, $23, $20
  .L80059E14:
      lw         $7, 0x3C($29)
      addu       $21, $23, $0
      lw         $17, 0x8($7)
      beqz       $17, .L8005A0A8
       addu      $22, $30, $0
      addu       $20, $0, $0
  .L80059E2C:
      lbu        $16, 0x10($17)
      addiu      $7, $0, 0x2
      bne        $16, $7, .L80059E90
       addu      $19, $20, $0
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $7, $0
      lh         $2, 0x16($2)
      blez       $2, .L80059E90
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $7, 0x38($29)
      lw         $4, 0x9C($7)
      lh         $3, 0x16($2)
      lh         $2, 0x46($4)
      mult       $3, $2
      mflo       $3
      lui        $2, (0x2AAAAAAB >> 16)
      ori        $2, $2, (0x2AAAAAAB & 0xFFFF)
      mult       $3, $2
      sra        $3, $3, 31
      mfhi       $8
      sra        $2, $8, 4
      subu       $19, $2, $3
  .L80059E90:
      andi       $2, $16, 0xFF
      addiu      $3, $2, -0x1
      sltiu      $2, $3, 0x35
      beqz       $2, .L8005A088
       sll       $2, $3, 2
      lui        $7, %hi(jtbl_800EE310)
      addiu      $7, $7, %lo(jtbl_800EE310)
      addu       $2, $2, $7
      lw         $2, 0x0($2)
      jr         $2
       nop
  .globl .L80059EBC
.L80059EBC:
      lw         $7, 0x38($29)
      lw         $2, 0x9C($7)
      lh         $20, 0x3C($2)
  .globl .L80059EC8
.L80059EC8:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $3, 0x0($2)
      addiu      $7, $0, 0x2
      beq        $3, $7, .L80059F88
       slti      $2, $3, 0x3
      beqz       $2, .L80059EFC
       addiu     $2, $0, 0x1
      beq        $3, $2, .L80059F10
       addu      $4, $17, $0
      j          .L8005A088
       nop
  .L80059EFC:
      addiu      $2, $0, 0x3
      beq        $3, $2, .L80059FD0
       addu      $4, $17, $0
      j          .L8005A088
       nop
  .L80059F10:
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      lw         $2, 0x4($2)
      addu       $5, $0, $0
      subu       $18, $23, $2
      jal        func_80058268
       addu      $18, $18, $19
      addu       $4, $17, $0
      lw         $3, 0x4($2)
      addu       $5, $0, $0
      addu       $3, $3, $18
      jal        func_80058268
       sw        $3, 0x4($2)
      addu       $4, $17, $0
      lw         $3, 0xC($2)
      addu       $5, $0, $0
      addu       $3, $3, $18
      jal        func_80058268
       sw        $3, 0xC($2)
      lw         $2, 0x4($2)
      subu       $2, $2, $19
      slt        $2, $2, $21
      beqz       $2, .L8005A050
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $2, 0x4($2)
      j          .L8005A050
       subu      $21, $2, $19
  .L80059F88:
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      lw         $3, 0x4($16)
      lw         $6, 0xC($2)
      addu       $2, $23, $30
      addu       $3, $3, $6
      subu       $2, $2, $3
      srl        $3, $2, 31
      addu       $2, $2, $3
      j          .L80059FEC
       sra       $18, $2, 1
  .L80059FD0:
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      lw         $2, 0xC($2)
      addu       $5, $0, $0
      subu       $18, $30, $2
      subu       $18, $18, $19
  .L80059FEC:
      jal        func_80058268
       nop
      addu       $4, $17, $0
      lw         $3, 0x4($2)
      addu       $5, $0, $0
      addu       $3, $3, $18
      jal        func_80058268
       sw        $3, 0x4($2)
      addu       $4, $17, $0
      lw         $3, 0xC($2)
      addu       $5, $0, $0
      addu       $3, $3, $18
      jal        func_80058268
       sw        $3, 0xC($2)
      lw         $2, 0x4($2)
      subu       $2, $2, $20
      subu       $2, $2, $19
      slt        $2, $2, $21
      beqz       $2, .L8005A050
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $2, 0x4($2)
      subu       $2, $2, $20
      subu       $21, $2, $19
  .L8005A050:
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $2, 0xC($2)
      addu       $2, $2, $20
      addu       $2, $2, $19
      slt        $2, $22, $2
      beqz       $2, .L8005A088
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $2, 0xC($2)
      addu       $2, $2, $20
      addu       $22, $2, $19
  .globl .L8005A088
.L8005A088:
      lw         $7, 0x3C($29)
      lw         $2, 0xC($7)
      beq        $17, $2, .L8005A0A8
       nop
      lw         $17, 0x8($17)
      bnez       $17, .L80059E2C
       addu      $20, $0, $0
      lw         $7, 0x3C($29)
  .L8005A0A8:
      lw         $2, 0x18($7)
      subu       $18, $2, $21
      beqz       $18, .L8005A194
       nop
      lw         $17, 0x8($7)
      beqz       $17, .L8005A194
       lui       $2, %hi(jtbl_800EE3E8)
      addiu      $19, $2, %lo(jtbl_800EE3E8)
  .L8005A0C8:
      lbu        $2, 0x10($17)
      addiu      $3, $2, -0x1
      sltiu      $2, $3, 0x35
      beqz       $2, .L8005A178
       sll       $2, $3, 2
      addu       $2, $2, $19
      lw         $2, 0x0($2)
      jr         $2
       nop
  .globl .L8005A0EC
.L8005A0EC:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x4
      beq        $3, $2, .L8005A178
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $2, $0
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x5
      beq        $3, $2, .L8005A178
       nop
  .globl .L8005A120
.L8005A120:
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      lw         $3, 0x4($2)
      addu       $5, $0, $0
      addu       $3, $3, $18
      jal        func_80058268
       sw        $3, 0x4($2)
      addu       $4, $17, $0
      lw         $3, 0xC($2)
      addu       $5, $0, $0
      addu       $3, $3, $18
      jal        func_80058268
       sw        $3, 0xC($2)
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      lw         $2, 0x10($2)
      addu       $2, $2, $18
      sw         $2, 0x10($16)
  .globl .L8005A178
.L8005A178:
      lw         $7, 0x3C($29)
      lw         $2, 0xC($7)
      beq        $17, $2, .L8005A19C
       addu      $2, $0, $0
      lw         $17, 0x8($17)
      bnez       $17, .L8005A0C8
       nop
  .L8005A194:
      lw         $7, 0x3C($29)
      addu       $2, $0, $0
  .L8005A19C:
      lw         $4, 0x2C($7)
      addu       $3, $22, $18
      addu       $3, $3, $4
      sw         $3, 0x20($7)
  .L8005A1AC:
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
.end func_80059B74

.globl func_8005A1DC
.ent func_8005A1DC
func_8005A1DC:
      lw         $2, 0x0($4)
      addu       $6, $0, $0
      lw         $2, 0x0($2)
      lhu        $3, 0x6($4)
      beqz       $3, .L8005A220
       subu      $5, $5, $2
  .L8005A1F4:
      lw         $2, 0x0($4)
      sll        $3, $6, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      addu       $2, $2, $5
      sw         $2, 0x0($3)
      lhu        $2, 0x6($4)
      addiu      $6, $6, 0x1
      slt        $2, $6, $2
      bnez       $2, .L8005A1F4
       nop
  .L8005A220:
      jr         $31
       nop
.end func_8005A1DC

.globl func_8005A228
.ent func_8005A228
func_8005A228:
      lhu        $2, 0x6($4)
      beqz       $2, .L8005A258
       addu      $6, $0, $0
  .L8005A234:
      lw         $2, 0x0($4)
      sll        $3, $6, 2
      addu       $3, $3, $2
      sw         $5, 0x0($3)
      lhu        $2, 0x6($4)
      addiu      $6, $6, 0x1
      slt        $2, $6, $2
      bnez       $2, .L8005A234
       nop
  .L8005A258:
      jr         $31
       nop
.end func_8005A228

.globl func_8005A260
.ent func_8005A260
func_8005A260:
      addu       $6, $0, $0
      lhu        $8, 0x6($4)
      beqz       $8, .L8005A29C
       addu      $7, $6, $0
      slt        $2, $6, $5
  .L8005A274:
      beqz       $2, .L8005A29C
       sll       $2, $6, 2
      lw         $3, 0x0($4)
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      addiu      $6, $6, 0x1
      addu       $7, $7, $2
      slt        $2, $6, $8
      bnez       $2, .L8005A274
       slt       $2, $6, $5
  .L8005A29C:
      jr         $31
       addu      $2, $7, $0
.end func_8005A260

.globl func_8005A2A4
.ent func_8005A2A4
func_8005A2A4:
      addiu      $29, $29, -0x40
      sw         $20, 0x28($29)
      addu       $20, $4, $0
      sw         $31, 0x3C($29)
      sw         $30, 0x38($29)
      sw         $23, 0x34($29)
      sw         $22, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      sw         $5, 0x44($29)
      lbu        $23, 0x82($20)
      lh         $3, 0x46($7)
      mult       $23, $3
      mflo       $9
      lui        $10, (0x2AAAAAAB >> 16)
      ori        $10, $10, (0x2AAAAAAB & 0xFFFF)
      mult       $9, $10
      addu       $17, $6, $0
      mfhi       $2
      lbu        $6, 0x83($20)
      nop
      mult       $6, $3
      mflo       $11
      lbu        $19, 0x87($20)
      nop
      mult       $19, $3
      mflo       $6
      lbu        $8, 0x86($20)
      nop
      mult       $8, $3
      mflo       $8
      nop
      nop
      mult       $6, $10
      mfhi       $15
      nop
      nop
      mult       $8, $10
      mfhi       $13
      lbu        $22, 0x84($20)
      nop
      mult       $22, $3
      mflo       $7
      nop
      nop
      mult       $7, $10
      mfhi       $12
      lbu        $30, 0x85($20)
      addiu      $4, $20, 0x10
      mult       $30, $3
      lhu        $5, 0x16($20)
      lhu        $21, 0x6($20)
      addiu      $5, $5, -0x1
      sra        $9, $9, 31
      mflo       $3
      sra        $2, $2, 4
      subu       $23, $2, $9
      mult       $3, $10
      sra        $6, $6, 31
      sra        $2, $15, 4
      subu       $19, $2, $6
      sra        $8, $8, 31
      mfhi       $6
      sra        $2, $13, 4
      subu       $8, $2, $8
      mult       $11, $10
      sll        $8, $8, 1
      sw         $8, 0x10($29)
      sra        $7, $7, 31
      sra        $2, $12, 4
      mfhi       $9
      subu       $22, $2, $7
      sra        $3, $3, 31
      mult       $21, $19
      sra        $2, $6, 4
      subu       $30, $2, $3
      addiu      $3, $21, -0x1
      addu       $2, $22, $30
      mflo       $7
      addu       $2, $2, $8
      sra        $11, $11, 31
      mult       $3, $2
      sra        $6, $9, 4
      subu       $6, $6, $11
      addu       $16, $23, $6
      addu       $16, $16, $7
      mflo       $3
      jal        func_8005A260
       addu      $16, $16, $3
      addiu      $4, $20, 0x18
      lhu        $5, 0x1E($20)
      addu       $18, $16, $2
      jal        func_8005A260
       addiu     $5, $5, -0x1
      lw         $14, 0x44($29)
      addu       $16, $16, $2
      subu       $17, $17, $14
      slt        $2, $18, $17
      bnez       $2, .L8005A498
       slt       $2, $17, $16
      addu       $2, $23, $19
      addu       $5, $14, $2
      beqz       $21, .L8005A5A0
       addu      $7, $0, $0
      lw         $8, 0x10($29)
      addu       $6, $30, $19
  .L8005A458:
      lw         $2, 0x0($20)
      sll        $3, $7, 2
      addu       $2, $3, $2
      sw         $5, 0x0($2)
      lw         $2, 0x10($20)
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      addiu      $7, $7, 0x1
      addu       $2, $2, $8
      addu       $2, $2, $22
      addu       $5, $5, $2
      slt        $2, $7, $21
      bnez       $2, .L8005A458
       addu      $5, $5, $6
      j          .L8005A5A0
       nop
  .L8005A498:
      bnez       $2, .L8005A4F8
       addu      $2, $23, $19
      lw         $14, 0x44($29)
      addu       $7, $0, $0
      beqz       $21, .L8005A5A0
       addu      $5, $14, $2
      lw         $8, 0x10($29)
      addu       $6, $30, $19
  .L8005A4B8:
      lw         $2, 0x0($20)
      sll        $3, $7, 2
      addu       $2, $3, $2
      sw         $5, 0x0($2)
      lw         $2, 0x18($20)
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      addiu      $7, $7, 0x1
      addu       $2, $2, $8
      addu       $2, $2, $22
      addu       $5, $5, $2
      slt        $2, $7, $21
      bnez       $2, .L8005A4B8
       addu      $5, $5, $6
      j          .L8005A5A0
       nop
  .L8005A4F8:
      lw         $14, 0x44($29)
      addu       $7, $0, $0
      subu       $17, $17, $18
      subu       $16, $16, $18
      beqz       $21, .L8005A5A0
       addu      $5, $14, $2
      lw         $8, 0x10($29)
      addu       $6, $30, $19
  .L8005A518:
      lw         $2, 0x0($20)
      sll        $3, $7, 2
      addu       $2, $3, $2
      sw         $5, 0x0($2)
      lw         $2, 0x18($20)
      lw         $4, 0x10($20)
      addu       $2, $3, $2
      addu       $3, $3, $4
      lw         $2, 0x0($2)
      lw         $3, 0x0($3)
      subu       $2, $2, $3
      mult       $2, $17
      mflo       $9
      addu       $2, $9, $16
      addiu      $2, $2, -0x1
      div        $zero, $2, $16
      bnez       $16, .L8005A564
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005A564:
      addiu      $1, $0, -0x1
      bne        $16, $1, .L8005A57C
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L8005A57C
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005A57C:
      mflo       $2
      addiu      $7, $7, 0x1
      addu       $3, $3, $2
      addu       $3, $3, $8
      addu       $3, $3, $22
      addu       $5, $5, $3
      slt        $2, $7, $21
      bnez       $2, .L8005A518
       addu      $5, $5, $6
  .L8005A5A0:
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
.end func_8005A2A4

.globl func_8005A5D0
.ent func_8005A5D0
func_8005A5D0:
      addiu      $29, $29, -0x38
      sw         $23, 0x2C($29)
      lw         $23, 0x5C($29)
      addu       $14, $4, $0
      sw         $30, 0x30($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      sw         $5, 0x3C($29)
      lbu        $5, 0x82($14)
      lh         $2, 0x46($23)
      mult       $5, $2
      mflo       $5
      lui        $10, (0x2AAAAAAB >> 16)
      ori        $10, $10, (0x2AAAAAAB & 0xFFFF)
      mult       $5, $10
      mfhi       $3
      lbu        $17, 0x87($14)
      nop
      mult       $17, $2
      lbu        $23, 0x86($14)
      mflo       $4
      sw         $23, 0x8($29)
      nop
      mult       $23, $2
      mflo       $9
      nop
      nop
      mult       $4, $10
      mfhi       $13
      nop
      nop
      mult       $9, $10
      mfhi       $11
      lbu        $20, 0x84($14)
      nop
      mult       $20, $2
      lw         $18, 0x48($29)
      lw         $21, 0x4C($29)
      lw         $19, 0x50($29)
      lw         $22, 0x54($29)
      mflo       $8
      lw         $25, 0x58($29)
      lbu        $30, 0x85($14)
      mult       $8, $10
      sw         $7, 0x44($29)
      sra        $5, $5, 31
      sra        $3, $3, 4
      subu       $5, $3, $5
      mfhi       $12
      sra        $4, $4, 31
      sra        $3, $13, 4
      mult       $30, $2
      subu       $17, $3, $4
      sra        $9, $9, 31
      sra        $3, $11, 4
      subu       $3, $3, $9
      mflo       $2
      sw         $3, 0x8($29)
      lhu        $16, 0x6($14)
      mult       $2, $10
      sra        $8, $8, 31
      sra        $3, $12, 4
      subu       $20, $3, $8
      sra        $2, $2, 31
      mfhi       $10
      sra        $3, $10, 4
      bnez       $6, .L8005A76C
       subu      $30, $3, $2
      addiu      $2, $0, 0x1
      bne        $18, $2, .L8005AD24
       nop
      bne        $21, $18, .L8005AD24
       nop
      bne        $19, $18, .L8005AD24
       addu      $2, $5, $17
      lw         $23, 0x3C($29)
      addu       $6, $0, $0
      beqz       $16, .L8005AD24
       addu      $5, $23, $2
      lw         $23, 0x8($29)
      sll        $9, $23, 1
      addu       $4, $30, $17
  .L8005A72C:
      lw         $2, 0x0($14)
      sll        $3, $6, 2
      addu       $2, $3, $2
      sw         $5, 0x0($2)
      lw         $2, 0x10($14)
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      addiu      $6, $6, 0x1
      addu       $2, $2, $9
      addu       $2, $2, $20
      addu       $5, $5, $2
      slt        $2, $6, $16
      bnez       $2, .L8005A72C
       addu      $5, $5, $4
      j          .L8005AD24
       nop
  .L8005A76C:
      addu       $15, $0, $0
      addu       $12, $15, $0
      addu       $8, $15, $0
      or         $2, $18, $21
      or         $2, $2, $19
      andi       $2, $2, 0x2A
      beqz       $2, .L8005A8D4
       addu      $7, $15, $0
      slti       $2, $25, 0x2
      div        $zero, $22, $25
      bnez       $25, .L8005A7A0
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005A7A0:
      addiu      $1, $0, -0x1
      bne        $25, $1, .L8005A7B8
       lui       $1, (0x80000000 >> 16)
      bne        $22, $1, .L8005A7B8
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005A7B8:
      mflo       $15
      mfhi       $12
      bnez       $2, .L8005A8D8
       addiu     $2, $0, 0x2
      andi       $2, $19, 0x2
      beqz       $2, .L8005A8D4
       addu      $13, $22, $0
      addu       $11, $0, $0
      addiu      $2, $16, -0x1
      blez       $2, .L8005A850
       addu      $6, $11, $0
      addiu      $9, $0, 0x80
      addu       $24, $2, $0
  .L8005A7EC:
      lw         $2, 0x28($14)
      sll        $4, $6, 2
      addu       $10, $4, $2
      lw         $2, 0x0($10)
      bnel       $2, $0, .L8005A844
       addiu     $6, $6, 0x1
      lw         $2, 0x18($14)
      lw         $3, 0x10($14)
      addu       $2, $4, $2
      addu       $3, $4, $3
      lw         $4, 0x0($2)
      lw         $2, 0x0($3)
      subu       $4, $4, $2
      bltz       $4, .L8005A83C
       slt       $2, $4, $15
      beql       $2, $0, .L8005A840
       addiu     $11, $11, 0x1
      sw         $9, 0x0($10)
      j          .L8005A840
       subu      $13, $13, $4
  .L8005A83C:
      addiu      $11, $11, 0x1
  .L8005A840:
      addiu      $6, $6, 0x1
  .L8005A844:
      slt        $2, $6, $24
      bnez       $2, .L8005A7EC
       nop
  .L8005A850:
      blez       $11, .L8005A898
       slt       $2, $11, $25
      beqz       $2, .L8005A898
       addiu     $2, $0, 0x2
      div        $zero, $13, $11
      bnez       $11, .L8005A870
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005A870:
      addiu      $1, $0, -0x1
      bne        $11, $1, .L8005A888
       lui       $1, (0x80000000 >> 16)
      bne        $13, $1, .L8005A888
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005A888:
      mflo       $15
      mfhi       $12
      j          .L8005A8D8
       nop
  .L8005A898:
      addiu      $2, $16, -0x1
      blez       $2, .L8005A8D4
       addu      $6, $0, $0
      addiu      $10, $0, 0x80
      addu       $4, $2, $0
  .L8005A8AC:
      lw         $2, 0x28($14)
      sll        $3, $6, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      beql       $2, $10, .L8005A8C4
       sw        $0, 0x0($3)
  .L8005A8C4:
      addiu      $6, $6, 0x1
      slt        $2, $6, $4
      bnez       $2, .L8005A8AC
       nop
  .L8005A8D4:
      addiu      $2, $0, 0x2
  .L8005A8D8:
      bne        $18, $2, .L8005A954
       addiu     $2, $0, 0x2
      addiu      $2, $16, -0x1
      blez       $2, .L8005A924
       addu      $6, $0, $0
      addiu      $11, $0, 0x2
      addu       $10, $2, $0
      lw         $4, 0x28($14)
  .L8005A8F8:
      lw         $2, 0x0($4)
      bne        $2, $11, .L8005A914
       sll       $3, $6, 2
      lw         $2, 0x30($14)
      addu       $2, $3, $2
      lw         $2, 0x0($2)
      addu       $7, $7, $2
  .L8005A914:
      addiu      $6, $6, 0x1
      slt        $2, $6, $10
      bnez       $2, .L8005A8F8
       addiu     $4, $4, 0x4
  .L8005A924:
      lw         $23, 0x5C($29)
      lh         $2, 0x44($23)
      mult       $7, $2
      mflo       $2
      lui        $3, (0x2AAAAAAB >> 16)
      ori        $3, $3, (0x2AAAAAAB & 0xFFFF)
      mult       $2, $3
      sra        $2, $2, 31
      mfhi       $3
      sra        $3, $3, 4
      subu       $7, $3, $2
      addiu      $2, $0, 0x2
  .L8005A954:
      bne        $21, $2, .L8005A9D0
       addu      $2, $5, $17
      addiu      $2, $16, -0x1
      blez       $2, .L8005A9A0
       addu      $6, $0, $0
      addiu      $11, $0, 0x1
      addu       $10, $2, $0
      lw         $4, 0x28($14)
  .L8005A974:
      lw         $2, 0x0($4)
      bne        $2, $11, .L8005A990
       sll       $3, $6, 2
      lw         $2, 0x30($14)
      addu       $2, $3, $2
      lw         $2, 0x0($2)
      addu       $8, $8, $2
  .L8005A990:
      addiu      $6, $6, 0x1
      slt        $2, $6, $10
      bnez       $2, .L8005A974
       addiu     $4, $4, 0x4
  .L8005A9A0:
      lw         $23, 0x5C($29)
      lh         $2, 0x44($23)
      mult       $8, $2
      mflo       $2
      lui        $3, (0x2AAAAAAB >> 16)
      ori        $3, $3, (0x2AAAAAAB & 0xFFFF)
      mult       $2, $3
      sra        $2, $2, 31
      mfhi       $3
      sra        $3, $3, 4
      subu       $8, $3, $2
      addu       $2, $5, $17
  .L8005A9D0:
      lw         $23, 0x3C($29)
      addu       $6, $0, $0
      beqz       $16, .L8005AD24
       addu      $5, $23, $2
      addiu      $3, $19, -0x1
      sltiu      $24, $3, 0x20
      lui        $2, %hi(D_800EE4C0)
      addiu      $2, $2, %lo(D_800EE4C0)
      sll        $3, $3, 2
      addu       $2, $3, $2
      sw         $2, 0x0($29)
      lui        $2, %hi(jtbl_800EE540)
      addiu      $2, $2, %lo(jtbl_800EE540)
      addu       $25, $3, $2
      addiu      $3, $21, -0x1
      sltiu      $13, $3, 0x20
      lui        $2, %hi(jtbl_800EE5C0)
      addiu      $2, $2, %lo(jtbl_800EE5C0)
      sll        $3, $3, 2
      addu       $21, $3, $2
      lui        $11, (0x51EB851F >> 16)
      ori        $11, $11, (0x51EB851F & 0xFFFF)
      lui        $2, %hi(jtbl_800EE640)
      addiu      $2, $2, %lo(jtbl_800EE640)
      addu       $19, $3, $2
      addiu      $3, $18, -0x1
      sltiu      $10, $3, 0x20
      lui        $2, %hi(jtbl_800EE6C0)
      addiu      $2, $2, %lo(jtbl_800EE6C0)
      sll        $3, $3, 2
      addu       $18, $3, $2
      lui        $2, %hi(jtbl_800EE740)
      addiu      $2, $2, %lo(jtbl_800EE740)
      addu       $9, $3, $2
      addu       $4, $6, $0
  .L8005AA5C:
      lw         $2, 0x0($14)
      addu       $2, $4, $2
      sw         $5, 0x0($2)
      lw         $2, 0x28($14)
      addu       $2, $4, $2
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x2
      beq        $3, $2, .L8005AC14
       slti      $2, $3, 0x3
      beqz       $2, .L8005AAA0
       addiu     $2, $0, 0x81
      beqz       $3, .L8005AAD4
       addiu     $2, $0, 0x1
      beq        $3, $2, .L8005AB24
       nop
      j          .L8005ACFC
       nop
  .L8005AAA0:
      beq        $3, $2, .L8005AC00
       slti      $2, $3, 0x82
      beqz       $2, .L8005AAC0
       addiu     $2, $0, 0x80
      beq        $3, $2, .L8005AB04
       nop
      j          .L8005ACFC
       nop
  .L8005AAC0:
      addiu      $2, $0, 0x82
      beq        $3, $2, .L8005ACB4
       nop
      j          .L8005ACFC
       nop
  .L8005AAD4:
      beqz       $24, .L8005ACFC
       nop
      lw         $23, 0x0($29)
      lw         $2, 0x0($23)
      jr         $2
       nop
      lw         $2, 0x18($14)
      j          .L8005ACD0
       addu      $2, $4, $2
      lw         $2, 0x18($14)
      j          .L8005ACE4
       addu      $2, $4, $2
  .L8005AB04:
      beqz       $24, .L8005ACFC
       nop
      lw         $2, 0x0($25)
      jr         $2
       nop
  .globl .L8005AB18
.L8005AB18:
      lw         $2, 0x18($14)
      j          .L8005ACD0
       addu      $2, $4, $2
  .L8005AB24:
      beqz       $13, .L8005ACFC
       nop
      lw         $2, 0x0($21)
      jr         $2
       nop
  .globl .L8005AB38
.L8005AB38:
      lw         $2, 0x30($14)
      addu       $2, $4, $2
      lw         $2, 0x0($2)
      mult       $22, $2
      mflo       $2
      nop
      nop
      div        $zero, $2, $8
      bnez       $8, .L8005AB64
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005AB64:
      addiu      $1, $0, -0x1
      bne        $8, $1, .L8005AB7C
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L8005AB7C
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005AB7C:
      mflo       $3
      j          .L8005AC98
       nop
  .globl .L8005AB88
.L8005AB88:
      lw         $2, 0x30($14)
      lw         $23, 0x44($29)
      addu       $2, $4, $2
      lw         $2, 0x0($2)
      mult       $2, $23
      mflo       $2
      nop
      nop
      mult       $2, $11
      sra        $2, $2, 31
      mfhi       $3
      sra        $3, $3, 5
      subu       $3, $3, $2
  .globl .L8005ABBC
.L8005ABBC:
      j          .L8005ACFC
       addu      $5, $5, $3
  .globl .L8005ABC4
.L8005ABC4:
      lw         $2, 0x30($14)
      lw         $23, 0x44($29)
      addu       $2, $4, $2
      lw         $2, 0x0($2)
      mult       $2, $23
      mflo       $2
      nop
      nop
      mult       $2, $11
      sra        $2, $2, 31
      mfhi       $3
      sra        $3, $3, 5
      subu       $3, $3, $2
      j          .L8005ACEC
       addu      $5, $5, $3
  .L8005AC00:
      beqz       $13, .L8005ACFC
       nop
      lw         $2, 0x0($19)
      jr         $2
       nop
  .L8005AC14:
      lw         $2, 0x30($14)
      lw         $23, 0x5C($29)
      addu       $2, $4, $2
      lw         $3, 0x0($2)
      lh         $2, 0x44($23)
      mult       $3, $2
      mflo       $2
      lui        $3, (0x2AAAAAAB >> 16)
      ori        $3, $3, (0x2AAAAAAB & 0xFFFF)
      mult       $2, $3
      sra        $2, $2, 31
      mfhi       $3
      sra        $3, $3, 4
      beqz       $10, .L8005ACFC
       subu      $3, $3, $2
      lw         $2, 0x0($18)
      jr         $2
       nop
  .globl .L8005AC5C
.L8005AC5C:
      mult       $22, $3
      mflo       $2
      nop
      nop
      div        $zero, $2, $7
      bnez       $7, .L8005AC7C
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005AC7C:
      addiu      $1, $0, -0x1
      bne        $7, $1, .L8005AC94
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L8005AC94
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005AC94:
      mflo       $3
  .L8005AC98:
      lw         $2, 0x10($14)
      addu       $2, $4, $2
      lw         $2, 0x0($2)
      j          .L8005ABBC
       addu      $5, $5, $2
  .globl .L8005ACAC
.L8005ACAC:
      j          .L8005ACEC
       addu      $5, $5, $3
  .L8005ACB4:
      beqz       $10, .L8005ACFC
       nop
      lw         $2, 0x0($9)
      jr         $2
       nop
  .globl .L8005ACC8
.L8005ACC8:
      lw         $2, 0x10($14)
      addu       $2, $4, $2
  .L8005ACD0:
      lw         $2, 0x0($2)
      j          .L8005ACFC
       addu      $5, $5, $2
  .globl .L8005ACDC
.L8005ACDC:
      lw         $2, 0x10($14)
      addu       $2, $4, $2
  .L8005ACE4:
      lw         $2, 0x0($2)
      addu       $5, $5, $2
  .L8005ACEC:
      beqz       $12, .L8005ACFC
       addu      $5, $5, $15
      addiu      $5, $5, 0x1
      addiu      $12, $12, -0x1
  .globl .L8005ACFC
.L8005ACFC:
      lw         $23, 0x8($29)
      addiu      $6, $6, 0x1
      sll        $2, $23, 1
      addu       $2, $2, $20
      addu       $5, $5, $2
      addu       $2, $30, $17
      addu       $5, $5, $2
      slt        $2, $6, $16
      bnez       $2, .L8005AA5C
       addiu     $4, $4, 0x4
  .L8005AD24:
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
.end func_8005A5D0

.globl func_8005AD50
.ent func_8005AD50
func_8005AD50:
      addiu      $29, $29, -0x88
      sw         $7, 0x94($29)
      lw         $24, 0x94($29)
      sw         $17, 0x64($29)
      addu       $17, $4, $0
      sw         $31, 0x84($29)
      sw         $30, 0x80($29)
      sw         $23, 0x7C($29)
      sw         $22, 0x78($29)
      sw         $21, 0x74($29)
      sw         $20, 0x70($29)
      sw         $19, 0x6C($29)
      sw         $18, 0x68($29)
      sw         $16, 0x60($29)
      sw         $5, 0x8C($29)
      sw         $6, 0x90($29)
      lbu        $7, 0x82($17)
      lh         $3, 0x46($24)
      mult       $7, $3
      mflo       $7
      lui        $12, (0x2AAAAAAB >> 16)
      ori        $12, $12, (0x2AAAAAAB & 0xFFFF)
      mult       $7, $12
      mfhi       $2
      lbu        $6, 0x87($17)
      nop
      mult       $6, $3
      mflo       $6
      lbu        $5, 0x83($17)
      nop
      mult       $5, $3
      mflo       $8
      nop
      nop
      mult       $6, $12
      sw         $0, 0x2C($29)
      mfhi       $13
      lbu        $11, 0x86($17)
      nop
      mult       $11, $3
      mflo       $5
      sw         $0, 0x30($29)
      sw         $0, 0x34($29)
      mult       $5, $12
      sw         $0, 0x38($29)
      sw         $0, 0x3C($29)
      sw         $0, 0x40($29)
      sw         $0, 0x44($29)
      mfhi       $11
      lbu        $10, 0x84($17)
      nop
      mult       $10, $3
      addu       $22, $0, $0
      addu       $23, $22, $0
      mflo       $4
      addiu      $24, $0, 0x1
      addu       $25, $24, $0
      mult       $4, $12
      sw         $0, 0x48($29)
      sw         $24, 0x50($29)
      sw         $25, 0x54($29)
      sw         $24, 0x58($29)
      mfhi       $10
      lbu        $9, 0x85($17)
      addu       $30, $22, $0
      mult       $9, $3
      lhu        $20, 0x6($17)
      lw         $25, 0x8C($29)
      sra        $7, $7, 31
      sra        $2, $2, 4
      mflo       $3
      subu       $7, $2, $7
      sra        $6, $6, 31
      mult       $3, $12
      sra        $2, $13, 4
      subu       $6, $2, $6
      sra        $5, $5, 31
      sra        $2, $11, 4
      mfhi       $9
      subu       $11, $2, $5
      sra        $4, $4, 31
      mult       $8, $12
      sra        $2, $10, 4
      subu       $10, $2, $4
      addiu      $4, $20, -0x1
      sra        $3, $3, 31
      mfhi       $13
      sra        $2, $9, 4
      subu       $9, $2, $3
      mult       $20, $6
      sra        $8, $8, 31
      addu       $2, $10, $9
      sllv       $3, $11, $24
      addu       $2, $2, $3
      mflo       $6
      lw         $24, 0x90($29)
      sra        $5, $13, 4
      mult       $4, $2
      subu       $5, $5, $8
      subu       $4, $24, $25
      addu       $2, $7, $5
      addu       $2, $2, $6
      mflo       $3
      addu       $2, $2, $3
      sw         $2, 0x4C($29)
      lbu        $24, 0x9B($29)
      slti       $2, $20, 0x2
      beqz       $2, .L8005AF10
       sb        $24, 0x28($29)
      lw         $2, 0x0($17)
      j          .L8005B418
       sw        $25, 0x0($2)
  .L8005AF10:
      lw         $3, 0x5C($17)
      lw         $25, 0x58($29)
      beq        $3, $25, .L8005AF50
       slti      $2, $3, 0x2
      bnez       $2, .L8005AF84
       addiu     $2, $0, 0x2
      bne        $3, $2, .L8005AF84
       nop
      lw         $24, 0x94($29)
      lw         $19, 0x60($17)
      lh         $2, 0x44($24)
      mult       $19, $2
      mflo       $2
      nop
      j          .L8005B02C
       mult      $2, $12
  .L8005AF50:
      lbu        $2, 0x28($29)
      bnez       $2, .L8005AF84
       lui       $3, (0x51EB851F >> 16)
      lw         $2, 0x60($17)
      mult       $2, $4
      mflo       $2
      ori        $3, $3, (0x51EB851F & 0xFFFF)
      nop
      mult       $2, $3
      sra        $2, $2, 31
      mfhi       $3
      j          .L8005B038
       sra       $3, $3, 5
  .L8005AF84:
      lbu        $2, 0x94($17)
      beqz       $2, .L8005B03C
       addu      $19, $0, $0
      lhu        $5, 0x1E($17)
      addiu      $4, $17, 0x18
      jal        func_8005A260
       addiu     $5, $5, -0x1
      addiu      $5, $0, 0x4
      lw         $4, 0x9C($29)
      lhu        $3, 0x96($17)
      lw         $24, 0x4C($29)
      sll        $18, $3, 16
      sra        $16, $18, 16
      jal        func_80058268
       addu      $21, $24, $2
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x4
      beql       $3, $2, .L8005AFF0
       lui       $2, (0x55555556 >> 16)
      lw         $4, 0x9C($29)
      jal        func_80058268
       addu      $5, $2, $0
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x5
      bne        $3, $2, .L8005B008
       slt       $2, $16, $21
      lui        $2, (0x55555556 >> 16)
  .L8005AFF0:
      ori        $2, $2, (0x55555556 & 0xFFFF)
      mult       $16, $2
      sra        $2, $18, 31
      mfhi       $24
      subu       $16, $24, $2
      slt        $2, $16, $21
  .L8005B008:
      beqz       $2, .L8005B03C
       lui       $3, (0x2AAAAAAB >> 16)
      lw         $25, 0x94($29)
      lh         $2, 0x44($25)
      mult       $16, $2
      mflo       $2
      ori        $3, $3, (0x2AAAAAAB & 0xFFFF)
      nop
      mult       $2, $3
  .L8005B02C:
      sra        $2, $2, 31
      mfhi       $3
      sra        $3, $3, 4
  .L8005B038:
      subu       $19, $3, $2
  .L8005B03C:
      beqz       $19, .L8005B358
       addu      $8, $0, $0
      lw         $24, 0x4C($29)
      addiu      $2, $20, -0x1
      blez       $2, .L8005B1E0
       subu      $7, $19, $24
      addiu      $16, $0, -0x81
      addiu      $15, $0, 0x2
      lui        $11, (0x2AAAAAAB >> 16)
      ori        $11, $11, (0x2AAAAAAB & 0xFFFF)
      addiu      $14, $0, 0x82
      addiu      $13, $0, 0x1
      lui        $10, (0x51EB851F >> 16)
      ori        $10, $10, (0x51EB851F & 0xFFFF)
      addiu      $12, $0, 0x81
      addu       $9, $2, $0
  .L8005B07C:
      lw         $2, 0x28($17)
      sll        $5, $8, 2
      addu       $2, $5, $2
      lw         $3, 0x0($2)
      and        $3, $3, $16
      sw         $3, 0x0($2)
      lw         $2, 0x28($17)
      addu       $6, $5, $2
      lw         $2, 0x0($6)
      bne        $2, $15, .L8005B124
       nop
      lw         $2, 0x30($17)
      lw         $25, 0x94($29)
      addu       $2, $5, $2
      lw         $4, 0x0($2)
      lh         $3, 0x44($25)
      mult       $4, $3
      lw         $24, 0x2C($29)
      lw         $2, 0x10($17)
      mflo       $3
      addu       $2, $5, $2
      lw         $5, 0x0($2)
      mult       $3, $11
      addu       $24, $24, $5
      sra        $3, $3, 31
      mfhi       $18
      sra        $2, $18, 4
      subu       $4, $2, $3
      slt        $2, $5, $4
      beqz       $2, .L8005B110
       sw        $24, 0x2C($29)
      subu       $2, $4, $5
      lw         $25, 0x34($29)
      addu       $22, $22, $2
      addiu      $25, $25, 0x1
      j          .L8005B1D0
       sw        $25, 0x34($29)
  .L8005B110:
      sw         $14, 0x0($6)
      lw         $24, 0x30($29)
      addiu      $24, $24, 0x1
      j          .L8005B1D0
       sw        $24, 0x30($29)
  .L8005B124:
      bnel       $2, $13, .L8005B1A0
       addiu     $30, $30, 0x1
      lw         $2, 0x30($17)
      addu       $2, $5, $2
      lw         $3, 0x0($2)
      mult       $3, $7
      lw         $24, 0x38($29)
      lw         $2, 0x10($17)
      mflo       $3
      addu       $2, $5, $2
      lw         $5, 0x0($2)
      mult       $3, $10
      addu       $24, $24, $5
      sra        $3, $3, 31
      mfhi       $18
      sra        $2, $18, 5
      subu       $3, $2, $3
      slt        $2, $5, $3
      beqz       $2, .L8005B18C
       sw        $24, 0x38($29)
      subu       $2, $3, $5
      lw         $25, 0x40($29)
      addu       $23, $23, $2
      addiu      $25, $25, 0x1
      j          .L8005B1D0
       sw        $25, 0x40($29)
  .L8005B18C:
      sw         $12, 0x0($6)
      lw         $24, 0x3C($29)
      addiu      $24, $24, 0x1
      j          .L8005B1D0
       sw        $24, 0x3C($29)
  .L8005B1A0:
      lw         $2, 0x10($17)
      lw         $3, 0x18($17)
      lw         $25, 0x44($29)
      lw         $24, 0x48($29)
      addu       $2, $5, $2
      addu       $3, $5, $3
      lw         $2, 0x0($2)
      lw         $3, 0x0($3)
      addu       $25, $25, $2
      addu       $24, $24, $3
      sw         $25, 0x44($29)
      sw         $24, 0x48($29)
  .L8005B1D0:
      addiu      $8, $8, 0x1
      slt        $2, $8, $9
      bnez       $2, .L8005B07C
       nop
  .L8005B1E0:
      lw         $25, 0x48($29)
      lw         $24, 0x44($29)
      subu       $4, $25, $24
      lw         $25, 0x2C($29)
      lw         $24, 0x38($29)
      addu       $2, $25, $24
      lw         $25, 0x44($29)
      addu       $3, $2, $25
      slt        $2, $3, $7
      bnez       $2, .L8005B248
       subu      $3, $7, $3
      addu       $4, $17, $0
      addu       $6, $0, $0
      addu       $7, $6, $0
      lw         $5, 0x8C($29)
      lw         $24, 0x94($29)
      addiu      $2, $0, 0x1
      sw         $2, 0x10($29)
      sw         $2, 0x14($29)
      sw         $2, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $0, 0x20($29)
      jal        func_8005A5D0
       sw        $24, 0x24($29)
      j          .L8005B418
       nop
  .L8005B248:
      blez       $22, .L8005B278
       addu      $8, $0, $0
      slt        $2, $3, $22
      beqz       $2, .L8005B268
       addiu     $25, $0, 0x2
      lw         $8, 0x34($29)
      j          .L8005B318
       sw        $25, 0x50($29)
  .L8005B268:
      addiu      $24, $0, 0x10
      subu       $3, $3, $22
      beqz       $3, .L8005B318
       sw        $24, 0x50($29)
  .L8005B278:
      blez       $23, .L8005B2A4
       slt       $2, $3, $23
      beqz       $2, .L8005B294
       addiu     $25, $0, 0x2
      lw         $8, 0x40($29)
      j          .L8005B318
       sw        $25, 0x54($29)
  .L8005B294:
      addiu      $24, $0, 0x10
      subu       $3, $3, $23
      beqz       $3, .L8005B318
       sw        $24, 0x54($29)
  .L8005B2A4:
      beqz       $30, .L8005B2EC
       slt       $2, $3, $4
      beqz       $2, .L8005B2C0
       addiu     $25, $0, 0x2
      sw         $25, 0x58($29)
      j          .L8005B318
       addu      $8, $30, $0
  .L8005B2C0:
      slt        $2, $4, $3
      beqz       $2, .L8005B2DC
       addiu     $24, $0, 0x8
      sw         $24, 0x58($29)
      subu       $3, $3, $4
      j          .L8005B318
       addu      $8, $30, $0
  .L8005B2DC:
      addiu      $25, $0, 0x4
      sw         $25, 0x58($29)
      j          .L8005B318
       addu      $3, $0, $0
  .L8005B2EC:
      addiu      $24, $0, 0x20
      addu       $25, $24, $0
      sw         $24, 0x50($29)
      lw         $24, 0x34($29)
      sw         $25, 0x54($29)
      lw         $25, 0x30($29)
      addu       $2, $24, $25
      lw         $24, 0x40($29)
      lw         $25, 0x3C($29)
      addu       $2, $2, $24
      addu       $8, $2, $25
  .L8005B318:
      lw         $24, 0x50($29)
      lw         $5, 0x8C($29)
      lw         $25, 0x54($29)
      sw         $24, 0x10($29)
      lw         $24, 0x58($29)
      addu       $4, $17, $0
      sw         $25, 0x14($29)
      lw         $25, 0x94($29)
      addu       $6, $19, $0
      sw         $3, 0x1C($29)
      sw         $8, 0x20($29)
      sw         $24, 0x18($29)
      jal        func_8005A5D0
       sw        $25, 0x24($29)
      j          .L8005B418
       nop
  .L8005B358:
      addiu      $2, $20, -0x1
      blez       $2, .L8005B3FC
       addiu     $10, $0, 0x2
      lui        $9, (0x2AAAAAAB >> 16)
      ori        $9, $9, (0x2AAAAAAB & 0xFFFF)
      addu       $7, $2, $0
  .L8005B370:
      lw         $2, 0x28($17)
      sll        $6, $8, 2
      addu       $2, $6, $2
      lw         $2, 0x0($2)
      bnel       $2, $10, .L8005B3F0
       addiu     $8, $8, 0x1
      lw         $2, 0x30($17)
      lw         $24, 0x94($29)
      addu       $2, $6, $2
      lw         $4, 0x0($2)
      lh         $3, 0x44($24)
      mult       $4, $3
      mflo       $3
      lw         $2, 0x10($17)
      nop
      mult       $3, $9
      addu       $5, $6, $2
      lw         $2, 0x0($5)
      sra        $3, $3, 31
      mfhi       $11
      sra        $4, $11, 4
      subu       $4, $4, $3
      slt        $2, $2, $4
      bnel       $2, $0, .L8005B3D4
       sw        $4, 0x0($5)
  .L8005B3D4:
      lw         $2, 0x10($17)
      lw         $3, 0x18($17)
      addu       $2, $6, $2
      lw         $2, 0x0($2)
      addu       $3, $6, $3
      sw         $2, 0x0($3)
      addiu      $8, $8, 0x1
  .L8005B3F0:
      slt        $2, $8, $7
      bnez       $2, .L8005B370
       nop
  .L8005B3FC:
      lbu        $2, 0x28($29)
      lw         $5, 0x8C($29)
      lw         $6, 0x90($29)
      lw         $7, 0x94($29)
      addu       $4, $17, $0
      jal        func_8005A2A4
       sw        $2, 0x10($29)
  .L8005B418:
      lw         $31, 0x84($29)
      lw         $30, 0x80($29)
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
.end func_8005AD50

.globl func_8005B448
.ent func_8005B448
func_8005B448:
      addiu      $29, $29, -0x8
      addu       $13, $4, $0
      sw         $17, 0x4($29)
      sw         $16, 0x0($29)
      lbu        $12, 0x82($13)
      lh         $3, 0x46($6)
      mult       $12, $3
      mflo       $6
      lui        $10, (0x2AAAAAAB >> 16)
      ori        $10, $10, (0x2AAAAAAB & 0xFFFF)
      mult       $6, $10
      mfhi       $2
      lbu        $14, 0x87($13)
      nop
      mult       $14, $3
      mflo       $4
      lbu        $9, 0x86($13)
      nop
      mult       $9, $3
      mflo       $9
      nop
      nop
      mult       $4, $10
      mfhi       $14
      nop
      nop
      mult       $9, $10
      mfhi       $25
      lbu        $8, 0x84($13)
      nop
      mult       $8, $3
      mflo       $8
      lbu        $15, 0x85($13)
      sra        $6, $6, 31
      mult       $8, $10
      sra        $2, $2, 4
      subu       $12, $2, $6
      sra        $4, $4, 31
      sra        $2, $14, 4
      mfhi       $24
      subu       $14, $2, $4
      sra        $9, $9, 31
      mult       $15, $3
      sra        $2, $25, 4
      subu       $9, $2, $9
      sra        $8, $8, 31
      sra        $2, $24, 4
      mflo       $3
      subu       $8, $2, $8
      lw         $2, 0x18($5)
      mult       $3, $10
      addu       $11, $0, $0
      addu       $2, $2, $12
      addu       $6, $2, $14
      sra        $3, $3, 31
      mfhi       $10
      sra        $4, $10, 4
      lhu        $10, 0xE($13)
      beqz       $10, .L8005B5D8
       subu      $15, $4, $3
      sll        $9, $9, 1
      addiu      $16, $0, 0x1
      addiu      $25, $0, 0x2
      addiu      $24, $10, -0x2
  .L8005B548:
      lw         $2, 0x8($13)
      sll        $3, $11, 2
      addu       $2, $3, $2
      sw         $6, 0x0($2)
      lw         $2, 0x38($13)
      lw         $4, 0x20($13)
      addu       $2, $3, $2
      addu       $3, $3, $4
      lw         $5, 0x0($2)
      lw         $3, 0x0($3)
      slt        $2, $5, $3
      bnel       $2, $0, .L8005B57C
       addu      $5, $3, $0
  .L8005B57C:
      blez       $5, .L8005B594
       addu      $2, $5, $9
      addu       $2, $2, $8
      addu       $2, $2, $15
      j          .L8005B5A0
       addu      $6, $6, $2
  .L8005B594:
      lbu        $2, 0x88($13)
      beql       $2, $0, .L8005B5A0
       addiu     $6, $6, 0x1
  .L8005B5A0:
      bne        $7, $16, .L8005B5B8
       addu      $6, $6, $14
      bnel       $11, $0, .L8005B5CC
       addiu     $11, $11, 0x1
      j          .L8005B5C8
       addu      $6, $6, $12
  .L8005B5B8:
      bnel       $7, $25, .L8005B5CC
       addiu     $11, $11, 0x1
      beql       $11, $24, .L8005B5C8
       addu      $6, $6, $12
  .L8005B5C8:
      addiu      $11, $11, 0x1
  .L8005B5CC:
      slt        $2, $11, $10
      bnez       $2, .L8005B548
       nop
  .L8005B5D8:
      lw         $17, 0x4($29)
      lw         $16, 0x0($29)
      jr         $31
       addiu     $29, $29, 0x8
.end func_8005B448

.globl func_8005B5E8
.ent func_8005B5E8
func_8005B5E8:
      addiu      $29, $29, -0x18
      addu       $7, $4, $0
      sw         $31, 0x10($29)
      lw         $2, 0x68($7)
      bnez       $2, .L8005B614
       addiu     $2, $0, 0x1
      addiu      $4, $0, 0x20
      addiu      $5, $0, 0x40
      addiu      $6, $0, 0x10
      jal        func_80060BC0
       addiu     $7, $7, 0x68
  .L8005B614:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8005B5E8

.globl func_8005B620
.ent func_8005B620
func_8005B620:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      andi       $7, $7, 0xFF
      sw         $31, 0x20($29)
      beqz       $7, .L8005B694
       sw        $16, 0x10($29)
      addu       $16, $19, $0
      slt        $2, $16, $18
      beqz       $2, .L8005B6D4
       addiu     $2, $0, -0x1
  .L8005B65C:
      lw         $2, 0xC($17)
      addu       $4, $17, $0
      lw         $2, 0x18($2)
      jalr       $2
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L8005B6D4
       addiu     $2, $16, 0x1
      addiu      $16, $16, 0x1
      slt        $2, $16, $18
      bnez       $2, .L8005B65C
       addiu     $2, $0, -0x1
      j          .L8005B6D4
       nop
  .L8005B694:
      addiu      $16, $18, -0x1
      slt        $2, $16, $19
      bnez       $2, .L8005B6D4
       addiu     $2, $0, -0x1
  .L8005B6A4:
      lw         $2, 0xC($17)
      addu       $4, $17, $0
      lw         $2, 0x18($2)
      jalr       $2
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L8005B6D4
       addiu     $2, $16, 0x1
      addiu      $16, $16, -0x1
      slt        $2, $16, $19
      beqz       $2, .L8005B6A4
       addiu     $2, $0, -0x1
  .L8005B6D4:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8005B620

.globl func_8005B6F0
.ent func_8005B6F0
func_8005B6F0:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      addu       $4, $16, $0
      addiu      $5, $0, 0x1
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      jal        func_80058268
       sw        $18, 0x18($29)
      addu       $4, $16, $0
      lw         $19, 0x0($2)
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $18, 0x4($2)
      addu       $2, $19, $18
      slt        $2, $20, $2
      bnez       $2, .L8005B750
       addu      $4, $17, $0
      j          .L8005B7C8
       addu      $2, $0, $0
  .L8005B750:
      lbu        $6, 0x10($16)
      jal        func_80058568
       addu      $5, $16, $0
      addu       $17, $2, $0
      beqz       $17, .L8005B7C4
       subu      $18, $20, $19
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      addu       $4, $17, $0
      addiu      $5, $0, 0x1
      jal        func_80058268
       sw        $18, 0x4($2)
      addu       $4, $17, $0
      addiu      $5, $0, 0x1
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $17, $0
      lw         $2, 0x4($2)
      addiu      $5, $0, 0x1
      subu       $2, $2, $18
      jal        func_80058268
       sw        $2, 0x4($16)
      sw         $20, 0x0($2)
      lhu        $3, 0x2($17)
      addiu      $2, $0, 0x1
      ori        $3, $3, 0x100
      j          .L8005B7C8
       sh        $3, 0x2($17)
  .L8005B7C4:
      addiu      $2, $0, -0x5
  .L8005B7C8:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8005B6F0

.globl func_8005B7E8
.ent func_8005B7E8
func_8005B7E8:
      addiu      $29, $29, -0x40
      lw         $3, 0x58($29)
      lw         $8, 0x54($29)
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $23, 0x34($29)
      addu       $23, $6, $0
      sw         $20, 0x28($29)
      addu       $20, $0, $0
      sw         $19, 0x24($29)
      addu       $19, $20, $0
      sw         $30, 0x38($29)
      lw         $30, 0x60($29)
      sw         $5, 0x44($29)
      addiu      $5, $0, 0x1
      sw         $31, 0x3C($29)
      sw         $22, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      lw         $2, 0x1C($8)
      lbu        $18, 0x67($29)
      jal        func_80058268
       subu      $22, $2, $3
      addu       $4, $16, $0
      lw         $17, 0x0($2)
      jal        func_80058268
       addiu     $5, $0, 0x1
      addiu      $7, $0, 0x1
      lw         $8, 0x44($29)
      lw         $2, 0x4($2)
      addiu      $16, $8, 0x34
      addu       $4, $16, $0
      addu       $5, $17, $0
      addu       $21, $17, $2
      jal        func_8005B620
       addu      $6, $21, $0
      addu       $3, $2, $0
      addiu      $2, $0, -0x1
      bne        $3, $2, .L8005B894
       sw        $3, 0x0($30)
      j          .L8005B968
       addu      $2, $0, $0
  .L8005B894:
      beqz       $23, .L8005B8C8
       addu      $4, $16, $0
      lw         $8, 0x44($29)
      addu       $5, $23, $0
      lw         $2, 0x40($8)
      lw         $8, 0x54($29)
      subu       $3, $3, $17
      sw         $3, 0x10($29)
      lw         $6, 0x0($8)
      lw         $2, 0x14($2)
      jalr       $2
       addu      $7, $17, $0
      addu       $20, $2, $0
  .L8005B8C8:
      slt        $2, $22, $20
      beqz       $2, .L8005B8E8
       andi      $2, $18, 0xFF
      bnez       $2, .L8005B95C
       addu      $2, $0, $0
      lw         $8, 0x5C($29)
      j          .L8005B968
       sw        $20, 0x0($8)
  .L8005B8E8:
      addu       $18, $16, $0
  .L8005B8EC:
      addu       $4, $18, $0
      lw         $5, 0x0($30)
      addu       $6, $21, $0
      jal        func_8005B620
       addiu     $7, $0, 0x1
      addu       $16, $2, $0
      addiu      $8, $0, -0x1
      beq        $16, $8, .L8005B95C
       nop
      beqz       $23, .L8005B944
       addu      $4, $18, $0
      lw         $8, 0x44($29)
      addu       $5, $23, $0
      lw         $2, 0x40($8)
      lw         $8, 0x54($29)
      subu       $3, $16, $17
      sw         $3, 0x10($29)
      lw         $6, 0x0($8)
      lw         $2, 0x14($2)
      jalr       $2
       addu      $7, $17, $0
      addu       $19, $2, $0
  .L8005B944:
      slt        $2, $22, $19
      bnez       $2, .L8005B95C
       nop
      sw         $16, 0x0($30)
      j          .L8005B8EC
       addu      $20, $19, $0
  .L8005B95C:
      lw         $8, 0x5C($29)
      addiu      $2, $0, 0x1
      sw         $20, 0x0($8)
  .L8005B968:
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
.end func_8005B7E8

.globl func_8005B998
.ent func_8005B998
func_8005B998:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $18, 0x28($29)
      addu       $18, $6, $0
      sw         $31, 0x2C($29)
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $16, $0
      lw         $7, 0x0($2)
      lw         $8, 0x4($2)
      lw         $9, 0x8($2)
      lw         $10, 0xC($2)
      sw         $7, 0x10($29)
      sw         $8, 0x14($29)
      sw         $9, 0x18($29)
      sw         $10, 0x1C($29)
      jal        func_80058268
       addu      $5, $0, $0
      lw         $3, 0x20($17)
      lw         $4, 0x1C($29)
      lw         $5, 0x10($2)
      slt        $3, $3, $4
      bnel       $3, $0, .L8005BA04
       sw        $4, 0x20($17)
  .L8005BA04:
      lw         $2, 0x14($29)
      lw         $3, 0x18($17)
      slt        $2, $2, $3
      beqz       $2, .L8005BA1C
       addiu     $2, $0, 0x1
      sb         $2, 0x252($17)
  .L8005BA1C:
      lw         $3, 0x24($17)
      addiu      $2, $0, -0x1
      beql       $3, $2, .L8005BA48
       sw        $5, 0x24($17)
      beq        $3, $5, .L8005BA48
       addiu     $2, $0, 0x1
      sb         $2, 0x0($18)
      lw         $2, 0x24($17)
      slt        $2, $2, $5
      bnel       $2, $0, .L8005BA48
       sw        $5, 0x24($17)
  .L8005BA48:
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8005B998

.globl func_8005BA60
.ent func_8005BA60
func_8005BA60:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $5, 0x0($5)
      jal        func_800849EC
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8005BA60

.globl func_8005BA80
.ent func_8005BA80
func_8005BA80:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x10($17)
      beqz       $2, .L8005BAAC
       addu      $16, $5, $0
      lw         $2, 0xC($4)
      j          .L8005BAEC
       sw        $2, 0xC($16)
  .L8005BAAC:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x4($17)
      lw         $3, 0x9C($3)
      lbu        $2, 0x0($2)
      lh         $3, 0x3E($3)
      mult       $3, $2
      lw         $2, 0x30($16)
      mflo       $7
      subu       $3, $7, $2
      blez       $3, .L8005BAF0
       addiu     $2, $0, 0x1
      lw         $2, 0x18($16)
      sw         $3, 0x2C($16)
      addu       $2, $2, $3
      sw         $2, 0x20($16)
  .L8005BAEC:
      addiu      $2, $0, 0x1
  .L8005BAF0:
      sb         $2, 0x1F($17)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_8005BA80

.globl func_8005BB0C
.ent func_8005BB0C
func_8005BB0C:
      lw         $2, 0x10($6)
      beqz       $2, .L8005BB20
       addiu     $2, $0, 0x1
      j          .L8005BB7C
       sb        $2, 0x1F($6)
  .L8005BB20:
      lw         $3, 0x4($6)
      lbu        $2, 0x11($4)
      lw         $3, 0x9C($3)
      sll        $2, $2, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      lbu        $2, 0x9($2)
      bnez       $2, .L8005BB7C
       addiu     $2, $0, 0x1
      lw         $3, 0x4($6)
      sb         $2, 0x1F($6)
      lw         $2, 0x9C($3)
      lh         $3, 0x3E($2)
      lw         $2, 0x20($5)
      addu       $2, $2, $3
      sw         $2, 0x20($5)
      lw         $2, 0x4($6)
      lw         $2, 0x9C($2)
      lh         $3, 0x3E($2)
      lw         $2, 0x2C($5)
      slt        $2, $2, $3
      bnel       $2, $0, .L8005BB7C
       sw        $3, 0x2C($5)
  .L8005BB7C:
      jr         $31
       addu      $2, $0, $0
.end func_8005BB0C

.globl func_8005BB84
.ent func_8005BB84
func_8005BB84:
      lw         $2, 0x10($6)
      beqz       $2, .L8005BB98
       addiu     $2, $0, 0x1
      j          .L8005BBD0
       sb        $2, 0x1F($6)
  .L8005BB98:
      lw         $3, 0x4($6)
      sb         $2, 0x1F($6)
      lw         $2, 0x9C($3)
      lh         $3, 0x3E($2)
      lw         $2, 0x20($5)
      addu       $2, $2, $3
      sw         $2, 0x20($5)
      lw         $2, 0x4($6)
      lw         $2, 0x9C($2)
      lh         $3, 0x3E($2)
      lw         $2, 0x2C($5)
      slt        $2, $2, $3
      bnel       $2, $0, .L8005BBD0
       sw        $3, 0x2C($5)
  .L8005BBD0:
      jr         $31
       addu      $2, $0, $0
.end func_8005BB84

.globl func_8005BBD8
.ent func_8005BBD8
func_8005BBD8:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x14($29)
      lw         $3, 0x4($6)
      lw         $2, 0x8($6)
      lw         $3, 0x9C($3)
      lw         $5, 0xC($6)
      lh         $3, 0x40($3)
      subu       $2, $2, $5
      div        $zero, $2, $3
      bnez       $3, .L8005BC10
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005BC10:
      addiu      $1, $0, -0x1
      bne        $3, $1, .L8005BC28
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L8005BC28
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005BC28:
      mflo       $2
      addiu      $2, $2, 0x1
      nop
      mult       $2, $3
      mflo       $3
      addu       $5, $5, $3
      sw         $5, 0x8($6)
      lhu        $2, 0x250($16)
      addiu      $5, $0, 0x9
      addiu      $2, $2, 0x1
      jal        func_80058268
       sh        $2, 0x250($16)
      lhu        $3, 0x250($16)
      sh         $3, 0x0($2)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_8005BBD8

.globl func_8005BC74
.ent func_8005BC74
func_8005BC74:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lhu        $2, 0x250($16)
      addiu      $2, $2, -0x1
      sh         $2, 0x250($16)
      sll        $2, $2, 16
      bgez       $2, .L8005BCA4
       addu      $17, $6, $0
      sh         $0, 0x250($16)
  .L8005BCA4:
      jal        func_80058268
       addiu     $5, $0, 0x9
      lhu        $3, 0x250($16)
      sh         $3, 0x0($2)
      addiu      $3, $0, 0x1
      sb         $3, 0x1F($17)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_8005BC74

.globl func_8005BCD4
.ent func_8005BCD4
func_8005BCD4:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $31, 0x18($29)
      lhu        $2, 0x250($16)
      addiu      $5, $0, 0x9
      addiu      $2, $2, 0x1
      jal        func_80058268
       sh        $2, 0x250($16)
      lhu        $3, 0x250($16)
      sh         $3, 0x0($2)
      addiu      $3, $0, 0x1
      sb         $3, 0x1F($17)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_8005BCD4

.globl func_8005BD28
.ent func_8005BD28
func_8005BD28:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lhu        $2, 0x250($16)
      addiu      $2, $2, -0x1
      sh         $2, 0x250($16)
      sll        $2, $2, 16
      bgez       $2, .L8005BD58
       addu      $17, $6, $0
      sh         $0, 0x250($16)
  .L8005BD58:
      jal        func_80058268
       addiu     $5, $0, 0x9
      lhu        $3, 0x250($16)
      sh         $3, 0x0($2)
      addiu      $3, $0, 0x1
      sb         $3, 0x1F($17)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_8005BD28

.globl func_8005BD88
.ent func_8005BD88
func_8005BD88:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $31, 0x18($29)
      lhu        $2, 0x250($16)
      addiu      $5, $0, 0x9
      addiu      $2, $2, 0x1
      jal        func_80058268
       sh        $2, 0x250($16)
      lhu        $3, 0x250($16)
      sh         $3, 0x0($2)
      addiu      $3, $0, 0x1
      sb         $3, 0x1F($17)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_8005BD88

.globl func_8005BDDC
.ent func_8005BDDC
func_8005BDDC:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lhu        $2, 0x250($16)
      addiu      $2, $2, -0x1
      sh         $2, 0x250($16)
      sll        $2, $2, 16
      bgez       $2, .L8005BE0C
       addu      $17, $6, $0
      sh         $0, 0x250($16)
  .L8005BE0C:
      jal        func_80058268
       addiu     $5, $0, 0x9
      lhu        $3, 0x250($16)
      sh         $3, 0x0($2)
      addiu      $3, $0, 0x1
      sb         $3, 0x1F($17)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_8005BDDC

.globl func_8005BE3C
.ent func_8005BE3C
func_8005BE3C:
      addiu      $29, $29, -0x18
      addu       $3, $4, $0
      sw         $31, 0x10($29)
      lw         $2, 0x10($6)
      beqz       $2, .L8005BE68
       addu      $4, $5, $0
      lw         $2, 0xC($3)
      sw         $2, 0xC($4)
      addiu      $2, $0, 0x1
      j          .L8005BE7C
       sb        $2, 0x1F($6)
  .L8005BE68:
      lw         $2, 0x24C($4)
      bnez       $2, .L8005BE7C
       nop
      jal        func_80060AB4
       addu      $5, $0, $0
  .L8005BE7C:
      lw         $31, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_8005BE3C

.globl func_8005BE8C
.ent func_8005BE8C
func_8005BE8C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x10($6)
      beqz       $2, .L8005BEB4
       nop
      lw         $2, 0xC($4)
      sw         $2, 0xC($5)
      addiu      $2, $0, 0x1
      j          .L8005BEBC
       sb        $2, 0x1F($6)
  .L8005BEB4:
      jal        func_80060AD8
       addu      $4, $5, $0
  .L8005BEBC:
      lw         $31, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_8005BE8C

.globl func_8005BECC
.ent func_8005BECC
func_8005BECC:
      addiu      $29, $29, -0x18
      addu       $3, $4, $0
      sw         $31, 0x10($29)
      lw         $2, 0x10($6)
      beqz       $2, .L8005BEF8
       addu      $4, $5, $0
      lw         $2, 0xC($3)
      sw         $2, 0xC($4)
      addiu      $2, $0, 0x1
      j          .L8005BF0C
       sb        $2, 0x1F($6)
  .L8005BEF8:
      lw         $2, 0x24C($4)
      bnez       $2, .L8005BF0C
       nop
      jal        func_80060AB4
       addiu     $5, $0, 0x1
  .L8005BF0C:
      lw         $31, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_8005BECC

.globl func_8005BF1C
.ent func_8005BF1C
func_8005BF1C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x10($6)
      beqz       $2, .L8005BF44
       nop
      lw         $2, 0xC($4)
      sw         $2, 0xC($5)
      addiu      $2, $0, 0x1
      j          .L8005BF4C
       sb        $2, 0x1F($6)
  .L8005BF44:
      jal        func_80060AD8
       addu      $4, $5, $0
  .L8005BF4C:
      lw         $31, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_8005BF1C

.globl func_8005BF5C
.ent func_8005BF5C
func_8005BF5C:
      addiu      $29, $29, -0x18
      addu       $3, $4, $0
      sw         $31, 0x10($29)
      lw         $2, 0x10($6)
      beqz       $2, .L8005BF88
       addu      $4, $5, $0
      lw         $2, 0xC($3)
      sw         $2, 0xC($4)
      addiu      $2, $0, 0x1
      j          .L8005BF9C
       sb        $2, 0x1F($6)
  .L8005BF88:
      lw         $2, 0x24C($4)
      bnez       $2, .L8005BF9C
       nop
      jal        func_80060AB4
       addiu     $5, $0, 0x2
  .L8005BF9C:
      lw         $31, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_8005BF5C

.globl func_8005BFAC
.ent func_8005BFAC
func_8005BFAC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x10($6)
      beqz       $2, .L8005BFD4
       nop
      lw         $2, 0xC($4)
      sw         $2, 0xC($5)
      addiu      $2, $0, 0x1
      j          .L8005BFDC
       sb        $2, 0x1F($6)
  .L8005BFD4:
      jal        func_80060AD8
       addu      $4, $5, $0
  .L8005BFDC:
      lw         $31, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_8005BFAC

.globl func_8005BFEC
.ent func_8005BFEC
func_8005BFEC:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x10($19)
      beqz       $2, .L8005C028
       addu      $18, $5, $0
      lw         $2, 0xC($17)
      j          .L8005C1E8
       sw        $2, 0xC($18)
  .L8005C028:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $20, 0x4($2)
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      lw         $3, 0x18($18)
      addu       $5, $0, $0
      jal        func_80058268
       sw        $3, 0x4($2)
      addu       $4, $17, $0
      lw         $3, 0x20($18)
      addu       $5, $0, $0
      jal        func_80058268
       sw        $3, 0xC($2)
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      lw         $4, 0x4($19)
      lw         $3, 0xC($16)
      lw         $4, 0x9C($4)
      lw         $2, 0x4($2)
      lh         $4, 0x3E($4)
      subu       $3, $3, $2
      slt        $3, $3, $4
      bnez       $3, .L8005C0F8
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $17, $0
      lw         $16, 0xC($16)
      lw         $2, 0x4($2)
      addiu      $5, $0, 0x2
      jal        func_80058268
       subu      $16, $16, $2
      lhu        $2, 0x2($2)
      slt        $16, $16, $2
      beqz       $16, .L8005C148
       addu      $4, $17, $0
  .L8005C0F8:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x4($19)
      lw         $3, 0x9C($3)
      lhu        $2, 0x2($2)
      lh         $3, 0x3E($3)
      slt        $2, $3, $2
      beqz       $2, .L8005C128
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lhu        $3, 0x2($2)
  .L8005C128:
      lw         $2, 0x18($18)
      addu       $2, $2, $3
      sw         $2, 0x20($18)
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $3, 0x20($18)
      sw         $3, 0xC($2)
  .L8005C148:
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $3, 0x8($19)
      sw         $3, 0x0($2)
      lw         $2, 0x24C($18)
      beqz       $2, .L8005C1B0
       andi      $2, $20, 0x2
      beqz       $2, .L8005C19C
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       addu      $16, $2, $0
      lhu        $3, 0x0($2)
      lw         $2, 0x8($19)
      addu       $2, $2, $3
      j          .L8005C1C8
       sw        $2, 0x8($16)
  .L8005C19C:
      jal        func_80058268
       addu      $5, $0, $0
      lw         $3, 0x8($19)
      j          .L8005C1C4
       addiu     $3, $3, 0x1
  .L8005C1B0:
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $3, 0x1C($18)
      addiu      $3, $3, -0x1
  .L8005C1C4:
      sw         $3, 0x8($2)
  .L8005C1C8:
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $3, 0x8($2)
      lw         $2, 0x10($19)
      addiu      $2, $2, 0x1
      sw         $3, 0x8($19)
      sw         $2, 0x10($19)
  .L8005C1E8:
      addiu      $2, $0, 0x1
      sb         $2, 0x1F($19)
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x28
.end func_8005BFEC

.globl func_8005C214
.ent func_8005C214
func_8005C214:
      addiu      $29, $29, -0x40
      sw         $19, 0x34($29)
      addu       $19, $5, $0
      sw         $17, 0x2C($29)
      addu       $17, $6, $0
      addu       $5, $4, $0
      sw         $18, 0x30($29)
      addiu      $18, $29, 0x20
      sw         $31, 0x38($29)
      sw         $16, 0x28($29)
      lw         $4, 0x4($17)
      lw         $7, 0x0($19)
      jal        func_80084994
       addu      $6, $18, $0
      lui        $16, %hi(D_800EC600)
      addiu      $16, $16, %lo(D_800EC600)
      jal        func_80017780
       addu      $4, $16, $0
      addu       $4, $16, $0
      addu       $5, $18, $0
      addu       $6, $0, $0
      sw         $0, 0x10($29)
      sw         $2, 0x14($29)
      lw         $2, 0x0($19)
      addu       $7, $6, $0
      jal        func_800846E8
       sw        $2, 0x18($29)
      lw         $3, 0x4($17)
      lw         $3, 0x9C($3)
      lh         $3, 0x42($3)
      mult       $3, $2
      lw         $4, 0xC($17)
      lw         $2, 0x8($17)
      mflo       $3
      subu       $2, $2, $4
      nop
      div        $zero, $2, $3
      bnez       $3, .L8005C2B4
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005C2B4:
      addiu      $1, $0, -0x1
      bne        $3, $1, .L8005C2CC
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L8005C2CC
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005C2CC:
      mflo       $2
      addiu      $2, $2, 0x1
      nop
      mult       $2, $3
      lw         $2, 0x10($17)
      addiu      $2, $2, 0x1
      sw         $2, 0x10($17)
      mflo       $3
      addu       $4, $4, $3
      sw         $4, 0x8($17)
      lw         $31, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x40
.end func_8005C214

.globl func_8005C314
.ent func_8005C314
func_8005C314:
      addiu      $29, $29, -0x40
      sw         $17, 0x2C($29)
      addu       $17, $4, $0
      sw         $18, 0x30($29)
      addu       $18, $5, $0
      sw         $19, 0x34($29)
      addu       $19, $6, $0
      addu       $5, $0, $0
      addiu      $2, $0, 0x1
      sw         $31, 0x38($29)
      sw         $16, 0x28($29)
      jal        func_80058268
       sb        $2, 0x24($29)
      addu       $4, $17, $0
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      lw         $11, 0xC($2)
      sw         $8, 0x10($29)
      sw         $9, 0x14($29)
      sw         $10, 0x18($29)
      sw         $11, 0x1C($29)
      jal        func_80058268
       addiu     $5, $0, 0x9
      lhu        $3, 0x250($18)
      addu       $5, $17, $0
      sh         $3, 0x0($2)
      lw         $2, 0x8($19)
      addiu      $16, $29, 0x20
      sw         $2, 0x10($29)
      lw         $4, 0x4($19)
      lw         $7, 0x0($18)
      jal        func_80084994
       addu      $6, $16, $0
      lw         $5, 0x0($18)
      jal        func_80084A20
       addu      $4, $16, $0
      addu       $6, $2, $0
      bgez       $6, .L8005C3B8
       addu      $3, $6, $0
      addiu      $3, $6, 0x3
  .L8005C3B8:
      addu       $7, $6, $0
      lw         $2, 0x8($19)
      sra        $3, $3, 2
      addu       $2, $2, $3
      sw         $2, 0x8($19)
      bgez       $6, .L8005C3D8
       sw        $2, 0x18($29)
      addiu      $7, $6, 0x7
  .L8005C3D8:
      addu       $4, $17, $0
      addu       $5, $0, $0
      lw         $2, 0x18($18)
      sra        $3, $7, 3
      addu       $2, $2, $3
      sw         $2, 0x14($29)
      srl        $2, $6, 31
      addu       $2, $6, $2
      lw         $3, 0x18($18)
      sra        $2, $2, 1
      addu       $3, $3, $2
      jal        func_80058268
       sw        $3, 0x1C($29)
      addu       $4, $17, $0
      lw         $8, 0x10($29)
      lw         $9, 0x14($29)
      lw         $10, 0x18($29)
      lw         $11, 0x1C($29)
      sw         $8, 0x0($2)
      sw         $9, 0x4($2)
      sw         $10, 0x8($2)
      sw         $11, 0xC($2)
      jal        func_80058268
       addiu     $5, $0, 0x4
      addu       $4, $17, $0
      addu       $5, $18, $0
      addiu      $3, $0, 0x2
      sb         $3, 0x0($2)
      lw         $2, 0x10($19)
      addiu      $6, $29, 0x24
      addiu      $2, $2, 0x1
      jal        func_8005B998
       sw        $2, 0x10($19)
      lw         $31, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x40
.end func_8005C314

.globl func_8005C47C
.ent func_8005C47C
func_8005C47C:
      addiu      $29, $29, -0x50
      sw         $18, 0x40($29)
      addu       $18, $4, $0
      sw         $19, 0x44($29)
      addu       $19, $5, $0
      sw         $17, 0x3C($29)
      addu       $17, $6, $0
      addiu      $5, $29, 0x10
      sw         $31, 0x48($29)
      jal        func_80086718
       sw        $16, 0x38($29)
      andi       $2, $2, 0xFF
      beqz       $2, .L8005C6A0
       addu      $2, $0, $0
      lw         $3, 0x18($29)
      lw         $2, 0x10($29)
      lw         $4, 0x1C($29)
      lw         $5, 0x14($29)
      subu       $3, $3, $2
      subu       $4, $4, $5
      sw         $3, 0x20($29)
      sw         $4, 0x24($29)
      lw         $2, 0x4($17)
      lw         $2, 0x9C($2)
      lh         $2, 0x44($2)
      mult       $3, $2
      mflo       $3
      lui        $5, (0x2AAAAAAB >> 16)
      ori        $5, $5, (0x2AAAAAAB & 0xFFFF)
      mult       $3, $5
      sra        $3, $3, 31
      mfhi       $11
      sra        $2, $11, 4
      subu       $6, $2, $3
      sw         $6, 0x20($29)
      lw         $2, 0x4($17)
      lw         $2, 0x9C($2)
      lh         $2, 0x46($2)
      mult       $4, $2
      mflo       $4
      nop
      nop
      mult       $4, $5
      sra        $4, $4, 31
      mfhi       $3
      sra        $2, $3, 4
      subu       $2, $2, $4
      sw         $2, 0x24($29)
      lw         $3, 0x4($17)
      lbu        $2, 0x11($18)
      lw         $3, 0x9C($3)
      sll        $2, $2, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      lw         $3, 0x10($17)
      lbu        $4, 0x8($2)
      beql       $3, $0, .L8005C594
       addu      $4, $18, $0
      lw         $2, 0x8($17)
      lw         $3, 0x1C($19)
      addu       $2, $2, $6
      slt        $3, $3, $2
      beql       $3, $0, .L8005C594
       addu      $4, $18, $0
      beqz       $4, .L8005C594
       addu      $4, $18, $0
      lhu        $2, 0x2($18)
      andi       $2, $2, 0x800
      beqz       $2, .L8005C678
       nop
  .L8005C594:
      jal        func_80058268
       addu      $5, $0, $0
      lw         $7, 0x0($2)
      lw         $8, 0x4($2)
      lw         $9, 0x8($2)
      lw         $10, 0xC($2)
      sw         $7, 0x28($29)
      sw         $8, 0x2C($29)
      sw         $9, 0x30($29)
      sw         $10, 0x34($29)
      lw         $2, 0x8($17)
      lw         $3, 0x20($29)
      addu       $4, $18, $0
      sw         $2, 0x28($29)
      addu       $2, $2, $3
      sw         $2, 0x30($29)
      lw         $2, 0x18($19)
      lw         $3, 0x24($29)
      addu       $5, $0, $0
      sw         $2, 0x2C($29)
      addu       $2, $2, $3
      jal        func_80058268
       sw        $2, 0x34($29)
      addu       $4, $18, $0
      lw         $7, 0x28($29)
      lw         $8, 0x2C($29)
      lw         $9, 0x30($29)
      lw         $10, 0x34($29)
      sw         $7, 0x0($2)
      sw         $8, 0x4($2)
      sw         $9, 0x8($2)
      sw         $10, 0xC($2)
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $4, 0x10($18)
      jal        func_80058540
       addu      $16, $2, $0
      sb         $2, 0x0($16)
      lw         $2, 0x4($17)
      lw         $2, 0x9C($2)
      lh         $4, 0x3C($2)
      lw         $2, 0x20($29)
      lw         $3, 0x8($17)
      addu       $2, $2, $4
      addu       $3, $3, $2
      sw         $3, 0x8($17)
      lw         $2, 0x20($19)
      lw         $3, 0x34($29)
      slt        $2, $2, $3
      bnel       $2, $0, .L8005C660
       sw        $3, 0x20($19)
  .L8005C660:
      lw         $2, 0x10($17)
      addiu      $3, $0, 0x1
      sb         $3, 0x1D($17)
      addiu      $2, $2, 0x1
      j          .L8005C688
       sw        $2, 0x10($17)
  .L8005C678:
      lw         $2, 0xC($18)
      sw         $2, 0xC($19)
      addiu      $2, $0, 0x1
      sb         $2, 0x1F($17)
  .L8005C688:
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $3, 0x0($2)
      addu       $2, $0, $0
      sb         $0, 0x27($3)
  .L8005C6A0:
      lw         $31, 0x48($29)
      lw         $19, 0x44($29)
      lw         $18, 0x40($29)
      lw         $17, 0x3C($29)
      lw         $16, 0x38($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_8005C47C

.globl func_8005C6BC
.ent func_8005C6BC
func_8005C6BC:
      addiu      $29, $29, -0x40
      sw         $19, 0x34($29)
      addu       $19, $4, $0
      sw         $20, 0x38($29)
      addu       $20, $5, $0
      sw         $18, 0x30($29)
      addu       $18, $6, $0
      addiu      $5, $29, 0x10
      sw         $31, 0x3C($29)
      sw         $17, 0x2C($29)
      jal        func_80086718
       sw        $16, 0x28($29)
      andi       $2, $2, 0xFF
      beqz       $2, .L8005C94C
       addu      $2, $0, $0
      lw         $3, 0x18($29)
      lw         $2, 0x10($29)
      lw         $4, 0x1C($29)
      lw         $5, 0x14($29)
      subu       $3, $3, $2
      subu       $4, $4, $5
      sw         $3, 0x20($29)
      sw         $4, 0x24($29)
      lw         $2, 0x4($18)
      lw         $2, 0x9C($2)
      lh         $2, 0x44($2)
      mult       $3, $2
      mflo       $3
      lui        $5, (0x2AAAAAAB >> 16)
      ori        $5, $5, (0x2AAAAAAB & 0xFFFF)
      mult       $3, $5
      sra        $3, $3, 31
      mfhi       $8
      sra        $2, $8, 4
      subu       $6, $2, $3
      sw         $6, 0x20($29)
      lw         $2, 0x4($18)
      lw         $2, 0x9C($2)
      lh         $2, 0x46($2)
      mult       $4, $2
      mflo       $4
      nop
      nop
      mult       $4, $5
      sra        $4, $4, 31
      mfhi       $3
      sra        $2, $3, 4
      subu       $2, $2, $4
      sw         $2, 0x24($29)
      lw         $2, 0x10($18)
      beqz       $2, .L8005C7D8
       nop
      lw         $2, 0x8($18)
      lw         $3, 0x1C($20)
      addu       $2, $2, $6
      slt        $3, $3, $2
      beqz       $3, .L8005C7D8
       nop
      lw         $3, 0x4($18)
      lbu        $2, 0x11($19)
      lw         $3, 0x9C($3)
      sll        $2, $2, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      lbu        $2, 0x8($2)
      beqz       $2, .L8005C7D8
       nop
      lhu        $2, 0x2($19)
      andi       $2, $2, 0x800
      beqz       $2, .L8005C924
       nop
  .L8005C7D8:
      lw         $2, 0x4($18)
      lw         $2, 0x9C($2)
      lui        $17, (0x2AAAAAAB >> 16)
      lhu        $3, 0x46($2)
      ori        $17, $17, (0x2AAAAAAB & 0xFFFF)
      sll        $3, $3, 16
      sra        $2, $3, 16
      mult       $2, $17
      addu       $4, $19, $0
      addu       $5, $0, $0
      sra        $3, $3, 31
      mfhi       $7
      sra        $2, $7, 2
      jal        func_80058268
       subu      $16, $2, $3
      addu       $4, $19, $0
      lw         $3, 0x8($18)
      addu       $5, $0, $0
      addu       $3, $3, $16
      jal        func_80058268
       sw        $3, 0x0($2)
      addu       $4, $19, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $19, $0
      lw         $2, 0x0($2)
      lw         $3, 0x20($29)
      addu       $5, $0, $0
      addu       $2, $2, $3
      jal        func_80058268
       sw        $2, 0x8($16)
      addu       $4, $19, $0
      lw         $3, 0x18($20)
      addu       $5, $0, $0
      jal        func_80058268
       sw        $3, 0x4($2)
      addu       $4, $19, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $19, $0
      lw         $2, 0x4($2)
      lw         $3, 0x24($29)
      addiu      $5, $0, 0x4
      addu       $2, $2, $3
      jal        func_80058268
       sw        $2, 0xC($16)
      addiu      $3, $0, 0x2
      sb         $3, 0x0($2)
      lw         $2, 0x4($18)
      lw         $2, 0x9C($2)
      lhu        $3, 0x46($2)
      sll        $3, $3, 16
      sra        $2, $3, 16
      mult       $2, $17
      addu       $4, $19, $0
      addu       $5, $0, $0
      sra        $3, $3, 31
      mfhi       $7
      sra        $2, $7, 1
      subu       $16, $2, $3
      lw         $2, 0x20($29)
      lw         $3, 0x8($18)
      addu       $2, $2, $16
      addu       $3, $3, $2
      jal        func_80058268
       sw        $3, 0x8($18)
      lw         $3, 0x20($20)
      lw         $2, 0xC($2)
      slt        $3, $3, $2
      beqz       $3, .L8005C90C
       addu      $4, $19, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $2, 0xC($2)
      sw         $2, 0x20($20)
  .L8005C90C:
      lw         $2, 0x10($18)
      addiu      $3, $0, 0x1
      sb         $3, 0x1D($18)
      addiu      $2, $2, 0x1
      j          .L8005C934
       sw        $2, 0x10($18)
  .L8005C924:
      lw         $2, 0xC($19)
      sw         $2, 0xC($20)
      addiu      $2, $0, 0x1
      sb         $2, 0x1F($18)
  .L8005C934:
      addu       $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $3, 0x0($2)
      addu       $2, $0, $0
      sb         $0, 0x27($3)
  .L8005C94C:
      lw         $31, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_8005C6BC

.globl func_8005C96C
.ent func_8005C96C
func_8005C96C:
      addiu      $29, $29, -0x40
      sw         $17, 0x2C($29)
      addu       $17, $4, $0
      sw         $19, 0x34($29)
      addu       $19, $5, $0
      sw         $18, 0x30($29)
      addu       $18, $6, $0
      addiu      $5, $29, 0x10
      sw         $31, 0x38($29)
      jal        func_80086718
       sw        $16, 0x28($29)
      andi       $2, $2, 0xFF
      beqz       $2, .L8005CBA4
       addu      $2, $0, $0
      lw         $3, 0x18($29)
      lw         $2, 0x10($29)
      lw         $4, 0x1C($29)
      lw         $5, 0x14($29)
      subu       $3, $3, $2
      subu       $4, $4, $5
      sw         $3, 0x20($29)
      sw         $4, 0x24($29)
      lw         $2, 0x4($18)
      lw         $2, 0x9C($2)
      lh         $2, 0x44($2)
      mult       $3, $2
      mflo       $3
      lui        $5, (0x2AAAAAAB >> 16)
      ori        $5, $5, (0x2AAAAAAB & 0xFFFF)
      mult       $3, $5
      sra        $3, $3, 31
      mfhi       $8
      sra        $2, $8, 4
      subu       $6, $2, $3
      sw         $6, 0x20($29)
      lw         $2, 0x4($18)
      lw         $2, 0x9C($2)
      lh         $2, 0x46($2)
      mult       $4, $2
      mflo       $4
      nop
      nop
      mult       $4, $5
      sra        $4, $4, 31
      mfhi       $3
      sra        $2, $3, 4
      subu       $2, $2, $4
      sw         $2, 0x24($29)
      lw         $2, 0x10($18)
      beqz       $2, .L8005CA84
       addu      $4, $17, $0
      lw         $2, 0x8($18)
      lw         $3, 0x1C($19)
      addu       $2, $2, $6
      slt        $3, $3, $2
      beqz       $3, .L8005CA84
       nop
      lw         $3, 0x4($18)
      lbu        $2, 0x11($17)
      lw         $3, 0x9C($3)
      sll        $2, $2, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      lbu        $2, 0x8($2)
      beqz       $2, .L8005CA84
       nop
      lhu        $2, 0x2($17)
      andi       $2, $2, 0x800
      beqz       $2, .L8005CB7C
       nop
  .L8005CA84:
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      lw         $3, 0x8($18)
      addu       $5, $0, $0
      jal        func_80058268
       sw        $3, 0x0($2)
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $17, $0
      lw         $2, 0x0($2)
      lw         $3, 0x20($29)
      addu       $5, $0, $0
      addu       $2, $2, $3
      jal        func_80058268
       sw        $2, 0x8($16)
      addu       $4, $17, $0
      lw         $3, 0x18($19)
      addu       $5, $0, $0
      jal        func_80058268
       sw        $3, 0x4($2)
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $17, $0
      lw         $2, 0x4($2)
      lw         $3, 0x24($29)
      addiu      $5, $0, 0x4
      addu       $2, $2, $3
      jal        func_80058268
       sw        $2, 0xC($16)
      addiu      $3, $0, 0x2
      sb         $3, 0x0($2)
      lw         $2, 0x4($18)
      addu       $4, $17, $0
      lw         $2, 0x9C($2)
      addu       $5, $0, $0
      lh         $6, 0x3C($2)
      lw         $2, 0x20($29)
      lw         $3, 0x8($18)
      addu       $2, $2, $6
      addu       $3, $3, $2
      jal        func_80058268
       sw        $3, 0x8($18)
      lw         $3, 0x20($19)
      lw         $2, 0xC($2)
      slt        $3, $3, $2
      beqz       $3, .L8005CB64
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $2, 0xC($2)
      sw         $2, 0x20($19)
  .L8005CB64:
      lw         $2, 0x10($18)
      addiu      $3, $0, 0x1
      sb         $3, 0x1D($18)
      addiu      $2, $2, 0x1
      j          .L8005CB8C
       sw        $2, 0x10($18)
  .L8005CB7C:
      lw         $2, 0xC($17)
      sw         $2, 0xC($19)
      addiu      $2, $0, 0x1
      sb         $2, 0x1F($18)
  .L8005CB8C:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $3, 0x0($2)
      addu       $2, $0, $0
      sb         $0, 0x27($3)
  .L8005CBA4:
      lw         $31, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_8005C96C

.globl func_8005CBC0
.ent func_8005CBC0
func_8005CBC0:
      addiu      $29, $29, -0x40
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $20, 0x28($29)
      sw         $21, 0x2C($29)
      addu       $21, $6, $0
      sw         $31, 0x38($29)
      sw         $23, 0x34($29)
      sw         $22, 0x30($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      lw         $2, 0x10($21)
      lw         $23, 0x4($21)
      bnez       $2, .L8005CC14
       addu      $20, $5, $0
      jal        func_800596AC
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L8005CC2C
       addu      $22, $16, $0
  .L8005CC14:
      lw         $3, 0xC($16)
      addu       $2, $0, $0
      sw         $3, 0xC($20)
      addiu      $3, $0, 0x1
      j          .L8005CEBC
       sb        $3, 0x1F($21)
  .L8005CC2C:
      addu       $4, $22, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x0($2)
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      lw         $3, 0x5C($23)
      sll        $2, $2, 3
      addu       $16, $3, $2
      lw         $3, 0x78($16)
      addiu      $2, $0, 0x5
      bne        $3, $2, .L8005CCBC
       addiu     $2, $0, 0x1
      lw         $3, 0x24C($20)
      beq        $3, $2, .L8005CCAC
       slti      $2, $3, 0x2
      beqz       $2, .L8005CC8C
       addiu     $4, $0, 0x2
      beqz       $3, .L8005CCA4
       addiu     $2, $0, 0x3
      j          .L8005CCBC
       nop
  .L8005CC8C:
      beq        $3, $4, .L8005CCB4
       addiu     $2, $0, 0x3
      beql       $3, $2, .L8005CCBC
       sw        $4, 0x78($16)
      j          .L8005CCBC
       nop
  .L8005CCA4:
      j          .L8005CCBC
       sw        $2, 0x78($16)
  .L8005CCAC:
      j          .L8005CCBC
       sw        $3, 0x78($16)
  .L8005CCB4:
      addiu      $2, $0, 0x6
      sw         $2, 0x78($16)
  .L8005CCBC:
      lw         $2, 0x4($21)
      lw         $2, 0x9C($2)
      lbu        $5, 0x82($16)
      lh         $3, 0x46($2)
      mult       $5, $3
      mflo       $2
      lbu        $4, 0x87($16)
      nop
      mult       $4, $3
      mflo       $3
      lui        $4, (0x2AAAAAAB >> 16)
      ori        $4, $4, (0x2AAAAAAB & 0xFFFF)
      mult       $2, $4
      mfhi       $9
      sra        $2, $2, 31
      nop
      mult       $3, $4
      sra        $4, $9, 4
      subu       $5, $4, $2
      lw         $2, 0xC($21)
      sra        $3, $3, 31
      addu       $2, $2, $5
      mfhi       $6
      sra        $4, $6, 4
      subu       $4, $4, $3
      lw         $3, 0x18($20)
      addu       $17, $2, $4
      addu       $3, $3, $5
      lw         $5, 0x78($16)
      beqz       $5, .L8005CD4C
       addu      $18, $3, $4
      addiu      $3, $0, 0x4
      beq        $5, $3, .L8005CD4C
       addiu     $19, $0, 0x1
      bne        $5, $19, .L8005CDB0
       addiu     $2, $0, 0x6
  .L8005CD4C:
      addu       $4, $16, $0
      sw         $17, 0x54($16)
      addu       $5, $17, $0
      addiu      $17, $0, 0x1
      sw         $17, 0x78($16)
      jal        func_8005A228
       sw        $18, 0x58($16)
      lw         $5, 0x58($16)
      jal        func_8005A228
       addiu     $4, $16, 0x8
      lbu        $3, 0x80($16)
      lbu        $2, 0x253($20)
      bne        $3, $2, .L8005CD9C
       addiu     $4, $16, 0x18
      addu       $4, $22, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x4($2)
      j          .L8005CEA4
       sb        $17, 0x20($21)
  .L8005CD9C:
      jal        func_8005A228
       addu      $5, $0, $0
      lbu        $2, 0x253($20)
      j          .L8005CEA8
       sb        $2, 0x80($16)
  .L8005CDB0:
      bne        $5, $2, .L8005CDE8
       addiu     $2, $0, 0x2
      lbu        $3, 0x81($16)
      lbu        $2, 0x253($20)
      bne        $3, $2, .L8005CDD4
       addiu     $4, $16, 0x10
      addu       $4, $22, $0
      j          .L8005CE94
       addiu     $5, $0, 0x2
  .L8005CDD4:
      jal        func_8005A228
       addu      $5, $0, $0
      lbu        $2, 0x253($20)
      j          .L8005CEA8
       sb        $2, 0x81($16)
  .L8005CDE8:
      bne        $5, $2, .L8005CE38
       addiu     $2, $0, 0x3
      lbu        $2, 0xDB($23)
      sw         $22, 0x14($29)
      sw         $2, 0x10($29)
      lw         $5, 0xC($21)
      lw         $6, 0x1C($20)
      lw         $7, 0x9C($23)
      jal        func_8005AD50
       addu      $4, $16, $0
      addu       $4, $16, $0
      addu       $5, $17, $0
      jal        func_8005A1DC
       sw        $5, 0x54($16)
      addiu      $4, $16, 0x20
      addu       $5, $0, $0
      jal        func_8005A228
       sw        $18, 0x58($16)
      j          .L8005CEAC
       addu      $2, $0, $0
  .L8005CE38:
      beq        $5, $2, .L8005CE60
       addu      $4, $16, $0
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      bnel       $2, $17, .L8005CE64
       sw        $17, 0x54($16)
      lw         $2, 0x8($16)
      lw         $2, 0x0($2)
      beql       $2, $18, .L8005CE8C
       addu      $4, $22, $0
  .L8005CE60:
      sw         $17, 0x54($16)
  .L8005CE64:
      addu       $5, $17, $0
      addiu      $2, $0, 0x3
      sw         $2, 0x78($16)
      jal        func_8005A1DC
       sw        $18, 0x58($16)
      lw         $5, 0x58($16)
      jal        func_8005A1DC
       addiu     $4, $16, 0x8
      j          .L8005CEAC
       addu      $2, $0, $0
  .L8005CE8C:
      addiu      $5, $0, 0x2
      sw         $3, 0x78($16)
  .L8005CE94:
      jal        func_80058268
       nop
      lw         $2, 0x4($2)
      sb         $19, 0x20($21)
  .L8005CEA4:
      sw         $2, 0x14($21)
  .L8005CEA8:
      addu       $2, $0, $0
  .L8005CEAC:
      addiu      $3, $0, 0x1
      sb         $3, 0x1C($21)
      sh         $0, 0x70($16)
      sh         $0, 0x72($16)
  .L8005CEBC:
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
.end func_8005CBC0

.globl func_8005CEE8
.ent func_8005CEE8
func_8005CEE8:
      addu       $10, $4, $0
      beqz       $10, .L8005CFEC
       nop
      beqz       $6, .L8005CFEC
       nop
      beqz       $5, .L8005CFEC
       nop
      blez       $6, .L8005CFEC
       addu      $9, $0, $0
  .L8005CF0C:
      lh         $7, 0x4($5)
      lh         $3, 0x6($5)
      slt        $2, $7, $3
      beqz       $2, .L8005CF48
       addu      $8, $0, $0
      addu       $4, $3, $0
      lw         $3, 0x0($10)
      sll        $2, $7, 2
      addu       $3, $2, $3
  .L8005CF30:
      lw         $2, 0x0($3)
      addiu      $7, $7, 0x1
      addu       $8, $8, $2
      slt        $2, $7, $4
      bnez       $2, .L8005CF30
       addiu     $3, $3, 0x4
  .L8005CF48:
      lw         $3, 0x0($5)
      slt        $2, $8, $3
      beql       $2, $0, .L8005CFE0
       addiu     $9, $9, 0x1
      lh         $2, 0x4($5)
      lh         $4, 0x6($5)
      addu       $7, $2, $0
      subu       $2, $3, $8
      subu       $3, $4, $7
      addu       $2, $2, $3
      addiu      $2, $2, -0x1
      slt        $4, $7, $4
      div        $zero, $2, $3
      bnez       $3, .L8005CF88
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005CF88:
      addiu      $1, $0, -0x1
      bne        $3, $1, .L8005CFA0
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L8005CFA0
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8005CFA0:
      mflo       $8
      beql       $4, $0, .L8005CFE0
       addiu     $9, $9, 0x1
      addu       $4, $5, $0
  .L8005CFB0:
      lw         $2, 0x0($10)
      sll        $3, $7, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      addu       $2, $2, $8
      sw         $2, 0x0($3)
      lh         $2, 0x6($4)
      addiu      $7, $7, 0x1
      slt        $2, $7, $2
      bnez       $2, .L8005CFB0
       nop
      addiu      $9, $9, 0x1
  .L8005CFE0:
      slt        $2, $9, $6
      bnez       $2, .L8005CF0C
       addiu     $5, $5, 0x8
  .L8005CFEC:
      jr         $31
       nop
.end func_8005CEE8

.globl func_8005CFF4
.ent func_8005CFF4
func_8005CFF4:
      addiu      $29, $29, -0x50
      sw         $30, 0x48($29)
      addu       $30, $4, $0
      sw         $23, 0x44($29)
      addu       $23, $5, $0
      sw         $22, 0x40($29)
      addu       $22, $6, $0
      sw         $31, 0x4C($29)
      sw         $21, 0x3C($29)
      sw         $20, 0x38($29)
      sw         $19, 0x34($29)
      sw         $18, 0x30($29)
      sw         $17, 0x2C($29)
      sw         $16, 0x28($29)
      lw         $20, 0x4($22)
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $21, 0x0($2)
      addiu      $5, $0, 0x2
      jal        func_80058268
       addu      $4, $21, $0
      lw         $3, 0x0($2)
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      lw         $3, 0x5C($20)
      sll        $2, $2, 3
      addu       $16, $3, $2
      lw         $17, 0x78($16)
      addiu      $2, $0, 0x1
      bne        $17, $2, .L8005D0C8
       addiu     $2, $0, 0x6
      lbu        $2, 0xDB($20)
      sw         $21, 0x14($29)
      sw         $2, 0x10($29)
      lw         $5, 0xC($22)
      lw         $6, 0x1C($23)
      lw         $7, 0x9C($20)
      jal        func_8005AD50
       addu      $4, $16, $0
      lh         $2, 0x76($16)
      beqz       $2, .L8005D0B4
       nop
      lw         $5, 0x4C($16)
      lh         $6, 0x72($16)
      jal        func_8005CEE8
       addiu     $4, $16, 0x18
  .L8005D0B4:
      lw         $2, 0x24C($23)
      bne        $2, $17, .L8005D1AC
       addiu     $2, $0, 0x6
      j          .L8005D1AC
       addiu     $2, $0, 0x5
  .L8005D0C8:
      bne        $17, $2, .L8005D124
       addiu     $2, $0, 0x2
      lbu        $2, 0xDB($20)
      sw         $21, 0x14($29)
      sw         $2, 0x10($29)
      lw         $5, 0xC($22)
      lw         $6, 0x1C($23)
      lw         $7, 0x9C($20)
      jal        func_8005AD50
       addu      $4, $16, $0
      lh         $2, 0x76($16)
      beqz       $2, .L8005D10C
       nop
      lw         $5, 0x4C($16)
      lh         $6, 0x72($16)
      jal        func_8005CEE8
       addiu     $4, $16, 0x10
  .L8005D10C:
      lw         $2, 0x24C($23)
      addiu      $3, $0, 0x2
      bnel       $2, $3, .L8005D1B0
       sw        $3, 0x78($16)
      j          .L8005D1AC
       addiu     $2, $0, 0x5
  .L8005D124:
      bne        $17, $2, .L8005D1A4
       addiu     $2, $0, 0x3
      lh         $2, 0x74($16)
      beqz       $2, .L8005D148
       addu      $17, $0, $0
      lw         $5, 0x48($16)
      lh         $6, 0x70($16)
      jal        func_8005CEE8
       addiu     $4, $16, 0x20
  .L8005D148:
      addu       $4, $21, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x8($2)
      beql       $4, $0, .L8005D17C
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $2, 0x14($2)
      bnez       $2, .L8005D178
       addiu     $17, $0, 0x2
      addiu      $17, $0, 0x1
  .L8005D178:
      addu       $4, $16, $0
  .L8005D17C:
      addu       $5, $23, $0
      lw         $6, 0x9C($20)
      jal        func_8005B448
       addu      $7, $17, $0
      lw         $2, 0x24C($23)
      addiu      $3, $0, 0x3
      bnel       $2, $3, .L8005D1B0
       sw        $3, 0x78($16)
      j          .L8005D1AC
       addiu     $2, $0, 0x5
  .L8005D1A4:
      bne        $17, $2, .L8005D1B0
       addiu     $2, $0, 0x4
  .L8005D1AC:
      sw         $2, 0x78($16)
  .L8005D1B0:
      lw         $2, 0x78($16)
      addiu      $2, $2, -0x4
      sltiu      $2, $2, 0x2
      beqz       $2, .L8005D384
       addu      $4, $21, $0
      lbu        $18, 0x82($16)
      lbu        $19, 0x83($16)
      lbu        $17, 0x87($16)
      jal        func_80058268
       addu      $5, $0, $0
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      lw         $11, 0xC($2)
      sw         $8, 0x18($29)
      sw         $9, 0x1C($29)
      sw         $10, 0x20($29)
      sw         $11, 0x24($29)
      lw         $2, 0x9C($20)
      lh         $5, 0x46($2)
      mult       $18, $5
      mflo       $2
      nop
      nop
      mult       $17, $5
      mflo       $4
      lui        $6, (0x2AAAAAAB >> 16)
      ori        $6, $6, (0x2AAAAAAB & 0xFFFF)
      mult       $2, $6
      sra        $2, $2, 31
      mfhi       $3
      sra        $3, $3, 4
      subu       $18, $3, $2
      lw         $2, 0x0($16)
      mult       $4, $6
      lw         $2, 0x0($2)
      sra        $4, $4, 31
      subu       $2, $2, $18
      mfhi       $7
      sra        $3, $7, 4
      subu       $17, $3, $4
      subu       $2, $2, $17
      mult       $19, $5
      sw         $2, 0x18($29)
      lw         $2, 0x8($16)
      lw         $2, 0x0($2)
      mflo       $5
      subu       $2, $2, $18
      subu       $2, $2, $17
      mult       $5, $6
      sw         $2, 0x1C($29)
      lhu        $2, 0x6($16)
      addu       $4, $21, $0
      sll        $2, $2, 2
      mfhi       $3
      sra        $6, $3, 4
      lw         $3, 0x0($16)
      sra        $5, $5, 31
      addu       $2, $2, $3
      lw         $2, -0x4($2)
      subu       $19, $6, $5
      addu       $2, $2, $19
      sw         $2, 0x20($29)
      lhu        $2, 0xE($16)
      lw         $3, 0x8($16)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, -0x4($2)
      addu       $5, $0, $0
      addu       $2, $2, $19
      jal        func_80058268
       sw        $2, 0x24($29)
      addu       $4, $30, $0
      lw         $8, 0x18($29)
      lw         $9, 0x1C($29)
      lw         $10, 0x20($29)
      lw         $11, 0x24($29)
      sw         $8, 0x0($2)
      sw         $9, 0x4($2)
      sw         $10, 0x8($2)
      sw         $11, 0xC($2)
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $21, $0
      lw         $8, 0x18($29)
      lw         $9, 0x1C($29)
      lw         $10, 0x20($29)
      lw         $11, 0x24($29)
      sw         $8, 0x0($2)
      sw         $9, 0x4($2)
      sw         $10, 0x8($2)
      sw         $11, 0xC($2)
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x4
      beq        $3, $2, .L8005D350
       addu      $4, $21, $0
      jal        func_80058268
       addu      $5, $2, $0
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x5
      bne        $3, $2, .L8005D360
       nop
  .L8005D350:
      lw         $2, 0x3C($23)
      addiu      $2, $2, 0x1
      j          .L8005D374
       sw        $2, 0x3C($23)
  .L8005D360:
      lw         $2, 0x10($22)
      addiu      $2, $2, 0x1
      sw         $2, 0x10($22)
      lw         $2, 0x24($29)
      sw         $2, 0x20($23)
  .L8005D374:
      addiu      $2, $0, 0x1
      sb         $2, 0x1F($22)
      j          .L8005D394
       sb        $0, 0x1C($22)
  .L8005D384:
      addiu      $2, $0, 0x1
      sw         $21, 0x14($22)
      sb         $2, 0x20($22)
      sw         $0, 0x10($22)
  .L8005D394:
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
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x50
.end func_8005CFF4

.globl func_8005D3C8
.ent func_8005D3C8
func_8005D3C8:
      addiu      $29, $29, -0xC0
      sw         $23, 0xB4($29)
      addu       $23, $4, $0
      sw         $30, 0xB8($29)
      addu       $30, $6, $0
      sw         $31, 0xBC($29)
      sw         $22, 0xB0($29)
      sw         $21, 0xAC($29)
      sw         $20, 0xA8($29)
      sw         $19, 0xA4($29)
      sw         $18, 0xA0($29)
      sw         $17, 0x9C($29)
      sw         $16, 0x98($29)
      sw         $5, 0xC4($29)
      lw         $17, 0x4($30)
      lw         $11, 0x0($30)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $11, 0x90($29)
      addu       $4, $23, $0
      lw         $16, 0x4($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addiu      $5, $0, 0x2
      lw         $2, 0x0($2)
      addu       $4, $16, $0
      jal        func_80058268
       sw        $2, 0x18($30)
      lw         $3, 0x0($2)
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      lw         $3, 0x5C($17)
      sll        $2, $2, 3
      addu       $16, $3, $2
      lw         $3, 0x78($16)
      sltiu      $2, $3, 0x7
      beqz       $2, .L8005DC90
       lui       $2, %hi(jtbl_800EE7C0)
      addiu      $2, $2, %lo(jtbl_800EE7C0)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8005D480
.L8005D480:
      addu       $4, $23, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $23, $0
      lw         $12, 0x0($2)
      lw         $13, 0x4($2)
      lw         $14, 0x8($2)
      lw         $11, 0xC($2)
      sw         $12, 0x30($29)
      sw         $13, 0x34($29)
      sw         $14, 0x38($29)
      sw         $11, 0x3C($29)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $5, $2, $0
      lh         $2, 0x10($5)
      lw         $3, 0x0($16)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      sw         $2, 0x30($29)
      lh         $2, 0x12($5)
      lw         $3, 0x0($16)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      sw         $2, 0x38($29)
      lh         $2, 0x14($5)
      lw         $3, 0x8($16)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      addu       $4, $23, $0
      sw         $2, 0x34($29)
      lh         $2, 0x16($5)
      lw         $3, 0x8($16)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      addu       $5, $0, $0
      jal        func_80058268
       sw        $2, 0x3C($29)
      lw         $12, 0x30($29)
      lw         $13, 0x34($29)
      lw         $14, 0x38($29)
      lw         $11, 0x3C($29)
      sw         $12, 0x0($2)
      sw         $13, 0x4($2)
      sw         $14, 0x8($2)
      sw         $11, 0xC($2)
      lw         $4, 0x18($30)
      jal        func_80058268
       addu      $5, $0, $0
      addiu      $5, $29, 0x20
      addu       $6, $23, $0
      lw         $4, 0x90($29)
      addiu      $7, $0, 0x1
      lw         $12, 0x30($29)
      lw         $13, 0x34($29)
      lw         $14, 0x38($29)
      lw         $11, 0x3C($29)
      sw         $12, 0x0($2)
      sw         $13, 0x4($2)
      sw         $14, 0x8($2)
      sw         $11, 0xC($2)
      lw         $12, 0xC4($29)
      addiu      $2, $0, 0x7FFF
      sw         $0, 0x20($29)
      sw         $2, 0x28($29)
      sw         $0, 0x24($29)
      sw         $0, 0x2C($29)
      lbu        $3, 0x253($12)
      addiu      $2, $29, 0x70
      sw         $2, 0x14($29)
      addiu      $2, $29, 0x74
      sw         $2, 0x18($29)
      jal        func_8006009C
       sw        $3, 0x10($29)
      lw         $2, 0x70($29)
      bltz       $2, .L8005DC78
       addu      $4, $23, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $5, $2, $0
      lh         $2, 0x12($5)
      lh         $4, 0x10($5)
      subu       $2, $2, $4
      slti       $2, $2, 0x2
      bnez       $2, .L8005D674
       sll       $2, $4, 2
      lbu        $3, 0x21($5)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L8005D61C
       nop
      lh         $4, 0x18($5)
      lw         $2, 0x70($29)
      slt        $2, $2, $4
      beqz       $2, .L8005D61C
       nop
      lh         $2, 0x72($16)
      lw         $3, 0x4C($16)
      j          .L8005D62C
       sll       $2, $2, 3
  .L8005D61C:
      lh         $2, 0x72($16)
      lw         $3, 0x4C($16)
      lw         $4, 0x70($29)
      sll        $2, $2, 3
  .L8005D62C:
      addu       $2, $2, $3
      sw         $4, 0x0($2)
      lh         $2, 0x72($16)
      lw         $3, 0x4C($16)
      lhu        $4, 0x10($5)
      sll        $2, $2, 3
      addu       $2, $2, $3
      sh         $4, 0x4($2)
      lh         $2, 0x72($16)
      lw         $3, 0x4C($16)
      lhu        $4, 0x12($5)
      sll        $2, $2, 3
      addu       $2, $2, $3
      sh         $4, 0x6($2)
      lhu        $2, 0x72($16)
      addiu      $2, $2, 0x1
      j          .L8005DC78
       sh        $2, 0x72($16)
  .L8005D674:
      lw         $3, 0x18($16)
      addu       $4, $2, $3
      lw         $2, 0x0($4)
      lw         $3, 0x70($29)
      slt        $2, $2, $3
  .L8005D688:
      bnel       $2, $0, .L8005DC78
       sw        $3, 0x0($4)
      j          .L8005DC78
       nop
  .globl .L8005D698
.L8005D698:
      addiu      $5, $29, 0x30
      addu       $6, $23, $0
      lw         $4, 0x90($29)
      lw         $13, 0xC4($29)
      addiu      $7, $0, 0x2
      sw         $0, 0x30($29)
      sw         $0, 0x38($29)
      sw         $0, 0x34($29)
      sw         $0, 0x3C($29)
      lbu        $3, 0x253($13)
      addiu      $2, $29, 0x78
      sw         $2, 0x14($29)
      addiu      $2, $29, 0x7C
      sw         $2, 0x18($29)
      jal        func_8006009C
       sw        $3, 0x10($29)
      lw         $2, 0x78($29)
      bltz       $2, .L8005DC78
       addu      $4, $23, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $5, $2, $0
      lh         $2, 0x12($5)
      lh         $4, 0x10($5)
      subu       $2, $2, $4
      slti       $2, $2, 0x2
      bnez       $2, .L8005D750
       sll       $2, $4, 2
      lbu        $3, 0x21($5)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L8005D73C
       nop
      lh         $4, 0x18($5)
      lw         $2, 0x78($29)
      slt        $2, $2, $4
      beqz       $2, .L8005D73C
       nop
      lh         $2, 0x72($16)
      lw         $3, 0x4C($16)
      j          .L8005D62C
       sll       $2, $2, 3
  .L8005D73C:
      lh         $2, 0x72($16)
      lw         $3, 0x4C($16)
      lw         $4, 0x78($29)
      j          .L8005D62C
       sll       $2, $2, 3
  .L8005D750:
      lw         $3, 0x10($16)
      addu       $4, $2, $3
      lw         $2, 0x0($4)
      lw         $3, 0x78($29)
      j          .L8005D688
       slt       $2, $2, $3
  .globl .L8005D768
.L8005D768:
      lw         $2, 0x9C($17)
      lbu        $20, 0x87($16)
      lh         $2, 0x46($2)
      mult       $20, $2
      mflo       $7
      lui        $9, (0x2AAAAAAB >> 16)
      ori        $9, $9, (0x2AAAAAAB & 0xFFFF)
      mult       $7, $9
      mfhi       $6
      lbu        $19, 0x86($16)
      nop
      mult       $19, $2
      mflo       $3
      lbu        $18, 0x84($16)
      nop
      mult       $18, $2
      mflo       $8
      nop
      nop
      mult       $3, $9
      mfhi       $15
      nop
      nop
      mult       $8, $9
      addu       $4, $23, $0
      mfhi       $10
      lbu        $17, 0x85($16)
      addiu      $5, $0, 0x2
      mult       $17, $2
      sra        $7, $7, 31
      sra        $6, $6, 4
      subu       $20, $6, $7
      sra        $3, $3, 31
      mflo       $2
      sra        $6, $15, 4
      subu       $19, $6, $3
      mult       $2, $9
      sra        $8, $8, 31
      sra        $3, $10, 4
      subu       $18, $3, $8
      sra        $2, $2, 31
      mfhi       $9
      sra        $3, $9, 4
      jal        func_80058268
       subu      $17, $3, $2
      addu       $8, $2, $0
      addiu      $5, $29, 0x40
      lw         $4, 0x90($29)
      addu       $6, $23, $0
      sw         $0, 0x40($29)
      lh         $2, 0x12($8)
      lw         $7, 0x0($16)
      lh         $3, 0x10($8)
      lw         $11, 0xC4($29)
      sll        $2, $2, 2
      addu       $2, $2, $7
      sll        $3, $3, 2
      addu       $3, $3, $7
      lw         $2, 0x0($2)
      lw         $3, 0x0($3)
      addiu      $7, $0, 0x3
      sw         $0, 0x44($29)
      sw         $0, 0x4C($29)
      subu       $2, $2, $3
      sll        $3, $19, 1
      subu       $2, $2, $3
      subu       $2, $2, $18
      subu       $2, $2, $17
      subu       $2, $2, $20
      sw         $2, 0x48($29)
      lbu        $3, 0x253($11)
      addiu      $2, $29, 0x80
      sw         $2, 0x14($29)
      addiu      $2, $29, 0x84
      sw         $2, 0x18($29)
      jal        func_8006009C
       sw        $3, 0x10($29)
      addu       $4, $23, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x84($29)
      addu       $8, $2, $0
      addu       $5, $4, $0
      bltz       $5, .L8005DC78
       sw        $4, 0x8($8)
      lh         $2, 0x16($8)
      lh         $6, 0x14($8)
      subu       $2, $2, $6
      slti       $2, $2, 0x2
      bnez       $2, .L8005D950
       sll       $2, $6, 2
      lh         $4, 0x1A($8)
      slt        $2, $5, $4
      beqz       $2, .L8005D8FC
       nop
      lh         $2, 0x70($16)
      lw         $3, 0x48($16)
      sll        $2, $2, 3
      addu       $2, $2, $3
      j          .L8005D910
       sw        $4, 0x0($2)
  .L8005D8FC:
      lh         $2, 0x70($16)
      lw         $3, 0x48($16)
      sll        $2, $2, 3
      addu       $2, $2, $3
      sw         $5, 0x0($2)
  .L8005D910:
      lh         $2, 0x70($16)
      lw         $3, 0x48($16)
      lhu        $4, 0x14($8)
      sll        $2, $2, 3
      addu       $2, $2, $3
      sh         $4, 0x4($2)
      lh         $2, 0x70($16)
      lw         $3, 0x48($16)
      lhu        $4, 0x16($8)
      sll        $2, $2, 3
      addu       $2, $2, $3
      sh         $4, 0x6($2)
      lhu        $2, 0x70($16)
      addiu      $2, $2, 0x1
      j          .L8005DC78
       sh        $2, 0x70($16)
  .L8005D950:
      lw         $3, 0x20($16)
      addu       $3, $2, $3
      lw         $2, 0x0($3)
      slt        $2, $2, $4
      bnel       $2, $0, .L8005DC78
       sw        $4, 0x0($3)
      j          .L8005DC78
       nop
  .globl .L8005D970
.L8005D970:
      lw         $2, 0x9C($17)
      lbu        $19, 0x87($16)
      lh         $2, 0x46($2)
      mult       $19, $2
      mflo       $7
      lui        $9, (0x2AAAAAAB >> 16)
      ori        $9, $9, (0x2AAAAAAB & 0xFFFF)
      mult       $7, $9
      mfhi       $6
      lbu        $18, 0x86($16)
      nop
      mult       $18, $2
      mflo       $3
      lbu        $20, 0x84($16)
      nop
      mult       $20, $2
      mflo       $8
      nop
      nop
      mult       $3, $9
      mfhi       $15
      nop
      nop
      mult       $8, $9
      addu       $4, $23, $0
      mfhi       $10
      lbu        $21, 0x85($16)
      addiu      $5, $0, 0x2
      mult       $21, $2
      sra        $7, $7, 31
      sra        $6, $6, 4
      subu       $19, $6, $7
      sra        $3, $3, 31
      mflo       $2
      sra        $6, $15, 4
      subu       $18, $6, $3
      mult       $2, $9
      sra        $8, $8, 31
      sra        $3, $10, 4
      subu       $20, $3, $8
      sra        $2, $2, 31
      mfhi       $9
      sra        $3, $9, 4
      jal        func_80058268
       subu      $21, $3, $2
      addu       $17, $2, $0
      lbu        $2, 0x1D($17)
      addiu      $2, $2, -0x2
      sltiu      $2, $2, 0x2
      beqz       $2, .L8005DAB0
       addu      $22, $0, $0
      lh         $2, 0x16($17)
      lw         $4, 0x8($16)
      lh         $3, 0x14($17)
      sll        $2, $2, 2
      addu       $2, $2, $4
      sll        $3, $3, 2
      addu       $3, $3, $4
      lw         $2, 0x0($2)
      lw         $3, 0x0($3)
      lw         $4, 0x8($17)
      subu       $2, $2, $3
      sll        $3, $18, 1
      subu       $2, $2, $3
      subu       $2, $2, $20
      subu       $2, $2, $21
      subu       $5, $2, $19
      sw         $4, 0x8C($29)
      lbu        $3, 0x1D($17)
      addiu      $2, $0, 0x3
      bne        $3, $2, .L8005DA98
       addiu     $2, $0, 0x2
      j          .L8005DAB0
       subu      $22, $5, $4
  .L8005DA98:
      bnel       $3, $2, .L8005DAB4
       addu      $4, $23, $0
      subu       $2, $5, $4
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $22, $2, 1
  .L8005DAB0:
      addu       $4, $23, $0
  .L8005DAB4:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      addiu      $5, $29, 0x50
      lh         $2, 0x10($17)
      lw         $3, 0x0($16)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      addu       $6, $23, $0
      addu       $2, $2, $20
      addu       $2, $2, $18
      sw         $2, 0x50($29)
      lh         $2, 0x12($17)
      lw         $3, 0x0($16)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      addu       $7, $0, $0
      subu       $2, $2, $18
      subu       $2, $2, $21
      subu       $2, $2, $19
      sw         $2, 0x58($29)
      lh         $2, 0x14($17)
      lw         $3, 0x8($16)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      lw         $4, 0x90($29)
      addu       $2, $2, $20
      addu       $2, $2, $18
      addu       $2, $2, $22
      sw         $2, 0x54($29)
      lh         $2, 0x16($17)
      lw         $3, 0x8($16)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      lw         $11, 0xC4($29)
      subu       $2, $2, $18
      subu       $2, $2, $21
      subu       $2, $2, $19
      sw         $2, 0x5C($29)
      lbu        $3, 0x253($11)
      addiu      $2, $29, 0x88
      sw         $2, 0x14($29)
      addiu      $2, $29, 0x8C
      sw         $2, 0x18($29)
      jal        func_8006009C
       sw        $3, 0x10($29)
      addu       $4, $23, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      addu       $4, $23, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $12, 0x0($2)
      lw         $13, 0x4($2)
      lw         $14, 0x8($2)
      lw         $11, 0xC($2)
      sw         $12, 0x60($29)
      sw         $13, 0x64($29)
      sw         $14, 0x68($29)
      sw         $11, 0x6C($29)
      lh         $2, 0x10($17)
      lw         $3, 0x0($16)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      sw         $2, 0x60($29)
      lh         $2, 0x12($17)
      lw         $3, 0x0($16)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      subu       $2, $2, $19
      sw         $2, 0x68($29)
      lh         $2, 0x14($17)
      lw         $3, 0x8($16)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      addu       $4, $23, $0
      sw         $2, 0x64($29)
      lh         $2, 0x16($17)
      lw         $3, 0x8($16)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      addu       $5, $0, $0
      subu       $2, $2, $19
      jal        func_80058268
       sw        $2, 0x6C($29)
      lw         $12, 0x60($29)
      lw         $13, 0x64($29)
      lw         $14, 0x68($29)
      lw         $11, 0x6C($29)
      sw         $12, 0x0($2)
      sw         $13, 0x4($2)
      sw         $14, 0x8($2)
      sw         $11, 0xC($2)
      lw         $4, 0x18($30)
      jal        func_80058268
       addu      $5, $0, $0
      lw         $12, 0x60($29)
      lw         $13, 0x64($29)
      lw         $14, 0x68($29)
      lw         $11, 0x6C($29)
      sw         $12, 0x0($2)
      sw         $13, 0x4($2)
      sw         $14, 0x8($2)
      sw         $11, 0xC($2)
  .globl .L8005DC78
.L8005DC78:
      lw         $2, 0x18($30)
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x1
      sb         $2, 0x20($30)
      j          .L8005DC98
       sw        $3, 0x14($30)
  .L8005DC90:
      j          .L8005DC9C
       addiu     $2, $0, 0x1
  .L8005DC98:
      addu       $2, $0, $0
  .L8005DC9C:
      lw         $31, 0xBC($29)
      lw         $30, 0xB8($29)
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
.end func_8005D3C8

.globl func_8005DCCC
.ent func_8005DCCC
func_8005DCCC:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      addu       $4, $16, $0
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lhu        $17, 0x2($16)
      jal        func_80058268
       addiu     $5, $0, 0x1
      addu       $4, $16, $0
      lw         $19, 0x0($2)
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $18, 0x4($2)
      andi       $3, $17, 0x2000
      bnez       $3, .L8005DD44
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $16, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $19, 0x8($2)
      ori        $17, $17, 0x2000
      sw         $18, 0xC($2)
      addu       $4, $16, $0
  .L8005DD44:
      jal        func_80058268
       addiu     $5, $0, 0x1
      addu       $4, $16, $0
      addiu      $5, $0, 0x1
      subu       $3, $20, $19
      andi       $3, $3, 0xFFFF
      subu       $3, $18, $3
      jal        func_80058268
       sw        $3, 0x4($2)
      addu       $4, $16, $0
      addiu      $5, $0, 0x1
      jal        func_80058268
       sw        $20, 0x0($2)
      lw         $2, 0x4($2)
      bnel       $2, $0, .L8005DD84
       ori       $17, $17, 0x4000
  .L8005DD84:
      sh         $17, 0x2($16)
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x28
.end func_8005DCCC

.globl func_8005DDAC
.ent func_8005DDAC
func_8005DDAC:
      addiu      $29, $29, -0x98
      sw         $30, 0x90($29)
      addu       $30, $4, $0
      sw         $19, 0x7C($29)
      addu       $19, $6, $0
      sw         $31, 0x94($29)
      sw         $23, 0x8C($29)
      sw         $22, 0x88($29)
      sw         $21, 0x84($29)
      sw         $20, 0x80($29)
      sw         $18, 0x78($29)
      sw         $17, 0x74($29)
      sw         $16, 0x70($29)
      sw         $7, 0xA4($29)
      sw         $0, 0x48($29)
      sw         $0, 0x50($29)
      sw         $0, 0x54($29)
      sw         $0, 0x58($29)
      sb         $0, 0x5C($29)
      sb         $0, 0x5D($29)
      lw         $21, 0x4($19)
      lw         $8, 0xC($30)
      addu       $18, $5, $0
      sw         $8, 0x4C($29)
      lw         $9, 0x20($18)
      sw         $9, 0x60($29)
      lw         $10, 0x24($18)
      addu       $17, $30, $0
      sw         $10, 0x64($29)
      lbu        $2, 0x1F($19)
      lbu        $11, 0x1D($19)
      addu       $22, $0, $0
      bnez       $2, .L8005E388
       sb        $11, 0x68($29)
      addiu      $23, $29, 0x40
      addu       $4, $17, $0
  .L8005DE3C:
      jal        func_80058268
       addiu     $5, $0, 0x1
      addu       $4, $17, $0
      lw         $20, 0x0($2)
      jal        func_80058268
       addiu     $5, $0, 0x1
      addu       $4, $21, $0
      addu       $5, $17, $0
      lw         $7, 0x0($18)
      lw         $16, 0x4($2)
      jal        func_80084994
       addu      $6, $23, $0
      beqz       $16, .L8005DEA4
       addiu     $4, $21, 0x34
      addu       $5, $23, $0
      lw         $2, 0x40($21)
      addiu      $3, $29, 0x28
      sw         $20, 0x10($29)
      sw         $16, 0x14($29)
      sw         $3, 0x18($29)
      lw         $6, 0x0($18)
      lw         $2, 0x10($2)
      jalr       $2
       addiu     $7, $18, 0x28
      j          .L8005DEB0
       addiu     $8, $0, 0x1
  .L8005DEA4:
      sw         $0, 0x2C($29)
      sw         $0, 0x28($29)
      addiu      $8, $0, 0x1
  .L8005DEB0:
      sb         $8, 0x1E($19)
      beqz       $16, .L8005E1C0
       addu      $20, $8, $0
      lhu        $2, 0x2($17)
      andi       $2, $2, 0x800
      bnez       $2, .L8005DEE8
       addu      $4, $17, $0
      lw         $2, 0x8($19)
      lw         $4, 0x28($29)
      lw         $3, 0x1C($18)
      addu       $2, $2, $4
      slt        $3, $3, $2
      beqz       $3, .L8005E1C0
       addu      $4, $17, $0
  .L8005DEE8:
      addu       $5, $21, $0
      lw         $7, 0x48($29)
      lw         $9, 0xA4($29)
      lbu        $16, 0x5C($29)
      addiu      $6, $29, 0x40
      sw         $18, 0x14($29)
      sw         $9, 0x10($29)
      lw         $3, 0x8($19)
      addiu      $2, $29, 0x28
      sw         $2, 0x1C($29)
      addiu      $2, $29, 0x44
      sw         $2, 0x20($29)
      sw         $16, 0x24($29)
      jal        func_8005B7E8
       sw        $3, 0x18($29)
      sb         $2, 0x1E($19)
      andi       $2, $2, 0xFF
      beqz       $2, .L8005DF78
       addiu     $10, $0, 0x2
      lw         $2, 0x24C($18)
      bne        $2, $10, .L8005DF54
       addu      $4, $21, $0
      lw         $6, 0x44($29)
      jal        func_8005DCCC
       addu      $5, $17, $0
      j          .L8005DF64
       addiu     $11, $0, -0x5
  .L8005DF54:
      lw         $6, 0x44($29)
      jal        func_8005B6F0
       addu      $5, $17, $0
      addiu      $11, $0, -0x5
  .L8005DF64:
      beq        $2, $11, .L8005E3F8
       addiu     $8, $0, 0x1
      sw         $17, 0xC($18)
      j          .L8005E1C0
       sb        $8, 0x1F($19)
  .L8005DF78:
      bnez       $16, .L8005E1C4
       andi      $2, $20, 0xFF
      lw         $3, 0x44($29)
      addiu      $2, $0, -0x1
      beq        $3, $2, .L8005E0F0
       addiu     $9, $0, 0x1
      lw         $10, 0x28($29)
      sb         $9, 0x5D($29)
      sw         $3, 0x54($29)
      sw         $17, 0x58($29)
      j          .L8005E0F0
       sw        $10, 0x50($29)
  .L8005DFA8:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      addu       $4, $17, $0
      lw         $16, 0x0($2)
      jal        func_80058268
       addiu     $5, $0, 0x1
      addu       $7, $0, $0
      lw         $4, 0x4($19)
      lw         $6, 0x4($2)
      addiu      $4, $4, 0x34
      addu       $5, $16, $0
      jal        func_8005B620
       addu      $6, $5, $6
      addu       $6, $2, $0
      addiu      $2, $0, -0x1
      beq        $6, $2, .L8005E0F0
       sw        $6, 0x44($29)
      sw         $17, 0xC($18)
      addu       $4, $21, $0
      jal        func_8005B6F0
       addu      $5, $17, $0
      addiu      $11, $0, -0x5
      beq        $2, $11, .L8005E3F8
       addu      $22, $0, $0
      lw         $8, 0x60($29)
      sw         $8, 0x20($18)
      lw         $9, 0x64($29)
      sw         $9, 0x24($18)
      lbu        $10, 0x68($29)
      addu       $16, $30, $0
      beq        $30, $17, .L8005E04C
       sb        $10, 0x1D($19)
  .L8005E02C:
      beqz       $16, .L8005E04C
       addu      $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005B998
       addiu     $6, $19, 0x1D
      lw         $16, 0x8($16)
      bne        $16, $17, .L8005E02C
       addiu     $22, $22, 0x1
  .L8005E04C:
      addiu      $22, $22, 0x1
      addu       $4, $17, $0
      addiu      $5, $0, 0x1
      jal        func_80058268
       sw        $0, 0x48($29)
      addu       $4, $21, $0
      addu       $5, $17, $0
      addu       $6, $23, $0
      lw         $7, 0x0($18)
      lw         $16, 0x0($2)
      jal        func_80084994
       addu      $20, $0, $0
      addiu      $4, $21, 0x34
      addu       $5, $23, $0
      lw         $2, 0x44($29)
      lw         $3, 0x40($21)
      subu       $2, $2, $16
      sw         $2, 0x10($29)
      lw         $6, 0x0($18)
      lw         $2, 0x14($3)
      jalr       $2
       addu      $7, $16, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       sw        $2, 0x28($29)
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $17, $0
      addu       $5, $18, $0
      lw         $2, 0x0($2)
      lw         $3, 0x28($29)
      addiu      $6, $19, 0x1D
      addu       $2, $2, $3
      jal        func_8005B998
       sw        $2, 0x8($16)
      addiu      $11, $0, 0x1
      j          .L8005E104
       sb        $11, 0x1F($19)
  .L8005E0F0:
      beq        $17, $30, .L8005E104
       nop
      lw         $16, 0xC($17)
      bnel       $16, $0, .L8005DFA8
       addu      $17, $16, $0
  .L8005E104:
      lbu        $2, 0x1F($19)
      bnez       $2, .L8005E1C4
       andi      $2, $20, 0xFF
      lw         $2, 0x10($19)
      blez       $2, .L8005E150
       nop
      lw         $8, 0x4C($29)
      sw         $8, 0xC($18)
      lw         $9, 0x60($29)
      addu       $22, $0, $0
      sw         $9, 0x20($18)
      lw         $10, 0x64($29)
      addu       $20, $22, $0
      sw         $10, 0x24($18)
      lbu        $11, 0x68($29)
      addiu      $8, $0, 0x1
      sb         $8, 0x1F($19)
      j          .L8005E1C0
       sb        $11, 0x1D($19)
  .L8005E150:
      lbu        $2, 0x5D($29)
      beqz       $2, .L8005E1B8
       addiu     $11, $0, 0x2
      lw         $9, 0x50($29)
      sw         $9, 0x28($29)
      lw         $2, 0x24C($18)
      lw         $17, 0x58($29)
      lw         $10, 0x54($29)
      bne        $2, $11, .L8005E190
       sw        $10, 0x44($29)
      addu       $4, $21, $0
      addu       $5, $17, $0
      jal        func_8005DCCC
       addu      $6, $10, $0
      j          .L8005E1A4
       addiu     $8, $0, -0x5
  .L8005E190:
      addu       $4, $21, $0
      lw         $6, 0x54($29)
      jal        func_8005B6F0
       addu      $5, $17, $0
      addiu      $8, $0, -0x5
  .L8005E1A4:
      beq        $2, $8, .L8005E3F8
       addiu     $9, $0, 0x1
      sw         $17, 0xC($18)
      j          .L8005E1C0
       sb        $9, 0x1F($19)
  .L8005E1B8:
      addiu      $10, $0, 0x1
      sb         $10, 0x5C($29)
  .L8005E1C0:
      andi       $2, $20, 0xFF
  .L8005E1C4:
      beqz       $2, .L8005E2B8
       addu      $4, $17, $0
      lw         $16, 0x34($18)
      lw         $2, 0x38($18)
      lw         $3, 0x2C($29)
      subu       $16, $16, $2
      mult       $16, $3
      addu       $5, $0, $0
      addiu      $22, $22, 0x1
      mflo       $16
      srl        $2, $16, 31
      addu       $16, $16, $2
      jal        func_80058268
       sra       $16, $16, 1
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      lw         $11, 0xC($2)
      sw         $8, 0x30($29)
      sw         $9, 0x34($29)
      sw         $10, 0x38($29)
      sw         $11, 0x3C($29)
      lw         $2, 0x8($19)
      lw         $3, 0x28($29)
      addu       $4, $17, $0
      sw         $2, 0x30($29)
      lw         $2, 0x8($19)
      addu       $5, $0, $0
      addu       $2, $2, $3
      sw         $2, 0x38($29)
      lw         $2, 0x18($18)
      lw         $3, 0x2C($29)
      subu       $2, $2, $16
      sw         $2, 0x34($29)
      addu       $2, $2, $3
      jal        func_80058268
       sw        $2, 0x3C($29)
      addu       $4, $17, $0
      lw         $8, 0x30($29)
      lw         $9, 0x34($29)
      lw         $10, 0x38($29)
      lw         $11, 0x3C($29)
      sw         $8, 0x0($2)
      sw         $9, 0x4($2)
      sw         $10, 0x8($2)
      sw         $11, 0xC($2)
      jal        func_80058268
       addu      $5, $0, $0
      addiu      $4, $29, 0x40
      addu       $5, $18, $0
      jal        func_8005BA60
       addu      $16, $2, $0
      addu       $4, $17, $0
      addu       $5, $18, $0
      sw         $2, 0x10($16)
      lw         $2, 0x8($19)
      lw         $3, 0x28($29)
      addiu      $6, $19, 0x1D
      addu       $2, $2, $3
      jal        func_8005B998
       sw        $2, 0x8($19)
  .L8005E2B8:
      lbu        $2, 0x1F($19)
      bnez       $2, .L8005E388
       nop
      lw         $4, 0x8($17)
      beqz       $4, .L8005E3CC
       addiu     $2, $0, 0x1
      lbu        $3, 0x10($4)
      bne        $3, $2, .L8005E314
       nop
      lbu        $2, 0x11($4)
      lw         $3, 0x9C($21)
      sll        $2, $2, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      lbu        $2, 0x8($2)
      beqz       $2, .L8005E314
       nop
      lhu        $2, 0x2($4)
      andi       $2, $2, 0x800
      bnez       $2, .L8005E314
       nop
      j          .L8005E37C
       addu      $17, $4, $0
  .L8005E314:
      lbu        $2, 0x5C($29)
      beql       $2, $0, .L8005E35C
       sw        $17, 0xC($18)
      lw         $2, 0x10($19)
      bnel       $2, $0, .L8005E334
       addu      $22, $0, $0
      j          .L8005E35C
       sw        $17, 0xC($18)
  .L8005E334:
      lw         $8, 0x4C($29)
      sw         $8, 0xC($18)
      lw         $9, 0x60($29)
      sw         $9, 0x20($18)
      lw         $10, 0x64($29)
      sw         $10, 0x24($18)
      lbu        $11, 0x68($29)
      addiu      $8, $0, 0x1
      sb         $11, 0x1D($19)
      sb         $8, 0x1F($19)
  .L8005E35C:
      lw         $2, 0x24C($18)
      addiu      $9, $0, 0x2
      bne        $2, $9, .L8005E388
       nop
      lhu        $2, 0x2($17)
      andi       $2, $2, 0xBFFF
      j          .L8005E388
       sh        $2, 0x2($17)
  .L8005E37C:
      lbu        $2, 0x1F($19)
      beqz       $2, .L8005DE3C
       addu      $4, $17, $0
  .L8005E388:
      lw         $2, 0x10($19)
      addu       $2, $2, $22
      sw         $2, 0x10($19)
      lw         $3, 0x24C($18)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L8005E3D8
       addiu     $2, $0, 0x1
      lbu        $3, 0x10($17)
      bne        $3, $2, .L8005E3D8
       nop
      lhu        $2, 0x2($17)
      andi       $2, $2, 0x4000
      beqz       $2, .L8005E3D8
       nop
      sb         $3, 0x20($19)
      j          .L8005E3F8
       sw        $17, 0x14($19)
  .L8005E3CC:
      addiu      $2, $0, 0x1
      j          .L8005E388
       sb        $2, 0x1F($19)
  .L8005E3D8:
      beq        $30, $17, .L8005E3F0
       addiu     $2, $0, 0x1
      sb         $2, 0x20($19)
      lw         $2, 0x8($17)
      j          .L8005E3F8
       sw        $2, 0x14($19)
  .L8005E3F0:
      sw         $30, 0x14($19)
      sb         $0, 0x20($19)
  .L8005E3F8:
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
.end func_8005DDAC

.globl func_8005E428
.ent func_8005E428
func_8005E428:
      addiu      $29, $29, -0x60
      sw         $18, 0x48($29)
      addu       $18, $4, $0
      sw         $19, 0x4C($29)
      addu       $19, $5, $0
      sw         $20, 0x50($29)
      addu       $20, $6, $0
      addu       $5, $18, $0
      sw         $21, 0x54($29)
      addiu      $21, $29, 0x38
      addu       $6, $21, $0
      sw         $31, 0x58($29)
      sw         $17, 0x44($29)
      sw         $16, 0x40($29)
      lw         $17, 0x4($20)
      lw         $7, 0x0($19)
      jal        func_80084994
       addu      $4, $17, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $2, 0x4($2)
      beqz       $2, .L8005E4DC
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      addu       $4, $18, $0
      addiu      $5, $0, 0x1
      jal        func_80058268
       addu      $16, $2, $0
      addiu      $4, $17, 0x34
      lw         $7, 0x40($17)
      lw         $3, 0x0($16)
      addu       $5, $21, $0
      sw         $3, 0x10($29)
      lw         $3, 0x4($2)
      addiu      $2, $29, 0x20
      sw         $2, 0x18($29)
      sw         $3, 0x14($29)
      lw         $6, 0x0($19)
      lw         $2, 0x10($7)
      jalr       $2
       addiu     $7, $19, 0x28
      j          .L8005E4E4
       addu      $4, $18, $0
  .L8005E4DC:
      sw         $0, 0x24($29)
      sw         $0, 0x20($29)
  .L8005E4E4:
      jal        func_80058268
       addu      $5, $0, $0
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      lw         $11, 0xC($2)
      sw         $8, 0x28($29)
      sw         $9, 0x2C($29)
      sw         $10, 0x30($29)
      sw         $11, 0x34($29)
      lw         $2, 0x8($20)
      lw         $3, 0x20($29)
      sw         $2, 0x28($29)
      lw         $2, 0x8($20)
      addu       $2, $2, $3
      sw         $2, 0x30($29)
      lw         $2, 0x18($19)
      lw         $3, 0x24($29)
      addu       $4, $18, $0
      sw         $2, 0x2C($29)
      lw         $2, 0x18($19)
      addu       $5, $0, $0
      addu       $2, $2, $3
      jal        func_80058268
       sw        $2, 0x34($29)
      addu       $4, $18, $0
      lw         $8, 0x28($29)
      lw         $9, 0x2C($29)
      lw         $10, 0x30($29)
      lw         $11, 0x34($29)
      sw         $8, 0x0($2)
      sw         $9, 0x4($2)
      sw         $10, 0x8($2)
      sw         $11, 0xC($2)
      jal        func_80058268
       addu      $5, $0, $0
      addiu      $4, $29, 0x38
      addu       $5, $19, $0
      jal        func_8005BA60
       addu      $16, $2, $0
      addu       $4, $18, $0
      addu       $5, $19, $0
      sw         $2, 0x10($16)
      lw         $2, 0x8($20)
      lw         $3, 0x20($29)
      addiu      $6, $20, 0x1D
      addu       $2, $2, $3
      jal        func_8005B998
       sw        $2, 0x8($20)
      lw         $2, 0x10($20)
      addiu      $2, $2, 0x1
      sw         $2, 0x10($20)
      lw         $31, 0x58($29)
      lw         $21, 0x54($29)
      lw         $20, 0x50($29)
      lw         $19, 0x4C($29)
      lw         $18, 0x48($29)
      lw         $17, 0x44($29)
      lw         $16, 0x40($29)
      jr         $31
       addiu     $29, $29, 0x60
.end func_8005E428

.globl func_8005E5D8
.ent func_8005E5D8
func_8005E5D8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $3, 0x4($6)
      lbu        $2, 0x11($4)
      lw         $3, 0x9C($3)
      sll        $2, $2, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      lbu        $2, 0x8($2)
      beqz       $2, .L8005E624
       nop
      lhu        $2, 0x2($4)
      andi       $2, $2, 0x800
      bnez       $2, .L8005E624
       nop
      jal        func_8005DDAC
       nop
      j          .L8005E62C
       nop
  .L8005E624:
      jal        func_8005E428
       nop
  .L8005E62C:
      lw         $31, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_8005E5D8

.globl func_8005E63C
.ent func_8005E63C
func_8005E63C:
      lw         $2, 0x34($5)
      addiu      $2, $2, 0x1
      sw         $2, 0x34($5)
      jr         $31
       addu      $2, $0, $0
.end func_8005E63C

.globl func_8005E650
.ent func_8005E650
func_8005E650:
      lw         $2, 0x34($5)
      addiu      $2, $2, -0x1
      bgez       $2, .L8005E664
       sw        $2, 0x34($5)
      sw         $0, 0x34($5)
  .L8005E664:
      jr         $31
       addu      $2, $0, $0
.end func_8005E650

.globl func_8005E66C
.ent func_8005E66C
func_8005E66C:
      lw         $2, 0x38($5)
      addiu      $2, $2, 0x1
      sw         $2, 0x38($5)
      jr         $31
       addu      $2, $0, $0
.end func_8005E66C

.globl func_8005E680
.ent func_8005E680
func_8005E680:
      lw         $2, 0x38($5)
      addiu      $2, $2, -0x1
      bgez       $2, .L8005E694
       sw        $2, 0x38($5)
      sw         $0, 0x38($5)
  .L8005E694:
      jr         $31
       addu      $2, $0, $0
.end func_8005E680

.globl func_8005E69C
.ent func_8005E69C
func_8005E69C:
      addiu      $29, $29, -0x50
      sw         $18, 0x38($29)
      addu       $18, $4, $0
      sw         $21, 0x44($29)
      addu       $21, $5, $0
      sw         $16, 0x30($29)
      addu       $16, $6, $0
      sw         $20, 0x40($29)
      addu       $20, $7, $0
      sw         $31, 0x48($29)
      sw         $19, 0x3C($29)
      sw         $17, 0x34($29)
      lw         $19, 0x4($20)
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x4
      beq        $3, $2, .L8005E700
       addu      $4, $18, $0
      jal        func_80058268
       addu      $5, $2, $0
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x5
      bne        $3, $2, .L8005E890
       addiu     $2, $29, 0x18
  .L8005E700:
      lw         $2, 0x3C($21)
      addiu      $2, $2, 0x1
      sw         $2, 0x3C($21)
      lw         $2, 0x10($20)
      bnez       $2, .L8005E720
       addu      $4, $18, $0
      addiu      $2, $0, 0x1
      sb         $2, 0x1F($20)
  .L8005E720:
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x5
      bne        $3, $2, .L8005EB7C
       addu      $2, $0, $0
      lw         $2, 0x24C($21)
      beqz       $2, .L8005EB78
       addu      $4, $18, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $19, $0
      addu       $5, $21, $0
      addu       $6, $16, $0
      addu       $7, $18, $0
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      lw         $11, 0xC($2)
      sw         $8, 0x20($29)
      sw         $9, 0x24($29)
      sw         $10, 0x28($29)
      sw         $11, 0x2C($29)
      addiu      $2, $29, 0x18
      jal        func_80058598
       sw        $2, 0x10($29)
      andi       $2, $2, 0xFF
      beqz       $2, .L8005E8B4
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x1C($2)
      beqz       $2, .L8005E834
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x9C($19)
      lbu        $3, 0x1C($2)
      lh         $2, 0x44($4)
      mult       $3, $2
      mflo       $3
      lui        $17, (0x2AAAAAAB >> 16)
      ori        $17, $17, (0x2AAAAAAB & 0xFFFF)
      mult       $3, $17
      addiu      $5, $0, 0x2
      addu       $4, $18, $0
      sra        $3, $3, 31
      mfhi       $12
      sra        $16, $12, 4
      jal        func_80058268
       subu      $16, $16, $3
      lw         $3, 0x9C($19)
      lbu        $4, 0x1C($2)
      lh         $2, 0x46($3)
      mult       $4, $2
      mflo       $4
      sll        $16, $16, 1
      lw         $2, 0x18($29)
      mult       $4, $17
      addu       $2, $2, $16
      sw         $2, 0x18($29)
      lw         $2, 0x1C($29)
      sra        $4, $4, 31
      mfhi       $3
      sra        $3, $3, 4
      subu       $3, $3, $4
      sll        $3, $3, 1
      addu       $2, $2, $3
      sw         $2, 0x1C($29)
  .L8005E834:
      lw         $2, 0x8($20)
      lw         $3, 0x18($29)
      addu       $4, $18, $0
      sw         $2, 0x20($29)
      addu       $2, $2, $3
      sw         $2, 0x28($29)
      lw         $2, 0x18($21)
      lw         $3, 0x1C($29)
      addu       $5, $0, $0
      sw         $2, 0x24($29)
      addu       $2, $2, $3
      jal        func_80058268
       sw        $2, 0x2C($29)
      lw         $8, 0x20($29)
      lw         $9, 0x24($29)
      lw         $10, 0x28($29)
      lw         $11, 0x2C($29)
      sw         $8, 0x0($2)
      sw         $9, 0x4($2)
      sw         $10, 0x8($2)
      sw         $11, 0xC($2)
      j          .L8005EB7C
       addu      $2, $0, $0
  .L8005E890:
      sw         $2, 0x10($29)
      addu       $4, $19, $0
      addu       $5, $21, $0
      addu       $6, $16, $0
      jal        func_80058598
       addu      $7, $18, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L8005E8C8
       addu      $4, $18, $0
  .L8005E8B4:
      addu       $2, $0, $0
      addiu      $3, $0, 0x1
      sb         $3, 0x1F($20)
      j          .L8005EB7C
       sb        $3, 0x7A($16)
  .L8005E8C8:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x1C($2)
      beqz       $2, .L8005E968
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x9C($19)
      lbu        $3, 0x1C($2)
      lh         $2, 0x44($4)
      mult       $3, $2
      mflo       $3
      lui        $17, (0x2AAAAAAB >> 16)
      ori        $17, $17, (0x2AAAAAAB & 0xFFFF)
      mult       $3, $17
      addiu      $5, $0, 0x2
      addu       $4, $18, $0
      sra        $3, $3, 31
      mfhi       $12
      sra        $16, $12, 4
      jal        func_80058268
       subu      $16, $16, $3
      lw         $3, 0x9C($19)
      lbu        $4, 0x1C($2)
      lh         $2, 0x46($3)
      mult       $4, $2
      mflo       $4
      sll        $16, $16, 1
      lw         $2, 0x18($29)
      mult       $4, $17
      addu       $2, $2, $16
      sw         $2, 0x18($29)
      lw         $2, 0x1C($29)
      sra        $4, $4, 31
      mfhi       $3
      sra        $3, $3, 4
      subu       $3, $3, $4
      sll        $3, $3, 1
      addu       $2, $2, $3
      sw         $2, 0x1C($29)
  .L8005E968:
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $2, 0x14($2)
      blez       $2, .L8005E9BC
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x9C($19)
      lh         $3, 0x14($2)
      lh         $2, 0x44($4)
      mult       $3, $2
      mflo       $3
      lui        $2, (0x2AAAAAAB >> 16)
      ori        $2, $2, (0x2AAAAAAB & 0xFFFF)
      mult       $3, $2
      sra        $3, $3, 31
      mfhi       $12
      sra        $2, $12, 4
      j          .L8005E9C0
       subu      $16, $2, $3
  .L8005E9BC:
      addu       $16, $0, $0
  .L8005E9C0:
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $2, 0x16($2)
      blez       $2, .L8005EA14
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x9C($19)
      lh         $3, 0x16($2)
      lh         $2, 0x46($4)
      mult       $3, $2
      mflo       $3
      lui        $2, (0x2AAAAAAB >> 16)
      ori        $2, $2, (0x2AAAAAAB & 0xFFFF)
      mult       $3, $2
      sra        $3, $3, 31
      mfhi       $12
      sra        $2, $12, 4
      j          .L8005EA18
       subu      $17, $2, $3
  .L8005EA14:
      addu       $17, $0, $0
  .L8005EA18:
      jal        func_80060B14
       addu      $4, $21, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8005EA34
       nop
      j          .L8005EA48
       negu      $16, $16
  .L8005EA34:
      jal        func_80060AF0
       addu      $4, $21, $0
      andi       $2, $2, 0xFF
      bnel       $2, $0, .L8005EA48
       addu      $16, $0, $0
  .L8005EA48:
      lw         $2, 0x10($20)
      beqz       $2, .L8005EAA4
       sll       $4, $16, 1
      lw         $3, 0x8($20)
      lw         $2, 0x18($29)
      addu       $3, $3, $2
      lw         $2, 0x1C($21)
      addu       $3, $3, $4
      slt        $2, $2, $3
      beqz       $2, .L8005EAA8
       addu      $4, $18, $0
      lbu        $2, 0x11($18)
      lw         $3, 0x9C($19)
      sll        $2, $2, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      lbu        $2, 0x8($2)
      beqz       $2, .L8005EAA8
       nop
      lhu        $2, 0x2($18)
      andi       $2, $2, 0x800
      beqz       $2, .L8005EB68
       nop
  .L8005EAA4:
      addu       $4, $18, $0
  .L8005EAA8:
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $18, $0
      addu       $5, $0, $0
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      lw         $11, 0xC($2)
      sw         $8, 0x20($29)
      sw         $9, 0x24($29)
      sw         $10, 0x28($29)
      sw         $11, 0x2C($29)
      lw         $2, 0x8($20)
      lw         $3, 0x18($29)
      addu       $2, $2, $16
      sw         $2, 0x20($29)
      addu       $2, $2, $3
      sw         $2, 0x28($29)
      lw         $2, 0x18($21)
      lw         $3, 0x1C($29)
      addu       $2, $2, $17
      sw         $2, 0x24($29)
      addu       $2, $2, $3
      jal        func_80058268
       sw        $2, 0x2C($29)
      lw         $8, 0x20($29)
      lw         $9, 0x24($29)
      lw         $10, 0x28($29)
      lw         $11, 0x2C($29)
      sw         $8, 0x0($2)
      sw         $9, 0x4($2)
      sw         $10, 0x8($2)
      sw         $11, 0xC($2)
      lw         $2, 0x28($29)
      addu       $2, $2, $16
      sw         $2, 0x8($20)
      lw         $3, 0x2C($29)
      lw         $2, 0x20($21)
      addu       $3, $3, $17
      slt        $2, $2, $3
      bnel       $2, $0, .L8005EB50
       sw        $3, 0x20($21)
  .L8005EB50:
      lw         $2, 0x10($20)
      addiu      $3, $0, 0x1
      sb         $3, 0x1D($20)
      addiu      $2, $2, 0x1
      j          .L8005EB78
       sw        $2, 0x10($20)
  .L8005EB68:
      lw         $2, 0xC($18)
      sw         $2, 0xC($21)
      addiu      $2, $0, 0x1
      sb         $2, 0x1F($20)
  .L8005EB78:
      addu       $2, $0, $0
  .L8005EB7C:
      lw         $31, 0x48($29)
      lw         $21, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_8005E69C

.globl func_8005EBA0
.ent func_8005EBA0
func_8005EBA0:
      addiu      $29, $29, -0x40
      sw         $20, 0x30($29)
      addu       $20, $4, $0
      sw         $21, 0x34($29)
      sw         $18, 0x28($29)
      addu       $18, $6, $0
      lui        $2, %hi(D_80137144)
      addiu      $3, $0, 0x1
      sw         $31, 0x3C($29)
      sw         $22, 0x38($29)
      sw         $19, 0x2C($29)
      sw         $17, 0x24($29)
      sw         $16, 0x20($29)
      lw         $16, 0x8($18)
      lw         $4, %lo(D_80137144)($2)
      lw         $17, 0x50($29)
      bne        $4, $3, .L8005EC00
       addu      $21, $5, $0
      lw         $2, 0xE8($21)
      and        $2, $2, $3
      beqz       $2, .L8005EC00
       lui       $2, %hi(D_80125540)
      j          .L8005EC08
       sb        $4, %lo(D_80125540)($2)
  .L8005EC00:
      lui        $2, %hi(D_80125540)
      sb         $0, %lo(D_80125540)($2)
  .L8005EC08:
      sw         $20, 0x0($17)
      sw         $21, 0x4($17)
      sw         $7, 0xC($17)
      sw         $7, 0x8($17)
      sw         $0, 0x10($17)
      sb         $0, 0x1F($17)
      sb         $0, 0x1D($17)
      sb         $0, 0x20($17)
      sw         $0, 0x14($17)
      sb         $0, 0x1C($17)
      sw         $0, 0x18($17)
      lw         $3, 0x18($18)
      lw         $4, 0x8($18)
      addiu      $2, $0, -0x1
      sb         $0, 0x252($18)
      sw         $2, 0x24($18)
      sw         $2, 0x28($18)
      sw         $0, 0x2C($18)
      sw         $3, 0x20($18)
      sw         $4, 0xC($18)
      lbu        $2, 0x1F($17)
      bnez       $2, .L8005F0D8
       lui       $2, %hi(jtbl_800EE7E0)
      addiu      $22, $2, %lo(jtbl_800EE7E0)
      addiu      $19, $0, 0x1
  .L8005EC6C:
      lbu        $2, 0x10($16)
      lw         $3, 0xC($18)
      sw         $16, 0xC($18)
      andi       $2, $2, 0xFF
      sw         $3, 0x10($18)
      addiu      $3, $2, -0x1
      sltiu      $2, $3, 0xFF
      beqz       $2, .L8005F088
       sll       $2, $3, 2
      addu       $2, $2, $22
      lw         $2, 0x0($2)
      jr         $2
       nop
  .globl .L8005ECA0
.L8005ECA0:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005CBC0
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005ECB8
.L8005ECB8:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005CFF4
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005ECD0
.L8005ECD0:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005D3C8
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005ECE8
.L8005ECE8:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005C47C
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005ED00
.L8005ED00:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005C6BC
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005ED18
.L8005ED18:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005C96C
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005ED30
.L8005ED30:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BA80
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005ED48
.L8005ED48:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BB0C
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005ED60
.L8005ED60:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BB84
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005ED78
.L8005ED78:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BBD8
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005ED90
.L8005ED90:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BC74
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005EDA8
.L8005EDA8:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BCD4
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005EDC0
.L8005EDC0:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BD28
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005EDD8
.L8005EDD8:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BD88
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005EDF0
.L8005EDF0:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BDDC
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005EE08
.L8005EE08:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BECC
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005EE20
.L8005EE20:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BE3C
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005EE38
.L8005EE38:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BF5C
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005EE50
.L8005EE50:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BFEC
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005EE68
.L8005EE68:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005C214
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005EE80
.L8005EE80:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005C314
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005EE98
.L8005EE98:
      j          .L8005EEAC
       addiu     $2, $0, 0x1
  .globl .L8005EEA0
.L8005EEA0:
      j          .L8005EEAC
       addiu     $2, $0, 0x2
  .globl .L8005EEA8
.L8005EEA8:
      addiu      $2, $0, 0x3
  .L8005EEAC:
      sb         $19, 0x1F($17)
      j          .L8005F088
       sw        $2, 0x248($18)
  .globl .L8005EEB8
.L8005EEB8:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BE8C
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005EED0
.L8005EED0:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BF1C
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005EEE8
.L8005EEE8:
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8005BFAC
       addu      $6, $17, $0
      j          .L8005F088
       nop
  .globl .L8005EF00
.L8005EF00:
      addu       $4, $16, $0
      addu       $5, $18, $0
      addu       $6, $17, $0
      jal        func_8005E5D8
       addu      $7, $20, $0
      j          .L8005F088
       nop
  .globl .L8005EF1C
.L8005EF1C:
      addu       $4, $16, $0
      addu       $5, $18, $0
      addu       $6, $17, $0
      jal        func_8005E63C
       addu      $7, $20, $0
      j          .L8005F088
       nop
  .globl .L8005EF38
.L8005EF38:
      addu       $4, $16, $0
      addu       $5, $18, $0
      addu       $6, $17, $0
      jal        func_8005E650
       addu      $7, $20, $0
      j          .L8005F088
       nop
  .globl .L8005EF54
.L8005EF54:
      addu       $4, $16, $0
      addu       $5, $18, $0
      addu       $6, $17, $0
      jal        func_8005E66C
       addu      $7, $20, $0
      j          .L8005F088
       nop
  .globl .L8005EF70
.L8005EF70:
      addu       $4, $16, $0
      addu       $5, $18, $0
      addu       $6, $17, $0
      jal        func_8005E680
       addu      $7, $20, $0
      j          .L8005F088
       nop
  .globl .L8005EF8C
.L8005EF8C:
      addu       $4, $16, $0
      addu       $5, $18, $0
      addu       $6, $20, $0
      jal        func_8005E69C
       addu      $7, $17, $0
      addu       $4, $16, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      lw         $11, 0xC($2)
      sw         $8, 0x10($29)
      sw         $9, 0x14($29)
      sw         $10, 0x18($29)
      sw         $11, 0x1C($29)
      lui        $2, %hi(D_80137144)
      lw         $3, %lo(D_80137144)($2)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8005F038
       addu      $4, $16, $0
      lw         $2, 0xE8($21)
      andi       $2, $2, 0x1
      bnez       $2, .L8005F038
       addu      $5, $0, $0
      lw         $2, 0x1C($29)
      lw         $6, 0x14($29)
      subu       $2, $2, $6
      srl        $3, $2, 31
      addu       $2, $2, $3
      sra        $2, $2, 1
      addu       $6, $6, $2
      jal        func_80058268
       sw        $6, 0x1C($29)
      lw         $8, 0x10($29)
      lw         $9, 0x14($29)
      lw         $10, 0x18($29)
      lw         $11, 0x1C($29)
      sw         $8, 0x0($2)
      sw         $9, 0x4($2)
      sw         $10, 0x8($2)
      sw         $11, 0xC($2)
      addu       $4, $16, $0
  .L8005F038:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0xC($2)
      beqz       $2, .L8005F088
       addu      $4, $16, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $19, 0x20($17)
      lw         $2, 0xC($2)
      j          .L8005F088
       sw        $2, 0x14($17)
  .globl .L8005F064
.L8005F064:
      addu       $4, $20, $0
      addu       $5, $16, $0
      addiu      $6, $21, 0x1C
      sb         $19, 0x1F($17)
      jal        func_80061980
       sb        $0, 0x1D($17)
      j          .L8005F088
       sw        $2, 0xC($18)
  .globl .L8005F084
.L8005F084:
      sb         $19, 0x1F($17)
  .globl .L8005F088
.L8005F088:
      lbu        $2, 0x20($17)
      bnez       $2, .L8005F0A0
       nop
      lw         $16, 0x8($16)
      j          .L8005F0AC
       nop
  .L8005F0A0:
      lw         $16, 0x14($17)
      sw         $0, 0x14($17)
      sb         $0, 0x20($17)
  .L8005F0AC:
      lbu        $2, 0x1C($17)
      beqz       $2, .L8005F0C4
       nop
      lbu        $2, 0x1F($17)
      bnel       $2, $0, .L8005F0C4
       sb        $0, 0x1F($17)
  .L8005F0C4:
      beql       $16, $0, .L8005F0CC
       sb        $19, 0x1F($17)
  .L8005F0CC:
      lbu        $2, 0x1F($17)
      beqz       $2, .L8005EC6C
       nop
  .L8005F0D8:
      lw         $2, 0x10($17)
      beqz       $2, .L8005F0F0
       nop
      lw         $2, 0x2C($18)
      j          .L8005F100
       sw        $2, 0x30($18)
  .L8005F0F0:
      lw         $2, 0x30($18)
      lw         $3, 0x2C($18)
      addu       $2, $2, $3
      sw         $2, 0x30($18)
  .L8005F100:
      lw         $2, 0xC($18)
      bnez       $2, .L8005F114
       nop
      lw         $2, 0x10($18)
      sw         $2, 0xC($18)
  .L8005F114:
      lbu        $2, 0x1D($17)
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
.end func_8005EBA0

.globl func_8005F140
.ent func_8005F140
func_8005F140:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      lw         $2, 0x0($16)
      beqz       $2, .L8005F1CC
       nop
      lbu        $3, 0x10($2)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8005F1CC
       addu      $17, $2, $0
  .L8005F170:
      lw         $4, 0x0($16)
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $3, 0x4($16)
      lw         $2, 0x4($2)
      slt        $2, $2, $3
      beqz       $2, .L8005F1CC
       nop
      lw         $4, 0x0($16)
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $3, 0x4($16)
      lw         $2, 0x4($2)
      subu       $3, $3, $2
      sw         $3, 0x4($16)
  .L8005F1AC:
      lw         $2, 0x0($16)
      lw         $2, 0x8($2)
      sw         $2, 0x0($16)
      lbu        $2, 0x10($2)
      bne        $2, $17, .L8005F1AC
       nop
      j          .L8005F170
       nop
  .L8005F1CC:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8005F140

.globl func_8005F1E0
.ent func_8005F1E0
func_8005F1E0:
      jr         $31
       nop
.end func_8005F1E0

.globl func_8005F1E8
.ent func_8005F1E8
func_8005F1E8:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      beqz       $5, .L8005F2BC
       sw        $16, 0x10($29)
      beqz       $18, .L8005F2BC
       addiu     $2, $0, -0x1
      lw         $3, 0x80($18)
      beq        $3, $2, .L8005F2BC
       nop
      lw         $20, 0x4($5)
      beqz       $20, .L8005F2BC
       addu      $17, $0, $0
      lw         $4, 0x44($18)
      jal        func_80058434
       addu      $19, $17, $0
      addu       $16, $2, $0
      beqz       $16, .L8005F2A4
       andi      $2, $19, 0xFF
  .L8005F244:
      bne        $16, $20, .L8005F254
       nop
      j          .L8005F2A0
       addiu     $19, $0, 0x1
  .L8005F254:
      lw         $4, 0x68($18)
      beqz       $4, .L8005F294
       nop
      lw         $2, 0x7C($18)
      beqz       $2, .L8005F294
       addu      $5, $17, $0
      jal        func_80060CE0
       addiu     $6, $0, 0x1
      lw         $2, 0x4($2)
      bne        $16, $2, .L8005F294
       nop
      lw         $2, 0x80($18)
      slt        $2, $17, $2
      beqz       $2, .L8005F2A4
       andi      $2, $19, 0xFF
      addiu      $17, $17, 0x1
  .L8005F294:
      lw         $16, 0x8($16)
      bnez       $16, .L8005F244
       nop
  .L8005F2A0:
      andi       $2, $19, 0xFF
  .L8005F2A4:
      beqz       $2, .L8005F2BC
       addiu     $2, $17, -0x1
      bgez       $2, .L8005F2BC
       sw        $2, 0x80($18)
      addiu      $2, $0, -0x1
      sw         $2, 0x80($18)
  .L8005F2BC:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8005F1E8

.globl func_8005F2DC
.ent func_8005F2DC
func_8005F2DC:
      addiu      $29, $29, -0x320
      sw         $20, 0x308($29)
      addu       $20, $4, $0
      sw         $23, 0x314($29)
      addu       $23, $0, $0
      sw         $22, 0x310($29)
      addiu      $22, $0, 0x1
      sw         $31, 0x31C($29)
      sw         $30, 0x318($29)
      sw         $21, 0x30C($29)
      sw         $19, 0x304($29)
      sw         $18, 0x300($29)
      sw         $17, 0x2FC($29)
      beqz       $20, .L8005FC50
       sw        $16, 0x2F8($29)
      lw         $2, 0x4($20)
      beql       $2, $0, .L8005FC54
       addu      $2, $22, $0
      lw         $3, 0x0($2)
      beqz       $3, .L8005FC54
       addu      $2, $22, $0
      lw         $2, 0x10($20)
      beqz       $2, .L8005FC54
       addu      $2, $22, $0
      lw         $4, 0x44($3)
      jal        func_8005832C
       nop
      beqz       $2, .L8005FC54
       addiu     $2, $0, 0x1
      lw         $2, 0x4($20)
      lw         $5, 0x0($2)
      lw         $2, 0x60($5)
      bnez       $2, .L8005FC54
       addiu     $2, $0, 0x1
      lbu        $2, 0x79($20)
      bnez       $2, .L8005FC54
       addiu     $2, $0, 0x1
      addu       $4, $20, $0
      jal        func_8007BEAC
       addu      $18, $5, $0
      lw         $2, 0x84($18)
      bnez       $2, .L8005F3B0
       addu      $4, $20, $0
      addiu      $4, $0, 0x278
      jal        func_80052504
       addu      $5, $0, $0
      addu       $3, $2, $0
      sw         $3, 0x84($18)
      beqz       $3, .L8005FC54
       addiu     $2, $0, -0x5
      addiu      $2, $0, -0x1
      sw         $2, 0x4($3)
      addu       $4, $20, $0
  .L8005F3B0:
      addiu      $17, $29, 0x2B8
      lw         $16, 0x84($18)
      jal        func_8008BB94
       addu      $5, $17, $0
      addu       $4, $18, $0
      lw         $30, 0x80($18)
      jal        func_8008BB28
       addu      $5, $20, $0
      lw         $3, 0x2C0($29)
      subu       $3, $3, $2
      sw         $3, 0x2C0($29)
      lw         $8, 0x6C($18)
      addu       $4, $20, $0
      jal        func_8005F1E0
       sw        $8, 0x2E8($29)
      lbu        $2, 0xD9($18)
      beqz       $2, .L8005F420
       addiu     $4, $18, 0x1C
      lbu        $2, 0x7E($20)
      beqz       $2, .L8005F420
       addiu     $2, $0, -0x1
      lw         $3, 0x80($18)
      bne        $3, $2, .L8005F420
       addu      $5, $17, $0
      addu       $4, $20, $0
      jal        func_8008BB08
       addu      $6, $0, $0
      addiu      $4, $18, 0x1C
  .L8005F420:
      jal        func_8008A1B0
       addiu     $5, $29, 0x2B8
      andi       $2, $2, 0xFF
      beqz       $2, .L8005F44C
       addiu     $2, $0, -0x1
      lw         $3, 0x80($18)
      beq        $3, $2, .L8005F450
       nop
      lw         $2, 0x4($16)
      beq        $2, $3, .L8005F4C4
       nop
  .L8005F44C:
      addiu      $2, $0, -0x1
  .L8005F450:
      lw         $9, 0x2B8($29)
      lw         $10, 0x2BC($29)
      lw         $11, 0x2C0($29)
      lw         $8, 0x2C4($29)
      sw         $9, 0x1C($18)
      sw         $10, 0x20($18)
      sw         $11, 0x24($18)
      sw         $8, 0x28($18)
      sw         $2, 0x80($18)
      sw         $0, 0x248($16)
      sw         $0, 0x40($16)
      sw         $0, 0x144($16)
      lw         $4, 0x58($20)
      lui        $5, (0x186A0 >> 16)
      sw         $4, 0x14($16)
      lw         $2, 0x2C0($29)
      lw         $3, 0x2B8($29)
      ori        $5, $5, (0x186A0 & 0xFFFF)
      sh         $0, 0x250($16)
      subu       $2, $2, $3
      subu       $2, $2, $4
      sw         $2, 0x1C($16)
      lw         $2, 0x54($20)
      addu       $4, $16, $0
      sw         $2, 0x18($16)
      sw         $0, 0x7C($18)
      sw         $5, 0x30($16)
      jal        func_80060B38
       sw        $0, 0xC($16)
  .L8005F4C4:
      jal        func_8008C060
       addu      $4, $20, $0
      sw         $2, 0x0($16)
      lw         $2, 0x80($18)
      addiu      $2, $2, 0x1
      bgez       $2, .L8005F4E4
       sw        $2, 0x7C($18)
      sw         $0, 0x7C($18)
  .L8005F4E4:
      lw         $5, 0x80($18)
      bltz       $5, .L8005F514
       nop
      lw         $4, 0x68($18)
      beqz       $4, .L8005F504
       addu      $2, $0, $0
      jal        func_80060CE0
       addiu     $6, $0, 0x1
  .L8005F504:
      lw         $2, 0x4($2)
      lw         $17, 0x8($2)
      j          .L8005F540
       nop
  .L8005F514:
      jal        func_80060B14
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8005F530
       nop
      jal        func_80060AD8
       addu      $4, $16, $0
  .L8005F530:
      lw         $4, 0x44($18)
      jal        func_80058434
       nop
      addu       $17, $2, $0
  .L8005F540:
      lw         $4, 0x44($18)
      jal        func_80058448
       nop
      addiu      $6, $29, 0x40
      addu       $5, $16, $0
      addu       $21, $2, $0
      addiu      $2, $0, 0xFF
      lbu        $9, 0x10($21)
      lui        $3, %hi(D_80125380)
      sb         $9, 0x2EC($29)
      sb         $2, 0x10($21)
      lbu        $4, %lo(D_80125380)($3)
      addiu      $7, $16, 0x270
      addiu      $2, $4, 0x1
      sb         $2, %lo(D_80125380)($3)
      sb         $4, 0x253($16)
      sb         $0, 0x7A($20)
  .L8005F584:
      lw         $10, 0x0($5)
      lw         $11, 0x4($5)
      lw         $8, 0x8($5)
      lw         $9, 0xC($5)
      sw         $10, 0x0($6)
      sw         $11, 0x4($6)
      sw         $8, 0x8($6)
      sw         $9, 0xC($6)
      addiu      $5, $5, 0x10
      bne        $5, $7, .L8005F584
       addiu     $6, $6, 0x10
      lw         $10, 0x0($5)
      lw         $11, 0x4($5)
      sw         $10, 0x0($6)
      beqz       $17, .L8005F8E4
       sw        $11, 0x4($6)
      addiu      $10, $16, 0x270
      sw         $10, 0x2F0($29)
      addiu      $19, $29, 0x18
  .L8005F5D0:
      beq        $17, $21, .L8005F8E4
       nop
      lw         $2, 0xB8($18)
      bnez       $2, .L8005F5E8
       addiu     $2, $0, 0x1
      sb         $2, 0x7B($20)
  .L8005F5E8:
      lbu        $3, 0x10($17)
      addiu      $2, $0, 0x22
      bne        $3, $2, .L8005F60C
       addu      $4, $0, $0
      jal        func_800596AC
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      sltiu      $2, $2, 0x1
      addu       $4, $2, $0
  .L8005F60C:
      andi       $2, $4, 0xFF
      bnez       $2, .L8005F8E4
       sb        $4, 0xDA($18)
      addiu      $3, $29, 0x40
      addu       $2, $16, $0
  .L8005F620:
      lw         $11, 0x0($2)
      lw         $8, 0x4($2)
      lw         $9, 0x8($2)
      lw         $10, 0xC($2)
      sw         $11, 0x0($3)
      sw         $8, 0x4($3)
      sw         $9, 0x8($3)
      sw         $10, 0xC($3)
      addiu      $2, $2, 0x10
      lw         $11, 0x2F0($29)
      bne        $2, $11, .L8005F620
       addiu     $3, $3, 0x10
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      sw         $8, 0x0($3)
      sw         $9, 0x4($3)
      lw         $2, 0x248($16)
      andi       $2, $2, 0x1
      beqz       $2, .L8005F6B8
       sw        $17, 0x8($16)
  .L8005F670:
      lw         $2, 0x40($16)
      blez       $2, .L8005F6B8
       addiu     $2, $2, -0x1
      sw         $2, 0x40($16)
      sll        $2, $2, 4
      addu       $2, $16, $2
      lw         $3, 0x44($2)
      lw         $2, 0x40($16)
      sll        $2, $2, 4
      addu       $2, $16, $2
      sw         $3, 0x14($16)
      lw         $3, 0x4C($2)
      lw         $2, 0x18($16)
      slt        $2, $2, $3
      bnel       $2, $0, .L8005F670
       sw        $3, 0x18($16)
      j          .L8005F670
       nop
  .L8005F6B8:
      lw         $2, 0x248($16)
      andi       $2, $2, 0x2
      beqz       $2, .L8005F710
       nop
  .L8005F6C8:
      lw         $2, 0x144($16)
      blez       $2, .L8005F710
       addiu     $2, $2, -0x1
      sw         $2, 0x144($16)
      sll        $2, $2, 4
      addu       $2, $16, $2
      lw         $3, 0x148($2)
      lw         $2, 0x144($16)
      sll        $2, $2, 4
      addu       $2, $16, $2
      sw         $3, 0x1C($16)
      lw         $3, 0x150($2)
      lw         $2, 0x18($16)
      slt        $2, $2, $3
      bnel       $2, $0, .L8005F6C8
       sw        $3, 0x18($16)
      j          .L8005F6C8
       nop
  .L8005F710:
      jal        func_80059614
       addu      $4, $16, $0
      lw         $2, 0x40($16)
      sw         $0, 0x248($16)
      blez       $2, .L8005F734
       sw        $0, 0x3C($16)
      lw         $17, 0x14($16)
      j          .L8005F750
       nop
  .L8005F734:
      lw         $2, 0x9C($18)
      lh         $3, 0x250($16)
      lh         $2, 0x40($2)
      mult       $3, $2
      lw         $2, 0x14($16)
      mflo       $8
      addu       $17, $2, $8
  .L8005F750:
      lw         $2, 0x8($16)
      lbu        $3, 0x11($2)
      addiu      $2, $0, 0xC
      bnel       $3, $2, .L8005F778
       sw        $19, 0x10($29)
      lw         $2, 0x1C($16)
      addiu      $23, $0, 0x1
      subu       $2, $2, $17
      sw         $2, 0x1C($16)
      sw         $19, 0x10($29)
  .L8005F778:
      addu       $4, $20, $0
      addu       $5, $18, $0
      addu       $6, $16, $0
      jal        func_8005EBA0
       addu      $7, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8005F7A4
       addu      $4, $18, $0
      addu       $5, $16, $0
      jal        func_80059B74
       addu      $6, $19, $0
  .L8005F7A4:
      andi       $2, $23, 0xFF
      beqz       $2, .L8005F7C0
       nop
      lw         $2, 0x1C($16)
      addu       $23, $0, $0
      addu       $2, $2, $17
      sw         $2, 0x1C($16)
  .L8005F7C0:
      lbu        $2, 0x252($16)
      beqz       $2, .L8005F7D4
       addu      $4, $16, $0
      jal        func_80059980
       addu      $5, $19, $0
  .L8005F7D4:
      lbu        $2, 0x7A($20)
      bnez       $2, .L8005F8E4
       nop
      jal        func_80060AF0
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8005F800
       addu      $4, $18, $0
      addu       $5, $16, $0
      j          .L8005F81C
       addiu     $6, $0, 0x1
  .L8005F800:
      jal        func_80060B14
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8005F824
       addu      $4, $18, $0
      addu       $5, $16, $0
      addiu      $6, $0, 0x2
  .L8005F81C:
      jal        func_80059720
       addu      $7, $19, $0
  .L8005F824:
      jal        func_8005B5E8
       addu      $4, $18, $0
      addu       $22, $2, $0
      addiu      $2, $0, 0x1
      bnel       $22, $2, .L8005FC54
       addu      $2, $22, $0
      lw         $5, 0x7C($18)
      bltz       $5, .L8005F894
       nop
      lw         $4, 0x68($18)
      beqz       $4, .L8005F860
       addu      $3, $0, $0
      jal        func_80060CE0
       addu      $6, $2, $0
      addu       $3, $2, $0
  .L8005F860:
      beqz       $3, .L8005FC54
       addiu     $2, $0, -0x5
      lw         $2, 0x8($16)
      sw         $2, 0x0($3)
      lw         $2, 0xC($16)
      sw         $2, 0x4($3)
      lw         $2, 0x18($16)
      sw         $2, 0x8($3)
      lw         $2, 0x20($16)
      sw         $2, 0xC($3)
      lw         $2, 0x7C($18)
      addiu      $2, $2, 0x1
      sw         $2, 0x7C($18)
  .L8005F894:
      lw         $2, 0x28($16)
      bltzl      $2, .L8005F8A0
       sw        $0, 0x28($16)
  .L8005F8A0:
      lw         $2, 0x20($16)
      lw         $3, 0x28($16)
      lw         $4, 0x3C($16)
      addu       $2, $2, $3
      blez       $4, .L8005F8D4
       sw        $2, 0x18($16)
      addu       $4, $18, $0
      addu       $5, $16, $0
      jal        func_80058E80
       addu      $6, $20, $0
      lbu        $2, 0x7A($20)
      bnez       $2, .L8005F8E4
       nop
  .L8005F8D4:
      lw         $2, 0xC($16)
      lw         $17, 0x8($2)
      bnez       $17, .L8005F5D0
       nop
  .L8005F8E4:
      lbu        $9, 0x2EC($29)
      sb         $9, 0x10($21)
      lw         $2, 0x7C($18)
      addiu      $2, $2, -0x1
      bgez       $2, .L8005F904
       sw        $2, 0x80($18)
      addiu      $2, $0, -0x1
      sw         $2, 0x80($18)
  .L8005F904:
      lbu        $2, 0xDD($18)
      beqz       $2, .L8005F91C
       nop
      lbu        $2, 0x7A($20)
      beqz       $2, .L8005F97C
       nop
  .L8005F91C:
      lw         $2, 0x80($18)
      addiu      $2, $2, -0x1
      bgez       $2, .L8005F934
       sw        $2, 0x80($18)
      addiu      $2, $0, -0x1
      sw         $2, 0x80($18)
  .L8005F934:
      addu       $3, $16, $0
      addiu      $2, $29, 0x40
      addiu      $4, $29, 0x2B0
  .L8005F940:
      lw         $10, 0x0($2)
      lw         $11, 0x4($2)
      lw         $8, 0x8($2)
      lw         $9, 0xC($2)
      sw         $10, 0x0($3)
      sw         $11, 0x4($3)
      sw         $8, 0x8($3)
      sw         $9, 0xC($3)
      addiu      $2, $2, 0x10
      bne        $2, $4, .L8005F940
       addiu     $3, $3, 0x10
      lw         $10, 0x0($2)
      lw         $11, 0x4($2)
      sw         $10, 0x0($3)
      sw         $11, 0x4($3)
  .L8005F97C:
      lw         $2, 0x80($18)
      addu       $4, $20, $0
      jal        func_8008B620
       sw        $2, 0x4($16)
      lw         $5, 0x0($16)
      jal        func_8008C068
       addu      $4, $20, $0
      lw         $2, 0x80($18)
      bltz       $2, .L8005FA2C
       addu      $19, $0, $0
      lw         $4, 0x44($18)
      jal        func_80058434
       addu      $17, $19, $0
      addu       $16, $2, $0
      beql       $16, $0, .L8005FA24
       sw        $19, 0x14($18)
  .L8005F9BC:
      lhu        $2, 0x0($16)
      andi       $2, $2, 0x1
      beqz       $2, .L8005FA14
       addu      $4, $16, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $10, 0x0($2)
      lw         $11, 0x4($2)
      lw         $8, 0x8($2)
      lw         $9, 0xC($2)
      sw         $10, 0x2D8($29)
      sw         $11, 0x2DC($29)
      sw         $8, 0x2E0($29)
      sw         $9, 0x2E4($29)
      lw         $3, 0x2E0($29)
      slt        $2, $19, $3
      bnel       $2, $0, .L8005FA04
       addu      $19, $3, $0
  .L8005FA04:
      lw         $3, 0x2E4($29)
      slt        $2, $17, $3
      bnel       $2, $0, .L8005FA14
       addu      $17, $3, $0
  .L8005FA14:
      lw         $16, 0x8($16)
      bnez       $16, .L8005F9BC
       nop
      sw         $19, 0x14($18)
  .L8005FA24:
      j          .L8005FA34
       sw        $17, 0x18($18)
  .L8005FA2C:
      sw         $0, 0x18($18)
      sw         $0, 0x14($18)
  .L8005FA34:
      jal        func_8005F140
       addiu     $4, $18, 0x88
      jal        func_8005F140
       addiu     $4, $18, 0x90
      lw         $2, 0x10($20)
      beqz       $2, .L8005FA58
       nop
      jal        func_8008B964
       addu      $4, $20, $0
  .L8005FA58:
      lw         $2, 0x70($20)
      bltz       $2, .L8005FB7C
       nop
      lw         $16, 0xC0($18)
      beqz       $16, .L8005FB7C
       nop
      addiu      $19, $0, 0x1
      addiu      $17, $29, 0x2D8
  .L8005FA78:
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $2, 0xB8($2)
      beqz       $2, .L8005FA98
       nop
      lw         $2, 0x0($2)
      beq        $16, $2, .L8005FB70
       nop
  .L8005FA98:
      lbu        $2, 0x38($16)
      beqz       $2, .L8005FB70
       sltiu     $2, $2, 0x5
      beqz       $2, .L8005FAC4
       nop
      lw         $2, 0x70($20)
      slti       $2, $2, 0x3
      beqz       $2, .L8005FB7C
       nop
      j          .L8005FB70
       nop
  .L8005FAC4:
      lbu        $2, 0x3B($16)
      bnez       $2, .L8005FB70
       nop
      lbu        $2, 0x3C($16)
      beqz       $2, .L8005FB70
       addu      $4, $20, $0
      addu       $6, $16, $0
      lw         $5, 0x4($16)
      addiu      $7, $0, 0x2
      jal        func_80058AD0
       sb        $19, 0x3B($16)
      lw         $4, 0x4($16)
      jal        func_80058268
       addu      $5, $0, $0
      lw         $10, 0x0($2)
      lw         $11, 0x4($2)
      lw         $8, 0x8($2)
      lw         $9, 0xC($2)
      sw         $10, 0x2D8($29)
      sw         $11, 0x2DC($29)
      sw         $8, 0x2E0($29)
      sw         $9, 0x2E4($29)
      lw         $4, 0x10($20)
      jal        func_8008C058
       nop
      andi       $2, $2, 0xFF
      beqz       $2, .L8005FB58
       addu      $4, $17, $0
      lw         $5, 0x50($20)
      lw         $6, 0x4C($20)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
      addu       $4, $20, $0
      addu       $5, $17, $0
      jal        func_8008BB08
       addu      $6, $0, $0
  .L8005FB58:
      lbu        $2, 0x78($20)
      beqz       $2, .L8005FB70
       addu      $4, $20, $0
      addu       $5, $16, $0
      jal        func_80080214
       addiu     $6, $0, 0x1
  .L8005FB70:
      lw         $16, 0x10($16)
      bnez       $16, .L8005FA78
       nop
  .L8005FB7C:
      lw         $2, 0x80($18)
      beq        $30, $2, .L8005FC20
       addu      $4, $20, $0
      jal        func_8008BB94
       addiu     $5, $29, 0x2C8
      bltz       $30, .L8005FBD8
       nop
      lw         $4, 0x68($18)
      beqz       $4, .L8005FBB4
       addu      $5, $30, $0
      jal        func_80060CE0
       addiu     $6, $0, 0x1
      j          .L8005FBB8
       nop
  .L8005FBB4:
      addu       $2, $0, $0
  .L8005FBB8:
      lw         $2, 0xC($2)
      lw         $3, 0x4C($20)
      lw         $4, 0x2BC($29)
      subu       $2, $2, $3
      sw         $2, 0x2CC($29)
      slt        $2, $2, $4
      bnel       $2, $0, .L8005FBD8
       sw        $4, 0x2CC($29)
  .L8005FBD8:
      lw         $3, 0x2D4($29)
      lw         $2, 0x2CC($29)
      slt        $2, $2, $3
      beqz       $2, .L8005FC20
       nop
      lw         $10, 0x2E8($29)
      beqz       $10, .L8005FC14
       addu      $4, $20, $0
      lw         $2, 0x6C($18)
      beq        $10, $2, .L8005FC18
       addiu     $5, $29, 0x2C8
      jal        func_8008B7CC
       addu      $5, $10, $0
      j          .L8005FC20
       nop
  .L8005FC14:
      addiu      $5, $29, 0x2C8
  .L8005FC18:
      jal        func_8008BB08
       addiu     $6, $0, 0x1
  .L8005FC20:
      lbu        $2, 0xD9($18)
      bnez       $2, .L8005FC3C
       sw        $0, 0x74($18)
      lw         $3, 0x80($18)
      addiu      $2, $0, -0x1
      beq        $3, $2, .L8005FC54
       addu      $2, $22, $0
  .L8005FC3C:
      lbu        $5, 0x78($20)
      jal        func_8007C230
       addu      $4, $20, $0
      jal        func_800809B8
       addu      $4, $20, $0
  .L8005FC50:
      addu       $2, $22, $0
  .L8005FC54:
      lw         $31, 0x31C($29)
      lw         $30, 0x318($29)
      lw         $23, 0x314($29)
      lw         $22, 0x310($29)
      lw         $21, 0x30C($29)
      lw         $20, 0x308($29)
      lw         $19, 0x304($29)
      lw         $18, 0x300($29)
      lw         $17, 0x2FC($29)
      lw         $16, 0x2F8($29)
      jr         $31
       addiu     $29, $29, 0x320
.end func_8005F2DC

.globl func_8005FC84
.ent func_8005FC84
func_8005FC84:
      addiu      $29, $29, -0x18
      beqz       $4, .L8005FCA8
       sw        $31, 0x10($29)
      lw         $2, 0x4($4)
      beql       $2, $0, .L8005FCB8
       addiu     $2, $0, -0x4
      lw         $3, 0x0($2)
      bnez       $3, .L8005FCB0
       addiu     $2, $0, -0x1
  .L8005FCA8:
      j          .L8005FCB8
       addiu     $2, $0, -0x4
  .L8005FCB0:
      jal        func_8005F2DC
       sw        $2, 0x80($3)
  .L8005FCB8:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8005FC84

.globl func_8005FCC4
.ent func_8005FCC4
func_8005FCC4:
      addiu      $29, $29, -0x78
      sw         $23, 0x6C($29)
      addu       $23, $4, $0
      sw         $21, 0x64($29)
      sw         $16, 0x50($29)
      lw         $16, 0x2F4($29)
      sw         $31, 0x74($29)
      sw         $30, 0x70($29)
      sw         $22, 0x68($29)
      sw         $20, 0x60($29)
      sw         $19, 0x5C($29)
      sw         $18, 0x58($29)
      sw         $17, 0x54($29)
      sw         $5, 0x7C($29)
      sw         $6, 0x80($29)
      sw         $7, 0x84($29)
      lw         $2, 0x4($23)
      lw         $30, 0x2F8($29)
      lw         $19, 0x0($2)
      jal        func_8008C060
       addiu     $21, $0, -0x1
      lw         $8, 0x2F4($29)
      addu       $22, $21, $0
      beqz       $8, .L8005FFB8
       sw        $2, 0x7C($29)
      addiu      $18, $29, 0x7C
      addiu      $20, $29, 0x18
  .L8005FD30:
      lw         $2, 0x8($30)
      beq        $16, $2, .L8005FFB8
       nop
      lw         $2, 0x2C4($29)
      andi       $2, $2, 0x1
      beqz       $2, .L8005FD90
       sw        $16, 0x84($29)
      lw         $2, 0xBC($29)
      blez       $2, .L8005FD90
       nop
  .L8005FD58:
      lw         $2, 0xBC($29)
      addiu      $4, $2, -0x1
      sll        $3, $4, 4
      addu       $3, $18, $3
      sw         $4, 0xBC($29)
      lw         $2, 0x44($3)
      sw         $2, 0x90($29)
      lw         $3, 0x4C($3)
      lw         $2, 0x94($29)
      slt        $2, $2, $3
      bnel       $2, $0, .L8005FD88
       sw        $3, 0x94($29)
  .L8005FD88:
      bgtz       $4, .L8005FD58
       nop
  .L8005FD90:
      lw         $2, 0x2C4($29)
      andi       $2, $2, 0x2
      beqz       $2, .L8005FDE4
       nop
      lw         $2, 0x1C0($29)
      blez       $2, .L8005FDE4
       nop
  .L8005FDAC:
      lw         $2, 0x1C0($29)
      addiu      $4, $2, -0x1
      sll        $3, $4, 4
      addu       $3, $18, $3
      sw         $4, 0x1C0($29)
      lw         $2, 0x148($3)
      sw         $2, 0x98($29)
      lw         $3, 0x150($3)
      lw         $2, 0x94($29)
      slt        $2, $2, $3
      bnel       $2, $0, .L8005FDDC
       sw        $3, 0x94($29)
  .L8005FDDC:
      bgtz       $4, .L8005FDAC
       nop
  .L8005FDE4:
      jal        func_80059614
       addu      $4, $18, $0
      sw         $0, 0x2C4($29)
      sw         $0, 0xB8($29)
      lw         $2, 0x9C($19)
      lh         $3, 0x2CC($29)
      lh         $2, 0x40($2)
      addu       $4, $23, $0
      mult       $3, $2
      addu       $5, $19, $0
      lw         $7, 0x90($29)
      addu       $6, $18, $0
      sw         $20, 0x10($29)
      mflo       $8
      jal        func_8005EBA0
       addu      $7, $7, $8
      andi       $2, $2, 0xFF
      beqz       $2, .L8005FE3C
       addu      $4, $19, $0
      addu       $5, $18, $0
      jal        func_80059B74
       addu      $6, $20, $0
  .L8005FE3C:
      lbu        $2, 0x2CE($29)
      beqz       $2, .L8005FE50
       addu      $4, $18, $0
      jal        func_80059980
       addu      $5, $20, $0
  .L8005FE50:
      lw         $9, 0x2FC($29)
      bnez       $9, .L8005FEA0
       nop
      jal        func_80060AF0
       addu      $4, $18, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8005FE7C
       addu      $4, $19, $0
      addu       $5, $18, $0
      j          .L8005FE98
       addiu     $6, $0, 0x1
  .L8005FE7C:
      jal        func_80060B14
       addu      $4, $18, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8005FEA0
       addu      $4, $19, $0
      addu       $5, $18, $0
      addiu      $6, $0, 0x2
  .L8005FE98:
      jal        func_80059720
       addu      $7, $20, $0
  .L8005FEA0:
      lw         $2, 0xA4($29)
      bltzl      $2, .L8005FEAC
       sw        $0, 0xA4($29)
  .L8005FEAC:
      lw         $2, 0x9C($29)
      lw         $3, 0xA4($29)
      lw         $4, 0xB8($29)
      addu       $2, $2, $3
      blez       $4, .L8005FED4
       sw        $2, 0x94($29)
      addu       $4, $19, $0
      addiu      $5, $29, 0x7C
      jal        func_80058E80
       addu      $6, $23, $0
  .L8005FED4:
      lw         $17, 0x84($29)
      j          .L8005FF60
       nop
  .L8005FEE0:
      beq        $17, $30, .L8005FF78
       nop
      lhu        $2, 0x0($17)
      andi       $2, $2, 0x1
      beqz       $2, .L8005FF40
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $10, 0x0($2)
      lw         $11, 0x4($2)
      lw         $8, 0x8($2)
      lw         $9, 0xC($2)
      sw         $10, 0x40($29)
      sw         $11, 0x44($29)
      sw         $8, 0x48($29)
      sw         $9, 0x4C($29)
      lw         $3, 0x48($29)
      slt        $2, $21, $3
      bnel       $2, $0, .L8005FF30
       addu      $21, $3, $0
  .L8005FF30:
      lw         $3, 0x4C($29)
      slt        $2, $22, $3
      bnel       $2, $0, .L8005FF40
       addu      $22, $3, $0
  .L8005FF40:
      lbu        $2, 0x10($17)
      addiu      $10, $0, 0x22
      bne        $2, $10, .L8005FF5C
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $17, 0x4($2)
  .L8005FF5C:
      lw         $17, 0x8($17)
  .L8005FF60:
      beqz       $17, .L8005FF78
       nop
      lw         $2, 0x88($29)
      lw         $2, 0x8($2)
      bne        $17, $2, .L8005FEE0
       nop
  .L8005FF78:
      lw         $3, 0x2C8($29)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L8005FFA8
       addiu     $2, $0, 0x1
      lw         $4, 0x88($29)
      lbu        $3, 0x10($4)
      bne        $3, $2, .L8005FFA8
       nop
      lhu        $2, 0x2($4)
      andi       $2, $2, 0x4000
      bnez       $2, .L8005FFB0
       addu      $16, $4, $0
  .L8005FFA8:
      lw         $2, 0x88($29)
      lw         $16, 0x8($2)
  .L8005FFB0:
      bnez       $16, .L8005FD30
       nop
  .L8005FFB8:
      lw         $5, 0x7C($29)
      jal        func_8008C068
       addu      $4, $23, $0
      lw         $3, 0x2C8($29)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L8006005C
       nop
      lw         $17, 0x2F4($29)
      beqz       $17, .L8006005C
       addiu     $18, $0, 0x1
  .L8005FFE0:
      beq        $17, $30, .L8006005C
       nop
      lbu        $2, 0x10($17)
      bne        $2, $18, .L80060050
       nop
      lhu        $3, 0x2($17)
      andi       $2, $3, 0x2000
      beqz       $2, .L80060050
       addu      $4, $17, $0
      addiu      $5, $0, 0x1
      andi       $2, $3, 0x9FFF
      jal        func_80058268
       sh        $2, 0x2($17)
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $17, $0
      lw         $2, 0x8($2)
      addiu      $5, $0, 0x1
      jal        func_80058268
       sw        $2, 0x0($16)
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       addu      $16, $2, $0
      lw         $2, 0xC($2)
      sw         $2, 0x4($16)
  .L80060050:
      lw         $17, 0x8($17)
      bnez       $17, .L8005FFE0
       nop
  .L8006005C:
      lw         $2, 0x300($29)
      sw         $21, 0x0($2)
      lw         $2, 0x304($29)
      sw         $22, 0x0($2)
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
.end func_8005FCC4

.globl func_8006009C
.ent func_8006009C
func_8006009C:
      addiu      $29, $29, -0x528
      sw         $20, 0x520($29)
      addu       $20, $4, $0
      sw         $16, 0x510($29)
      addu       $16, $5, $0
      sw         $18, 0x518($29)
      addu       $18, $6, $0
      sw         $19, 0x51C($29)
      addu       $19, $7, $0
      addiu      $4, $29, 0x290
      addu       $5, $0, $0
      sw         $17, 0x514($29)
      lw         $17, 0x538($29)
      sw         $31, 0x524($29)
      jal        func_80016140
       addiu     $6, $0, 0x278
      lui        $3, (0x186A0 >> 16)
      sw         $19, 0x4DC($29)
      sw         $0, 0x4D8($29)
      sw         $0, 0x2D0($29)
      sw         $0, 0x3D4($29)
      sb         $17, 0x4E3($29)
      lw         $2, 0x0($16)
      ori        $3, $3, (0x186A0 & 0xFFFF)
      sw         $2, 0x2A4($29)
      lw         $2, 0x8($16)
      addu       $4, $18, $0
      sh         $0, 0x4E0($29)
      sw         $2, 0x2AC($29)
      lw         $2, 0x4($16)
      addiu      $5, $0, 0x2
      sw         $3, 0x2C0($29)
      sw         $0, 0x29C($29)
      jal        func_80058268
       sw        $2, 0x2A8($29)
      addiu      $6, $29, 0x10
      addiu      $5, $29, 0x29C
      addiu      $7, $29, 0x4FC
      lw         $4, 0x0($2)
      lw         $3, 0x8($18)
      addiu      $2, $29, 0x508
      sw         $2, 0x288($29)
      addiu      $2, $29, 0x50C
      sw         $19, 0x284($29)
      sw         $2, 0x28C($29)
      sw         $3, 0x27C($29)
      sw         $4, 0x280($29)
  .L80060158:
      lw         $8, 0x0($5)
      lw         $9, 0x4($5)
      lw         $10, 0x8($5)
      lw         $11, 0xC($5)
      sw         $8, 0x0($6)
      sw         $9, 0x4($6)
      sw         $10, 0x8($6)
      sw         $11, 0xC($6)
      addiu      $5, $5, 0x10
      bne        $5, $7, .L80060158
       addiu     $6, $6, 0x10
      lw         $8, 0x0($5)
      lw         $9, 0x4($5)
      lw         $10, 0x8($5)
      sw         $8, 0x0($6)
      sw         $9, 0x4($6)
      sw         $10, 0x8($6)
      lw         $5, 0x290($29)
      lw         $6, 0x294($29)
      lw         $7, 0x298($29)
      jal        func_8005FCC4
       addu      $4, $20, $0
      lw         $3, 0x508($29)
      lw         $2, 0x53C($29)
      sw         $3, 0x0($2)
      lw         $3, 0x50C($29)
      lw         $2, 0x540($29)
      sw         $3, 0x0($2)
      lw         $31, 0x524($29)
      lw         $20, 0x520($29)
      lw         $19, 0x51C($29)
      lw         $18, 0x518($29)
      lw         $17, 0x514($29)
      lw         $16, 0x510($29)
      jr         $31
       addiu     $29, $29, 0x528
.end func_8006009C

.globl func_800601E8
.ent func_800601E8
func_800601E8:
      beqz       $4, .L80060220
       addiu     $2, $0, -0x4
      lw         $2, 0x4($4)
      beqz       $2, .L80060208
       nop
      lw         $2, 0x0($2)
      bnez       $2, .L80060210
       nop
  .L80060208:
      jr         $31
       addu      $2, $0, $0
  .L80060210:
      lw         $2, 0x48($4)
      addiu      $2, $2, -0x1
      jr         $31
       sltiu     $2, $2, 0x2
  .L80060220:
      jr         $31
       nop
.end func_800601E8

.globl func_80060228
.ent func_80060228
func_80060228:
      addiu      $29, $29, -0x528
      sw         $18, 0x518($29)
      addu       $18, $4, $0
      sw         $31, 0x520($29)
      sw         $19, 0x51C($29)
      sw         $17, 0x514($29)
      sw         $16, 0x510($29)
      lw         $2, 0x30($18)
      bnez       $2, .L80060258
       addiu     $4, $29, 0x290
      j          .L80060640
       addiu     $2, $0, -0x1
  .L80060258:
      addu       $5, $0, $0
      lw         $2, 0x4($18)
      lw         $17, 0x0($2)
      jal        func_80016140
       addiu     $6, $0, 0x278
      lui        $4, (0x186A0 >> 16)
      lui        $2, %hi(D_80125380)
      lbu        $2, %lo(D_80125380)($2)
      addiu      $5, $0, 0x1
      sw         $5, 0x4DC($29)
      sw         $0, 0x4D8($29)
      sw         $0, 0x2D0($29)
      sw         $0, 0x3D4($29)
      sb         $2, 0x4E3($29)
      lw         $3, 0x58($18)
      addiu      $2, $0, 0x7FFF
      sw         $2, 0x2AC($29)
      sh         $0, 0x4E0($29)
      sw         $3, 0x2A4($29)
      lw         $2, 0x54($18)
      ori        $4, $4, (0x186A0 & 0xFFFF)
      sw         $4, 0x2C0($29)
      sw         $0, 0x29C($29)
      sw         $2, 0x2A8($29)
      lw         $4, 0x44($17)
      jal        func_80058434
       sb        $5, 0xDB($17)
      lw         $4, 0x44($17)
      jal        func_80058448
       addu      $16, $2, $0
      addiu      $5, $29, 0x10
      addiu      $4, $29, 0x29C
      addiu      $6, $29, 0x4FC
      sw         $16, 0x27C($29)
      sw         $2, 0x280($29)
      lw         $3, 0x4DC($29)
      addiu      $2, $29, 0x508
      sw         $2, 0x288($29)
      addiu      $2, $29, 0x50C
      sw         $2, 0x28C($29)
      sw         $3, 0x284($29)
  .L800602FC:
      lw         $8, 0x0($4)
      lw         $9, 0x4($4)
      lw         $10, 0x8($4)
      lw         $11, 0xC($4)
      sw         $8, 0x0($5)
      sw         $9, 0x4($5)
      sw         $10, 0x8($5)
      sw         $11, 0xC($5)
      addiu      $4, $4, 0x10
      bne        $4, $6, .L800602FC
       addiu     $5, $5, 0x10
      lw         $8, 0x0($4)
      lw         $9, 0x4($4)
      lw         $10, 0x8($4)
      sw         $8, 0x0($5)
      sw         $9, 0x4($5)
      sw         $10, 0x8($5)
      lw         $5, 0x290($29)
      lw         $6, 0x294($29)
      lw         $7, 0x298($29)
      jal        func_8005FCC4
       addu      $4, $18, $0
      lui        $4, (0x186A0 >> 16)
      ori        $4, $4, (0x186A0 & 0xFFFF)
      lui        $2, %hi(D_80125380)
      sb         $0, 0xDB($17)
      lbu        $3, %lo(D_80125380)($2)
      addiu      $2, $0, 0x2
      sw         $2, 0x4DC($29)
      sw         $0, 0x4D8($29)
      sw         $0, 0x2D0($29)
      sw         $0, 0x3D4($29)
      sw         $0, 0x2A4($29)
      sw         $0, 0x2AC($29)
      sh         $0, 0x4E0($29)
      sw         $0, 0x2A8($29)
      sw         $4, 0x2C0($29)
      sw         $0, 0x29C($29)
      sb         $3, 0x4E3($29)
      lw         $4, 0x44($17)
      lw         $19, 0x508($29)
      jal        func_80058434
       nop
      lw         $4, 0x44($17)
      jal        func_80058448
       addu      $16, $2, $0
      addiu      $5, $29, 0x10
      addiu      $4, $29, 0x29C
      addiu      $6, $29, 0x4FC
      sw         $16, 0x27C($29)
      sw         $2, 0x280($29)
      lw         $3, 0x4DC($29)
      addiu      $2, $29, 0x508
      sw         $2, 0x288($29)
      addiu      $2, $29, 0x50C
      sw         $2, 0x28C($29)
      sw         $3, 0x284($29)
  .L800603E0:
      lw         $8, 0x0($4)
      lw         $9, 0x4($4)
      lw         $10, 0x8($4)
      lw         $11, 0xC($4)
      sw         $8, 0x0($5)
      sw         $9, 0x4($5)
      sw         $10, 0x8($5)
      sw         $11, 0xC($5)
      addiu      $4, $4, 0x10
      bne        $4, $6, .L800603E0
       addiu     $5, $5, 0x10
      lw         $8, 0x0($4)
      lw         $9, 0x4($4)
      lw         $10, 0x8($4)
      sw         $8, 0x0($5)
      sw         $9, 0x4($5)
      sw         $10, 0x8($5)
      lw         $5, 0x290($29)
      lw         $6, 0x294($29)
      lw         $7, 0x298($29)
      jal        func_8005FCC4
       addu      $4, $18, $0
      lui        $2, %hi(D_80125380)
      lbu        $3, %lo(D_80125380)($2)
      addiu      $2, $0, 0x3
      sw         $2, 0x4DC($29)
      sw         $0, 0x4D8($29)
      sw         $0, 0x2D0($29)
      sw         $0, 0x3D4($29)
      sb         $3, 0x4E3($29)
      lw         $2, 0x58($18)
      lui        $3, (0x186A0 >> 16)
      sh         $0, 0x4E0($29)
      sw         $2, 0x2A4($29)
      addu       $2, $2, $19
      sw         $2, 0x2AC($29)
      lw         $2, 0x54($18)
      ori        $3, $3, (0x186A0 & 0xFFFF)
      sw         $3, 0x2C0($29)
      sw         $0, 0x29C($29)
      sw         $2, 0x2A8($29)
      lw         $4, 0x44($17)
      jal        func_80058434
       nop
      lw         $4, 0x44($17)
      jal        func_80058448
       addu      $16, $2, $0
      addiu      $5, $29, 0x10
      addiu      $4, $29, 0x29C
      addiu      $6, $29, 0x4FC
      sw         $16, 0x27C($29)
      sw         $2, 0x280($29)
      lw         $3, 0x4DC($29)
      addiu      $2, $29, 0x508
      sw         $2, 0x288($29)
      addiu      $2, $29, 0x50C
      sw         $2, 0x28C($29)
      sw         $3, 0x284($29)
  .L800604C8:
      lw         $8, 0x0($4)
      lw         $9, 0x4($4)
      lw         $10, 0x8($4)
      lw         $11, 0xC($4)
      sw         $8, 0x0($5)
      sw         $9, 0x4($5)
      sw         $10, 0x8($5)
      sw         $11, 0xC($5)
      addiu      $4, $4, 0x10
      bne        $4, $6, .L800604C8
       addiu     $5, $5, 0x10
      lw         $8, 0x0($4)
      lw         $9, 0x4($4)
      lw         $10, 0x8($4)
      sw         $8, 0x0($5)
      sw         $9, 0x4($5)
      sw         $10, 0x8($5)
      lw         $5, 0x290($29)
      lw         $6, 0x294($29)
      lw         $7, 0x298($29)
      jal        func_8005FCC4
       addu      $4, $18, $0
      lui        $2, %hi(D_80125380)
      lbu        $2, %lo(D_80125380)($2)
      lw         $3, 0x508($29)
      sw         $0, 0x4DC($29)
      sw         $0, 0x4D8($29)
      sw         $0, 0x2D0($29)
      sw         $0, 0x3D4($29)
      sb         $2, 0x4E3($29)
      lw         $2, 0x58($18)
      lui        $4, (0x186A0 >> 16)
      sh         $0, 0x4E0($29)
      sw         $2, 0x2A4($29)
      addu       $2, $2, $3
      sw         $2, 0x2AC($29)
      lw         $2, 0x54($18)
      ori        $4, $4, (0x186A0 & 0xFFFF)
      sw         $4, 0x2C0($29)
      sw         $0, 0x29C($29)
      sw         $2, 0x2A8($29)
      lw         $4, 0x44($17)
      jal        func_80058434
       nop
      lw         $4, 0x44($17)
      jal        func_80058448
       addu      $16, $2, $0
      addiu      $5, $29, 0x10
      addiu      $4, $29, 0x29C
      addiu      $6, $29, 0x4FC
      sw         $16, 0x27C($29)
      sw         $2, 0x280($29)
      lw         $3, 0x4DC($29)
      addiu      $2, $29, 0x508
      sw         $2, 0x288($29)
      addiu      $2, $29, 0x50C
      sw         $2, 0x28C($29)
      sw         $3, 0x284($29)
  .L800605B0:
      lw         $8, 0x0($4)
      lw         $9, 0x4($4)
      lw         $10, 0x8($4)
      lw         $11, 0xC($4)
      sw         $8, 0x0($5)
      sw         $9, 0x4($5)
      sw         $10, 0x8($5)
      sw         $11, 0xC($5)
      addiu      $4, $4, 0x10
      bne        $4, $6, .L800605B0
       addiu     $5, $5, 0x10
      lw         $8, 0x0($4)
      lw         $9, 0x4($4)
      lw         $10, 0x8($4)
      sw         $8, 0x0($5)
      sw         $9, 0x4($5)
      sw         $10, 0x8($5)
      lw         $5, 0x290($29)
      lw         $6, 0x294($29)
      lw         $7, 0x298($29)
      jal        func_8005FCC4
       addu      $4, $18, $0
      lw         $4, 0x2C($18)
      lw         $6, 0x50C($29)
      lw         $2, 0x54($18)
      lw         $5, 0xC($18)
      lw         $7, 0x508($29)
      addu       $6, $6, $2
      lw         $2, 0x58($18)
      lw         $3, 0x30($18)
      addu       $7, $7, $2
      lw         $2, 0x20($3)
      sw         $7, 0x508($29)
      jalr       $2
       sw        $6, 0x50C($29)
      addiu      $2, $0, 0x1
  .L80060640:
      lw         $31, 0x520($29)
      lw         $19, 0x51C($29)
      lw         $18, 0x518($29)
      lw         $17, 0x514($29)
      lw         $16, 0x510($29)
      jr         $31
       addiu     $29, $29, 0x528
.end func_80060228

.globl func_8006065C
.ent func_8006065C
func_8006065C:
      addiu      $29, $29, -0x40
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $22, 0x30($29)
      addu       $22, $5, $0
      sw         $20, 0x28($29)
      addu       $20, $6, $0
      addu       $4, $22, $0
      addiu      $5, $0, 0x2
      sw         $31, 0x3C($29)
      sw         $30, 0x38($29)
      sw         $23, 0x34($29)
      sw         $21, 0x2C($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      jal        func_80058268
       sw        $17, 0x1C($29)
      lw         $3, 0x0($2)
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 2
      subu       $2, $2, $3
      lw         $3, 0x5C($16)
      sll        $2, $2, 3
      addu       $17, $3, $2
      lw         $2, 0x9C($16)
      lbu        $18, 0x82($17)
      lh         $2, 0x46($2)
      mult       $18, $2
      mflo       $7
      lbu        $19, 0x83($17)
      nop
      mult       $19, $2
      mflo       $8
      lui        $6, (0x2AAAAAAB >> 16)
      ori        $6, $6, (0x2AAAAAAB & 0xFFFF)
      mult       $7, $6
      mfhi       $3
      nop
      nop
      mult       $8, $6
      addu       $4, $22, $0
      lbu        $16, 0x87($17)
      lhu        $21, 0xE($17)
      mfhi       $9
      addiu      $10, $21, -0x1
      sw         $10, 0x10($29)
      mult       $16, $2
      sra        $7, $7, 31
      sra        $3, $3, 4
      subu       $18, $3, $7
      sra        $8, $8, 31
      mflo       $2
      sra        $3, $9, 4
      subu       $19, $3, $8
      mult       $2, $6
      lhu        $3, 0x6($17)
      addiu      $5, $0, 0x2
      addiu      $30, $3, -0x1
      sra        $2, $2, 31
      mfhi       $11
      sra        $6, $11, 4
      jal        func_80058268
       subu      $16, $6, $2
      lw         $2, 0x8($2)
      beqz       $2, .L80060798
       addu      $23, $0, $0
      addu       $4, $22, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x8($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $2, 0x14($2)
      bnez       $2, .L80060794
       addiu     $21, $21, -0x2
      j          .L80060798
       addiu     $23, $0, 0x1
  .L80060794:
      sw         $21, 0x10($29)
  .L80060798:
      addu       $2, $0, $0
      lw         $3, 0x0($17)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      subu       $2, $2, $18
      subu       $2, $2, $16
      sw         $2, 0x0($20)
      lw         $3, 0x8($17)
      sll        $2, $23, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      subu       $2, $2, $18
      subu       $2, $2, $16
      sw         $2, 0x4($20)
      lw         $3, 0x0($17)
      sll        $2, $30, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      addu       $2, $2, $19
      sw         $2, 0x8($20)
      lw         $10, 0x10($29)
      lw         $3, 0x8($17)
      sll        $2, $10, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      addu       $2, $2, $19
      sw         $2, 0xC($20)
      lbu        $2, 0x88($17)
      bnez       $2, .L8006082C
       nop
      lw         $2, 0x8($20)
      lw         $3, 0xC($20)
      addiu      $2, $2, -0x1
      addiu      $3, $3, -0x1
      sw         $2, 0x8($20)
      sw         $3, 0xC($20)
  .L8006082C:
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
.end func_8006065C

.globl func_8006085C
.ent func_8006085C
func_8006085C:
      addiu      $29, $29, -0x30
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      sw         $31, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $19, 0x1C($29)
      jal        func_80058268
       sw        $18, 0x18($29)
      addu       $4, $17, $0
      lhu        $18, 0x2($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      lhu        $19, 0x0($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $3, 0x46($16)
      mult       $18, $3
      mflo       $3
      lui        $5, (0x2AAAAAAB >> 16)
      ori        $5, $5, (0x2AAAAAAB & 0xFFFF)
      mult       $3, $5
      lbu        $21, 0x4($2)
      andi       $22, $21, 0x2
      sra        $3, $3, 31
      mfhi       $8
      sra        $4, $8, 4
      beqz       $22, .L80060914
       subu      $18, $4, $3
      lh         $2, 0x44($16)
      mult       $19, $2
      mflo       $2
      nop
      nop
      mult       $2, $5
      sra        $2, $2, 31
      mfhi       $3
      sra        $3, $3, 4
      subu       $19, $3, $2
  .L80060914:
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      lw         $3, 0xC($16)
      lw         $2, 0x4($2)
      addu       $3, $3, $2
      srl        $2, $3, 31
      addu       $3, $3, $2
      sra        $3, $3, 1
      srl        $2, $18, 31
      addu       $2, $18, $2
      sra        $2, $2, 1
      subu       $4, $3, $2
      addu       $3, $3, $2
      andi       $2, $21, 0x1
      sw         $4, 0x4($20)
      beqz       $2, .L800609BC
       sw        $3, 0xC($20)
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      lw         $3, 0x8($16)
      lw         $2, 0x0($2)
      subu       $3, $3, $2
      mult       $19, $3
      mflo       $3
      lui        $2, (0x51EB851F >> 16)
      ori        $2, $2, (0x51EB851F & 0xFFFF)
      mult       $3, $2
      sra        $3, $3, 31
      mfhi       $8
      sra        $2, $8, 5
      j          .L800609EC
       subu      $18, $2, $3
  .L800609BC:
      bnez       $22, .L800609EC
       addu      $18, $19, $0
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      lw         $3, 0x8($16)
      lw         $2, 0x0($2)
      subu       $18, $3, $2
  .L800609EC:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0xB
      bne        $3, $2, .L80060A44
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80058268
       addu      $16, $2, $0
      lw         $3, 0x8($16)
      lw         $2, 0x0($2)
      addu       $3, $3, $2
      subu       $3, $3, $18
      srl        $2, $3, 31
      addu       $3, $3, $2
      sra        $3, $3, 1
      j          .L80060A80
       sw        $3, 0x0($20)
  .L80060A44:
      jal        func_80058268
       addiu     $5, $0, 0x4
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x5
      bne        $3, $2, .L80060A70
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      lw         $2, 0x8($2)
      j          .L80060A7C
       subu      $2, $2, $18
  .L80060A70:
      jal        func_80058268
       addu      $5, $0, $0
      lw         $2, 0x0($2)
  .L80060A7C:
      sw         $2, 0x0($20)
  .L80060A80:
      lw         $2, 0x0($20)
      addu       $2, $2, $18
      sw         $2, 0x8($20)
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
.end func_8006085C

.globl func_80060AB4
.ent func_80060AB4
func_80060AB4:
      lbu        $6, 0x254($4)
      addiu      $3, $6, 0x1
      slti       $2, $3, 0x20
      beqz       $2, .L80060AD0
       addu      $2, $4, $6
      sb         $3, 0x254($4)
      sb         $5, 0x255($2)
  .L80060AD0:
      jr         $31
       nop
.end func_80060AB4

.globl func_80060AD8
.ent func_80060AD8
func_80060AD8:
      lbu        $2, 0x254($4)
      beqz       $2, .L80060AE8
       addiu     $2, $2, -0x1
      sb         $2, 0x254($4)
  .L80060AE8:
      jr         $31
       nop
.end func_80060AD8

.globl func_80060AF0
.ent func_80060AF0
func_80060AF0:
      lbu        $2, 0x254($4)
      bnez       $2, .L80060B04
       addu      $2, $2, $4
      jr         $31
       addu      $2, $0, $0
  .L80060B04:
      lbu        $2, 0x254($2)
      xori       $2, $2, 0x1
      jr         $31
       sltiu     $2, $2, 0x1
.end func_80060AF0

.globl func_80060B14
.ent func_80060B14
func_80060B14:
      lbu        $2, 0x254($4)
      bnez       $2, .L80060B28
       addu      $2, $2, $4
      jr         $31
       addu      $2, $0, $0
  .L80060B28:
      lbu        $2, 0x254($2)
      xori       $2, $2, 0x2
      jr         $31
       sltiu     $2, $2, 0x1
.end func_80060B14

.globl func_80060B38
.ent func_80060B38
func_80060B38:
      jr         $31
       sb        $0, 0x254($4)
.end func_80060B38

.globl func_80060B40
.ent func_80060B40
func_80060B40:
      lw         $2, 0x4($4)
      beqz       $2, .L80060B70
       nop
      lw         $2, 0x0($2)
      beqz       $2, .L80060B70
       nop
      lw         $2, 0x84($2)
      beqz       $2, .L80060B70
       nop
      lw         $2, 0xC($2)
      bnez       $2, .L80060B78
       nop
  .L80060B70:
      jr         $31
       addu      $2, $0, $0
  .L80060B78:
      lw         $3, 0x4($5)
      lw         $2, 0x4($2)
      sltu       $2, $2, $3
      jr         $31
       xori      $2, $2, 0x1
.end func_80060B40

.globl func_80060B8C
.ent func_80060B8C
func_80060B8C:
      lw         $17, 0x54($29)
      lw         $16, 0x50($29)
      jr         $31
       addiu     $29, $29, 0x78
.end func_80060B8C

.globl func_80060B9C
.ent func_80060B9C
func_80060B9C:
      addiu      $29, $29, -0x528
      sw         $20, 0x520($29)
      addu       $20, $4, $0
      sw         $16, 0x510($29)
      addu       $16, $5, $0
      sw         $18, 0x518($29)
      addu       $18, $6, $0
      sw         $19, 0x51C($29)
      addu       $19, $7, $0
.end func_80060B9C

.globl func_80060BC0
.ent func_80060BC0
func_80060BC0:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $19, 0x1C($29)
      addu       $19, $7, $0
      beqz       $19, .L80060C18
       sw        $31, 0x20($29)
      bnez       $18, .L80060BFC
       nop
      beqz       $16, .L80060C64
       addiu     $2, $0, -0x4
  .L80060BFC:
      bltz       $18, .L80060C64
       addiu     $2, $0, -0x4
      bltz       $16, .L80060C64
       nop
      mult       $18, $17
      bnez       $17, .L80060C20
       nop
  .L80060C18:
      j          .L80060C64
       addiu     $2, $0, -0x4
  .L80060C20:
      addu       $5, $0, $0
      mflo       $8
      jal        func_80052504
       addiu     $4, $8, 0x2C
      addu       $4, $2, $0
      beqz       $4, .L80060C60
       addiu     $2, $0, 0x1
      addiu      $3, $4, 0xC
      sw         $16, 0x0($4)
      sw         $17, 0x4($4)
      sw         $3, 0x8($4)
      sw         $0, 0xC($4)
      sw         $0, 0x10($4)
      sw         $18, 0x14($4)
      j          .L80060C64
       sw        $4, 0x0($19)
  .L80060C60:
      addiu      $2, $0, -0x5
  .L80060C64:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80060BC0

.globl func_80060C80
.ent func_80060C80
func_80060C80:
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      bnez       $4, .L80060C9C
       sw        $16, 0x10($29)
      j          .L80060CCC
       addiu     $2, $0, -0x4
  .L80060C9C:
      addu       $17, $4, $0
      lw         $16, 0xC($17)
      beqz       $16, .L80060CC0
       addu      $4, $16, $0
  .L80060CAC:
      lw         $16, 0x0($16)
      jal        func_80052540
       nop
      bnez       $16, .L80060CAC
       addu      $4, $16, $0
  .L80060CC0:
      jal        func_80052540
       addu      $4, $17, $0
      addiu      $2, $0, 0x1
  .L80060CCC:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80060C80

.globl func_80060CE0
.ent func_80060CE0
func_80060CE0:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      beqz       $4, .L80060DB4
       sw        $16, 0x10($29)
      bltz       $18, .L80060DB4
       addu      $16, $4, $0
      lw         $4, 0x8($16)
      lw         $5, 0x4($4)
      slt        $2, $18, $5
      bnel       $2, $0, .L80060D3C
       addiu     $4, $16, 0xC
      lw         $2, 0x8($4)
      slt        $2, $18, $2
      beqz       $2, .L80060D38
       subu      $2, $18, $5
      lw         $3, 0x4($16)
      mult       $2, $3
      j          .L80060DF4
       nop
  .L80060D38:
      addiu      $4, $16, 0xC
  .L80060D3C:
      beqz       $4, .L80060D7C
       addu      $17, $4, $0
  .L80060D44:
      lw         $2, 0x4($4)
      slt        $2, $18, $2
      bnel       $2, $0, .L80060D68
       addu      $17, $4, $0
      lw         $2, 0x8($4)
      slt        $2, $18, $2
      bnez       $2, .L80060D74
       nop
      addu       $17, $4, $0
  .L80060D68:
      lw         $4, 0x0($4)
      bnez       $4, .L80060D44
       nop
  .L80060D74:
      bnez       $4, .L80060DD8
       nop
  .L80060D7C:
      andi       $2, $6, 0xFF
      beqz       $2, .L80060E00
       addu      $2, $0, $0
      lw         $4, 0x0($16)
      beqz       $4, .L80060E00
       addu      $5, $0, $0
      lw         $2, 0x4($16)
      mult       $4, $2
      mflo       $7
      jal        func_80052504
       addiu     $4, $7, 0x10
      addu       $4, $2, $0
      bnez       $4, .L80060DBC
       nop
  .L80060DB4:
      j          .L80060E00
       addu      $2, $0, $0
  .L80060DBC:
      lw         $2, 0x8($17)
      sw         $2, 0x4($4)
      lw         $3, 0x0($16)
      sw         $0, 0x0($4)
      addu       $2, $2, $3
      sw         $2, 0x8($4)
      sw         $4, 0x0($17)
  .L80060DD8:
      lw         $2, 0x8($16)
      bnel       $2, $4, .L80060DE4
       sw        $4, 0x8($16)
  .L80060DE4:
      lw         $2, 0x4($4)
      lw         $3, 0x4($16)
      subu       $2, $18, $2
      mult       $2, $3
  .L80060DF4:
      mflo       $7
      addiu      $2, $7, 0xC
  .L80060DFC:
      addu       $2, $4, $2
  .L80060E00:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80060CE0

.globl func_80060E18
.ent func_80060E18
func_80060E18:
      sw         $11, 0xC($5)
      addiu      $4, $4, 0x10
      bne        $4, $6, .L80060DFC
       addiu     $5, $5, 0x10
      lw         $8, 0x0($4)
      lw         $9, 0x4($4)
      lw         $10, 0x8($4)
      sw         $8, 0x0($5)
      sw         $9, 0x4($5)
      sw         $10, 0x8($5)
.end func_80060E18

.globl func_80060E40
.ent func_80060E40
func_80060E40:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sll        $4, $16, 4
      sw         $31, 0x14($29)
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $6, $2, $0
      bnel       $6, $0, .L80060E70
       addu      $5, $6, $0
      j          .L80060EA8
       addu      $2, $0, $0
  .L80060E70:
      blez       $16, .L80060EA4
       addu      $4, $0, $0
      addiu      $7, $0, 0x1
      addiu      $3, $6, 0xC
  .L80060E80:
      sb         $0, 0x1($3)
      sw         $7, 0x0($5)
      sw         $0, -0x8($3)
      sb         $0, 0x0($3)
      addiu      $3, $3, 0x10
      addiu      $4, $4, 0x1
      slt        $2, $4, $16
      bnez       $2, .L80060E80
       addiu     $5, $5, 0x10
  .L80060EA4:
      addu       $2, $6, $0
  .L80060EA8:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80060E40

.globl func_80060EB8
.ent func_80060EB8
func_80060EB8:
      addiu      $29, $29, -0x38
      sw         $23, 0x2C($29)
      addu       $23, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $20, 0x20($29)
      addu       $20, $0, $0
      sw         $22, 0x28($29)
      addu       $22, $7, $0
      sw         $31, 0x30($29)
      sw         $21, 0x24($29)
      sw         $18, 0x18($29)
      blez       $22, .L80060FF0
       sw        $16, 0x10($29)
      addiu      $21, $0, 0x2C
      addiu      $18, $19, 0xD
  .L80060F00:
      andi       $2, $20, 0x1
      beqz       $2, .L80060F18
       addu      $4, $23, $0
      sw         $0, 0x0($19)
      j          .L80060FDC
       sb        $0, 0x0($18)
  .L80060F18:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0xC($2)
      addu       $4, $17, $0
      jal        func_80024000
       sw        $2, -0x5($18)
      sw         $2, 0x0($19)
      lbu        $2, 0x0($17)
      beqz       $2, .L80060F84
       addu      $16, $0, $0
      addu       $16, $2, $0
  .L80060F44:
      andi       $4, $16, 0xFF
      beqz       $4, .L80060F64
       addiu     $2, $16, -0x30
      jal        func_800126C0
       nop
      bnel       $2, $0, .L80060F78
       addiu     $17, $17, 0x1
      addiu      $2, $16, -0x30
  .L80060F64:
      andi       $2, $2, 0xFF
      sltiu      $2, $2, 0xA
      beqz       $2, .L80060F88
       andi      $3, $16, 0xFF
      addiu      $17, $17, 0x1
  .L80060F78:
      lbu        $2, 0x0($17)
      bnel       $2, $0, .L80060F44
       addu      $16, $2, $0
  .L80060F84:
      andi       $3, $16, 0xFF
  .L80060F88:
      addiu      $2, $0, 0x25
      beq        $3, $2, .L80060FA4
       addiu     $2, $0, 0x2A
      beq        $3, $2, .L80060FB0
       addiu     $2, $0, 0x2
      j          .L80060FD0
       nop
  .L80060FA4:
      addiu      $2, $0, 0x1
      j          .L80060FD0
       sb        $2, 0x0($18)
  .L80060FB0:
      sb         $2, 0x0($18)
      lw         $2, 0x0($19)
      bnez       $2, .L80060FD0
       addiu     $2, $0, 0x1
      j          .L80060FD0
       sw        $2, 0x0($19)
  .L80060FC8:
      beq        $2, $21, .L80060FDC
       addiu     $17, $17, 0x1
  .L80060FD0:
      lbu        $2, 0x0($17)
      bnez       $2, .L80060FC8
       nop
  .L80060FDC:
      addiu      $18, $18, 0x10
      addiu      $20, $20, 0x1
      slt        $2, $20, $22
      bnez       $2, .L80060F00
       addiu     $19, $19, 0x10
  .L80060FF0:
      lw         $31, 0x30($29)
      lw         $23, 0x2C($29)
      lw         $22, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, -0x4
      jr         $31
       addiu     $29, $29, 0x38
.end func_80060EB8

.globl func_80061020
.ent func_80061020
func_80061020:
      addu       $7, $4, $0
      addu       $10, $5, $0
      addu       $8, $0, $0
      blez       $6, .L80061070
       addu      $9, $8, $0
      addiu      $3, $7, 0x4
  .L80061038:
      lbu        $2, 0x9($3)
      bnel       $2, $0, .L8006105C
       addiu     $3, $3, 0x10
      lw         $2, 0x0($7)
      sw         $2, 0x0($3)
      lw         $2, 0x0($7)
      addu       $9, $9, $2
      subu       $10, $10, $2
      addiu      $3, $3, 0x10
  .L8006105C:
      addiu      $8, $8, 0x1
      slt        $2, $8, $6
      bnez       $2, .L80061038
       addiu     $7, $7, 0x10
      addu       $7, $4, $0
  .L80061070:
      blez       $6, .L80061100
       addu      $8, $0, $0
      addiu      $13, $0, 0x1
      addiu      $12, $0, 0x2
      lui        $11, (0x51EB851F >> 16)
      ori        $11, $11, (0x51EB851F & 0xFFFF)
      addiu      $4, $7, 0x4
  .L8006108C:
      lbu        $3, 0x9($4)
      beq        $3, $13, .L800610B0
       slti      $2, $3, 0x2
      bnel       $2, $0, .L800610F0
       addiu     $4, $4, 0x10
      beql       $3, $12, .L800610EC
       sw        $0, 0x0($4)
      j          .L800610F0
       addiu     $4, $4, 0x10
  .L800610B0:
      blezl      $10, .L800610E4
       sw        $3, 0x0($4)
      lw         $2, 0x0($7)
      mult       $2, $10
      mflo       $2
      nop
      nop
      mult       $2, $11
      sra        $2, $2, 31
      mfhi       $3
      sra        $3, $3, 5
      subu       $3, $3, $2
      sw         $3, 0x0($4)
  .L800610E4:
      lw         $2, 0x0($4)
      addu       $9, $9, $2
  .L800610EC:
      addiu      $4, $4, 0x10
  .L800610F0:
      addiu      $8, $8, 0x1
      slt        $2, $8, $6
      bnez       $2, .L8006108C
       addiu     $7, $7, 0x10
  .L80061100:
      jr         $31
       subu      $2, $5, $9
.end func_80061020

.globl func_80061108
.ent func_80061108
func_80061108:
      addu       $10, $4, $0
      addu       $11, $0, $0
      addu       $3, $11, $0
      addu       $12, $11, $0
      blez       $6, .L80061168
       addu      $8, $11, $0
      addiu      $14, $0, 0x2
      addiu      $13, $0, 0x1
      addiu      $7, $4, 0x4
  .L8006112C:
      lw         $9, 0x0($7)
      lbu        $2, 0x9($7)
      bne        $2, $14, .L80061154
       addu      $11, $11, $9
      lw         $2, 0x0($10)
      addiu      $12, $12, 0x1
      bnez       $9, .L80061154
       addu      $3, $3, $2
      sw         $13, 0x0($7)
      addiu      $11, $11, 0x1
  .L80061154:
      addiu      $7, $7, 0x10
      addiu      $8, $8, 0x1
      slt        $2, $8, $6
      bnez       $2, .L8006112C
       addiu     $10, $10, 0x10
  .L80061168:
      slt        $2, $11, $5
      beqz       $2, .L800612A4
       nop
      subu       $5, $5, $11
      bnez       $3, .L800611FC
       addu      $10, $5, $0
      blez       $6, .L80061284
       addu      $7, $0, $0
      addu       $9, $4, $0
  .L8006118C:
      blez       $5, .L80061284
       andi      $2, $7, 0x1
      bnez       $2, .L800611E8
       addiu     $7, $7, 0x1
      lw         $2, 0x4($9)
      mult       $2, $10
      mflo       $3
      nop
      nop
      div        $zero, $3, $11
      bnez       $11, .L800611C0
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800611C0:
      addiu      $1, $0, -0x1
      bne        $11, $1, .L800611D8
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800611D8
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800611D8:
      mflo       $8
      subu       $5, $5, $8
      addu       $2, $2, $8
      sw         $2, 0x4($9)
  .L800611E8:
      slt        $2, $7, $6
      beqz       $2, .L80061284
       addiu     $9, $9, 0x10
      j          .L8006118C
       nop
  .L800611FC:
      addu       $10, $4, $0
      div        $zero, $5, $3
      bnez       $3, .L80061210
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L80061210:
      addiu      $1, $0, -0x1
      bne        $3, $1, .L80061228
       lui       $1, (0x80000000 >> 16)
      bne        $5, $1, .L80061228
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L80061228:
      mflo       $7
      blez       $6, .L80061284
       addu      $8, $0, $0
      addiu      $9, $0, 0x2
      addiu      $3, $4, 0x4
  .L8006123C:
      lbu        $2, 0x9($3)
      bnel       $2, $9, .L80061274
       addiu     $3, $3, 0x10
      lw         $2, 0x0($10)
      mult       $2, $7
      lw         $2, 0x0($3)
      mflo       $15
      addu       $2, $2, $15
      sw         $2, 0x0($3)
      lw         $2, 0x0($10)
      mult       $2, $7
      mflo       $15
      subu       $5, $5, $15
      addiu      $3, $3, 0x10
  .L80061274:
      addiu      $8, $8, 0x1
      slt        $2, $8, $6
      bnez       $2, .L8006123C
       addiu     $10, $10, 0x10
  .L80061284:
      beqz       $5, .L800614B4
       sll       $3, $6, 4
      addu       $3, $3, $4
      addiu      $3, $3, -0x10
      lw         $2, 0x4($3)
      addu       $2, $2, $5
      jr         $31
       sw        $2, 0x4($3)
  .L800612A4:
      beqz       $3, .L80061330
       subu      $10, $11, $5
      div        $zero, $10, $3
      bnez       $3, .L800612BC
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800612BC:
      addiu      $1, $0, -0x1
      bne        $3, $1, .L800612D4
       lui       $1, (0x80000000 >> 16)
      bne        $10, $1, .L800612D4
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800612D4:
      mflo       $8
      blez       $6, .L80061330
       addu      $7, $0, $0
      addiu      $13, $0, 0x2
      addiu      $11, $0, 0x1
      addu       $9, $4, $0
  .L800612EC:
      lbu        $2, 0xD($9)
      bnel       $2, $13, .L80061324
       addiu     $7, $7, 0x1
      lw         $3, 0x4($9)
      slt        $2, $8, $3
      beqz       $2, .L80061314
       subu      $2, $3, $8
      sw         $2, 0x4($9)
      j          .L80061320
       subu      $10, $10, $8
  .L80061314:
      addiu      $2, $10, 0x1
      subu       $10, $2, $3
      sw         $11, 0x4($9)
  .L80061320:
      addiu      $7, $7, 0x1
  .L80061324:
      slt        $2, $7, $6
      bnez       $2, .L800612EC
       addiu     $9, $9, 0x10
  .L80061330:
      blez       $10, .L800614B4
       sra       $2, $6, 1
      addiu      $11, $2, 0x1
      subu       $11, $11, $12
      addu       $7, $0, $0
      blez       $6, .L80061374
       addu      $8, $7, $0
      addiu      $9, $0, 0x2
      addu       $3, $4, $0
  .L80061354:
      lbu        $2, 0xD($3)
      beq        $2, $9, .L80061368
       addiu     $8, $8, 0x2
      lw         $2, 0x4($3)
      addu       $7, $7, $2
  .L80061368:
      slt        $2, $8, $6
      bnez       $2, .L80061354
       addiu     $3, $3, 0x20
  .L80061374:
      beqz       $7, .L8006140C
       nop
      addu       $3, $0, $0
      addu       $8, $3, $0
      blez       $6, .L80061408
       subu      $9, $7, $10
      addiu      $10, $0, 0x2
      addu       $5, $4, $0
  .L80061394:
      lbu        $2, 0xD($5)
      beql       $2, $10, .L800613FC
       addiu     $8, $8, 0x2
      lw         $2, 0x4($5)
      mult       $2, $9
      mflo       $15
      addu       $3, $15, $3
      slt        $2, $3, $7
      beqz       $2, .L800613C4
       addiu     $2, $0, 0x1
      j          .L800613F4
       subu      $3, $3, $7
  .L800613C4:
      div        $zero, $3, $7
      bnez       $7, .L800613D4
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800613D4:
      addiu      $1, $0, -0x1
      bne        $7, $1, .L800613EC
       lui       $1, (0x80000000 >> 16)
      bne        $3, $1, .L800613EC
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800613EC:
      mflo       $2
      mfhi       $3
  .L800613F4:
      sw         $2, 0x4($5)
      addiu      $8, $8, 0x2
  .L800613FC:
      slt        $2, $8, $6
      bnez       $2, .L80061394
       addiu     $5, $5, 0x20
  .L80061408:
      addu       $10, $0, $0
  .L8006140C:
      beqz       $10, .L800614B4
       addu      $9, $0, $0
      addiu      $13, $0, 0x1
      addiu      $12, $0, 0x2
  .L8006141C:
      slti       $2, $9, 0x3E8
      beqz       $2, .L800614B4
       nop
      beq        $10, $13, .L8006145C
       addiu     $8, $0, 0x1
      div        $zero, $10, $11
      bnez       $11, .L80061440
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L80061440:
      addiu      $1, $0, -0x1
      bne        $11, $1, .L80061458
       lui       $1, (0x80000000 >> 16)
      bne        $10, $1, .L80061458
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L80061458:
      mflo       $8
  .L8006145C:
      blez       $6, .L800614AC
       addu      $7, $0, $0
      addu       $5, $4, $0
  .L80061468:
      blez       $10, .L800614AC
       andi      $2, $7, 0x1
      bnel       $2, $0, .L800614A0
       addiu     $7, $7, 0x1
      lbu        $2, 0xD($5)
      beq        $2, $12, .L800614A0
       addiu     $7, $7, 0x1
      lw         $3, 0x4($5)
      slt        $2, $8, $3
      beqz       $2, .L800614A0
       nop
      subu       $2, $3, $8
      sw         $2, 0x4($5)
      subu       $10, $10, $8
  .L800614A0:
      slt        $2, $7, $6
      bnez       $2, .L80061468
       addiu     $5, $5, 0x10
  .L800614AC:
      bnez       $10, .L8006141C
       addiu     $9, $9, 0x1
  .L800614B4:
      jr         $31
       nop
.end func_80061108

.globl func_800614BC
.ent func_800614BC
func_800614BC:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      slti       $2, $17, 0x2
      bnez       $2, .L80061518
       sw        $31, 0x20($29)
      jal        func_80060E40
       addu      $4, $17, $0
      addu       $16, $2, $0
      bnez       $16, .L80061508
       addu      $4, $18, $0
      j          .L8006151C
       addu      $2, $0, $0
  .L80061508:
      addu       $5, $16, $0
      addu       $6, $19, $0
      jal        func_80060EB8
       addu      $7, $17, $0
  .L80061518:
      addu       $2, $16, $0
  .L8006151C:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800614BC

.globl func_80061538
.ent func_80061538
func_80061538:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      addu       $5, $0, $0
      beqz       $17, .L800615B0
       sw        $31, 0x1C($29)
      slt        $2, $5, $16
      beqz       $2, .L80061588
       addu      $4, $5, $0
      addu       $3, $17, $0
  .L80061570:
      lw         $2, 0x4($3)
      addiu      $4, $4, 0x1
      addu       $5, $5, $2
      slt        $2, $4, $16
      bnez       $2, .L80061570
       addiu     $3, $3, 0x10
  .L80061588:
      beq        $5, $18, .L800615B0
       addu      $4, $17, $0
      addu       $5, $18, $0
      jal        func_80061020
       addu      $6, $16, $0
      beqz       $2, .L800615B0
       addu      $4, $17, $0
      addu       $5, $18, $0
      jal        func_80061108
       addu      $6, $16, $0
  .L800615B0:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80061538

.globl func_800615C8
.ent func_800615C8
func_800615C8:
      addiu      $29, $29, -0x38
      sw         $20, 0x20($29)
      lw         $20, 0x48($29)
      sw         $30, 0x30($29)
      lw         $30, 0x5C($29)
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      sw         $31, 0x34($29)
      sw         $23, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $17, 0x14($29)
      bnez       $18, .L80061618
       sw        $7, 0x44($29)
      j          .L80061730
       addu      $2, $0, $0
  .L80061618:
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $21, 0x4($2)
      blez       $20, .L8006172C
       addu      $17, $0, $0
      addiu      $23, $0, 0x2A
      addiu      $22, $0, 0x29
  .L80061638:
      beqz       $16, .L8006172C
       addu      $4, $18, $0
      addu       $5, $17, $0
      addu       $6, $21, $0
      jal        func_800627A8
       addu      $7, $30, $0
      lw         $3, 0x4C($29)
      addu       $3, $3, $2
      andi       $2, $17, 0x1
      bnez       $2, .L80061714
       sw        $3, 0x54($29)
      lbu        $3, 0x10($16)
      beq        $3, $23, .L8006172C
       slti      $2, $3, 0x2B
      beqz       $2, .L80061688
       addiu     $2, $0, 0x2B
      beq        $3, $22, .L800616CC
       addu      $4, $16, $0
      j          .L80061710
       nop
  .L80061688:
      bne        $3, $2, .L80061710
       addu      $4, $19, $0
      addu       $5, $16, $0
      jal        func_80062624
       addiu     $6, $29, 0x4C
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x26($2)
      bnez       $2, .L80061710
       addu      $4, $16, $0
      addu       $5, $18, $0
      lw         $6, 0x44($29)
      jal        func_80062970
       addu      $7, $17, $0
      j          .L80061710
       nop
  .L800616CC:
      jal        func_80058268
       addu      $5, $0, $0
      lw         $8, 0x4C($29)
      lw         $9, 0x50($29)
      lw         $10, 0x54($29)
      lw         $11, 0x58($29)
      sw         $8, 0x0($2)
      sw         $9, 0x4($2)
      sw         $10, 0x8($2)
      sw         $11, 0xC($2)
      addu       $4, $19, $0
      addu       $5, $16, $0
      jal        func_80061980
       addiu     $6, $29, 0x4C
      addu       $16, $2, $0
      beqz       $16, .L80061730
       addu      $2, $16, $0
  .L80061710:
      lw         $16, 0x8($16)
  .L80061714:
      lw         $2, 0x54($29)
      addiu      $17, $17, 0x1
      sw         $2, 0x4C($29)
      slt        $2, $17, $20
      bnez       $2, .L80061638
       nop
  .L8006172C:
      addu       $2, $16, $0
  .L80061730:
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
.end func_800615C8

.globl func_80061760
.ent func_80061760
func_80061760:
      addiu      $29, $29, -0x50
      sw         $17, 0x2C($29)
      addu       $17, $4, $0
      sw         $21, 0x3C($29)
      addu       $21, $5, $0
      sw         $19, 0x34($29)
      addu       $19, $6, $0
      sw         $20, 0x38($29)
      addu       $20, $7, $0
      addu       $4, $21, $0
      sw         $30, 0x48($29)
      lw         $30, 0x60($29)
      addiu      $5, $0, 0x2
      sw         $31, 0x4C($29)
      sw         $23, 0x44($29)
      sw         $22, 0x40($29)
      sw         $18, 0x30($29)
      jal        func_80058268
       sw        $16, 0x28($29)
      addu       $4, $21, $0
      lw         $22, 0x4($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x8($2)
      lw         $3, 0x0($19)
      sw         $2, 0x20($29)
      sw         $3, 0x10($29)
      lw         $2, 0x4($19)
      sw         $2, 0x14($29)
      lw         $2, 0xC($19)
      addu       $18, $0, $0
      blez       $20, .L80061888
       sw        $2, 0x1C($29)
      addiu      $23, $0, 0x2C
      addu       $4, $21, $0
  .L800617EC:
      addu       $5, $18, $0
      addu       $6, $22, $0
      jal        func_800627A8
       addu      $7, $19, $0
      lw         $3, 0x10($29)
      addu       $3, $3, $2
      andi       $2, $18, 0x1
      beqz       $2, .L80061870
       sw        $3, 0x18($29)
      beqz       $17, .L80061950
       addu      $2, $17, $0
      lbu        $2, 0x10($17)
      bne        $2, $23, .L80061950
       addu      $2, $17, $0
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      lw         $8, 0x10($29)
      lw         $9, 0x14($29)
      lw         $10, 0x18($29)
      lw         $11, 0x1C($29)
      sw         $8, 0x0($2)
      sw         $9, 0x4($2)
      sw         $10, 0x8($2)
      sw         $11, 0xC($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      jal        func_80062920
       addu      $16, $2, $0
      sb         $2, 0x9($16)
      lw         $17, 0x8($17)
  .L80061870:
      lw         $2, 0x18($29)
      addiu      $18, $18, 0x1
      sw         $2, 0x10($29)
      slt        $2, $18, $20
      bnez       $2, .L800617EC
       addu      $4, $21, $0
  .L80061888:
      lw         $2, 0x4($19)
      sw         $2, 0x14($29)
      lw         $2, 0x0($19)
      sw         $2, 0x10($29)
      lw         $2, 0x8($19)
      addu       $18, $0, $0
      blez       $30, .L8006194C
       sw        $2, 0x18($29)
      addiu      $20, $0, 0x2C
      addu       $4, $21, $0
  .L800618B0:
      addu       $5, $18, $0
      lw         $6, 0x20($29)
      jal        func_80062710
       addu      $7, $19, $0
      lw         $3, 0x14($29)
      addu       $3, $3, $2
      andi       $2, $18, 0x1
      beqz       $2, .L80061934
       sw        $3, 0x1C($29)
      beqz       $17, .L80061950
       addu      $2, $17, $0
      lbu        $2, 0x10($17)
      bne        $2, $20, .L80061950
       addu      $2, $17, $0
      addu       $4, $17, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $17, $0
      lw         $8, 0x10($29)
      lw         $9, 0x14($29)
      lw         $10, 0x18($29)
      lw         $11, 0x1C($29)
      sw         $8, 0x0($2)
      sw         $9, 0x4($2)
      sw         $10, 0x8($2)
      sw         $11, 0xC($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      jal        func_80062920
       addu      $16, $2, $0
      sb         $2, 0x9($16)
      lw         $17, 0x8($17)
  .L80061934:
      lw         $2, 0x1C($29)
      addiu      $18, $18, 0x1
      sw         $2, 0x14($29)
      slt        $2, $18, $30
      bnez       $2, .L800618B0
       addu      $4, $21, $0
  .L8006194C:
      addu       $2, $17, $0
  .L80061950:
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
.end func_80061760

.globl func_80061980
.ent func_80061980
func_80061980:
      addiu      $29, $29, -0x60
      sw         $23, 0x54($29)
      addu       $23, $4, $0
      sw         $20, 0x48($29)
      addu       $20, $5, $0
      sw         $21, 0x4C($29)
      addu       $21, $6, $0
      sw         $31, 0x58($29)
      sw         $22, 0x50($29)
      sw         $19, 0x44($29)
      sw         $18, 0x40($29)
      sw         $17, 0x3C($29)
      bnez       $20, .L800619C0
       sw        $16, 0x38($29)
      j          .L80061B64
       addu      $2, $0, $0
  .L800619C0:
      lbu        $3, 0x10($20)
      addiu      $2, $0, 0x29
      beq        $3, $2, .L800619DC
       addu      $4, $20, $0
      lw         $2, 0x8($20)
      j          .L80061B64
       nop
  .L800619DC:
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $20, $0
      addiu      $5, $0, 0x2
      lw         $8, 0x0($21)
      lw         $9, 0x4($21)
      lw         $10, 0x8($21)
      lw         $11, 0xC($21)
      sw         $8, 0x0($2)
      sw         $9, 0x4($2)
      sw         $10, 0x8($2)
      jal        func_80058268
       sw        $11, 0xC($2)
      addu       $4, $20, $0
      lh         $18, 0x14($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $20, $0
      addiu      $5, $0, 0x2
      lh         $19, 0x16($2)
      addiu      $2, $18, -0x1
      addu       $18, $18, $2
      addiu      $2, $19, -0x1
      jal        func_80058268
       addu      $19, $19, $2
      addu       $4, $20, $0
      lw         $16, 0x4($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $6, $19, $0
      lw         $3, 0x8($21)
      lw         $5, 0x0($21)
      lw         $22, 0x8($2)
      addu       $4, $16, $0
      jal        func_80061538
       subu      $5, $3, $5
      addu       $4, $22, $0
      lw         $2, 0xC($21)
      lw         $5, 0x4($21)
      addu       $6, $18, $0
      jal        func_80061538
       subu      $5, $2, $5
      lw         $2, 0x4($21)
      sw         $2, 0x2C($29)
      lw         $2, 0x0($21)
      sw         $2, 0x28($29)
      lw         $17, 0x8($20)
      blez       $18, .L80061B30
       addu      $16, $0, $0
      addu       $4, $20, $0
  .L80061AA4:
      addu       $5, $16, $0
      addu       $6, $22, $0
      jal        func_80062710
       addu      $7, $21, $0
      lw         $3, 0x2C($29)
      addu       $3, $3, $2
      andi       $2, $16, 0x1
      bnez       $2, .L80061B18
       sw        $3, 0x34($29)
      addu       $4, $23, $0
      addu       $5, $20, $0
      addu       $6, $17, $0
      addu       $7, $16, $0
      sw         $19, 0x10($29)
      lw         $8, 0x28($29)
      lw         $9, 0x2C($29)
      lw         $10, 0x30($29)
      lw         $11, 0x34($29)
      sw         $8, 0x14($29)
      sw         $9, 0x18($29)
      sw         $10, 0x1C($29)
      sw         $11, 0x20($29)
      jal        func_800615C8
       sw        $21, 0x24($29)
      addu       $17, $2, $0
      beqz       $17, .L80061B64
       addu      $2, $17, $0
      lw         $2, 0x0($21)
      sw         $2, 0x28($29)
  .L80061B18:
      lw         $2, 0x34($29)
      addiu      $16, $16, 0x1
      sw         $2, 0x2C($29)
      slt        $2, $16, $18
      bnez       $2, .L80061AA4
       addu      $4, $20, $0
  .L80061B30:
      beqz       $17, .L80061B60
       addiu     $2, $0, 0x2C
      lbu        $3, 0x10($17)
      bne        $3, $2, .L80061B64
       addu      $2, $17, $0
      sw         $18, 0x10($29)
      addu       $4, $17, $0
      addu       $5, $20, $0
      addu       $6, $21, $0
      jal        func_80061760
       addu      $7, $19, $0
      addu       $17, $2, $0
  .L80061B60:
      addu       $2, $17, $0
  .L80061B64:
      lw         $31, 0x58($29)
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
.end func_80061980

.globl func_80061B90
.ent func_80061B90
func_80061B90:
      addiu      $29, $29, -0x40
      sw         $30, 0x38($29)
      lw         $30, 0x50($29)
      sw         $21, 0x2C($29)
      lw         $21, 0x54($29)
      sw         $23, 0x34($29)
      lw         $23, 0x58($29)
      sw         $22, 0x30($29)
      addu       $22, $4, $0
      sw         $31, 0x3C($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      sw         $5, 0x44($29)
      sw         $7, 0x4C($29)
      lw         $20, 0x0($22)
      bnez       $21, .L80061BE8
       nop
      beqz       $23, .L80061D94
       addiu     $2, $0, 0x1
  .L80061BE8:
      jal        func_800626D0
       addu      $4, $21, $0
      addu       $18, $2, $0
      jal        func_800626D0
       addu      $4, $23, $0
      addu       $19, $2, $0
      addiu      $2, $0, 0x1
      sb         $2, 0xD9($20)
      addu       $4, $22, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x29
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80061D94
       addu      $2, $16, $0
      lw         $17, 0x18($22)
      addiu      $5, $0, 0x2
      jal        func_80058268
       addu      $4, $17, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sh        $18, 0x16($2)
      addiu      $3, $18, -0x1
      addu       $18, $18, $3
      sh         $19, 0x14($2)
      addiu      $2, $19, -0x1
      addu       $19, $19, $2
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $20, $0
      addu       $5, $17, $0
      jal        func_80061DC4
       sb        $16, 0x18($2)
      addiu      $16, $29, 0x10
      lw         $4, 0x44($29)
      jal        func_80062B00
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80061CB8
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      lw         $3, 0x10($29)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $3, 0xC($2)
      lw         $3, 0x10($29)
      sltu       $3, $0, $3
      sw         $3, 0x10($2)
  .L80061CB8:
      beqz       $30, .L80061CE4
       addu      $4, $30, $0
      jal        func_80062BBC
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80061CE4
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x10($29)
      sw         $3, 0xC($2)
  .L80061CE4:
      lw         $8, 0x4C($29)
      beqz       $8, .L80061D14
       addu      $4, $8, $0
      jal        func_80062B40
       addiu     $5, $29, 0x10
      andi       $2, $2, 0xFF
      beqz       $2, .L80061D14
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x10($29)
      sw         $3, 0x10($2)
  .L80061D14:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $17, $0
      addu       $5, $21, $0
      sll        $6, $18, 16
      sra        $6, $6, 16
      jal        func_800614BC
       addu      $16, $2, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $2, 0x4($16)
      addu       $4, $17, $0
      addu       $5, $23, $0
      sll        $6, $19, 16
      sra        $6, $6, 16
      jal        func_800614BC
       addu      $16, $2, $0
      addu       $4, $20, $0
      jal        func_80062878
       sw        $2, 0x8($16)
      beqz       $2, .L80061D90
       addu      $4, $22, $0
      sw         $17, 0x4($2)
      lw         $5, 0x5C($29)
      lw         $6, 0x60($29)
      jal        func_80064DD0
       addu      $7, $0, $0
      j          .L80061D94
       nop
  .L80061D90:
      addiu      $2, $0, -0x5
  .L80061D94:
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
.end func_80061B90

.globl func_80061DC4
.ent func_80061DC4
func_80061DC4:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $18, 0x18($29)
      addiu      $18, $0, 0x2
      sw         $31, 0x20($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $4, 0x60($4)
      beqz       $4, .L80061E18
       addu      $17, $18, $0
      lw         $16, 0x4($4)
      beqz       $16, .L80061E18
       addu      $4, $16, $0
      jal        func_80058268
       addu      $5, $18, $0
      addu       $5, $18, $0
      lw         $18, 0xC($2)
      jal        func_80058268
       addu      $4, $16, $0
      lw         $17, 0x10($2)
  .L80061E18:
      addu       $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $19, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $18, 0xC($2)
      sw         $17, 0x10($2)
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80061DC4

.globl func_80061E54
.ent func_80061E54
func_80061E54:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $4, 0x60($4)
      beqz       $4, .L80061E8C
       addiu     $16, $0, 0x2
      lw         $4, 0x4($4)
      beql       $4, $0, .L80061E90
       addu      $4, $17, $0
      jal        func_80058268
       addu      $5, $16, $0
      lw         $16, 0x10($2)
  .L80061E8C:
      addu       $4, $17, $0
  .L80061E90:
      jal        func_80058268
       addiu     $5, $0, 0x2
      sw         $16, 0x20($2)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80061E54

.globl func_80061EB0
.ent func_80061EB0
func_80061EB0:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $18, 0x0($19)
      lw         $16, 0x60($18)
      beqz       $16, .L80061F38
       addiu     $2, $0, 0x1
      lw         $17, 0x4($16)
      beqz       $17, .L80061F38
       addu      $4, $17, $0
      jal        func_800623E4
       addu      $5, $19, $0
      addiu      $20, $0, 0x1
      bne        $2, $20, .L80061F38
       addu      $4, $19, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x2A
      bne        $2, $20, .L80061F38
       nop
      lw         $4, 0x18($19)
      jal        func_80058268
       addiu     $5, $0, 0x2
      sw         $17, 0x0($2)
      lw         $2, 0x0($16)
      addu       $4, $16, $0
      jal        func_80052540
       sw        $2, 0x60($18)
      lw         $2, 0x60($18)
      sltu       $2, $0, $2
  .L80061F38:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80061EB0

.globl func_80061F58
.ent func_80061F58
func_80061F58:
      addiu      $29, $29, -0x48
      sw         $21, 0x34($29)
      addu       $21, $4, $0
      sw         $30, 0x40($29)
      addu       $30, $5, $0
      sw         $31, 0x44($29)
      sw         $23, 0x3C($29)
      sw         $22, 0x38($29)
      sw         $20, 0x30($29)
      sw         $19, 0x2C($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      sw         $16, 0x20($29)
      sw         $7, 0x54($29)
      lw         $20, 0x0($21)
      addu       $23, $6, $0
      lw         $19, 0x60($20)
      lbu        $22, 0x7B($29)
      jal        func_80062BFC
       addu      $4, $19, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80062348
       addiu     $2, $0, 0x1
      beqz       $19, .L80062348
       addu      $4, $21, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x2B
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L80062348
       addu      $2, $17, $0
      lw         $18, 0x18($21)
      addiu      $5, $0, 0x2
      sb         $17, 0xAD0($21)
      jal        func_80058268
       addu      $4, $18, $0
      addiu      $4, $0, 0x80
      addiu      $5, $0, 0x7
      addu       $6, $5, $0
      jal        func_800565B0
       addu      $16, $2, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $2, 0x4($16)
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $17, 0x27($2)
      addu       $4, $18, $0
      lw         $3, 0x4($19)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $3, 0x0($2)
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sh        $17, 0x24($2)
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      sltiu      $3, $22, 0x1
      jal        func_80058268
       sb        $3, 0x26($2)
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $0, 0x10($2)
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $0, 0x14($2)
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $0, 0x18($2)
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $0, 0x1C($2)
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $0, 0x8($2)
      addu       $4, $20, $0
      addu       $5, $18, $0
      addiu      $3, $0, -0x1
      jal        func_80061E54
       sw        $3, 0xC($2)
      addiu      $16, $29, 0x18
      lw         $4, 0x54($29)
      jal        func_80062B00
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800620E8
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x18($29)
      sltu       $3, $0, $3
      sw         $3, 0x20($2)
  .L800620E8:
      lw         $4, 0x5C($29)
      jal        func_80062B40
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80062110
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $3, 0x18($29)
      sw         $3, 0x20($2)
  .L80062110:
      jal        func_80062378
       addu      $4, $18, $0
      beqz       $30, .L80062174
       nop
      lbu        $2, 0x0($30)
      beqz       $2, .L80062174
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addiu      $4, $20, 0x34
      jal        func_80063060
       addu      $16, $2, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $2, 0x10($16)
      addu       $4, $30, $0
      jal        func_80017780
       addu      $16, $2, $0
      addu       $4, $20, $0
      addu       $5, $30, $0
      addiu      $6, $2, 0x1
      jal        func_8006E520
       addu      $7, $0, $0
      sw         $2, 0x18($16)
  .L80062174:
      beqz       $23, .L800621D0
       nop
      lbu        $2, 0x0($23)
      beqz       $2, .L800621D0
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addiu      $4, $20, 0x34
      jal        func_80063060
       addu      $16, $2, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $2, 0x14($16)
      addu       $4, $23, $0
      jal        func_80017780
       addu      $16, $2, $0
      addu       $4, $20, $0
      addu       $5, $23, $0
      addiu      $6, $2, 0x1
      jal        func_8006E520
       addu      $7, $0, $0
      sw         $2, 0x1C($16)
  .L800621D0:
      lw         $8, 0x68($29)
      beqz       $8, .L800621E8
       addu      $16, $0, $0
      lbu        $2, 0x0($8)
      sltu       $2, $0, $2
      addu       $16, $2, $0
  .L800621E8:
      lw         $8, 0x64($29)
      beqz       $8, .L80062200
       addu      $17, $0, $0
      lbu        $2, 0x0($8)
      sltu       $2, $0, $2
      addu       $17, $2, $0
  .L80062200:
      andi       $2, $17, 0xFF
      bnez       $2, .L80062218
       addu      $4, $18, $0
      andi       $2, $16, 0xFF
      beql       $2, $0, .L80062298
       addiu     $4, $0, 0x40
  .L80062218:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $3, $2, $0
      lui        $2, %hi(D_800ED0F0)
      addiu      $5, $2, %lo(D_800ED0F0)
      andi       $2, $16, 0xFF
      beqz       $2, .L80062244
       lui       $2, %hi(D_800ECC40)
      lw         $6, 0x68($29)
      j          .L80062248
       nop
  .L80062244:
      addiu      $6, $2, %lo(D_800ECC40)
  .L80062248:
      lw         $4, 0x4($3)
      jal        func_80056BFC
       addu      $7, $0, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $3, $2, $0
      lui        $2, %hi(D_800ED100)
      addiu      $5, $2, %lo(D_800ED100)
      andi       $2, $17, 0xFF
      beqz       $2, .L80062284
       lui       $2, %hi(D_800ECC40)
      lw         $6, 0x64($29)
      j          .L80062288
       nop
  .L80062284:
      addiu      $6, $2, %lo(D_800ECC40)
  .L80062288:
      lw         $4, 0x4($3)
      jal        func_80056BFC
       addu      $7, $0, $0
      addiu      $4, $0, 0x40
  .L80062298:
      jal        func_80052504
       addu      $5, $0, $0
      addu       $16, $2, $0
      beqz       $16, .L800622DC
       addiu     $3, $0, 0x1
      lw         $2, 0x0($21)
      sb         $3, 0x39($16)
      addiu      $3, $0, 0x2
      sw         $18, 0x4($16)
      sw         $0, 0x14($16)
      sb         $3, 0x3A($16)
      beqz       $30, .L800622E4
       sw        $2, 0x0($16)
      jal        func_800523C0
       addu      $4, $30, $0
      bnez       $2, .L800622E4
       sw        $2, 0x20($16)
  .L800622DC:
      j          .L80062348
       addiu     $2, $0, -0x5
  .L800622E4:
      addu       $4, $20, $0
      addu       $5, $16, $0
      addiu      $2, $0, 0x1
      sb         $0, 0x38($16)
      sb         $0, 0x3B($16)
      jal        func_800749A0
       sb        $2, 0x3C($16)
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $21, $0
      lw         $6, 0x7C($29)
      lw         $7, 0x80($29)
      addu       $5, $18, $0
      sw         $16, 0x8($2)
      jal        func_80065594
       sw        $0, 0x10($29)
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L80062348
       addu      $2, $17, $0
      lw         $2, 0x2EC($21)
      addiu      $2, $2, 0x1
      sw         $2, 0x2EC($21)
      addu       $2, $17, $0
  .L80062348:
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
.end func_80061F58

.globl func_80062378
.ent func_80062378
func_80062378:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $31, 0x24($29)
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $6, 0x20($2)
      slti       $2, $6, 0x2710
      beql       $2, $0, .L800623A0
       addiu     $6, $0, 0x270F
  .L800623A0:
      addiu      $4, $29, 0x10
      lui        $5, %hi(D_800EC6BC)
      jal        func_80016580
       addiu     $5, $5, %lo(D_800EC6BC)
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lui        $5, %hi(D_800ECF7C)
      addiu      $5, $5, %lo(D_800ECF7C)
      addiu      $6, $29, 0x10
      lw         $4, 0x4($2)
      jal        func_80056BFC
       addu      $7, $0, $0
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80062378

.globl func_800623E4
.ent func_800623E4
func_800623E4:
      addiu      $29, $29, -0x30
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $17, 0x14($29)
      addiu      $17, $0, 0x1
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $18, 0x18($29)
      beqz       $19, .L8006241C
       sw        $16, 0x10($29)
      bnez       $20, .L80062424
       addu      $4, $19, $0
  .L8006241C:
      j          .L800624DC
       addiu     $2, $0, 0x1
  .L80062424:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $18, 0x16($2)
      addiu      $2, $18, -0x1
      addu       $18, $18, $2
      blez       $18, .L8006247C
       addu      $16, $0, $0
      addiu      $21, $0, 0x1
      andi       $2, $16, 0x1
  .L80062448:
      beql       $2, $0, .L80062470
       addiu     $16, $16, 0x1
      addu       $4, $20, $0
      addu       $5, $19, $0
      addu       $6, $16, $0
      jal        func_80062518
       addu      $7, $0, $0
      addu       $17, $2, $0
      bne        $17, $21, .L800624D8
       addiu     $16, $16, 0x1
  .L80062470:
      slt        $2, $16, $18
      bnez       $2, .L80062448
       andi      $2, $16, 0x1
  .L8006247C:
      addu       $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $18, 0x14($2)
      addiu      $2, $18, -0x1
      addu       $18, $18, $2
      blez       $18, .L800624D8
       addu      $16, $0, $0
      addiu      $21, $0, 0x1
      andi       $2, $16, 0x1
  .L800624A4:
      beql       $2, $0, .L800624CC
       addiu     $16, $16, 0x1
      addu       $4, $20, $0
      addu       $5, $19, $0
      addu       $6, $16, $0
      jal        func_80062518
       addiu     $7, $0, 0x1
      addu       $17, $2, $0
      bne        $17, $21, .L800624D8
       addiu     $16, $16, 0x1
  .L800624CC:
      slt        $2, $16, $18
      bnez       $2, .L800624A4
       andi      $2, $16, 0x1
  .L800624D8:
      addu       $2, $17, $0
  .L800624DC:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800623E4

.globl func_80062500
.ent func_80062500
func_80062500:
      addu       $2, $4, $0
      slt        $3, $5, $2
      beql       $3, $0, .L80062510
       addu      $2, $5, $0
  .L80062510:
      jr         $31
       nop
.end func_80062500

.globl func_80062518
.ent func_80062518
func_80062518:
      addiu      $29, $29, -0x30
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $21, 0x24($29)
      addu       $21, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $19, 0x1C($29)
      addu       $19, $7, $0
      sw         $18, 0x18($29)
      addiu      $18, $0, 0x1
      sw         $31, 0x28($29)
      beqz       $17, .L800625FC
       sw        $16, 0x10($29)
      lw         $2, 0x0($17)
      beqz       $2, .L80062600
       addu      $2, $18, $0
      lw         $2, 0x18($17)
      beqz       $2, .L800625FC
       addu      $4, $17, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x2C
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bne        $18, $2, .L80062600
       addu      $2, $18, $0
      lw         $16, 0x18($17)
      addiu      $5, $0, 0x2
      sb         $18, 0xAD0($17)
      jal        func_80058268
       addu      $4, $16, $0
      addu       $4, $16, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $19, 0x8($2)
      addu       $4, $16, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $20, 0x4($2)
      addu       $4, $16, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $21, 0x0($2)
      addu       $4, $16, $0
      jal        func_800628BC
       sb        $18, 0x9($2)
      sll        $16, $20, 4
      addu       $16, $16, $2
      lw         $4, -0x8($16)
      lw         $5, 0x18($16)
      jal        func_80062500
       nop
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      sw         $3, 0x8($16)
      j          .L80062600
       sw        $3, 0x0($16)
  .L800625FC:
      addu       $2, $18, $0
  .L80062600:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80062518

.globl func_80062624
.ent func_80062624
func_80062624:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      beqz       $16, .L800626B8
       sw        $31, 0x1C($29)
      lbu        $3, 0x10($16)
      addiu      $2, $0, 0x2B
      bne        $3, $2, .L800626B8
       addu      $4, $16, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $16, $0
      addiu      $5, $0, 0x2
      lw         $8, 0x0($17)
      lw         $9, 0x4($17)
      lw         $10, 0x8($17)
      lw         $11, 0xC($17)
      sw         $8, 0x0($2)
      sw         $9, 0x4($2)
      sw         $10, 0x8($2)
      jal        func_80058268
       sw        $11, 0xC($2)
      addu       $4, $16, $0
      addiu      $5, $0, 0x2
      lw         $3, 0x8($2)
      addiu      $2, $0, 0x1
      jal        func_80058268
       sb        $2, 0x3C($3)
      addu       $4, $18, $0
      addu       $5, $16, $0
      lw         $6, 0x8($2)
      jal        func_80058AD0
       addiu     $7, $0, 0x2
  .L800626B8:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80062624

.globl func_800626D0
.ent func_800626D0
func_800626D0:
      bnez       $4, .L800626E0
       addiu     $2, $0, 0x1
      jr         $31
       addiu     $2, $0, 0x1
  .L800626E0:
      lbu        $3, 0x0($4)
      beqz       $3, .L80062704
       addiu     $5, $0, 0x2C
  .L800626EC:
      beql       $3, $5, .L800626F4
       addiu     $2, $2, 0x1
  .L800626F4:
      addiu      $4, $4, 0x1
      lbu        $3, 0x0($4)
      bnez       $3, .L800626EC
       nop
  .L80062704:
      sll        $2, $2, 16
      jr         $31
       sra       $2, $2, 16
.end func_800626D0

.globl func_80062710
.ent func_80062710
func_80062710:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $16, 0x10($29)
      addu       $16, $7, $0
      sw         $31, 0x1C($29)
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0xC($16)
      lw         $3, 0x4($16)
      lh         $2, 0x14($2)
      bnez       $17, .L80062780
       subu      $4, $4, $3
      div        $zero, $4, $2
      bnez       $2, .L8006275C
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8006275C:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L80062774
       lui       $1, (0x80000000 >> 16)
      bne        $4, $1, .L80062774
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L80062774:
      mflo       $4
      j          .L8006278C
       nop
  .L80062780:
      sll        $2, $18, 4
      addu       $2, $2, $17
      lw         $4, 0x4($2)
  .L8006278C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_80062710

.globl func_800627A8
.ent func_800627A8
func_800627A8:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $16, 0x10($29)
      addu       $16, $7, $0
      sw         $31, 0x1C($29)
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x8($16)
      lw         $3, 0x0($16)
      lh         $2, 0x16($2)
      bnez       $17, .L80062818
       subu      $4, $4, $3
      div        $zero, $4, $2
      bnez       $2, .L800627F4
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800627F4:
      addiu      $1, $0, -0x1
      bne        $2, $1, .L8006280C
       lui       $1, (0x80000000 >> 16)
      bne        $4, $1, .L8006280C
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8006280C:
      mflo       $4
      j          .L80062824
       nop
  .L80062818:
      sll        $2, $18, 4
      addu       $2, $2, $17
      lw         $4, 0x4($2)
  .L80062824:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_800627A8

.globl func_80062840
.ent func_80062840
func_80062840:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      beqz       $4, .L80062868
       sw        $16, 0x10($29)
  .L80062850:
      lw         $16, 0x0($4)
      jal        func_80052540
       nop
      addu       $4, $16, $0
      bnez       $4, .L80062850
       nop
  .L80062868:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80062840

.globl func_80062878
.ent func_80062878
func_80062878:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addiu      $4, $0, 0x8
      sw         $31, 0x14($29)
      jal        func_800524E8
       addu      $5, $0, $0
      beql       $2, $0, .L800628AC
       addu      $2, $0, $0
      sw         $0, 0x4($2)
      lw         $3, 0x60($16)
      sw         $3, 0x0($2)
      sw         $2, 0x60($16)
  .L800628AC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80062878

.globl func_800628BC
.ent func_800628BC
func_800628BC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $16, $0
      lw         $16, 0x0($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $2, 0x8($2)
      beqz       $2, .L80062904
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x8($2)
      j          .L80062910
       nop
  .L80062904:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x4($2)
  .L80062910:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800628BC

.globl func_80062920
.ent func_80062920
func_80062920:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $16, $0
      lw         $16, 0x4($2)
      jal        func_800628BC
       sll       $16, $16, 4
      addu       $16, $16, $2
      lbu        $2, -0x4($16)
      bnel       $2, $0, .L80062960
       addu      $2, $0, $0
      lbu        $2, 0x1C($16)
      sltiu      $2, $2, 0x1
  .L80062960:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80062920

.globl func_80062970
.ent func_80062970
func_80062970:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $17, 0x14($29)
      addu       $17, $7, $0
      addu       $4, $16, $0
      sw         $31, 0x1C($29)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $16, $0
      lw         $16, 0x4($2)
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $4, 0x8($2)
      beqz       $16, .L800629C4
       sll       $2, $17, 4
      addu       $2, $2, $16
      addiu      $3, $0, 0x1
      sb         $3, 0xC($2)
  .L800629C4:
      beqz       $4, .L800629D8
       sll       $2, $18, 4
      addu       $2, $2, $4
      addiu      $3, $0, 0x1
      sb         $3, 0xC($2)
  .L800629D8:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80062970

.globl func_800629F0
.ent func_800629F0
func_800629F0:
      beqz       $4, .L80062A04
       nop
      lbu        $2, 0x0($4)
      bnez       $2, .L80062A0C
       nop
  .L80062A04:
      jr         $31
       addu      $2, $0, $0
  .L80062A0C:
      lbu        $2, 0x0($4)
      addiu      $2, $2, -0x30
      sltiu      $2, $2, 0xA
      beqz       $2, .L80062A04
       addiu     $4, $4, 0x1
      lbu        $2, 0x0($4)
      bnez       $2, .L80062A0C
       addiu     $2, $0, 0x1
      jr         $31
       nop
.end func_800629F0

.globl func_80062A34
.ent func_80062A34
func_80062A34:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      sw         $31, 0x18($29)
      jal        func_800629F0
       addu      $17, $5, $0
      andi       $2, $2, 0xFF
      beql       $2, $0, .L80062A6C
       addu      $2, $0, $0
      jal        func_80024000
       addu      $4, $16, $0
      sw         $2, 0x0($17)
      addiu      $2, $0, 0x1
  .L80062A6C:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80062A34

.globl func_80062A80
.ent func_80062A80
func_80062A80:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      beqz       $16, .L80062ADC
       sw        $31, 0x18($29)
      addu       $4, $16, $0
      lui        $5, %hi(D_800ECC44)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ECC44)
      bnez       $2, .L80062ABC
       addu      $4, $16, $0
      j          .L80062AE8
       sb        $0, 0x0($17)
  .L80062ABC:
      lui        $5, %hi(D_800ECC48)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ECC48)
      beqz       $2, .L80062AE4
       addiu     $2, $0, 0x1
      lbu        $2, 0x0($16)
      beqz       $2, .L80062AE4
       addiu     $2, $0, 0x1
  .L80062ADC:
      j          .L80062AEC
       addu      $2, $0, $0
  .L80062AE4:
      sb         $2, 0x0($17)
  .L80062AE8:
      addiu      $2, $0, 0x1
  .L80062AEC:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80062A80

.globl func_80062B00
.ent func_80062B00
func_80062B00:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      sw         $31, 0x14($29)
      jal        func_80062A34
       addu      $16, $5, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80062B30
       addu      $2, $0, $0
      lw         $2, 0x0($16)
      bltzl      $2, .L80062B2C
       sw        $0, 0x0($16)
  .L80062B2C:
      addiu      $2, $0, 0x1
  .L80062B30:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80062B00

.globl func_80062B40
.ent func_80062B40
func_80062B40:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $31, 0x20($29)
      jal        func_80062A80
       addiu     $5, $29, 0x10
      andi       $2, $2, 0xFF
      beqz       $2, .L80062B80
       addu      $4, $17, $0
      lbu        $2, 0x10($29)
      beqz       $2, .L80062BA0
       addiu     $2, $0, 0x1
      j          .L80062BA8
       sw        $2, 0x0($16)
  .L80062B80:
      jal        func_80062A34
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80062BA8
       addu      $2, $0, $0
      lw         $2, 0x0($16)
      bgez       $2, .L80062BA8
       addiu     $2, $0, 0x1
  .L80062BA0:
      sw         $0, 0x0($16)
      addiu      $2, $0, 0x1
  .L80062BA8:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80062B40

.globl func_80062BBC
.ent func_80062BBC
func_80062BBC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      sw         $31, 0x14($29)
      jal        func_80062A34
       addu      $16, $5, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80062BEC
       addu      $2, $0, $0
      lw         $2, 0x0($16)
      bltzl      $2, .L80062BE8
       sw        $0, 0x0($16)
  .L80062BE8:
      addiu      $2, $0, 0x1
  .L80062BEC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80062BBC

.globl func_80062BFC
.ent func_80062BFC
func_80062BFC:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      sw         $17, 0x14($29)
      addu       $17, $16, $0
      sw         $18, 0x18($29)
      addu       $18, $16, $0
      beqz       $4, .L80062C7C
       sw        $31, 0x1C($29)
      lw         $16, 0x4($4)
      beqz       $16, .L80062C7C
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $2, 0x16($2)
      slti       $2, $2, 0x2
      bnez       $2, .L80062C54
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $17, 0x16($2)
      addu       $4, $16, $0
  .L80062C54:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $2, 0x14($2)
      slti       $2, $2, 0x2
      bnez       $2, .L80062C7C
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lh         $2, 0x14($2)
      addu       $17, $17, $2
  .L80062C7C:
      beqz       $17, .L80062CAC
       addu      $2, $0, $0
      beqz       $16, .L80062CAC
       nop
      lw         $4, 0x8($16)
      beql       $4, $0, .L80062CA8
       xor       $2, $17, $18
  .L80062C98:
      lw         $4, 0x8($4)
      bnez       $4, .L80062C98
       addiu     $18, $18, 0x1
      xor        $2, $17, $18
  .L80062CA8:
      sltiu      $2, $2, 0x1
  .L80062CAC:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80062BFC

.globl func_80062CC4
.ent func_80062CC4
func_80062CC4:
      jal        func_8006F020
       addu      $7, $0, $0
      sw         $2, 0x1C($16)
      lw         $8, 0x68($29)
      beqz       $8, .L80062CE8
       addu      $16, $0, $0
      lbu        $2, 0x0($8)
      sltu       $2, $0, $2
      addu       $16, $2, $0
  .L80062CE8:
      lw         $8, 0x64($29)
      beqz       $8, func_80062D00
       addu      $17, $0, $0
      lbu        $2, 0x0($8)
      sltu       $2, $0, $2
      addu       $17, $2, $0
.end func_80062CC4

.globl func_80062D00
.ent func_80062D00
func_80062D00:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80017780
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80062D00

.globl func_80062D1C
.ent func_80062D1C
func_80062D1C:
      addiu      $29, $29, -0x50
      sw         $17, 0x34($29)
      lw         $17, 0x60($29)
      sw         $18, 0x38($29)
      lw         $18, 0x64($29)
      sw         $19, 0x3C($29)
      lw         $19, 0x68($29)
      sw         $20, 0x40($29)
      lw         $20, 0x6C($29)
      sw         $22, 0x48($29)
      addu       $22, $5, $0
      sw         $21, 0x44($29)
      lw         $21, 0x70($29)
      addu       $5, $6, $0
      sw         $16, 0x30($29)
      sw         $31, 0x4C($29)
      jal        func_80063054
       addu      $16, $7, $0
      addu       $4, $0, $0
      addu       $5, $2, $0
      addu       $6, $22, $0
      addu       $7, $4, $0
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      sw         $16, 0x18($29)
      sw         $17, 0x1C($29)
      sw         $18, 0x20($29)
      sw         $19, 0x24($29)
      sw         $20, 0x28($29)
      jal        func_800845F4
       sw        $21, 0x2C($29)
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
.end func_80062D1C

.globl func_80062DC0
.ent func_80062DC0
func_80062DC0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x0($4)
      addu       $4, $5, $0
      addu       $5, $2, $6
      jal        func_80052310
       addu      $6, $7, $0
      lw         $31, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_80062DC0

.globl func_80062DEC
.ent func_80062DEC
func_80062DEC:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      bgtz       $16, .L80062E1C
       sw        $31, 0x1C($29)
      jal        func_80062D00
       addu      $4, $18, $0
      addu       $16, $2, $0
  .L80062E1C:
      addu       $4, $17, $0
      jal        func_8006306C
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80062E50
       addu      $5, $18, $0
      addu       $4, $17, $0
      jal        func_80063080
       addu      $5, $16, $0
      bgez       $2, .L80062E50
       addu      $5, $18, $0
      j          .L80062E74
       addu      $2, $0, $0
  .L80062E50:
      lw         $2, 0x0($17)
      lw         $4, 0x8($17)
      addu       $6, $16, $0
      jal        func_80013F00
       addu      $4, $2, $4
      lw         $3, 0x8($17)
      addu       $2, $16, $0
      addu       $3, $3, $2
      sw         $3, 0x8($17)
  .L80062E74:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80062DEC

.globl func_80062E8C
.ent func_80062E8C
func_80062E8C:
      addiu      $29, $29, -0x30
      lw         $8, 0x40($29)
      lw         $2, 0x44($29)
      lw         $3, 0x48($29)
      sw         $31, 0x28($29)
      lw         $4, 0x0($4)
      sw         $6, 0x18($29)
      addu       $6, $0, $0
      sw         $7, 0x1C($29)
      addu       $7, $6, $0
      sw         $0, 0x10($29)
      addu       $4, $4, $8
      sw         $2, 0x14($29)
      jal        func_8008467C
       sw        $3, 0x20($29)
      lw         $31, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80062E8C

.globl func_80062ED4
.ent func_80062ED4
func_80062ED4:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $5, $0
      sw         $18, 0x28($29)
      addu       $18, $6, $0
      sw         $17, 0x24($29)
      lw         $17, 0x40($29)
      sw         $31, 0x2C($29)
      jal        func_80063054
       addu      $5, $7, $0
      addu       $4, $2, $0
      addu       $5, $16, $0
      addu       $6, $0, $0
      addu       $7, $6, $0
      sw         $0, 0x10($29)
      sw         $18, 0x18($29)
      jal        func_800846E8
       sw        $17, 0x14($29)
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80062ED4

.globl func_80062F34
.ent func_80062F34
func_80062F34:
      lw         $2, 0x0($4)
      addu       $2, $2, $5
      lbu        $2, 0x0($2)
      xori       $2, $2, 0x20
      jr         $31
       sltiu     $2, $2, 0x1
.end func_80062F34

.globl func_80062F4C
.ent func_80062F4C
func_80062F4C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x0($4)
      addu       $4, $5, $0
      addu       $5, $2, $6
      jal        func_800177C0
       addu      $6, $7, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80062F4C

.globl func_80062F74
.ent func_80062F74
func_80062F74:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      beqz       $16, .L80062FC4
       addiu     $2, $0, -0x1
      addiu      $2, $0, 0x400
      addu       $4, $2, $0
      addu       $5, $0, $0
      jal        func_80052504
       sw        $2, 0x4($16)
      beqz       $2, .L80062FC0
       sw        $2, 0x0($16)
      addu       $2, $0, $0
      lui        $3, %hi(D_801253C0)
      addiu      $3, $3, %lo(D_801253C0)
      sw         $0, 0x8($16)
      j          .L80062FC4
       sw        $3, 0xC($16)
  .L80062FC0:
      addiu      $2, $0, -0x1
  .L80062FC4:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80062F74

.globl func_80062FD4
.ent func_80062FD4
func_80062FD4:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x0($16)
      jal        func_80052540
       nop
      sw         $0, 0x0($16)
      sw         $0, 0x4($16)
      sw         $0, 0x8($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80062FD4

.globl func_8006300C
.ent func_8006300C
func_8006300C:
      lw         $2, 0x0($4)
      sw         $2, 0x0($5)
      lw         $2, 0x4($4)
      sw         $2, 0x4($5)
      lw         $2, 0x8($4)
      sw         $2, 0x8($5)
      lw         $2, 0xC($4)
      jr         $31
       sw        $2, 0xC($5)
.end func_8006300C

.globl func_80063030
.ent func_80063030
func_80063030:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $5, 0x0($5)
      addu       $5, $5, $6
      jal        func_80063140
       addu      $6, $7, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80063030

.globl func_80063054
.ent func_80063054
func_80063054:
      lw         $2, 0x0($4)
      jr         $31
       addu      $2, $2, $5
.end func_80063054

.globl func_80063060
.ent func_80063060
func_80063060:
      lw         $2, 0x8($4)
      jr         $31
       nop
.end func_80063060

.globl func_8006306C
.ent func_8006306C
func_8006306C:
      lw         $2, 0x8($4)
      lw         $3, 0x4($4)
      addu       $2, $2, $5
      jr         $31
       slt       $2, $2, $3
.end func_8006306C

.globl func_80063080
.ent func_80063080
func_80063080:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $31, 0x20($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($19)
      lw         $3, 0x8($19)
      addiu      $17, $2, 0x800
      addu       $18, $3, $5
      slt        $2, $17, $18
      bnel       $2, $0, .L800630B8
       addu      $17, $18, $0
  .L800630B8:
      lw         $4, 0x0($19)
      addu       $5, $17, $0
      jal        func_80052524
       addu      $6, $0, $0
      addu       $16, $2, $0
      bnez       $16, .L800630F4
       nop
      addu       $17, $18, $0
      lw         $4, 0x0($19)
      addu       $5, $17, $0
      jal        func_80052524
       addu      $6, $0, $0
      addu       $16, $2, $0
      beqz       $16, .L80063114
       addiu     $2, $0, -0x1
  .L800630F4:
      lw         $6, 0x8($19)
      addu       $5, $0, $0
      addu       $4, $16, $6
      jal        func_80016140
       subu      $6, $17, $6
      addu       $2, $0, $0
      sw         $16, 0x0($19)
      sw         $17, 0x4($19)
  .L80063114:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80063080

.globl func_80063130
.ent func_80063130
func_80063130:
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
.end func_80063130

.globl func_80063140
.ent func_80063140
func_80063140:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $17, 0x14($29)
      sw         $31, 0x1C($29)
      jal        func_80017780
       addu      $17, $6, $0
      lbu        $3, 0x0($16)
      beqz       $3, .L8006318C
       addu      $2, $18, $2
  .L80063170:
      beqz       $17, .L8006318C
       addiu     $17, $17, -0x1
      addiu      $16, $16, 0x1
      sb         $3, 0x0($2)
      lbu        $3, 0x0($16)
      bnez       $3, .L80063170
       addiu     $2, $2, 0x1
  .L8006318C:
      sb         $0, 0x0($2)
      addu       $2, $18, $0
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80063140

.globl func_800631AC
.ent func_800631AC
func_800631AC:
      lw         $6, 0x8($2)
      jal        func_800595D0
       addiu     $7, $0, 0x2
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
.end func_800631AC

.globl func_800631C0
.ent func_800631C0
func_800631C0:
      lw         $4, 0x0($4)
      lw         $3, 0xD4($4)
      addiu      $2, $0, 0x1
      beq        $3, $2, .L800631DC
       lui       $2, %hi(D_800ED664)
      jr         $31
       addiu     $2, $2, %lo(D_800ED664)
  .L800631DC:
      lw         $2, 0xD0($4)
      lw         $2, 0x0($2)
      jr         $31
       nop
.end func_800631C0

.globl func_800631EC
.ent func_800631EC
func_800631EC:
      beqz       $4, .L80063200
       nop
      lw         $2, 0x4($4)
      jr         $31
       sltu      $2, $0, $2
  .L80063200:
      jr         $31
       addu      $2, $0, $0
.end func_800631EC

.globl func_80063208
.ent func_80063208
func_80063208:
      jr         $31
       nop
.end func_80063208

.globl func_80063210
.ent func_80063210
func_80063210:
      addiu      $29, $29, -0x20
      beqz       $4, .L80063224
       sw        $31, 0x18($29)
      bnez       $5, .L8006322C
       nop
  .L80063224:
      j          .L8006324C
       addu      $2, $0, $0
  .L8006322C:
      lw         $4, 0x0($4)
      jal        func_800649C8
       addiu     $6, $29, 0x10
      andi       $2, $2, 0xFF
      beqz       $2, .L8006324C
       addiu     $2, $0, 0x1
      lw         $2, 0x10($29)
      lbu        $2, 0x1C($2)
  .L8006324C:
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80063210

.globl func_80063258
.ent func_80063258
func_80063258:
      addiu      $29, $29, -0x18
      lui        $5, %hi(D_800ED64C)
      sw         $31, 0x10($29)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED64C)
      lw         $31, 0x10($29)
      sltiu      $2, $2, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_80063258

.globl func_8006327C
.ent func_8006327C
func_8006327C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      lui        $5, %hi(D_800ED64C)
      sw         $31, 0x14($29)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED64C)
      bnez       $2, .L800632A8
       addu      $2, $0, $0
      jal        func_800661B4
       addu      $4, $16, $0
  .L800632A8:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006327C

.globl func_800632B8
.ent func_800632B8
func_800632B8:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      bnez       $16, .L800632E4
       sw        $31, 0x1C($29)
      j          .L80063364
       addiu     $2, $0, -0x4
  .L800632E4:
      jal        func_80063258
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80063308
       addu      $4, $17, $0
      jal        func_8006327C
       addu      $5, $18, $0
      j          .L80063364
       nop
  .L80063308:
      lw         $2, 0xC($16)
      beqz       $2, .L80063330
       nop
      lw         $3, 0xB0($2)
      beqz       $3, .L80063360
       addu      $5, $17, $0
      lw         $4, 0xAC($2)
      lw         $2, 0x24($3)
      j          .L80063350
       nop
  .L80063330:
      lw         $4, 0x8($16)
      beqz       $4, .L80063364
       addu      $2, $0, $0
      lw         $2, 0x30($4)
      beqz       $2, .L80063360
       addu      $5, $17, $0
      lw         $4, 0x2C($4)
      lw         $2, 0x54($2)
  .L80063350:
      jalr       $2
       addu      $6, $18, $0
      j          .L80063364
       nop
  .L80063360:
      addiu      $2, $0, -0x1
  .L80063364:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800632B8

.globl func_8006337C
.ent func_8006337C
func_8006337C:
      addiu      $29, $29, -0x38
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $19, 0x24($29)
      addu       $19, $6, $0
      sw         $21, 0x2C($29)
      addu       $21, $7, $0
      addu       $4, $16, $0
      sw         $20, 0x28($29)
      lw         $20, 0x48($29)
      lui        $5, %hi(D_800ED658)
      sw         $17, 0x1C($29)
      lw         $17, 0x4C($29)
      sw         $31, 0x30($29)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED658)
      beqz       $2, .L800633E0
       addu      $4, $16, $0
      lui        $5, %hi(D_800ED670)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED670)
      bnez       $2, .L800633E8
       addu      $4, $16, $0
  .L800633E0:
      j          .L8006342C
       addu      $2, $0, $0
  .L800633E8:
      lui        $5, %hi(D_800ED64C)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED64C)
      beqz       $2, .L80063418
       addu      $4, $18, $0
      sw         $17, 0x10($29)
      addu       $5, $19, $0
      addu       $6, $21, $0
      jal        func_80067600
       addu      $7, $20, $0
      j          .L8006342C
       nop
  .L80063418:
      sw         $17, 0x10($29)
      addu       $5, $19, $0
      addu       $6, $21, $0
      jal        func_800661CC
       addu      $7, $20, $0
  .L8006342C:
      lw         $31, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8006337C

.globl func_80063450
.ent func_80063450
func_80063450:
      addiu      $29, $29, -0x48
      sw         $17, 0x2C($29)
      addu       $17, $4, $0
      sw         $20, 0x38($29)
      addu       $20, $5, $0
      sw         $21, 0x3C($29)
      addu       $21, $6, $0
      sw         $22, 0x40($29)
      addu       $22, $7, $0
      sw         $31, 0x44($29)
      sw         $19, 0x34($29)
      sw         $18, 0x30($29)
      sw         $16, 0x28($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $0, 0x24($29)
      beqz       $17, .L800634A8
       sw        $0, 0x20($29)
      beqz       $21, .L8006356C
       addiu     $2, $0, -0x4
      bnez       $22, .L800634B0
       addu      $4, $17, $0
  .L800634A8:
      j          .L8006356C
       addiu     $2, $0, -0x4
  .L800634B0:
      addu       $5, $20, $0
      jal        func_800632B8
       addiu     $6, $29, 0x18
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80063568
       addu      $18, $16, $0
      addu       $4, $17, $0
      lui        $5, %hi(D_80125400)
      lw         $2, 0x18($29)
      addiu      $5, $5, %lo(D_80125400)
      lw         $2, 0x0($2)
      jalr       $2
       addiu     $6, $29, 0x1C
      addu       $16, $2, $0
      bne        $16, $18, .L8006356C
       addu      $19, $16, $0
      addu       $4, $17, $0
      addu       $5, $20, $0
      lw         $6, 0x18($29)
      lw         $7, 0x1C($29)
      addiu      $2, $29, 0x20
      sw         $2, 0x10($29)
      addiu      $2, $29, 0x24
      jal        func_8006337C
       sw        $2, 0x14($29)
      addu       $16, $2, $0
      bne        $16, $19, .L80063554
       nop
      lw         $2, 0x18($29)
      sw         $2, 0x0($21)
      lw         $2, 0x1C($29)
      sw         $2, 0x0($22)
      lw         $3, 0x20($29)
      lw         $2, 0x58($29)
      sw         $3, 0x0($2)
      lw         $4, 0x24($29)
      lw         $3, 0x5C($29)
      addiu      $2, $0, 0x1
      j          .L8006356C
       sw        $4, 0x0($3)
  .L80063554:
      lw         $2, 0x18($29)
      lw         $4, 0x1C($29)
      lw         $2, 0x4($2)
      jalr       $2
       nop
  .L80063568:
      addu       $2, $16, $0
  .L8006356C:
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
.end func_80063450

.globl func_80063594
.ent func_80063594
func_80063594:
      addiu      $29, $29, -0x48
      sw         $18, 0x38($29)
      addu       $18, $4, $0
      sw         $17, 0x34($29)
      addu       $17, $5, $0
      sw         $19, 0x3C($29)
      addu       $19, $7, $0
      sw         $31, 0x44($29)
      sw         $20, 0x40($29)
      beqz       $18, .L800635C8
       sw        $16, 0x30($29)
      bnez       $19, .L800635D0
       nop
  .L800635C8:
      j          .L800636A8
       addiu     $2, $0, -0x4
  .L800635D0:
      beql       $17, $0, .L800635E4
       addu      $17, $6, $0
      lbu        $2, 0x0($17)
      beql       $2, $0, .L800635E4
       addu      $17, $6, $0
  .L800635E4:
      lw         $4, 0x0($18)
      addu       $5, $17, $0
      jal        func_80064918
       addu      $6, $19, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L800636A8
       addiu     $2, $0, 0x1
      addu       $4, $18, $0
      addu       $5, $17, $0
      addiu      $6, $29, 0x20
      addiu      $7, $29, 0x24
      addiu      $2, $29, 0x28
      sw         $0, 0x20($29)
      sw         $0, 0x24($29)
      sw         $0, 0x28($29)
      sw         $0, 0x2C($29)
      sw         $2, 0x10($29)
      addiu      $2, $29, 0x2C
      jal        func_80063450
       sw        $2, 0x14($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800636A4
       addu      $20, $16, $0
      lw         $2, 0x28($29)
      lw         $6, 0x20($29)
      lw         $7, 0x24($29)
      sw         $2, 0x10($29)
      lw         $2, 0x2C($29)
      sw         $19, 0x18($29)
      sw         $2, 0x14($29)
      lw         $4, 0x0($18)
      jal        func_800646E0
       addu      $5, $17, $0
      lw         $4, 0x2C($29)
      beqz       $4, .L80063688
       addu      $16, $2, $0
      lw         $2, 0x0($4)
      lw         $2, 0x4($2)
      jalr       $2
       nop
  .L80063688:
      beq        $16, $20, .L800636A8
       addu      $2, $16, $0
      lw         $2, 0x20($29)
      lw         $4, 0x24($29)
      lw         $2, 0x4($2)
      jalr       $2
       nop
  .L800636A4:
      addu       $2, $16, $0
  .L800636A8:
      lw         $31, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_80063594

.globl func_800636C8
.ent func_800636C8
func_800636C8:
      addiu      $29, $29, -0x18
      beqz       $4, .L800636DC
       sw        $31, 0x10($29)
      bnez       $7, .L800636E4
       nop
  .L800636DC:
      j          .L8006370C
       addiu     $2, $0, -0x4
  .L800636E4:
      beql       $5, $0, .L800636F8
       addu      $5, $6, $0
      lbu        $2, 0x0($5)
      beql       $2, $0, .L800636F8
       addu      $5, $6, $0
  .L800636F8:
      lw         $4, 0x0($4)
      jal        func_80064918
       addu      $6, $7, $0
      andi       $2, $2, 0xFF
      sltu       $2, $0, $2
  .L8006370C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800636C8

.globl func_80063718
.ent func_80063718
func_80063718:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      sw         $31, 0x1C($29)
      bnez       $16, .L80063740
       sw        $17, 0x14($29)
      j          .L800637A8
       addiu     $2, $0, -0x4
  .L80063740:
      lw         $4, 0x8($16)
      beqz       $4, .L800637A8
       addu      $2, $0, $0
      lw         $3, 0x10($16)
      lw         $2, 0xC($16)
      subu       $3, $3, $2
      beqz       $3, .L800637A8
       addu      $2, $0, $0
      bnez       $18, .L80063770
       addu      $17, $5, $0
      j          .L800637A8
       addu      $2, $3, $0
  .L80063770:
      slt        $2, $3, $17
      bnel       $2, $0, .L8006377C
       addu      $17, $3, $0
  .L8006377C:
      jal        func_8005160C
       nop
      addu       $4, $18, $0
      lw         $5, 0xC($16)
      addu       $6, $17, $0
      jal        func_80013F00
       addu      $5, $2, $5
      lw         $3, 0xC($16)
      addu       $2, $17, $0
      addu       $3, $3, $2
      sw         $3, 0xC($16)
  .L800637A8:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80063718

.globl func_800637C0
.ent func_800637C0
func_800637C0:
      addiu      $29, $29, -0x78
      sw         $21, 0x6C($29)
      addu       $21, $4, $0
      sw         $20, 0x68($29)
      addu       $20, $5, $0
      sw         $18, 0x60($29)
      addu       $18, $6, $0
      sw         $17, 0x5C($29)
      lbu        $17, 0x8F($29)
      addu       $4, $7, $0
      sw         $19, 0x64($29)
      addiu      $19, $0, 0x2
      sw         $31, 0x70($29)
      sw         $16, 0x58($29)
      beqz       $20, .L80063810
       sw        $0, 0x50($29)
      beqz       $18, .L800638E8
       addiu     $2, $0, -0x4
      bnez       $4, .L80063818
       lui       $2, %hi(func_80063718)
  .L80063810:
      j          .L800638E8
       addiu     $2, $0, -0x4
  .L80063818:
      addiu      $2, $2, %lo(func_80063718)
      addiu      $16, $29, 0x18
      sw         $2, 0x18($29)
      sw         $16, 0x1C($29)
      sw         $4, 0x20($29)
      jal        func_80051620
       sw        $0, 0x24($29)
      sw         $2, 0x28($29)
      andi       $2, $17, 0xFF
      bnel       $2, $0, .L80063844
       addiu     $19, $0, 0x3
  .L80063844:
      addiu      $17, $29, 0x30
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x1C
      addu       $4, $18, $0
      addiu      $5, $29, 0x50
      addu       $6, $16, $0
      sw         $17, 0x10($29)
      lw         $2, 0xC($20)
      jalr       $2
       addu      $7, $19, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800638AC
       addu      $4, $17, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x1C
      addu       $4, $18, $0
      lw         $6, 0x88($29)
      lw         $5, 0x50($29)
      lw         $2, 0x10($20)
      jalr       $2
       addu      $7, $17, $0
      addu       $16, $2, $0
  .L800638AC:
      lw         $5, 0x50($29)
      beqz       $5, .L800638C4
       nop
      lw         $2, 0x2C($20)
      jalr       $2
       addu      $4, $18, $0
  .L800638C4:
      jal        func_800631EC
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800638E4
       addu      $4, $21, $0
      addu       $5, $18, $0
      jal        func_80063208
       addu      $6, $17, $0
  .L800638E4:
      addu       $2, $16, $0
  .L800638E8:
      lw         $31, 0x70($29)
      lw         $21, 0x6C($29)
      lw         $20, 0x68($29)
      lw         $19, 0x64($29)
      lw         $18, 0x60($29)
      lw         $17, 0x5C($29)
      lw         $16, 0x58($29)
      jr         $31
       addiu     $29, $29, 0x78
.end func_800637C0

.globl func_8006390C
.ent func_8006390C
func_8006390C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L80063998
       sw        $31, 0x14($29)
      lw         $6, 0x0($16)
      beqz       $6, .L80063998
       addiu     $2, $0, 0x1
      bne        $6, $2, .L80063948
       addiu     $2, $6, -0x1
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
      j          .L8006398C
       sw        $0, 0x4($16)
  .L80063948:
      beq        $5, $2, .L80063970
       subu      $6, $6, $5
      addiu      $6, $6, -0x1
      sll        $6, $6, 2
      lw         $2, 0x4($16)
      sll        $5, $5, 2
      addu       $4, $2, $5
      addiu      $5, $5, 0x4
      jal        func_80035780
       addu      $5, $2, $5
  .L80063970:
      addu       $6, $0, $0
      lw         $5, 0x0($16)
      lw         $4, 0x4($16)
      addiu      $5, $5, -0x1
      jal        func_80052524
       sll       $5, $5, 2
      sw         $2, 0x4($16)
  .L8006398C:
      lw         $2, 0x0($16)
      addiu      $2, $2, -0x1
      sw         $2, 0x0($16)
  .L80063998:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006390C

.globl func_800639A8
.ent func_800639A8
func_800639A8:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $31, 0x24($29)
      sw         $17, 0x14($29)
      bnez       $18, .L800639EC
       sw        $16, 0x10($29)
      j          .L80063A3C
       addu      $2, $0, $0
  .L800639DC:
      jal        func_8006390C
       addu      $5, $16, $0
      j          .L80063A3C
       addu      $2, $17, $0
  .L800639EC:
      lw         $2, 0x0($18)
      blez       $2, .L80063A38
       addu      $16, $0, $0
      addu       $5, $20, $0
  .L800639FC:
      lw         $3, 0x4($18)
      sll        $2, $16, 2
      addu       $2, $2, $3
      lw         $17, 0x0($2)
      lw         $2, 0x4($19)
      jalr       $2
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      bnel       $2, $0, .L800639DC
       addu      $4, $18, $0
      lw         $2, 0x0($18)
      addiu      $16, $16, 0x1
      slt        $2, $16, $2
      bnez       $2, .L800639FC
       addu      $5, $20, $0
  .L80063A38:
      addu       $2, $0, $0
  .L80063A3C:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800639A8

.globl func_80063A5C
.ent func_80063A5C
func_80063A5C:
      addiu      $29, $29, -0x48
      sw         $20, 0x30($29)
      lw         $20, 0x58($29)
      sw         $18, 0x28($29)
      addu       $18, $4, $0
      sw         $21, 0x34($29)
      addu       $21, $5, $0
      sw         $23, 0x3C($29)
      addu       $23, $6, $0
      sw         $22, 0x38($29)
      addu       $22, $7, $0
      sw         $17, 0x24($29)
      addiu      $17, $0, 0x1
      sw         $19, 0x2C($29)
      addu       $19, $0, $0
      sw         $16, 0x20($29)
      addu       $16, $19, $0
      sw         $31, 0x40($29)
      bnez       $21, .L80063AB4
       sw        $0, 0x18($29)
      j          .L80063BE8
       addiu     $2, $0, -0x4
  .L80063AB4:
      beqz       $20, .L80063AD8
       nop
      lw         $16, 0x0($20)
      beqz       $16, .L80063AD8
       addu      $4, $18, $0
      addu       $5, $16, $0
      jal        func_800639A8
       addu      $6, $22, $0
      addu       $19, $2, $0
  .L80063AD8:
      beqz       $18, .L80063B18
       nop
      lw         $2, 0x0($18)
      beqz       $2, .L80063B18
       addu      $4, $21, $0
      addu       $5, $23, $0
      addu       $6, $22, $0
      addiu      $2, $29, 0x18
      sw         $2, 0x10($29)
      lw         $2, 0x0($18)
      jalr       $2
       addu      $7, $19, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L80063BB0
       nop
  .L80063B18:
      beqz       $20, .L80063BB0
       nop
      bnez       $16, .L80063B3C
       addiu     $4, $0, 0xC
      jal        func_80052504
       addu      $5, $0, $0
      addu       $16, $2, $0
      beqz       $16, .L80063BAC
       sw        $2, 0x0($20)
  .L80063B3C:
      lw         $2, 0x18($29)
      beql       $2, $0, .L80063BB0
       addiu     $17, $0, 0x1
      lw         $4, 0x4($16)
      bnez       $4, .L80063B68
       addu      $6, $0, $0
      addiu      $4, $0, 0x4
      jal        func_800524E8
       addu      $5, $0, $0
      j          .L80063B7C
       sw        $2, 0x4($16)
  .L80063B68:
      lw         $5, 0x0($16)
      addiu      $5, $5, 0x1
      jal        func_80052524
       sll       $5, $5, 2
      sw         $2, 0x4($16)
  .L80063B7C:
      lw         $5, 0x4($16)
      beqz       $5, .L80063BAC
       addiu     $17, $0, 0x1
      lw         $2, 0x0($16)
      lw         $4, 0x18($29)
      sw         $0, 0x18($29)
      sll        $3, $2, 2
      addu       $2, $2, $17
      addu       $3, $3, $5
      sw         $4, 0x0($3)
      j          .L80063BB0
       sw        $2, 0x0($16)
  .L80063BAC:
      addiu      $17, $0, -0x5
  .L80063BB0:
      lw         $4, 0x18($29)
      beqz       $4, .L80063BCC
       nop
      lw         $2, 0x0($4)
      lw         $2, 0x4($2)
      jalr       $2
       nop
  .L80063BCC:
      beqz       $19, .L80063BE8
       addu      $2, $17, $0
      lw         $2, 0x0($19)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $19, $0
      addu       $2, $17, $0
  .L80063BE8:
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
.end func_80063A5C

.globl func_80063C14
.ent func_80063C14
func_80063C14:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      bnez       $17, .L80063C40
       sw        $31, 0x1C($29)
      j          .L80063CA0
       addiu     $2, $0, -0x4
  .L80063C40:
      lw         $4, 0x8($17)
      beqz       $4, .L80063CA0
       addu      $2, $0, $0
      jal        func_80017780
       nop
      lw         $6, 0xC($17)
      subu       $3, $2, $6
      beqz       $3, .L80063CA0
       addu      $2, $0, $0
      bnez       $18, .L80063C74
       slt       $2, $3, $16
      j          .L80063CA0
       addu      $2, $3, $0
  .L80063C74:
      bnel       $2, $0, .L80063C7C
       addu      $16, $3, $0
  .L80063C7C:
      lw         $5, 0x8($17)
      addu       $4, $18, $0
      addu       $5, $5, $6
      jal        func_80013F00
       addu      $6, $16, $0
      lw         $3, 0xC($17)
      addu       $2, $16, $0
      addu       $3, $3, $2
      sw         $3, 0xC($17)
  .L80063CA0:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80063C14

.globl func_80063CB8
.ent func_80063CB8
func_80063CB8:
      addiu      $29, $29, -0x1A8
      sw         $19, 0x19C($29)
      addu       $19, $4, $0
      sw         $17, 0x194($29)
      addu       $17, $5, $0
      sw         $20, 0x1A0($29)
      addu       $20, $6, $0
      sw         $18, 0x198($29)
      addu       $18, $7, $0
      sw         $31, 0x1A4($29)
      bnez       $18, .L80063CF0
       sw        $16, 0x190($29)
      lui        $2, %hi(D_800EC604)
      addiu      $18, $2, %lo(D_800EC604)
  .L80063CF0:
      beqz       $17, .L80063D0C
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x6
      lw         $2, 0x4($2)
      bnez       $2, .L80063D30
       addu      $4, $17, $0
  .L80063D0C:
      addiu      $4, $29, 0x10
      addiu      $5, $0, 0x20
      lui        $6, %hi(D_800ED68C)
      lui        $2, %hi(D_80132700)
      lw         $7, %lo(D_80132700)($2)
      addiu      $6, $6, %lo(D_800ED68C)
      addiu      $7, $7, 0x1
      j          .L80063DB0
       sw        $7, %lo(D_80132700)($2)
  .L80063D30:
      addiu      $5, $0, 0x6
      jal        func_80058268
       sb        $0, 0x10($29)
      addu       $4, $17, $0
      addiu      $5, $0, 0x6
      jal        func_80058268
       addu      $16, $2, $0
      addiu      $4, $29, 0x10
      lw         $6, 0x0($16)
      lw         $5, 0x0($19)
      lw         $7, 0x4($2)
      jal        func_80063030
       addiu     $5, $5, 0x34
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x6
      addu       $4, $17, $0
      addiu      $5, $0, 0x6
      lw         $2, 0x4($2)
      addiu      $16, $29, 0x10
      jal        func_80058268
       addu      $16, $16, $2
      addu       $4, $16, $0
      lui        $6, %hi(D_800ED6A8)
      addiu      $6, $6, %lo(D_800ED6A8)
      addiu      $3, $0, 0x80
      lui        $8, %hi(D_80132700)
      lw         $5, 0x4($2)
      lw         $7, %lo(D_80132700)($8)
      subu       $5, $3, $5
      addiu      $7, $7, 0x1
      sw         $7, %lo(D_80132700)($8)
  .L80063DB0:
      jal        func_800520A4
       nop
      addiu      $2, $20, -0x1
      sltiu      $2, $2, 0xE
      beqz       $2, .L80063DF8
       addiu     $17, $29, 0x90
      addiu      $4, $29, 0x10
      lui        $5, %hi(D_800ED67C)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800ED67C)
      lui        $3, %hi(D_800EEC00)
      addiu      $3, $3, %lo(D_800EEC00)
      sll        $2, $20, 2
      addu       $2, $2, $3
      lw         $5, 0x0($2)
      jal        func_80017500
       addiu     $4, $29, 0x10
      addiu      $17, $29, 0x90
  .L80063DF8:
      addu       $4, $17, $0
      addiu      $5, $0, 0x100
      lui        $6, %hi(D_800ED694)
      addiu      $6, $6, %lo(D_800ED694)
      jal        func_800520A4
       addiu     $7, $29, 0x10
      jal        func_80017780
       addu      $4, $17, $0
      addu       $4, $18, $0
      jal        func_80017780
       addu      $16, $2, $0
      addiu      $4, $29, 0x10
      jal        func_80017780
       addu      $16, $16, $2
      addu       $2, $2, $16
      addiu      $4, $2, 0x8
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $16, $2, $0
      beqz       $16, .L80063E94
       addu      $4, $16, $0
      jal        func_80017640
       addu      $5, $17, $0
      addu       $4, $16, $0
      jal        func_80017500
       addu      $5, $18, $0
      addu       $4, $16, $0
      lui        $5, %hi(D_800ED680)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800ED680)
      addu       $4, $16, $0
      jal        func_80017500
       addiu     $5, $29, 0x10
      addu       $4, $16, $0
      lui        $5, %hi(D_800ED684)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800ED684)
      j          .L80063E98
       addu      $2, $16, $0
  .L80063E94:
      addu       $2, $0, $0
  .L80063E98:
      lw         $31, 0x1A4($29)
      lw         $20, 0x1A0($29)
      lw         $19, 0x19C($29)
      lw         $18, 0x198($29)
      lw         $17, 0x194($29)
      lw         $16, 0x190($29)
      jr         $31
       addiu     $29, $29, 0x1A8
.end func_80063CB8

.globl func_80063EB8
.ent func_80063EB8
func_80063EB8:
      addiu      $29, $29, -0x60
      sw         $20, 0x58($29)
      addu       $20, $4, $0
      sw         $17, 0x4C($29)
      addu       $17, $6, $0
      sw         $31, 0x5C($29)
      sw         $19, 0x54($29)
      sw         $18, 0x50($29)
      sw         $16, 0x48($29)
      beqz       $17, .L80063FCC
       addiu     $2, $0, -0x4
      lw         $2, 0x8($17)
      beqz       $2, .L80063FCC
       addiu     $2, $0, -0x1
      lw         $2, 0xC($17)
      beqz       $2, .L80063FCC
       addiu     $2, $0, -0x1
      lw         $7, 0x10($17)
      beqz       $7, .L80063FCC
       addiu     $2, $0, 0x1
      lw         $6, 0x4($17)
      jal        func_80063CB8
       addu      $4, $20, $0
      addu       $19, $2, $0
      bnez       $19, .L80063F28
       addiu     $18, $29, 0x28
      j          .L80063FCC
       addiu     $2, $0, -0x5
  .L80063F28:
      addu       $4, $18, $0
      addu       $5, $0, $0
      addiu      $6, $0, 0x1C
      lui        $2, %hi(func_80063C14)
      addiu      $2, $2, %lo(func_80063C14)
      addiu      $16, $29, 0x18
      sw         $2, 0x18($29)
      sw         $16, 0x1C($29)
      sw         $19, 0x20($29)
      jal        func_80016140
       sw        $0, 0x24($29)
      addiu      $5, $17, 0x14
      lw         $2, 0x8($17)
      addu       $6, $16, $0
      sw         $18, 0x10($29)
      lw         $4, 0xC($17)
      lw         $2, 0xC($2)
      jalr       $2
       addu      $7, $0, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80063F98
       nop
      lw         $4, 0x10($17)
      jal        func_80052540
       nop
      j          .L80063FB8
       sw        $0, 0x10($17)
  .L80063F98:
      jal        func_800631EC
       addu      $4, $18, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80063FB8
       addu      $4, $20, $0
      lw         $5, 0xC($17)
      jal        func_80063208
       addu      $6, $18, $0
  .L80063FB8:
      beqz       $19, .L80063FCC
       addu      $2, $16, $0
      jal        func_80052540
       addu      $4, $19, $0
      addu       $2, $16, $0
  .L80063FCC:
      lw         $31, 0x5C($29)
      lw         $20, 0x58($29)
      lw         $19, 0x54($29)
      lw         $18, 0x50($29)
      lw         $17, 0x4C($29)
      lw         $16, 0x48($29)
      jr         $31
       addiu     $29, $29, 0x60
.end func_80063EB8

.globl func_80063FEC
.ent func_80063FEC
func_80063FEC:
      beqz       $4, .L80064038
       nop
      beqz       $6, .L80064038
       nop
      lw         $4, 0x8($4)
      beqz       $4, .L80064038
       nop
  .L80064008:
      lw         $2, 0x4($4)
      bne        $2, $5, .L8006402C
       nop
      lw         $2, 0x8($4)
      bne        $2, $6, .L8006402C
       nop
      lw         $2, 0xC($4)
      beq        $2, $7, .L80064040
       addu      $2, $4, $0
  .L8006402C:
      lw         $4, 0x0($4)
      bnez       $4, .L80064008
       nop
  .L80064038:
      jr         $31
       addu      $2, $0, $0
  .L80064040:
      jr         $31
       nop
.end func_80063FEC

.globl func_80064048
.ent func_80064048
func_80064048:
      addiu      $29, $29, -0x30
      sw         $17, 0x14($29)
      lw         $17, 0x40($29)
      sw         $19, 0x1C($29)
      lw         $19, 0x44($29)
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $21, 0x24($29)
      addu       $21, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $22, 0x28($29)
      addu       $22, $7, $0
      sw         $31, 0x2C($29)
      beqz       $18, .L80064090
       sw        $16, 0x10($29)
      bnez       $17, .L80064098
       addu      $4, $18, $0
  .L80064090:
      j          .L80064120
       addiu     $2, $0, -0x4
  .L80064098:
      addu       $5, $21, $0
      addu       $6, $17, $0
      jal        func_80063FEC
       addu      $7, $19, $0
      addu       $16, $2, $0
      beqz       $16, .L800640DC
       addiu     $4, $0, 0x18
      lw         $5, 0x14($16)
      beqz       $5, .L800640D0
       addiu     $2, $0, 0x1
      lw         $2, 0x2C($17)
      jalr       $2
       addu      $4, $19, $0
      addiu      $2, $0, 0x1
  .L800640D0:
      sw         $20, 0x10($16)
      j          .L80064120
       sw        $22, 0x14($16)
  .L800640DC:
      jal        func_80052504
       addu      $5, $0, $0
      addu       $16, $2, $0
      beqz       $16, .L80064114
       addiu     $2, $0, 0x1
      lw         $3, 0x8($18)
      sw         $21, 0x4($16)
      sw         $17, 0x8($16)
      sw         $19, 0xC($16)
      sw         $20, 0x10($16)
      sw         $22, 0x14($16)
      sw         $3, 0x0($16)
      j          .L80064120
       sw        $16, 0x8($18)
  .L80064114:
      jal        func_80052540
       addu      $4, $20, $0
      addiu      $2, $0, -0x5
  .L80064120:
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
.end func_80064048

.globl func_80064148
.ent func_80064148
func_80064148:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      addu       $4, $6, $0
      sw         $17, 0x1C($29)
      addu       $17, $7, $0
      sw         $31, 0x24($29)
      beqz       $4, .L800641B8
       addiu     $2, $0, -0x4
      lbu        $2, 0x0($4)
      beqz       $2, .L800641B8
       addiu     $2, $0, 0x1
      jal        func_800523C0
       nop
      addu       $6, $2, $0
      beqz       $6, .L800641B4
       addu      $4, $16, $0
      addu       $5, $18, $0
      lw         $2, 0x38($29)
      addu       $7, $0, $0
      sw         $17, 0x10($29)
      jal        func_80064048
       sw        $2, 0x14($29)
      j          .L800641B8
       nop
  .L800641B4:
      addiu      $2, $0, -0x5
  .L800641B8:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80064148

.globl func_800641D0
.ent func_800641D0
func_800641D0:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L80064220
       sw        $31, 0x14($29)
      lw         $4, 0x10($16)
      beqz       $4, .L800641F8
       nop
      jal        func_80052540
       nop
  .L800641F8:
      lw         $5, 0x14($16)
      beqz       $5, .L80064218
       nop
      lw         $2, 0x8($16)
      lw         $4, 0xC($16)
      lw         $2, 0x2C($2)
      jalr       $2
       nop
  .L80064218:
      jal        func_80052540
       addu      $4, $16, $0
  .L80064220:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800641D0

.globl func_80064230
.ent func_80064230
func_80064230:
      addiu      $29, $29, -0x18
      addu       $8, $4, $0
      sw         $31, 0x10($29)
      lw         $4, 0x8($8)
      beqz       $4, .L80064284
       addu      $3, $0, $0
  .L80064248:
      lw         $2, 0x4($4)
      bnel       $2, $5, .L80064270
       addu      $3, $4, $0
      lw         $2, 0x8($4)
      bnel       $2, $6, .L80064270
       addu      $3, $4, $0
      lw         $2, 0xC($4)
      beq        $2, $7, .L8006427C
       nop
      addu       $3, $4, $0
  .L80064270:
      lw         $4, 0x0($4)
      bnez       $4, .L80064248
       nop
  .L8006427C:
      bnez       $4, .L8006428C
       nop
  .L80064284:
      j          .L800642B4
       addu      $2, $0, $0
  .L8006428C:
      beqz       $3, .L800642A0
       nop
      lw         $2, 0x0($4)
      j          .L800642A8
       sw        $2, 0x0($3)
  .L800642A0:
      lw         $2, 0x0($4)
      sw         $2, 0x8($8)
  .L800642A8:
      jal        func_800641D0
       nop
      addiu      $2, $0, 0x1
  .L800642B4:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80064230

.globl func_800642C0
.ent func_800642C0
func_800642C0:
      addiu      $29, $29, -0x80
      sw         $30, 0x78($29)
      addu       $30, $4, $0
      sw         $22, 0x70($29)
      addu       $22, $5, $0
      sw         $23, 0x74($29)
      addu       $23, $6, $0
      sw         $17, 0x5C($29)
      addu       $17, $0, $0
      sw         $31, 0x7C($29)
      sw         $21, 0x6C($29)
      sw         $20, 0x68($29)
      sw         $19, 0x64($29)
      sw         $18, 0x60($29)
      sw         $16, 0x58($29)
      sw         $7, 0x8C($29)
      sw         $0, 0x40($29)
      sw         $0, 0x4C($29)
      sw         $0, 0x44($29)
      bnez       $23, .L8006431C
       sw        $0, 0x48($29)
      j          .L800646B0
       addiu     $2, $0, -0x4
  .L8006431C:
      lw         $18, 0x8($23)
      beqz       $18, .L800646B0
       addiu     $2, $0, 0x7
  .L80064328:
      lw         $2, 0x4($18)
      lw         $8, 0x8C($29)
      beq        $2, $8, .L80064344
       nop
      lw         $18, 0x0($18)
      bnez       $18, .L80064328
       nop
  .L80064344:
      beqz       $18, .L800646B0
       addiu     $2, $0, 0x7
      lw         $20, 0x8($18)
      bnez       $20, .L80064360
       addu      $4, $30, $0
      j          .L800646B0
       addiu     $2, $0, -0x1
  .L80064360:
      lw         $19, 0xC($18)
      jal        func_80063210
       addu      $5, $19, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L800646B0
       addiu     $2, $0, 0x7
      lw         $3, 0x0($23)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80064398
       nop
      lw         $2, 0x4($23)
      lw         $17, 0x0($2)
      j          .L800643E8
       nop
  .L80064398:
      blez       $3, .L800643E8
       addu      $16, $0, $0
      addiu      $21, $0, 0x1
  .L800643A4:
      lw         $3, 0x4($23)
      sll        $2, $16, 2
      addu       $2, $2, $3
      lw         $17, 0x0($2)
      addu       $5, $0, $0
      lw         $2, 0x0($17)
      addiu      $6, $0, 0x5
      lw         $2, 0x10($2)
      jalr       $2
       addu      $4, $17, $0
      beq        $2, $21, .L800643E8
       nop
      lw         $2, 0x0($23)
      addiu      $16, $16, 0x1
      slt        $2, $16, $2
      bnez       $2, .L800643A4
       nop
  .L800643E8:
      lw         $2, 0x10($18)
      beqz       $2, .L8006440C
       addu      $4, $30, $0
      addu       $5, $22, $0
      jal        func_80063EB8
       addu      $6, $18, $0
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800646B0
       addiu     $2, $0, 0x7
  .L8006440C:
      beqz       $17, .L800644E4
       addu      $4, $19, $0
      addu       $5, $17, $0
      addiu      $6, $29, 0x40
      lw         $2, 0x28($20)
      jalr       $2
       addiu     $7, $29, 0x20
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L8006464C
       addu      $21, $17, $0
      addu       $4, $19, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      addiu      $2, $29, 0x44
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x4
      addiu      $16, $29, 0x20
      sw         $2, 0x14($29)
      sw         $16, 0x18($29)
      lw         $2, 0x20($20)
      jalr       $2
       addu      $7, $5, $0
      addu       $17, $2, $0
      bne        $17, $21, .L8006464C
       addu      $22, $17, $0
      addu       $4, $19, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      addiu      $2, $29, 0x48
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x8
      sw         $2, 0x14($29)
      sw         $16, 0x18($29)
      lw         $2, 0x20($20)
      jalr       $2
       addu      $7, $5, $0
      addu       $17, $2, $0
      bne        $17, $22, .L8006464C
       addu      $21, $17, $0
      addu       $4, $19, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      lw         $2, 0x40($29)
      addiu      $3, $0, 0xC
      sw         $3, 0x14($29)
      sw         $16, 0x18($29)
      sw         $2, 0x10($29)
      lw         $2, 0x18($20)
      jalr       $2
       addu      $7, $5, $0
      addu       $17, $2, $0
      bne        $17, $21, .L8006464C
       nop
  .L800644E4:
      addiu      $4, $29, 0x20
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x1C
      addu       $4, $19, $0
      addiu      $6, $29, 0x4C
      lw         $5, 0x14($18)
      lw         $2, 0x10($20)
      jalr       $2
       addiu     $7, $29, 0x20
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800645A4
       nop
      jal        func_80066F58
       nop
      addu       $16, $2, $0
      beqz       $16, .L800645C4
       addu      $4, $19, $0
      addu       $6, $16, $0
      lw         $5, 0x4C($29)
      lw         $2, 0x24($20)
      jalr       $2
       addiu     $7, $29, 0x20
      bnel       $2, $17, .L8006458C
       addiu     $17, $0, 0x7
      lw         $2, 0x0($16)
      lw         $2, 0xC($2)
      jalr       $2
       addu      $4, $16, $0
      beqz       $2, .L80064588
       addu      $4, $16, $0
      lw         $2, 0x0($16)
      lw         $2, 0x14($2)
      jalr       $2
       addiu     $5, $29, 0x50
      bne        $2, $17, .L8006458C
       nop
      lbu        $2, 0x50($29)
      j          .L8006458C
       sltu      $17, $0, $2
  .L80064588:
      addiu      $17, $0, 0x7
  .L8006458C:
      lw         $2, 0x0($16)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      j          .L800645C4
       nop
  .L800645A4:
      jal        func_800631EC
       addiu     $4, $29, 0x20
      andi       $2, $2, 0xFF
      beqz       $2, .L800645C4
       addu      $4, $30, $0
      addu       $5, $19, $0
      jal        func_80063208
       addiu     $6, $29, 0x20
  .L800645C4:
      lw         $2, 0x44($29)
      beqz       $2, .L800645F8
       addu      $4, $19, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x4
      sw         $2, 0x14($29)
      addiu      $2, $29, 0x20
      sw         $2, 0x18($29)
      lw         $2, 0x18($20)
      jalr       $2
       addu      $7, $5, $0
  .L800645F8:
      lw         $2, 0x48($29)
      beqz       $2, .L8006462C
       addu      $4, $19, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x8
      sw         $2, 0x14($29)
      addiu      $2, $29, 0x20
      sw         $2, 0x18($29)
      lw         $2, 0x18($20)
      jalr       $2
       addu      $7, $5, $0
  .L8006462C:
      lw         $8, 0x8C($29)
      slti       $2, $8, 0x3E8
      bnez       $2, .L8006464C
       addu      $4, $23, $0
      addu       $5, $8, $0
      addu       $6, $20, $0
      jal        func_80064230
       addu      $7, $19, $0
  .L8006464C:
      lw         $5, 0x44($29)
      beqz       $5, .L80064664
       nop
      lw         $2, 0x2C($20)
      jalr       $2
       addu      $4, $19, $0
  .L80064664:
      lw         $5, 0x48($29)
      beqz       $5, .L8006467C
       nop
      lw         $2, 0x2C($20)
      jalr       $2
       addu      $4, $19, $0
  .L8006467C:
      lw         $5, 0x4C($29)
      beqz       $5, .L80064694
       nop
      lw         $2, 0x2C($20)
      jalr       $2
       addu      $4, $19, $0
  .L80064694:
      lw         $5, 0x40($29)
      beqz       $5, .L800646B0
       addu      $2, $17, $0
      lw         $2, 0x2C($20)
      jalr       $2
       addu      $4, $19, $0
      addu       $2, $17, $0
  .L800646B0:
      lw         $31, 0x7C($29)
      lw         $30, 0x78($29)
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
.end func_800642C0

.globl func_800646E0
.ent func_800646E0
func_800646E0:
      addiu      $29, $29, -0x30
      sw         $18, 0x18($29)
      lw         $18, 0x44($29)
      sw         $20, 0x20($29)
      lw         $20, 0x48($29)
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $21, 0x24($29)
      addu       $21, $7, $0
      beqz       $16, .L80064738
       sw        $31, 0x28($29)
      beqz       $17, .L8006480C
       addiu     $2, $0, -0x4
      lbu        $2, 0x0($17)
      beqz       $2, .L8006480C
       addiu     $2, $0, -0x4
      bnez       $19, .L80064740
       addu      $4, $16, $0
  .L80064738:
      j          .L8006480C
       addiu     $2, $0, -0x4
  .L80064740:
      addu       $5, $17, $0
      jal        func_80064918
       addu      $6, $0, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80064760
       nop
  .L80064758:
      j          .L8006480C
       addiu     $2, $0, 0x1
  .L80064760:
      lw         $4, 0xD0($16)
      beqz       $4, .L80064784
       addu      $6, $0, $0
      lw         $5, 0xD4($16)
      addiu      $5, $5, 0x1
      jal        func_80052524
       sll       $5, $5, 5
      j          .L8006479C
       sw        $2, 0xD0($16)
  .L80064784:
      lw         $4, 0xD4($16)
      addu       $5, $0, $0
      addiu      $4, $4, 0x1
      jal        func_800524E8
       sll       $4, $4, 5
      sw         $2, 0xD0($16)
  .L8006479C:
      lw         $5, 0xD0($16)
      beqz       $5, .L80064808
       addu      $4, $17, $0
      lw         $2, 0xD4($16)
      sll        $3, $2, 5
      addiu      $2, $2, 0x1
      sw         $2, 0xD4($16)
      jal        func_800523C0
       addu      $16, $5, $3
      beqz       $2, .L80064808
       sw        $2, 0x0($16)
      sw         $19, 0x4($16)
      sw         $21, 0x8($16)
      lw         $2, 0x40($29)
      sw         $18, 0x10($16)
      beqz       $18, .L800647F0
       sw        $2, 0xC($16)
      lw         $2, 0x0($18)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $18, $0
  .L800647F0:
      sw         $0, 0x14($16)
      sw         $0, 0x18($16)
      beqz       $20, .L80064758
       sb        $0, 0x1C($16)
      j          .L80064758
       sw        $16, 0x0($20)
  .L80064808:
      addiu      $2, $0, -0x5
  .L8006480C:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800646E0

.globl func_80064830
.ent func_80064830
func_80064830:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      beqz       $18, .L80064900
       sw        $16, 0x10($29)
      lw         $2, 0xD4($18)
      blez       $2, .L800648EC
       addu      $17, $0, $0
  .L80064858:
      lw         $3, 0xD0($18)
      sll        $2, $17, 5
      addu       $16, $3, $2
      lw         $4, 0x18($16)
      beqz       $4, .L80064878
       nop
      jal        func_800657C0
       nop
  .L80064878:
      lw         $4, 0x14($16)
      beqz       $4, .L8006488C
       nop
      jal        func_800657C0
       nop
  .L8006488C:
      lw         $4, 0x10($16)
      beqz       $4, .L800648A8
       nop
      lw         $2, 0x0($4)
      lw         $2, 0x4($2)
      jalr       $2
       nop
  .L800648A8:
      lw         $2, 0x4($16)
      beqz       $2, .L800648C4
       nop
      lw         $4, 0x8($16)
      lw         $2, 0x4($2)
      jalr       $2
       nop
  .L800648C4:
      lw         $4, 0x0($16)
      beqz       $4, .L800648D8
       nop
      jal        func_80052540
       nop
  .L800648D8:
      lw         $2, 0xD4($18)
      addiu      $17, $17, 0x1
      slt        $2, $17, $2
      bnez       $2, .L80064858
       nop
  .L800648EC:
      lw         $4, 0xD0($18)
      beqz       $4, .L80064900
       nop
      jal        func_80052540
       nop
  .L80064900:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80064830

.globl func_80064918
.ent func_80064918
func_80064918:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $31, 0x24($29)
      sw         $17, 0x14($29)
      beqz       $18, .L800649A4
       sw        $16, 0x10($29)
      beqz       $19, .L800649A8
       addu      $2, $0, $0
      lbu        $2, 0x0($19)
      beqz       $2, .L800649A8
       addu      $2, $0, $0
      lw         $2, 0xD4($18)
      blez       $2, .L800649A4
       addu      $16, $0, $0
  .L80064964:
      lw         $3, 0xD0($18)
      sll        $2, $16, 5
      addu       $17, $3, $2
      lw         $5, 0x0($17)
      jal        func_8005211C
       addu      $4, $19, $0
      bnez       $2, .L80064994
       addiu     $16, $16, 0x1
      bnel       $20, $0, .L8006498C
       sw        $17, 0x0($20)
  .L8006498C:
      j          .L800649A8
       addiu     $2, $0, 0x1
  .L80064994:
      lw         $2, 0xD4($18)
      slt        $2, $16, $2
      bnez       $2, .L80064964
       nop
  .L800649A4:
      addu       $2, $0, $0
  .L800649A8:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80064918

.globl func_800649C8
.ent func_800649C8
func_800649C8:
      beqz       $4, .L800649D8
       nop
      bnez       $5, .L800649E0
       nop
  .L800649D8:
      jr         $31
       addu      $2, $0, $0
  .L800649E0:
      lw         $2, 0xD4($4)
      blez       $2, .L80064A24
       addu      $7, $0, $0
  .L800649EC:
      lw         $2, 0xD0($4)
      sll        $3, $7, 5
      addu       $3, $2, $3
      lw         $2, 0x8($3)
      bnel       $5, $2, .L80064A14
       addiu     $7, $7, 0x1
      bnel       $6, $0, .L80064A0C
       sw        $3, 0x0($6)
  .L80064A0C:
      jr         $31
       addiu     $2, $0, 0x1
  .L80064A14:
      lw         $2, 0xD4($4)
      slt        $2, $7, $2
      bnez       $2, .L800649EC
       nop
  .L80064A24:
      jr         $31
       addu      $2, $0, $0
.end func_800649C8

.globl func_80064A2C
.ent func_80064A2C
func_80064A2C:
      addiu      $29, $29, -0x38
      sw         $21, 0x2C($29)
      lw         $21, 0x48($29)
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $19, 0x24($29)
      addu       $19, $5, $0
      sw         $20, 0x28($29)
      addu       $20, $6, $0
      sw         $16, 0x18($29)
      addu       $16, $7, $0
      sw         $31, 0x30($29)
      sw         $18, 0x20($29)
      bnez       $17, .L80064A70
       sw        $0, 0x10($29)
      j          .L80064B54
       addiu     $2, $0, -0x4
  .L80064A70:
      addu       $4, $17, $0
      jal        func_8006E54C
       addiu     $5, $0, 0x33
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bne        $18, $2, .L80064B54
       addu      $2, $18, $0
      jal        func_800631C0
       addu      $4, $17, $0
      addu       $4, $17, $0
      addu       $5, $16, $0
      addu       $6, $2, $0
      jal        func_80063594
       addiu     $7, $29, 0x10
      addu       $18, $2, $0
      bltz       $18, .L80064B54
       addu      $2, $18, $0
      lw         $2, 0x10($29)
      beqz       $2, .L80064B24
       nop
      lw         $4, 0x18($17)
      jal        func_80058268
       addiu     $5, $0, 0x2
      beqz       $19, .L80064AE4
       addu      $16, $2, $0
      jal        func_800523C0
       addu      $4, $19, $0
      j          .L80064AE8
       sw        $2, 0x0($16)
  .L80064AE4:
      sw         $0, 0x0($16)
  .L80064AE8:
      beql       $20, $0, .L80064AFC
       sw        $0, 0x4($16)
      jal        func_800523C0
       addu      $4, $20, $0
      sw         $2, 0x4($16)
  .L80064AFC:
      beql       $21, $0, .L80064B10
       sw        $0, 0x8($16)
      jal        func_800523C0
       addu      $4, $21, $0
      sw         $2, 0x8($16)
  .L80064B10:
      lw         $2, 0x10($29)
      lw         $3, 0x4($2)
      sw         $3, 0xC($16)
      lw         $2, 0x8($2)
      sw         $2, 0x10($16)
  .L80064B24:
      lw         $4, 0x10($17)
      addiu      $2, $0, 0x1
      beqz       $4, .L80064B44
       sb        $2, 0xAD3($17)
      jal        func_80051688
       nop
      j          .L80064B54
       addu      $2, $18, $0
  .L80064B44:
      jal        func_80051768
       nop
      sw         $2, 0x10($17)
      addu       $2, $18, $0
  .L80064B54:
      lw         $31, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80064A2C

.globl func_80064B78
.ent func_80064B78
func_80064B78:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $18, 0x20($29)
      addiu      $18, $0, 0x1
      sw         $31, 0x24($29)
      bnez       $16, .L80064BA0
       sw        $17, 0x1C($29)
      j          .L80064C78
       addiu     $2, $0, -0x4
  .L80064BA0:
      lw         $4, 0x18($16)
      lbu        $3, 0x10($4)
      addiu      $2, $0, 0x33
      beq        $3, $2, .L80064BC8
       nop
      lw         $4, 0x10($16)
      beqz       $4, .L80064C60
       nop
      j          .L80064C54
       nop
  .L80064BC8:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      lw         $2, 0xC($17)
      bnez       $2, .L80064BFC
       addu      $3, $0, $0
      lw         $4, 0x10($16)
      beqz       $4, .L80064BFC
       addiu     $3, $0, 0x1
      jal        func_800517B4
       nop
      sw         $0, 0x10($16)
      addiu      $3, $0, 0x1
  .L80064BFC:
      andi       $2, $3, 0xFF
      bnez       $2, .L80064C60
       nop
      lw         $2, 0x10($16)
      beqz       $2, .L80064C50
       nop
      lw         $5, 0x10($17)
      jal        func_80063210
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80064C50
       addu      $18, $0, $0
      addiu      $2, $0, 0x1
      sw         $0, 0x10($29)
      sw         $2, 0x14($29)
      lw         $5, 0xC($17)
      lw         $6, 0x10($17)
      lw         $7, 0x10($16)
      jal        func_800637C0
       addu      $4, $16, $0
      addu       $18, $2, $0
  .L80064C50:
      lw         $4, 0x10($16)
  .L80064C54:
      jal        func_800517B4
       nop
      sw         $0, 0x10($16)
  .L80064C60:
      bgtz       $18, .L80064C74
       sb        $0, 0xAD3($16)
      addiu      $2, $0, -0x5
      bnel       $18, $2, .L80064C74
       addiu     $18, $0, 0x1
  .L80064C74:
      addu       $2, $18, $0
  .L80064C78:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80064B78

.globl func_80064C90
.ent func_80064C90
func_80064C90:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      beqz       $4, .L80064CE8
       sw        $16, 0x10($29)
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $16, $2, $0
      lw         $4, 0x0($16)
      beqz       $4, .L80064CC0
       nop
      jal        func_80052540
       nop
  .L80064CC0:
      lw         $4, 0x4($16)
      beqz       $4, .L80064CD4
       nop
      jal        func_80052540
       nop
  .L80064CD4:
      lw         $4, 0x8($16)
      beqz       $4, .L80064CE8
       nop
      jal        func_80052540
       nop
  .L80064CE8:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80064C90

.globl func_80064CF8
.ent func_80064CF8
func_80064CF8:
      beqz       $4, .L80064D20
       addiu     $2, $0, -0x4
      lw         $4, 0x0($4)
      beqz       $4, .L80064D18
       nop
      lw         $2, 0xD4($4)
      jr         $31
       sltu      $2, $0, $2
  .L80064D18:
      jr         $31
       addiu     $2, $0, -0x1
  .L80064D20:
      jr         $31
       nop
.end func_80064CF8

.globl func_80064D28
.ent func_80064D28
func_80064D28:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      beqz       $16, .L80064D54
       sw        $31, 0x24($29)
      bnez       $18, .L80064D5C
       nop
  .L80064D54:
      j          .L80064DB8
       addiu     $2, $0, -0x4
  .L80064D5C:
      jal        func_800631C0
       addu      $4, $16, $0
      addu       $4, $16, $0
      addu       $5, $17, $0
      addu       $6, $2, $0
      jal        func_80063594
       addiu     $7, $29, 0x10
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80064DB8
       addu      $2, $3, $0
      lw         $2, 0x10($29)
      lw         $4, 0x10($2)
      beqz       $4, .L80064DB8
       addu      $2, $0, $0
      lw         $2, 0x0($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
      lw         $2, 0x10($29)
      lw         $3, 0x10($2)
      addiu      $2, $0, 0x1
      sw         $3, 0x0($18)
  .L80064DB8:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
.end func_80064D28

.globl func_80064DC0
.ent func_80064DC0
func_80064DC0:
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80064DC0

.globl func_80064DD0
.ent func_80064DD0
func_80064DD0:
      addiu      $29, $29, -0x38
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $18, 0x28($29)
      addu       $18, $5, $0
      sw         $19, 0x2C($29)
      addu       $19, $6, $0
      sw         $17, 0x24($29)
      addu       $17, $7, $0
      bnez       $16, .L80064E04
       sw        $31, 0x30($29)
      j          .L80064EC8
       addiu     $2, $0, -0x4
  .L80064E04:
      bnez       $18, .L80064E14
       nop
      beqz       $19, .L80064EC8
       addiu     $2, $0, 0x1
  .L80064E14:
      jal        func_800631C0
       addu      $4, $16, $0
      addu       $4, $16, $0
      addu       $5, $17, $0
      addu       $6, $2, $0
      jal        func_80063594
       addiu     $7, $29, 0x18
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80064EC4
       addu      $17, $3, $0
      addu       $5, $16, $0
      lw         $3, 0x18($29)
      addu       $6, $0, $0
      addiu      $2, $3, 0x14
      sw         $2, 0x10($29)
      lw         $4, 0xC($3)
      jal        func_80063A5C
       addiu     $7, $0, 0x6
      addu       $3, $2, $0
      bne        $3, $17, .L80064EC4
       addu      $16, $3, $0
      beqz       $18, .L80064E94
       addiu     $5, $0, 0x7
      lw         $2, 0x18($29)
      lw         $3, 0x8($2)
      sw         $3, 0x10($29)
      lw         $4, 0x14($2)
      lw         $7, 0x4($2)
      jal        func_80064148
       addu      $6, $18, $0
      addu       $3, $2, $0
  .L80064E94:
      beqz       $19, .L80064EC8
       addu      $2, $3, $0
      bne        $3, $16, .L80064EC8
       addiu     $5, $0, 0xE
      lw         $2, 0x18($29)
      lw         $3, 0x8($2)
      sw         $3, 0x10($29)
      lw         $4, 0x14($2)
      lw         $7, 0x4($2)
      jal        func_80064148
       addu      $6, $19, $0
      addu       $3, $2, $0
  .L80064EC4:
      addu       $2, $3, $0
  .L80064EC8:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80064DD0

.globl func_80064EE4
.ent func_80064EE4
func_80064EE4:
      addiu      $29, $29, -0x38
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $18, 0x28($29)
      addu       $18, $5, $0
      sw         $19, 0x2C($29)
      addu       $19, $6, $0
      sw         $31, 0x30($29)
      beqz       $16, .L80064F14
       sw        $17, 0x24($29)
      bnez       $18, .L80064F1C
       nop
  .L80064F14:
      j          .L80064F9C
       addiu     $2, $0, -0x4
  .L80064F1C:
      jal        func_80064CF8
       addu      $4, $16, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L80064F9C
       nop
      jal        func_800631C0
       addu      $4, $16, $0
      addu       $4, $16, $0
      addu       $5, $19, $0
      addu       $6, $2, $0
      jal        func_80063594
       addiu     $7, $29, 0x18
      addu       $3, $2, $0
      bne        $3, $17, .L80064F98
       addu      $19, $3, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      addu       $5, $16, $0
      lw         $3, 0x18($29)
      addu       $6, $18, $0
      sw         $2, 0x10($29)
      lw         $4, 0xC($3)
      jal        func_80063A5C
       addiu     $7, $0, 0x1
      addu       $3, $2, $0
      beql       $3, $19, .L80064F9C
       addiu     $2, $0, 0x1
      j          .L80064F9C
       nop
  .L80064F98:
      addu       $2, $3, $0
  .L80064F9C:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80064EE4

.globl func_80064FB8
.ent func_80064FB8
func_80064FB8:
      addiu      $29, $29, -0x40
      sw         $21, 0x34($29)
      lw         $21, 0x50($29)
      sw         $22, 0x38($29)
      lw         $22, 0x54($29)
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $19, 0x2C($29)
      addu       $19, $6, $0
      sw         $20, 0x30($29)
      addu       $20, $7, $0
      sw         $31, 0x3C($29)
      beqz       $16, .L80065000
       sw        $18, 0x28($29)
      bnez       $17, .L80065008
       nop
  .L80065000:
      j          .L800651B0
       addiu     $2, $0, -0x4
  .L80065008:
      bnez       $19, .L8006503C
       nop
      bnez       $20, .L8006503C
       nop
      bnez       $21, .L8006503C
       nop
      bnez       $22, .L8006503C
       nop
      jal        func_80064CF8
       addu      $4, $16, $0
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800651B0
       addu      $2, $3, $0
  .L8006503C:
      lhu        $2, 0x2($17)
      addu       $4, $16, $0
      ori        $2, $2, 0x400
      jal        func_800631C0
       sh        $2, 0x2($17)
      addu       $4, $16, $0
      addu       $6, $2, $0
      lw         $5, 0x58($29)
      jal        func_80063594
       addiu     $7, $29, 0x18
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      bne        $4, $2, .L800651A0
       addu      $18, $4, $0
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      addu       $5, $16, $0
      lw         $3, 0x18($29)
      addu       $6, $17, $0
      sw         $2, 0x10($29)
      lw         $4, 0xC($3)
      jal        func_80063A5C
       addiu     $7, $0, 0x2
      addu       $4, $2, $0
      bne        $4, $18, .L800651A0
       addu      $16, $4, $0
      beqz       $19, .L800650E8
       nop
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $6, 0x18($29)
      lw         $3, 0x8($6)
      addiu      $5, $0, 0x4
      sw         $3, 0x10($29)
      lw         $4, 0x0($2)
      lw         $7, 0x4($6)
      jal        func_80064148
       addu      $6, $19, $0
      addu       $4, $2, $0
      bne        $4, $16, .L800651A0
       nop
  .L800650E8:
      beqz       $20, .L80065128
       nop
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $6, 0x18($29)
      lw         $3, 0x8($6)
      addiu      $5, $0, 0x8
      sw         $3, 0x10($29)
      lw         $4, 0x0($2)
      lw         $7, 0x4($6)
      jal        func_80064148
       addu      $6, $20, $0
      addu       $4, $2, $0
      bne        $4, $16, .L800651A0
       nop
  .L80065128:
      beqz       $21, .L80065168
       nop
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $6, 0x18($29)
      lw         $3, 0x8($6)
      addiu      $5, $0, 0x9
      sw         $3, 0x10($29)
      lw         $4, 0x0($2)
      lw         $7, 0x4($6)
      jal        func_80064148
       addu      $6, $21, $0
      addu       $4, $2, $0
      bne        $4, $16, .L800651A0
       nop
  .L80065168:
      beqz       $22, .L800651A0
       nop
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $6, 0x18($29)
      lw         $3, 0x8($6)
      addiu      $5, $0, 0xA
      sw         $3, 0x10($29)
      lw         $4, 0x0($2)
      lw         $7, 0x4($6)
      jal        func_80064148
       addu      $6, $22, $0
      addu       $4, $2, $0
  .L800651A0:
      lhu        $3, 0x2($17)
      addu       $2, $4, $0
      andi       $3, $3, 0xFBFF
      sh         $3, 0x2($17)
  .L800651B0:
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
.end func_80064FB8

.globl func_800651D8
.ent func_800651D8
func_800651D8:
      addiu      $29, $29, -0x38
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $16, 0x20($29)
      addu       $16, $5, $0
      sw         $19, 0x2C($29)
      addu       $19, $6, $0
      sw         $20, 0x30($29)
      addu       $20, $7, $0
      sw         $31, 0x34($29)
      beqz       $17, .L80065210
       sw        $18, 0x28($29)
      bnez       $16, .L80065218
       nop
  .L80065210:
      j          .L80065320
       addiu     $2, $0, -0x4
  .L80065218:
      bnez       $19, .L8006523C
       nop
      bnez       $20, .L8006523C
       nop
      jal        func_80064CF8
       addu      $4, $17, $0
      addiu      $3, $0, 0x1
      bne        $2, $3, .L80065320
       addu      $2, $3, $0
  .L8006523C:
      lhu        $2, 0x2($16)
      addu       $4, $17, $0
      ori        $2, $2, 0x400
      jal        func_800631C0
       sh        $2, 0x2($16)
      addu       $4, $17, $0
      addu       $6, $2, $0
      lw         $5, 0x48($29)
      jal        func_80063594
       addiu     $7, $29, 0x18
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80065310
       addu      $18, $3, $0
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      addu       $5, $17, $0
      lw         $3, 0x18($29)
      addu       $6, $16, $0
      sw         $2, 0x10($29)
      lw         $4, 0xC($3)
      jal        func_80063A5C
       addiu     $7, $0, 0x3
      addu       $3, $2, $0
      bne        $3, $18, .L80065320
       addu      $17, $3, $0
      beqz       $19, .L800652E0
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $6, 0x18($29)
      lw         $3, 0x8($6)
      addiu      $5, $0, 0xB
      sw         $3, 0x10($29)
      lw         $4, 0x0($2)
      lw         $7, 0x4($6)
      jal        func_80064148
       addu      $6, $19, $0
      bne        $2, $17, .L80065310
       nop
  .L800652E0:
      beqz       $20, .L80065310
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $6, 0x18($29)
      lw         $3, 0x8($6)
      addiu      $5, $0, 0xD
      sw         $3, 0x10($29)
      lw         $4, 0x0($2)
      lw         $7, 0x4($6)
      jal        func_80064148
       addu      $6, $20, $0
  .L80065310:
      lhu        $3, 0x2($16)
      addiu      $2, $0, 0x1
      andi       $3, $3, 0xFBFF
      sh         $3, 0x2($16)
  .L80065320:
      lw         $31, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800651D8

.globl func_80065340
.ent func_80065340
func_80065340:
      addiu      $29, $29, -0x48
      sw         $20, 0x30($29)
      lw         $20, 0x58($29)
      sw         $22, 0x38($29)
      lw         $22, 0x5C($29)
      sw         $23, 0x3C($29)
      lw         $23, 0x60($29)
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $19, 0x2C($29)
      addu       $19, $6, $0
      sw         $21, 0x34($29)
      addu       $21, $7, $0
      sw         $31, 0x40($29)
      beqz       $16, .L80065390
       sw        $18, 0x28($29)
      bnez       $17, .L80065398
       nop
  .L80065390:
      j          .L80065568
       addiu     $2, $0, -0x4
  .L80065398:
      bnez       $19, .L800653D4
       nop
      bnez       $20, .L800653D4
       nop
      bnez       $21, .L800653D4
       nop
      bnez       $22, .L800653D4
       nop
      bnez       $23, .L800653D4
       nop
      jal        func_80064CF8
       addu      $4, $16, $0
      addiu      $3, $0, 0x1
      bne        $2, $3, .L80065568
       addu      $2, $3, $0
  .L800653D4:
      lhu        $2, 0x2($17)
      addu       $4, $16, $0
      ori        $2, $2, 0x400
      jal        func_800631C0
       sh        $2, 0x2($17)
      addu       $4, $16, $0
      addu       $6, $2, $0
      lw         $5, 0x64($29)
      jal        func_80063594
       addiu     $7, $29, 0x18
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      beq        $3, $2, .L80065414
       addu      $18, $3, $0
      j          .L80065568
       addu      $2, $3, $0
  .L80065414:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      addu       $5, $16, $0
      lw         $3, 0x18($29)
      addu       $6, $17, $0
      sw         $2, 0x10($29)
      lw         $4, 0xC($3)
      jal        func_80063A5C
       addiu     $7, $0, 0x4
      addu       $3, $2, $0
      bne        $3, $18, .L80065568
       addu      $16, $3, $0
      beqz       $19, .L80065480
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $6, 0x18($29)
      lw         $3, 0x8($6)
      addiu      $5, $0, 0x2
      sw         $3, 0x10($29)
      lw         $4, 0x0($2)
      lw         $7, 0x4($6)
      jal        func_80064148
       addu      $6, $19, $0
      bne        $2, $16, .L80065558
       nop
  .L80065480:
      beqz       $20, .L800654B8
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $6, 0x18($29)
      lw         $3, 0x8($6)
      addiu      $5, $0, 0x4
      sw         $3, 0x10($29)
      lw         $4, 0x0($2)
      lw         $7, 0x4($6)
      jal        func_80064148
       addu      $6, $20, $0
      bne        $2, $16, .L80065558
       nop
  .L800654B8:
      beqz       $21, .L800654F0
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $6, 0x18($29)
      lw         $3, 0x8($6)
      addiu      $5, $0, 0x3
      sw         $3, 0x10($29)
      lw         $4, 0x0($2)
      lw         $7, 0x4($6)
      jal        func_80064148
       addu      $6, $21, $0
      bne        $2, $16, .L80065558
       nop
  .L800654F0:
      beqz       $22, .L80065528
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $6, 0x18($29)
      lw         $3, 0x8($6)
      addiu      $5, $0, 0x6
      sw         $3, 0x10($29)
      lw         $4, 0x0($2)
      lw         $7, 0x4($6)
      jal        func_80064148
       addu      $6, $22, $0
      bne        $2, $16, .L80065558
       nop
  .L80065528:
      beqz       $23, .L80065558
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $6, 0x18($29)
      lw         $3, 0x8($6)
      addiu      $5, $0, 0xC
      sw         $3, 0x10($29)
      lw         $4, 0x0($2)
      lw         $7, 0x4($6)
      jal        func_80064148
       addu      $6, $23, $0
  .L80065558:
      lhu        $3, 0x2($17)
      addiu      $2, $0, 0x1
      andi       $3, $3, 0xFBFF
      sh         $3, 0x2($17)
  .L80065568:
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
.end func_80065340

.globl func_80065594
.ent func_80065594
func_80065594:
      addiu      $29, $29, -0x38
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $16, 0x20($29)
      addu       $16, $5, $0
      sw         $19, 0x2C($29)
      addu       $19, $6, $0
      sw         $20, 0x30($29)
      addu       $20, $7, $0
      sw         $31, 0x34($29)
      beqz       $17, .L800655CC
       sw        $18, 0x28($29)
      bnez       $16, .L800655D4
       addu      $4, $17, $0
  .L800655CC:
      j          .L800656B4
       addiu     $2, $0, -0x4
  .L800655D4:
      lhu        $2, 0x2($16)
      ori        $2, $2, 0x400
      jal        func_800631C0
       sh        $2, 0x2($16)
      addu       $4, $17, $0
      addu       $6, $2, $0
      lw         $5, 0x48($29)
      jal        func_80063594
       addiu     $7, $29, 0x18
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800656A4
       addu      $18, $3, $0
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      addu       $5, $17, $0
      lw         $3, 0x18($29)
      addu       $6, $16, $0
      sw         $2, 0x10($29)
      lw         $4, 0xC($3)
      jal        func_80063A5C
       addiu     $7, $0, 0x5
      addu       $3, $2, $0
      bne        $3, $18, .L800656B4
       addu      $17, $3, $0
      beqz       $19, .L80065674
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $6, 0x18($29)
      lw         $3, 0x8($6)
      addiu      $5, $0, 0x7
      sw         $3, 0x10($29)
      lw         $4, 0x0($2)
      lw         $7, 0x4($6)
      jal        func_80064148
       addu      $6, $19, $0
      bne        $2, $17, .L800656A4
       nop
  .L80065674:
      beqz       $20, .L800656A4
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $6, 0x18($29)
      lw         $3, 0x8($6)
      addiu      $5, $0, 0xE
      sw         $3, 0x10($29)
      lw         $4, 0x0($2)
      lw         $7, 0x4($6)
      jal        func_80064148
       addu      $6, $20, $0
  .L800656A4:
      lhu        $3, 0x2($16)
      addiu      $2, $0, 0x1
      andi       $3, $3, 0xFBFF
      sh         $3, 0x2($16)
  .L800656B4:
      lw         $31, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80065594

.globl func_800656D4
.ent func_800656D4
func_800656D4:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $20, 0x28($29)
      addu       $20, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $16, 0x18($29)
      addu       $16, $0, $0
      bnez       $17, .L80065710
       sw        $31, 0x2C($29)
      j          .L800657A0
       addiu     $2, $0, -0x4
  .L80065710:
      beqz       $18, .L8006573C
       nop
      lhu        $2, 0x0($18)
      andi       $2, $2, 0x100
      beqz       $2, .L8006577C
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $16, 0x0($2)
      j          .L8006577C
       nop
  .L8006573C:
      jal        func_800631C0
       addu      $4, $17, $0
      addu       $4, $17, $0
      addu       $5, $19, $0
      addu       $6, $2, $0
      jal        func_800636C8
       addiu     $7, $29, 0x10
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800657A0
       addu      $2, $3, $0
      lw         $3, 0x10($29)
      lbu        $2, 0x1C($3)
      bnez       $2, .L8006577C
       nop
      lw         $16, 0x14($3)
  .L8006577C:
      beqz       $16, .L8006579C
       addu      $4, $17, $0
      addu       $5, $18, $0
      addu       $6, $16, $0
      jal        func_800642C0
       addu      $7, $20, $0
      j          .L800657A0
       nop
  .L8006579C:
      addiu      $2, $0, 0x1
  .L800657A0:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800656D4

.globl func_800657C0
.ent func_800657C0
func_800657C0:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      beqz       $17, .L80065860
       sw        $16, 0x10($29)
      lw         $2, 0x0($17)
      beqz       $2, .L80065834
       nop
      blez       $2, .L80065828
       addu      $16, $0, $0
  .L800657EC:
      lw         $3, 0x4($17)
      sll        $2, $16, 2
      addu       $2, $2, $3
      lw         $4, 0x0($2)
      beqz       $4, .L80065814
       nop
      lw         $2, 0x0($4)
      lw         $2, 0x4($2)
      jalr       $2
       nop
  .L80065814:
      lw         $2, 0x0($17)
      addiu      $16, $16, 0x1
      slt        $2, $16, $2
      bnez       $2, .L800657EC
       nop
  .L80065828:
      lw         $4, 0x4($17)
      jal        func_80052540
       nop
  .L80065834:
      lw         $4, 0x8($17)
      beqz       $4, .L80065858
       nop
  .L80065840:
      lw         $16, 0x0($4)
      jal        func_800641D0
       nop
      addu       $4, $16, $0
      bnez       $4, .L80065840
       nop
  .L80065858:
      jal        func_80052540
       addu      $4, $17, $0
  .L80065860:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800657C0

.globl func_80065874
.ent func_80065874
func_80065874:
      jr         $31
       addu      $2, $0, $0
.end func_80065874

.globl func_8006587C
.ent func_8006587C
func_8006587C:
      jr         $31
       addu      $2, $0, $0
.end func_8006587C

.globl func_80065884
.ent func_80065884
func_80065884:
      addiu      $29, $29, -0x18
      beqz       $4, .L800658A4
       sw        $31, 0x10($29)
      lw         $4, 0x4($4)
      jal        func_80064D28
       nop
      j          .L800658A8
       nop
  .L800658A4:
      addiu      $2, $0, -0x4
  .L800658A8:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80065884

.globl func_800658B4
.ent func_800658B4
func_800658B4:
      addiu      $29, $29, -0x20
      beqz       $4, .L800658C8
       sw        $31, 0x18($29)
      bnez       $5, .L800658D0
       addiu     $2, $0, 0x2B
  .L800658C8:
      j          .L800658F0
       addiu     $2, $0, -0x4
  .L800658D0:
      lbu        $3, 0x10($5)
      bne        $3, $2, .L800658F0
       addu      $2, $0, $0
      sw         $6, 0x10($29)
      addu       $6, $0, $0
      lw         $4, 0x4($4)
      jal        func_80065594
       addu      $7, $6, $0
  .L800658F0:
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800658B4

.globl func_800658FC
.ent func_800658FC
func_800658FC:
      addiu      $29, $29, -0x18
      addu       $3, $0, $0
      lw         $6, 0x28($29)
      lw         $5, 0x2C($29)
      addiu      $2, $0, 0x2
      beq        $7, $2, .L80065948
       sw        $31, 0x10($29)
      slti       $2, $7, 0x3
      beqz       $2, .L80065934
       addiu     $2, $0, 0x1
      beq        $7, $2, .L80065960
       nop
      j          .L80065994
       nop
  .L80065934:
      addiu      $2, $0, 0x3
      beq        $7, $2, .L80065980
       nop
      j          .L80065994
       nop
  .L80065948:
      bnez       $5, .L80065994
       nop
      jal        func_8007A43C
       addu      $5, $6, $0
      j          .L80065994
       addu      $3, $2, $0
  .L80065960:
      bnez       $5, .L80065994
       nop
      lw         $2, 0x4($4)
      lw         $4, 0x0($2)
      jal        func_8007DA5C
       addu      $5, $6, $0
      j          .L80065994
       addu      $3, $2, $0
  .L80065980:
      lw         $2, 0x4($4)
      lw         $4, 0x0($2)
      jal        func_8007DB24
       nop
      addu       $3, $2, $0
  .L80065994:
      lw         $31, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_800658FC

.globl func_800659A4
.ent func_800659A4
func_800659A4:
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      beqz       $4, .L800659D8
       addu      $7, $5, $0
      beqz       $7, .L80065A04
       addiu     $2, $0, -0x4
      lw         $2, 0xC($7)
      bnel       $2, $0, .L800659E8
       sw        $0, 0x14($29)
      lw         $3, 0x8($7)
      addiu      $2, $0, 0x3
      beq        $3, $2, .L800659E0
       nop
  .L800659D8:
      j          .L80065A04
       addiu     $2, $0, -0x4
  .L800659E0:
      lw         $2, 0xC($7)
      sw         $0, 0x14($29)
  .L800659E8:
      sw         $2, 0x10($29)
      lw         $5, 0x0($7)
      lw         $6, 0x4($7)
      lw         $7, 0x8($7)
      jal        func_800658FC
       nop
      sltu       $2, $0, $2
  .L80065A04:
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800659A4

.globl func_80065A10
.ent func_80065A10
func_80065A10:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800659A4
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80065A10

.globl func_80065A2C
.ent func_80065A2C
func_80065A2C:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $20, 0x20($29)
      addu       $20, $7, $0
      addu       $4, $19, $0
      sw         $31, 0x24($29)
      jal        func_80017780
       sw        $17, 0x14($29)
      j          .L80065AB8
       addu      $17, $2, $0
  .L80065A68:
      jal        func_80058268
       addiu     $5, $0, 0x6
      lw         $2, 0x4($2)
      bne        $2, $17, .L80065AD0
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
      bnez       $2, .L80065AD0
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      sw         $20, 0x0($2)
      lw         $16, 0x8($16)
  .L80065AB8:
      beqz       $16, .L80065AD0
       nop
      lhu        $2, 0x2($16)
      andi       $2, $2, 0x4
      bnez       $2, .L80065A68
       addu      $4, $16, $0
  .L80065AD0:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80065A2C

.globl func_80065AF0
.ent func_80065AF0
func_80065AF0:
      addiu      $29, $29, -0x40
      sw         $22, 0x38($29)
      addu       $22, $4, $0
      sw         $20, 0x30($29)
      addu       $20, $5, $0
      sw         $18, 0x28($29)
      addu       $18, $0, $0
      sw         $31, 0x3C($29)
      sw         $21, 0x34($29)
      sw         $19, 0x2C($29)
      sw         $17, 0x24($29)
      beqz       $22, .L80065B2C
       sw        $16, 0x20($29)
      bnez       $20, .L80065B34
       nop
  .L80065B2C:
      j          .L80065CD0
       addiu     $2, $0, -0x4
  .L80065B34:
      lw         $2, 0xC($20)
      sw         $0, 0x14($29)
      sw         $2, 0x10($29)
      lw         $5, 0x0($20)
      lw         $6, 0x4($20)
      lw         $7, 0x8($20)
      jal        func_800658FC
       addu      $4, $22, $0
      addu       $19, $2, $0
      beqz       $19, .L80065CCC
       lui       $5, %hi(D_800ED64C)
      lw         $4, 0x4($22)
      addiu      $5, $5, %lo(D_800ED64C)
      addu       $6, $0, $0
      jal        func_80063594
       addiu     $7, $29, 0x18
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bnel       $18, $2, .L80065CD0
       addu      $2, $18, $0
      addu       $21, $2, $0
  .L80065B88:
      beqz       $19, .L80065CCC
       addu      $4, $19, $0
      addiu      $5, $0, 0x8
      jal        func_80058268
       sw        $0, 0x1C($29)
      lw         $16, 0x0($2)
      bnez       $16, .L80065BF8
       addu      $17, $0, $0
      addu       $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      addiu      $4, $0, 0xC
      addu       $5, $17, $0
      jal        func_80052504
       addu      $16, $2, $0
      sw         $2, 0x0($16)
      addu       $16, $2, $0
      beqz       $16, .L80065BF0
       addu      $4, $19, $0
      lw         $2, 0x4($22)
      lw         $6, 0xC($20)
      lw         $5, 0x0($2)
      jal        func_80065A2C
       addu      $7, $16, $0
      j          .L80065C1C
       nop
  .L80065BF0:
      j          .L80065C1C
       addiu     $18, $0, -0x5
  .L80065BF8:
      lw         $2, 0x18($29)
      lw         $5, 0x10($20)
      lw         $6, 0x4($2)
      lw         $7, 0x8($2)
      jal        func_80063FEC
       addu      $4, $16, $0
      addu       $17, $2, $0
      beqz       $17, .L80065C78
       nop
  .L80065C1C:
      bne        $18, $21, .L80065CA0
       nop
      beqz       $17, .L80065C30
       addu      $5, $0, $0
      lw         $5, 0x10($17)
  .L80065C30:
      addu       $4, $20, $0
      jal        func_800661E8
       addiu     $6, $29, 0x1C
      addu       $18, $2, $0
      bne        $18, $21, .L80065CA0
       addu      $4, $16, $0
      lw         $3, 0x18($29)
      lw         $7, 0x1C($29)
      lw         $2, 0x4($3)
      sw         $2, 0x10($29)
      lw         $2, 0x8($3)
      sw         $2, 0x14($29)
      lw         $5, 0x10($20)
      jal        func_80064048
       addu      $6, $0, $0
      addu       $18, $2, $0
      bne        $18, $21, .L80065CA0
       nop
  .L80065C78:
      lw         $2, 0xC($20)
      sw         $19, 0x14($29)
      sw         $2, 0x10($29)
      lw         $5, 0x0($20)
      lw         $6, 0x4($20)
      lw         $7, 0x8($20)
      jal        func_800658FC
       addu      $4, $22, $0
      j          .L80065CC4
       addu      $19, $2, $0
  .L80065CA0:
      lw         $5, 0x1C($29)
      beqz       $5, .L80065CC4
       nop
      lw         $2, 0x18($29)
      lw         $3, 0x4($2)
      lw         $4, 0x8($2)
      lw         $2, 0x2C($3)
      jalr       $2
       nop
  .L80065CC4:
      beq        $18, $21, .L80065B88
       nop
  .L80065CCC:
      addu       $2, $18, $0
  .L80065CD0:
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
.end func_80065AF0

.globl func_80065CF8
.ent func_80065CF8
func_80065CF8:
      addiu      $29, $29, -0x38
      sw         $19, 0x2C($29)
      addu       $19, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $18, 0x28($29)
      addu       $18, $0, $0
      sw         $31, 0x34($29)
      sw         $20, 0x30($29)
      beqz       $19, .L80065D2C
       sw        $16, 0x20($29)
      bnez       $17, .L80065D34
       nop
  .L80065D2C:
      j          .L80065DF8
       addiu     $2, $0, -0x4
  .L80065D34:
      lw         $2, 0xC($17)
      sw         $0, 0x14($29)
      sw         $2, 0x10($29)
      lw         $5, 0x0($17)
      lw         $6, 0x4($17)
      lw         $7, 0x8($17)
      jal        func_800658FC
       addu      $4, $19, $0
      addu       $16, $2, $0
      beqz       $16, .L80065DF4
       lui       $5, %hi(D_800ED64C)
      lw         $4, 0x4($19)
      addiu      $5, $5, %lo(D_800ED64C)
      addu       $6, $0, $0
      jal        func_800636C8
       addiu     $7, $29, 0x18
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bnel       $18, $2, .L80065DF8
       addu      $2, $18, $0
      addu       $20, $2, $0
  .L80065D88:
      beqz       $16, .L80065DF4
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x8
      lw         $4, 0x0($2)
      beqz       $4, .L80065DC4
       nop
      lw         $2, 0x18($29)
      lw         $5, 0x10($17)
      lw         $6, 0x4($2)
      lw         $7, 0x8($2)
      jal        func_80064230
       nop
      andi       $2, $2, 0xFF
      sltu       $18, $0, $2
  .L80065DC4:
      bne        $18, $20, .L80065DF8
       addu      $2, $18, $0
      lw         $2, 0xC($17)
      sw         $16, 0x14($29)
      sw         $2, 0x10($29)
      lw         $5, 0x0($17)
      lw         $6, 0x4($17)
      lw         $7, 0x8($17)
      jal        func_800658FC
       addu      $4, $19, $0
      j          .L80065D88
       addu      $16, $2, $0
  .L80065DF4:
      addu       $2, $18, $0
  .L80065DF8:
      lw         $31, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80065CF8

.globl func_80065E18
.ent func_80065E18
func_80065E18:
      andi       $3, $3, 0xFBFF
      sh         $3, 0x2($16)
      lw         $31, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80065E18

.globl func_80065E40
.ent func_80065E40
func_80065E40:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      addiu      $4, $0, 0x20
      addu       $5, $0, $0
      sw         $31, 0x1C($29)
      jal        func_80052504
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L80065EF4
       addu      $2, $0, $0
      lw         $4, 0x4($17)
      beqz       $4, .L80065E90
       nop
      jal        func_800523C0
       nop
      beqz       $2, .L80065EE0
       sw        $2, 0x4($16)
  .L80065E90:
      lw         $4, 0xC($17)
      beqz       $4, .L80065EAC
       nop
      jal        func_800523C0
       nop
      beqz       $2, .L80065EE0
       sw        $2, 0xC($16)
  .L80065EAC:
      lw         $2, 0x0($17)
      sw         $2, 0x0($16)
      lw         $2, 0x8($17)
      sw         $18, 0x10($16)
      sw         $2, 0x8($16)
      lw         $2, 0x10($17)
      sw         $2, 0x14($16)
      lw         $2, 0x14($17)
      sw         $2, 0x18($16)
      lw         $3, 0x18($17)
      addu       $2, $16, $0
      j          .L80065EF4
       sw        $3, 0x1C($2)
  .L80065EE0:
      beqz       $16, .L80065EF4
       addu      $2, $0, $0
      jal        func_80065F0C
       addu      $4, $16, $0
      addu       $2, $0, $0
  .L80065EF4:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80065E40

.globl func_80065F0C
.ent func_80065F0C
func_80065F0C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x4($16)
      beqz       $4, .L80065F30
       nop
      jal        func_80052540
       nop
  .L80065F30:
      lw         $4, 0xC($16)
      beqz       $4, .L80065F44
       nop
      jal        func_80052540
       nop
  .L80065F44:
      lw         $4, 0x10($16)
      beqz       $4, .L80065F58
       nop
      jal        func_80052540
       nop
  .L80065F58:
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80065F0C

.globl func_80065F70
.ent func_80065F70
func_80065F70:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      addiu      $4, $0, 0x8
      sw         $31, 0x18($29)
      jal        func_80052504
       addu      $5, $0, $0
      addu       $3, $2, $0
      beqz       $3, .L80065FC4
       addiu     $2, $0, 0x1
      beq        $16, $2, .L80065FBC
       sw        $16, 0x0($3)
      slti       $2, $16, 0x2
      bnez       $2, .L80065FC4
       addiu     $2, $0, 0x2
      bne        $16, $2, .L80065FC4
       nop
  .L80065FBC:
      lw         $2, 0x0($17)
      sw         $2, 0x4($3)
  .L80065FC4:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_80065F70

.globl func_80065FDC
.ent func_80065FDC
func_80065FDC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80066010
       nop
      lw         $4, 0x4($16)
      beqz       $4, .L80066010
       nop
      jal        func_80065F0C
       nop
  .L80066010:
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80065FDC

.globl func_80066028
.ent func_80066028
func_80066028:
      jr         $31
       addiu     $2, $0, 0x1
.end func_80066028

.globl func_80066030
.ent func_80066030
func_80066030:
      jr         $31
       addiu     $2, $0, 0x1
.end func_80066030

.globl func_80066038
.ent func_80066038
func_80066038:
      jr         $31
       addu      $2, $0, $0
.end func_80066038

.globl func_80066040
.ent func_80066040
func_80066040:
      jr         $31
       addu      $2, $0, $0
.end func_80066040

.globl func_80066048
.ent func_80066048
func_80066048:
      addiu      $29, $29, -0x30
      sw         $16, 0x28($29)
      addu       $16, $6, $0
      addiu      $6, $0, -0x4
      beqz       $5, .L800660E8
       sw        $31, 0x2C($29)
      lw         $3, 0x0($5)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800660E8
       nop
      lw         $3, 0x4($5)
      beqz       $3, .L800660E8
       nop
      lw         $2, 0xC($3)
      sw         $2, 0x10($29)
      lw         $2, 0x10($3)
      sw         $2, 0x14($29)
      lw         $2, 0x14($3)
      sw         $2, 0x18($29)
      lw         $4, 0x1C($3)
      lw         $5, 0x0($3)
      lw         $2, 0x18($3)
      lw         $6, 0x4($3)
      lw         $7, 0x8($3)
      jalr       $2
       nop
      addu       $6, $2, $0
      bltz       $6, .L800660E8
       nop
      beqz       $16, .L800660E4
       addiu     $4, $0, 0x2
      addiu      $5, $29, 0x20
      jal        func_80065F70
       sw        $6, 0x20($29)
      addiu      $6, $0, 0x1
      bnez       $2, .L800660E8
       sw        $2, 0x0($16)
      j          .L800660E8
       addiu     $6, $0, -0x5
  .L800660E4:
      addiu      $6, $0, 0x1
  .L800660E8:
      lw         $31, 0x2C($29)
      lw         $16, 0x28($29)
      addu       $2, $6, $0
      jr         $31
       addiu     $29, $29, 0x30
.end func_80066048

.globl func_800660FC
.ent func_800660FC
func_800660FC:
      jr         $31
       addu      $2, $0, $0
.end func_800660FC

.globl func_80066104
.ent func_80066104
func_80066104:
      jr         $31
       addu      $2, $0, $0
.end func_80066104

.globl func_8006610C
.ent func_8006610C
func_8006610C:
      jr         $31
       addu      $2, $0, $0
.end func_8006610C

.globl func_80066114
.ent func_80066114
func_80066114:
      jr         $31
       addu      $2, $0, $0
.end func_80066114

.globl func_8006611C
.ent func_8006611C
func_8006611C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      beqz       $5, .L80066134
       addu      $4, $6, $0
      bnez       $4, .L8006613C
       addiu     $2, $0, 0x2
  .L80066134:
      j          .L80066178
       addiu     $2, $0, -0x4
  .L8006613C:
      lw         $3, 0x0($5)
      bne        $3, $2, .L80066164
       nop
      lw         $2, 0x0($4)
      lw         $5, 0x4($5)
      lw         $2, 0x10($2)
      jalr       $2
       sltu      $5, $0, $5
      j          .L80066178
       addiu     $2, $0, 0x1
  .L80066164:
      lw         $2, 0x0($4)
      lw         $2, 0x4($2)
      jalr       $2
       nop
      addiu      $2, $0, 0x1
  .L80066178:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006611C

.globl func_80066184
.ent func_80066184
func_80066184:
      jr         $31
       addu      $2, $0, $0
.end func_80066184

.globl func_8006618C
.ent func_8006618C
func_8006618C:
      addiu      $29, $29, -0x18
      addu       $4, $5, $0
      beqz       $4, .L800661A4
       sw        $31, 0x10($29)
      jal        func_80065FDC
       nop
  .L800661A4:
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006618C

.globl func_800661B4
.ent func_800661B4
func_800661B4:
      beqz       $4, .L800661C4
       lui       $2, %hi(D_800EEC40)
      addiu      $2, $2, %lo(D_800EEC40)
      sw         $2, 0x0($4)
  .L800661C4:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800661B4

.globl func_800661CC
.ent func_800661CC
func_800661CC:
      lw         $2, 0x10($29)
      bnel       $7, $0, .L800661D8
       sw        $0, 0x0($7)
  .L800661D8:
      bnel       $2, $0, .L800661E0
       sw        $0, 0x0($2)
  .L800661E0:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800661CC

.globl func_800661E8
.ent func_800661E8
func_800661E8:
      addiu      $29, $29, -0x28
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      sw         $17, 0x1C($29)
      beqz       $4, .L8006620C
       sw        $16, 0x18($29)
      bnez       $18, .L80066214
       nop
  .L8006620C:
      j          .L8006626C
       addiu     $2, $0, -0x4
  .L80066214:
      jal        func_80065E40
       nop
      addu       $17, $2, $0
      beqz       $17, .L80066248
       addiu     $4, $0, 0x1
      addiu      $5, $29, 0x10
      jal        func_80065F70
       sw        $17, 0x10($29)
      addiu      $16, $0, -0x5
      beqz       $2, .L8006624C
       sw        $2, 0x0($18)
      j          .L8006624C
       addiu     $16, $0, 0x1
  .L80066248:
      addiu      $16, $0, -0x5
  .L8006624C:
      addiu      $2, $0, 0x1
      beq        $16, $2, .L8006626C
       addu      $2, $16, $0
      beqz       $17, .L8006626C
       nop
      jal        func_80065F0C
       addu      $4, $17, $0
      addu       $2, $16, $0
  .L8006626C:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800661E8

.globl func_80066284
.ent func_80066284
func_80066284:
      addu       $5, $18, $0
      addu       $6, $16, $0
      jal        func_80064DC0
       addu      $7, $20, $0
      j          .L800662A0
       nop
      addiu      $2, $0, 0x1
  .L800662A0:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80066284

.globl func_800662C0
.ent func_800662C0
func_800662C0:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L80066344
       sw        $31, 0x14($29)
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x5
      beq        $3, $2, .L800662F4
       addiu     $2, $0, 0x6
      beq        $3, $2, .L80066310
       addu      $4, $16, $0
      j          .L8006633C
       addu      $5, $0, $0
  .L800662F4:
      lw         $4, 0x8($16)
      beql       $4, $0, .L80066338
       addu      $4, $16, $0
      jal        func_80052540
       nop
      j          .L80066338
       addu      $4, $16, $0
  .L80066310:
      lw         $4, 0x8($16)
      beql       $4, $0, .L80066338
       addu      $4, $16, $0
      lw         $2, 0x0($4)
      beql       $2, $0, .L80066338
       addu      $4, $16, $0
      lw         $2, 0x4($2)
      jalr       $2
       nop
      addu       $4, $16, $0
  .L80066338:
      addu       $5, $0, $0
  .L8006633C:
      jal        func_80016140
       addiu     $6, $0, 0x10
  .L80066344:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800662C0

.globl func_80066354
.ent func_80066354
func_80066354:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      beqz       $17, .L8006638C
       sw        $16, 0x10($29)
      lw         $3, 0x0($17)
      lui        $2, %hi(D_800EEC80)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L800663B0
       addiu     $2, $0, -0x4
      lw         $16, 0x4($17)
      bnez       $16, .L80066394
       nop
  .L8006638C:
      j          .L800663B0
       addiu     $2, $0, -0x4
  .L80066394:
      jal        func_800662C0
       addu      $4, $16, $0
      jal        func_80052540
       addu      $4, $16, $0
      jal        func_80052540
       addu      $4, $17, $0
      addiu      $2, $0, 0x1
  .L800663B0:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80066354

.globl func_800663C4
.ent func_800663C4
func_800663C4:
      addiu      $29, $29, -0x18
      beqz       $4, .L800663F0
       sw        $31, 0x10($29)
      lw         $3, 0x0($4)
      lui        $2, %hi(D_800EEC80)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L80066404
       addiu     $2, $0, -0x4
      lw         $4, 0x4($4)
      bnez       $4, .L800663F8
       nop
  .L800663F0:
      j          .L80066404
       addiu     $2, $0, -0x4
  .L800663F8:
      jal        func_800662C0
       nop
      addiu      $2, $0, 0x1
  .L80066404:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800663C4

.globl func_80066410
.ent func_80066410
func_80066410:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $31, 0x20($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      beqz       $4, .L80066454
       sw        $16, 0x10($29)
      beqz       $19, .L80066454
       lui       $2, %hi(D_800EEC80)
      lw         $3, 0x0($4)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L80066514
       addiu     $2, $0, -0x4
      lw         $16, 0x4($4)
      bnez       $16, .L8006645C
       nop
  .L80066454:
      j          .L80066514
       addiu     $2, $0, -0x4
  .L8006645C:
      jal        func_80066F58
       nop
      addu       $18, $2, $0
      beqz       $18, .L80066514
       addiu     $2, $0, -0x5
      lw         $17, 0x4($18)
      lw         $2, 0x0($16)
      sw         $2, 0x0($17)
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x5
      beq        $3, $2, .L8006649C
       addiu     $2, $0, 0x6
      beq        $3, $2, .L800664C8
       nop
      j          .L800664FC
       nop
  .L8006649C:
      lw         $4, 0x8($16)
      beql       $4, $0, .L80066510
       sw        $18, 0x0($19)
      jal        func_800523C0
       nop
      bnez       $2, .L8006650C
       sw        $2, 0x8($17)
      jal        func_80066354
       addu      $4, $18, $0
      j          .L80066514
       addiu     $2, $0, -0x5
  .L800664C8:
      lw         $16, 0x8($16)
      beql       $16, $0, .L80066510
       sw        $18, 0x0($19)
      lw         $2, 0x0($16)
      beql       $2, $0, .L80066510
       sw        $18, 0x0($19)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      bgtzl      $2, .L8006650C
       sw        $16, 0x8($17)
      j          .L80066510
       sw        $18, 0x0($19)
  .L800664FC:
      lw         $6, 0x8($16)
      lw         $7, 0xC($16)
      sw         $6, 0x8($17)
      sw         $7, 0xC($17)
  .L8006650C:
      sw         $18, 0x0($19)
  .L80066510:
      addiu      $2, $0, 0x1
  .L80066514:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80066410

.globl func_80066530
.ent func_80066530
func_80066530:
      bnez       $4, .L80066540
       lui       $2, %hi(D_800EEC80)
  .L80066538:
      jr         $31
       addiu     $2, $0, -0x4
  .L80066540:
      lw         $3, 0x0($4)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L80066538
       nop
      lw         $2, 0x4($4)
      beqz       $2, .L80066538
       nop
      lw         $4, 0x0($2)
      slti       $3, $4, 0x7
      beqz       $3, .L80066574
       addiu     $2, $0, -0x4
      bgezl      $4, .L80066574
       addu      $2, $4, $0
  .L80066574:
      jr         $31
       nop
.end func_80066530

.globl func_8006657C
.ent func_8006657C
func_8006657C:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      beqz       $4, .L800665B4
       sw        $16, 0x10($29)
      lw         $3, 0x0($4)
      lui        $2, %hi(D_800EEC80)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L800665D4
       addiu     $2, $0, -0x4
      lw         $16, 0x4($4)
      bnez       $16, .L800665BC
       nop
  .L800665B4:
      j          .L800665D4
       addiu     $2, $0, -0x4
  .L800665BC:
      jal        func_800662C0
       addu      $4, $16, $0
      addiu      $2, $0, 0x1
      addu       $3, $2, $0
      sw         $3, 0x0($16)
      sb         $17, 0x8($16)
  .L800665D4:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006657C

.globl func_800665E8
.ent func_800665E8
func_800665E8:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      addu       $5, $0, $0
      beqz       $4, .L800666B8
       sw        $31, 0x14($29)
      beqz       $16, .L800666B8
       lui       $2, %hi(D_800EEC80)
      lw         $3, 0x0($4)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L800666C8
       addiu     $2, $0, -0x4
      lw         $4, 0x4($4)
      beqz       $4, .L800666C8
       nop
      lw         $3, 0x0($4)
      sltiu      $2, $3, 0x7
      beqz       $2, .L800666B8
       lui       $2, %hi(jtbl_800EECC8)
      addiu      $2, $2, %lo(jtbl_800EECC8)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8006664C
.L8006664C:
      lbu        $5, 0x8($4)
      j          .L800666C4
       sb        $5, 0x0($16)
  .globl .L80066658
.L80066658:
      lw         $2, 0x8($4)
      sltu       $2, $0, $2
      j          .L800666C0
       addu      $5, $2, $0
  .globl .L80066668
.L80066668:
      ldc1       $f2, 0x8($4)
      mtc1       $0, $f0
      mtc1       $0, $f1
      c.eq.d     $f2, $f0
      nop
      bc1f       .L800666C0
       addiu     $5, $0, 0x1
      j          .L800666C0
       addu      $5, $0, $0
      lw         $4, 0x8($4)
      beql       $4, $0, .L800666C4
       sb        $5, 0x0($16)
      lui        $5, %hi(D_800EC630)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800EC630)
      sltu       $2, $0, $2
      j          .L800666C0
       addu      $5, $2, $0
      j          .L800666C0
       addiu     $5, $0, 0x1
  .L800666B8:
      j          .L800666C8
       addiu     $2, $0, -0x4
  .globl .L800666C0
.L800666C0:
      sb         $5, 0x0($16)
  .L800666C4:
      addiu      $2, $0, 0x1
  .L800666C8:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800665E8

.globl func_800666D8
.ent func_800666D8
func_800666D8:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      beqz       $4, .L80066710
       sw        $16, 0x10($29)
      lw         $3, 0x0($4)
      lui        $2, %hi(D_800EEC80)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L80066730
       addiu     $2, $0, -0x4
      lw         $16, 0x4($4)
      bnez       $16, .L80066718
       nop
  .L80066710:
      j          .L80066730
       addiu     $2, $0, -0x4
  .L80066718:
      jal        func_800662C0
       addu      $4, $16, $0
      addiu      $2, $0, 0x1
      addiu      $3, $0, 0x2
      sw         $3, 0x0($16)
      sw         $17, 0x8($16)
  .L80066730:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800666D8

.globl func_80066744
.ent func_80066744
func_80066744:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      addu       $5, $0, $0
      beqz       $4, .L80066848
       sw        $31, 0x14($29)
      beqz       $16, .L80066848
       lui       $2, %hi(D_800EEC80)
      lw         $3, 0x0($4)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L80066858
       addiu     $2, $0, -0x4
      lw         $4, 0x4($4)
      beqz       $4, .L80066858
       nop
      lw         $3, 0x0($4)
      sltiu      $2, $3, 0x7
      beqz       $2, .L80066848
       lui       $2, %hi(jtbl_800EECE8)
      addiu      $2, $2, %lo(jtbl_800EECE8)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800667A8
.L800667A8:
      lbu        $5, 0x8($4)
      j          .L80066854
       sw        $5, 0x0($16)
  .globl .L800667B4
.L800667B4:
      lw         $5, 0x8($4)
      j          .L80066854
       sw        $5, 0x0($16)
  .globl .L800667C0
.L800667C0:
      lui        $2, (0x7FFFFFFE >> 16)
      ori        $2, $2, (0x7FFFFFFE & 0xFFFF)
      lui        $5, (0x7FFFFFFF >> 16)
      lw         $3, 0x8($4)
      sltu       $2, $2, $3
      bnez       $2, .L80066850
       ori       $5, $5, (0x7FFFFFFF & 0xFFFF)
      j          .L80066850
       addu      $5, $3, $0
  .globl .L800667E4
.L800667E4:
      ldc1       $f2, 0x8($4)
      lui        $1, %hi(D_800EED08)
      ldc1       $f0, %lo(D_800EED08)($1)
      c.lt.d     $f2, $f0
      nop
      bc1t       .L80066850
       lui       $5, (0x80000000 >> 16)
      lui        $5, (0x7FFFFFFF >> 16)
      lui        $1, %hi(D_800EED10)
      ldc1       $f0, %lo(D_800EED10)($1)
      c.lt.d     $f0, $f2
      nop
      bc1t       .L80066850
       ori       $5, $5, (0x7FFFFFFF & 0xFFFF)
      trunc.w.d  $f4, $f2
      mfc1       $5, $f4
      j          .L80066854
       sw        $5, 0x0($16)
      lw         $4, 0x8($4)
      beql       $4, $0, .L80066854
       sw        $5, 0x0($16)
      jal        func_80024040
       nop
      j          .L80066850
       addu      $5, $2, $0
  .L80066848:
      j          .L80066858
       addiu     $2, $0, -0x4
  .globl .L80066850
.L80066850:
      sw         $5, 0x0($16)
  .L80066854:
      addiu      $2, $0, 0x1
  .L80066858:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80066744

.globl func_80066868
.ent func_80066868
func_80066868:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      beqz       $4, .L800668A0
       sw        $16, 0x10($29)
      lw         $3, 0x0($4)
      lui        $2, %hi(D_800EEC80)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L800668C0
       addiu     $2, $0, -0x4
      lw         $16, 0x4($4)
      bnez       $16, .L800668A8
       nop
  .L800668A0:
      j          .L800668C0
       addiu     $2, $0, -0x4
  .L800668A8:
      jal        func_800662C0
       addu      $4, $16, $0
      addiu      $2, $0, 0x1
      addiu      $3, $0, 0x3
      sw         $3, 0x0($16)
      sw         $17, 0x8($16)
  .L800668C0:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80066868

.globl func_800668D4
.ent func_800668D4
func_800668D4:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      addu       $5, $0, $0
      beqz       $4, .L800669F4
       sw        $31, 0x14($29)
      beqz       $16, .L800669F4
       lui       $2, %hi(D_800EEC80)
      lw         $3, 0x0($4)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L80066A04
       addiu     $2, $0, -0x4
      lw         $4, 0x4($4)
      beqz       $4, .L80066A04
       nop
      lw         $3, 0x0($4)
      sltiu      $2, $3, 0x7
      beqz       $2, .L800669F4
       lui       $2, %hi(jtbl_800EED18)
      addiu      $2, $2, %lo(jtbl_800EED18)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80066938
.L80066938:
      lbu        $5, 0x8($4)
      j          .L80066A00
       sw        $5, 0x0($16)
  .globl .L80066944
.L80066944:
      lw         $3, 0x8($4)
      bgezl      $3, .L800669FC
       addu      $5, $3, $0
      j          .L80066A00
       sw        $5, 0x0($16)
  .globl .L80066958
.L80066958:
      lw         $5, 0x8($4)
      j          .L80066A00
       sw        $5, 0x0($16)
  .globl .L80066964
.L80066964:
      ldc1       $f2, 0x8($4)
      mtc1       $0, $f0
      mtc1       $0, $f1
      c.lt.d     $f2, $f0
      nop
      bc1t       .L800669FC
       addu      $5, $0, $0
      lui        $1, %hi(D_800EED38)
      ldc1       $f0, %lo(D_800EED38)($1)
      c.lt.d     $f0, $f2
      nop
      bc1t       .L800669FC
       addiu     $5, $0, -0x1
      lui        $1, %hi(D_800EED40)
      ldc1       $f0, %lo(D_800EED40)($1)
      c.le.d     $f0, $f2
      nop
      bc1tl      .L800669C0
       sub.d     $f0, $f2, $f0
      trunc.w.d  $f4, $f2
      mfc1       $5, $f4
      j          .L80066A00
       sw        $5, 0x0($16)
  .L800669C0:
      lui        $2, (0x80000000 >> 16)
      trunc.w.d  $f4, $f0
      mfc1       $5, $f4
      j          .L800669FC
       or        $5, $5, $2
  .globl .L800669D4
.L800669D4:
      lw         $4, 0x8($4)
      beql       $4, $0, .L80066A00
       sw        $5, 0x0($16)
      addu       $5, $0, $0
      jal        func_800675B4
       addiu     $6, $0, 0xA
      j          .L800669FC
       addu      $5, $2, $0
  .L800669F4:
      j          .L80066A04
       addiu     $2, $0, -0x4
  .globl .L800669FC
.L800669FC:
      sw         $5, 0x0($16)
  .L80066A00:
      addiu      $2, $0, 0x1
  .L80066A04:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800668D4

.globl func_80066A14
.ent func_80066A14
func_80066A14:
      addiu      $29, $29, -0x20
      sdc1       $f20, 0x18($29)
      mtc1       $7, $f20
      mtc1       $6, $f21
      sw         $31, 0x14($29)
      beqz       $4, .L80066A50
       sw        $16, 0x10($29)
      lw         $3, 0x0($4)
      lui        $2, %hi(D_800EEC80)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L80066A70
       addiu     $2, $0, -0x4
      lw         $16, 0x4($4)
      bnez       $16, .L80066A58
       nop
  .L80066A50:
      j          .L80066A70
       addiu     $2, $0, -0x4
  .L80066A58:
      jal        func_800662C0
       addu      $4, $16, $0
      addiu      $2, $0, 0x1
      addiu      $3, $0, 0x4
      sw         $3, 0x0($16)
      sdc1       $f20, 0x8($16)
  .L80066A70:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      ldc1       $f20, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80066A14

.globl func_80066A84
.ent func_80066A84
func_80066A84:
      mtc1       $0, $f2
      mtc1       $0, $f3
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      beqz       $4, .L80066B5C
       sw        $31, 0x14($29)
      beqz       $16, .L80066B5C
       lui       $2, %hi(D_800EEC80)
      lw         $3, 0x0($4)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L80066B6C
       addiu     $2, $0, -0x4
      lw         $4, 0x4($4)
      beqz       $4, .L80066B6C
       nop
      lw         $3, 0x0($4)
      sltiu      $2, $3, 0x7
      beqz       $2, .L80066B5C
       lui       $2, %hi(jtbl_800EED48)
      addiu      $2, $2, %lo(jtbl_800EED48)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80066AEC
.L80066AEC:
      lbu        $2, 0x8($4)
      mtc1       $2, $f2
      cvt.d.w    $f2, $f2
      j          .L80066B64
       nop
  .globl .L80066B00
.L80066B00:
      lwc1       $f2, 0x8($4)
      cvt.d.w    $f2, $f2
      j          .L80066B64
       nop
  .globl .L80066B10
.L80066B10:
      lw         $2, 0x8($4)
      mtc1       $2, $f2
      cvt.d.w    $f2, $f2
      bgez       $2, .L80066B64
       nop
      lui        $1, %hi(D_800EED68)
      ldc1       $f0, %lo(D_800EED68)($1)
      j          .L80066B64
       add.d     $f2, $f2, $f0
  .globl .L80066B34
.L80066B34:
      ldc1       $f2, 0x8($4)
      j          .L80066B64
       nop
  .globl .L80066B40
.L80066B40:
      lw         $4, 0x8($4)
      beqz       $4, .L80066B64
       nop
      jal        func_80067000
       nop
      j          .L80066B64
       cvt.d.s   $f2, $f0
  .L80066B5C:
      j          .L80066B6C
       addiu     $2, $0, -0x4
  .globl .L80066B64
.L80066B64:
      sdc1       $f2, 0x0($16)
      addiu      $2, $0, 0x1
  .L80066B6C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80066A84

.globl func_80066B7C
.ent func_80066B7C
func_80066B7C:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      beqz       $4, .L80066BB8
       sw        $16, 0x10($29)
      beqz       $17, .L80066BB8
       lui       $2, %hi(D_800EEC80)
      lw         $3, 0x0($4)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L80066BEC
       addiu     $2, $0, -0x4
      lw         $16, 0x4($4)
      bnez       $16, .L80066BC0
       nop
  .L80066BB8:
      j          .L80066BEC
       addiu     $2, $0, -0x4
  .L80066BC0:
      jal        func_800662C0
       addu      $4, $16, $0
      addu       $4, $17, $0
      addiu      $2, $0, 0x5
      jal        func_800523C0
       sw        $2, 0x0($16)
      addiu      $3, $0, -0x5
      beqz       $2, .L80066BE8
       sw        $2, 0x8($16)
      addiu      $3, $0, 0x1
  .L80066BE8:
      addu       $2, $3, $0
  .L80066BEC:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80066B7C

.globl func_80066C00
.ent func_80066C00
func_80066C00:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $31, 0x1C($29)
      beqz       $4, .L80066C44
       sw        $16, 0x10($29)
      beqz       $18, .L80066C44
       lui       $2, %hi(D_800EEC80)
      lw         $3, 0x0($4)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L80066C9C
       addiu     $2, $0, -0x4
      lw         $16, 0x4($4)
      bnez       $16, .L80066C4C
       nop
  .L80066C44:
      j          .L80066C9C
       addiu     $2, $0, -0x4
  .L80066C4C:
      jal        func_800662C0
       addu      $4, $16, $0
      addiu      $4, $17, 0x1
      addu       $5, $0, $0
      addiu      $2, $0, 0x5
      jal        func_800524E8
       sw        $2, 0x0($16)
      bnez       $2, .L80066C78
       sw        $2, 0x8($16)
      j          .L80066C9C
       addiu     $2, $0, -0x5
  .L80066C78:
      beqz       $17, .L80066C8C
       addu      $4, $2, $0
      addu       $5, $18, $0
      jal        func_80013F00
       addu      $6, $17, $0
  .L80066C8C:
      lw         $3, 0x8($16)
      addiu      $2, $0, 0x1
      addu       $3, $3, $17
      sb         $0, 0x0($3)
  .L80066C9C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80066C00

.globl func_80066CB4
.ent func_80066CB4
func_80066CB4:
      addiu      $29, $29, -0x68
      sw         $17, 0x5C($29)
      addu       $17, $5, $0
      sw         $18, 0x60($29)
      addu       $18, $6, $0
      sw         $16, 0x58($29)
      addiu      $16, $29, 0x18
      beqz       $4, .L80066DCC
       sw        $31, 0x64($29)
      lw         $3, 0x0($4)
      lui        $2, %hi(D_800EEC80)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L80066E10
       addiu     $2, $0, -0x4
      lw         $7, 0x4($4)
      beqz       $7, .L80066E10
       nop
      sb         $0, 0x18($29)
      lw         $3, 0x0($7)
      sltiu      $2, $3, 0x7
      beqz       $2, .L80066DCC
       lui       $2, %hi(jtbl_800EED70)
      addiu      $2, $2, %lo(jtbl_800EED70)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80066D24
.L80066D24:
      lbu        $2, 0x8($7)
      beqz       $2, .L80066D38
       lui       $2, %hi(D_800EC628)
      j          .L80066D40
       addiu     $6, $2, %lo(D_800EC628)
  .L80066D38:
      lui        $2, %hi(D_800EC630)
      addiu      $6, $2, %lo(D_800EC630)
  .L80066D40:
      addiu      $4, $29, 0x18
      jal        func_800520A4
       addiu     $5, $0, 0x40
      j          .L80066DD4
       nop
  .globl .L80066D54
.L80066D54:
      addiu      $4, $29, 0x18
      addiu      $5, $0, 0x40
      lw         $7, 0x8($7)
      lui        $6, %hi(D_800EC6B8)
      jal        func_800520A4
       addiu     $6, $6, %lo(D_800EC6B8)
      j          .L80066DD4
       nop
  .globl .L80066D74
.L80066D74:
      addiu      $4, $29, 0x18
      addiu      $5, $0, 0x40
      lw         $7, 0x8($7)
      lui        $6, %hi(D_800EC6B4)
      jal        func_800520A4
       addiu     $6, $6, %lo(D_800EC6B4)
      j          .L80066DD4
       nop
  .globl .L80066D94
.L80066D94:
      addiu      $4, $29, 0x18
      addiu      $5, $0, 0x40
      lui        $6, %hi(D_800ED620)
      ldc1       $f0, 0x8($7)
      sdc1       $f0, 0x10($29)
      jal        func_800520A4
       addiu     $6, $6, %lo(D_800ED620)
      j          .L80066DD4
       nop
  .globl .L80066DB8
.L80066DB8:
      lw         $3, 0x8($7)
      bnel       $3, $0, .L80066DD4
       addu      $16, $3, $0
      j          .L80066DD4
       nop
  .L80066DCC:
      j          .L80066E10
       addiu     $2, $0, -0x4
  .globl .L80066DD4
.L80066DD4:
      beqz       $17, .L80066E04
       nop
      jal        func_80017780
       addu      $4, $16, $0
      addiu      $2, $2, 0x1
      slt        $2, $18, $2
      bnel       $2, $0, .L80066E10
       addiu     $2, $0, -0x9
      addu       $4, $17, $0
      addu       $5, $16, $0
      jal        func_80052310
       addu      $6, $18, $0
  .L80066E04:
      jal        func_80017780
       addu      $4, $16, $0
      addiu      $2, $2, 0x1
  .L80066E10:
      lw         $31, 0x64($29)
      lw         $18, 0x60($29)
      lw         $17, 0x5C($29)
      lw         $16, 0x58($29)
      jr         $31
       addiu     $29, $29, 0x68
.end func_80066CB4

.globl func_80066E28
.ent func_80066E28
func_80066E28:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      beqz       $4, .L80066E70
       sw        $16, 0x10($29)
      beqz       $17, .L80066EA4
       addiu     $2, $0, -0x4
      lw         $2, 0x0($17)
      beqz       $2, .L80066E70
       lui       $2, %hi(D_800EEC80)
      lw         $3, 0x0($4)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L80066EA4
       addiu     $2, $0, -0x4
      lw         $16, 0x4($4)
      bnez       $16, .L80066E78
       nop
  .L80066E70:
      j          .L80066EA4
       addiu     $2, $0, -0x4
  .L80066E78:
      jal        func_800662C0
       addu      $4, $16, $0
      addiu      $2, $0, 0x6
      sw         $2, 0x0($16)
      lw         $2, 0x0($17)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $17, $0
      bgtzl      $2, .L80066EA0
       sw        $17, 0x8($16)
  .L80066EA0:
      addiu      $2, $0, 0x1
  .L80066EA4:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80066E28

.globl func_80066EB8
.ent func_80066EB8
func_80066EB8:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      beqz       $4, .L80066F18
       sw        $16, 0x10($29)
      beqz       $17, .L80066F18
       lui       $2, %hi(D_800EEC80)
      lw         $3, 0x0($4)
      addiu      $2, $2, %lo(D_800EEC80)
      bne        $3, $2, .L80066F44
       addiu     $2, $0, -0x4
      lw         $4, 0x4($4)
      beqz       $4, .L80066F18
       addiu     $2, $0, 0x6
      lw         $3, 0x0($4)
      bnel       $3, $2, .L80066F40
       sw        $0, 0x0($17)
      lw         $16, 0x8($4)
      beqz       $16, .L80066F44
       addiu     $2, $0, -0x4
      lw         $2, 0x0($16)
      bnez       $2, .L80066F20
       nop
  .L80066F18:
      j          .L80066F44
       addiu     $2, $0, -0x4
  .L80066F20:
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      blez       $2, .L80066F3C
       addiu     $2, $0, 0x1
      j          .L80066F44
       sw        $16, 0x0($17)
  .L80066F3C:
      sw         $0, 0x0($17)
  .L80066F40:
      addu       $2, $0, $0
  .L80066F44:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80066EB8

.globl func_80066F58
.ent func_80066F58
func_80066F58:
      addiu      $29, $29, -0x20
      addiu      $4, $0, 0x8
      addu       $5, $0, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      jal        func_800524E8
       sw        $16, 0x10($29)
      addu       $17, $2, $0
      beqz       $17, .L80066FC8
       addu      $2, $0, $0
      addiu      $4, $0, 0x10
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $16, $2, $0
      beqz       $16, .L80066FBC
       addu      $4, $16, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x10
      addu       $2, $17, $0
      lui        $3, %hi(D_800EEC80)
      addiu      $3, $3, %lo(D_800EEC80)
      sw         $3, 0x0($2)
      j          .L80066FC8
       sw        $16, 0x4($2)
  .L80066FBC:
      jal        func_80052540
       addu      $4, $17, $0
      addu       $2, $0, $0
  .L80066FC8:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80066F58

.globl func_80066FDC
.ent func_80066FDC
func_80066FDC:
      sw         $18, 0x0($19)
      lw         $2, 0x0($2)
      jalr       $2
       addu      $4, $16, $0
      bgtzl      $2, .L8006700C
       sw        $16, 0x8($17)
      j          .L80067010
       sw        $18, 0x0($19)
      lw         $6, 0x8($16)
.end func_80066FDC

.globl func_80067000
.ent func_80067000
func_80067000:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80067040
  .L8006700C:
       addu      $5, $0, $0
  .L80067010:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80067000

.globl func_8006701C
.ent func_8006701C
func_8006701C:
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8006701C

.globl func_80067030
.ent func_80067030
func_80067030:
      bnez       $4, func_80067040
       lui       $2, (0x800F0000 >> 16)
      jr         $31
       addiu     $2, $0, -0x4
.end func_80067030

.globl func_80067040
.ent func_80067040
func_80067040:
      addiu      $29, $29, -0x50
      sdc1       $f22, 0x38($29)
      mtc1       $0, $f22
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $21, 0x24($29)
      addu       $21, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $0, $0
      sw         $17, 0x14($29)
      addu       $17, $18, $0
      sw         $20, 0x20($29)
      addu       $20, $18, $0
      sw         $19, 0x1C($29)
      addu       $19, $18, $0
      sdc1       $f20, 0x30($29)
      lui        $1, %hi(D_800EEDC4)
      lwc1       $f20, %lo(D_800EEDC4)($1)
      addiu      $2, $0, 0x20
      sw         $31, 0x28($29)
      sdc1       $f26, 0x48($29)
      sdc1       $f24, 0x40($29)
      lbu        $3, 0x0($16)
      j          .L800670AC
       mov.s     $f26, $f22
  .L800670A4:
      lbu        $3, 0x0($16)
      addiu      $2, $0, 0x20
  .L800670AC:
      beql       $3, $2, .L800670A4
       addiu     $16, $16, 0x1
      addiu      $2, $0, 0x9
      beql       $3, $2, .L800670A4
       addiu     $16, $16, 0x1
      addiu      $2, $0, 0xA
      beql       $3, $2, .L800670A4
       addiu     $16, $16, 0x1
      addiu      $2, $0, 0xD
      beql       $3, $2, .L800670A4
       addiu     $16, $16, 0x1
      lbu        $4, 0x0($16)
      addiu      $2, $0, 0x2D
      andi       $3, $4, 0xFF
      beq        $3, $2, .L800670F4
       addiu     $2, $0, 0x2B
      bne        $3, $2, .L800670FC
       nop
  .L800670F4:
      addu       $20, $4, $0
      addiu      $16, $16, 0x1
  .L800670FC:
      lbu        $3, 0x0($16)
      addiu      $2, $0, 0x30
      bne        $3, $2, .L80067120
       nop
      addu       $3, $2, $0
      addiu      $16, $16, 0x1
  .L80067114:
      lbu        $2, 0x0($16)
      beql       $2, $3, .L80067114
       addiu     $16, $16, 0x1
  .L80067120:
      lbu        $2, 0x0($16)
      beqz       $2, .L800672DC
       addiu     $2, $0, 0x2D
      lui        $1, %hi(D_800EEDC8)
      lwc1       $f24, %lo(D_800EEDC8)($1)
  .L80067134:
      lbu        $4, 0x0($16)
      jal        func_80012680
       nop
      beqz       $2, .L8006716C
       addiu     $2, $0, 0x2E
      lbu        $2, 0x0($16)
      mul.s      $f2, $f22, $f24
      addiu      $16, $16, 0x1
      addiu      $18, $0, 0x1
      addiu      $2, $2, -0x30
      mtc1       $2, $f0
      cvt.s.w    $f0, $f0
      j          .L80067134
       add.s     $f22, $f2, $f0
  .L8006716C:
      lbu        $3, 0x0($16)
      bne        $3, $2, .L800671C4
       nop
      addiu      $16, $16, 0x1
      lui        $1, %hi(D_800EEDCC)
      lwc1       $f24, %lo(D_800EEDCC)($1)
  .L80067184:
      lbu        $4, 0x0($16)
      jal        func_80012680
       nop
      beql       $2, $0, .L800671C0
       div.s     $f0, $f26, $f20
      mul.s      $f20, $f20, $f24
      lbu        $2, 0x0($16)
      mul.s      $f2, $f26, $f24
      addiu      $16, $16, 0x1
      addiu      $18, $0, 0x1
      addiu      $2, $2, -0x30
      mtc1       $2, $f0
      cvt.s.w    $f0, $f0
      j          .L80067184
       add.s     $f26, $f2, $f0
  .L800671C0:
      add.s      $f22, $f22, $f0
  .L800671C4:
      beqz       $18, .L800672D8
       addiu     $2, $0, 0x65
      lbu        $3, 0x0($16)
      beq        $3, $2, .L800671E0
       addiu     $2, $0, 0x45
      bne        $3, $2, .L800672DC
       addiu     $2, $0, 0x2D
  .L800671E0:
      addiu      $16, $16, 0x1
      lbu        $4, 0x0($16)
      addiu      $2, $0, 0x2D
      andi       $3, $4, 0xFF
      beq        $3, $2, .L80067200
       addiu     $2, $0, 0x2B
      bne        $3, $2, .L80067208
       nop
  .L80067200:
      addu       $19, $4, $0
      addiu      $16, $16, 0x1
  .L80067208:
      lbu        $4, 0x0($16)
      jal        func_80012680
       nop
      beqz       $2, .L80067248
       sll       $2, $17, 2
      addu       $2, $2, $17
      sll        $17, $2, 1
      lbu        $3, 0x0($16)
      addiu      $2, $17, -0x30
      addu       $17, $2, $3
      slti       $2, $17, 0x134
      bnel       $2, $0, .L80067208
       addiu     $16, $16, 0x1
      lui        $1, %hi(D_800EEDD0)
      lwc1       $f22, %lo(D_800EEDD0)($1)
      addu       $17, $0, $0
  .L80067248:
      lui        $1, %hi(D_800EEDD4)
      lwc1       $f20, %lo(D_800EEDD4)($1)
      slti       $2, $17, 0x65
      bnez       $2, .L8006727C
       slti      $2, $17, 0xB
      lui        $2, %hi(D_800EEDC0)
      lwc1       $f0, %lo(D_800EEDC0)($2)
      addiu      $17, $17, -0x64
  .L80067268:
      slti       $2, $17, 0x65
      mul.s      $f20, $f20, $f0
      beql       $2, $0, .L80067268
       addiu     $17, $17, -0x64
      slti       $2, $17, 0xB
  .L8006727C:
      bnez       $2, .L800672A0
       nop
      lui        $1, %hi(D_800EEDD8)
      lwc1       $f0, %lo(D_800EEDD8)($1)
      addiu      $17, $17, -0xA
  .L80067290:
      slti       $2, $17, 0xB
      mul.s      $f20, $f20, $f0
      beql       $2, $0, .L80067290
       addiu     $17, $17, -0xA
  .L800672A0:
      beqz       $17, .L800672C4
       addiu     $2, $0, 0x2D
      lui        $1, %hi(D_800EEDDC)
      lwc1       $f0, %lo(D_800EEDDC)($1)
      addiu      $17, $17, -0x1
  .L800672B4:
      mul.s      $f20, $f20, $f0
      bnel       $17, $0, .L800672B4
       addiu     $17, $17, -0x1
      addiu      $2, $0, 0x2D
  .L800672C4:
      bne        $19, $2, .L800672D4
       nop
      j          .L800672D8
       div.s     $f22, $f22, $f20
  .L800672D4:
      mul.s      $f22, $f22, $f20
  .L800672D8:
      addiu      $2, $0, 0x2D
  .L800672DC:
      beql       $20, $2, .L800672E4
       neg.s     $f22, $f22
  .L800672E4:
      bnel       $21, $0, .L800672EC
       sw        $16, 0x0($21)
  .L800672EC:
      mov.s      $f0, $f22
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      ldc1       $f26, 0x48($29)
      ldc1       $f24, 0x40($29)
      ldc1       $f22, 0x38($29)
      ldc1       $f20, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_80067040

.globl func_80067324
.ent func_80067324
func_80067324:
      j          .L80067354
       sw        $5, 0x0($16)
      lw         $4, 0x8($4)
      beql       $4, $0, .L80067354
       sw        $5, 0x0($16)
      jal        func_80024B40
       nop
.end func_80067324

.globl func_80067340
.ent func_80067340
func_80067340:
      addiu      $29, $29, -0x48
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $18, 0x28($29)
      addu       $18, $6, $0
  .L80067354:
      sw         $17, 0x24($29)
      addu       $17, $0, $0
      sw         $22, 0x38($29)
      addu       $22, $17, $0
      sw         $19, 0x2C($29)
      addu       $19, $17, $0
      sw         $31, 0x44($29)
      sw         $30, 0x40($29)
      sw         $23, 0x3C($29)
      sw         $21, 0x34($29)
      sw         $20, 0x30($29)
      sw         $5, 0x4C($29)
      sb         $0, 0x17($29)
  .L80067388:
      lbu        $3, 0x0($16)
      addiu      $2, $0, 0x20
      beql       $3, $2, .L80067388
       addiu     $16, $16, 0x1
      addiu      $2, $0, 0x9
      beql       $3, $2, .L80067388
       addiu     $16, $16, 0x1
      addiu      $2, $0, 0xA
      beql       $3, $2, .L80067388
       addiu     $16, $16, 0x1
      addiu      $2, $0, 0xD
      beql       $3, $2, .L80067388
       addiu     $16, $16, 0x1
      lbu        $4, 0x0($16)
      addiu      $2, $0, 0x2D
      andi       $3, $4, 0xFF
      beq        $3, $2, .L800673D8
       addiu     $2, $0, 0x2B
      bne        $3, $2, .L800673E0
       nop
  .L800673D8:
      sb         $4, 0x17($29)
      addiu      $16, $16, 0x1
  .L800673E0:
      lbu        $3, 0x0($16)
      addiu      $2, $0, 0x30
      bne        $3, $2, .L80067410
       addiu     $3, $0, 0xA
      addiu      $16, $16, 0x1
      lbu        $3, 0x0($16)
      addiu      $2, $0, 0x58
      beq        $3, $2, .L8006740C
       addiu     $2, $0, 0x78
      bne        $3, $2, .L80067410
       addiu     $3, $0, 0x8
  .L8006740C:
      addiu      $3, $0, 0x10
  .L80067410:
      beql       $18, $0, .L80067418
       addu      $18, $3, $0
  .L80067418:
      addiu      $2, $0, 0x10
      bne        $18, $2, .L80067430
       slti      $2, $18, 0xB
      beql       $3, $18, .L80067430
       addiu     $16, $16, 0x1
      slti       $2, $18, 0xB
  .L80067430:
      bnez       $2, .L80067440
       addiu     $4, $18, 0x2F
      addiu      $4, $0, 0x39
      addiu      $22, $18, 0x56
  .L80067440:
      beqz       $7, .L80067468
       lui       $21, (0x7FFFFFFF >> 16)
      ori        $21, $21, (0x7FFFFFFF & 0xFFFF)
      lbu        $8, 0x17($29)
      addiu      $2, $0, 0x2D
      beq        $8, $2, .L8006746C
       lui       $20, (0x80000000 >> 16)
      lui        $20, (0x7FFFFFFF >> 16)
      j          .L80067470
       ori       $20, $20, (0x7FFFFFFF & 0xFFFF)
  .L80067468:
      addiu      $20, $0, -0x1
  .L8006746C:
      addu       $21, $20, $0
  .L80067470:
      divu       $zero, $20, $18
      bnez       $18, .L80067480
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L80067480:
      mflo       $8
      lbu        $3, 0x0($16)
      beqz       $3, .L8006755C
       sw        $8, 0x18($29)
      bnel       $17, $0, .L80067574
       addu      $19, $21, $0
      andi       $30, $4, 0xFF
      andi       $23, $22, 0xFF
      andi       $3, $3, 0xFF
  .L800674A4:
      sltiu      $2, $3, 0x30
      bnez       $2, .L800674C4
       sltu      $2, $30, $3
      bnez       $2, .L800674C4
       nop
      lbu        $2, 0x0($16)
      j          .L80067514
       addiu     $3, $2, -0x30
  .L800674C4:
      lbu        $3, 0x0($16)
      sltiu      $2, $3, 0x61
      bnez       $2, .L800674E4
       sltu      $2, $23, $3
      bnez       $2, .L800674E4
       addu      $2, $3, $0
      j          .L80067514
       addiu     $3, $2, -0x57
  .L800674E4:
      lbu        $2, 0x0($16)
      sltiu      $2, $2, 0x41
      bnez       $2, .L8006755C
       nop
      jal        func_80017980
       andi      $4, $22, 0xFF
      lbu        $3, 0x0($16)
      andi       $2, $2, 0xFF
      sltu       $2, $2, $3
      bnez       $2, .L8006755C
       addu      $2, $3, $0
      addiu      $3, $2, -0x37
  .L80067514:
      lw         $8, 0x18($29)
      sltu       $2, $8, $19
      bnel       $2, $0, .L80067548
       addiu     $17, $17, 0x1
      mult       $19, $18
      mflo       $4
      subu       $2, $20, $4
      sltu       $2, $2, $3
      beql       $2, $0, .L80067544
       addu      $19, $4, $3
      j          .L80067548
       addiu     $17, $17, 0x1
  .L80067544:
      addiu      $16, $16, 0x1
  .L80067548:
      lbu        $3, 0x0($16)
      beqz       $3, .L8006755C
       nop
      beql       $17, $0, .L800674A4
       andi      $3, $3, 0xFF
  .L8006755C:
      bnel       $17, $0, .L80067574
       addu      $19, $21, $0
      lbu        $8, 0x17($29)
      addiu      $2, $0, 0x2D
      beql       $8, $2, .L80067574
       negu      $19, $19
  .L80067574:
      lw         $8, 0x4C($29)
      bnel       $8, $0, .L80067580
       sw        $16, 0x0($8)
  .L80067580:
      addu       $2, $19, $0
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
.end func_80067340

.globl func_800675B4
.ent func_800675B4
func_800675B4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80067340
       addu      $7, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800675B4

.globl func_800675D0
.ent func_800675D0
func_800675D0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80067340
       addiu     $7, $0, 0x1
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800675D0

.globl func_800675EC
.ent func_800675EC
func_800675EC:
      lbu        $2, 0x8($4)
      mtc1       $2, $f2
      cvt.d.w    $f2, $f2
      j          .L80067664
       nop
.end func_800675EC

.globl func_80067600
.ent func_80067600
func_80067600:
      jr         $31
       addu      $2, $0, $0
      j          .L80067664
       nop
      lw         $2, 0x8($4)
      mtc1       $2, $f2
      cvt.d.w    $f2, $f2
      bgez       $2, .L80067664
       nop
      lui        $1, %hi(D_800F02E8)
      ldc1       $f0, %lo(D_800F02E8)($1)
      j          .L80067664
       add.d     $f2, $f2, $f0
      ldc1       $f2, 0x8($4)
      j          .L80067664
       nop
.end func_80067600
