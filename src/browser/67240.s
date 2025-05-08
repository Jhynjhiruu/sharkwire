.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

.globl func_80067640
.ent func_80067640
func_80067640:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $4, 0x0($4)
      lw         $5, 0x0($5)
      jal        func_800175C0
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80067640

.globl .L80067664
.ent .L80067664
.L80067664:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $4, 0x0($4)
      lw         $5, 0x0($5)
      jal        func_800175C0
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end .L80067664

.globl func_80067688
.ent func_80067688
func_80067688:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $4, 0x0($4)
      lw         $5, 0x0($5)
      jal        func_800175C0
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80067688

.globl func_800676AC
.ent func_800676AC
func_800676AC:
      bnel       $4, $0, .L800676B4
       sw        $5, 0x10($4)
  .L800676B4:
      jr         $31
       nop
.end func_800676AC

.globl func_800676BC
.ent func_800676BC
func_800676BC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800676D8
       addiu     $7, $0, 0x1
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800676BC

.globl func_800676D8
.ent func_800676D8
func_800676D8:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $16, 0x10($29)
      addu       $16, $7, $0
      addiu      $4, $0, 0x14
      addu       $5, $0, $0
      sw         $31, 0x20($29)
      jal        func_80052504
       sw        $0, 0x0($17)
      addu       $3, $2, $0
      beqz       $3, .L80067730
       addiu     $2, $0, -0x5
      addiu      $2, $0, 0x1
      sw         $18, 0x4($3)
      sw         $19, 0x8($3)
      sb         $16, 0xC($3)
      sw         $3, 0x0($17)
  .L80067730:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800676D8

.globl func_8006774C
.ent func_8006774C
func_8006774C:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $7, $0
      addu       $5, $0, $0
      lui        $2, %hi(D_800EC694)
      sw         $16, 0x18($29)
      addiu      $16, $2, %lo(D_800EC694)
      addu       $6, $16, $0
      sw         $19, 0x24($29)
      lw         $19, 0x40($29)
      addu       $7, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $31, 0x28($29)
      sw         $0, 0x10($29)
      jal        func_8005446C
       addu      $4, $19, $0
      bnez       $2, .L800677C0
       addu      $4, $2, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      addu       $6, $16, $0
      jal        func_8005446C
       addu      $7, $5, $0
      bnez       $2, .L800677C0
       addu      $4, $2, $0
      lui        $2, %hi(D_800EC604)
      addiu      $2, $2, %lo(D_800EC604)
      addu       $4, $2, $0
  .L800677C0:
      jal        func_8006B338
       addiu     $5, $29, 0x10
      addu       $17, $2, $0
      beqz       $17, .L80067838
       lui       $4, %hi(D_800F0214)
      addiu      $4, $4, %lo(D_800F0214)
      jal        func_800689A4
       addu      $5, $17, $0
      addu       $16, $2, $0
      beqz       $16, .L80067830
       nop
      lw         $2, 0x10($29)
      lw         $4, 0x8($2)
      jal        func_80054040
       addu      $5, $16, $0
      addiu      $3, $0, -0x1
      beq        $2, $3, .L80067898
       addu      $2, $3, $0
      lw         $2, 0x10($29)
      sw         $2, 0xB4($16)
      lw         $2, 0x4($18)
      sw         $2, 0xAC($16)
      lw         $2, 0x8($18)
      sw         $2, 0xB0($16)
      lbu        $2, 0xC($18)
      sb         $2, 0xF2($16)
      j          .L80067840
       sw        $16, 0x0($18)
  .L80067830:
      jal        func_8006B494
       addu      $4, $17, $0
  .L80067838:
      j          .L80067898
       addiu     $2, $0, -0x5
  .L80067840:
      beqz       $19, .L80067860
       addu      $4, $19, $0
      lw         $2, 0x10($29)
      lw         $5, 0x8($2)
      jal        func_80054604
       addiu     $5, $5, 0x4B0
      j          .L8006786C
       nop
  .L80067860:
      lw         $2, 0x10($29)
      lw         $2, 0x8($2)
      sw         $0, 0x4B0($2)
  .L8006786C:
      beqz       $16, .L80067898
       addiu     $2, $0, 0x1
      lw         $2, 0xB0($16)
      beql       $2, $0, .L80067898
       addiu     $2, $0, 0x1
      lw         $4, 0xAC($16)
      lw         $5, 0xB4($16)
      lw         $2, 0x10($2)
      jalr       $2
       nop
      addiu      $2, $0, 0x1
  .L80067898:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8006774C

.globl func_800678B4
.ent func_800678B4
func_800678B4:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x0($18)
      bgtz       $2, .L800678E4
       addu      $19, $5, $0
      j          .L8006795C
       addu      $2, $0, $0
  .L800678E4:
      lw         $3, 0xA0($19)
      lw         $2, 0x10($3)
      blez       $2, .L80067958
       addu      $16, $0, $0
  .L800678F4:
      lw         $2, 0x8($3)
      sll        $17, $16, 2
      addu       $2, $17, $2
      lw         $4, 0x0($2)
      jal        func_80017780
       nop
      lw         $3, 0x0($18)
      addu       $6, $2, $0
      bne        $6, $3, .L80067940
       nop
      lw         $2, 0xA0($19)
      lw         $2, 0x8($2)
      lw         $4, 0xC($18)
      addu       $2, $17, $2
      lw         $5, 0x0($2)
      jal        func_800177C0
       nop
      beqz       $2, .L8006795C
       addiu     $2, $0, 0x1
  .L80067940:
      lw         $3, 0xA0($19)
      lw         $2, 0x10($3)
      addiu      $16, $16, 0x1
      slt        $2, $16, $2
      bnez       $2, .L800678F4
       nop
  .L80067958:
      addu       $2, $0, $0
  .L8006795C:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800678B4

.globl func_80067978
.ent func_80067978
func_80067978:
      addiu      $29, $29, -0x30
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $18, 0x18($29)
      addiu      $18, $0, 0x1
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      beqz       $20, .L800679B0
       sw        $16, 0x10($29)
      lw         $19, 0xDC($20)
      bnel       $19, $0, .L800679B8
       sw        $0, 0xDC($20)
  .L800679B0:
      j          .L80067A1C
       addiu     $2, $0, -0x4
  .L800679B8:
      jal        func_8005160C
       addu      $4, $19, $0
      addu       $16, $2, $0
      beqz       $16, .L80067A08
       nop
      jal        func_80051620
       addu      $4, $19, $0
      addu       $17, $16, $2
      sltu       $2, $16, $17
      beqz       $2, .L80067A08
       addiu     $21, $0, 0x1
  .L800679E4:
      lbu        $5, 0x0($16)
      addiu      $16, $16, 0x1
      jal        func_80067F68
       addu      $4, $20, $0
      addu       $18, $2, $0
      bne        $18, $21, .L80067A08
       sltu      $2, $16, $17
      bnez       $2, .L800679E4
       nop
  .L80067A08:
      beqz       $19, .L80067A1C
       addu      $2, $18, $0
      jal        func_800517B4
       addu      $4, $19, $0
      addu       $2, $18, $0
  .L80067A1C:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80067978

.globl func_80067A40
.ent func_80067A40
func_80067A40:
      addiu      $29, $29, -0x38
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $23, 0x2C($29)
      addu       $23, $5, $0
      sw         $31, 0x30($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $16, 0xD4($18)
      lw         $19, 0xD0($18)
      lw         $20, 0xD8($18)
      addiu      $17, $0, 0x1
      sltu       $2, $16, $20
      beqz       $2, .L80067AFC
       sw        $0, 0x0($23)
      addiu      $22, $0, 0x3
      addu       $21, $17, $0
  .L80067A94:
      beql       $16, $0, .L80067AF0
       addiu     $16, $16, 0x1
      lbu        $2, 0xF1($18)
      bnel       $2, $0, .L80067AF0
       addiu     $16, $16, 0x1
      lw         $2, 0xDC($18)
      beqz       $2, .L80067AD0
       nop
      jal        func_80067978
       addu      $4, $18, $0
      addu       $17, $2, $0
      beql       $17, $22, .L80067B90
       addiu     $16, $16, 0x1
      bne        $17, $21, .L80067BAC
       nop
  .L80067AD0:
      lbu        $5, 0x0($16)
      jal        func_80067F68
       addu      $4, $18, $0
      addu       $17, $2, $0
      beq        $17, $22, .L80067B90
       addiu     $16, $16, 0x1
      bne        $17, $21, .L80067BAC
       nop
  .L80067AF0:
      sltu       $2, $16, $20
      bnez       $2, .L80067A94
       nop
  .L80067AFC:
      lw         $2, 0xA4($18)
      lw         $2, 0x28($2)
      beqz       $2, .L80067B18
       nop
      lw         $4, 0xA8($18)
      jalr       $2
       nop
  .L80067B18:
      lw         $2, 0xB4($18)
      lw         $16, 0x8($2)
      beqz       $16, .L80067BAC
       addiu     $2, $0, 0x3
      lw         $3, 0x14($16)
      bnez       $3, .L80067B50
       sw        $2, 0x2C0($16)
      addiu      $4, $0, 0x8
      jal        func_80052504
       addu      $5, $0, $0
      beqz       $2, .L80067B80
       sw        $2, 0x14($16)
      j          .L80067BB4
       sw        $19, 0x0($2)
  .L80067B50:
      addu       $16, $3, $0
      lw         $2, 0x4($16)
      beqz       $2, .L80067B70
       addiu     $4, $0, 0x8
  .L80067B60:
      lw         $16, 0x4($16)
      lw         $2, 0x4($16)
      bnez       $2, .L80067B60
       addiu     $4, $0, 0x8
  .L80067B70:
      jal        func_80052504
       addu      $5, $0, $0
      bnez       $2, .L80067B88
       sw        $2, 0x4($16)
  .L80067B80:
      j          .L80067BB4
       addiu     $17, $0, -0x5
  .L80067B88:
      j          .L80067BB4
       sw        $19, 0x0($2)
  .L80067B90:
      addiu      $2, $0, 0x1
      addu       $3, $2, $0
      sw         $19, 0xD0($18)
      sw         $16, 0xD4($18)
      sw         $20, 0xD8($18)
      j          .L80067BB8
       sw        $3, 0x0($23)
  .L80067BAC:
      jal        func_8004F810
       addu      $4, $19, $0
  .L80067BB4:
      addu       $2, $17, $0
  .L80067BB8:
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
.end func_80067A40

.globl func_80067BE4
.ent func_80067BE4
func_80067BE4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $4, 0x0($4)
      beqz       $4, .L80067C1C
       addu      $5, $7, $0
      lw         $2, 0x4($6)
      lw         $3, 0x0($6)
      sw         $6, 0xD0($4)
      addu       $2, $3, $2
      sw         $2, 0xD8($4)
      jal        func_80067A40
       sw        $3, 0xD4($4)
      j          .L80067C20
       nop
  .L80067C1C:
      addiu      $2, $0, -0x5
  .L80067C20:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80067BE4

.globl func_80067C2C
.ent func_80067C2C
func_80067C2C:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $31, 0x2C($29)
      sw         $18, 0x20($29)
      sw         $16, 0x18($29)
      lw         $2, 0x10($19)
      lw         $18, 0x0($19)
      beqz       $2, .L80067C88
       addu      $20, $6, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      lw         $4, 0x4($19)
      addu       $7, $5, $0
      sw         $2, 0x10($29)
      jal        func_8007FBBC
       addiu     $4, $4, 0x14
      lw         $4, 0x4($19)
      jal        func_8007E070
       nop
  .L80067C88:
      beqz       $18, .L80067DC0
       nop
  .L80067C90:
      lw         $2, 0xC8($18)
  .L80067C94:
      beqz       $2, .L80067CCC
       addiu     $2, $0, -0x1
      lw         $16, 0xC8($18)
      lw         $5, 0x4($16)
      jal        func_80068C78
       addu      $4, $18, $0
      lw         $2, 0xC8($18)
      bne        $16, $2, .L80067C94
       addu      $4, $16, $0
      lw         $2, 0x0($16)
      jal        func_80052540
       sw        $2, 0xC8($18)
      j          .L80067C90
       nop
  .L80067CCC:
      beq        $17, $2, .L80067D14
       nop
      bgez       $17, .L80067CF0
       addiu     $2, $0, 0x1
      addiu      $2, $0, -0x7
      beq        $17, $2, .L80067D14
       nop
      j          .L80067D28
       nop
  .L80067CF0:
      bne        $17, $2, .L80067D28
       nop
      lw         $2, 0xA4($18)
      lw         $4, 0xA8($18)
      lw         $2, 0x4($2)
      jalr       $2
       nop
      j          .L80067D28
       nop
  .L80067D14:
      lw         $2, 0xA4($18)
      lw         $4, 0xA8($18)
      lw         $2, 0x8($2)
      jalr       $2
       addu      $5, $17, $0
  .L80067D28:
      lw         $2, 0xB4($18)
      lw         $4, 0x8($2)
      jal        func_80054040
       addu      $5, $0, $0
      lw         $2, 0xB4($18)
      lw         $2, 0x8($2)
      lw         $4, 0x8($2)
      jal        func_80089DEC
       nop
      lw         $4, 0xB4($18)
      jal        func_80054120
       addu      $5, $17, $0
      lw         $2, 0xB0($18)
      beqz       $2, .L80067D78
       nop
      lw         $4, 0xAC($18)
      lw         $5, 0xB4($18)
      lw         $2, 0x14($2)
      jalr       $2
       addu      $6, $17, $0
  .L80067D78:
      lw         $4, 0xC4($18)
      addu       $17, $0, $0
      jal        func_8008057C
       addu      $16, $18, $0
  .L80067D88:
      lw         $4, 0x0($16)
      addiu      $16, $16, 0x4
      jal        func_80052540
       addiu     $17, $17, 0x1
      slti       $2, $17, 0x20
      bnez       $2, .L80067D88
       nop
      lw         $4, 0xDC($18)
      beqz       $4, .L80067DB8
       nop
      jal        func_800517B4
       nop
  .L80067DB8:
      jal        func_80052540
       addu      $4, $18, $0
  .L80067DC0:
      jal        func_80052540
       addu      $4, $19, $0
      sw         $0, 0x0($20)
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x30
.end func_80067C2C

.globl func_80067DF0
.ent func_80067DF0
func_80067DF0:
      addiu      $29, $29, -0x130
      sw         $18, 0x128($29)
      addu       $18, $4, $0
      sw         $17, 0x124($29)
      addu       $17, $6, $0
      sw         $31, 0x12C($29)
      sw         $16, 0x120($29)
      lw         $6, 0x0($18)
      slt        $2, $17, $6
      beqz       $2, .L80067ECC
       addu      $16, $5, $0
      addiu      $2, $17, 0xFE
      slt        $2, $2, $6
      bnez       $2, .L80067F14
       addu      $2, $0, $0
      addiu      $4, $29, 0x18
      lw         $5, 0xC($18)
      subu       $6, $6, $17
      jal        func_80052310
       addu      $5, $5, $17
      lw         $2, 0x0($18)
      subu       $2, $2, $17
      addu       $2, $29, $2
      sb         $0, 0x18($2)
      lbu        $3, 0x18($29)
      addiu      $2, $0, 0x23
      bne        $3, $2, .L80067E9C
       addiu     $4, $29, 0x118
      lw         $2, 0x0($18)
      addiu      $16, $17, 0x1
      slt        $2, $16, $2
      beqz       $2, .L80067F14
       addu      $2, $0, $0
      jal        func_80024000
       addiu     $4, $29, 0x19
      addu       $4, $2, $0
      beqz       $4, .L80067ECC
       addiu     $2, $0, 0x1
      lw         $3, 0xC($18)
      addu       $3, $3, $17
      sb         $4, 0x0($3)
      j          .L80067F14
       sw        $16, 0x0($18)
  .L80067E9C:
      addiu      $2, $29, 0x19
      sw         $2, 0x118($29)
      lui        $2, %hi(func_80067640)
      addiu      $2, $2, %lo(func_80067640)
      sw         $2, 0x10($29)
      lw         $5, 0x8($16)
      lw         $6, 0x10($16)
      jal        func_80053500
       addiu     $7, $0, 0x4
      addu       $3, $2, $0
      bnez       $3, .L80067ED4
       nop
  .L80067ECC:
      j          .L80067F14
       addu      $2, $0, $0
  .L80067ED4:
      lw         $2, 0x8($16)
      lw         $4, 0xC($18)
      subu       $2, $3, $2
      sra        $2, $2, 2
      lw         $3, 0xC($16)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $16, 0x0($2)
      addu       $4, $4, $17
      jal        func_80017640
       addu      $5, $16, $0
      jal        func_80017780
       addu      $4, $16, $0
      addu       $3, $17, $2
      addiu      $2, $0, 0x1
      sw         $3, 0x0($18)
  .L80067F14:
      lw         $31, 0x12C($29)
      lw         $18, 0x128($29)
      lw         $17, 0x124($29)
      lw         $16, 0x120($29)
      jr         $31
       addiu     $29, $29, 0x130
.end func_80067DF0

.globl func_80067F2C
.ent func_80067F2C
func_80067F2C:
      addiu      $29, $29, -0x30
      addu       $3, $4, $0
      lui        $2, %hi(.L80067664)
      addiu      $2, $2, %lo(.L80067664)
      addiu      $4, $29, 0x18
      sw         $31, 0x28($29)
      sw         $5, 0x18($29)
      sw         $2, 0x10($29)
      lw         $5, 0x0($3)
      lw         $6, 0x4($3)
      jal        func_80053500
       addiu     $7, $0, 0x10
      lw         $31, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80067F2C

.globl func_80067F68
.ent func_80067F68
func_80067F68:
      addiu      $29, $29, -0x30
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $31, 0x28($29)
      sw         $19, 0x24($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      lw         $2, 0xB8($18)
      addiu      $19, $0, 0x1
      sb         $5, 0x10($29)
      addu       $2, $2, $19
      sw         $2, 0xB8($18)
      lw         $2, 0xA4($18)
      lw         $16, 0xA0($18)
      lw         $2, 0x24($2)
      lw         $17, 0xC4($18)
      beqz       $2, .L80067FC4
       addiu     $5, $29, 0x10
      lw         $4, 0xA8($18)
      jalr       $2
       addu      $6, $19, $0
      bltz       $2, .L80068988
       addiu     $2, $0, -0x1
  .L80067FC4:
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0xD
      bne        $3, $2, .L80067FFC
       nop
      lw         $2, 0xA4($18)
      lw         $2, 0x24($2)
      beqz       $2, .L80067FFC
       lui       $5, %hi(D_800ECC4C)
      lw         $4, 0xA8($18)
      addiu      $5, $5, %lo(D_800ECC4C)
      jalr       $2
       addiu     $6, $0, 0x1
      bltz       $2, .L80068988
       addiu     $2, $0, -0x1
  .L80067FFC:
      lw         $3, 0xE8($18)
      sltiu      $2, $3, 0x15
      beqz       $2, .L80068984
       lui       $2, %hi(jtbl_800EEE00)
      addiu      $2, $2, %lo(jtbl_800EEE00)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80068024
.L80068024:
      lbu        $2, 0xF0($18)
      bnez       $2, .L80068070
       addiu     $2, $0, 0x26
      lbu        $3, 0x10($29)
      bne        $3, $2, .L80068078
       addiu     $2, $0, 0x3C
      lw         $2, 0xC8($18)
      beql       $2, $0, .L80068068
       addiu     $2, $0, 0x8
      lw         $2, 0x4($2)
      beql       $2, $0, .L80068078
       addiu     $2, $0, 0x3C
      lw         $2, 0xC($2)
      addiu      $2, $2, -0x3
      sltiu      $2, $2, 0x2
      beqz       $2, .L80068074
       addiu     $2, $0, 0x8
  .L80068068:
      j          .L80068980
       sw        $0, 0x0($17)
  .L80068070:
      lbu        $3, 0x10($29)
  .L80068074:
      addiu      $2, $0, 0x3C
  .L80068078:
      bne        $3, $2, .L800680C0
       nop
      sw         $0, 0x0($17)
      lw         $2, 0xC8($18)
      beql       $2, $0, .L80068980
       addiu     $2, $0, 0x2
      lw         $2, 0x4($2)
      beqz       $2, .L800680B8
       addiu     $4, $0, 0x1
      lw         $3, 0xC($2)
      beq        $3, $4, .L800683B0
       addiu     $2, $0, 0x3
      beq        $3, $2, .L800683B0
       addiu     $2, $0, 0x2
      j          .L80068984
       sw        $2, 0xE8($18)
  .L800680B8:
      j          .L80068980
       addiu     $2, $0, 0x2
  .L800680C0:
      lbu        $2, 0xF0($18)
      bnez       $2, .L80068988
       addu      $2, $19, $0
      lw         $4, 0xA8($18)
      lw         $2, 0xA4($18)
      lbu        $5, 0x10($29)
      lw         $2, 0xC($2)
      jalr       $2
       nop
      j          .L80068984
       addu      $19, $2, $0
  .globl .L800680EC
.L800680EC:
      lbu        $5, 0x10($29)
      jal        func_800805B0
       addu      $4, $17, $0
      addu       $19, $2, $0
      addiu      $2, $0, 0x1
      bne        $19, $2, .L80068988
       addu      $2, $19, $0
      lbu        $4, 0x10($29)
      jal        func_80017980
       nop
      lw         $3, 0x0($17)
      beq        $3, $19, .L80068144
       addu      $4, $2, $0
      lw         $2, 0xC8($18)
      lw         $2, 0x4($2)
      lw         $2, 0x0($2)
      addu       $2, $3, $2
      lbu        $2, -0x2($2)
      bne        $4, $2, .L80068150
       addu      $2, $19, $0
      j          .L80068988
       nop
  .L80068144:
      addiu      $2, $0, 0x2F
      beq        $4, $2, .L80068988
       addu      $2, $19, $0
  .L80068150:
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x3E
      bne        $3, $2, .L800681A0
       nop
      lw         $2, 0xC8($18)
      lw         $5, 0x4($2)
      lw         $2, 0x0($17)
      lw         $3, 0x0($5)
      addu       $2, $2, $3
      lbu        $2, -0x2($2)
      bnez       $2, .L800681A0
       nop
      jal        func_80068C78
       addu      $4, $18, $0
      addu       $19, $2, $0
      addiu      $2, $0, -0x1
      sw         $0, 0x0($17)
      sw         $2, 0xC0($18)
  .L80068198:
      j          .L80068984
       sw        $0, 0xE8($18)
  .L800681A0:
      lbu        $2, 0xF0($18)
      bnez       $2, .L800681C4
       nop
      lw         $2, 0xA4($18)
      lw         $4, 0xA8($18)
      lw         $2, 0xC($2)
      jalr       $2
       addiu     $5, $0, 0x3C
      addu       $19, $2, $0
  .L800681C4:
      lw         $2, 0x0($17)
      blez       $2, .L80068198
       addu      $16, $0, $0
  .L800681D0:
      lbu        $2, 0xF0($18)
      bnez       $2, .L80068200
       nop
      lw         $2, 0xC($17)
      lw         $4, 0xA8($18)
      lw         $3, 0xA4($18)
      addu       $2, $2, $16
      lbu        $5, 0x0($2)
      lw         $2, 0xC($3)
      jalr       $2
       nop
      addu       $19, $2, $0
  .L80068200:
      lw         $2, 0x0($17)
      addiu      $16, $16, 0x1
      slt        $2, $16, $2
      bnez       $2, .L800681D0
       nop
      j          .L80068984
       sw        $0, 0xE8($18)
  .globl .L8006821C
.L8006821C:
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x23
      bne        $3, $2, .L80068234
       addiu     $2, $0, 0xE
      j          .L80068980
       addiu     $2, $0, 0x9
  .L80068234:
      sw         $2, 0xE8($18)
  .globl .L80068238
.L80068238:
      lbu        $4, 0x10($29)
      jal        func_80012640
       nop
      beqz       $2, .L8006826C
       addu      $4, $17, $0
      jal        func_800678B4
       addu      $5, $18, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L8006826C
       addu      $4, $17, $0
      lbu        $5, 0x10($29)
      j          .L80068840
       nop
  .L8006826C:
      jal        func_80080654
       addu      $4, $17, $0
      addu       $19, $2, $0
      addiu      $2, $0, 0x1
      bne        $19, $2, .L80068988
       addu      $2, $19, $0
      jal        func_80068B88
       addu      $4, $18, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80068804
       sw        $0, 0xE8($18)
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x3B
      beq        $3, $2, .L80068988
       addu      $2, $19, $0
      j          .L80068804
       nop
  .globl .L800682B0
.L800682B0:
      lbu        $4, 0x10($29)
      jal        func_80012640
       nop
      beqz       $2, .L800682D0
       addu      $4, $17, $0
      lbu        $5, 0x10($29)
      j          .L80068840
       nop
  .L800682D0:
      jal        func_80080654
       addu      $4, $17, $0
      addu       $19, $2, $0
      addiu      $2, $0, 0x1
      bne        $19, $2, .L80068988
       addu      $2, $19, $0
      lw         $4, 0xC($17)
      jal        func_80024000
       nop
      addu       $5, $2, $0
      beql       $5, $0, .L80068328
       sw        $0, 0xE8($18)
      lbu        $2, 0xF0($18)
      bnel       $2, $0, .L80068328
       sw        $0, 0xE8($18)
      lw         $2, 0xA4($18)
      lw         $4, 0xA8($18)
      lw         $2, 0xC($2)
      jalr       $2
       andi      $5, $5, 0xFF
      addu       $19, $2, $0
      sw         $0, 0xE8($18)
  .L80068328:
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x3B
      beq        $3, $2, .L80068984
       addu      $5, $3, $0
      j          .L80068808
       nop
  .globl .L80068340
.L80068340:
      lbu        $4, 0x10($29)
      jal        func_80012640
       nop
      bnez       $2, .L8006882C
       addiu     $2, $0, 0x21
      lbu        $3, 0x10($29)
      bne        $3, $2, .L80068368
       addiu     $2, $0, 0x2F
      j          .L80068980
       addiu     $2, $0, 0x10
  .L80068368:
      beq        $3, $2, .L80068980
       addiu     $2, $0, 0xD
      jal        func_80080654
       addu      $4, $17, $0
      addu       $19, $2, $0
      addiu      $2, $0, 0x1
      bne        $19, $2, .L80068988
       addu      $2, $19, $0
      lw         $5, 0xC($17)
      jal        func_80067F2C
       addu      $4, $16, $0
      bnel       $2, $0, .L800683B8
       sw        $2, 0xBC($18)
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x3E
      beq        $3, $2, .L800683B0
       addu      $4, $0, $0
      addiu      $4, $0, 0xF
  .L800683B0:
      j          .L80068984
       sw        $4, 0xE8($18)
  .L800683B8:
      lw         $2, 0x8($2)
      blez       $2, .L800683E4
       addu      $3, $0, $0
      addu       $2, $18, $3
  .L800683C8:
      sb         $0, 0x80($2)
      lw         $2, 0xBC($18)
      lw         $2, 0x8($2)
      addiu      $3, $3, 0x1
      slt        $2, $3, $2
      bnez       $2, .L800683C8
       addu      $2, $18, $3
  .L800683E4:
      addiu      $2, $0, -0x1
      sw         $0, 0x0($17)
      sw         $2, 0xC0($18)
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x3E
      bne        $3, $2, .L80068980
       addiu     $2, $0, 0x3
      lw         $2, 0xBC($18)
      lw         $2, 0x0($2)
      beql       $2, $0, .L80068984
       sw        $0, 0xE8($18)
      jal        func_80068DE4
       addu      $4, $18, $0
      j          .L80068198
       addu      $19, $2, $0
  .globl .L80068420
.L80068420:
      lbu        $3, 0x10($29)
      sltiu      $2, $3, 0x21
      bnez       $2, .L80068988
       addu      $2, $19, $0
      addiu      $2, $0, 0x3E
      bne        $3, $2, .L8006845C
       nop
      lw         $2, 0xBC($18)
      lw         $2, 0x0($2)
      beql       $2, $0, .L80068984
       sw        $0, 0xE8($18)
      jal        func_80068DE4
       addu      $4, $18, $0
      j          .L80068198
       addu      $19, $2, $0
  .L8006845C:
      lbu        $4, 0x10($29)
      jal        func_80017980
       nop
      addu       $4, $17, $0
      jal        func_800805B0
       andi      $5, $2, 0xFF
      addu       $19, $2, $0
      j          .L80068980
       addiu     $2, $0, 0x4
  .globl .L80068480
.L80068480:
      lbu        $3, 0x10($29)
      sltiu      $2, $3, 0x21
      bnez       $2, .L800684A0
       addiu     $2, $0, 0x3E
      beq        $3, $2, .L800684A0
       addiu     $2, $0, 0x3D
      bne        $3, $2, .L8006882C
       nop
  .L800684A0:
      jal        func_80080654
       addu      $4, $17, $0
      addu       $19, $2, $0
      addiu      $16, $0, 0x1
      bne        $19, $16, .L80068988
       addu      $2, $19, $0
      lw         $5, 0xC($17)
      jal        func_80068A58
       addu      $4, $18, $0
      addu       $19, $2, $0
      bne        $19, $16, .L80068988
       addu      $2, $19, $0
      sw         $0, 0x0($17)
      lbu        $4, 0x10($29)
      addiu      $2, $0, 0x3E
      bne        $4, $2, .L80068504
       addiu     $2, $0, 0x3D
      lw         $2, 0xBC($18)
      lw         $2, 0x0($2)
      beql       $2, $0, .L80068984
       sw        $0, 0xE8($18)
      jal        func_80068DE4
       addu      $4, $18, $0
      j          .L80068198
       addu      $19, $2, $0
  .L80068504:
      bne        $4, $2, .L80068510
       addiu     $3, $0, 0x5
      addiu      $3, $0, 0x6
  .L80068510:
      j          .L80068984
       sw        $3, 0xE8($18)
  .globl .L80068518
.L80068518:
      lbu        $3, 0x10($29)
      sltiu      $2, $3, 0x21
      bnez       $2, .L80068988
       addu      $2, $19, $0
      addiu      $2, $0, 0x3E
      bne        $3, $2, .L80068554
       addiu     $2, $0, 0x3D
      lw         $2, 0xBC($18)
      lw         $2, 0x0($2)
      beql       $2, $0, .L80068984
       sw        $0, 0xE8($18)
      jal        func_80068DE4
       addu      $4, $18, $0
      j          .L80068198
       addu      $19, $2, $0
  .L80068554:
      bne        $3, $2, .L80068564
       nop
      j          .L80068980
       addiu     $2, $0, 0x6
  .L80068564:
      lbu        $4, 0x10($29)
      jal        func_80017980
       nop
      addu       $4, $17, $0
      jal        func_800805B0
       andi      $5, $2, 0xFF
      addu       $19, $2, $0
      j          .L80068980
       addiu     $2, $0, 0x4
  .globl .L80068588
.L80068588:
      lbu        $3, 0x10($29)
      sltiu      $2, $3, 0x21
      bnez       $2, .L80068988
       addu      $2, $19, $0
      addiu      $2, $0, 0x3E
      bne        $3, $2, .L800685C4
       addiu     $2, $0, 0x27
      lw         $2, 0xBC($18)
      lw         $2, 0x0($2)
      beql       $2, $0, .L80068984
       sw        $0, 0xE8($18)
      jal        func_80068DE4
       addu      $4, $18, $0
      j          .L80068198
       addu      $19, $2, $0
  .L800685C4:
      bne        $3, $2, .L800685D4
       addiu     $2, $0, 0x22
      j          .L80068980
       addiu     $2, $0, 0xA
  .L800685D4:
      bne        $3, $2, .L800685E4
       nop
      j          .L80068980
       addiu     $2, $0, 0xB
  .L800685E4:
      lbu        $5, 0x10($29)
      jal        func_800805B0
       addu      $4, $17, $0
      addu       $19, $2, $0
      j          .L80068980
       addiu     $2, $0, 0x7
  .globl .L800685FC
.L800685FC:
      lbu        $3, 0x10($29)
      sltiu      $2, $3, 0x21
      bnez       $2, .L80068614
       addiu     $2, $0, 0x3E
      bne        $3, $2, .L80068678
       addiu     $2, $0, 0x26
  .L80068614:
      jal        func_80080654
       addu      $4, $17, $0
      addu       $19, $2, $0
      addiu      $16, $0, 0x1
      bne        $19, $16, .L80068988
       addu      $2, $19, $0
      lw         $5, 0xC($17)
      jal        func_80068B0C
       addu      $4, $18, $0
      addu       $19, $2, $0
      bne        $19, $16, .L80068988
       addu      $2, $19, $0
      sw         $0, 0x0($17)
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x3E
      bne        $3, $2, .L80068980
       addiu     $2, $0, 0x3
      lw         $2, 0xBC($18)
      lw         $2, 0x0($2)
      beql       $2, $0, .L80068984
       sw        $0, 0xE8($18)
      jal        func_80068DE4
       addu      $4, $18, $0
      j          .L80068198
       addu      $19, $2, $0
  .L80068678:
      bne        $3, $2, .L80068690
       addu      $4, $17, $0
      lbu        $5, 0x10($29)
      lw         $2, 0x0($17)
      j          .L8006877C
       sw        $2, 0xCC($18)
  .L80068690:
      lbu        $5, 0x10($29)
      j          .L80068840
       nop
  .globl .L8006869C
.L8006869C:
      lw         $4, 0xE8($18)
      addiu      $2, $0, 0xA
      bne        $4, $2, .L800686BC
       addiu     $2, $0, 0xB
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x27
      beq        $3, $2, .L800686D0
       addiu     $2, $0, 0xB
  .L800686BC:
      bne        $4, $2, .L8006870C
       addiu     $2, $0, 0x22
      lbu        $3, 0x10($29)
      bne        $3, $2, .L80068714
       addiu     $2, $0, 0xD
  .L800686D0:
      jal        func_80080654
       addu      $4, $17, $0
      addu       $19, $2, $0
      addiu      $16, $0, 0x1
      bne        $19, $16, .L80068988
       addu      $2, $19, $0
      lw         $5, 0xC($17)
      jal        func_80068B0C
       addu      $4, $18, $0
      addu       $19, $2, $0
      bne        $19, $16, .L80068988
       addu      $2, $19, $0
      addiu      $2, $0, 0x3
      j          .L80068980
       sw        $0, 0x0($17)
  .L8006870C:
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0xD
  .L80068714:
      beq        $3, $2, .L80068724
       addiu     $2, $0, 0xA
      bne        $3, $2, .L80068758
       nop
  .L80068724:
      lw         $4, 0xC0($18)
      addiu      $2, $0, -0x1
      beq        $4, $2, .L80068984
       lui       $5, %hi(D_800ED23C)
      lw         $2, 0xBC($18)
      lw         $3, 0x4($2)
      sll        $2, $4, 2
      addu       $2, $2, $3
      lw         $4, 0x0($2)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED23C)
      bnez       $2, .L80068988
       addu      $2, $19, $0
  .L80068758:
      lw         $6, 0x0($17)
      slti       $2, $6, 0x2710
      beqz       $2, .L80068984
       addiu     $2, $0, 0x26
      lbu        $3, 0x10($29)
      bne        $3, $2, .L8006879C
       addu      $5, $3, $0
      addu       $4, $17, $0
      sw         $6, 0xCC($18)
  .L8006877C:
      jal        func_800805B0
       nop
      addu       $19, $2, $0
      lw         $3, 0xE8($18)
      addiu      $2, $0, 0xC
      sw         $2, 0xE8($18)
      j          .L80068984
       sw        $3, 0xEC($18)
  .L8006879C:
      lbu        $5, 0x10($29)
      j          .L80068840
       addu      $4, $17, $0
  .globl .L800687A8
.L800687A8:
      lbu        $4, 0x10($29)
      jal        func_80012640
       nop
      bnez       $2, .L800687C8
       addiu     $2, $0, 0x23
      lbu        $3, 0x10($29)
      bne        $3, $2, .L800687E4
       nop
  .L800687C8:
      lw         $2, 0x0($17)
      slti       $2, $2, 0x2710
      beqz       $2, .L80068984
       addu      $4, $17, $0
      lbu        $5, 0x10($29)
      j          .L80068840
       nop
  .L800687E4:
      lw         $5, 0xA0($18)
      lw         $6, 0xCC($18)
      jal        func_80067DF0
       addu      $4, $17, $0
      lw         $3, 0xEC($18)
      andi       $2, $2, 0xFF
      bnez       $2, .L80068984
       sw        $3, 0xE8($18)
  .L80068804:
      lbu        $5, 0x10($29)
  .L80068808:
      jal        func_80067F68
       addu      $4, $18, $0
      j          .L80068988
       nop
  .globl .L80068818
.L80068818:
      lbu        $4, 0x10($29)
      jal        func_80012640
       nop
      beqz       $2, .L80068850
       nop
  .L8006882C:
      lbu        $4, 0x10($29)
      jal        func_80017980
       nop
      addu       $4, $17, $0
      andi       $5, $2, 0xFF
  .L80068840:
      jal        func_800805B0
       nop
      j          .L80068984
       addu      $19, $2, $0
  .L80068850:
      jal        func_80080654
       addu      $4, $17, $0
      addu       $19, $2, $0
      addiu      $2, $0, 0x1
      bne        $19, $2, .L80068988
       addu      $2, $19, $0
      lw         $5, 0xC($17)
      lbu        $2, 0x0($5)
      bnez       $2, .L80068890
       nop
      lw         $3, 0xC8($18)
      beqz       $3, .L80068898
       addu      $2, $0, $0
      lw         $2, 0x4($3)
      j          .L80068898
       nop
  .L80068890:
      jal        func_80067F2C
       addu      $4, $16, $0
  .L80068898:
      beqz       $2, .L800688B0
       addu      $4, $18, $0
      sw         $2, 0xBC($18)
      jal        func_80068C78
       addu      $5, $2, $0
      addu       $19, $2, $0
  .L800688B0:
      addiu      $2, $0, -0x1
      sw         $0, 0x0($17)
      sw         $2, 0xC0($18)
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x3E
      beq        $3, $2, .L80068198
       addiu     $2, $0, 0xF
      j          .L80068984
       sw        $2, 0xE8($18)
  .globl .L800688D4
.L800688D4:
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x3E
      bne        $3, $2, .L80068988
       addu      $2, $19, $0
      j          .L80068988
       sw        $0, 0xE8($18)
  .globl .L800688EC
.L800688EC:
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x2D
      bne        $3, $2, .L80068904
       addiu     $2, $0, 0x3E
      j          .L80068980
       addiu     $2, $0, 0x11
  .L80068904:
      beq        $3, $2, .L80068198
       addiu     $2, $0, 0xF
      j          .L80068984
       sw        $2, 0xE8($18)
  .globl .L80068914
.L80068914:
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x2D
      beq        $3, $2, .L8006897C
       addiu     $2, $0, 0x3E
      beq        $3, $2, .L80068198
       addiu     $2, $0, 0xF
      j          .L80068984
       sw        $2, 0xE8($18)
  .globl .L80068934
.L80068934:
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x2D
      bne        $3, $2, .L80068988
       addu      $2, $19, $0
      j          .L80068980
       addiu     $2, $0, 0x13
  .globl .L8006894C
.L8006894C:
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x2D
      bne        $3, $2, .L80068980
       addiu     $2, $0, 0x12
      j          .L80068980
       addiu     $2, $0, 0x14
  .globl .L80068964
.L80068964:
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x3E
      beq        $3, $2, .L80068198
       addiu     $2, $0, 0x2D
      beq        $3, $2, .L80068988
       addu      $2, $19, $0
  .L8006897C:
      addiu      $2, $0, 0x12
  .L80068980:
      sw         $2, 0xE8($18)
  .L80068984:
      addu       $2, $19, $0
  .L80068988:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80067F68

.globl func_800689A4
.ent func_800689A4
func_800689A4:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      addiu      $4, $0, 0xF4
      addu       $5, $0, $0
      sw         $31, 0x1C($29)
      jal        func_80052504
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L80068A40
       addu      $2, $16, $0
      addiu      $4, $0, 0x80
      sw         $0, 0xAC($16)
      sw         $0, 0xB0($16)
      jal        func_80080500
       sw        $0, 0xB8($16)
      bnez       $2, .L80068A04
       sw        $2, 0xC4($16)
      jal        func_80052540
       addu      $4, $16, $0
      j          .L80068A40
       addu      $2, $0, $0
  .L80068A04:
      addiu      $4, $0, 0x1F
      sw         $18, 0xA0($16)
      sw         $17, 0xA8($16)
      lw         $2, 0x0($17)
      addiu      $3, $16, 0x7C
      sw         $0, 0xE8($16)
      sw         $0, 0xC8($16)
      sb         $0, 0xF0($16)
      sw         $2, 0xA4($16)
  .L80068A28:
      sw         $0, 0x0($3)
      addiu      $4, $4, -0x1
      bgez       $4, .L80068A28
       addiu     $3, $3, -0x4
      sw         $0, 0xDC($16)
      addu       $2, $16, $0
  .L80068A40:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800689A4

.globl func_80068A58
.ent func_80068A58
func_80068A58:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $31, 0x28($29)
      sw         $16, 0x20($29)
      lw         $16, 0xBC($17)
      sw         $5, 0x18($29)
      lw         $2, 0x8($16)
      blez       $2, .L80068AA4
       addiu     $4, $29, 0x18
      lui        $2, %hi(func_80067688)
      addiu      $2, $2, %lo(func_80067688)
      sw         $2, 0x10($29)
      lw         $5, 0x4($16)
      lw         $6, 0x8($16)
      jal        func_80053500
       addiu     $7, $0, 0x4
      j          .L80068AA8
       nop
  .L80068AA4:
      addu       $2, $0, $0
  .L80068AA8:
      bnez       $2, .L80068AC0
       nop
      addiu      $2, $0, -0x1
      sw         $2, 0xC0($17)
      j          .L80068AF8
       addiu     $2, $0, 0x1
  .L80068AC0:
      lw         $16, 0x4($16)
      subu       $16, $2, $16
      sra        $16, $16, 2
      addu       $3, $17, $16
      addiu      $2, $0, 0x1
      sw         $16, 0xC0($17)
      sll        $16, $16, 2
      addu       $16, $17, $16
      sb         $2, 0x80($3)
      lw         $4, 0x0($16)
      jal        func_80052540
       nop
      addiu      $2, $0, 0x1
      sw         $0, 0x0($16)
  .L80068AF8:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80068A58

.globl func_80068B0C
.ent func_80068B0C
func_80068B0C:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      sw         $31, 0x18($29)
      lw         $3, 0xC0($16)
      addiu      $2, $0, -0x1
      beq        $3, $2, .L80068B6C
       addu      $17, $5, $0
      sll        $2, $3, 2
      addu       $2, $16, $2
      lw         $4, 0x0($2)
      jal        func_80052540
       nop
      jal        func_800523C0
       addu      $4, $17, $0
      lw         $3, 0xC0($16)
      sll        $3, $3, 2
      addu       $3, $16, $3
      bnez       $2, .L80068B68
       sw        $2, 0x0($3)
      j          .L80068B74
       addiu     $2, $0, -0x5
  .L80068B68:
      addiu      $2, $0, -0x1
  .L80068B6C:
      sw         $2, 0xC0($16)
      addiu      $2, $0, 0x1
  .L80068B74:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80068B0C

.globl func_80068B88
.ent func_80068B88
func_80068B88:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $31, 0x28($29)
      sw         $16, 0x20($29)
      lw         $2, 0xC4($17)
      lw         $2, 0xC($2)
      addiu      $4, $29, 0x18
      sw         $2, 0x18($29)
      lui        $2, %hi(func_80067640)
      lw         $3, 0xA0($17)
      addiu      $2, $2, %lo(func_80067640)
      sw         $2, 0x10($29)
      lw         $5, 0x8($3)
      lw         $6, 0x10($3)
      jal        func_80053500
       addiu     $7, $0, 0x4
      addu       $3, $2, $0
      beqz       $3, .L80068C04
       nop
      lw         $2, 0xA0($17)
      lw         $4, 0xA8($17)
      lw         $5, 0x8($2)
      lw         $2, 0xA4($17)
      subu       $5, $3, $5
      lw         $2, 0x20($2)
      jalr       $2
       sra       $5, $5, 2
      xori       $2, $2, 0x1
      j          .L80068C64
       sltiu     $2, $2, 0x1
  .L80068C04:
      lbu        $2, 0xF0($17)
      bnez       $2, .L80068C24
       nop
      lw         $2, 0xA4($17)
      lw         $4, 0xA8($17)
      lw         $2, 0xC($2)
      jalr       $2
       addiu     $5, $0, 0x26
  .L80068C24:
      lw         $16, 0x18($29)
      lbu        $2, 0x0($16)
      beqz       $2, .L80068C64
       addu      $2, $0, $0
  .L80068C34:
      lbu        $2, 0xF0($17)
      bnel       $2, $0, .L80068C58
       addiu     $16, $16, 0x1
      lw         $4, 0xA8($17)
      lw         $2, 0xA4($17)
      lbu        $5, 0x0($16)
      lw         $2, 0xC($2)
      jalr       $2
       addiu     $16, $16, 0x1
  .L80068C58:
      lbu        $2, 0x0($16)
      bnez       $2, .L80068C34
       addu      $2, $0, $0
  .L80068C64:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80068B88

.globl func_80068C78
.ent func_80068C78
func_80068C78:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $3, 0xC($19)
      beqz       $3, .L80068DC0
       addiu     $16, $0, 0x1
      lbu        $2, 0xF0($18)
      bnez       $2, .L80068CF8
       addiu     $2, $0, 0x7
      addiu      $2, $0, 0x6
      bne        $3, $2, .L80068CF8
       addiu     $2, $0, 0x7
      lw         $2, 0xA0($18)
      lw         $4, 0xA8($18)
      lw         $5, 0x0($2)
      lw         $2, 0xA4($18)
      subu       $5, $19, $5
      lw         $2, 0x1C($2)
      jalr       $2
       sra       $5, $5, 4
      addu       $16, $2, $0
      bnez       $16, .L80068DC4
       addu      $2, $16, $0
      addiu      $16, $0, 0x1
      j          .L80068DC0
       sb        $16, 0xF1($18)
  .L80068CF8:
      beql       $3, $2, .L80068D00
       sb        $0, 0xF0($18)
  .L80068D00:
      lbu        $2, 0xF0($18)
      bnez       $2, .L80068DC4
       addu      $2, $16, $0
      lw         $4, 0xC8($18)
      beqz       $4, .L80068DC4
       nop
  .L80068D18:
      lw         $2, 0x4($4)
      beq        $19, $2, .L80068D30
       nop
      lw         $4, 0x0($4)
      bnez       $4, .L80068D18
       nop
  .L80068D30:
      beqz       $4, .L80068DC4
       addu      $2, $16, $0
      lw         $2, 0xC8($18)
      beqz       $2, .L80068DC0
       addiu     $20, $0, 0x7
  .L80068D44:
      lw         $4, 0xC8($18)
      lw         $17, 0x4($4)
      beq        $19, $17, .L80068D60
       nop
      lw         $2, 0x0($4)
      beqz       $2, .L80068DC4
       addu      $2, $16, $0
  .L80068D60:
      lw         $2, 0x0($4)
      jal        func_80052540
       sw        $2, 0xC8($18)
      lw         $2, 0xC($19)
      beq        $2, $20, .L80068DAC
       nop
      lw         $2, 0xA0($18)
      lw         $4, 0xA8($18)
      lw         $5, 0x0($2)
      lw         $2, 0xA4($18)
      subu       $5, $17, $5
      lw         $2, 0x1C($2)
      jalr       $2
       sra       $5, $5, 4
      addu       $16, $2, $0
      bnez       $16, .L80068DAC
       nop
      addiu      $16, $0, 0x1
      sb         $16, 0xF1($18)
  .L80068DAC:
      beq        $19, $17, .L80068DC4
       addu      $2, $16, $0
      lw         $2, 0xC8($18)
      bnez       $2, .L80068D44
       nop
  .L80068DC0:
      addu       $2, $16, $0
  .L80068DC4:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80068C78

.globl func_80068DE4
.ent func_80068DE4
func_80068DE4:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lw         $18, 0xBC($16)
      lw         $3, 0xC($18)
      addiu      $2, $0, 0x7
      bne        $3, $2, .L80068E14
       addiu     $17, $0, 0x1
      sb         $17, 0xF0($16)
  .L80068E14:
      lbu        $2, 0xF0($16)
      bnez       $2, .L80068E88
       addu      $2, $17, $0
      addiu      $6, $16, 0x80
      addu       $7, $16, $0
      lw         $2, 0xA0($16)
      lw         $4, 0xA8($16)
      lw         $5, 0x0($2)
      lw         $2, 0xA4($16)
      subu       $5, $18, $5
      lw         $2, 0x18($2)
      jalr       $2
       sra       $5, $5, 4
      lw         $3, 0xC($18)
      beqz       $3, .L80068E84
       addu      $17, $2, $0
      addiu      $2, $0, 0x6
      beq        $3, $2, .L80068E84
       addiu     $4, $0, 0x8
      jal        func_80052504
       addu      $5, $0, $0
      addu       $3, $2, $0
      beql       $3, $0, .L80068E84
       addiu     $17, $0, -0x5
      lw         $2, 0xC8($16)
      sw         $18, 0x4($3)
      sw         $2, 0x0($3)
      sw         $3, 0xC8($16)
  .L80068E84:
      addu       $2, $17, $0
  .L80068E88:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80068DE4

.globl func_80068EA0
.ent func_80068EA0
func_80068EA0:
      addiu      $2, $0, 0x3E
      beq        $3, $2, .L80068EB0
       addu      $4, $0, $0
      addiu      $4, $0, 0xF
  .L80068EB0:
      j          .L80069484
       sw        $4, 0xE8($18)
      lw         $2, 0x8($2)
      blez       $2, .L80068EE4
.end func_80068EA0

.globl func_80068EC0
.ent func_80068EC0
func_80068EC0:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x218($16)
      lw         $5, 0x228($16)
      jal        func_8007066C
       nop
      sb         $0, 0x230($16)
  .L80068EE4:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80068EC0

.globl func_80068EF4
.ent func_80068EF4
func_80068EF4:
      lw         $2, 0x228($4)
      beq        $2, $5, .L80068F08
       addiu     $2, $0, 0x1
      sb         $2, 0x230($4)
      sw         $5, 0x228($4)
  .L80068F08:
      jr         $31
       nop
.end func_80068EF4

.globl func_80068F10
.ent func_80068F10
func_80068F10:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x214($17)
      addu       $16, $5, $0
      lw         $2, 0x4($2)
      addiu      $3, $2, -0x10
      sltiu      $2, $3, 0x4A
      beqz       $2, .L80068FD4
       addiu     $18, $0, 0x1
      lui        $2, %hi(jtbl_800EEE80)
      addiu      $2, $2, %lo(jtbl_800EEE80)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80068F60
.L80068F60:
      sll        $2, $16, 24
      bltz       $2, .L80068F80
       addiu     $4, $17, 0x204
      jal        func_800126C0
       andi      $4, $16, 0xFF
      bnel       $2, $0, .L80068F7C
       addiu     $16, $0, 0x20
  .L80068F7C:
      addiu      $4, $17, 0x204
  .L80068F80:
      jal        func_800805B0
       andi      $5, $16, 0xFF
      j          .L80069044
       addu      $18, $2, $0
  .globl .L80068F90
.L80068F90:
      lbu        $2, 0x230($17)
      beqz       $2, .L80068FC8
       sll       $2, $16, 24
      bltz       $2, .L80068FB4
       nop
      jal        func_800126C0
       andi      $4, $16, 0xFF
      bnez       $2, .L80069048
       addiu     $2, $0, 0x1
  .L80068FB4:
      lbu        $2, 0x230($17)
      beqz       $2, .L80068FC8
       nop
      jal        func_80068EC0
       addu      $4, $17, $0
  .globl .L80068FC8
.L80068FC8:
      lw         $4, 0x218($17)
      j          .L80069038
       andi      $5, $16, 0xFF
  .globl .L80068FD4
.L80068FD4:
      lbu        $2, 0x230($17)
      beqz       $2, .L8006900C
       sll       $2, $16, 24
      bltz       $2, .L80068FF8
       nop
      jal        func_800126C0
       andi      $4, $16, 0xFF
      bnez       $2, .L80069048
       addiu     $2, $0, 0x1
  .L80068FF8:
      lbu        $2, 0x230($17)
      beqz       $2, .L8006900C
       nop
      jal        func_80068EC0
       addu      $4, $17, $0
  .L8006900C:
      lw         $4, 0x218($17)
      lw         $2, 0x0($4)
      beqz       $2, .L8006902C
       andi      $5, $16, 0xFF
      lbu        $2, 0xD9($2)
      bnez       $2, .L80069048
       addu      $2, $18, $0
      andi       $5, $16, 0xFF
  .L8006902C:
      addiu      $2, $0, 0xD
      beql       $5, $2, .L80069038
       addiu     $5, $0, 0x20
  .L80069038:
      jal        func_8006EDEC
       nop
      addu       $18, $2, $0
  .globl .L80069044
.L80069044:
      addu       $2, $18, $0
  .L80069048:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80068F10

.globl func_80069060
.ent func_80069060
func_80069060:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x214($18)
      lw         $3, 0x4($2)
      slti       $2, $3, 0x40
      beqz       $2, .L800690B8
       addiu     $17, $0, 0x1
      slti       $2, $3, 0x3E
      beqz       $2, .L80069100
       addiu     $2, $0, 0x10
      beq        $3, $2, .L80069244
       addiu     $2, $0, 0x2F
      beq        $3, $2, .L80069100
       nop
      j          .L80069140
       nop
  .L800690B8:
      addiu      $2, $0, 0x52
      beq        $3, $2, .L800690F0
       slti      $2, $3, 0x53
      beqz       $2, .L800690DC
       addiu     $2, $0, 0x4E
      beq        $3, $2, .L80069100
       nop
      j          .L80069140
       nop
  .L800690DC:
      addiu      $2, $0, 0x59
      beq        $3, $2, .L80069100
       nop
      j          .L80069140
       nop
  .L800690F0:
      jal        func_80080670
       addiu     $4, $18, 0x204
      j          .L80069244
       addu      $17, $2, $0
  .L80069100:
      lbu        $2, 0x0($5)
      beqz       $2, .L80069244
       addu      $16, $5, $0
      addiu      $19, $0, -0x5
  .L80069110:
      lw         $4, 0x218($18)
      lbu        $5, 0x0($16)
      jal        func_8006EDEC
       nop
      addu       $17, $2, $0
      beq        $17, $19, .L8006919C
       addiu     $16, $16, 0x1
      lbu        $2, 0x0($16)
      bnez       $2, .L80069110
       addu      $2, $17, $0
      j          .L80069248
       nop
  .L80069140:
      lbu        $2, 0x230($18)
      beqz       $2, .L800691B8
       addu      $16, $5, $0
      lbu        $2, 0x0($16)
      beql       $2, $0, .L80069248
       addiu     $2, $0, 0x1
      sll        $2, $2, 24
  .L8006915C:
      bltz       $2, .L80069188
       nop
      lbu        $4, 0x0($16)
      jal        func_800126C0
       nop
      beqz       $2, .L80069188
       nop
      addiu      $16, $16, 0x1
      lbu        $2, 0x0($16)
      bnez       $2, .L8006915C
       sll       $2, $2, 24
  .L80069188:
      lbu        $2, 0x0($16)
      bnez       $2, .L800691A4
       addiu     $2, $0, 0x1
      j          .L80069248
       nop
  .L8006919C:
      j          .L80069248
       addiu     $2, $0, -0x5
  .L800691A4:
      lbu        $2, 0x230($18)
      beqz       $2, .L800691B8
       nop
      jal        func_80068EC0
       addu      $4, $18, $0
  .L800691B8:
      lbu        $3, 0x0($16)
      beqz       $3, .L80069244
       addiu     $20, $0, 0xD
      addiu      $19, $0, -0x5
  .L800691C8:
      lbu        $2, 0x230($18)
      beqz       $2, .L80069204
       sll       $2, $3, 24
      bltz       $2, .L800691F0
       nop
      lbu        $4, 0x0($16)
      jal        func_800126C0
       nop
      bnel       $2, $0, .L80069238
       addiu     $16, $16, 0x1
  .L800691F0:
      lbu        $2, 0x230($18)
      beqz       $2, .L80069204
       nop
      jal        func_80068EC0
       addu      $4, $18, $0
  .L80069204:
      lbu        $2, 0x0($16)
      bne        $2, $20, .L8006921C
       addiu     $5, $0, 0x20
      lw         $4, 0x218($18)
      j          .L80069224
       nop
  .L8006921C:
      lw         $4, 0x218($18)
      lbu        $5, 0x0($16)
  .L80069224:
      jal        func_8006EDEC
       nop
      addu       $17, $2, $0
      beq        $17, $19, .L8006919C
       addiu     $16, $16, 0x1
  .L80069238:
      lbu        $3, 0x0($16)
      bnez       $3, .L800691C8
       nop
  .L80069244:
      addu       $2, $17, $0
  .L80069248:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      addu       $6, $16, $6
      sltu       $6, $16, $6
      sw         $31, 0x20($29)
      sw         $18, 0x18($29)
      beqz       $6, .L800692B8
       sw        $17, 0x14($29)
      addiu      $18, $0, -0x5
      addiu      $17, $0, 0x1
  .L8006929C:
      lbu        $5, 0x0($16)
      jal        func_80068F10
       addu      $4, $19, $0
      beq        $2, $18, .L800692BC
       addiu     $2, $0, -0x5
      bnez       $17, .L8006929C
       addiu     $16, $16, 0x1
  .L800692B8:
      addiu      $2, $0, 0x1
  .L800692BC:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
      addiu      $29, $29, -0x88
      sw         $20, 0x70($29)
      addu       $20, $4, $0
      sw         $18, 0x68($29)
      addu       $18, $6, $0
      sw         $19, 0x6C($29)
      addu       $19, $7, $0
      sw         $17, 0x64($29)
      addiu      $17, $0, 0x1
      sw         $5, 0x8C($29)
      sltiu      $2, $5, 0x5A
      sw         $31, 0x84($29)
      sw         $30, 0x80($29)
      sw         $23, 0x7C($29)
      sw         $22, 0x78($29)
      sw         $21, 0x74($29)
      beqz       $2, .L8006ACA0
       sw        $16, 0x60($29)
      lui        $2, %hi(jtbl_800EEFA8)
      addiu      $2, $2, %lo(jtbl_800EEFA8)
      sll        $3, $5, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8006933C
.L8006933C:
      lbu        $2, 0x1($18)
      beqz       $2, .L80069378
       nop
      lw         $4, 0x218($20)
      lbu        $2, 0xACC($4)
      bnez       $2, .L80069378
       nop
      lw         $5, 0x4($19)
      jal        func_800749E4
       nop
      addu       $17, $2, $0
      bltz       $17, .L80069378
       addiu     $2, $0, 0x1
      lw         $3, 0x218($20)
      sb         $2, 0xACC($3)
  .L80069378:
      lbu        $2, 0x0($18)
      beqz       $2, .L8006ACA0
       nop
      lw         $4, 0x0($19)
      beqz       $4, .L8006ACA0
       nop
      lw         $2, 0x218($20)
      lbu        $2, 0xACD($2)
      bnez       $2, .L8006ACA0
       addiu     $5, $0, 0x1
      jal        func_800570AC
       addiu     $6, $29, 0x50
      addu       $16, $2, $0
      beqz       $16, .L800693DC
       addiu     $4, $20, 0x231
      addu       $5, $16, $0
      jal        func_80052310
       addiu     $6, $0, 0x400
      lbu        $2, 0x50($29)
      beqz       $2, .L800693E0
       nop
      jal        func_80052540
       addu      $4, $16, $0
      j          .L800693E0
       nop
  .L800693DC:
      addiu      $17, $0, -0x5
  .L800693E0:
      bltz       $17, .L8006ACA0
       addiu     $2, $0, 0x1
      lw         $3, 0x218($20)
      j          .L8006ACA0
       sb        $2, 0xACD($3)
  .globl .L800693F4
.L800693F4:
      addu       $22, $0, $0
      addu       $30, $22, $0
      addu       $23, $22, $0
      lbu        $2, 0x5($18)
      beqz       $2, .L80069410
       addu      $17, $22, $0
      lw         $22, 0x14($19)
  .L80069410:
      lbu        $2, 0x4($18)
      beqz       $2, .L80069420
       nop
      lw         $30, 0x10($19)
  .L80069420:
      lbu        $2, 0x0($18)
      beqz       $2, .L80069458
       addiu     $16, $20, 0x231
      lw         $4, 0x0($19)
      beqz       $4, .L8006945C
       addu      $21, $0, $0
      lbu        $2, 0x0($4)
      beqz       $2, .L8006945C
       nop
      jal        func_80057040
       addiu     $5, $20, 0x231
      addu       $16, $2, $0
      j          .L8006945C
       addiu     $21, $0, 0x1
  .L80069458:
      addu       $21, $0, $0
  .L8006945C:
      lbu        $2, 0x6($18)
      beqz       $2, .L8006946C
       nop
      lw         $23, 0x18($19)
  .L8006946C:
      lbu        $2, 0x7($18)
      beqz       $2, .L8006947C
       nop
      lw         $17, 0x1C($19)
  .L8006947C:
      beql       $16, $0, .L8006ACA0
       addiu     $17, $0, -0x5
  .L80069484:
      lbu        $2, 0x8($18)
      beql       $2, $0, .L80069498
       sw        $0, 0x10($29)
      lw         $2, 0x20($19)
      sw         $2, 0x10($29)
  .L80069498:
      addu       $5, $22, $0
      addu       $6, $16, $0
      sw         $23, 0x14($29)
      sw         $17, 0x18($29)
      lw         $4, 0x218($20)
      jal        func_8006B500
       addu      $7, $30, $0
      addu       $17, $2, $0
      andi       $2, $21, 0xFF
      beqz       $2, .L8006ACA0
       addu      $4, $16, $0
      j          .L8006AC98
       nop
  .globl .L800694CC
.L800694CC:
      lbu        $2, 0x10($18)
      beqz       $2, .L800694FC
       addu      $16, $0, $0
      lw         $4, 0x40($19)
      beqz       $4, .L800694FC
       nop
      lbu        $2, 0x0($4)
      beqz       $2, .L800694FC
       nop
      jal        func_80057040
       addiu     $5, $20, 0x231
      addu       $16, $2, $0
  .L800694FC:
      lbu        $2, 0x230($20)
      beqz       $2, .L80069510
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L80069510:
      lbu        $5, 0x3($18)
      lbu        $2, 0x6($18)
      lbu        $6, 0x4($18)
      beqz       $2, .L80069528
       addu      $7, $0, $0
      lw         $7, 0x18($19)
  .L80069528:
      lbu        $2, 0x8($18)
      beql       $2, $0, .L8006953C
       sw        $0, 0x10($29)
      lw         $2, 0x20($19)
      sw         $2, 0x10($29)
  .L8006953C:
      lbu        $2, 0x9($18)
      beql       $2, $0, .L80069550
       sw        $0, 0x14($29)
      lw         $2, 0x24($19)
      sw         $2, 0x14($29)
  .L80069550:
      lbu        $2, 0xF($18)
      beql       $2, $0, .L80069564
       sw        $0, 0x18($29)
      lw         $2, 0x3C($19)
      sw         $2, 0x18($29)
  .L80069564:
      lbu        $2, 0x11($18)
      beql       $2, $0, .L80069578
       sw        $0, 0x1C($29)
      lw         $2, 0x44($19)
      sw         $2, 0x1C($29)
  .L80069578:
      lbu        $2, 0x12($18)
      beql       $2, $0, .L8006958C
       sw        $0, 0x20($29)
      lw         $2, 0x48($19)
      sw         $2, 0x20($29)
  .L8006958C:
      lbu        $2, 0x7($18)
      beql       $2, $0, .L800695A0
       sw        $0, 0x24($29)
      lw         $2, 0x1C($19)
      sw         $2, 0x24($29)
  .L800695A0:
      lbu        $2, 0x1($18)
      beql       $2, $0, .L800695B4
       sw        $0, 0x28($29)
      lw         $2, 0x4($19)
      sw         $2, 0x28($29)
  .L800695B4:
      lbu        $2, 0x2($18)
      beql       $2, $0, .L800695C8
       sw        $0, 0x2C($29)
      lw         $2, 0x8($19)
      sw         $2, 0x2C($29)
  .L800695C8:
      lbu        $2, 0x0($18)
      beql       $2, $0, .L800695DC
       sw        $0, 0x30($29)
      lw         $2, 0x0($19)
      sw         $2, 0x30($29)
  .L800695DC:
      sw         $16, 0x34($29)
      lbu        $2, 0xA($18)
      beql       $2, $0, .L800695F4
       sw        $0, 0x38($29)
      lw         $2, 0x28($19)
      sw         $2, 0x38($29)
  .L800695F4:
      lbu        $2, 0xB($18)
      beql       $2, $0, .L80069608
       sw        $0, 0x3C($29)
      lw         $2, 0x2C($19)
      sw         $2, 0x3C($29)
  .L80069608:
      lbu        $2, 0xC($18)
      beql       $2, $0, .L8006961C
       sw        $0, 0x40($29)
      lw         $2, 0x30($19)
      sw         $2, 0x40($29)
  .L8006961C:
      lbu        $2, 0xD($18)
      beql       $2, $0, .L80069630
       sw        $0, 0x44($29)
      lw         $2, 0x34($19)
      sw         $2, 0x44($29)
  .L80069630:
      lbu        $2, 0xE($18)
      beql       $2, $0, .L80069644
       sw        $0, 0x48($29)
      lw         $2, 0x38($19)
      sw         $2, 0x48($29)
  .L80069644:
      lw         $4, 0x218($20)
      jal        func_8006B738
       nop
      j          .L8006AC94
       addu      $17, $2, $0
  .globl .L80069658
.L80069658:
      lbu        $2, 0x230($20)
      beqz       $2, .L8006966C
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L8006966C:
      lbu        $2, 0x3($18)
      beqz       $2, .L8006967C
       addu      $5, $0, $0
      lw         $5, 0xC($19)
  .L8006967C:
      lbu        $2, 0x7($18)
      lbu        $6, 0x2($18)
      beqz       $2, .L80069690
       addu      $7, $0, $0
      lw         $7, 0x1C($19)
  .L80069690:
      lbu        $2, 0x4($18)
      beql       $2, $0, .L800696A4
       sw        $0, 0x10($29)
      lw         $2, 0x10($19)
      sw         $2, 0x10($29)
  .L800696A4:
      lbu        $2, 0x5($18)
      beql       $2, $0, .L800696B8
       sw        $0, 0x14($29)
      lw         $2, 0x14($19)
      sw         $2, 0x14($29)
  .L800696B8:
      lbu        $2, 0x6($18)
      beql       $2, $0, .L800696CC
       sw        $0, 0x18($29)
      lw         $2, 0x18($19)
      sw         $2, 0x18($29)
  .L800696CC:
      lw         $4, 0x218($20)
      jal        func_8006BA08
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L800696E0
.L800696E0:
      lbu        $2, 0x0($18)
      beqz       $2, .L800696F0
       addu      $5, $0, $0
      lw         $5, 0x0($19)
  .L800696F0:
      lbu        $2, 0x1($18)
      beqz       $2, .L80069700
       addu      $6, $0, $0
      lw         $6, 0x4($19)
  .L80069700:
      lbu        $2, 0x2($18)
      beqz       $2, .L80069710
       addu      $7, $0, $0
      lw         $7, 0x8($19)
  .L80069710:
      lbu        $2, 0x3($18)
      beql       $2, $0, .L80069724
       sw        $0, 0x10($29)
      lw         $2, 0xC($19)
      sw         $2, 0x10($29)
  .L80069724:
      lw         $4, 0x218($20)
      jal        func_8006FF7C
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069738
.L80069738:
      addu       $23, $0, $0
      addu       $22, $23, $0
      lbu        $2, 0x13($18)
      beqz       $2, .L800697B8
       addu      $21, $23, $0
      lw         $16, 0x4C($19)
      lbu        $2, 0x0($16)
      beqz       $2, .L80069780
       nop
  .L8006975C:
      lbu        $4, 0x0($16)
      jal        func_800126C0
       nop
      beqz       $2, .L80069780
       nop
      addiu      $16, $16, 0x1
      lbu        $2, 0x0($16)
      bnez       $2, .L8006975C
       nop
  .L80069780:
      lbu        $3, 0x0($16)
      addiu      $2, $0, 0x23
      bne        $3, $2, .L800697A0
       addiu     $5, $20, 0x231
      lw         $4, 0x4C($19)
      lw         $5, 0x22C($20)
      j          .L800697A4
       nop
  .L800697A0:
      lw         $4, 0x4C($19)
  .L800697A4:
      jal        func_80057040
       nop
      addu       $21, $2, $0
      beql       $21, $0, .L800697B8
       addiu     $17, $0, -0x5
  .L800697B8:
      lbu        $2, 0x3($18)
      beqz       $2, .L800697F0
       nop
      lw         $4, 0xC($19)
      beqz       $4, .L800697F0
       nop
      lbu        $2, 0x0($4)
      beqz       $2, .L800697F0
       nop
      jal        func_80057040
       addiu     $5, $20, 0x231
      addu       $23, $2, $0
      beql       $23, $0, .L800697F0
       addiu     $17, $0, -0x5
  .L800697F0:
      lbu        $2, 0x4($18)
      beqz       $2, .L80069818
       lui       $4, %hi(D_800EC604)
      lw         $4, 0x10($19)
      beql       $4, $0, .L80069818
       lui       $4, %hi(D_800EC604)
      lbu        $2, 0x0($4)
      bnez       $2, .L8006981C
       nop
      lui        $4, %hi(D_800EC604)
  .L80069818:
      addiu      $4, $4, %lo(D_800EC604)
  .L8006981C:
      jal        func_80057040
       addiu     $5, $20, 0x231
      addu       $16, $2, $0
      beql       $16, $0, .L80069830
       addiu     $17, $0, -0x5
  .L80069830:
      lbu        $2, 0x6($18)
      beqz       $2, .L8006986C
       addiu     $2, $0, -0x5
      lw         $4, 0x18($19)
      beqz       $4, .L8006986C
       nop
      lbu        $2, 0x0($4)
      beqz       $2, .L8006986C
       addiu     $2, $0, -0x5
      jal        func_80057040
       addiu     $5, $20, 0x231
      addu       $22, $2, $0
      beql       $22, $0, .L80069868
       addiu     $17, $0, -0x5
  .L80069868:
      addiu      $2, $0, -0x5
  .L8006986C:
      beq        $17, $2, .L800699AC
       nop
      lbu        $2, 0x230($20)
      beqz       $2, .L80069888
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L80069888:
      lbu        $2, 0x0($18)
      beqz       $2, .L80069898
       addu      $6, $0, $0
      lw         $6, 0x0($19)
  .L80069898:
      lbu        $2, 0x1($18)
      beqz       $2, .L800698A8
       addu      $7, $0, $0
      lw         $7, 0x4($19)
  .L800698A8:
      sw         $23, 0x10($29)
      sw         $16, 0x14($29)
      lbu        $2, 0x5($18)
      beql       $2, $0, .L800698C4
       sw        $0, 0x18($29)
      lw         $2, 0x14($19)
      sw         $2, 0x18($29)
  .L800698C4:
      sw         $22, 0x1C($29)
      lbu        $2, 0x7($18)
      beql       $2, $0, .L800698DC
       sw        $0, 0x20($29)
      lw         $2, 0x1C($19)
      sw         $2, 0x20($29)
  .L800698DC:
      lbu        $2, 0x9($18)
      beql       $2, $0, .L800698F0
       sw        $0, 0x24($29)
      lw         $2, 0x24($19)
      sw         $2, 0x24($29)
  .L800698F0:
      lbu        $2, 0xA($18)
      beql       $2, $0, .L80069904
       sw        $0, 0x28($29)
      lw         $2, 0x28($19)
      sw         $2, 0x28($29)
  .L80069904:
      lbu        $2, 0xB($18)
      beql       $2, $0, .L80069918
       sw        $0, 0x2C($29)
      lw         $2, 0x2C($19)
      sw         $2, 0x2C($29)
  .L80069918:
      lbu        $2, 0xE($18)
      beql       $2, $0, .L8006992C
       sw        $0, 0x30($29)
      lw         $2, 0x38($19)
      sw         $2, 0x30($29)
  .L8006992C:
      lbu        $2, 0xF($18)
      beql       $2, $0, .L80069940
       sw        $0, 0x34($29)
      lw         $2, 0x3C($19)
      sw         $2, 0x34($29)
  .L80069940:
      lbu        $2, 0x10($18)
      beql       $2, $0, .L80069954
       sw        $0, 0x38($29)
      lw         $2, 0x40($19)
      sw         $2, 0x38($29)
  .L80069954:
      lbu        $2, 0x12($18)
      beql       $2, $0, .L80069968
       sw        $0, 0x3C($29)
      lw         $2, 0x48($19)
      sw         $2, 0x3C($29)
  .L80069968:
      sw         $21, 0x40($29)
      lbu        $2, 0x14($18)
      beql       $2, $0, .L80069980
       sw        $0, 0x44($29)
      lw         $2, 0x50($19)
      sw         $2, 0x44($29)
  .L80069980:
      lbu        $2, 0x15($18)
      beql       $2, $0, .L80069994
       sw        $0, 0x48($29)
      lw         $2, 0x54($19)
      sw         $2, 0x48($29)
  .L80069994:
      lbu        $2, 0xC($18)
      sw         $2, 0x4C($29)
      lw         $4, 0x218($20)
      jal        func_8006F7E4
       addiu     $5, $0, 0x39
      addu       $17, $2, $0
  .L800699AC:
      jal        func_80052540
       addu      $4, $22, $0
      jal        func_80052540
       addu      $4, $23, $0
      jal        func_80052540
       addu      $4, $16, $0
      j          .L8006AC98
       addu      $4, $21, $0
  .globl .L800699CC
.L800699CC:
      lbu        $2, 0x3($18)
      lbu        $5, 0x2($18)
      beqz       $2, .L800699E0
       addu      $6, $0, $0
      lw         $6, 0xC($19)
  .L800699E0:
      lw         $4, 0x218($20)
      jal        func_8006BF18
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L800699F4
.L800699F4:
      lw         $4, 0x218($20)
      jal        func_80070A20
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069A08
.L80069A08:
      lw         $4, 0x218($20)
      jal        func_80070AB0
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069A1C
.L80069A1C:
      lw         $4, 0x218($20)
      jal        func_80070A58
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069A30
.L80069A30:
      addu       $5, $0, $0
      addu       $6, $5, $0
      lui        $7, %hi(D_800ECC50)
      sw         $0, 0x10($29)
      lw         $4, 0x218($20)
      j          .L80069AF0
       addiu     $7, $7, %lo(D_800ECC50)
  .globl .L80069A4C
.L80069A4C:
      lbu        $2, 0x0($18)
      beqz       $2, .L80069A5C
       addu      $5, $0, $0
      lw         $5, 0x0($19)
  .L80069A5C:
      lw         $4, 0x218($20)
      jal        func_80074AA8
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069A70
.L80069A70:
      lw         $4, 0x218($20)
      jal        func_80074A38
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069A84
.L80069A84:
      lw         $4, 0x218($20)
      jal        func_80074A5C
       nop
  .globl .L80069A90
.L80069A90:
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069A98
.L80069A98:
      addu       $5, $0, $0
      addu       $6, $5, $0
      lui        $7, %hi(D_800ECC54)
      sw         $0, 0x10($29)
      lw         $4, 0x218($20)
      j          .L80069AF0
       addiu     $7, $7, %lo(D_800ECC54)
  .globl .L80069AB4
.L80069AB4:
      lbu        $2, 0x0($18)
      beqz       $2, .L80069AC4
       addu      $5, $0, $0
      lw         $5, 0x0($19)
  .L80069AC4:
      lbu        $2, 0x1($18)
      beqz       $2, .L80069AD4
       addu      $6, $0, $0
      lw         $6, 0x4($19)
  .globl .L80069AD4
.L80069AD4:
      lbu        $2, 0x2($18)
      beqz       $2, .L80069AE4
       addu      $7, $0, $0
      lw         $7, 0x8($19)
  .L80069AE4:
      addiu      $2, $0, 0x1
      sw         $2, 0x10($29)
      lw         $4, 0x218($20)
  .L80069AF0:
      jal        func_80071964
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069B00
.L80069B00:
      lbu        $2, 0x2($18)
      beqz       $2, .L80069B10
       addu      $5, $0, $0
      lw         $5, 0x8($19)
  .L80069B10:
      lw         $4, 0x218($20)
      jal        func_8007190C
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069B24
.L80069B24:
      lbu        $2, 0x230($20)
      beqz       $2, .L80069B38
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L80069B38:
      lbu        $2, 0x0($18)
      beqz       $2, .L80069B48
       addu      $5, $0, $0
      lw         $5, 0x0($19)
  .L80069B48:
      lbu        $2, 0x4($18)
      beqz       $2, .L80069B58
       addu      $6, $0, $0
      lw         $6, 0x10($19)
  .L80069B58:
      lbu        $2, 0xB($18)
      beqz       $2, .L80069B68
       addu      $7, $0, $0
      lw         $7, 0x2C($19)
  .L80069B68:
      lbu        $2, 0x5($18)
      beqz       $2, .L80069B80
       lui       $2, %hi(D_800ED150)
      addiu      $2, $2, %lo(D_800ED150)
      j          .L80069B84
       sw        $2, 0x10($29)
  .L80069B80:
      sw         $0, 0x10($29)
  .L80069B84:
      lbu        $2, 0x6($18)
      beqz       $2, .L80069B9C
       lui       $2, %hi(D_800ED170)
      addiu      $2, $2, %lo(D_800ED170)
      j          .L80069BA0
       sw        $2, 0x14($29)
  .L80069B9C:
      sw         $0, 0x14($29)
  .L80069BA0:
      lbu        $2, 0xC($18)
      beql       $2, $0, .L80069BB4
       sw        $0, 0x18($29)
      lw         $2, 0x30($19)
      sw         $2, 0x18($29)
  .L80069BB4:
      lbu        $2, 0x7($18)
      beql       $2, $0, .L80069BC8
       sw        $0, 0x1C($29)
      lw         $2, 0x1C($19)
      sw         $2, 0x1C($29)
  .L80069BC8:
      lbu        $2, 0x8($18)
      beql       $2, $0, .L80069BDC
       sw        $0, 0x20($29)
      lw         $2, 0x20($19)
      sw         $2, 0x20($29)
  .L80069BDC:
      lbu        $2, 0x9($18)
      beql       $2, $0, .L80069BF0
       sw        $0, 0x24($29)
      lw         $2, 0x24($19)
      sw         $2, 0x24($29)
  .L80069BF0:
      lbu        $2, 0xA($18)
      beql       $2, $0, .L80069C04
       sw        $0, 0x28($29)
      lw         $2, 0x28($19)
      sw         $2, 0x28($29)
  .L80069C04:
      lw         $4, 0x218($20)
      jal        func_8006BF9C
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069C18
.L80069C18:
      addu       $16, $0, $0
      addu       $21, $16, $0
      addu       $22, $16, $0
      addu       $23, $16, $0
      sw         $0, 0x54($29)
      sw         $0, 0x58($29)
      lbu        $2, 0x230($20)
      addu       $30, $16, $0
      beqz       $2, .L80069C48
       sb        $0, 0x5C($29)
      jal        func_80068EC0
       addu      $4, $20, $0
  .L80069C48:
      lbu        $2, 0x1($18)
      beqz       $2, .L80069C94
       nop
      lw         $2, 0x4($19)
      beqz       $2, .L80069C94
       nop
      addu       $16, $2, $0
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x23
      beq        $3, $2, .L80069C94
       addu      $4, $16, $0
      jal        func_80057040
       addiu     $5, $20, 0x231
      addu       $16, $2, $0
      beqz       $16, .L80069C90
       addiu     $8, $0, 0x1
      j          .L80069C94
       sb        $8, 0x5C($29)
  .L80069C90:
      addiu      $17, $0, -0x5
  .L80069C94:
      lbu        $2, 0xD($18)
      beqz       $2, .L80069CB8
       nop
      lw         $3, 0x34($19)
      beqz       $3, .L80069CB8
       nop
      lbu        $2, 0x0($3)
      bnel       $2, $0, .L80069CB8
       sw        $3, 0x54($29)
  .L80069CB8:
      lbu        $2, 0x4($18)
      beqz       $2, .L80069CCC
       nop
      lw         $8, 0x10($19)
      sw         $8, 0x58($29)
  .L80069CCC:
      lbu        $2, 0x5($18)
      beqz       $2, .L80069CDC
       nop
      lw         $21, 0x14($19)
  .L80069CDC:
      lbu        $2, 0x6($18)
      beqz       $2, .L80069CEC
       nop
      lw         $22, 0x18($19)
  .L80069CEC:
      lbu        $2, 0x7($18)
      beqz       $2, .L80069CFC
       nop
      lw         $23, 0x1C($19)
  .L80069CFC:
      lbu        $2, 0x8($18)
      beqz       $2, .L80069D0C
       addiu     $2, $0, -0x5
      lw         $30, 0x20($19)
  .L80069D0C:
      beq        $17, $2, .L80069D3C
       nop
      lw         $6, 0x58($29)
      sw         $21, 0x10($29)
      sw         $22, 0x14($29)
      sw         $23, 0x18($29)
      sw         $30, 0x1C($29)
      lw         $4, 0x218($20)
      lw         $7, 0x54($29)
      jal        func_8006F1CC
       addu      $5, $16, $0
      addu       $17, $2, $0
  .L80069D3C:
      lbu        $2, 0x5C($29)
      beqz       $2, .L8006ACA0
       addu      $4, $16, $0
      j          .L8006AC98
       nop
  .globl .L80069D50
.L80069D50:
      lw         $4, 0x218($20)
      jal        func_8006F50C
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069D64
.L80069D64:
      lw         $4, 0x218($20)
      jal        func_8006F58C
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069D78
.L80069D78:
      jal        func_80080544
       addiu     $4, $20, 0x204
      j          .L8006ACA0
       nop
  .globl .L80069D88
.L80069D88:
      lbu        $2, 0x230($20)
      beqz       $2, .L80069D9C
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L80069D9C:
      beqz       $18, .L80069DF4
       addu      $6, $0, $0
      lbu        $2, 0x0($18)
      beqz       $2, .L80069DF4
       nop
      lw         $4, 0x0($19)
      beqz       $4, .L80069DF4
       nop
      jal        func_80057040
       addiu     $5, $20, 0x231
      addu       $16, $2, $0
      beqz       $16, .L8006ACA0
       addiu     $17, $0, -0x5
      lbu        $2, 0x1($18)
      beqz       $2, .L80069DE0
       addu      $6, $0, $0
      lw         $6, 0x4($19)
  .L80069DE0:
      lw         $4, 0x218($20)
      jal        func_80071488
       addu      $5, $16, $0
      j          .L8006AC94
       addu      $17, $2, $0
  .L80069DF4:
      lbu        $2, 0x1($18)
      beqz       $2, .L80069E04
       addiu     $5, $20, 0x231
      lw         $6, 0x4($19)
  .L80069E04:
      lw         $4, 0x218($20)
      jal        func_80071488
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069E18
.L80069E18:
      lbu        $2, 0x230($20)
      beqz       $2, .L80069E2C
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L80069E2C:
      beqz       $18, .L80069E50
       addu      $5, $0, $0
      lbu        $2, 0x0($18)
      beqz       $2, .L80069E50
       nop
      lw         $5, 0x0($19)
      bnez       $5, .L80069E50
       lui       $2, %hi(D_800EC604)
      addiu      $5, $2, %lo(D_800EC604)
  .L80069E50:
      lw         $4, 0x218($20)
      jal        func_8006EC54
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069E64
.L80069E64:
      lbu        $2, 0x230($20)
      beqz       $2, .L80069E78
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L80069E78:
      beqz       $18, .L80069ECC
       addu      $5, $0, $0
      lbu        $2, 0x2($18)
      beqz       $2, .L80069E90
       nop
      lw         $5, 0x8($19)
  .L80069E90:
      lbu        $2, 0x0($18)
      beqz       $2, .L80069EA0
       addu      $6, $0, $0
      lw         $6, 0x0($19)
  .L80069EA0:
      lbu        $2, 0x3($18)
      beqz       $2, .L80069EB0
       addu      $7, $0, $0
      lw         $7, 0xC($19)
  .L80069EB0:
      lbu        $2, 0x1($18)
      sw         $2, 0x10($29)
      lw         $4, 0x218($20)
      jal        func_8006FFE8
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .L80069ECC:
      addu       $6, $5, $0
      sw         $0, 0x10($29)
      lw         $4, 0x218($20)
      jal        func_8006FFE8
       addu      $7, $5, $0
      j          .L8006ACA0
       nop
  .globl .L80069EE8
.L80069EE8:
      lbu        $2, 0x230($20)
      beqz       $2, .L80069EFC
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L80069EFC:
      beqz       $18, .L80069F14
       addu      $5, $0, $0
      lbu        $2, 0x0($18)
      beqz       $2, .L80069F14
       nop
      lw         $5, 0x0($19)
  .L80069F14:
      lw         $4, 0x218($20)
      jal        func_80070494
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069F28
.L80069F28:
      lw         $4, 0x218($20)
      jal        func_800712D8
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069F3C
.L80069F3C:
      lbu        $2, 0x230($20)
      beqz       $2, .L80069F50
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L80069F50:
      lw         $4, 0x218($20)
      lw         $5, 0x8C($29)
      jal        func_80071334
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069F68
.L80069F68:
      lbu        $2, 0x230($20)
      beqz       $2, .L80069F7C
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L80069F7C:
      lw         $4, 0x218($20)
      lw         $5, 0x8C($29)
      jal        func_80071384
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L80069F94
.L80069F94:
      addu       $6, $0, $0
      lw         $4, 0x218($20)
      lw         $5, 0x8C($29)
      j          .L80069FF0
       addu      $7, $6, $0
  .globl .L80069FA8
.L80069FA8:
      lbu        $2, 0x5($18)
      beqz       $2, .L80069FB8
       addu      $6, $0, $0
      lw         $6, 0x14($19)
  .L80069FB8:
      lw         $4, 0x218($20)
      lw         $5, 0x8C($29)
      j          .L80069FF0
       addu      $7, $0, $0
  .globl .L80069FC8
.L80069FC8:
      lbu        $2, 0x5($18)
      beqz       $2, .L80069FD8
       addu      $6, $0, $0
      lw         $6, 0x14($19)
  .L80069FD8:
      lbu        $2, 0x4($18)
      beqz       $2, .L80069FE8
       addu      $7, $0, $0
      lw         $7, 0x10($19)
  .L80069FE8:
      lw         $4, 0x218($20)
      lw         $5, 0x8C($29)
  .L80069FF0:
      jal        func_80070C18
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A000
.L8006A000:
      lbu        $2, 0x230($20)
      beqz       $2, .L8006A014
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L8006A014:
      lbu        $2, 0x4($18)
      beqz       $2, .L8006A024
       addu      $6, $0, $0
      lw         $6, 0x10($19)
  .L8006A024:
      lbu        $2, 0x5($18)
      beqz       $2, .L8006A034
       addu      $7, $0, $0
      lw         $7, 0x14($19)
  .L8006A034:
      lw         $4, 0x218($20)
      lw         $5, 0x8C($29)
      jal        func_80071100
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A04C
.L8006A04C:
      addu       $4, $20, $0
      j          .L8006A088
       addiu     $5, $0, 0x7
  .globl .L8006A058
.L8006A058:
      addu       $4, $20, $0
      j          .L8006A088
       addiu     $5, $0, 0x8
  .globl .L8006A064
.L8006A064:
      addu       $4, $20, $0
      j          .L8006A088
       addiu     $5, $0, 0x9
  .globl .L8006A070
.L8006A070:
      lw         $4, 0x218($20)
      jal        func_80070B08
       nop
      addu       $17, $2, $0
      addu       $4, $20, $0
      addiu      $5, $0, 0xA
  .L8006A088:
      jal        func_80068EF4
       nop
      lbu        $2, 0x230($20)
      beqz       $2, .L8006ACA0
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
      j          .L8006ACA0
       nop
  .globl .L8006A0AC
.L8006A0AC:
      lbu        $2, 0x230($20)
      beqz       $2, .L8006A0C0
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L8006A0C0:
      lbu        $2, 0x0($18)
      beqz       $2, .L8006A0D0
       addu      $5, $0, $0
      lw         $5, 0x0($19)
  .L8006A0D0:
      lbu        $2, 0x1($18)
      beqz       $2, .L8006A0E0
       addu      $6, $0, $0
      lw         $6, 0x4($19)
  .L8006A0E0:
      lbu        $2, 0x2($18)
      beqz       $2, .L8006A0FC
       addu      $7, $0, $0
      lw         $7, 0x8($19)
      bnez       $7, .L8006A0FC
       lui       $2, %hi(D_800EC604)
      addiu      $7, $2, %lo(D_800EC604)
  .L8006A0FC:
      lbu        $2, 0x3($18)
      beql       $2, $0, .L8006A110
       sw        $0, 0x10($29)
      lw         $2, 0xC($19)
      sw         $2, 0x10($29)
  .L8006A110:
      lbu        $2, 0x4($18)
      beql       $2, $0, .L8006A124
       sw        $0, 0x14($29)
      lw         $2, 0x10($19)
      sw         $2, 0x14($29)
  .L8006A124:
      lbu        $2, 0x5($18)
      beql       $2, $0, .L8006A138
       sw        $0, 0x18($29)
      lw         $2, 0x14($19)
      sw         $2, 0x18($29)
  .L8006A138:
      lbu        $2, 0x6($18)
      beqz       $2, .L8006A150
       lui       $2, %hi(D_800ECC48)
      addiu      $2, $2, %lo(D_800ECC48)
      j          .L8006A154
       sw        $2, 0x1C($29)
  .L8006A150:
      sw         $0, 0x1C($29)
  .L8006A154:
      lbu        $2, 0x7($18)
      beql       $2, $0, .L8006A168
       sw        $0, 0x20($29)
      lw         $2, 0x1C($19)
      sw         $2, 0x20($29)
  .L8006A168:
      lw         $4, 0x218($20)
      jal        func_800725E8
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A17C
.L8006A17C:
      lbu        $2, 0x0($18)
      beqz       $2, .L8006A18C
       addu      $5, $0, $0
      lw         $5, 0x0($19)
  .L8006A18C:
      lw         $4, 0x218($20)
      jal        func_80072A90
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A1A0
.L8006A1A0:
      lbu        $2, 0x0($18)
      beqz       $2, .L8006A1B0
       addu      $5, $0, $0
      lw         $5, 0x0($19)
  .L8006A1B0:
      lbu        $2, 0x2($18)
      beqz       $2, .L8006A1C4
       lui       $2, %hi(D_800ECC48)
      j          .L8006A1C8
       addiu     $6, $2, %lo(D_800ECC48)
  .L8006A1C4:
      addu       $6, $0, $0
  .L8006A1C8:
      lbu        $2, 0x3($18)
      beqz       $2, .L8006A1D8
       addu      $7, $0, $0
      lw         $7, 0xC($19)
  .L8006A1D8:
      lbu        $2, 0x1($18)
      beql       $2, $0, .L8006A1EC
       sw        $0, 0x10($29)
      lw         $2, 0x4($19)
      sw         $2, 0x10($29)
  .L8006A1EC:
      lw         $4, 0x218($20)
      jal        func_80072E04
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A200
.L8006A200:
      lw         $4, 0x218($20)
      jal        func_800742E4
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A214
.L8006A214:
      lw         $4, 0x218($20)
      jal        func_800742EC
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A228
.L8006A228:
      lw         $4, 0x218($20)
      jal        func_800742F4
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A23C
.L8006A23C:
      lbu        $2, 0x0($18)
      beqz       $2, .L8006A24C
       addu      $5, $0, $0
      lw         $5, 0x0($19)
  .L8006A24C:
      lbu        $2, 0x1($18)
      beqz       $2, .L8006A25C
       addu      $6, $0, $0
      lw         $6, 0x4($19)
  .L8006A25C:
      lbu        $2, 0x2($18)
      beqz       $2, .L8006A26C
       addu      $7, $0, $0
      lw         $7, 0x8($19)
  .L8006A26C:
      lbu        $2, 0x3($18)
      beql       $2, $0, .L8006A280
       sw        $0, 0x10($29)
      lw         $2, 0xC($19)
      sw         $2, 0x10($29)
  .L8006A280:
      lbu        $2, 0x4($18)
      beqz       $2, .L8006A298
       lui       $2, %hi(D_800ECC48)
      addiu      $2, $2, %lo(D_800ECC48)
      j          .L8006A29C
       sw        $2, 0x14($29)
  .L8006A298:
      sw         $0, 0x14($29)
  .L8006A29C:
      lbu        $2, 0x5($18)
      beql       $2, $0, .L8006A2B0
       sw        $0, 0x18($29)
      lw         $2, 0x14($19)
      sw         $2, 0x18($29)
  .L8006A2B0:
      lbu        $2, 0x6($18)
      beql       $2, $0, .L8006A2C4
       sw        $0, 0x1C($29)
      lw         $2, 0x18($19)
      sw         $2, 0x1C($29)
  .L8006A2C4:
      lbu        $2, 0x7($18)
      beql       $2, $0, .L8006A2D8
       sw        $0, 0x20($29)
      lw         $2, 0x1C($19)
      sw         $2, 0x20($29)
  .L8006A2D8:
      lw         $4, 0x218($20)
      jal        func_8007322C
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A2EC
.L8006A2EC:
      lbu        $2, 0x0($18)
      beqz       $2, .L8006A2FC
       addu      $5, $0, $0
      lw         $5, 0x0($19)
  .L8006A2FC:
      lbu        $2, 0x1($18)
      beqz       $2, .L8006A30C
       addu      $6, $0, $0
      lw         $6, 0x4($19)
  .L8006A30C:
      lbu        $2, 0x2($18)
      beqz       $2, .L8006A31C
       addu      $7, $0, $0
      lw         $7, 0x8($19)
  .L8006A31C:
      lbu        $2, 0x3($18)
      beql       $2, $0, .L8006A330
       sw        $0, 0x10($29)
      lw         $2, 0xC($19)
      sw         $2, 0x10($29)
  .L8006A330:
      lbu        $2, 0x4($18)
      beqz       $2, .L8006A348
       lui       $2, %hi(D_800ECC48)
      addiu      $2, $2, %lo(D_800ECC48)
      j          .L8006A34C
       sw        $2, 0x14($29)
  .L8006A348:
      sw         $0, 0x14($29)
  .L8006A34C:
      lbu        $2, 0x5($18)
      beql       $2, $0, .L8006A360
       sw        $0, 0x18($29)
      lw         $2, 0x14($19)
      sw         $2, 0x18($29)
  .L8006A360:
      lbu        $2, 0x6($18)
      beql       $2, $0, .L8006A374
       sw        $0, 0x1C($29)
      lw         $2, 0x18($19)
      sw         $2, 0x1C($29)
  .L8006A374:
      lbu        $2, 0x7($18)
      beql       $2, $0, .L8006A388
       sw        $0, 0x20($29)
      lw         $2, 0x1C($19)
      sw         $2, 0x20($29)
  .L8006A388:
      lw         $4, 0x218($20)
      jal        func_80073724
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A39C
.L8006A39C:
      lbu        $2, 0x1($18)
      beqz       $2, .L8006A3D4
       addu      $16, $0, $0
      lw         $4, 0x4($19)
      beqz       $4, .L8006A3D8
       addiu     $2, $0, -0x5
      lbu        $2, 0x0($4)
      beqz       $2, .L8006A3D8
       addiu     $2, $0, -0x5
      jal        func_80057040
       addiu     $5, $20, 0x231
      addu       $16, $2, $0
      beql       $16, $0, .L8006A3D4
       addiu     $17, $0, -0x5
  .L8006A3D4:
      addiu      $2, $0, -0x5
  .L8006A3D8:
      beq        $17, $2, .L8006AC98
       addu      $4, $16, $0
      lbu        $2, 0x0($18)
      beqz       $2, .L8006A3F0
       addu      $5, $0, $0
      lw         $5, 0x0($19)
  .L8006A3F0:
      lbu        $2, 0x2($18)
      beqz       $2, .L8006A400
       addu      $7, $0, $0
      lw         $7, 0x8($19)
  .L8006A400:
      lbu        $2, 0x4($18)
      beql       $2, $0, .L8006A414
       sw        $0, 0x10($29)
      lw         $2, 0x10($19)
      sw         $2, 0x10($29)
  .L8006A414:
      lbu        $2, 0x3($18)
      beql       $2, $0, .L8006A428
       sw        $0, 0x14($29)
      lw         $2, 0xC($19)
      sw         $2, 0x14($29)
  .L8006A428:
      lbu        $2, 0x8($18)
      beql       $2, $0, .L8006A43C
       sw        $0, 0x18($29)
      lw         $2, 0x20($19)
      sw         $2, 0x18($29)
  .L8006A43C:
      lbu        $2, 0x7($18)
      beql       $2, $0, .L8006A450
       sw        $0, 0x1C($29)
      lw         $2, 0x1C($19)
      sw         $2, 0x1C($29)
  .L8006A450:
      lbu        $2, 0x9($18)
      beql       $2, $0, .L8006A464
       sw        $0, 0x20($29)
      lw         $2, 0x24($19)
      sw         $2, 0x20($29)
  .L8006A464:
      lbu        $2, 0x5($18)
      beql       $2, $0, .L8006A478
       sw        $0, 0x24($29)
      lw         $2, 0x14($19)
      sw         $2, 0x24($29)
  .L8006A478:
      lbu        $2, 0x6($18)
      beql       $2, $0, .L8006A48C
       sw        $0, 0x28($29)
      lw         $2, 0x18($19)
      sw         $2, 0x28($29)
  .L8006A48C:
      lw         $4, 0x218($20)
      jal        func_80071670
       addu      $6, $16, $0
      j          .L8006AC94
       addu      $17, $2, $0
  .globl .L8006A4A0
.L8006A4A0:
      lbu        $3, 0x1($18)
      bnez       $3, .L8006A4B8
       nop
      lbu        $2, 0x2($18)
      beqz       $2, .L8006ACA0
       nop
  .L8006A4B8:
      lbu        $2, 0x0($18)
      beqz       $2, .L8006ACA0
       nop
      lw         $5, 0x0($19)
      beqz       $3, .L8006A4D4
       addu      $6, $0, $0
      lw         $6, 0x4($19)
  .L8006A4D4:
      lbu        $2, 0x2($18)
      beqz       $2, .L8006A4E4
       addu      $7, $0, $0
      lw         $7, 0x8($19)
  .L8006A4E4:
      lw         $4, 0x218($20)
      jal        func_800701B0
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A4F8
.L8006A4F8:
      addu       $16, $0, $0
      addu       $21, $16, $0
      lbu        $2, 0x7($18)
      beqz       $2, .L8006A538
       addu      $22, $16, $0
      lw         $4, 0x1C($19)
      beqz       $4, .L8006A538
       nop
      lbu        $2, 0x0($4)
      beqz       $2, .L8006A538
       nop
      jal        func_80057040
       addiu     $5, $20, 0x231
      addu       $21, $2, $0
      beql       $21, $0, .L8006A538
       addiu     $17, $0, -0x5
  .L8006A538:
      lbu        $2, 0x8($18)
      beqz       $2, .L8006A5BC
       nop
      lw         $3, 0x20($19)
      beqz       $3, .L8006A5BC
       nop
      lbu        $2, 0x0($3)
      beqz       $2, .L8006A5BC
       nop
      addu       $16, $3, $0
  .L8006A560:
      lbu        $4, 0x0($16)
      jal        func_800126C0
       nop
      beqz       $2, .L8006A584
       nop
      addiu      $16, $16, 0x1
      lbu        $2, 0x0($16)
      bnez       $2, .L8006A560
       nop
  .L8006A584:
      lbu        $3, 0x0($16)
      addiu      $2, $0, 0x23
      bne        $3, $2, .L8006A5A4
       addiu     $5, $20, 0x231
      lw         $4, 0x20($19)
      lw         $5, 0x22C($20)
      j          .L8006A5A8
       nop
  .L8006A5A4:
      lw         $4, 0x20($19)
  .L8006A5A8:
      jal        func_80057040
       nop
      addu       $16, $2, $0
      beql       $16, $0, .L8006A5BC
       addiu     $17, $0, -0x5
  .L8006A5BC:
      lbu        $2, 0x1($18)
      beqz       $2, .L8006A5E0
       nop
      lw         $3, 0x4($19)
      beqz       $3, .L8006A5E0
       nop
      lbu        $2, 0x0($3)
      bnel       $2, $0, .L8006A5E0
       addu      $22, $3, $0
  .L8006A5E0:
      lbu        $2, 0x230($20)
      beqz       $2, .L8006A5F8
       addiu     $2, $0, -0x5
      jal        func_80068EC0
       addu      $4, $20, $0
      addiu      $2, $0, -0x5
  .L8006A5F8:
      beq        $17, $2, .L8006A6B4
       nop
      lbu        $2, 0x0($18)
      beqz       $2, .L8006A610
       addu      $6, $0, $0
      lw         $6, 0x0($19)
  .L8006A610:
      lbu        $2, 0x2($18)
      beqz       $2, .L8006A620
       addu      $7, $0, $0
      lw         $7, 0x8($19)
  .L8006A620:
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      sw         $0, 0x18($29)
      sw         $21, 0x1C($29)
      sw         $0, 0x20($29)
      lbu        $2, 0x4($18)
      beql       $2, $0, .L8006A648
       sw        $0, 0x24($29)
      lw         $2, 0x10($19)
      sw         $2, 0x24($29)
  .L8006A648:
      lbu        $2, 0x5($18)
      beql       $2, $0, .L8006A65C
       sw        $0, 0x28($29)
      lw         $2, 0x14($19)
      sw         $2, 0x28($29)
  .L8006A65C:
      sw         $0, 0x2C($29)
      sw         $0, 0x30($29)
      sw         $0, 0x34($29)
      sw         $22, 0x38($29)
      sw         $0, 0x3C($29)
      sw         $16, 0x40($29)
      lbu        $2, 0x9($18)
      beql       $2, $0, .L8006A688
       sw        $0, 0x44($29)
      lw         $2, 0x24($19)
      sw         $2, 0x44($29)
  .L8006A688:
      lbu        $2, 0xA($18)
      beql       $2, $0, .L8006A69C
       sw        $0, 0x48($29)
      lw         $2, 0x28($19)
      sw         $2, 0x48($29)
  .L8006A69C:
      lbu        $2, 0x6($18)
      sw         $2, 0x4C($29)
      lw         $4, 0x218($20)
      jal        func_8006F7E4
       addiu     $5, $0, 0x28
      addu       $17, $2, $0
  .L8006A6B4:
      jal        func_80052540
       addu      $4, $21, $0
      j          .L8006AC98
       addu      $4, $16, $0
  .globl .L8006A6C4
.L8006A6C4:
      lw         $4, 0x224($20)
      beqz       $4, .L8006A6DC
       nop
      jal        func_80055068
       nop
      sw         $0, 0x224($20)
  .L8006A6DC:
      lbu        $2, 0x0($18)
      beqz       $2, .L8006ACA0
       nop
      lw         $4, 0x0($19)
      lw         $5, 0x22C($20)
      jal        func_80054F34
       addiu     $6, $20, 0x231
      bnez       $2, .L8006ACA0
       sw        $2, 0x224($20)
      j          .L8006ACA0
       addiu     $17, $0, -0x5
  .globl .L8006A708
.L8006A708:
      lw         $2, 0x224($20)
      beqz       $2, .L8006ACA0
       nop
      lbu        $2, 0x0($18)
      beqz       $2, .L8006A724
       addu      $5, $0, $0
      lw         $5, 0x0($19)
  .L8006A724:
      lbu        $2, 0x1($18)
      beqz       $2, .L8006A734
       addu      $6, $0, $0
      lw         $6, 0x4($19)
  .L8006A734:
      lbu        $2, 0x3($18)
      lbu        $7, 0x2($18)
      beql       $2, $0, .L8006A74C
       sw        $0, 0x10($29)
      lw         $2, 0xC($19)
      sw         $2, 0x10($29)
  .L8006A74C:
      lbu        $2, 0x4($18)
      beql       $2, $0, .L8006A760
       sw        $0, 0x14($29)
      lw         $2, 0x10($19)
      sw         $2, 0x14($29)
  .L8006A760:
      lw         $4, 0x224($20)
      jal        func_80055388
       nop
      addu       $17, $2, $0
      addiu      $2, $0, -0x4
      beql       $17, $2, .L8006ACA0
       addiu     $17, $0, 0x1
      j          .L8006ACA0
       nop
  .globl .L8006A784
.L8006A784:
      lw         $4, 0x218($20)
      jal        func_800709A0
       nop
      j          .L8006A7D4
       nop
  .globl .L8006A798
.L8006A798:
      lbu        $2, 0x230($20)
      beqz       $2, .L8006A7AC
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L8006A7AC:
      lw         $4, 0x218($20)
      jal        func_800709A0
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A7C0
.L8006A7C0:
      lbu        $2, 0x230($20)
      beqz       $2, .L8006A7D4
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L8006A7D4:
      lw         $4, 0x218($20)
      jal        func_80070900
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A7E8
.L8006A7E8:
      lbu        $2, 0x230($20)
      beqz       $2, .L8006A7FC
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L8006A7FC:
      lw         $4, 0x218($20)
      jal        func_800708B0
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A810
.L8006A810:
      lbu        $2, 0x230($20)
      beqz       $2, .L8006A824
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L8006A824:
      lw         $4, 0x218($20)
      jal        func_80070950
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A838
.L8006A838:
      lbu        $2, 0x230($20)
      beqz       $2, .L8006A84C
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L8006A84C:
      lw         $4, 0x218($20)
      jal        func_800709F0
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006A860
.L8006A860:
      beqz       $18, .L8006A878
       addu      $6, $0, $0
      lbu        $2, 0x0($18)
      beqz       $2, .L8006A878
       nop
      lw         $6, 0x0($19)
  .L8006A878:
      lw         $4, 0x218($20)
      lw         $5, 0x8C($29)
      jal        func_80070578
       nop
      addu       $17, $2, $0
      addu       $4, $20, $0
      jal        func_80068EF4
       addiu     $5, $0, 0x1
      j          .L8006ACA0
       nop
  .globl .L8006A8A0
.L8006A8A0:
      beqz       $18, .L8006A8B8
       addu      $6, $0, $0
      lbu        $2, 0x0($18)
      beqz       $2, .L8006A8B8
       nop
      lw         $6, 0x0($19)
  .L8006A8B8:
      lw         $4, 0x218($20)
      lw         $5, 0x8C($29)
      jal        func_80070578
       nop
      addu       $17, $2, $0
      addu       $4, $20, $0
      jal        func_80068EF4
       addiu     $5, $0, 0x2
      j          .L8006ACA0
       nop
  .globl .L8006A8E0
.L8006A8E0:
      beqz       $18, .L8006A8F8
       addu      $6, $0, $0
      lbu        $2, 0x0($18)
      beqz       $2, .L8006A8F8
       nop
      lw         $6, 0x0($19)
  .L8006A8F8:
      lw         $4, 0x218($20)
      lw         $5, 0x8C($29)
      jal        func_80070578
       nop
      addu       $17, $2, $0
      addu       $4, $20, $0
      jal        func_80068EF4
       addiu     $5, $0, 0x3
      j          .L8006ACA0
       nop
  .globl .L8006A920
.L8006A920:
      beqz       $18, .L8006A938
       addu      $6, $0, $0
      lbu        $2, 0x0($18)
      beqz       $2, .L8006A938
       nop
      lw         $6, 0x0($19)
  .L8006A938:
      lw         $4, 0x218($20)
      lw         $5, 0x8C($29)
      jal        func_80070578
       nop
      addu       $17, $2, $0
      addu       $4, $20, $0
      jal        func_80068EF4
       addiu     $5, $0, 0x4
      j          .L8006ACA0
       nop
  .globl .L8006A960
.L8006A960:
      beqz       $18, .L8006A978
       addu      $6, $0, $0
      lbu        $2, 0x0($18)
      beqz       $2, .L8006A978
       nop
      lw         $6, 0x0($19)
  .L8006A978:
      lw         $4, 0x218($20)
      lw         $5, 0x8C($29)
      jal        func_80070578
       nop
      addu       $17, $2, $0
      addu       $4, $20, $0
      jal        func_80068EF4
       addiu     $5, $0, 0x5
      j          .L8006ACA0
       nop
  .globl .L8006A9A0
.L8006A9A0:
      beqz       $18, .L8006A9B8
       addu      $6, $0, $0
      lbu        $2, 0x0($18)
      beqz       $2, .L8006A9B8
       nop
      lw         $6, 0x0($19)
  .L8006A9B8:
      lw         $4, 0x218($20)
      lw         $5, 0x8C($29)
      jal        func_80070578
       nop
      addu       $17, $2, $0
      addu       $4, $20, $0
      jal        func_80068EF4
       addiu     $5, $0, 0x6
      j          .L8006ACA0
       nop
  .globl .L8006A9E0
.L8006A9E0:
      addu       $4, $20, $0
      jal        func_80068EF4
       addiu     $5, $0, 0xB
      j          .L8006ACA0
       nop
  .globl .L8006A9F4
.L8006A9F4:
      addiu      $5, $0, 0xC
      lw         $4, 0x218($20)
      addu       $2, $5, $0
      jal        func_8007066C
       sw        $2, 0x228($20)
      lw         $4, 0x218($20)
      jal        func_8006E54C
       addiu     $5, $0, 0x12
      lw         $4, 0x218($20)
      jal        func_8006E54C
       addiu     $5, $0, 0x12
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006AA28
.L8006AA28:
      lbu        $2, 0x0($18)
      beqz       $2, .L8006AA38
       addu      $5, $0, $0
      lw         $5, 0x0($19)
  .L8006AA38:
      lbu        $2, 0x1($18)
      beqz       $2, .L8006AA48
       addu      $6, $0, $0
      lw         $6, 0x4($19)
  .L8006AA48:
      lbu        $2, 0x3($18)
      beqz       $2, .L8006AA58
       addu      $7, $0, $0
      lw         $7, 0xC($19)
  .L8006AA58:
      lbu        $2, 0x4($18)
      beql       $2, $0, .L8006AA6C
       sw        $0, 0x10($29)
      lw         $2, 0x10($19)
      sw         $2, 0x10($29)
  .L8006AA6C:
      lbu        $2, 0x2($18)
      beql       $2, $0, .L8006AA80
       sw        $0, 0x14($29)
      lw         $2, 0x8($19)
      sw         $2, 0x14($29)
  .L8006AA80:
      lbu        $2, 0x7($18)
      beql       $2, $0, .L8006AA94
       sw        $0, 0x18($29)
      lw         $2, 0x1C($19)
      sw         $2, 0x18($29)
  .L8006AA94:
      lbu        $2, 0x5($18)
      beql       $2, $0, .L8006AAA8
       sw        $0, 0x1C($29)
      lw         $2, 0x14($19)
      sw         $2, 0x1C($29)
  .L8006AAA8:
      lbu        $2, 0x6($18)
      beql       $2, $0, .L8006AABC
       sw        $0, 0x20($29)
      lw         $2, 0x18($19)
      sw         $2, 0x20($29)
  .L8006AABC:
      lw         $4, 0x218($20)
      jal        func_80061B90
       nop
      j          .L8006ACA0
       addu      $17, $2, $0
  .globl .L8006AAD0
.L8006AAD0:
      lbu        $2, 0xC($18)
      beqz       $2, .L8006ACA0
       nop
      lw         $4, 0x30($19)
      beqz       $4, .L8006ACA0
       nop
      lbu        $2, 0x0($4)
      beqz       $2, .L8006ACA0
       nop
      jal        func_80057040
       addiu     $5, $20, 0x231
      addu       $16, $2, $0
      beql       $16, $0, .L8006AB08
       addiu     $17, $0, -0x5
  .L8006AB08:
      addiu      $2, $0, 0x1
      bne        $17, $2, .L8006AC98
       addu      $4, $16, $0
      lbu        $2, 0x7($18)
      beqz       $2, .L8006AB24
       addu      $6, $0, $0
      lw         $6, 0x1C($19)
  .L8006AB24:
      lbu        $2, 0x0($18)
      beqz       $2, .L8006AB34
       addu      $7, $0, $0
      lw         $7, 0x0($19)
  .L8006AB34:
      lbu        $2, 0x1($18)
      beql       $2, $0, .L8006AB48
       sw        $0, 0x10($29)
      lw         $2, 0x4($19)
      sw         $2, 0x10($29)
  .L8006AB48:
      lbu        $2, 0x2($18)
      beql       $2, $0, .L8006AB5C
       sw        $0, 0x14($29)
      lw         $2, 0x8($19)
      sw         $2, 0x14($29)
  .L8006AB5C:
      lbu        $2, 0x3($18)
      beql       $2, $0, .L8006AB70
       sw        $0, 0x18($29)
      lw         $2, 0xC($19)
      sw         $2, 0x18($29)
  .L8006AB70:
      lbu        $2, 0x6($18)
      beql       $2, $0, .L8006AB84
       sw        $0, 0x1C($29)
      lw         $2, 0x18($19)
      sw         $2, 0x1C($29)
  .L8006AB84:
      lbu        $2, 0x5($18)
      beql       $2, $0, .L8006AB98
       sw        $0, 0x20($29)
      lw         $2, 0x14($19)
      sw         $2, 0x20($29)
  .L8006AB98:
      lbu        $2, 0xB($18)
      beql       $2, $0, .L8006ABAC
       sw        $0, 0x24($29)
      lw         $2, 0x2C($19)
      sw         $2, 0x24($29)
  .L8006ABAC:
      lbu        $2, 0x4($18)
      beql       $2, $0, .L8006ABC0
       sw        $0, 0x28($29)
      lw         $2, 0x10($19)
      sw         $2, 0x28($29)
  .L8006ABC0:
      lbu        $2, 0xD($18)
      beql       $2, $0, .L8006ABD4
       sw        $0, 0x2C($29)
      lw         $2, 0x34($19)
      sw         $2, 0x2C($29)
  .L8006ABD4:
      lbu        $2, 0x8($18)
      sw         $2, 0x30($29)
      lbu        $2, 0x9($18)
      beql       $2, $0, .L8006ABF0
       sw        $0, 0x34($29)
      lw         $2, 0x24($19)
      sw         $2, 0x34($29)
  .L8006ABF0:
      lbu        $2, 0xA($18)
      beql       $2, $0, .L8006AC04
       sw        $0, 0x38($29)
      lw         $2, 0x28($19)
      sw         $2, 0x38($29)
  .L8006AC04:
      lw         $4, 0x218($20)
      jal        func_80061F58
       addu      $5, $16, $0
      j          .L8006AC94
       addu      $17, $2, $0
  .globl .L8006AC18
.L8006AC18:
      lbu        $2, 0x3($18)
      beqz       $2, .L8006AC3C
       addu      $16, $0, $0
      lw         $4, 0xC($19)
      jal        func_80057040
       addiu     $5, $20, 0x231
      addu       $16, $2, $0
      beqz       $16, .L8006ACA0
       addiu     $17, $0, -0x5
  .L8006AC3C:
      lbu        $2, 0x230($20)
      beqz       $2, .L8006AC50
       nop
      jal        func_80068EC0
       addu      $4, $20, $0
  .L8006AC50:
      lbu        $2, 0x0($18)
      beqz       $2, .L8006AC60
       addu      $5, $0, $0
      lw         $5, 0x0($19)
  .L8006AC60:
      lbu        $2, 0x1($18)
      beqz       $2, .L8006AC70
       addu      $6, $0, $0
      lw         $6, 0x4($19)
  .L8006AC70:
      lbu        $2, 0x2($18)
      beqz       $2, .L8006AC80
       addu      $7, $0, $0
      lw         $7, 0x8($19)
  .L8006AC80:
      sw         $16, 0x10($29)
      lw         $4, 0x218($20)
      jal        func_80064A2C
       nop
      addu       $17, $2, $0
  .L8006AC94:
      addu       $4, $16, $0
  .L8006AC98:
      jal        func_80052540
       nop
  .globl .L8006ACA0
.L8006ACA0:
      lw         $2, 0x21C($20)
      lw         $8, 0x8C($29)
      lw         $3, 0x0($2)
      sll        $2, $8, 4
      addu       $2, $2, $3
      lw         $3, 0xC($2)
      beqz       $3, .L8006ACEC
       addiu     $2, $20, 0x4
      lw         $4, 0x214($20)
      sltu       $2, $2, $4
      beqz       $2, .L8006ACEC
       addiu     $2, $0, 0x6
      beq        $3, $2, .L8006ACEC
       addiu     $3, $4, -0x8
      lw         $2, 0x228($20)
      sw         $3, 0x214($20)
      sw         $2, -0x8($4)
      lw         $2, 0x214($20)
      sw         $8, 0x4($2)
  .L8006ACEC:
      beql       $17, $0, .L8006ACF4
       addiu     $17, $0, 0x1
  .L8006ACF4:
      addu       $2, $17, $0
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
.end func_80069060

.globl func_8006AD28
.ent func_8006AD28
func_8006AD28:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lw         $2, 0x21C($16)
      lw         $3, 0x0($2)
      sll        $2, $5, 4
      addu       $2, $2, $3
      lw         $3, 0xC($2)
      beqz       $3, .L8006AD80
       addiu     $17, $0, 0x1
      addiu      $2, $0, 0x6
      beq        $3, $2, .L8006AD80
       addiu     $3, $16, 0x1FC
      lw         $2, 0x214($16)
      addiu      $2, $2, 0x8
      sw         $2, 0x214($16)
      sltu       $2, $3, $2
      bnel       $2, $0, .L8006AD80
       sw        $3, 0x214($16)
  .L8006AD80:
      sltiu      $2, $5, 0x5A
      beqz       $2, .L8006B10C
       lui       $2, %hi(jtbl_800EF110)
      addiu      $2, $2, %lo(jtbl_800EF110)
      sll        $3, $5, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8006ADA4
.L8006ADA4:
      lw         $4, 0x218($16)
      jal        func_8006E54C
       addiu     $5, $0, 0x13
      addu       $17, $2, $0
      addiu      $18, $0, 0x1
      bne        $17, $18, .L8006B120
       nop
      lw         $4, 0x218($16)
      jal        func_8006E54C
       addiu     $5, $0, 0x13
      addu       $17, $2, $0
      bne        $17, $18, .L8006B120
       nop
      lw         $4, 0x218($16)
      jal        func_800703A8
       addiu     $5, $0, 0x1
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006ADEC
.L8006ADEC:
      lw         $4, 0x218($16)
      jal        func_8006B6F8
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AE00
.L8006AE00:
      lw         $4, 0x218($16)
      jal        func_80070410
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AE14
.L8006AE14:
      lbu        $2, 0x230($16)
      beqz       $2, .L8006AE28
       nop
      jal        func_80068EC0
       addu      $4, $16, $0
  .L8006AE28:
      lw         $4, 0x218($16)
      jal        func_8006FEE0
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AE3C
.L8006AE3C:
      lw         $4, 0x218($16)
      jal        func_80070A3C
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AE50
.L8006AE50:
      lw         $4, 0x218($16)
      jal        func_80074BA4
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AE64
.L8006AE64:
      lw         $4, 0x218($16)
      jal        func_80074A4C
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AE78
.L8006AE78:
      lw         $4, 0x218($16)
      jal        func_80070AD8
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AE8C
.L8006AE8C:
      lw         $4, 0x218($16)
      jal        func_80070A80
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AEA0
.L8006AEA0:
      lw         $4, 0x218($16)
      jal        func_80071C58
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AEB4
.L8006AEB4:
      lw         $4, 0x218($16)
      jal        func_8006C2C4
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AEC8
.L8006AEC8:
      lw         $4, 0x218($16)
      jal        func_8006BD20
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AEDC
.L8006AEDC:
      lw         $4, 0x218($16)
      jal        func_8007130C
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AEF0
.L8006AEF0:
      lw         $4, 0x218($16)
      jal        func_80070D94
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AF04
.L8006AF04:
      lw         $4, 0x218($16)
      jal        func_80070924
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AF18
.L8006AF18:
      lw         $4, 0x218($16)
      jal        func_800708D4
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AF2C
.L8006AF2C:
      lw         $4, 0x218($16)
      jal        func_80070974
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AF40
.L8006AF40:
      lw         $4, 0x218($16)
      jal        func_80070924
       nop
  .globl .L8006AF4C
.L8006AF4C:
      lw         $4, 0x218($16)
      jal        func_800709C4
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AF60
.L8006AF60:
      lw         $4, 0x218($16)
      jal        func_80070A08
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AF74
.L8006AF74:
      lbu        $2, 0x230($16)
      beqz       $2, .L8006AF88
       nop
      jal        func_80068EC0
       addu      $4, $16, $0
  .L8006AF88:
      lw         $4, 0x218($16)
      jal        func_8006F414
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AF9C
.L8006AF9C:
      lbu        $2, 0x230($16)
      beqz       $2, .L8006AFB0
       nop
      jal        func_80068EC0
       addu      $4, $16, $0
  .L8006AFB0:
      lw         $4, 0x218($16)
      jal        func_8006F528
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AFC4
.L8006AFC4:
      lbu        $2, 0x230($16)
      beqz       $2, .L8006AFD8
       nop
      jal        func_80068EC0
       addu      $4, $16, $0
  .L8006AFD8:
      lw         $4, 0x218($16)
      jal        func_80073C4C
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006AFEC
.L8006AFEC:
      lbu        $2, 0x230($16)
      beqz       $2, .L8006B000
       nop
      jal        func_80068EC0
       addu      $4, $16, $0
  .L8006B000:
      lw         $4, 0x218($16)
      jal        func_80073D18
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006B014
.L8006B014:
      lbu        $2, 0x230($16)
      beqz       $2, .L8006B028
       nop
      jal        func_80068EC0
       addu      $4, $16, $0
  .L8006B028:
      lw         $4, 0x218($16)
      jal        func_80074284
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006B03C
.L8006B03C:
      lbu        $2, 0x230($16)
      beqz       $2, .L8006B050
       nop
      jal        func_80068EC0
       addu      $4, $16, $0
  .L8006B050:
      lw         $4, 0x218($16)
      jal        func_8006F5A0
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006B064
.L8006B064:
      jal        func_80080654
       addiu     $4, $16, 0x204
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L8006B120
       addu      $2, $17, $0
      lw         $4, 0x218($16)
      lw         $5, 0x210($16)
      jal        func_800713D4
       nop
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006B094
.L8006B094:
      lw         $4, 0x224($16)
      beqz       $4, .L8006B120
       addu      $2, $17, $0
      jal        func_80055068
       nop
      j          .L8006B11C
       sw        $0, 0x224($16)
  .globl .L8006B0B0
.L8006B0B0:
      lw         $4, 0x218($16)
      jal        func_8007060C
       nop
      j          .L8006B10C
       nop
  .globl .L8006B0C4
.L8006B0C4:
      lw         $4, 0x218($16)
      jal        func_80061EB0
       nop
      j          .L8006B11C
       addu      $17, $2, $0
  .globl .L8006B0D8
.L8006B0D8:
      lw         $4, 0x218($16)
      jal        func_80070B74
       nop
      j          .L8006B10C
       nop
  .globl .L8006B0EC
.L8006B0EC:
      lw         $4, 0x218($16)
      jal        func_80064B78
       nop
      addu       $17, $2, $0
      beql       $17, $0, .L8006B11C
       addiu     $17, $0, 0x1
      j          .L8006B120
       addu      $2, $17, $0
  .globl .L8006B10C
.L8006B10C:
      lw         $2, 0x214($16)
      lw         $5, 0x0($2)
      jal        func_80068EF4
       addu      $4, $16, $0
  .L8006B11C:
      addu       $2, $17, $0
  .L8006B120:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006AD28

.globl func_8006B138
.ent func_8006B138
func_8006B138:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x21C($4)
      lw         $2, 0xC($2)
      sll        $5, $5, 2
      addu       $5, $5, $2
      lw         $5, 0x0($5)
      jal        func_80069060
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006B138

.globl func_8006B168
.ent func_8006B168
func_8006B168:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lbu        $2, 0x230($16)
      beqz       $2, .L8006B18C
       nop
      jal        func_80068EC0
       nop
  .L8006B18C:
      lw         $4, 0x218($16)
      jal        func_800702BC
       nop
      lw         $4, 0x224($16)
      beqz       $4, .L8006B1AC
       nop
      jal        func_80055068
       nop
  .L8006B1AC:
      jal        func_80080544
       addiu     $4, $16, 0x204
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006B168

.globl func_8006B1CC
.ent func_8006B1CC
func_8006B1CC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lbu        $2, 0x230($16)
      beqz       $2, .L8006B1F0
       nop
      jal        func_80068EC0
       nop
  .L8006B1F0:
      lw         $4, 0x218($16)
      lw         $2, 0x0($4)
      beqz       $2, .L8006B208
       nop
      jal        func_80070358
       nop
  .L8006B208:
      lw         $4, 0x224($16)
      beqz       $4, .L8006B220
       nop
      jal        func_80055100
       nop
      sw         $0, 0x224($16)
  .L8006B220:
      jal        func_80080544
       addiu     $4, $16, 0x204
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006B1CC

.globl func_8006B240
.ent func_8006B240
func_8006B240:
      jr         $31
       addu      $2, $0, $0
.end func_8006B240

.globl func_8006B248
.ent func_8006B248
func_8006B248:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $4, 0x218($4)
      jal        func_80074470
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006B248

.globl func_8006B268
.ent func_8006B268
func_8006B268:
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
      beqz       $16, .L8006B2E8
       addiu     $2, $0, -0x5
      addiu      $2, $0, 0x1
      sw         $2, 0x0($16)
      addiu      $4, $0, 0xC
      jal        func_80052504
       addu      $5, $0, $0
      addu       $4, $2, $0
      beqz       $4, .L8006B2DC
       addiu     $2, $0, 0x1
      addiu      $3, $0, 0x2002
      sw         $4, 0x4($16)
      sw         $3, 0x0($4)
      lui        $3, %hi(D_80125300)
      lw         $4, 0x4($16)
      addiu      $3, $3, %lo(D_80125300)
      sw         $3, 0x4($4)
      j          .L8006B2E8
       sw        $16, 0x0($17)
  .L8006B2DC:
      jal        func_80052540
       addu      $4, $16, $0
      addiu      $2, $0, -0x5
  .L8006B2E8:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006B268

.globl func_8006B2FC
.ent func_8006B2FC
func_8006B2FC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      beqz       $16, .L8006B324
       sw        $31, 0x14($29)
      lw         $4, 0x4($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
  .L8006B324:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006B2FC

.globl func_8006B338
.ent func_8006B338
func_8006B338:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      addiu      $4, $0, 0x634
      addu       $5, $0, $0
      sw         $31, 0x1C($29)
      jal        func_80052504
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L8006B478
       lui       $2, %hi(D_800EF278)
      addiu      $2, $2, %lo(D_800EF278)
      sw         $2, 0x0($16)
      lui        $2, %hi(D_800F0214)
      addiu      $2, $2, %lo(D_800F0214)
      sw         $2, 0x21C($16)
      addiu      $2, $0, 0x80
      addiu      $3, $16, 0x1FC
      sw         $2, 0x208($16)
      addiu      $2, $0, -0x1
      sw         $17, 0x22C($16)
      sw         $0, 0x204($16)
      sw         $0, 0x20C($16)
      sw         $0, 0x210($16)
      sw         $0, 0x218($16)
      sb         $0, 0x230($16)
      sw         $0, 0x228($16)
      sw         $3, 0x214($16)
      sw         $2, 0x4($3)
      lw         $2, 0x214($16)
      addiu      $4, $16, 0x231
      sw         $0, 0x0($2)
      lw         $5, 0x22C($16)
      jal        func_80052310
       addiu     $6, $0, 0x400
      jal        func_8006E3E0
       nop
      beqz       $2, .L8006B450
       sw        $2, 0x218($16)
      addiu      $4, $0, 0xC
      jal        func_80052504
       addu      $5, $0, $0
      addu       $3, $2, $0
      beqz       $3, .L8006B444
       lui       $2, %hi(func_8006B268)
      addiu      $2, $2, %lo(func_8006B268)
      sw         $2, 0x0($3)
      lui        $2, %hi(func_8006B2FC)
      addiu      $2, $2, %lo(func_8006B2FC)
      sw         $2, 0x4($3)
      lw         $2, 0x218($16)
      sw         $2, 0x8($3)
      lw         $2, 0x218($16)
      addu       $4, $17, $0
      sw         $3, 0x4($2)
      jal        func_800523C0
       sw        $3, 0x0($18)
      lw         $3, 0x218($16)
      lw         $3, 0x0($3)
      bnez       $2, .L8006B460
       sw        $2, 0x2C($3)
      lw         $2, 0x218($16)
      lw         $4, 0x4($2)
      jal        func_80052540
       nop
  .L8006B444:
      lw         $4, 0x218($16)
      jal        func_80052540
       nop
  .L8006B450:
      jal        func_80052540
       addu      $4, $16, $0
      j          .L8006B47C
       addu      $2, $0, $0
  .L8006B460:
      lw         $4, 0x218($16)
      jal        func_800702B4
       nop
      lw         $4, 0x218($16)
      jal        func_8007066C
       addu      $5, $0, $0
  .L8006B478:
      addu       $2, $16, $0
  .L8006B47C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006B338

.globl func_8006B494
.ent func_8006B494
func_8006B494:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L8006B4F0
       sw        $31, 0x14($29)
      lw         $2, 0x218($16)
      beqz       $2, .L8006B4F0
       nop
      lw         $2, 0x0($2)
      beqz       $2, .L8006B4CC
       nop
      lw         $4, 0x2C($2)
      jal        func_80052540
       nop
  .L8006B4CC:
      lw         $2, 0x218($16)
      lw         $4, 0x4($2)
      jal        func_80052540
       nop
      lw         $4, 0x218($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
  .L8006B4F0:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006B494

.globl func_8006B500
.ent func_8006B500
func_8006B500:
      addiu      $29, $29, -0x38
      sw         $20, 0x28($29)
      addu       $20, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $22, 0x30($29)
      addu       $22, $7, $0
      sw         $21, 0x2C($29)
      lw         $21, 0x48($29)
      addiu      $5, $0, 0x14
      sw         $31, 0x34($29)
      sw         $19, 0x24($29)
      jal        func_8006E54C
       sw        $18, 0x20($29)
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8006B6D0
       addu      $2, $3, $0
      lw         $18, 0x18($20)
      beqz       $16, .L8006B574
       nop
      lbu        $2, 0x0($16)
      beqz       $2, .L8006B574
       addu      $5, $18, $0
      lw         $4, 0x0($20)
      jal        func_8006C7E8
       addu      $6, $16, $0
  .L8006B574:
      beqz       $17, .L8006B588
       nop
      lbu        $2, 0x0($17)
      bnez       $2, .L8006B598
       nop
  .L8006B588:
      lw         $2, 0x0($20)
      beqz       $2, .L8006B598
       nop
      lw         $17, 0x2C($2)
  .L8006B598:
      beqz       $17, .L8006B5F0
       nop
      jal        func_80017780
       addu      $4, $17, $0
      addu       $19, $2, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $4, 0x0($20)
      addu       $16, $2, $0
      jal        func_80063060
       addiu     $4, $4, 0x34
      addu       $5, $17, $0
      addu       $6, $19, $0
      sw         $2, 0x0($16)
      lw         $4, 0x0($20)
      jal        func_8006E520
       addu      $7, $0, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      sw         $19, 0x4($2)
  .L8006B5F0:
      beql       $21, $0, .L8006B64C
       addu      $4, $18, $0
      jal        func_80017780
       addu      $4, $21, $0
      addu       $19, $2, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $4, 0x0($20)
      addu       $16, $2, $0
      jal        func_80063060
       addiu     $4, $4, 0x34
      addu       $5, $21, $0
      addu       $6, $19, $0
      sw         $2, 0x8($16)
      lw         $4, 0x0($20)
      jal        func_8006E520
       addu      $7, $0, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      sw         $19, 0xC($2)
      addu       $4, $18, $0
  .L8006B64C:
      jal        func_80058268
       addiu     $5, $0, 0x2
      addiu      $3, $0, 0x1
      beqz       $22, .L8006B69C
       sb        $3, 0x0($2)
      lui        $16, %hi(D_800EC63C)
      addiu      $16, $16, %lo(D_800EC63C)
      jal        func_80017780
       addu      $4, $16, $0
      addu       $4, $22, $0
      addu       $5, $16, $0
      jal        func_80052224
       addu      $6, $2, $0
      bnez       $2, .L8006B6A0
       addu      $4, $20, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addiu      $3, $0, 0x2
      sb         $3, 0x0($2)
  .L8006B69C:
      addu       $4, $20, $0
  .L8006B6A0:
      lw         $6, 0x4C($29)
      lw         $7, 0x50($29)
      addu       $5, $18, $0
      sw         $5, 0x24($4)
      sb         $0, 0xAC3($4)
      sw         $0, 0x20($4)
      jal        func_800651D8
       sw        $0, 0x10($29)
      addu       $3, $2, $0
      beql       $3, $0, .L8006B6CC
       addiu     $3, $0, 0x1
  .L8006B6CC:
      addu       $2, $3, $0
  .L8006B6D0:
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
.end func_8006B500

.globl func_8006B6F8
.ent func_8006B6F8
func_8006B6F8:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lbu        $2, 0xAC3($16)
      beql       $2, $0, .L8006B720
       addu      $4, $16, $0
      jal        func_8006BD20
       nop
      addu       $4, $16, $0
  .L8006B720:
      jal        func_8006E54C
       addiu     $5, $0, 0x15
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006B6F8

.globl func_8006B738
.ent func_8006B738
func_8006B738:
      addiu      $29, $29, -0x50
      sw         $23, 0x44($29)
      lw         $23, 0x68($29)
      sw         $21, 0x3C($29)
      lw         $21, 0x70($29)
      sw         $22, 0x40($29)
      lw         $22, 0x80($29)
      sw         $19, 0x34($29)
      addu       $19, $4, $0
      sw         $31, 0x4C($29)
      sw         $30, 0x48($29)
      sw         $20, 0x38($29)
      sw         $18, 0x30($29)
      sw         $17, 0x2C($29)
      sw         $16, 0x28($29)
      sb         $0, 0xACF($19)
      lw         $4, 0x6C($29)
      jal        func_8006C580
       sb        $5, 0x20($29)
      addu       $4, $19, $0
      sb         $2, 0x21($29)
      andi       $30, $2, 0xFF
      jal        func_8006E54C
       addu      $5, $30, $0
      addu       $20, $2, $0
      addiu      $2, $0, 0x1
      bne        $20, $2, .L8006B9D8
       addu      $2, $20, $0
      lw         $6, 0x64($29)
      lw         $18, 0x18($19)
      lw         $4, 0x0($19)
      jal        func_8006C7E8
       addu      $5, $18, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addiu      $4, $0, 0x2C
      addu       $5, $0, $0
      jal        func_80052504
       addu      $16, $2, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x5
      jal        func_80058268
       sw        $2, 0x0($16)
      lw         $2, 0x0($2)
      beqz       $2, .L8006B9D8
       addiu     $2, $0, -0x5
      lw         $4, 0x0($19)
      jal        func_8006C3E0
       addu      $5, $18, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $18, $0
      lw         $3, 0x0($2)
      lw         $2, 0x24($19)
      addiu      $5, $0, 0x5
      jal        func_80058268
       sw        $2, 0x4($3)
      addu       $4, $18, $0
      lw         $2, 0x0($2)
      addiu      $5, $0, 0x5
      jal        func_80058268
       sb        $0, 0x22($2)
      lw         $2, 0x0($2)
      beqz       $22, .L8006B89C
       sb        $0, 0x27($2)
      jal        func_80017780
       addu      $4, $22, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x5
      jal        func_80058268
       addu      $17, $2, $0
      lw         $4, 0x0($19)
      addu       $16, $2, $0
      jal        func_80063060
       addiu     $4, $4, 0x34
      addu       $5, $22, $0
      lw         $3, 0x0($16)
      addu       $6, $17, $0
      sw         $2, 0x18($3)
      lw         $4, 0x0($19)
      jal        func_8006E520
       addu      $7, $0, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      sw         $17, 0x1C($2)
  .L8006B89C:
      addiu      $3, $30, -0x2
      sltiu      $2, $3, 0x34
      beqz       $2, .L8006B990
       lui       $2, %hi(jtbl_800EF2C0)
      addiu      $2, $2, %lo(jtbl_800EF2C0)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8006B8C4
.L8006B8C4:
      addu       $4, $19, $0
      addu       $5, $23, $0
      lw         $7, 0x74($29)
      jal        func_8006C8A8
       addu      $6, $21, $0
      j          .L8006B994
       addiu     $2, $0, -0x5
  .globl .L8006B8E0
.L8006B8E0:
      addu       $4, $19, $0
      addu       $5, $23, $0
      lw         $7, 0x74($29)
      jal        func_8006C9F8
       addu      $6, $21, $0
      j          .L8006B994
       addiu     $2, $0, -0x5
  .globl .L8006B8FC
.L8006B8FC:
      addu       $4, $19, $0
      addu       $5, $23, $0
      lw         $7, 0x74($29)
      jal        func_8006CB1C
       addu      $6, $21, $0
      j          .L8006B994
       addiu     $2, $0, -0x5
  .globl .L8006B918
.L8006B918:
      addu       $4, $19, $0
      lbu        $5, 0x20($29)
      jal        func_8006CC74
       addu      $6, $21, $0
      j          .L8006B994
       addiu     $2, $0, -0x5
  .globl .L8006B930
.L8006B930:
      addu       $4, $19, $0
      lbu        $5, 0x20($29)
      jal        func_8006CCF4
       addu      $6, $21, $0
      j          .L8006B994
       addiu     $2, $0, -0x5
  .globl .L8006B948
.L8006B948:
      addu       $4, $19, $0
      addu       $5, $21, $0
      lbu        $6, 0x21($29)
      jal        func_8006CD58
       addu      $7, $23, $0
      j          .L8006B994
       addiu     $2, $0, -0x5
  .globl .L8006B964
.L8006B964:
      addu       $4, $19, $0
      jal        func_8006CEC4
       addu      $5, $21, $0
      j          .L8006B994
       addiu     $2, $0, -0x5
  .globl .L8006B978
.L8006B978:
      lw         $5, 0x7C($29)
      lw         $6, 0x78($29)
      lw         $7, 0x84($29)
      jal        func_8006CF0C
       addu      $4, $19, $0
      addu       $20, $2, $0
  .globl .L8006B990
.L8006B990:
      addiu      $2, $0, -0x5
  .L8006B994:
      beq        $20, $2, .L8006B9D4
       addu      $4, $19, $0
      lw         $2, 0x90($29)
      lw         $6, 0x88($29)
      lw         $7, 0x8C($29)
      sw         $2, 0x10($29)
      lw         $2, 0x94($29)
      sw         $2, 0x14($29)
      lw         $2, 0x98($29)
      addu       $5, $18, $0
      sw         $0, 0x1C($29)
      jal        func_80065340
       sw        $2, 0x18($29)
      addu       $20, $2, $0
      beql       $20, $0, .L8006B9D4
       addiu     $20, $0, 0x1
  .L8006B9D4:
      addu       $2, $20, $0
  .L8006B9D8:
      lw         $31, 0x4C($29)
      lw         $30, 0x48($29)
      lw         $23, 0x44($29)
      lw         $22, 0x40($29)
      lw         $21, 0x3C($29)
      lw         $20, 0x38($29)
  .globl .L8006B9F0
.L8006B9F0:
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_8006B738

.globl func_8006BA08
.ent func_8006BA08
func_8006BA08:
      addiu      $29, $29, -0x38
      sw         $22, 0x28($29)
      lw         $22, 0x48($29)
      sw         $23, 0x2C($29)
      lw         $23, 0x4C($29)
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $19, 0x1C($29)
      addiu      $19, $0, 0x1
      sw         $21, 0x24($29)
      addu       $21, $19, $0
      sw         $20, 0x20($29)
      addu       $20, $19, $0
      sw         $30, 0x30($29)
      lw         $30, 0x50($29)
      addu       $4, $7, $0
      sw         $16, 0x10($29)
  .globl .L8006BA4C
.L8006BA4C:
      addu       $16, $6, $0
      sw         $31, 0x34($29)
      sw         $17, 0x14($29)
      beqz       $4, .L8006BA6C
       sw        $5, 0x3C($29)
  .globl .L8006BA60
.L8006BA60:
      jal        func_80024000
       nop
      addu       $20, $2, $0
  .L8006BA6C:
      andi       $2, $16, 0xFF
      bnez       $2, .L8006BA8C
       addu      $4, $18, $0
      slti       $2, $20, 0x2
      bnez       $2, .L8006BB68
       addiu     $5, $0, 0xF
      j          .L8006BAF8
       addiu     $5, $0, 0x10
  .L8006BA8C:
      addiu      $5, $0, 0x16
      sb         $0, 0xAC5($18)
      jal        func_8006E54C
       sb        $19, 0xAC6($18)
      addu       $19, $2, $0
      addiu      $2, $0, 0x1
      bne        $19, $2, .L8006BCF0
       addu      $2, $19, $0
      lw         $17, 0x18($18)
      addiu      $5, $0, 0x5
      jal        func_80058268
       addu      $4, $17, $0
      addiu      $4, $0, 0x2C
      addu       $5, $0, $0
      jal        func_80052504
       addu      $16, $2, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x5
      jal        func_80058268
       sw        $2, 0x0($16)
      lw         $2, 0x0($2)
      beqz       $2, .L8006BCF0
       addiu     $2, $0, -0x5
      beql       $20, $0, .L8006BB50
       addiu     $20, $0, 0x4
      j          .L8006BB54
       addu      $4, $17, $0
  .L8006BAF8:
      sb         $19, 0xAC5($18)
      jal        func_8006E54C
       sb        $0, 0xAC6($18)
      addu       $19, $2, $0
      addiu      $2, $0, 0x1
      bne        $19, $2, .L8006BCF0
       addu      $2, $19, $0
      lw         $17, 0x18($18)
      addiu      $5, $0, 0x5
      jal        func_80058268
       addu      $4, $17, $0
      addiu      $4, $0, 0x2C
      addu       $5, $0, $0
      jal        func_80052504
       addu      $16, $2, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x5
      jal        func_80058268
       sw        $2, 0x0($16)
      lw         $2, 0x0($2)
      beqz       $2, .L8006BCF0
       addiu     $2, $0, -0x5
  .L8006BB50:
      addu       $4, $17, $0
  .L8006BB54:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      j          .L8006BBC0
       sw        $20, 0xC($2)
  .L8006BB68:
      sb         $0, 0xAC5($18)
      jal        func_8006E54C
       sb        $0, 0xAC6($18)
      addu       $19, $2, $0
      addiu      $2, $0, 0x1
      bne        $19, $2, .L8006BCF0
       addu      $2, $19, $0
      lw         $17, 0x18($18)
      addiu      $5, $0, 0x5
      jal        func_80058268
       addu      $4, $17, $0
      addiu      $4, $0, 0x2C
      addu       $5, $0, $0
      jal        func_80052504
       addu      $16, $2, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x5
      jal        func_80058268
       sw        $2, 0x0($16)
      lw         $2, 0x0($2)
      beqz       $2, .L8006BCF0
       addiu     $2, $0, -0x5
  .L8006BBC0:
      lw         $4, 0x0($18)
      jal        func_8006C3E0
       addu      $5, $17, $0
      lw         $17, 0x18($18)
      addiu      $5, $0, 0x5
      jal        func_80058268
       addu      $4, $17, $0
      addu       $4, $17, $0
      lw         $3, 0x0($2)
      lw         $2, 0x24($18)
      addiu      $5, $0, 0x5
      jal        func_80058268
       sw        $2, 0x4($3)
      jal        func_80056554
       addu      $16, $2, $0
      addu       $4, $17, $0
      lw         $3, 0x0($16)
      addiu      $5, $0, 0x5
      jal        func_80058268
  .globl .L8006BC0C
.L8006BC0C:
       sw        $2, 0x8($3)
      lw         $2, 0x0($2)
      sb         $0, 0x27($2)
      lw         $4, 0x0($18)
      lw         $6, 0x3C($29)
      jal        func_8006C7E8
       addu      $5, $17, $0
      lw         $3, 0x18($18)
      addiu      $2, $0, 0x1
      sb         $2, 0xAC3($18)
      sb         $0, 0xAC4($18)
      sb         $0, 0xAC7($18)
      sw         $0, 0x2C4($18)
      sb         $0, 0x6B5($18)
      sw         $0, 0x2BC($18)
      sw         $0, 0x2C8($18)
      beqz       $22, .L8006BC6C
       sw        $3, 0x20($18)
      jal        func_800523C0
       addu      $4, $22, $0
      bnez       $2, .L8006BC70
       sw        $2, 0x2CC($18)
      j          .L8006BC70
  .globl .L8006BC68
.L8006BC68:
       addu      $21, $0, $0
  .L8006BC6C:
      sw         $0, 0x2CC($18)
  .L8006BC70:
      beqz       $23, .L8006BC98
       andi      $2, $21, 0xFF
      beql       $2, $0, .L8006BC9C
       sw        $0, 0x2D0($18)
      jal        func_800523C0
       addu      $4, $23, $0
      bnez       $2, .L8006BC9C
       sw        $2, 0x2D0($18)
      j          .L8006BC9C
       addu      $21, $0, $0
  .L8006BC98:
      sw         $0, 0x2D0($18)
  .L8006BC9C:
      beqz       $30, .L8006BCC4
       andi      $2, $21, 0xFF
      beql       $2, $0, .L8006BCCC
       sw        $0, 0x2D8($18)
      jal        func_800523C0
       addu      $4, $30, $0
      bnez       $2, .L8006BCC8
       sw        $2, 0x2D8($18)
      j          .L8006BCC8
       addu      $21, $0, $0
  .L8006BCC4:
      sw         $0, 0x2D8($18)
  .L8006BCC8:
      andi       $2, $21, 0xFF
  .L8006BCCC:
      bnez       $2, .L8006BCF0
       addu      $2, $19, $0
      lw         $4, 0x2CC($18)
      jal        func_80052540
       nop
      lw         $4, 0x2D0($18)
      jal        func_80052540
       nop
      addiu      $2, $0, -0x5
  .L8006BCF0:
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
.end func_8006BA08

.globl func_8006BD20
.ent func_8006BD20
func_8006BD20:
      addiu      $29, $29, -0x50
      sw         $17, 0x2C($29)
      addu       $17, $4, $0
      sw         $23, 0x44($29)
      addiu      $23, $0, 0x1
      sw         $31, 0x48($29)
      sw         $22, 0x40($29)
      sw         $21, 0x3C($29)
      sw         $20, 0x38($29)
      sw         $19, 0x34($29)
      sw         $18, 0x30($29)
      beqz       $17, .L8006BD60
       sw        $16, 0x28($29)
      lw         $2, 0x0($17)
      bnez       $2, .L8006BD68
       nop
  .L8006BD60:
      j          .L8006BEEC
       addiu     $2, $0, 0x1
  .L8006BD68:
      lbu        $2, 0xAC3($17)
      beqz       $2, .L8006BE58
       nop
      lw         $2, 0x20($17)
      beqz       $2, .L8006BED8
       addu      $2, $23, $0
      jal        func_8006C468
       addu      $4, $17, $0
      lw         $21, 0x20($17)
      addiu      $5, $0, 0x5
      jal        func_80058268
       addu      $4, $21, $0
      lw         $2, 0x0($2)
      lw         $4, 0x8($2)
      jal        func_80056C94
       nop
      addu       $18, $2, $0
      blez       $18, .L8006BE58
       addu      $20, $0, $0
      lw         $19, 0x2C8($17)
      blez       $18, .L8006BE24
       addu      $16, $0, $0
      addiu      $22, $29, 0x24
      addu       $4, $21, $0
  .L8006BDC8:
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $5, $16, $0
      lw         $2, 0x0($2)
      addiu      $6, $29, 0x20
      sw         $22, 0x10($29)
      lw         $4, 0x8($2)
      jal        func_80056F40
       addu      $7, $0, $0
      lw         $4, 0x20($29)
      jal        func_80017780
       nop
      addu       $3, $2, $0
      slt        $2, $19, $3
      bnel       $2, $0, .L8006BE08
       addu      $19, $3, $0
  .L8006BE08:
      lw         $2, 0x24($29)
      bnel       $2, $0, .L8006BE14
       addiu     $20, $0, 0x1
  .L8006BE14:
      addiu      $16, $16, 0x1
      slt        $2, $16, $18
      bnez       $2, .L8006BDC8
       addu      $4, $21, $0
  .L8006BE24:
      andi       $2, $20, 0xFF
      bnez       $2, .L8006BE58
       addiu     $2, $0, 0xF
      lbu        $3, 0x10($21)
      bne        $3, $2, .L8006BE58
       addu      $4, $21, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      addu       $5, $0, $0
      lw         $4, 0x8($2)
      jal        func_80056CA8
       addiu     $6, $0, 0x1
  .L8006BE58:
      lw         $4, 0x20($17)
      beqz       $4, .L8006BED8
       addu      $2, $23, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      addiu      $3, $0, 0x1
      sb         $3, 0x22($2)
      sw         $0, 0x10($29)
      lw         $2, 0x2D8($17)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $2, 0x14($29)
      lw         $5, 0x20($17)
      lw         $6, 0x2CC($17)
      lw         $7, 0x2D0($17)
      jal        func_80065340
       addu      $4, $17, $0
      addu       $23, $2, $0
      beql       $23, $0, .L8006BEAC
       addiu     $23, $0, 0x1
  .L8006BEAC:
      lw         $4, 0x2CC($17)
      jal        func_80052540
       nop
      lw         $4, 0x2D0($17)
      jal        func_80052540
       sw        $0, 0x2CC($17)
      lw         $4, 0x2D8($17)
      jal        func_80052540
       sw        $0, 0x2D0($17)
      sw         $0, 0x2D8($17)
      addu       $2, $23, $0
  .L8006BED8:
      sb         $0, 0xAC7($17)
      sb         $0, 0xAC3($17)
      sw         $0, 0x20($17)
      sb         $0, 0xAC4($17)
      sb         $0, 0xACF($17)
  .L8006BEEC:
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
.end func_8006BD20

.globl func_8006BF18
.ent func_8006BF18
func_8006BF18:
      addiu      $29, $29, -0x28
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $31, 0x20($29)
      jal        func_8006C468
       sw        $18, 0x18($29)
      lbu        $2, 0xAC3($16)
      beqz       $2, .L8006BF50
       addiu     $18, $0, 0x1
      sb         $18, 0xAC4($16)
  .L8006BF50:
      beqz       $19, .L8006BF74
       sb        $17, 0xAC7($16)
      addiu      $4, $16, 0x8B6
      addu       $5, $19, $0
      jal        func_80052310
       addiu     $6, $0, 0x200
      sb         $0, 0xAB6($16)
      j          .L8006BF7C
       sb        $18, 0xAC2($16)
  .L8006BF74:
      sb         $0, 0x8B6($16)
      sb         $0, 0xAC2($16)
  .L8006BF7C:
      addu       $2, $18, $0
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8006BF18

.globl func_8006BF9C
.ent func_8006BF9C
func_8006BF9C:
      addiu      $29, $29, -0x38
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $23, 0x2C($29)
      lw         $23, 0x50($29)
      addu       $4, $5, $0
      sw         $30, 0x30($29)
      addu       $30, $6, $0
      sw         $16, 0x10($29)
      addu       $16, $7, $0
      sw         $19, 0x1C($29)
      addiu      $19, $0, 0x1
      sw         $21, 0x24($29)
      addiu      $21, $0, 0x4
      sw         $22, 0x28($29)
      addiu      $22, $0, 0x28
      sw         $31, 0x34($29)
      sw         $20, 0x20($29)
      beqz       $4, .L8006BFF8
       sw        $17, 0x14($29)
      jal        func_80024000
       nop
      addu       $22, $2, $0
  .L8006BFF8:
      beqz       $16, .L8006C010
       addu      $4, $18, $0
      jal        func_80024000
       addu      $4, $16, $0
      addu       $21, $2, $0
      addu       $4, $18, $0
  .L8006C010:
      jal        func_8006E54C
       addiu     $5, $0, 0x11
      addu       $20, $2, $0
      addiu      $2, $0, 0x1
      bne        $20, $2, .L8006C294
       addu      $2, $20, $0
      lw         $17, 0x18($18)
      bnez       $17, .L8006C03C
       addu      $5, $17, $0
      j          .L8006C294
       addiu     $2, $0, 0x1
  .L8006C03C:
      lw         $4, 0x0($18)
      jal        func_8006C7E8
       addu      $6, $30, $0
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addiu      $4, $0, 0x2C
      addu       $5, $0, $0
      jal        func_80052504
       addu      $16, $2, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x5
      jal        func_80058268
       sw        $2, 0x0($16)
      lw         $2, 0x0($2)
      beqz       $2, .L8006C294
       addiu     $2, $0, -0x5
      lw         $4, 0x0($18)
      jal        func_8006C3E0
       addu      $5, $17, $0
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $17, $0
      lw         $3, 0x0($2)
      lw         $2, 0x24($18)
      addiu      $5, $0, 0x5
      jal        func_80058268
       sw        $2, 0x4($3)
      lw         $2, 0x0($2)
      sb         $0, 0x27($2)
      lw         $4, 0x10($18)
      beqz       $4, .L8006C0D4
       sb        $20, 0xAC9($18)
      jal        func_80051688
       nop
      j          .L8006C0E4
       addu      $4, $17, $0
  .L8006C0D4:
      jal        func_80051768
       nop
      sw         $2, 0x10($18)
      addu       $4, $17, $0
  .L8006C0E4:
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $17, $0
      lw         $2, 0x0($2)
      addiu      $5, $0, 0x5
      jal        func_80058268
       sw        $21, 0xC($2)
      lw         $2, 0x0($2)
      sw         $22, 0x10($2)
      lw         $8, 0x48($29)
      beqz       $8, .L8006C12C
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $3, 0x0($2)
      lhu        $2, 0x20($3)
      ori        $2, $2, 0x1
      sh         $2, 0x20($3)
  .L8006C12C:
      lw         $8, 0x4C($29)
      beqz       $8, .L8006C150
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $3, 0x0($2)
      lhu        $2, 0x20($3)
      ori        $2, $2, 0x2
      sh         $2, 0x20($3)
  .L8006C150:
      beqz       $23, .L8006C1B0
       addu      $4, $23, $0
      lui        $5, %hi(D_800ECC5C)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ECC5C)
      bnez       $2, .L8006C188
       addu      $4, $23, $0
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x2
      sb         $2, 0x23($3)
      addu       $4, $23, $0
  .L8006C188:
      lui        $5, %hi(D_800ECC64)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ECC64)
      bnez       $2, .L8006C1B0
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x1
      sb         $2, 0x23($3)
  .L8006C1B0:
      lw         $8, 0x54($29)
      beql       $8, $0, .L8006C1D0
       sw        $0, 0x2CC($18)
      jal        func_800523C0
       addu      $4, $8, $0
      bnez       $2, .L8006C1D0
       sw        $2, 0x2CC($18)
      addu       $19, $0, $0
  .L8006C1D0:
      lw         $8, 0x58($29)
      beqz       $8, .L8006C1FC
       andi      $2, $19, 0xFF
      beql       $2, $0, .L8006C200
       sw        $0, 0x2D0($18)
      jal        func_800523C0
       addu      $4, $8, $0
      bnez       $2, .L8006C200
       sw        $2, 0x2D0($18)
      j          .L8006C200
       addu      $19, $0, $0
  .L8006C1FC:
      sw         $0, 0x2D0($18)
  .L8006C200:
      lw         $8, 0x5C($29)
      beqz       $8, .L8006C22C
       andi      $2, $19, 0xFF
      beql       $2, $0, .L8006C230
       sw        $0, 0x2D8($18)
      jal        func_800523C0
       addu      $4, $8, $0
      bnez       $2, .L8006C230
       sw        $2, 0x2D8($18)
      j          .L8006C230
       addu      $19, $0, $0
  .L8006C22C:
      sw         $0, 0x2D8($18)
  .L8006C230:
      lw         $8, 0x60($29)
      beqz       $8, .L8006C25C
       andi      $2, $19, 0xFF
      beql       $2, $0, .L8006C264
       sw        $0, 0x2E8($18)
      jal        func_800523C0
       addu      $4, $8, $0
      bnez       $2, .L8006C260
       sw        $2, 0x2E8($18)
      j          .L8006C260
       addu      $19, $0, $0
  .L8006C25C:
      sw         $0, 0x2E8($18)
  .L8006C260:
      andi       $2, $19, 0xFF
  .L8006C264:
      bnez       $2, .L8006C294
       addu      $2, $20, $0
      lw         $4, 0x2CC($18)
      jal        func_80052540
       nop
      lw         $4, 0x2D0($18)
      jal        func_80052540
       nop
      lw         $4, 0x2D8($18)
      jal        func_80052540
       nop
      addiu      $2, $0, -0x5
  .L8006C294:
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
.end func_8006BF9C

.globl func_8006C2C4
.ent func_8006C2C4
func_8006C2C4:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $18, 0x28($29)
      sw         $31, 0x2C($29)
      sw         $17, 0x24($29)
      lbu        $2, 0xAC9($16)
      lw         $17, 0x18($16)
      beqz       $2, .L8006C308
       addiu     $18, $0, 0x1
      beqz       $17, .L8006C308
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      bnez       $2, .L8006C310
       nop
  .L8006C308:
      j          .L8006C3C8
       addiu     $2, $0, 0x1
  .L8006C310:
      lw         $4, 0x10($16)
      jal        func_8005160C
       nop
      addu       $5, $17, $0
      lw         $4, 0x0($16)
      addu       $6, $2, $0
      jal        func_8006C728
       sb        $0, 0xAC9($16)
      lw         $4, 0x10($16)
      jal        func_800517B4
       nop
      addu       $4, $17, $0
      addiu      $5, $0, 0x5
      sw         $0, 0x10($16)
      jal        func_80058268
       sb        $0, 0xACF($16)
      lw         $2, 0x0($2)
      sb         $18, 0x22($2)
      sw         $0, 0x10($29)
      lw         $2, 0x2D8($16)
      sw         $2, 0x14($29)
      lw         $2, 0x2E8($16)
      addu       $4, $16, $0
      sw         $0, 0x1C($29)
      sw         $2, 0x18($29)
      lw         $6, 0x2CC($16)
      lw         $7, 0x2D0($16)
      jal        func_80065340
       addu      $5, $17, $0
      addu       $18, $2, $0
      beql       $18, $0, .L8006C390
       addiu     $18, $0, 0x1
  .L8006C390:
      lw         $4, 0x2CC($16)
      jal        func_80052540
       nop
      lw         $4, 0x2D0($16)
      jal        func_80052540
       sw        $0, 0x2CC($16)
      lw         $4, 0x2D8($16)
      jal        func_80052540
       sw        $0, 0x2D0($16)
      lw         $4, 0x2E8($16)
      jal        func_80052540
       sw        $0, 0x2D8($16)
      addu       $2, $18, $0
      sw         $0, 0x2E8($16)
  .L8006C3C8:
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8006C2C4

.globl func_8006C3E0
.ent func_8006C3E0
func_8006C3E0:
      addiu      $29, $29, -0x20
      addu       $2, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $4, 0x48($2)
      bnez       $4, .L8006C408
       addu      $17, $5, $0
      j          .L8006C454
       sw        $17, 0x48($2)
  .L8006C408:
      beq        $17, $4, .L8006C454
       addu      $16, $4, $0
      addu       $4, $16, $0
  .L8006C414:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $2, 0x0($2)
      beqz       $2, .L8006C444
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $16, 0x0($2)
      j          .L8006C414
       addu      $4, $16, $0
  .L8006C444:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      sw         $17, 0x0($2)
  .L8006C454:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006C3E0

.globl func_8006C468
.ent func_8006C468
func_8006C468:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      lbu        $2, 0xAC4($16)
      beqz       $2, .L8006C568
       nop
      lw         $2, 0x20($16)
      beqz       $2, .L8006C568
       nop
      lw         $2, 0x2BC($16)
      beqz       $2, .L8006C4D8
       nop
  .L8006C4A4:
      lw         $2, 0x2BC($16)
      addu       $2, $2, $16
      lbu        $4, 0x6B4($2)
      jal        func_800126C0
       nop
      beqz       $2, .L8006C4D8
       nop
      lw         $2, 0x2BC($16)
      addiu      $2, $2, -0x1
      sw         $2, 0x2BC($16)
      addu       $2, $16, $2
      j          .L8006C4A4
       sb        $0, 0x6B5($2)
  .L8006C4D8:
      lw         $3, 0x2BC($16)
      lw         $2, 0x2C8($16)
      slt        $2, $2, $3
      bnel       $2, $0, .L8006C4EC
       sw        $3, 0x2C8($16)
  .L8006C4EC:
      addiu      $5, $0, 0x5
      lw         $18, 0x20($16)
      lw         $2, 0x2C4($16)
      addu       $4, $18, $0
      addiu      $2, $2, 0x1
      jal        func_80058268
       sw        $2, 0x2C4($16)
      lbu        $3, 0xAC2($16)
      lw         $2, 0x0($2)
      bnez       $3, .L8006C51C
       addiu     $5, $16, 0x8B6
      addiu      $5, $16, 0x6B5
  .L8006C51C:
      addiu      $17, $16, 0x6B5
      lw         $4, 0x8($2)
      lbu        $7, 0xAC7($16)
      jal        func_80056BFC
       addu      $6, $17, $0
      lbu        $2, 0xAC5($16)
      bnez       $2, .L8006C548
       nop
      lbu        $2, 0xAC6($16)
      bnel       $2, $0, .L8006C564
       sw        $0, 0x2BC($16)
  .L8006C548:
      lbu        $2, 0xAC7($16)
      beqz       $2, .L8006C560
       addu      $5, $18, $0
      lw         $4, 0x0($16)
      jal        func_8006C728
       addu      $6, $17, $0
  .L8006C560:
      sw         $0, 0x2BC($16)
  .L8006C564:
      sb         $0, 0x6B5($16)
  .L8006C568:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006C468

.globl func_8006C580
.ent func_8006C580
func_8006C580:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L8006C5AC
       sw        $31, 0x14($29)
      addu       $4, $16, $0
      lui        $5, %hi(D_800ED208)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED208)
      bnez       $2, .L8006C5B4
       addu      $4, $16, $0
  .L8006C5AC:
      j          .L8006C6AC
       addiu     $3, $0, 0x9
  .L8006C5B4:
      lui        $5, %hi(D_800ED2D8)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2D8)
      bnez       $2, .L8006C5D0
       addu      $4, $16, $0
      j          .L8006C6AC
       addiu     $3, $0, 0xA
  .L8006C5D0:
      lui        $5, %hi(D_800ED320)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED320)
      bnez       $2, .L8006C5EC
       addu      $4, $16, $0
      j          .L8006C6AC
       addiu     $3, $0, 0x35
  .L8006C5EC:
      lui        $5, %hi(D_800ED294)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED294)
      bnez       $2, .L8006C608
       addu      $4, $16, $0
      j          .L8006C6AC
       addiu     $3, $0, 0xB
  .L8006C608:
      lui        $5, %hi(D_800ED2F4)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2F4)
      bnez       $2, .L8006C624
       addu      $4, $16, $0
      j          .L8006C6AC
       addiu     $3, $0, 0xC
  .L8006C624:
      lui        $5, %hi(D_800ED328)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED328)
      bnez       $2, .L8006C640
       addu      $4, $16, $0
      j          .L8006C6AC
       addiu     $3, $0, 0xD
  .L8006C640:
      lui        $5, %hi(D_800ED310)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED310)
      bnez       $2, .L8006C65C
       addu      $4, $16, $0
      j          .L8006C6AC
       addiu     $3, $0, 0xE
  .L8006C65C:
      lui        $5, %hi(D_800ED2B0)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2B0)
      bnez       $2, .L8006C678
       addu      $4, $16, $0
      j          .L8006C6AC
       addiu     $3, $0, 0x17
  .L8006C678:
      lui        $5, %hi(D_800ED2B8)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2B8)
      bnez       $2, .L8006C694
       addu      $4, $16, $0
      j          .L8006C6AC
       addiu     $3, $0, 0x2
  .L8006C694:
      lui        $5, %hi(D_800ED284)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED284)
      bnez       $2, .L8006C6AC
       addiu     $3, $0, 0x9
      addiu      $3, $0, 0x34
  .L8006C6AC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006C580

.globl func_8006C6C0
.ent func_8006C6C0
func_8006C6C0:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      bnez       $16, .L8006C6DC
       sw        $31, 0x14($29)
      j          .L8006C714
       addiu     $3, $0, 0x3
  .L8006C6DC:
      addu       $4, $16, $0
      lui        $5, %hi(D_800ED330)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED330)
      bnez       $2, .L8006C6FC
       addu      $4, $16, $0
      j          .L8006C714
       addiu     $3, $0, 0x1
  .L8006C6FC:
      lui        $5, %hi(D_800ED2C8)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800ED2C8)
      bnez       $2, .L8006C714
       addiu     $3, $0, 0x3
      addiu      $3, $0, 0x2
  .L8006C714:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006C6C0

.globl func_8006C728
.ent func_8006C728
func_8006C728:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $31, 0x20($29)
      beqz       $17, .L8006C7CC
       sw        $16, 0x10($29)
      beqz       $19, .L8006C7CC
       nop
      beqz       $18, .L8006C7AC
       addu      $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      addiu      $4, $17, 0x34
      jal        func_80063060
       addu      $16, $2, $0
      addu       $4, $18, $0
      jal        func_80017780
       sw        $2, 0x0($16)
      addu       $4, $17, $0
      addu       $5, $18, $0
      addu       $16, $2, $0
      addu       $6, $16, $0
      jal        func_8006E520
       addu      $7, $0, $0
      addu       $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      j          .L8006C7CC
       sw        $16, 0x4($2)
  .L8006C7AC:
      jal        func_80058268
       addiu     $5, $0, 0x1
      addu       $4, $19, $0
      addiu      $5, $0, 0x1
      addiu      $3, $0, -0x1
      jal        func_80058268
       sw        $3, 0x0($2)
      sw         $0, 0x4($2)
  .L8006C7CC:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8006C728

.globl func_8006C7E8
.ent func_8006C7E8
func_8006C7E8:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $31, 0x20($29)
      beqz       $17, .L8006C88C
       sw        $16, 0x10($29)
      beqz       $19, .L8006C88C
       nop
      beqz       $18, .L8006C86C
       addu      $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x6
      addiu      $4, $17, 0x34
      jal        func_80063060
       addu      $16, $2, $0
      addu       $4, $18, $0
      jal        func_80017780
       sw        $2, 0x0($16)
      addu       $4, $17, $0
      addu       $5, $18, $0
      addu       $16, $2, $0
      addu       $6, $16, $0
      jal        func_8006E520
       addu      $7, $0, $0
      addu       $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x6
      j          .L8006C88C
       sw        $16, 0x4($2)
  .L8006C86C:
      jal        func_80058268
       addiu     $5, $0, 0x6
      addu       $4, $19, $0
      addiu      $5, $0, 0x6
      addiu      $3, $0, -0x1
      jal        func_80058268
       sw        $3, 0x0($2)
      sw         $0, 0x4($2)
  .L8006C88C:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8006C7E8

.globl func_8006C8A8
.ent func_8006C8A8
func_8006C8A8:
      addiu      $29, $29, -0x30
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $18, 0x20($29)
      addu       $18, $7, $0
      addiu      $2, $0, 0x1
      sw         $2, 0x14($29)
      addiu      $2, $0, 0x14
      sw         $31, 0x28($29)
      beqz       $16, .L8006C938
       sw        $2, 0x10($29)
      lbu        $2, 0x0($16)
      beqz       $2, .L8006C93C
       addu      $6, $17, $0
      jal        func_80024000
       addu      $4, $16, $0
      blez       $2, .L8006C938
       addu      $4, $16, $0
      jal        func_80017580
       addiu     $5, $0, 0x2C
      beqz       $2, .L8006C92C
       addu      $4, $16, $0
      lui        $5, %hi(D_800ED628)
      addiu      $5, $5, %lo(D_800ED628)
      addiu      $6, $29, 0x10
      jal        func_800165C0
       addiu     $7, $29, 0x14
      j          .L8006C93C
       addu      $6, $17, $0
  .L8006C92C:
      jal        func_80024000
       addu      $4, $16, $0
      sw         $2, 0x10($29)
  .L8006C938:
      addu       $6, $17, $0
  .L8006C93C:
      lw         $17, 0x18($19)
      lw         $4, 0x0($19)
      jal        func_8006C728
       addu      $5, $17, $0
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $17, $0
      lw         $3, 0x0($2)
      lw         $2, 0x14($29)
      addiu      $5, $0, 0x5
      jal        func_80058268
       sw        $2, 0xC($3)
      lw         $3, 0x0($2)
      lw         $2, 0x10($29)
      beqz       $18, .L8006C9B0
       sw        $2, 0x10($3)
      jal        func_80017780
       addu      $4, $18, $0
      beqz       $2, .L8006C9B0
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $18, $0
      jal        func_80024000
       addu      $16, $2, $0
      lw         $3, 0x0($16)
      j          .L8006C9C4
       sw        $2, 0x14($3)
  .L8006C9B0:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      sw         $0, 0x14($2)
  .L8006C9C4:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x1
      sb         $2, 0x22($3)
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8006C8A8

.globl func_8006C9F8
.ent func_8006C9F8
func_8006C9F8:
      addiu      $29, $29, -0x30
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $21, 0x24($29)
      addu       $21, $6, $0
      sw         $19, 0x1C($29)
      addu       $19, $7, $0
      sw         $18, 0x18($29)
      sw         $31, 0x28($29)
      sw         $17, 0x14($29)
      lw         $17, 0x18($20)
      beqz       $16, .L8006CA5C
       addiu     $18, $0, 0x14
      lbu        $2, 0x0($16)
      beqz       $2, .L8006CA60
       addu      $5, $17, $0
      jal        func_80024000
       addu      $4, $16, $0
      blezl      $2, .L8006CA60
       addu      $5, $17, $0
      jal        func_80024000
       addu      $4, $16, $0
      addu       $18, $2, $0
  .L8006CA5C:
      addu       $5, $17, $0
  .L8006CA60:
      lw         $4, 0x0($20)
      jal        func_8006C728
       addu      $6, $21, $0
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $17, $0
      addiu      $5, $0, 0x5
      lw         $2, 0x0($2)
      addiu      $3, $0, 0x1
      jal        func_80058268
       sw        $3, 0xC($2)
      lw         $2, 0x0($2)
      beqz       $19, .L8006CACC
       sw        $18, 0x10($2)
      jal        func_80017780
       addu      $4, $19, $0
      beqz       $2, .L8006CACC
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $19, $0
      jal        func_80024000
       addu      $16, $2, $0
      lw         $3, 0x0($16)
      j          .L8006CAE0
       sw        $2, 0x14($3)
  .L8006CACC:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      sw         $0, 0x14($2)
  .L8006CAE0:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x1
      sb         $2, 0x22($3)
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8006C9F8

.globl func_8006CB1C
.ent func_8006CB1C
func_8006CB1C:
      addiu      $29, $29, -0x30
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $20, 0x28($29)
      addu       $20, $6, $0
      sw         $18, 0x20($29)
      addiu      $2, $0, 0x1
      sw         $2, 0x14($29)
      addiu      $2, $0, 0x28
      sw         $31, 0x2C($29)
      sw         $17, 0x1C($29)
      sw         $2, 0x10($29)
      lw         $17, 0x18($19)
      beqz       $16, .L8006CBB4
       addu      $18, $7, $0
      lbu        $2, 0x0($16)
      beqz       $2, .L8006CBB8
       addu      $5, $17, $0
      jal        func_80024000
       addu      $4, $16, $0
      blez       $2, .L8006CBB4
       addu      $4, $16, $0
      jal        func_80017580
       addiu     $5, $0, 0x2C
      beqz       $2, .L8006CBA8
       addu      $4, $16, $0
      lui        $5, %hi(D_800ED628)
      addiu      $5, $5, %lo(D_800ED628)
      addiu      $6, $29, 0x10
      jal        func_800165C0
       addiu     $7, $29, 0x14
      j          .L8006CBB8
       addu      $5, $17, $0
  .L8006CBA8:
      jal        func_80024000
       addu      $4, $16, $0
      sw         $2, 0x10($29)
  .L8006CBB4:
      addu       $5, $17, $0
  .L8006CBB8:
      lw         $4, 0x0($19)
      jal        func_8006C728
       addu      $6, $20, $0
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $17, $0
      lw         $3, 0x0($2)
      lw         $2, 0x14($29)
      addiu      $5, $0, 0x5
      jal        func_80058268
       sw        $2, 0xC($3)
      lw         $3, 0x0($2)
      lw         $2, 0x10($29)
      beqz       $18, .L8006CC28
       sw        $2, 0x10($3)
      jal        func_80017780
       addu      $4, $18, $0
      beqz       $2, .L8006CC28
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $18, $0
      jal        func_80024000
       addu      $16, $2, $0
      lw         $3, 0x0($16)
      j          .L8006CC3C
       sw        $2, 0x14($3)
  .L8006CC28:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      sw         $0, 0x14($2)
  .L8006CC3C:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x1
      sb         $2, 0x22($3)
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8006CB1C

.globl func_8006CC74
.ent func_8006CC74
func_8006CC74:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $16, 0x18($4)
      beqz       $6, .L8006CC9C
       addu      $17, $5, $0
      lw         $4, 0x0($4)
      j          .L8006CCAC
       addu      $5, $16, $0
  .L8006CC9C:
      lw         $4, 0x0($4)
      addu       $5, $16, $0
      lui        $6, %hi(D_800ECC58)
      addiu      $6, $6, %lo(D_800ECC58)
  .L8006CCAC:
      jal        func_8006C728
       nop
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $16, $0
      lw         $2, 0x0($2)
      addiu      $5, $0, 0x5
      jal        func_80058268
       sb        $17, 0x26($2)
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x1
      sb         $2, 0x22($3)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006CC74

.globl func_8006CCF4
.ent func_8006CCF4
func_8006CCF4:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $16, 0x18($4)
      lw         $4, 0x0($4)
      jal        func_8006C728
       addu      $5, $16, $0
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $16, $0
      lw         $2, 0x0($2)
      addiu      $5, $0, 0x5
      jal        func_80058268
       sb        $17, 0x26($2)
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x1
      sb         $2, 0x22($3)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006CCF4

.globl func_8006CD58
.ent func_8006CD58
func_8006CD58:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      sw         $31, 0x20($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $18, 0x18($4)
      beqz       $5, .L8006CD84
       addu      $19, $7, $0
      j          .L8006CDB4
       addu      $6, $5, $0
  .L8006CD84:
      addiu      $2, $0, 0xD
      bne        $6, $2, .L8006CD9C
       addiu     $2, $0, 0xE
      lui        $2, %hi(D_800ED328)
      j          .L8006CDB4
       addiu     $6, $2, %lo(D_800ED328)
  .L8006CD9C:
      bne        $6, $2, .L8006CDB0
       lui       $2, %hi(D_800ED284)
      lui        $2, %hi(D_800ED310)
      j          .L8006CDB4
       addiu     $6, $2, %lo(D_800ED310)
  .L8006CDB0:
      addiu      $6, $2, %lo(D_800ED284)
  .L8006CDB4:
      lw         $4, 0x0($4)
      jal        func_8006C728
       addu      $5, $18, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $18, $0
      addiu      $5, $0, 0x5
      lw         $2, 0x0($2)
      addiu      $16, $0, -0x1
      jal        func_80058268
       sw        $16, 0xC($2)
      lw         $2, 0x0($2)
      beqz       $19, .L8006CE90
       sw        $16, 0x10($2)
      lbu        $2, 0x0($19)
      beqz       $2, .L8006CE94
       addu      $4, $18, $0
      jal        func_80024000
       addu      $4, $19, $0
      blez       $2, .L8006CE90
       addu      $4, $19, $0
      jal        func_80017580
       addiu     $5, $0, 0x2C
      beqz       $2, .L8006CE5C
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $18, $0
      lw         $16, 0x0($2)
      addiu      $5, $0, 0x5
      jal        func_80058268
       addiu     $16, $16, 0x10
      addu       $4, $19, $0
      lui        $5, %hi(D_800ED630)
      addiu      $5, $5, %lo(D_800ED630)
      lw         $7, 0x0($2)
      addu       $6, $16, $0
      jal        func_800165C0
       addiu     $7, $7, 0xC
      j          .L8006CE94
       addu      $4, $18, $0
  .L8006CE5C:
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $18, $0
      addiu      $5, $0, 0x5
      jal        func_80058268
       addu      $17, $2, $0
      addu       $4, $19, $0
      jal        func_80024000
       addu      $16, $2, $0
      lw         $3, 0x0($16)
      lw         $4, 0x0($17)
      sw         $2, 0x10($3)
      sw         $2, 0xC($4)
  .L8006CE90:
      addu       $4, $18, $0
  .L8006CE94:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x1
      sb         $2, 0x22($3)
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8006CD58

.globl func_8006CEC4
.ent func_8006CEC4
func_8006CEC4:
      addiu      $29, $29, -0x18
      addu       $6, $5, $0
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $16, 0x18($4)
      lw         $4, 0x0($4)
      jal        func_8006C728
       addu      $5, $16, $0
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x1
      sb         $2, 0x22($3)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006CEC4

.globl func_8006CF0C
.ent func_8006CF0C
func_8006CF0C:
      addiu      $29, $29, -0x38
      sw         $20, 0x28($29)
      addu       $20, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $16, 0x18($29)
      addu       $16, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      lui        $2, %hi(D_800ECC70)
      sw         $22, 0x30($29)
      addiu      $22, $2, %lo(D_800ECC70)
      sw         $31, 0x34($29)
      sw         $21, 0x2C($29)
      sw         $18, 0x20($29)
      lw         $18, 0x18($20)
      jal        func_80017780
       addu      $4, $22, $0
      addiu      $5, $0, 0x4
      addu       $21, $2, $0
      jal        func_80058268
       addu      $4, $18, $0
      addu       $4, $16, $0
      jal        func_8006C6C0
       addu      $16, $2, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $2, 0x0($16)
      addu       $4, $20, $0
      addu       $5, $18, $0
      addu       $6, $17, $0
      lbu        $3, 0x18($2)
      addu       $7, $0, $0
      ori        $3, $3, 0x1
      sb         $3, 0x18($2)
      jal        func_8006F65C
       sw        $19, 0x10($29)
      addu       $17, $2, $0
      bltz       $17, .L8006D17C
       nop
      beqz       $19, .L8006D104
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addiu      $4, $0, 0x40
      addu       $5, $0, $0
      jal        func_80052504
       addu      $16, $2, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $2, 0x0($16)
      lw         $2, 0x0($2)
      beqz       $2, .L8006D070
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      lw         $3, 0x0($2)
      lw         $2, 0x0($20)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $2, 0x0($3)
      addu       $4, $18, $0
      lw         $2, 0x0($2)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sw        $18, 0x4($2)
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x1
      jal        func_80058268
       sb        $2, 0x39($3)
      addu       $4, $18, $0
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x2
      jal        func_80087458
       sb        $2, 0x3A($3)
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $19, $0
      jal        func_800523C0
       addu      $16, $2, $0
      lw         $3, 0x0($16)
      bnez       $2, .L8006D078
       sw        $2, 0x20($3)
  .L8006D070:
      j          .L8006D17C
       addiu     $2, $0, -0x5
  .L8006D078:
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      lw         $2, 0x0($2)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $0, 0x38($2)
      addu       $4, $18, $0
      lw         $2, 0x0($2)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $0, 0x3B($2)
      addu       $4, $18, $0
      lw         $2, 0x0($2)
      addiu      $5, $0, 0x2
      jal        func_80058268
       sb        $0, 0x3C($2)
      addu       $4, $18, $0
      addiu      $5, $0, 0x2
      addiu      $3, $0, 0x3
      jal        func_80058268
       sb        $3, 0x1B($2)
      addu       $4, $18, $0
      lbu        $3, 0x18($2)
      addiu      $5, $0, 0x2
      ori        $3, $3, 0x20
      jal        func_80058268
       sb        $3, 0x18($2)
      lw         $4, 0x0($20)
      lw         $5, 0x0($2)
      jal        func_800749A0
       nop
      j          .L8006D114
       addu      $4, $18, $0
  .L8006D104:
      jal        func_80058268
       addiu     $5, $0, 0x2
      sw         $0, 0x0($2)
      addu       $4, $18, $0
  .L8006D114:
      lhu        $2, 0x2($18)
      addiu      $5, $0, 0x3
      ori        $2, $2, 0xA
      jal        func_80058268
       sh        $2, 0x2($18)
      lw         $4, 0x0($20)
      addu       $16, $2, $0
      jal        func_80063060
       addiu     $4, $4, 0x34
      addu       $5, $22, $0
      addu       $6, $21, $0
      sw         $2, 0x0($16)
      lw         $4, 0x0($20)
      jal        func_8006E520
       addu      $7, $0, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      addu       $4, $18, $0
      addiu      $5, $0, 0x5
      jal        func_80058268
       sw        $21, 0x4($2)
      lw         $4, 0x0($2)
      addu       $2, $17, $0
      addiu      $3, $0, 0x1
      sb         $3, 0x22($4)
  .L8006D17C:
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
.end func_8006CF0C

.globl func_8006D1A4
.ent func_8006D1A4
func_8006D1A4:
      addiu      $29, $29, -0x180
      sw         $22, 0x178($29)
      addu       $22, $4, $0
      sw         $19, 0x16C($29)
      addu       $19, $5, $0
      addu       $4, $19, $0
      addiu      $5, $0, 0x5
      sw         $31, 0x17C($29)
      sw         $21, 0x174($29)
      sw         $20, 0x170($29)
      sw         $18, 0x168($29)
      sw         $17, 0x164($29)
      jal        func_80058268
       sw        $16, 0x160($29)
      lw         $2, 0x0($2)
      beqz       $2, .L8006D360
       nop
      addu       $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $2, 0x1C($2)
      beqz       $2, .L8006D360
       nop
      addiu      $4, $0, 0x401
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $20, $2, $0
      beqz       $20, .L8006D358
       addu      $4, $19, $0
      lw         $2, 0x4($22)
      lw         $17, 0x0($2)
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $19, $0
      lw         $2, 0x0($2)
      lw         $18, 0x4($2)
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $19, $0
      lw         $16, 0x0($2)
      jal        func_80058268
       addiu     $5, $0, 0x5
      addiu      $21, $17, 0x34
      addu       $4, $21, $0
      lw         $2, 0x0($2)
      lw         $3, 0x40($17)
      lw         $6, 0x18($16)
      lw         $7, 0x1C($2)
      lw         $2, 0x8($3)
      jalr       $2
       addu      $5, $20, $0
      addu       $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $2, 0x1C($2)
      addu       $2, $20, $2
      beqz       $18, .L8006D300
       sb        $0, 0x0($2)
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $2, 0xC($2)
      beql       $2, $0, .L8006D304
       addiu     $4, $29, 0x20
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $5, 0x8($2)
      jal        func_80063054
       addu      $4, $21, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x3
      jal        func_80058268
       addu      $16, $2, $0
      addiu      $4, $29, 0x20
      lw         $6, 0xC($2)
      jal        func_80052310
       addu      $5, $16, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $2, 0xC($2)
      addu       $2, $29, $2
      j          .L8006D310
       sb        $0, 0x20($2)
  .L8006D300:
      addiu      $4, $29, 0x20
  .L8006D304:
      lui        $5, %hi(D_800ED7DC)
      jal        func_80017640
       addiu     $5, $5, %lo(D_800ED7DC)
  .L8006D310:
      addiu      $16, $29, 0x120
      addu       $4, $16, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x3C
      addu       $6, $0, $0
      sw         $20, 0x120($29)
      lw         $3, 0x30($22)
      addiu      $2, $29, 0x20
      sw         $0, 0x10($29)
      sw         $2, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      lw         $4, 0x2C($22)
      lw         $5, 0xC($22)
      lw         $2, 0x14($3)
      jalr       $2
       addu      $7, $16, $0
  .L8006D358:
      jal        func_80052540
       addu      $4, $20, $0
  .L8006D360:
      lw         $31, 0x17C($29)
      lw         $22, 0x178($29)
      lw         $21, 0x174($29)
      lw         $20, 0x170($29)
      lw         $19, 0x16C($29)
      lw         $18, 0x168($29)
      lw         $17, 0x164($29)
      lw         $16, 0x160($29)
      jr         $31
       addiu     $29, $29, 0x180
.end func_8006D1A4

.globl func_8006D388
.ent func_8006D388
func_8006D388:
      sw         $0, 0x4($2)
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8006D388

.globl func_8006D3A8
.ent func_8006D3A8
func_8006D3A8:
      addiu      $29, $29, -0x30
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $17, 0x1C($29)
.end func_8006D3A8

.globl func_8006D3C0
.ent func_8006D3C0
func_8006D3C0:
      addiu      $29, $29, -0x18
      addiu      $4, $0, 0xA
      addu       $5, $0, $0
      sw         $31, 0x14($29)
      jal        func_800524E8
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L8006D3F0
       addu      $4, $16, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0xA
  .L8006D3F0:
      addu       $2, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006D3C0

.globl func_8006D404
.ent func_8006D404
func_8006D404:
      addiu      $29, $29, -0x18
      addiu      $4, $0, 0x48
      sw         $16, 0x10($29)
      lui        $16, %hi(D_80125480)
      sw         $31, 0x14($29)
      jal        func_800524E8
       addu      $5, $0, $0
      beqz       $2, .L8006D430
       sw        $2, %lo(D_80125480)($16)
      jal        func_8006D498
       addu      $4, $2, $0
  .L8006D430:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006D404

.globl func_8006D440
.ent func_8006D440
func_8006D440:
      lw         $10, 0x14($29)
      lw         $3, 0x18($29)
      lw         $8, 0x20($29)
      lw         $9, 0x24($29)
      beqz       $5, .L8006D480
       addiu     $11, $0, 0x1
      sh         $7, 0x0($5)
      lw         $2, 0x10($29)
      sb         $3, 0x9($5)
      sb         $10, 0x8($5)
      sh         $2, 0x2($5)
      lw         $2, 0x1C($29)
      sb         $8, 0x6($5)
      sb         $9, 0x7($5)
      j          .L8006D484
       sh        $2, 0x4($5)
  .L8006D480:
      addiu      $11, $0, -0x5
  .L8006D484:
      sll        $2, $6, 2
      addu       $2, $4, $2
      sw         $5, 0x0($2)
      jr         $31
       addu      $2, $11, $0
.end func_8006D440

.globl func_8006D498
.ent func_8006D498
func_8006D498:
      addiu      $29, $29, -0x48
      sw         $18, 0x30($29)
      addu       $18, $4, $0
      sw         $31, 0x44($29)
      sw         $22, 0x40($29)
      sw         $21, 0x3C($29)
      sw         $20, 0x38($29)
      sw         $19, 0x34($29)
      sw         $17, 0x2C($29)
      jal        func_8006D3C0
       sw        $16, 0x28($29)
      addu       $4, $18, $0
      addu       $5, $2, $0
      addu       $6, $0, $0
      addu       $7, $6, $0
      addiu      $16, $0, 0x1
      addiu      $19, $0, 0x3
      sw         $0, 0x10($29)
      sw         $16, 0x14($29)
      sw         $16, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $19, 0x20($29)
      jal        func_8006D440
       sw        $0, 0x24($29)
      jal        func_8006D3C0
       addiu     $20, $0, 0x8
      addu       $4, $18, $0
      addu       $5, $2, $0
      addu       $6, $16, $0
      addu       $7, $16, $0
      addiu      $17, $0, 0x21
      sw         $16, 0x10($29)
      sw         $16, 0x14($29)
      sw         $16, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $20, 0x20($29)
      jal        func_8006D440
       sw        $17, 0x24($29)
      jal        func_8006D3C0
       addiu     $21, $0, 0xA
      addu       $4, $18, $0
      addu       $5, $2, $0
      addiu      $6, $0, 0x2
      addu       $7, $16, $0
      addiu      $2, $0, 0x9
      sw         $16, 0x10($29)
      sw         $16, 0x14($29)
      sw         $16, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $2, 0x20($29)
      jal        func_8006D440
       sw        $17, 0x24($29)
      jal        func_8006D3C0
       addiu     $22, $0, 0xC
      addu       $4, $18, $0
      addu       $5, $2, $0
      addu       $6, $19, $0
      addu       $7, $16, $0
      sw         $16, 0x10($29)
      sw         $16, 0x14($29)
      sw         $16, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $21, 0x20($29)
      jal        func_8006D440
       sw        $17, 0x24($29)
      jal        func_8006D3C0
       nop
      addu       $4, $18, $0
      addu       $5, $2, $0
      addiu      $6, $0, 0x4
      addu       $7, $16, $0
      addiu      $2, $0, 0xB
      sw         $16, 0x10($29)
      sw         $16, 0x14($29)
      sw         $16, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $2, 0x20($29)
      jal        func_8006D440
       sw        $17, 0x24($29)
      jal        func_8006D3C0
       nop
      addu       $4, $18, $0
      addu       $5, $2, $0
      addiu      $6, $0, 0x5
      addu       $7, $16, $0
      sw         $16, 0x10($29)
      sw         $16, 0x14($29)
      sw         $16, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $22, 0x20($29)
      jal        func_8006D440
       sw        $17, 0x24($29)
      jal        func_8006D3C0
       nop
      addu       $4, $18, $0
      addu       $5, $2, $0
      addiu      $6, $0, 0x6
      addu       $7, $16, $0
      addiu      $2, $0, 0xD
      sw         $16, 0x10($29)
      sw         $16, 0x14($29)
      sw         $16, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $2, 0x20($29)
      jal        func_8006D440
       sw        $17, 0x24($29)
      jal        func_8006D3C0
       addiu     $17, $0, 0x2
      addu       $4, $18, $0
      addu       $5, $2, $0
      addiu      $6, $0, 0xB
      addu       $7, $0, $0
      sw         $0, 0x10($29)
      sw         $16, 0x14($29)
      sw         $16, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $19, 0x20($29)
      jal        func_8006D440
       sw        $17, 0x24($29)
      jal        func_8006D3C0
       nop
      addu       $4, $18, $0
      addu       $5, $2, $0
      addu       $6, $22, $0
      addu       $7, $16, $0
      sw         $16, 0x10($29)
      sw         $16, 0x14($29)
      sw         $16, 0x18($29)
      sw         $17, 0x1C($29)
      sw         $19, 0x20($29)
      jal        func_8006D440
       sw        $17, 0x24($29)
      jal        func_8006D3C0
       nop
      addu       $4, $18, $0
      addu       $5, $2, $0
      addu       $6, $20, $0
      addu       $7, $0, $0
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $19, 0x20($29)
      jal        func_8006D440
       sw        $20, 0x24($29)
      jal        func_8006D3C0
       nop
      addu       $4, $18, $0
      addu       $5, $2, $0
      addiu      $6, $0, 0x9
      addu       $7, $0, $0
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      sw         $16, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $19, 0x20($29)
      jal        func_8006D440
       sw        $20, 0x24($29)
      jal        func_8006D3C0
       nop
      addu       $4, $18, $0
      addu       $5, $2, $0
      addu       $6, $21, $0
      addu       $7, $0, $0
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $19, 0x20($29)
      jal        func_8006D440
       sw        $20, 0x24($29)
      jal        func_8006D3C0
       nop
      addu       $4, $18, $0
      addu       $5, $2, $0
      addiu      $6, $0, 0x7
      addu       $7, $0, $0
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $19, 0x20($29)
      jal        func_8006D440
       sw        $20, 0x24($29)
      jal        func_8006D3C0
       nop
      addu       $4, $18, $0
      addu       $5, $2, $0
      addiu      $6, $0, 0xD
      addu       $7, $0, $0
      addiu      $2, $0, 0x20
      sw         $0, 0x10($29)
      sw         $16, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $19, 0x20($29)
      jal        func_8006D440
       sw        $2, 0x24($29)
      addiu      $2, $0, 0x60
      sh         $2, 0x44($18)
      sh         $2, 0x46($18)
      addiu      $2, $0, 0xF
      sh         $2, 0x3A($18)
      addiu      $2, $0, 0x4
      sh         $21, 0x38($18)
      sh         $2, 0x3C($18)
      sh         $22, 0x3E($18)
      sh         $21, 0x40($18)
      sh         $2, 0x42($18)
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
.end func_8006D498

.globl func_8006D804
.ent func_8006D804
func_8006D804:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $16, 0x10($29)
      addu       $16, $18, $0
      sw         $31, 0x1C($29)
  .L8006D824:
      lw         $4, 0x0($16)
      addiu      $16, $16, 0x4
      jal        func_80052540
       addiu     $17, $17, 0x1
      slti       $2, $17, 0xE
      bnez       $2, .L8006D824
       nop
      jal        func_80052540
       addu      $4, $18, $0
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8006D804

.globl func_8006D860
.ent func_8006D860
func_8006D860:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      lui        $16, %hi(D_80125480)
      lw         $4, %lo(D_80125480)($16)
      beqz       $4, .L8006D884
       sw        $31, 0x14($29)
      jal        func_8006D804
       nop
      sw         $0, %lo(D_80125480)($16)
  .L8006D884:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006D860

.globl func_8006D894
.ent func_8006D894
func_8006D894:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      lui        $16, %hi(D_80125480)
      lw         $2, %lo(D_80125480)($16)
      bnez       $2, .L8006D8B4
       sw        $31, 0x14($29)
      jal        func_8006D404
       nop
  .L8006D8B4:
      lw         $2, %lo(D_80125480)($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8006D894

.globl func_8006D8C8
.ent func_8006D8C8
func_8006D8C8:
      addiu      $5, $0, 0x5
      addu       $4, $18, $0
      addiu      $5, $0, 0x5
      lw         $2, 0x0($2)
      addiu      $16, $0, -0x1
      jal        func_80058D68
       sw        $16, 0xC($2)
      lw         $2, 0x0($2)
      beqz       $19, .L8006D990
       sw        $16, 0x10($2)
      lbu        $2, 0x0($19)
      beqz       $2, .L8006D994
       addu      $4, $18, $0
      jal        func_80024B00
.end func_8006D8C8
