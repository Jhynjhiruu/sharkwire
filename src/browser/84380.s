.include "macro.inc"

#.set noat
.set noreorder

.section .text, "ax"

.globl func_80084780
.ent func_80084780
func_80084780:
      addiu      $29, $29, -0x18
      addu       $6, $4, $0
      addu       $4, $5, $0
      sw         $31, 0x10($29)
      lbu        $3, 0x10($4)
      addiu      $2, $0, 0x18
      beq        $3, $2, .L800847C4
       slti      $2, $3, 0x19
      beqz       $2, .L800847B8
       addiu     $2, $0, 0x1
      beq        $3, $2, .L800847C4
       nop
      j          .L800847D4
       nop
  .L800847B8:
      addiu      $2, $0, 0x1C
      bne        $3, $2, .L800847D4
       nop
  .L800847C4:
      jal        func_80058268
       addiu     $5, $0, 0x2
      j          .L800847EC
       nop
  .L800847D4:
      lbu        $2, 0x11($4)
      lw         $3, 0x9C($6)
      sll        $2, $2, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      addiu      $2, $2, 0x6
  .L800847EC:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80084780

.globl func_800847F8
.ent func_800847F8
func_800847F8:
      addu       $5, $4, $0
      sll        $4, $4, 16
      blezl      $4, .L80084808
       addiu     $5, $0, 0x1
  .L80084808:
      sll        $2, $5, 16
      sra        $2, $2, 16
      slti       $2, $2, 0xE
      beql       $2, $0, .L8008481C
       addiu     $5, $0, 0xD
  .L8008481C:
      lui        $3, %hi(D_800F0EC0)
      addiu      $3, $3, %lo(D_800F0EC0)
      sll        $2, $5, 16
      sra        $2, $2, 14
      addu       $2, $2, $3
      lw         $2, -0x4($2)
      jr         $31
       nop
.end func_800847F8

.globl func_8008483C
.ent func_8008483C
func_8008483C:
      addiu      $29, $29, -0x40
      sw         $16, 0x30($29)
      addu       $16, $4, $0
      sw         $31, 0x38($29)
      sw         $17, 0x34($29)
      lbu        $4, 0x0($16)
      jal        func_800847F8
       addu      $17, $6, $0
      sw         $2, 0x10($29)
      lbu        $3, 0x1($16)
      andi       $2, $3, 0x8
      sltiu      $2, $2, 0x1
      andi       $3, $3, 0x20
      beqz       $3, .L80084880
       sll       $5, $2, 4
      j          .L80084884
       ori       $5, $5, 0x10
  .L80084880:
      ori        $5, $5, 0x8
  .L80084884:
      lbu        $4, 0x1($16)
      andi       $2, $4, 0x1
      bnel       $2, $0, .L80084894
       ori       $5, $5, 0x1
  .L80084894:
      andi       $2, $4, 0x2
      bnel       $2, $0, .L800848A0
       ori       $5, $5, 0x2
  .L800848A0:
      lui        $2, %hi(D_80125500)
      lw         $2, %lo(D_80125500)($2)
      beqz       $2, .L800848CC
       sw        $5, 0x1C($29)
      lw         $2, 0xE8($2)
      andi       $2, $2, 0x2
      beqz       $2, .L800848CC
       lui       $2, %hi(D_80111F70)
      lw         $2, %lo(D_80111F70)($2)
      j          .L800848D8
       sw        $2, 0x28($17)
  .L800848CC:
      addiu      $4, $29, 0x10
      jal        func_8002D4D4
       addu      $5, $17, $0
  .L800848D8:
      lw         $2, 0x28($17)
      lw         $31, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_8008483C

.globl func_800848F0
.ent func_800848F0
func_800848F0:
      addiu      $29, $29, -0x20
      addu       $3, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $6, $0
      lui        $2, %hi(D_80125500)
      sw         $3, %lo(D_80125500)($2)
      addiu      $2, $0, 0x1
      addiu      $4, $29, 0x10
      sw         $31, 0x1C($29)
      sb         $0, 0x11($29)
      sb         $2, 0x10($29)
      lbu        $5, 0xE0($3)
      jal        func_8008483C
       addu      $6, $7, $0
      sw         $2, 0x0($16)
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800848F0

.globl func_8008493C
.ent func_8008493C
func_8008493C:
      jr         $31
       nop
.end func_8008493C

.globl func_80084944
.ent func_80084944
func_80084944:
      jr         $31
       nop
.end func_80084944

.globl func_8008494C
.ent func_8008494C
func_8008494C:
      addiu      $29, $29, -0x20
      addu       $3, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      lui        $2, %hi(D_80125500)
      sw         $3, %lo(D_80125500)($2)
      addiu      $2, $0, 0x3
      sw         $31, 0x1C($29)
      sb         $0, 0x11($29)
      sb         $2, 0x10($29)
      lbu        $5, 0xE0($3)
      jal        func_8008483C
       addiu     $4, $29, 0x10
      sw         $2, 0x0($16)
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008494C

.globl func_80084994
.ent func_80084994
func_80084994:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      lui        $2, %hi(D_80125500)
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $17, 0x14($29)
      addu       $17, $7, $0
      sw         $31, 0x1C($29)
      jal        func_80084780
       sw        $16, %lo(D_80125500)($2)
      addu       $4, $2, $0
      lbu        $5, 0xE0($16)
      jal        func_8008483C
       addu      $6, $17, $0
      sw         $2, 0x0($18)
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80084994

.globl func_800849EC
.ent func_800849EC
func_800849EC:
      addiu      $29, $29, -0x40
      sw         $31, 0x38($29)
      lw         $2, 0x0($4)
      addu       $4, $5, $0
      sw         $2, 0x28($5)
      jal        func_8002D4F0
       addiu     $5, $29, 0x10
      bnez       $2, .L80084A14
       addiu     $2, $0, -0x1
      lw         $2, 0x2C($29)
  .L80084A14:
      lw         $31, 0x38($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800849EC

.globl func_80084A20
.ent func_80084A20
func_80084A20:
      addiu      $29, $29, -0x40
      sw         $31, 0x38($29)
      lw         $2, 0x0($4)
      addu       $4, $5, $0
      sw         $2, 0x28($5)
      jal        func_8002D4F0
       addiu     $5, $29, 0x10
      bnez       $2, .L80084A48
       addiu     $2, $0, -0x1
      lw         $2, 0x20($29)
  .L80084A48:
      lw         $31, 0x38($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_80084A20

.globl func_80084A54
.ent func_80084A54
func_80084A54:
      beqz       $16, .L80084B4C
       addiu     $19, $29, 0x20
      lbu        $2, 0x1($16)
      andi       $18, $2, 0x1
      andi       $17, $18, 0xFF
      beqz       $17, .L80084A98
       addu      $4, $16, $0
      jal        func_80058D68
       addu      $5, $0, $0
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
.end func_80084A54

.globl func_80084A80
.ent func_80084A80
func_80084A80:
      lui        $2, %hi(D_80133AFC)
      addiu      $6, $6, 0x278
      sw         $6, %lo(D_80133AFC)($2)
      jr         $31
       addiu     $2, $0, 0x1
.end func_80084A80

.globl func_80084A94
.ent func_80084A94
func_80084A94:
      jr         $31
  .L80084A98:
       addiu     $2, $0, 0x1
      lw         $2, 0x0($2)
      lw         $2, 0x6C($2)
      bnez       $2, .L80084ADC
       andi      $2, $18, 0xFF
      beqz       $17, .L80084B08
       addiu     $4, $29, 0x10
      addiu      $5, $29, 0x30
      jal        func_8008AEBC
       addiu     $6, $29, 0x40
.end func_80084A94

.globl func_80084AC0
.ent func_80084AC0
func_80084AC0:
      addiu      $29, $29, -0x30
      sw         $21, 0x24($29)
      addu       $21, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
  .L80084ADC:
      sw         $31, 0x28($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      bne        $18, $20, .L80084AF8
       sw        $16, 0x10($29)
      j          .L80084BA4
       addiu     $2, $0, 0x1
  .L80084AF8:
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x6
      addu       $4, $20, $0
  .L80084B08:
      lw         $16, 0x4($2)
      jal        func_80058268
       addiu     $5, $0, 0x6
      lw         $19, 0x4($2)
      bne        $19, $16, .L80084BA4
       addu      $2, $0, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x6
      addiu      $17, $21, 0x34
      lw         $5, 0x0($2)
      jal        func_80063054
       addu      $4, $17, $0
      addu       $4, $20, $0
      addiu      $5, $0, 0x6
      jal        func_80058268
       addu      $16, $2, $0
  .L80084B4C:
      addu       $4, $17, $0
      addu       $5, $16, $0
      lw         $3, 0x40($21)
      lw         $6, 0x0($2)
      lw         $3, 0x1C($3)
      jalr       $3
       addu      $7, $19, $0
      bnel       $2, $0, .L80084BA4
       addu      $2, $0, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $20, $0
      lw         $16, 0x0($2)
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $4, 0x4($16)
      lw         $3, 0x4($2)
      beq        $4, $3, .L80084BA4
       addiu     $2, $0, 0x1
      addu       $2, $0, $0
  .L80084BA4:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80084AC0

.globl func_80084BC8
.ent func_80084BC8
func_80084BC8:
      addiu      $29, $29, -0x20
      addiu      $5, $29, 0x10
      sw         $31, 0x1C($29)
      jal        func_8002E85C
       sw        $16, 0x18($29)
      bnez       $2, .L80084C18
       nop
      lw         $3, 0x10($29)
      lw         $2, 0x0($3)
      beqz       $2, .L80084C18
       addu      $16, $0, $0
      addu       $2, $16, $3
  .L80084BF8:
      lw         $4, 0x0($2)
      jal        func_80052540
       addiu     $16, $16, 0x4
      lw         $3, 0x10($29)
      addu       $2, $16, $3
      lw         $2, 0x0($2)
      bnez       $2, .L80084BF8
       addu      $2, $16, $3
  .L80084C18:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80084BC8

.globl func_80084C28
.ent func_80084C28
func_80084C28:
      addiu      $29, $29, -0x50
      sw         $17, 0x3C($29)
      addu       $17, $4, $0
      sw         $18, 0x40($29)
      addu       $18, $5, $0
      sw         $19, 0x44($29)
      addiu      $19, $29, 0x20
      addu       $4, $19, $0
      addu       $5, $0, $0
      addiu      $6, $0, 0xC
      sw         $31, 0x48($29)
      jal        func_80016140
       sw        $16, 0x38($29)
      addu       $5, $18, $0
      addiu      $16, $29, 0x30
      lw         $2, 0x4($17)
      addu       $6, $16, $0
      lw         $4, 0x0($2)
      jal        func_80084994
       addiu     $7, $17, 0x124
      addu       $4, $17, $0
      addu       $5, $18, $0
      jal        func_80084CF4
       addiu     $6, $29, 0x18
      andi       $2, $2, 0xFF
      beqz       $2, .L80084CB0
       addu      $4, $17, $0
      addiu      $5, $29, 0x18
      addu       $6, $19, $0
      jal        func_80084F3C
       addu      $7, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L80084CB8
       addu      $4, $17, $0
  .L80084CB0:
      j          .L80084CD8
       addu      $2, $0, $0
  .L80084CB8:
      lw         $2, 0x24($29)
  .L80084CBC:
      addu       $5, $18, $0
      sw         $16, 0x14($29)
      sw         $2, 0x10($29)
      lw         $7, 0x20($29)
      jal        func_80085754
       addiu     $6, $29, 0x18
      andi       $2, $2, 0xFF
  .L80084CD8:
      lw         $31, 0x48($29)
      lw         $19, 0x44($29)
      lw         $18, 0x40($29)
      lw         $17, 0x3C($29)
      lw         $16, 0x38($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_80084C28

.globl func_80084CF4
.ent func_80084CF4
func_80084CF4:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      addu       $4, $17, $0
      sw         $31, 0x1C($29)
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $3, 0x4($16)
      lw         $4, 0x0($3)
      lw         $5, 0x0($2)
      jal        func_80063054
       addiu     $4, $4, 0x34
      beqz       $2, .L80084D58
       addu      $4, $17, $0
      addiu      $5, $0, 0x1
      jal        func_80058268
       sw        $2, 0x4($18)
      lw         $3, 0x4($2)
      addiu      $2, $0, 0x1
      j          .L80084D5C
       sw        $3, 0x0($18)
  .L80084D58:
      addu       $2, $0, $0
  .L80084D5C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80084CF4

.globl func_80084D74
.ent func_80084D74
func_80084D74:
      addiu      $29, $29, -0x30
      sw         $18, 0x28($29)
      addu       $18, $4, $0
      addiu      $2, $0, -0x1
      addu       $4, $5, $0
      addu       $5, $0, $0
      sw         $17, 0x24($29)
      addu       $17, $6, $0
      addiu      $6, $29, 0x18
      sw         $31, 0x2C($29)
      sw         $16, 0x20($29)
      jal        func_80088AB4
       sw        $2, 0x18($29)
      addu       $16, $2, $0
      bnez       $16, .L80084DEC
       addu      $2, $16, $0
      lw         $5, 0x18($29)
      bltz       $5, .L80084DEC
       addiu     $6, $29, 0x1C
      sw         $0, 0x10($29)
      lw         $4, 0x8($18)
      jal        func_80056F40
       addu      $7, $0, $0
      bltzl      $2, .L80084DE8
       addiu     $16, $0, 0xB
      lw         $4, 0x1C($29)
      jal        func_80017780
       sw        $4, 0x4($17)
      sw         $2, 0x0($17)
  .L80084DE8:
      addu       $2, $16, $0
  .L80084DEC:
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80084D74

.globl func_80084E04
.ent func_80084E04
func_80084E04:
      addiu      $29, $29, -0x30
      sw         $20, 0x28($29)
      addu       $20, $4, $0
      sw         $19, 0x24($29)
      addu       $19, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      addu       $4, $19, $0
      addiu      $5, $0, 0x5
      sw         $31, 0x2C($29)
      sw         $17, 0x1C($29)
      jal        func_80058268
       sw        $16, 0x18($29)
      lw         $17, 0x0($2)
      sw         $0, 0x4($18)
      sw         $0, 0x0($18)
      lbu        $2, 0x10($19)
      addiu      $3, $2, -0x9
      sltiu      $2, $3, 0x2D
      beqz       $2, .L80084F14
       addu      $16, $0, $0
      lui        $2, %hi(jtbl_800F0F00)
      addiu      $2, $2, %lo(jtbl_800F0F00)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80084E74
.L80084E74:
      addu       $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $2, 0x4($2)
      beqz       $2, .L80084F18
       addu      $4, $19, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $3, 0x4($20)
      lw         $4, 0x0($3)
      lw         $5, 0x0($2)
      jal        func_80063054
       addiu     $4, $4, 0x34
      addu       $4, $19, $0
      addiu      $5, $0, 0x1
      jal        func_80058268
       sw        $2, 0x4($18)
      lw         $2, 0x4($2)
      j          .L80084F18
       sw        $2, 0x0($18)
  .globl .L80084EC4
.L80084EC4:
      lw         $4, 0x28($17)
      jal        func_8008D9A0
       addu      $5, $18, $0
      j          .L80084F18
       addu      $16, $2, $0
  .globl .L80084ED8
.L80084ED8:
      lw         $4, 0x28($17)
      jal        func_80088714
       addiu     $5, $29, 0x10
      addu       $16, $2, $0
      bnez       $16, .L80084F1C
       sltiu     $2, $16, 0x1
      lw         $5, 0x10($29)
      j          .L80084F04
       addu      $4, $17, $0
  .globl .L80084EFC
.L80084EFC:
      addu       $4, $17, $0
      lw         $5, 0x28($4)
  .L80084F04:
      jal        func_80084D74
       addu      $6, $18, $0
      j          .L80084F18
       addu      $16, $2, $0
  .globl .L80084F14
.L80084F14:
      addiu      $16, $0, 0x1
  .globl .L80084F18
.L80084F18:
      sltiu      $2, $16, 0x1
  .L80084F1C:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80084E04

.globl func_80084F3C
.ent func_80084F3C
func_80084F3C:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $18, 0x18($29)
      addu       $18, $7, $0
      sw         $16, 0x10($29)
      addiu      $16, $17, 0xB8
      sw         $31, 0x24($29)
      jal        func_8002D540
       addu      $4, $16, $0
      bnez       $2, .L80084FB0
       addu      $2, $0, $0
      addu       $4, $16, $0
      addiu      $16, $17, 0x124
      jal        func_8002D560
       addu      $5, $16, $0
      bnel       $2, $0, .L80084FB0
       addu      $2, $0, $0
      addu       $4, $16, $0
      addu       $5, $19, $0
      lw         $2, 0x0($18)
      addu       $6, $20, $0
      jal        func_8002D480
       sw        $2, 0x28($4)
      sltiu      $2, $2, 0x1
  .L80084FB0:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80084F3C

.globl func_80084FD0
.ent func_80084FD0
func_80084FD0:
      addiu      $29, $29, -0x70
      sw         $17, 0x54($29)
      addu       $17, $4, $0
      sw         $19, 0x5C($29)
      addu       $19, $5, $0
      sw         $18, 0x58($29)
      addu       $18, $6, $0
      sw         $21, 0x64($29)
      addu       $21, $7, $0
      sw         $16, 0x50($29)
      addu       $16, $0, $0
      addiu      $3, $18, -0xB
      sw         $20, 0x60($29)
      lw         $20, 0x84($29)
      sltiu      $2, $3, 0x2A
      sw         $31, 0x68($29)
      sw         $0, 0x30($29)
      sw         $0, 0x3C($29)
      sw         $0, 0x40($29)
      sw         $0, 0x34($29)
      beqz       $2, .L80085160
       sw        $0, 0x38($29)
      lui        $2, %hi(jtbl_800F0FB8)
      addiu      $2, $2, %lo(jtbl_800F0FB8)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80085044
.L80085044:
      addiu      $4, $0, 0x6C
      jal        func_80052504
       addu      $5, $0, $0
      beqz       $2, .L8008510C
       sw        $2, 0x0($17)
      addu       $6, $19, $0
      addiu      $2, $29, 0x30
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x12
      sw         $2, 0x24($29)
      addiu      $2, $0, 0xC
      sw         $18, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $0, 0x20($29)
      sw         $2, 0x28($29)
      sw         $20, 0x2C($29)
      lw         $4, 0x0($6)
      lw         $5, 0x0($17)
      jal        func_80088380
       addu      $7, $0, $0
      j          .L80085168
       or        $16, $16, $2
  .globl .L800850A0
.L800850A0:
      addiu      $4, $0, 0x70
      jal        func_80052504
       addu      $5, $0, $0
      beqz       $2, .L8008510C
       sw        $2, 0x0($17)
      addu       $6, $19, $0
      addiu      $2, $29, 0x30
      sw         $2, 0x10($29)
      addiu      $2, $0, 0xC
      sw         $18, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $0, 0x20($29)
      sw         $2, 0x24($29)
      sw         $2, 0x28($29)
      sw         $20, 0x2C($29)
      lw         $4, 0x0($6)
      lw         $5, 0x0($17)
      jal        func_80088EA8
       addu      $7, $0, $0
      j          .L80085168
       or        $16, $16, $2
  .globl .L800850F8
.L800850F8:
      addiu      $4, $0, 0x6C
      jal        func_80052504
       addu      $5, $0, $0
      bnez       $2, .L80085114
       sw        $2, 0x0($17)
  .L8008510C:
      j          .L80085198
       addiu     $2, $0, 0x3
  .L80085114:
      addiu      $2, $29, 0x30
      sw         $2, 0x10($29)
      addiu      $2, $21, 0xA
      sw         $2, 0x24($29)
      lw         $2, 0x80($29)
      addu       $6, $19, $0
      sw         $18, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $0, 0x20($29)
      sw         $20, 0x2C($29)
      addiu      $2, $2, 0xA
      sw         $2, 0x28($29)
      lw         $4, 0x0($6)
      lw         $5, 0x0($17)
      jal        func_80088D80
       addu      $7, $0, $0
      j          .L80085168
       or        $16, $16, $2
  .globl .L80085160
.L80085160:
      j          .L80085198
       addiu     $2, $0, 0xB
  .L80085168:
      bnez       $16, .L80085184
       nop
      lw         $4, 0x0($17)
      jal        func_8002EAB0
       addu      $5, $0, $0
      j          .L80085198
       addu      $2, $0, $0
  .L80085184:
      lw         $4, 0x0($17)
      jal        func_80052540
       nop
      addu       $2, $16, $0
      sw         $0, 0x0($17)
  .L80085198:
      lw         $31, 0x68($29)
      lw         $21, 0x64($29)
      lw         $20, 0x60($29)
      lw         $19, 0x5C($29)
      lw         $18, 0x58($29)
      lw         $17, 0x54($29)
      lw         $16, 0x50($29)
      jr         $31
       addiu     $29, $29, 0x70
.end func_80084FD0

.globl func_800851BC
.ent func_800851BC
func_800851BC:
      addiu      $29, $29, -0x80
      sw         $21, 0x6C($29)
      lw         $21, 0x90($29)
      sw         $20, 0x68($29)
      lw         $20, 0x94($29)
      sw         $23, 0x74($29)
      addu       $23, $5, $0
      sw         $19, 0x64($29)
      addu       $19, $6, $0
      sw         $22, 0x70($29)
      addu       $22, $7, $0
      sw         $4, 0x80($29)
      addiu      $4, $0, 0x220
      sw         $30, 0x78($29)
      lw         $30, 0x98($29)
      addu       $5, $0, $0
      sw         $31, 0x7C($29)
      sw         $18, 0x60($29)
      sw         $17, 0x5C($29)
      jal        func_80052504
       sw        $16, 0x58($29)
      lw         $10, 0x80($29)
      addu       $17, $2, $0
      bnez       $17, .L80085228
       sw        $17, 0x0($10)
      j          .L800853EC
       addiu     $2, $0, 0x3
  .L80085228:
      jal        func_8002E12C
       addu      $4, $23, $0
      addu       $4, $2, $0
      addiu      $16, $17, 0x1E8
      jal        func_8002D560
       addu      $5, $16, $0
      addu       $18, $2, $0
      addu       $4, $16, $0
      jal        func_8002D4F0
       addiu     $5, $29, 0x30
      or         $18, $18, $2
      addiu      $2, $0, 0x11
      beq        $19, $2, .L80085358
       addu      $16, $17, $0
      sltiu      $2, $19, 0x12
      beqz       $2, .L80085284
       sltiu     $2, $19, 0xB
      beqz       $2, .L800853A8
       sltiu     $2, $19, 0x9
      bnez       $2, .L800853EC
       addiu     $2, $0, 0xB
      j          .L80085294
       addiu     $4, $16, 0x1E8
  .L80085284:
      addiu      $2, $0, 0x35
      bne        $19, $2, .L800853EC
       addiu     $2, $0, 0xB
      addiu      $4, $16, 0x1E8
  .L80085294:
      sw         $0, 0x28($4)
      jal        func_8002D4F0
       addiu     $5, $29, 0x30
      beqz       $20, .L800852B8
       or        $18, $18, $2
      lw         $2, 0x0($22)
      sltu       $2, $20, $2
      bnel       $2, $0, .L800852B8
       sw        $20, 0x0($22)
  .L800852B8:
      lw         $2, 0x38($29)
      mult       $21, $2
      mflo       $3
      beqz       $20, .L800852DC
       sltu      $2, $21, $20
      bnel       $2, $0, .L800852E0
       addiu     $3, $3, 0x19
      j          .L800852E0
       addiu     $3, $3, 0x9
  .L800852DC:
      addiu      $3, $3, 0x19
  .L800852E0:
      lw         $2, 0x40($29)
      addiu      $8, $2, 0x9
      addiu      $2, $0, 0x35
      bne        $19, $2, .L80085308
       addiu     $2, $0, 0xA
      lw         $2, 0x9C($29)
      sw         $2, 0x1EC($16)
      lw         $2, 0xA0($29)
      sw         $2, 0x1E8($16)
      addiu      $2, $0, 0xA
  .L80085308:
      bne        $19, $2, .L80085314
       addu      $9, $0, $0
      addiu      $9, $0, 0x2A
  .L80085314:
      addu       $4, $16, $0
      addu       $5, $23, $0
      addu       $6, $19, $0
      addu       $7, $21, $0
      xori       $2, $6, 0x35
      lw         $10, 0xA4($29)
      sltiu      $2, $2, 0x1
      sw         $20, 0x10($29)
      sw         $3, 0x14($29)
      sw         $8, 0x18($29)
      sw         $2, 0x1C($29)
      sw         $9, 0x20($29)
      sw         $22, 0x24($29)
      jal        func_8008D7C4
       sw        $10, 0x28($29)
      j          .L800853B0
       or        $18, $18, $2
  .L80085358:
      lw         $2, 0x38($29)
      mult       $21, $2
      addu       $4, $17, $0
      addu       $5, $23, $0
      addiu      $6, $0, 0x11
      addu       $7, $30, $0
      mflo       $3
      lw         $2, 0x40($29)
      lw         $10, 0xA4($29)
      mult       $30, $2
      sw         $22, 0x18($29)
      sw         $10, 0x1C($29)
      addiu      $3, $3, 0x9
      sw         $3, 0x10($29)
      mflo       $8
      addiu      $8, $8, 0x9
      jal        func_8008D8CC
       sw        $8, 0x14($29)
      j          .L800853B0
       or        $18, $18, $2
  .L800853A8:
      j          .L800853EC
       addiu     $2, $0, 0xB
  .L800853B0:
      bnez       $18, .L800853D0
       nop
      lw         $10, 0x80($29)
      lw         $4, 0x0($10)
      jal        func_8002EAB0
       addu      $5, $0, $0
      j          .L800853EC
       addu      $2, $0, $0
  .L800853D0:
      lw         $10, 0x80($29)
      lw         $4, 0x0($10)
      jal        func_80052540
       nop
      lw         $10, 0x80($29)
      addu       $2, $18, $0
      sw         $0, 0x0($10)
  .L800853EC:
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
.end func_800851BC

.globl func_8008541C
.ent func_8008541C
func_8008541C:
      addiu      $29, $29, -0xD0
      lw         $8, 0xE4($29)
      sw         $17, 0xAC($29)
      addu       $17, $0, $0
      sw         $22, 0xC0($29)
      addu       $22, $17, $0
      sw         $6, 0xD8($29)
      xori       $2, $6, 0xF
      sw         $31, 0xCC($29)
      sw         $30, 0xC8($29)
      sw         $23, 0xC4($29)
      sw         $21, 0xBC($29)
      sw         $20, 0xB8($29)
      sw         $19, 0xB4($29)
      sw         $18, 0xB0($29)
      sw         $16, 0xA8($29)
      sw         $4, 0xD0($29)
      sw         $5, 0xD4($29)
      sw         $7, 0xDC($29)
      lw         $4, 0x8($8)
      sltiu      $2, $2, 0x1
      jal        func_80056C94
       sb        $2, 0xA0($29)
      addu       $30, $2, $0
      lbu        $2, 0xA0($29)
      beqz       $2, .L80085494
       addu      $23, $17, $0
      sll        $4, $30, 2
      j          .L8008549C
       addiu     $4, $4, 0x4FC
  .L80085494:
      sll        $4, $30, 2
      addiu      $4, $4, 0x2A4
  .L8008549C:
      jal        func_80052504
       addu      $5, $0, $0
      lw         $8, 0xD0($29)
      sw         $2, 0x0($8)
      lw         $8, 0xD0($29)
      lw         $3, 0x0($8)
      beqz       $3, .L80085724
       addiu     $2, $0, 0x3
      lbu        $2, 0xA0($29)
      beql       $2, $0, .L800854CC
       addu      $23, $3, $0
      addu       $22, $3, $0
  .L800854CC:
      addu       $21, $0, $0
      addu       $19, $21, $0
      blez       $30, .L80085644
       addu      $16, $21, $0
      lbu        $8, 0xA0($29)
      addu       $20, $21, $0
      sw         $8, 0xA4($29)
  .L800854E8:
      addiu      $4, $0, 0x70
      jal        func_80052504
       addu      $5, $0, $0
      addu       $18, $2, $0
      bnel       $18, $0, .L80085564
       addu      $5, $19, $0
      blez       $19, .L80085544
       sll       $2, $19, 2
      addu       $17, $2, $23
      addu       $16, $2, $22
      addiu      $17, $17, -0x4
  .L80085514:
      addiu      $16, $16, -0x4
      lw         $8, 0xA4($29)
      beqz       $8, .L80085530
       addiu     $19, $19, -0x1
      lw         $18, 0x4F8($16)
      j          .L80085534
       nop
  .L80085530:
      lw         $18, 0x2A0($17)
  .L80085534:
      jal        func_80052540
       addu      $4, $18, $0
      bgtz       $19, .L80085514
       addiu     $17, $17, -0x4
  .L80085544:
      lw         $8, 0xD0($29)
      lw         $4, 0x0($8)
      jal        func_80052540
       nop
      lw         $8, 0xD0($29)
      addiu      $2, $0, 0x3
      j          .L80085724
       sw        $0, 0x0($8)
  .L80085564:
      addu       $6, $0, $0
      lw         $8, 0xE4($29)
      addiu      $2, $29, 0x9C
      sw         $2, 0x10($29)
      lw         $4, 0x8($8)
      jal        func_80056F40
       addiu     $7, $29, 0x98
      addu       $5, $18, $0
      lw         $2, 0x98($29)
      lw         $8, 0xD4($29)
      addu       $6, $0, $0
      sw         $0, 0x14($29)
      sw         $2, 0x10($29)
      lw         $4, 0x0($8)
      jal        func_800889B8
       addu      $7, $6, $0
      or         $17, $17, $2
      addu       $4, $18, $0
      jal        func_8002E8CC
       addiu     $5, $29, 0x20
      or         $17, $17, $2
      addiu      $5, $29, 0x20
      lw         $4, 0xDC($29)
      addiu      $6, $29, 0x28
      sw         $0, 0x28($29)
      jal        func_8002D480
       sw        $0, 0x2C($29)
      bnez       $2, .L800855F8
       nop
      lw         $3, 0x28($29)
      slt        $2, $21, $3
      bnel       $2, $0, .L800855E8
       addu      $21, $3, $0
  .L800855E8:
      lw         $3, 0x2C($29)
      slt        $2, $16, $3
      bnel       $2, $0, .L800855F8
       addu      $16, $3, $0
  .L800855F8:
      lw         $5, 0x9C($29)
      addu       $4, $18, $0
      jal        func_80088BE4
       sltu      $5, $0, $5
      lw         $8, 0xA4($29)
      beqz       $8, .L8008562C
       or        $17, $17, $2
      lw         $2, 0x9C($29)
      bnel       $2, $0, .L80085620
       sw        $19, 0x4F4($22)
  .L80085620:
      addu       $2, $22, $20
      j          .L80085634
       sw        $18, 0x4F8($2)
  .L8008562C:
      addu       $2, $23, $20
      sw         $18, 0x2A0($2)
  .L80085634:
      addiu      $19, $19, 0x1
      slt        $2, $19, $30
      bnez       $2, .L800854E8
       addiu     $20, $20, 0x4
  .L80085644:
      bnez       $16, .L80085680
       addiu     $16, $16, 0x9
      lw         $4, 0xD4($29)
      jal        func_8002E12C
       nop
      addu       $4, $2, $0
      addiu      $16, $29, 0x60
      jal        func_8002D560
       addu      $5, $16, $0
      or         $17, $17, $2
      addu       $4, $16, $0
      jal        func_8002D4F0
       addiu     $5, $29, 0x38
      lw         $16, 0x48($29)
      addiu      $16, $16, 0x9
  .L80085680:
      lbu        $2, 0xA0($29)
      beqz       $2, .L800856D4
       addiu     $21, $21, 0x26
      addu       $4, $22, $0
      sll        $2, $19, 2
      addu       $2, $4, $2
      lw         $5, 0xD4($29)
      lw         $6, 0xD8($29)
      mult       $30, $16
      sw         $0, 0x4F8($2)
      lw         $8, 0xE8($29)
      addu       $7, $21, $0
      sw         $16, 0x10($29)
      sw         $16, 0x14($29)
      sw         $8, 0x1C($29)
      mflo       $8
      addiu      $2, $8, 0x4
      jal        func_8008D9E8
       sw        $2, 0x18($29)
      j          .L80085710
       or        $17, $17, $2
  .L800856D4:
      sll        $2, $19, 2
      lw         $5, 0xD4($29)
      lw         $6, 0xD8($29)
      lw         $7, 0xE0($29)
      addu       $2, $23, $2
      sw         $0, 0x2A0($2)
      lw         $8, 0xE8($29)
      addu       $4, $23, $0
      sw         $30, 0x10($29)
      sw         $21, 0x14($29)
      sw         $16, 0x18($29)
      jal        func_8008DC40
       sw        $8, 0x1C($29)
      or         $17, $17, $2
      sw         $0, 0x29C($23)
  .L80085710:
      lw         $8, 0xD0($29)
      lw         $4, 0x0($8)
      jal        func_8002EAB0
       addu      $5, $0, $0
      addu       $2, $17, $0
  .L80085724:
      lw         $31, 0xCC($29)
      lw         $30, 0xC8($29)
      lw         $23, 0xC4($29)
      lw         $22, 0xC0($29)
      lw         $21, 0xBC($29)
      lw         $20, 0xB8($29)
      lw         $19, 0xB4($29)
      lw         $18, 0xB0($29)
      lw         $17, 0xAC($29)
      lw         $16, 0xA8($29)
      jr         $31
       addiu     $29, $29, 0xD0
.end func_8008541C

.globl func_80085754
.ent func_80085754
func_80085754:
      addiu      $29, $29, -0xA0
      sw         $17, 0x7C($29)
      addu       $17, $4, $0
      sw         $18, 0x80($29)
      addu       $18, $5, $0
      sw         $23, 0x94($29)
      addu       $23, $6, $0
      sw         $16, 0x78($29)
      addu       $16, $7, $0
      addu       $4, $18, $0
      addiu      $5, $0, 0x5
      sw         $22, 0x90($29)
      addiu      $22, $17, 0xB8
      sw         $31, 0x98($29)
      sw         $21, 0x8C($29)
      sw         $20, 0x88($29)
      jal        func_80058268
       sw        $19, 0x84($29)
      lw         $2, 0x0($2)
      lbu        $20, 0x10($18)
      beqz       $18, .L800857B0
       addiu     $21, $2, 0x28
      sw         $0, 0x14($18)
  .L800857B0:
      addiu      $3, $20, -0x9
      sltiu      $2, $3, 0x2D
      beqz       $2, .L800859F8
       lui       $2, %hi(jtbl_800F1060)
      addiu      $2, $2, %lo(jtbl_800F1060)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800857D8
.L800857D8:
      addu       $4, $21, $0
      addu       $5, $22, $0
      addu       $6, $20, $0
      lw         $2, 0xB0($29)
      addu       $7, $16, $0
      sw         $18, 0x14($29)
      jal        func_80084FD0
       sw        $2, 0x10($29)
      j          .L800859FC
       addu      $16, $2, $0
  .globl .L80085800
.L80085800:
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $16, 0x14($2)
      bltzl      $16, .L8008581C
       addu      $16, $0, $0
  .L8008581C:
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $18, $0
      lw         $2, 0x0($2)
      lw         $19, 0xC($2)
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      addiu      $3, $0, 0x35
      lw         $9, 0x10($2)
      bne        $20, $3, .L800858D0
       addu      $10, $16, $0
      lui        $2, %hi(D_80137AE0)
      lbu        $2, %lo(D_80137AE0)($2)
      bnez       $2, .L80085888
       lui       $2, %hi(D_80137ADC)
      lw         $2, 0x4($17)
      lw         $3, 0x0($2)
      lw         $2, 0xB0($3)
      andi       $2, $2, 0x1
      beqz       $2, .L80085884
       lui       $2, %hi(D_80137AE0)
      lw         $8, 0xB4($3)
      j          .L80085890
       nop
  .L80085884:
      lui        $2, %hi(D_80137ADC)
  .L80085888:
      lw         $8, %lo(D_80137ADC)($2)
      lui        $2, %hi(D_80137AE0)
  .L80085890:
      lbu        $2, %lo(D_80137AE0)($2)
      bnez       $2, .L800858C4
       lui       $2, %hi(D_80137AD8)
      lw         $2, 0x4($17)
      lw         $3, 0x0($2)
      lw         $2, 0xB0($3)
      andi       $2, $2, 0x10
      beqz       $2, .L800858C0
       addu      $4, $21, $0
      lw         $2, 0xAC($3)
      j          .L800858E0
       addu      $5, $22, $0
  .L800858C0:
      lui        $2, %hi(D_80137AD8)
  .L800858C4:
      lw         $2, %lo(D_80137AD8)($2)
      j          .L800858DC
       addu      $4, $21, $0
  .L800858D0:
      addu       $8, $0, $0
      addu       $2, $8, $0
      addu       $4, $21, $0
  .L800858DC:
      addu       $5, $22, $0
  .L800858E0:
      addu       $6, $20, $0
      addu       $7, $23, $0
      sw         $9, 0x10($29)
      sw         $10, 0x14($29)
      sw         $19, 0x18($29)
      sw         $2, 0x1C($29)
      sw         $8, 0x20($29)
      jal        func_800851BC
       sw        $18, 0x24($29)
      lw         $3, 0x1A8($17)
      addu       $16, $2, $0
      beqz       $18, .L80085924
       sw        $3, 0x70($29)
      bnez       $16, .L80085A04
       sw        $0, 0x14($18)
      lw         $2, 0x0($21)
      sw         $2, 0x14($18)
  .L80085924:
      bnez       $16, .L80085A5C
       addu      $2, $0, $0
      lw         $2, 0x70($29)
      bnez       $2, .L800859FC
       addiu     $2, $0, 0x35
      beq        $20, $2, .L800859FC
       addiu     $4, $0, 0x1F4
      addu       $5, $0, $0
      addiu      $6, $0, 0x1
      jal        func_8008A8EC
       addiu     $7, $29, 0x70
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800859FC
       nop
      lw         $2, 0x70($29)
      j          .L800859FC
       sw        $2, 0x1A8($17)
  .globl .L80085968
.L80085968:
      addiu      $16, $17, 0xB8
      jal        func_8002D540
       addu      $4, $16, $0
      bnez       $2, .L80085A5C
       addu      $2, $0, $0
      addu       $4, $16, $0
      addiu      $17, $29, 0x38
      jal        func_8002D560
       addu      $5, $17, $0
      bnez       $2, .L80085A5C
       addu      $2, $0, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $19, 0xC($2)
      lw         $2, 0xB4($29)
      addu       $4, $16, $0
      lw         $2, 0x0($2)
      addu       $5, $17, $0
      jal        func_8002D5E4
       sw        $2, 0x60($29)
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      addu       $4, $21, $0
      addu       $5, $22, $0
      addu       $6, $20, $0
      sw         $19, 0x10($29)
      lw         $2, 0x0($2)
      addu       $7, $17, $0
      sw         $18, 0x18($29)
      jal        func_8008541C
       sw        $2, 0x14($29)
      j          .L800859FC
       addu      $16, $2, $0
  .globl .L800859F8
.L800859F8:
      addiu      $16, $0, 0xB
  .L800859FC:
      beqz       $16, .L80085A0C
       nop
  .L80085A04:
      j          .L80085A5C
       addu      $2, $0, $0
  .L80085A0C:
      lw         $4, 0x0($21)
      jal        func_8002E904
       addiu     $5, $29, 0x28
      bnez       $2, .L80085A44
       addu      $4, $18, $0
      jal        func_80058268
       addu      $5, $0, $0
      sw         $0, 0x0($2)
      sw         $0, 0x4($2)
      lw         $3, 0x34($29)
      sw         $3, 0xC($2)
      lw         $3, 0x30($29)
      sw         $3, 0x8($2)
      addu       $4, $18, $0
  .L80085A44:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $4, 0x0($2)
      addiu      $2, $0, 0x1
      addiu      $3, $0, 0x2
      sb         $3, 0x22($4)
  .L80085A5C:
      lw         $31, 0x98($29)
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
.end func_80085754

.globl func_80085A88
.ent func_80085A88
func_80085A88:
      addiu      $29, $29, -0x90
      sw         $17, 0x74($29)
      addu       $17, $4, $0
      sw         $16, 0x70($29)
      addu       $16, $5, $0
      sw         $21, 0x84($29)
      addu       $21, $6, $0
      sw         $19, 0x7C($29)
      addu       $19, $7, $0
      addu       $4, $19, $0
      sw         $31, 0x88($29)
      sw         $20, 0x80($29)
      jal        func_8005160C
       sw        $18, 0x78($29)
      jal        func_80051768
       addu      $20, $2, $0
      addu       $4, $16, $0
      addiu      $5, $0, 0x3
      jal        func_80058268
       addu      $18, $2, $0
      lw         $3, 0x4($17)
      lw         $4, 0x0($3)
      lw         $5, 0x0($2)
      jal        func_80063054
       addiu     $4, $4, 0x34
      addu       $4, $16, $0
      addiu      $5, $0, 0x3
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $18, $0
      lw         $6, 0x4($2)
      jal        func_800517E4
       addu      $5, $16, $0
      addiu      $4, $29, 0x20
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x3C
      jal        func_8005160C
       addu      $4, $18, $0
      addu       $4, $19, $0
      sw         $2, 0x20($29)
      lui        $2, %hi(D_800EC63C)
      addiu      $2, $2, %lo(D_800EC63C)
      sw         $2, 0x28($29)
      jal        func_80051620
       sw        $20, 0x60($29)
      addu       $6, $0, $0
      sw         $2, 0x64($29)
      lui        $2, %hi(D_800ECC90)
      addiu      $2, $2, %lo(D_800ECC90)
      sw         $2, 0x68($29)
      addiu      $2, $0, 0x1
      sw         $2, 0x34($29)
      addiu      $2, $29, 0x60
      sw         $0, 0x6C($29)
      sw         $2, 0x38($29)
      lw         $3, 0x30($17)
      addiu      $2, $0, 0x4
      sw         $2, 0x10($29)
      sw         $21, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      lw         $4, 0x2C($17)
      lw         $5, 0xC($17)
      lw         $2, 0x14($3)
      jalr       $2
       addiu     $7, $29, 0x20
      addu       $4, $18, $0
      jal        func_800517B4
       addu      $16, $2, $0
      addu       $2, $16, $0
      lw         $31, 0x88($29)
      lw         $21, 0x84($29)
      lw         $20, 0x80($29)
      lw         $19, 0x7C($29)
      lw         $18, 0x78($29)
      lw         $17, 0x74($29)
      lw         $16, 0x70($29)
      jr         $31
       addiu     $29, $29, 0x90
.end func_80085A88

.globl func_80085BC8
.ent func_80085BC8
func_80085BC8:
      addiu      $29, $29, -0x70
      sw         $16, 0x60($29)
      addu       $16, $4, $0
      sw         $18, 0x68($29)
      addu       $18, $5, $0
      sw         $17, 0x64($29)
      addu       $17, $6, $0
      addiu      $4, $29, 0x20
      addu       $5, $0, $0
      sw         $31, 0x6C($29)
      jal        func_80016140
       addiu     $6, $0, 0x3C
      jal        func_8005160C
       addu      $4, $17, $0
      addu       $6, $0, $0
      sw         $2, 0x20($29)
      lw         $3, 0x30($16)
      addiu      $2, $0, 0x4
      sw         $2, 0x10($29)
      sw         $18, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      lw         $4, 0x2C($16)
      lw         $5, 0xC($16)
      lw         $2, 0x14($3)
      jalr       $2
       addiu     $7, $29, 0x20
      lw         $31, 0x6C($29)
      lw         $18, 0x68($29)
      lw         $17, 0x64($29)
      lw         $16, 0x60($29)
      jr         $31
       addiu     $29, $29, 0x70
.end func_80085BC8

.globl func_80085C4C
.ent func_80085C4C
func_80085C4C:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $20, 0x20($29)
      addu       $20, $7, $0
      addu       $4, $16, $0
      addiu      $5, $0, 0x6
      sw         $31, 0x24($29)
      jal        func_80058268
       sw        $17, 0x14($29)
      lw         $2, 0x4($2)
      beqz       $2, .L80085CD8
       addu      $17, $0, $0
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x6
      lw         $3, 0x4($18)
      addiu      $17, $0, 0x1
      lw         $4, 0x0($3)
      lw         $5, 0x0($2)
      jal        func_80063054
       addiu     $4, $4, 0x34
      addu       $4, $16, $0
      addiu      $5, $0, 0x6
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $19, $0
      addu       $5, $16, $0
      lw         $6, 0x4($2)
      jal        func_8005188C
       addu      $7, $20, $0
  .L80085CD8:
      addu       $2, $17, $0
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80085C4C

.globl func_80085CFC
.ent func_80085CFC
func_80085CFC:
      addiu      $29, $29, -0x50
      sw         $20, 0x40($29)
      addu       $20, $4, $0
      sw         $18, 0x38($29)
      addu       $18, $5, $0
      sw         $17, 0x34($29)
      addu       $17, $6, $0
      sw         $16, 0x30($29)
      addu       $16, $7, $0
      sw         $19, 0x3C($29)
      lw         $19, 0x60($29)
      addu       $4, $18, $0
      sw         $21, 0x44($29)
      lw         $21, 0x64($29)
      sw         $31, 0x48($29)
      jal        func_80058268
       addiu     $5, $0, 0x6
      lw         $2, 0x4($2)
      beqz       $2, .L80085E44
       nop
      lbu        $2, 0x0($16)
      beql       $2, $0, .L80085D60
       addu      $4, $17, $0
      j          .L80085D68
       sb        $0, 0x0($16)
  .L80085D60:
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L80085D68:
      addu       $4, $20, $0
      addu       $5, $18, $0
      addu       $6, $17, $0
      jal        func_80085C4C
       addu      $7, $19, $0
      addu       $4, $17, $0
      jal        func_80051700
       addiu     $5, $0, 0x2E
      addu       $4, $17, $0
      jal        func_80051700
       addiu     $5, $0, 0x78
      addu       $4, $17, $0
      jal        func_80051700
       addiu     $5, $0, 0x3D
      addiu      $4, $29, 0x10
      lui        $16, %hi(D_800EC6B8)
      addiu      $16, $16, %lo(D_800EC6B8)
      lw         $6, 0x0($21)
      jal        func_80016580
       addu      $5, $16, $0
      jal        func_80017780
       addiu     $4, $29, 0x10
      addu       $4, $17, $0
      addiu      $5, $29, 0x10
      addu       $6, $2, $0
      jal        func_8005188C
       addu      $7, $19, $0
      addu       $4, $17, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
      addu       $4, $20, $0
      addu       $5, $18, $0
      addu       $6, $17, $0
      jal        func_80085C4C
       addu      $7, $19, $0
      addu       $4, $17, $0
      jal        func_80051700
       addiu     $5, $0, 0x2E
      addu       $4, $17, $0
      jal        func_80051700
       addiu     $5, $0, 0x79
      addu       $4, $17, $0
      jal        func_80051700
       addiu     $5, $0, 0x3D
      addiu      $4, $29, 0x10
      lw         $6, 0x4($21)
      jal        func_80016580
       addu      $5, $16, $0
      jal        func_80017780
       addiu     $4, $29, 0x10
      addu       $4, $17, $0
      addiu      $5, $29, 0x10
      addu       $6, $2, $0
      jal        func_8005188C
       addu      $7, $19, $0
  .L80085E44:
      lw         $31, 0x48($29)
      lw         $21, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x50
.end func_80085CFC

.globl func_80085E6C
.ent func_80085E6C
func_80085E6C:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $18, 0x20($29)
      addu       $18, $7, $0
      sw         $16, 0x18($29)
      addu       $16, $0, $0
      sw         $31, 0x24($29)
      jal        func_80084E04
       addiu     $6, $29, 0x10
      andi       $2, $2, 0xFF
      beqz       $2, .L80085EC0
       addu      $2, $16, $0
      lw         $6, 0x10($29)
      beqz       $6, .L80085EC0
       addu      $4, $17, $0
      lw         $5, 0x14($29)
      addiu      $16, $0, 0x1
      jal        func_8005188C
       addu      $7, $18, $0
      addu       $2, $16, $0
  .L80085EC0:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80085E6C

.globl func_80085ED8
.ent func_80085ED8
func_80085ED8:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      sw         $17, 0x14($29)
      addu       $17, $7, $0
      addu       $4, $18, $0
      sw         $20, 0x20($29)
      lw         $20, 0x38($29)
      sw         $31, 0x24($29)
      jal        func_80058268
       addiu     $5, $0, 0x6
      lw         $2, 0x4($2)
      beqz       $2, .L80085F40
       addu      $4, $19, $0
      lbu        $2, 0x0($17)
      beqz       $2, .L80085F34
       addu      $4, $16, $0
      j          .L80085F3C
       sb        $0, 0x0($17)
  .L80085F34:
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L80085F3C:
      addu       $4, $19, $0
  .L80085F40:
      addu       $5, $18, $0
      addu       $6, $16, $0
      jal        func_80085C4C
       addu      $7, $20, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80085F78
       addu      $4, $16, $0
      jal        func_80051700
       addiu     $5, $0, 0x3D
      addu       $4, $19, $0
      addu       $5, $18, $0
      addu       $6, $16, $0
      jal        func_80085E6C
       addu      $7, $20, $0
  .L80085F78:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80085ED8

.globl func_80085F98
.ent func_80085F98
func_80085F98:
      addiu      $29, $29, -0x48
      sw         $22, 0x38($29)
      addu       $22, $5, $0
      sw         $18, 0x28($29)
      addu       $18, $6, $0
      sw         $16, 0x20($29)
      addu       $16, $7, $0
      sw         $4, 0x48($29)
      addu       $4, $22, $0
      sw         $23, 0x3C($29)
      lw         $23, 0x58($29)
      addiu      $5, $0, 0x6
      sw         $31, 0x44($29)
      sw         $30, 0x40($29)
      sw         $21, 0x34($29)
      sw         $20, 0x30($29)
      sw         $19, 0x2C($29)
      sw         $17, 0x24($29)
      jal        func_80058268
       sw        $0, 0x18($29)
      lw         $2, 0x4($2)
      beqz       $2, .L80086010
       addu      $21, $0, $0
      lbu        $2, 0x0($16)
      beqz       $2, .L80086008
       addu      $4, $18, $0
      j          .L80086010
       sb        $0, 0x0($16)
  .L80086008:
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L80086010:
      addu       $4, $22, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $19, 0x0($2)
      lw         $4, 0x8($19)
      jal        func_80056C94
       addu      $16, $0, $0
      lw         $3, 0x28($19)
      addu       $20, $2, $0
      blez       $20, .L80086100
       addiu     $3, $3, 0x2A0
      addiu      $30, $0, 0x1
      addu       $17, $3, $0
  .L80086044:
      addu       $5, $16, $0
      addiu      $6, $29, 0x18
      sw         $0, 0x10($29)
      lw         $4, 0x8($19)
      jal        func_80056F40
       addu      $7, $0, $0
      bltzl      $2, .L800860F4
       addiu     $16, $16, 0x1
      lw         $4, 0x0($17)
      jal        func_80088BD4
       addiu     $5, $29, 0x1C
      lw         $2, 0x1C($29)
      bnel       $2, $30, .L800860F4
       addiu     $16, $16, 0x1
      andi       $2, $21, 0xFF
      beqz       $2, .L800860A4
       addu      $4, $22, $0
      jal        func_80058268
       addiu     $5, $0, 0x6
      lw         $2, 0x4($2)
      beqz       $2, .L800860A4
       addu      $4, $18, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L800860A4:
      lw         $4, 0x48($29)
      addu       $5, $22, $0
      addu       $6, $18, $0
      jal        func_80085C4C
       addu      $7, $23, $0
      andi       $2, $2, 0xFF
      beql       $2, $0, .L800860F4
       addiu     $16, $16, 0x1
      addu       $4, $18, $0
      jal        func_80051700
       addiu     $5, $0, 0x3D
      lw         $4, 0x18($29)
      jal        func_80017780
       addiu     $21, $0, 0x1
      addu       $4, $18, $0
      addu       $6, $2, $0
      lw         $5, 0x18($29)
      jal        func_8005188C
       addu      $7, $23, $0
      addiu      $16, $16, 0x1
  .L800860F4:
      slt        $2, $16, $20
      bnez       $2, .L80086044
       addiu     $17, $17, 0x4
  .L80086100:
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
.end func_80085F98

.globl func_80086130
.ent func_80086130
func_80086130:
      addiu      $29, $29, -0x18
      andi       $6, $6, 0xFF
      sw         $31, 0x10($29)
      lw         $4, 0x28($5)
      jal        func_8002EAB0
       sltu      $5, $0, $6
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80086130

.globl func_80086154
.ent func_80086154
func_80086154:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      sw         $31, 0x14($29)
      jal        func_80086188
       addu      $16, $4, $0
      lw         $4, 0x28($16)
      jal        func_80052540
       nop
      sw         $0, 0x28($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80086154

.globl func_80086188
.ent func_80086188
func_80086188:
      addiu      $29, $29, -0x28
      sw         $31, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      lw         $16, 0x28($4)
      beqz       $16, .L80086238
       addu      $4, $16, $0
      jal        func_8002E894
       addiu     $5, $29, 0x10
      lw         $3, 0x10($29)
      addiu      $2, $0, 0xA
      beq        $3, $2, .L800861E8
       sltiu     $2, $3, 0xB
      beqz       $2, .L800861D4
       addiu     $2, $0, 0x9
      beq        $3, $2, .L80086230
       addu      $4, $16, $0
      j          .L80086238
       nop
  .L800861D4:
      addiu      $2, $0, 0xB
      beq        $3, $2, .L800861F8
       addu      $4, $16, $0
      j          .L80086238
       nop
  .L800861E8:
      jal        func_80084BC8
       addu      $4, $16, $0
      j          .L80086238
       nop
  .L800861F8:
      addiu      $17, $29, 0x14
      jal        func_80088714
       addu      $5, $17, $0
      bnez       $2, .L8008621C
       addu      $4, $16, $0
      lw         $4, 0x14($29)
      jal        func_80084BC8
       nop
      addu       $4, $16, $0
  .L8008621C:
      jal        func_80088724
       addu      $5, $17, $0
      bnez       $2, .L80086238
       nop
      lw         $4, 0x14($29)
  .L80086230:
      jal        func_80033ED8
       nop
  .L80086238:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80086188

.globl func_8008624C
.ent func_8008624C
func_8008624C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80084C28
       nop
      lw         $31, 0x10($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008624C

.globl func_8008626C
.ent func_8008626C
func_8008626C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80084C28
       nop
      lw         $31, 0x10($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008626C

.globl func_8008628C
.ent func_8008628C
func_8008628C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80084C28
       nop
      lw         $31, 0x10($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008628C

.globl func_800862AC
.ent func_800862AC
func_800862AC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80084C28
       nop
      lw         $31, 0x10($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_800862AC

.globl func_800862CC
.ent func_800862CC
func_800862CC:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $18, 0x28($29)
      addu       $18, $5, $0
      sw         $16, 0x20($29)
      addiu      $16, $29, 0x18
      sw         $31, 0x2C($29)
      lw         $2, 0x4($17)
      addu       $6, $16, $0
      lw         $4, 0x0($2)
      jal        func_80084994
       addiu     $7, $17, 0x124
      addu       $4, $17, $0
      addu       $5, $18, $0
      addu       $6, $0, $0
      addu       $7, $6, $0
      sw         $0, 0x10($29)
      jal        func_80085754
       sw        $16, 0x14($29)
      andi       $16, $2, 0xFF
      beqz       $16, .L80086344
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      addu       $4, $17, $0
      lbu        $6, 0x26($2)
      jal        func_800865F0
       addu      $5, $18, $0
  .L80086344:
      addu       $2, $16, $0
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800862CC

.globl func_80086360
.ent func_80086360
func_80086360:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800862CC
       nop
      lw         $31, 0x10($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_80086360

.globl func_80086380
.ent func_80086380
func_80086380:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $18, 0x28($29)
      addiu      $18, $29, 0x18
      sw         $31, 0x2C($29)
      lw         $2, 0x4($16)
      addu       $6, $18, $0
      lw         $4, 0x0($2)
      jal        func_80084994
       addiu     $7, $16, 0x124
      addu       $4, $16, $0
      addu       $5, $17, $0
      addu       $6, $0, $0
      addu       $7, $6, $0
      sw         $0, 0x10($29)
      jal        func_80085754
       sw        $18, 0x14($29)
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x30
.end func_80086380

.globl func_800863EC
.ent func_800863EC
func_800863EC:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $18, 0x28($29)
      addiu      $18, $29, 0x18
      sw         $31, 0x2C($29)
      lw         $2, 0x4($16)
      addu       $6, $18, $0
      lw         $4, 0x0($2)
      jal        func_80084994
       addiu     $7, $16, 0x124
      addu       $4, $16, $0
      addu       $5, $17, $0
      addu       $6, $0, $0
      addu       $7, $6, $0
      sw         $0, 0x10($29)
      jal        func_80085754
       sw        $18, 0x14($29)
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x30
.end func_800863EC

.globl func_80086458
.ent func_80086458
func_80086458:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $18, 0x28($29)
      addiu      $18, $29, 0x18
      sw         $31, 0x2C($29)
      lw         $2, 0x4($16)
      addu       $6, $18, $0
      lw         $4, 0x0($2)
      jal        func_80084994
       addiu     $7, $16, 0x124
      addu       $4, $16, $0
      addu       $5, $17, $0
      addu       $6, $0, $0
      addu       $7, $6, $0
      sw         $0, 0x10($29)
      jal        func_80085754
       sw        $18, 0x14($29)
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x30
.end func_80086458

.globl func_800864C4
.ent func_800864C4
func_800864C4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80084C28
       nop
      lw         $31, 0x10($29)
      andi       $2, $2, 0xFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_800864C4

.globl func_800864E4
.ent func_800864E4
func_800864E4:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $16, 0x20($29)
      addu       $16, $6, $0
      sw         $31, 0x28($29)
      jal        func_80017780
       addu      $4, $16, $0
      addu       $5, $0, $0
      addiu      $6, $0, -0x1
      sw         $2, 0x10($29)
      sw         $16, 0x14($29)
      lw         $16, 0x28($17)
      addiu      $7, $0, 0x1
      jal        func_80034930
       addu      $4, $16, $0
      addu       $4, $16, $0
      addiu      $5, $29, 0x10
      addu       $6, $0, $0
      jal        func_800346D8
       addu      $7, $6, $0
      addu       $4, $16, $0
      jal        func_8002E8B0
       addiu     $5, $29, 0x18
      lw         $5, 0x18($29)
      jal        func_8008A72C
       addu      $4, $16, $0
      addu       $4, $16, $0
      jal        func_8008A53C
       addiu     $5, $0, 0x1
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800864E4

.globl func_80086570
.ent func_80086570
func_80086570:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $18, 0x20($29)
      addu       $18, $7, $0
      sw         $31, 0x24($29)
      sw         $16, 0x18($29)
      sw         $0, 0x10($29)
      lw         $4, 0x28($5)
      jal        func_8008D9A0
       addiu     $5, $29, 0x10
      bnez       $2, .L800865D4
       nop
      lw         $16, 0x10($29)
      beqz       $17, .L800865D4
       sltu      $2, $16, $18
      beqz       $2, .L800865D0
       addu      $4, $17, $0
      lw         $5, 0x14($29)
      jal        func_80013F00
       addu      $6, $16, $0
      addu       $2, $17, $16
      j          .L800865D4
       sb        $0, 0x0($2)
  .L800865D0:
      sb         $0, 0x0($17)
  .L800865D4:
      lw         $2, 0x10($29)
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80086570

.globl func_800865F0
.ent func_800865F0
func_800865F0:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      addu       $4, $16, $0
      addiu      $5, $0, 0x5
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $31, 0x20($29)
      jal        func_80058268
       sw        $18, 0x18($29)
      lw         $3, 0x0($2)
      addiu      $2, $0, 0xB
      lbu        $4, 0x10($16)
      beq        $4, $2, .L80086648
       addiu     $18, $3, 0x28
      addiu      $2, $0, 0xC
      beq        $4, $2, .L80086660
       andi      $5, $17, 0xFF
      j          .L8008666C
       nop
  .L80086648:
      lw         $4, 0x28($3)
      andi       $5, $17, 0xFF
      jal        func_8008843C
       sltu      $5, $0, $5
      j          .L8008666C
       nop
  .L80086660:
      lw         $4, 0x28($3)
      jal        func_80088F64
       sltu      $5, $0, $5
  .L8008666C:
      lw         $4, 0x0($18)
      jal        func_8008A53C
       addiu     $5, $0, 0x1
      jal        func_8002DD40
       addiu     $4, $19, 0xB8
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800865F0

.globl func_8008669C
.ent func_8008669C
func_8008669C:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      addu       $4, $16, $0
      sw         $31, 0x1C($29)
      jal        func_80058268
       addiu     $5, $0, 0x5
      addiu      $3, $0, 0xB
      lbu        $4, 0x10($16)
      lw         $5, 0x0($2)
      beq        $4, $3, .L800866DC
       addiu     $2, $0, 0xC
      beq        $4, $2, .L800866F0
       nop
      j          .L800866FC
       nop
  .L800866DC:
      lw         $4, 0x28($5)
      jal        func_8008842C
       addiu     $5, $29, 0x10
      j          .L800866FC
       nop
  .L800866F0:
      lw         $4, 0x28($5)
      jal        func_80088F54
       addiu     $5, $29, 0x10
  .L800866FC:
      lw         $2, 0x10($29)
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      xori       $2, $2, 0x1
      sltiu      $2, $2, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008669C

.globl func_80086718
.ent func_80086718
func_80086718:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $5, $0
      sw         $31, 0x24($29)
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $4, 0x28($2)
      beqz       $4, .L80086778
       addiu     $2, $0, 0x16
      jal        func_8002E904
       addiu     $5, $29, 0x10
      lw         $3, 0x14($29)
      sw         $3, 0x4($16)
      lw         $3, 0x10($29)
      sw         $3, 0x0($16)
      lw         $3, 0x4($16)
      lw         $4, 0x1C($29)
      addu       $3, $3, $4
      sw         $3, 0xC($16)
      lw         $3, 0x0($16)
      lw         $4, 0x18($29)
      addu       $3, $3, $4
      sw         $3, 0x8($16)
  .L80086778:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      sltiu      $2, $2, 0x1
      jr         $31
       addiu     $29, $29, 0x28
.end func_80086718

.globl func_8008678C
.ent func_8008678C
func_8008678C:
      addiu      $29, $29, -0x50
      sw         $16, 0x28($29)
      addu       $16, $4, $0
      sw         $21, 0x3C($29)
      addu       $21, $5, $0
      addu       $4, $21, $0
      addiu      $5, $0, 0x5
      sw         $31, 0x48($29)
      sw         $23, 0x44($29)
      sw         $22, 0x40($29)
      sw         $20, 0x38($29)
      sw         $19, 0x34($29)
      sw         $18, 0x30($29)
      jal        func_80058268
       sw        $17, 0x2C($29)
      lw         $18, 0x0($2)
      beqz       $18, .L80086970
       nop
      lbu        $2, 0x10($21)
      addiu      $3, $2, -0x9
      sltiu      $2, $3, 0x2D
      beqz       $2, .L80086958
       addiu     $19, $18, 0x28
      lui        $2, %hi(jtbl_800F1118)
      addiu      $2, $2, %lo(jtbl_800F1118)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80086804
.L80086804:
      lbu        $5, 0x26($18)
      lw         $4, 0x0($19)
      jal        func_8008843C
       sltu      $5, $0, $5
      j          .L80086964
       nop
  .globl .L8008681C
.L8008681C:
      lbu        $5, 0x26($18)
      lw         $4, 0x0($19)
      jal        func_80088F64
       sltu      $5, $0, $5
      j          .L80086964
       nop
  .globl .L80086834
.L80086834:
      addu       $4, $16, $0
      addu       $5, $21, $0
      jal        func_80084CF4
       addiu     $6, $29, 0x18
      andi       $2, $2, 0xFF
      beqz       $2, .L80086964
       addu      $5, $0, $0
      addiu      $6, $0, -0x1
      lw         $16, 0x0($19)
      addiu      $7, $0, 0x1
      jal        func_80034930
       addu      $4, $16, $0
      addu       $4, $16, $0
      addiu      $5, $29, 0x18
      addu       $6, $0, $0
      jal        func_800346D8
       addiu     $7, $0, 0x1
      lbu        $5, 0x10($21)
      jal        func_8008A72C
       addu      $4, $16, $0
      j          .L80086964
       nop
  .globl .L8008688C
.L8008688C:
      lw         $4, 0x8($18)
      jal        func_80056C94
       nop
      addu       $20, $2, $0
      lbu        $3, 0x10($21)
      addiu      $2, $0, 0xF
      bne        $3, $2, .L800868B8
       nop
      lw         $2, 0x0($19)
      j          .L800868C0
       addiu     $2, $2, 0x4F8
  .L800868B8:
      lw         $2, 0x0($19)
      addiu      $2, $2, 0x2A0
  .L800868C0:
      blez       $20, .L80086934
       addu      $16, $0, $0
      addiu      $22, $29, 0x20
      addiu      $23, $0, 0xF
      addu       $17, $2, $0
  .L800868D4:
      addu       $5, $16, $0
      addu       $6, $0, $0
      sw         $22, 0x10($29)
      lw         $4, 0x8($18)
      jal        func_80056F40
       addu      $7, $6, $0
      bltz       $2, .L80086904
       nop
      lw         $5, 0x20($29)
      lw         $4, 0x0($17)
      jal        func_80088BE4
       sltu      $5, $0, $5
  .L80086904:
      lw         $2, 0x20($29)
      beql       $2, $0, .L80086928
       addiu     $16, $16, 0x1
      lbu        $2, 0x10($21)
      bnel       $2, $23, .L80086928
       addiu     $16, $16, 0x1
      lw         $2, 0x0($19)
      sw         $16, 0x4F4($2)
      addiu      $16, $16, 0x1
  .L80086928:
      slt        $2, $16, $20
      bnez       $2, .L800868D4
       addiu     $17, $17, 0x4
  .L80086934:
      lbu        $3, 0x10($21)
      addiu      $2, $0, 0xF
      bne        $3, $2, .L80086964
       nop
      lw         $4, 0x0($19)
      jal        func_8008A5EC
       nop
      j          .L80086964
       nop
  .globl .L80086958
.L80086958:
      lw         $2, 0x0($19)
      beqz       $2, .L80086970
       nop
  .L80086964:
      lw         $4, 0x0($19)
      jal        func_8008A53C
       addiu     $5, $0, 0x1
  .L80086970:
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
.end func_8008678C

.globl func_8008699C
.ent func_8008699C
func_8008699C:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      addu       $4, $5, $0
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lbu        $3, 0x10($4)
      addiu      $2, $0, 0x14
      beq        $3, $2, .L800869D8
       addu      $16, $4, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $16, 0x4($2)
  .L800869D8:
      lw         $4, 0x4($17)
      addu       $5, $16, $0
      addiu      $6, $0, 0xB
      jal        func_800656D4
       addu      $7, $0, $0
      beqz       $2, .L80086A34
       nop
      lw         $16, 0x8($16)
      beqz       $16, .L80086A34
       addiu     $18, $0, 0x15
  .L80086A00:
      lbu        $2, 0x10($16)
      beq        $2, $18, .L80086A34
       nop
      jal        func_80077960
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80086A28
       addu      $4, $17, $0
      jal        func_8008678C
       addu      $5, $16, $0
  .L80086A28:
      lw         $16, 0x8($16)
      bnez       $16, .L80086A00
       nop
  .L80086A34:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008699C

.globl func_80086A4C
.ent func_80086A4C
func_80086A4C:
      addiu      $29, $29, -0x88
      sw         $20, 0x70($29)
      addu       $20, $4, $0
      sw         $23, 0x7C($29)
      addu       $23, $5, $0
      sw         $21, 0x74($29)
      sw         $31, 0x80($29)
      sw         $22, 0x78($29)
      sw         $19, 0x6C($29)
      sw         $18, 0x68($29)
      sw         $17, 0x64($29)
      sw         $16, 0x60($29)
      lbu        $3, 0x10($23)
      addiu      $2, $0, 0x14
      bne        $3, $2, .L80086A94
       addu      $21, $0, $0
      j          .L80086AA8
       addu      $18, $23, $0
  .L80086A94:
      addu       $4, $23, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $18, 0x4($2)
  .L80086AA8:
      lw         $4, 0x4($20)
      addu       $5, $18, $0
      addiu      $6, $0, 0xD
      jal        func_800656D4
       addu      $7, $0, $0
      beqz       $2, .L80086CF4
       nop
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $4, 0xC($2)
      beqz       $4, .L80086B54
       addiu     $4, $4, 0x1
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $21, $2, $0
      beqz       $21, .L80086B4C
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $3, 0x4($20)
      lw         $4, 0x0($3)
      lw         $5, 0x8($2)
      jal        func_80063054
       addiu     $4, $4, 0x34
      addu       $4, $18, $0
      addiu      $5, $0, 0x3
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $21, $0
      lw         $6, 0xC($2)
      jal        func_80052310
       addu      $5, $16, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $2, 0xC($2)
      addu       $22, $21, $0
      addu       $2, $21, $2
      j          .L80086B5C
       sb        $0, 0x0($2)
  .L80086B4C:
      j          .L80086B5C
       addu      $22, $0, $0
  .L80086B54:
      lui        $2, %hi(D_800ED7DC)
      addiu      $22, $2, %lo(D_800ED7DC)
  .L80086B5C:
      jal        func_80051768
       nop
      addu       $4, $18, $0
      addiu      $5, $0, 0x3
      jal        func_80058268
       addu      $19, $2, $0
      lw         $2, 0x4($2)
      beqz       $2, .L80086BFC
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $4, 0x4($2)
      addiu      $5, $0, 0x2
      jal        func_800524E8
       addiu     $4, $4, 0x1
      addu       $17, $2, $0
      beqz       $17, .L80086CD4
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      addu       $4, $18, $0
      addiu      $5, $0, 0x3
      jal        func_80058268
       addu      $16, $2, $0
      lw         $3, 0x4($20)
      addu       $5, $17, $0
      lw         $4, 0x0($3)
      lw         $6, 0x0($16)
      lw         $3, 0x40($4)
      lw         $7, 0x4($2)
      lw         $2, 0x8($3)
      jalr       $2
       addiu     $4, $4, 0x34
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $2, 0x4($2)
      addu       $2, $17, $2
      j          .L80086C3C
       sb        $0, 0x0($2)
  .L80086BFC:
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $4, 0x2C($2)
      jal        func_80017780
       nop
      addiu      $4, $2, 0x1
      jal        func_800524E8
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      beqz       $17, .L80086CD4
       nop
      lw         $2, 0x4($20)
      lw         $2, 0x0($2)
      lw         $5, 0x2C($2)
      jal        func_80017640
       addu      $4, $17, $0
  .L80086C3C:
      addu       $4, $17, $0
      jal        func_80017580
       addiu     $5, $0, 0x3F
      bnel       $2, $0, .L80086C50
       sb        $0, 0x0($2)
  .L80086C50:
      jal        func_80017780
       addu      $4, $17, $0
      addu       $4, $19, $0
      addu       $5, $17, $0
      jal        func_800517E4
       addu      $6, $2, $0
      addu       $4, $19, $0
      jal        func_80051700
       addiu     $5, $0, 0x3F
      addu       $4, $20, $0
      addu       $5, $23, $0
      addu       $6, $19, $0
      jal        func_80085E6C
       addu      $7, $0, $0
      addiu      $4, $29, 0x20
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x3C
      jal        func_8005160C
       addu      $4, $19, $0
      addu       $6, $0, $0
      sw         $2, 0x20($29)
      lw         $2, 0x30($20)
      addiu      $3, $0, 0x4
      sw         $3, 0x10($29)
      sw         $22, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      lw         $4, 0x2C($20)
      lw         $5, 0xC($20)
      lw         $2, 0x14($2)
      jalr       $2
       addiu     $7, $29, 0x20
  .L80086CD4:
      jal        func_80052540
       addu      $4, $17, $0
      jal        func_80052540
       addu      $4, $21, $0
      beqz       $19, .L80086CF4
       nop
      jal        func_800517B4
       addu      $4, $19, $0
  .L80086CF4:
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
.end func_80086A4C

.globl func_80086D20
.ent func_80086D20
func_80086D20:
      addiu      $29, $29, -0x48
      sw         $19, 0x2C($29)
      addu       $19, $4, $0
      sw         $30, 0x40($29)
      addu       $30, $5, $0
      sw         $17, 0x24($29)
      addu       $17, $0, $0
      sw         $22, 0x38($29)
      addu       $22, $17, $0
      sw         $23, 0x3C($29)
      addu       $23, $17, $0
      addiu      $2, $0, 0x1
      sw         $31, 0x44($29)
      sw         $21, 0x34($29)
      sw         $20, 0x30($29)
      sw         $18, 0x28($29)
      sw         $16, 0x20($29)
      sw         $6, 0x50($29)
      sb         $2, 0x18($29)
      lw         $2, 0x34($19)
      andi       $2, $2, 0x8
      beqz       $2, .L800870A4
       addu      $21, $17, $0
      lbu        $3, 0x10($30)
      addiu      $2, $0, 0x14
      bne        $3, $2, .L80086D94
       addu      $4, $30, $0
      j          .L80086DA4
       addu      $18, $30, $0
  .L80086D94:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $18, 0x4($2)
  .L80086DA4:
      lw         $4, 0x4($19)
      addu       $5, $18, $0
      addiu      $6, $0, 0xD
      jal        func_800656D4
       addu      $7, $0, $0
      beqz       $2, .L800870A4
       nop
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $4, 0xC($2)
      beqz       $4, .L80086E50
       addiu     $4, $4, 0x1
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $23, $2, $0
      beqz       $23, .L80086E48
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $3, 0x4($19)
      lw         $4, 0x0($3)
      lw         $5, 0x8($2)
      jal        func_80063054
       addiu     $4, $4, 0x34
      addu       $4, $18, $0
      addiu      $5, $0, 0x3
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $23, $0
      lw         $6, 0xC($2)
      jal        func_80052310
       addu      $5, $16, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $2, 0xC($2)
      addu       $20, $23, $0
      addu       $2, $23, $2
      j          .L80086E58
       sb        $0, 0x0($2)
  .L80086E48:
      j          .L80086E58
       addu      $20, $0, $0
  .L80086E50:
      lui        $2, %hi(D_800ED7DC)
      addiu      $20, $2, %lo(D_800ED7DC)
  .L80086E58:
      beqz       $20, .L8008708C
       nop
      jal        func_80051768
       nop
      addu       $17, $2, $0
      addu       $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80086F30
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $2, 0x4($2)
      beqz       $2, .L80086ED8
       addu      $4, $18, $0
      jal        func_80058268
       addiu     $5, $0, 0x3
      lw         $3, 0x4($19)
      lw         $4, 0x0($3)
      lw         $5, 0x0($2)
      jal        func_80063054
       addiu     $4, $4, 0x34
      addu       $4, $18, $0
      addiu      $5, $0, 0x3
      jal        func_80058268
       addu      $16, $2, $0
      addu       $4, $17, $0
      lw         $6, 0x4($2)
      j          .L80086F00
       addu      $5, $16, $0
  .L80086ED8:
      lw         $2, 0x4($19)
      lw         $2, 0x0($2)
      lw         $4, 0x2C($2)
      jal        func_80017780
       nop
      lw         $3, 0x4($19)
      lw         $3, 0x0($3)
      addu       $4, $17, $0
      lw         $5, 0x2C($3)
      addu       $6, $2, $0
  .L80086F00:
      jal        func_800517E4
       nop
      lw         $4, 0x0($17)
      jal        func_80017580
       addiu     $5, $0, 0x3F
      beqz       $2, .L80086F24
       addu      $4, $17, $0
      j          .L80086F28
       addiu     $5, $0, 0x26
  .L80086F24:
      addiu      $5, $0, 0x3F
  .L80086F28:
      jal        func_80051700
       nop
  .L80086F30:
      beqz       $18, .L80086FD8
       addu      $16, $18, $0
      andi       $2, $22, 0xFF
  .L80086F3C:
      bnez       $2, .L80086FD8
       nop
      lbu        $2, 0x10($16)
      addiu      $3, $2, -0x9
      sltiu      $2, $3, 0x2D
      beqz       $2, .L80086FCC
       sll       $2, $3, 2
      lui        $8, %hi(jtbl_800F11D0)
      addiu      $8, $8, %lo(jtbl_800F11D0)
      addu       $2, $2, $8
      lw         $2, 0x0($2)
      jr         $2
       nop
  .globl .L80086F70
.L80086F70:
      addu       $4, $19, $0
      jal        func_8008669C
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80086FCC
       nop
  .globl .L80086F88
.L80086F88:
      sw         $21, 0x10($29)
      addu       $4, $19, $0
      addu       $5, $16, $0
      addu       $6, $17, $0
      jal        func_80085ED8
       addiu     $7, $29, 0x18
      j          .L80086FCC
       nop
  .globl .L80086FA8
.L80086FA8:
      sw         $21, 0x10($29)
      addu       $4, $19, $0
      addu       $5, $16, $0
      addu       $6, $17, $0
      jal        func_80085F98
       addiu     $7, $29, 0x18
      j          .L80086FCC
       nop
  .globl .L80086FC8
.L80086FC8:
      addiu      $22, $0, 0x1
  .globl .L80086FCC
.L80086FCC:
      lw         $16, 0x8($16)
      bnez       $16, .L80086F3C
       andi      $2, $22, 0xFF
  .L80086FD8:
      lbu        $3, 0x10($30)
      addiu      $2, $0, 0xD
      bne        $3, $2, .L80087008
       addiu     $2, $0, 0x2
      sw         $21, 0x10($29)
      addu       $4, $19, $0
      addu       $5, $30, $0
      addu       $6, $17, $0
      jal        func_80085ED8
       addiu     $7, $29, 0x18
      j          .L80087050
       addu      $4, $18, $0
  .L80087008:
      bne        $3, $2, .L80087050
       addu      $4, $18, $0
      lw         $8, 0x50($29)
      beqz       $8, .L80087050
       nop
      jal        func_80077918
       addu      $4, $30, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8008704C
       addu      $4, $19, $0
      addu       $5, $30, $0
      addu       $6, $17, $0
      lw         $8, 0x50($29)
      addiu      $7, $29, 0x18
      sw         $21, 0x10($29)
      jal        func_80085CFC
       sw        $8, 0x14($29)
  .L8008704C:
      addu       $4, $18, $0
  .L80087050:
      jal        func_80058268
       addiu     $5, $0, 0x2
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8008707C
       addu      $4, $19, $0
      addu       $5, $20, $0
      jal        func_80085BC8
       addu      $6, $17, $0
      j          .L8008708C
       nop
  .L8008707C:
      addu       $5, $18, $0
      addu       $6, $20, $0
      jal        func_80085A88
       addu      $7, $17, $0
  .L8008708C:
      beqz       $17, .L8008709C
       nop
      jal        func_800517B4
       addu      $4, $17, $0
  .L8008709C:
      jal        func_80052540
       addu      $4, $23, $0
  .L800870A4:
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
.end func_80086D20

.globl func_800870D4
.ent func_800870D4
func_800870D4:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      addu       $19, $5, $0
      lw         $4, 0x44($2)
      jal        func_8005832C
       addu      $17, $0, $0
      beqz       $2, .L800871B0
       nop
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $4, 0x44($2)
      jal        func_80058434
       nop
      addu       $16, $2, $0
      beqz       $16, .L800871B0
       addiu     $20, $0, 0xC
  .L80087134:
      lbu        $2, 0x10($16)
      bne        $2, $20, .L800871A4
       nop
      lw         $2, 0x4($18)
      addu       $5, $16, $0
      lw         $4, 0x0($2)
      jal        func_80084AC0
       addu      $6, $19, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800871A4
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      beq        $16, $19, .L80087184
       addiu     $17, $2, 0x28
      addu       $4, $18, $0
      addu       $5, $16, $0
      j          .L80087190
       addu      $6, $0, $0
  .L80087184:
      addu       $4, $18, $0
      addu       $5, $16, $0
      addiu      $6, $0, 0x1
  .L80087190:
      jal        func_800865F0
       nop
      lw         $4, 0x0($17)
      jal        func_8008A53C
       addiu     $5, $0, 0x1
  .L800871A4:
      lw         $16, 0x8($16)
      bnez       $16, .L80087134
       nop
  .L800871B0:
      beqz       $17, .L800871CC
       nop
      lw         $4, 0x0($17)
      jal        func_8002E12C
       nop
      jal        func_8002DD40
       addu      $4, $2, $0
  .L800871CC:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800870D4

.globl func_800871EC
.ent func_800871EC
func_800871EC:
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
      lw         $2, 0x4($18)
      addu       $21, $5, $0
      lw         $2, 0x0($2)
      addu       $22, $6, $0
      lw         $4, 0x44($2)
      jal        func_8005832C
       addu      $20, $0, $0
      beqz       $2, .L800872EC
       nop
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $4, 0x44($2)
      jal        func_80058434
       nop
      addu       $17, $2, $0
      beqz       $17, .L800872EC
       addiu     $19, $0, 0xC
  .L80087258:
      lbu        $2, 0x10($17)
      bne        $2, $19, .L800872E0
       addu      $5, $17, $0
      lw         $2, 0x4($18)
      lw         $4, 0x0($2)
      jal        func_80084AC0
       addu      $6, $21, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800872E0
       addu      $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      addu       $4, $17, $0
      lw         $16, 0x4($2)
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $3, 0x4($18)
      lw         $4, 0x0($3)
      lw         $5, 0x0($2)
      jal        func_80063054
       addiu     $4, $4, 0x34
      addu       $4, $22, $0
      addu       $5, $2, $0
      jal        func_80052224
       addu      $6, $16, $0
      bnez       $2, .L800872D0
       addu      $4, $18, $0
      addu       $5, $17, $0
      j          .L800872D8
       addiu     $6, $0, 0x1
  .L800872D0:
      addu       $5, $17, $0
      addu       $6, $0, $0
  .L800872D8:
      jal        func_800865F0
       nop
  .L800872E0:
      lw         $17, 0x8($17)
      bnez       $17, .L80087258
       nop
  .L800872EC:
      beqz       $20, .L80087308
       nop
      lw         $4, 0x0($20)
      jal        func_8002E12C
       nop
      jal        func_8002DD40
       addu      $4, $2, $0
  .L80087308:
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
.end func_800871EC

.globl func_80087330
.ent func_80087330
func_80087330:
      addiu      $29, $29, -0x30
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($18)
      addu       $20, $5, $0
      lw         $2, 0x0($2)
      addu       $19, $6, $0
      lw         $4, 0x44($2)
      jal        func_8005832C
       addu      $21, $7, $0
      beqz       $2, .L80087434
       addu      $2, $0, $0
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $4, 0x44($2)
      jal        func_80058434
       nop
      addu       $16, $2, $0
      beqz       $16, .L80087430
       addiu     $17, $0, 0xC
  .L80087398:
      lbu        $2, 0x10($16)
      bne        $2, $17, .L80087424
       addu      $5, $16, $0
      lw         $2, 0x4($18)
      lw         $4, 0x0($2)
      jal        func_80084AC0
       addu      $6, $20, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80087424
       addu      $4, $18, $0
      jal        func_8008669C
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80087424
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $17, 0x4($2)
      beql       $19, $0, .L80087434
       addu      $2, $17, $0
      beqz       $21, .L8008741C
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x1
      lw         $3, 0x4($18)
      lw         $4, 0x0($3)
      lw         $5, 0x0($2)
      jal        func_80063054
       addiu     $4, $4, 0x34
      addu       $4, $19, $0
      addu       $5, $2, $0
      jal        func_80052310
       addu      $6, $17, $0
  .L8008741C:
      j          .L80087434
       addu      $2, $17, $0
  .L80087424:
      lw         $16, 0x8($16)
      bnez       $16, .L80087398
       nop
  .L80087430:
      addu       $2, $0, $0
  .L80087434:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80087330

.globl func_80087458
.ent func_80087458
func_80087458:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $2, 0x0($2)
      sw         $0, 0x14($2)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80087458

.globl func_8008747C
.ent func_8008747C
func_8008747C:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $31, 0x1C($29)
      lbu        $3, 0x10($16)
      addiu      $2, $0, 0xD
      beq        $3, $2, .L800874AC
       addiu     $2, $0, 0x34
      beq        $3, $2, .L800874AC
       addiu     $2, $0, 0xE
      bne        $3, $2, .L800874E4
       nop
  .L800874AC:
      addu       $5, $16, $0
      jal        func_80084CF4
       addiu     $6, $29, 0x10
      andi       $2, $2, 0xFF
      beqz       $2, .L800874E4
       addu      $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $5, 0x10($29)
      lw         $2, 0x0($2)
      lw         $6, 0x14($29)
      lw         $4, 0x28($2)
      jal        func_8002E8E4
       nop
  .L800874E4:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008747C

.globl func_800874F4
.ent func_800874F4
func_800874F4:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      addiu      $5, $29, 0x10
      sw         $31, 0x20($29)
      jal        func_8002EA10
       sw        $17, 0x1C($29)
      bnez       $2, .L800875B8
       nop
      jal        func_8002E12C
       addu      $4, $16, $0
      addu       $4, $2, $0
      jal        func_8002EA10
       addiu     $5, $29, 0x14
      bnez       $2, .L800875B8
       nop
      lw         $4, 0x14($29)
      jal        func_8007F574
       addiu     $5, $0, 0x1
      lw         $4, 0x10($29)
      jal        func_80058268
       addiu     $5, $0, 0x6
      lui        $16, %hi(D_800ECE00)
      addiu      $16, $16, %lo(D_800ECE00)
      addu       $4, $16, $0
      jal        func_80017780
       addu      $17, $2, $0
      lw         $3, 0x14($29)
      lw         $3, 0x4($3)
      addu       $5, $16, $0
      lw         $4, 0x0($3)
      addu       $7, $2, $0
      lw         $3, 0x40($4)
      lw         $6, 0x0($17)
      lw         $3, 0x1C($3)
      jalr       $3
       addiu     $4, $4, 0x34
      bnez       $2, .L800875A8
       nop
      lw         $4, 0x14($29)
      lw         $5, 0x10($29)
      jal        func_80086A4C
       nop
      j          .L800875B8
       nop
  .L800875A8:
      lw         $4, 0x14($29)
      lw         $5, 0x10($29)
      jal        func_80086D20
       addu      $6, $0, $0
  .L800875B8:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800874F4

.globl func_800875CC
.ent func_800875CC
func_800875CC:
      addiu      $29, $29, -0x90
      sw         $18, 0x78($29)
      addu       $18, $4, $0
      sw         $21, 0x84($29)
      addu       $21, $5, $0
      sw         $19, 0x7C($29)
      addu       $19, $6, $0
      sw         $16, 0x70($29)
      addu       $16, $7, $0
      addu       $4, $19, $0
      sw         $31, 0x88($29)
      sw         $20, 0x80($29)
      jal        func_8005160C
       sw        $17, 0x74($29)
      jal        func_80051768
       addu      $20, $2, $0
      addu       $4, $16, $0
      jal        func_80017780
       addu      $17, $2, $0
      addu       $4, $17, $0
      addu       $5, $16, $0
      jal        func_800517E4
       addu      $6, $2, $0
      addiu      $4, $29, 0x20
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x3C
      jal        func_8005160C
       addu      $4, $17, $0
      addu       $4, $19, $0
      sw         $2, 0x20($29)
      lui        $2, %hi(D_800EC63C)
      addiu      $2, $2, %lo(D_800EC63C)
      sw         $2, 0x28($29)
      jal        func_80051620
       sw        $20, 0x60($29)
      addu       $6, $0, $0
      sw         $2, 0x64($29)
      lui        $2, %hi(D_800ECC90)
      addiu      $2, $2, %lo(D_800ECC90)
      sw         $2, 0x68($29)
      addiu      $2, $0, 0x1
      sw         $2, 0x34($29)
      addiu      $2, $29, 0x60
      sw         $0, 0x6C($29)
      sw         $2, 0x38($29)
      lw         $3, 0x30($18)
      addiu      $2, $0, 0x4
      sw         $2, 0x10($29)
      sw         $21, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      lw         $4, 0x2C($18)
      lw         $5, 0xC($18)
      lw         $2, 0x14($3)
      jalr       $2
       addiu     $7, $29, 0x20
      addu       $4, $17, $0
      jal        func_800517B4
       addu      $16, $2, $0
      addu       $2, $16, $0
      lw         $31, 0x88($29)
      lw         $21, 0x84($29)
      lw         $20, 0x80($29)
      lw         $19, 0x7C($29)
      lw         $18, 0x78($29)
      lw         $17, 0x74($29)
      lw         $16, 0x70($29)
      jr         $31
       addiu     $29, $29, 0x90
.end func_800875CC

.globl func_800876E4
.ent func_800876E4
func_800876E4:
      addiu      $29, $29, -0x58
      sw         $23, 0x4C($29)
      addu       $23, $4, $0
      sw         $20, 0x40($29)
      addu       $20, $5, $0
      sw         $22, 0x48($29)
      addu       $22, $6, $0
      sw         $19, 0x3C($29)
      addu       $19, $0, $0
      sw         $18, 0x38($29)
      addu       $18, $19, $0
      sw         $21, 0x44($29)
      addiu      $21, $0, -0x1
      addiu      $4, $29, 0x10
      addu       $5, $19, $0
      addiu      $6, $0, 0x20
      sw         $31, 0x50($29)
      sw         $17, 0x34($29)
      jal        func_80016140
       sw        $16, 0x30($29)
      addiu      $4, $29, 0x10
      lui        $2, %hi(D_800F1284)
      addiu      $16, $2, %lo(D_800F1284)
      addu       $5, $16, $0
      jal        func_80016580
       addu      $6, $20, $0
      lui        $4, %hi(D_800F128C)
      addiu      $4, $4, %lo(D_800F128C)
      jal        func_800009D8
       addiu     $5, $29, 0x10
      jal        func_80014E3C
       nop
      bnel       $2, $0, .L80087780
       addiu     $4, $29, 0x10
      lui        $4, %hi(D_800F129C)
      jal        func_80002E80
       addiu     $4, $4, %lo(D_800F129C)
      j          .L800878EC
       addu      $2, $21, $0
  .L80087780:
      addu       $5, $16, $0
      jal        func_80016580
       addu      $6, $20, $0
      addiu      $4, $29, 0x10
      lui        $2, %hi(D_800F12AC)
      addiu      $16, $2, %lo(D_800F12AC)
      jal        func_800183A4
       addu      $5, $16, $0
      addu       $17, $2, $0
      bnez       $17, .L800877F4
       lui       $2, %hi(D_800F1330)
      addiu      $4, $29, 0x10
      lui        $5, %hi(D_800F12B0)
      addiu      $5, $5, %lo(D_800F12B0)
      jal        func_80016580
       addu      $6, $20, $0
      addiu      $4, $29, 0x10
      jal        func_800183A4
       addu      $5, $16, $0
      addu       $17, $2, $0
      bnez       $17, .L800877F4
       lui       $2, %hi(D_800F1330)
      lui        $4, %hi(D_800F12B8)
      addiu      $4, $4, %lo(D_800F12B8)
      jal        func_80002DB4
       addiu     $5, $29, 0x10
      addiu      $3, $0, 0x2
      beq        $2, $3, .L800878B8
       lui       $2, %hi(D_800F1330)
  .L800877F4:
      addiu      $16, $2, %lo(D_800F1330)
      addu       $4, $16, $0
      lui        $5, %hi(D_800F1340)
      jal        func_800183A4
       addiu     $5, $5, %lo(D_800F1340)
      addu       $19, $2, $0
      beqz       $19, .L800878C8
       nop
      beqz       $17, .L800878C0
       addu      $4, $17, $0
      addu       $5, $19, $0
      jal        func_80008B6C
       addu      $6, $20, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800878B8
       nop
      jal        func_80018620
       addu      $4, $19, $0
      addu       $19, $0, $0
      jal        func_80018620
       addu      $4, $17, $0
      addu       $17, $19, $0
      addu       $4, $16, $0
      lui        $5, %hi(D_800F12AC)
      jal        func_800183A4
       addiu     $5, $5, %lo(D_800F12AC)
      addu       $18, $2, $0
      beqz       $18, .L800878B8
       addu      $4, $18, $0
      addu       $5, $19, $0
      jal        func_80018BFC
       addiu     $6, $0, 0x2
      jal        func_80018CD8
       addu      $4, $18, $0
      addu       $4, $18, $0
      addu       $5, $19, $0
      addiu      $6, $0, 0x3
      jal        func_80018BFC
       addu      $16, $2, $0
      blez       $16, .L800878B8
       slt       $2, $22, $16
      bnez       $2, .L800878B8
       addu      $4, $23, $0
      addiu      $5, $0, 0x1
      addu       $6, $16, $0
      jal        func_80018704
       addu      $7, $18, $0
      beql       $2, $16, .L800878B8
       addu      $21, $16, $0
  .L800878B8:
      beqz       $19, .L800878C8
       nop
  .L800878C0:
      jal        func_80018620
       addu      $4, $19, $0
  .L800878C8:
      beqz       $17, .L800878D8
       nop
      jal        func_80018620
       addu      $4, $17, $0
  .L800878D8:
      beqz       $18, .L800878EC
       addu      $2, $21, $0
      jal        func_80018620
       addu      $4, $18, $0
      addu       $2, $21, $0
  .L800878EC:
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
.end func_800876E4

.globl func_80087918
.ent func_80087918
func_80087918:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      bnez       $16, .L80087944
       sw        $31, 0x1C($29)
      j          .L80087994
       addu      $2, $0, $0
  .L80087944:
      jal        func_80017780
       addu      $4, $16, $0
      addu       $4, $17, $0
      addu       $5, $16, $0
      addu       $6, $2, $0
      jal        func_8005188C
       addu      $7, $0, $0
      addu       $4, $17, $0
      jal        func_80051700
       addiu     $5, $0, 0x3D
      beqz       $18, .L80087994
       addiu     $2, $0, 0x1
      jal        func_80017780
       addu      $4, $18, $0
      addu       $4, $17, $0
      addu       $5, $18, $0
      addu       $6, $2, $0
      jal        func_8005188C
       addu      $7, $0, $0
      addiu      $2, $0, 0x1
  .L80087994:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80087918

.globl func_800879AC
.ent func_800879AC
func_800879AC:
      addiu      $29, $29, -0x388
      sw         $19, 0x36C($29)
      addu       $19, $0, $0
      lui        $2, %hi(D_800F1344)
      lui        $3, %hi(D_80137734)
      sw         $31, 0x384($29)
      sw         $30, 0x380($29)
      sw         $23, 0x37C($29)
      sw         $22, 0x378($29)
      sw         $21, 0x374($29)
      sw         $20, 0x370($29)
      sw         $18, 0x368($29)
      sw         $17, 0x364($29)
      sw         $16, 0x360($29)
      sw         $4, 0x388($29)
      addiu      $11, $2, %lo(D_800F1344)
      lwl        $8, 0x0($11)
      lwr        $8, 0x3($11)
      swl        $8, 0x358($29)
      swr        $8, 0x35B($29)
      addiu      $2, $0, 0xC
      lui        $17, %hi(D_8010D848)
      sw         $2, %lo(D_80137734)($3)
      lw         $2, %lo(D_8010D848)($17)
      beqz       $2, .L80087A20
       addiu     $21, $29, 0x358
      lw         $2, 0x4($2)
      bgtz       $2, .L80087A34
       addiu     $16, $29, 0x238
  .L80087A20:
      lui        $4, %hi(D_800F1348)
      jal        func_800009D8
       addiu     $4, $4, %lo(D_800F1348)
      j          .L800880E4
       addu      $2, $0, $0
  .L80087A34:
      addu       $4, $16, $0
      lui        $5, %hi(D_800F135C)
      addiu      $5, $5, %lo(D_800F135C)
      lui        $2, %hi(D_80132E9C)
      addiu      $22, $2, %lo(D_80132E9C)
      addu       $6, $22, $0
      jal        func_80016580
       addiu     $7, $22, 0x200
      jal        func_80000AAC
       addu      $4, $16, $0
      addiu      $4, $0, 0x26
      addiu      $5, $0, 0x50
      addiu      $6, $0, 0x208
      addiu      $7, $0, 0x60
      lw         $3, %lo(D_8010D848)($17)
      lw         $23, 0x4($3)
      jal        func_80003DEC
       lui       $2, (0x800F0000 >> 16)
      jal        func_80003F18
       addiu     $4, $0, 0xA
      lui        $4, %hi(func_80003F30)
      jal        func_80003F00
       addiu     $4, $4, %lo(func_80003F30)
      jal        func_80003B90
       nop
      ori        $4, $0, 0x8040
      jal        func_80013D6C
       addiu     $5, $0, 0x1
      addu       $20, $2, $0
      bnez       $20, .L80087AB8
       slt       $2, $19, $23
      j          .L800880E4
       addu      $2, $0, $0
  .L80087AB8:
      beqz       $2, .L80087FC8
       addu      $30, $0, $0
      addiu      $4, $29, 0x10
      addu       $5, $30, $0
      jal        func_80016140
       addiu     $6, $0, 0x24
      jal        func_80007EF0
       addiu     $4, $29, 0x10
      andi       $2, $2, 0xFF
      bnel       $2, $0, .L80087BD4
       addiu     $4, $29, 0x10
      lui        $4, %hi(D_800F1364)
      jal        func_80002E80
       addiu     $4, $4, %lo(D_800F1364)
      lui        $2, %hi(D_800FF0A4)
      addiu      $5, $2, %lo(D_800FF0A4)
      lui        $2, %hi(D_800F1384)
      addiu      $3, $2, %lo(D_800F1384)
      or         $2, $3, $5
      andi       $2, $2, 0x3
      beqz       $2, .L80087B64
       addiu     $2, $3, 0x20
  .L80087B10:
      lwl        $8, 0x0($3)
      lwr        $8, 0x3($3)
      lwl        $9, 0x4($3)
      lwr        $9, 0x7($3)
      lwl        $10, 0x8($3)
      lwr        $10, 0xB($3)
      lwl        $11, 0xC($3)
      lwr        $11, 0xF($3)
      swl        $8, 0x0($5)
      swr        $8, 0x3($5)
      swl        $9, 0x4($5)
      swr        $9, 0x7($5)
      swl        $10, 0x8($5)
      swr        $10, 0xB($5)
      swl        $11, 0xC($5)
      swr        $11, 0xF($5)
      addiu      $3, $3, 0x10
      bne        $3, $2, .L80087B10
       addiu     $5, $5, 0x10
      j          .L80087B94
       addu      $4, $20, $0
  .L80087B64:
      lw         $8, 0x0($3)
      lw         $9, 0x4($3)
      lw         $10, 0x8($3)
      lw         $11, 0xC($3)
      sw         $8, 0x0($5)
      sw         $9, 0x4($5)
      sw         $10, 0x8($5)
      sw         $11, 0xC($5)
      addiu      $3, $3, 0x10
      bne        $3, $2, .L80087B64
       addiu     $5, $5, 0x10
      addu       $4, $20, $0
  .L80087B94:
      lwl        $8, 0x0($3)
      lwr        $8, 0x3($3)
      lwl        $9, 0x4($3)
      lwr        $9, 0x7($3)
      lb         $10, 0x8($3)
      swl        $8, 0x0($5)
      swr        $8, 0x3($5)
      swl        $9, 0x4($5)
      swr        $9, 0x7($5)
      sb         $10, 0x8($5)
      lui        $3, %hi(D_800FF124)
      addiu      $2, $0, 0x954
      jal        func_80013B34
       sw        $2, %lo(D_800FF124)($3)
      j          .L800880E4
       addu      $2, $0, $0
  .L80087BD4:
      lw         $2, %lo(D_8010D848)($17)
      lw         $3, 0xC($2)
      lw         $5, 0x10($2)
      jal        func_800079D0
       addu      $5, $3, $5
      jal        func_80051768
       nop
      addu       $19, $2, $0
      bnez       $19, .L80087CF4
       addiu     $18, $29, 0x38
      lui        $4, %hi(D_800F13B0)
      jal        func_80002E80
       addiu     $4, $4, %lo(D_800F13B0)
      lui        $2, %hi(D_800FF0A4)
      addiu      $5, $2, %lo(D_800FF0A4)
      lui        $2, %hi(D_800F1384)
      addiu      $3, $2, %lo(D_800F1384)
      or         $2, $3, $5
      andi       $2, $2, 0x3
      beqz       $2, .L80087C7C
       addiu     $2, $3, 0x20
  .L80087C28:
      lwl        $8, 0x0($3)
      lwr        $8, 0x3($3)
      lwl        $9, 0x4($3)
      lwr        $9, 0x7($3)
      lwl        $10, 0x8($3)
      lwr        $10, 0xB($3)
      lwl        $11, 0xC($3)
      lwr        $11, 0xF($3)
      swl        $8, 0x0($5)
      swr        $8, 0x3($5)
      swl        $9, 0x4($5)
      swr        $9, 0x7($5)
      swl        $10, 0x8($5)
      swr        $10, 0xB($5)
      swl        $11, 0xC($5)
      swr        $11, 0xF($5)
      addiu      $3, $3, 0x10
      bne        $3, $2, .L80087C28
       addiu     $5, $5, 0x10
      j          .L80087CAC
       addu      $4, $20, $0
  .L80087C7C:
      lw         $8, 0x0($3)
      lw         $9, 0x4($3)
      lw         $10, 0x8($3)
      lw         $11, 0xC($3)
      sw         $8, 0x0($5)
      sw         $9, 0x4($5)
      sw         $10, 0x8($5)
      sw         $11, 0xC($5)
      addiu      $3, $3, 0x10
      bne        $3, $2, .L80087C7C
       addiu     $5, $5, 0x10
      addu       $4, $20, $0
  .L80087CAC:
      lwl        $8, 0x0($3)
      lwr        $8, 0x3($3)
      lwl        $9, 0x4($3)
      lwr        $9, 0x7($3)
      lb         $10, 0x8($3)
      swl        $8, 0x0($5)
      swr        $8, 0x3($5)
      swl        $9, 0x4($5)
      swr        $9, 0x7($5)
      sb         $10, 0x8($5)
      lui        $3, %hi(D_800FF124)
      addiu      $2, $0, 0x95D
      jal        func_80013B34
       sw        $2, %lo(D_800FF124)($3)
      jal        func_800081A4
       addiu     $4, $29, 0x10
      j          .L800880E4
       addu      $2, $0, $0
  .L80087CF4:
      addu       $4, $18, $0
      lui        $5, %hi(D_800F13D0)
      lw         $6, 0x28($29)
      lw         $17, 0x14($29)
      jal        func_80016580
       addiu     $5, $5, %lo(D_800F13D0)
      addiu      $4, $29, 0x64
      jal        func_80017640
       addu      $5, $21, $0
      addiu      $16, $29, 0x138
      addu       $4, $16, $0
      lui        $5, %hi(D_800F13DC)
      lw         $6, 0x1C($29)
      jal        func_80016580
       addiu     $5, $5, %lo(D_800F13DC)
      addiu      $4, $29, 0x164
      jal        func_80017640
       addu      $5, $21, $0
      lui        $4, %hi(D_800F13E4)
      addiu      $4, $4, %lo(D_800F13E4)
      addu       $5, $18, $0
      jal        func_80003BB4
       addu      $6, $16, $0
      addu       $4, $19, $0
      lui        $5, %hi(D_800F13EC)
      addiu      $5, $5, %lo(D_800F13EC)
      sll        $6, $17, 3
      subu       $6, $6, $17
      sll        $6, $6, 4
      addu       $6, $6, $17
      sll        $6, $6, 1
      addiu      $17, $22, 0x7A0
      jal        func_80087918
       addu      $6, $6, $17
      beqz       $2, .L80087D8C
       addu      $4, $19, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L80087D8C:
      addu       $4, $19, $0
      lw         $6, 0x1C($29)
      lui        $5, %hi(D_800F13F4)
      jal        func_80087918
       addiu     $5, $5, %lo(D_800F13F4)
      beqz       $2, .L80087DB0
       addu      $4, $19, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L80087DB0:
      addu       $4, $19, $0
      lw         $6, 0x20($29)
      lui        $5, %hi(D_800F13F8)
      jal        func_80087918
       addiu     $5, $5, %lo(D_800F13F8)
      beqz       $2, .L80087DD4
       addu      $4, $19, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L80087DD4:
      addu       $4, $19, $0
      lw         $6, 0x24($29)
      lui        $5, %hi(D_800F13FC)
      jal        func_80087918
       addiu     $5, $5, %lo(D_800F13FC)
      beqz       $2, .L80087DF8
       addu      $4, $19, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L80087DF8:
      addu       $4, $19, $0
      lw         $6, 0x28($29)
      lui        $5, %hi(D_800F1404)
      jal        func_80087918
       addiu     $5, $5, %lo(D_800F1404)
      beqz       $2, .L80087E1C
       addu      $4, $19, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L80087E1C:
      addiu      $16, $29, 0x338
      addu       $4, $16, $0
      lw         $6, 0x10($29)
      lui        $5, %hi(D_800F1410)
      jal        func_80016580
       addiu     $5, $5, %lo(D_800F1410)
      addu       $4, $19, $0
      lui        $5, %hi(D_800F1414)
      addiu      $5, $5, %lo(D_800F1414)
      jal        func_80087918
       addu      $6, $16, $0
      beqz       $2, .L80087E58
       addu      $4, $19, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L80087E58:
      lw         $3, 0x14($29)
      sltiu      $2, $3, 0x5
      beqz       $2, .L80087ED0
       sll       $2, $3, 3
      subu       $2, $2, $3
      sll        $2, $2, 4
      addu       $2, $2, $3
      sll        $2, $2, 1
      addu       $16, $2, $17
      lbu        $3, 0xE1($16)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80087ED4
       addu      $4, $19, $0
      lw         $4, 0x2C($29)
      jal        func_80017780
       addiu     $17, $16, 0x60
      addu       $4, $17, $0
      jal        func_80017780
       addu      $16, $2, $0
      addu       $16, $16, $2
      sltiu      $16, $16, 0xFF4
      beqz       $16, .L80087ED4
       addu      $4, $19, $0
      lui        $5, %hi(D_800F1420)
      lw         $4, 0x2C($29)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800F1420)
      lw         $4, 0x2C($29)
      jal        func_80017500
       addu      $5, $17, $0
  .L80087ED0:
      addu       $4, $19, $0
  .L80087ED4:
      lw         $6, 0x2C($29)
      lui        $5, %hi(D_800F1428)
      jal        func_80087918
       addiu     $5, $5, %lo(D_800F1428)
      beqz       $2, .L80087EF4
       addu      $4, $19, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L80087EF4:
      sb         $0, 0x0($20)
      lw         $5, 0x30($29)
      lbu        $2, 0x0($5)
      beqz       $2, .L80087F44
       addu      $4, $20, $0
      jal        func_800876E4
       ori       $6, $0, 0x8040
      addu       $16, $2, $0
      addiu      $2, $0, -0x1
      bnel       $16, $2, .L80087F38
       lui       $4, %hi(D_800F1454)
      lui        $4, %hi(D_800F1430)
      lw         $5, 0x30($29)
      jal        func_80002E80
       addiu     $4, $4, %lo(D_800F1430)
      sb         $0, 0x0($20)
      lui        $4, %hi(D_800F1454)
  .L80087F38:
      addiu      $4, $4, %lo(D_800F1454)
      jal        func_80003BB4
       addu      $5, $16, $0
  .L80087F44:
      addu       $4, $19, $0
      lui        $5, %hi(D_800F1478)
      addiu      $5, $5, %lo(D_800F1478)
      jal        func_80087918
       addu      $6, $20, $0
      beqz       $2, .L80087F68
       addu      $4, $19, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L80087F68:
      addu       $4, $19, $0
      lw         $6, 0x30($29)
      lui        $5, %hi(D_800F1480)
      jal        func_80087918
       addiu     $5, $5, %lo(D_800F1480)
      beqz       $2, .L80087F8C
       addu      $4, $19, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L80087F8C:
      lw         $4, 0x388($29)
      lui        $5, %hi(D_800ED7DC)
      addiu      $5, $5, %lo(D_800ED7DC)
      addu       $6, $19, $0
      jal        func_800875CC
       addiu     $7, $29, 0x238
      addu       $4, $30, $0
      jal        func_80008348
       addiu     $5, $0, 0x1
      beqz       $19, .L80087FC0
       nop
      jal        func_800517B4
       addu      $4, $19, $0
  .L80087FC0:
      jal        func_800081A4
       addiu     $4, $29, 0x10
  .L80087FC8:
      lui        $2, %hi(D_80137108)
      addiu      $2, $2, %lo(D_80137108)
      sw         $23, 0x960($2)
      beqz       $20, .L800880B8
       sw        $0, 0x964($2)
      lui        $2, %hi(D_800FF0A4)
      addiu      $5, $2, %lo(D_800FF0A4)
      lui        $2, %hi(D_800F1384)
      addiu      $3, $2, %lo(D_800F1384)
      or         $2, $3, $5
      andi       $2, $2, 0x3
      beqz       $2, .L80088050
       addiu     $2, $3, 0x20
  .L80087FFC:
      lwl        $8, 0x0($3)
      lwr        $8, 0x3($3)
      lwl        $9, 0x4($3)
      lwr        $9, 0x7($3)
      lwl        $10, 0x8($3)
      lwr        $10, 0xB($3)
      lwl        $11, 0xC($3)
      lwr        $11, 0xF($3)
      swl        $8, 0x0($5)
      swr        $8, 0x3($5)
      swl        $9, 0x4($5)
      swr        $9, 0x7($5)
      swl        $10, 0x8($5)
      swr        $10, 0xB($5)
      swl        $11, 0xC($5)
      swr        $11, 0xF($5)
      addiu      $3, $3, 0x10
      bne        $3, $2, .L80087FFC
       addiu     $5, $5, 0x10
      j          .L80088080
       addu      $4, $20, $0
  .L80088050:
      lw         $8, 0x0($3)
      lw         $9, 0x4($3)
      lw         $10, 0x8($3)
      lw         $11, 0xC($3)
      sw         $8, 0x0($5)
      sw         $9, 0x4($5)
      sw         $10, 0x8($5)
      sw         $11, 0xC($5)
      addiu      $3, $3, 0x10
      bne        $3, $2, .L80088050
       addiu     $5, $5, 0x10
      addu       $4, $20, $0
  .L80088080:
      lwl        $8, 0x0($3)
      lwr        $8, 0x3($3)
      lwl        $9, 0x4($3)
      lwr        $9, 0x7($3)
      lb         $10, 0x8($3)
      swl        $8, 0x0($5)
      swr        $8, 0x3($5)
      swl        $9, 0x4($5)
      swr        $9, 0x7($5)
      sb         $10, 0x8($5)
      lui        $3, %hi(D_800FF124)
      addiu      $2, $0, 0x9F7
      jal        func_80013B34
       sw        $2, %lo(D_800FF124)($3)
  .L800880B8:
      jal        func_80003F18
       addiu     $4, $0, 0x3B
      lui        $4, %hi(func_80000AAC)
      jal        func_80003F00
       addiu     $4, $4, %lo(func_80000AAC)
.end func_800879AC

.globl func_800880CC
.ent func_800880CC
func_800880CC:
      jal        func_80003B90
       nop
      lui        $3, %hi(D_80137164)
      addiu      $2, $0, 0x1
      sb         $2, %lo(D_80137164)($3)
      addiu      $2, $0, 0x1
  .L800880E4:
      lw         $31, 0x384($29)
      lw         $30, 0x380($29)
      lw         $23, 0x37C($29)
      lw         $22, 0x378($29)
      lw         $21, 0x374($29)
      lw         $20, 0x370($29)
      lw         $19, 0x36C($29)
      lw         $18, 0x368($29)
      lw         $17, 0x364($29)
      lw         $16, 0x360($29)
      jr         $31
       addiu     $29, $29, 0x388
.end func_800880CC

.globl func_80088114
.ent func_80088114
func_80088114:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      lui        $16, %hi(D_800ED7DC)
      addiu      $16, $16, %lo(D_800ED7DC)
      sw         $31, 0x1C($29)
      jal        func_80051768
       sw        $18, 0x18($29)
      addu       $18, $2, $0
      addu       $4, $18, $0
      lui        $5, %hi(D_800F1494)
      addiu      $5, $5, %lo(D_800F1494)
      lui        $6, %hi(D_800F14A4)
      jal        func_80087918
       addiu     $6, $6, %lo(D_800F14A4)
      addu       $4, $18, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
      addu       $4, $18, $0
      lui        $5, %hi(D_800F14B8)
      addiu      $5, $5, %lo(D_800F14B8)
      jal        func_800517E4
       addiu     $6, $0, 0x6
      addu       $4, $18, $0
      jal        func_80051700
       addiu     $5, $0, 0x3D
      addu       $4, $17, $0
      addu       $5, $16, $0
      addu       $6, $18, $0
      jal        func_800875CC
       addu      $7, $0, $0
      beqz       $18, .L800881A4
       nop
      jal        func_800517B4
       addu      $4, $18, $0
  .L800881A4:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80088114

.globl func_800881BC
.ent func_800881BC
func_800881BC:
      addiu      $29, $29, -0x128
      sw         $19, 0x11C($29)
      addu       $19, $4, $0
      addiu      $4, $29, 0x10
      lui        $5, %hi(D_800F14C0)
      addiu      $5, $5, %lo(D_800F14C0)
      sw         $31, 0x120($29)
      sw         $18, 0x118($29)
      sw         $17, 0x114($29)
      jal        func_80016580
       sw        $16, 0x110($29)
      lui        $2, %hi(D_800ED7DC)
      jal        func_80051768
       addiu     $18, $2, %lo(D_800ED7DC)
      lui        $4, %hi(D_80137800)
      addiu      $3, $0, 0x1
      addu       $16, $2, $0
      jal        func_80003AF8
       sw        $3, %lo(D_80137800)($4)
      andi       $2, $2, 0xFF
      beqz       $2, .L80088228
       addu      $4, $16, $0
      lui        $5, %hi(D_800F14F4)
      addiu      $5, $5, %lo(D_800F14F4)
      lui        $6, %hi(D_800F1504)
      j          .L80088238
       addiu     $6, $6, %lo(D_800F1504)
  .L80088228:
      lui        $5, %hi(D_800F14F4)
      addiu      $5, $5, %lo(D_800F14F4)
      lui        $6, %hi(D_801335DC)
      addiu      $6, $6, %lo(D_801335DC)
  .L80088238:
      jal        func_80087918
       nop
      beqz       $2, .L80088250
       addu      $4, $16, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L80088250:
      jal        func_80003AF8
       nop
      andi       $2, $2, 0xFF
      beqz       $2, .L80088278
       addu      $4, $16, $0
      lui        $5, %hi(D_800F1510)
      addiu      $5, $5, %lo(D_800F1510)
      lui        $6, %hi(D_800F1504)
      j          .L80088288
       addiu     $6, $6, %lo(D_800F1504)
  .L80088278:
      lui        $5, %hi(D_800F1510)
      addiu      $5, $5, %lo(D_800F1510)
      lui        $6, %hi(D_8013360C)
      addiu      $6, $6, %lo(D_8013360C)
  .L80088288:
      jal        func_80087918
       nop
      beqz       $2, .L800882A0
       addu      $4, $16, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L800882A0:
      addu       $4, $16, $0
      lui        $5, %hi(D_800F151C)
      addiu      $5, $5, %lo(D_800F151C)
      lui        $2, %hi(D_80133AD5)
      addiu      $17, $2, %lo(D_80133AD5)
      jal        func_80087918
       addu      $6, $17, $0
      beqz       $2, .L800882CC
       addu      $4, $16, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L800882CC:
      addu       $4, $16, $0
      lui        $5, %hi(D_800F1528)
      addiu      $5, $5, %lo(D_800F1528)
      jal        func_80087918
       addiu     $6, $17, -0x610
      beqz       $2, .L800882F0
       addu      $4, $16, $0
      jal        func_80051700
       addiu     $5, $0, 0x26
  .L800882F0:
      lui        $2, %hi(D_800F153C)
      lbu        $3, -0x5FF($17)
      beqz       $3, .L8008830C
       addiu     $5, $2, %lo(D_800F153C)
      lui        $2, %hi(D_800F154C)
      j          .L80088314
       addiu     $6, $2, %lo(D_800F154C)
  .L8008830C:
      lui        $2, %hi(D_800F1550)
      addiu      $6, $2, %lo(D_800F1550)
  .L80088314:
      jal        func_80087918
       addu      $4, $16, $0
      addu       $4, $19, $0
      addu       $5, $18, $0
      addu       $6, $16, $0
      jal        func_800875CC
       addiu     $7, $29, 0x10
      beqz       $16, .L80088340
       nop
      jal        func_800517B4
       addu      $4, $16, $0
  .L80088340:
      lw         $31, 0x120($29)
      lw         $19, 0x11C($29)
      lw         $18, 0x118($29)
      lw         $17, 0x114($29)
      lw         $16, 0x110($29)
      jr         $31
       addiu     $29, $29, 0x128
.end func_800881BC

.globl func_8008835C
.ent func_8008835C
func_8008835C:
      addu       $18, $2, $0
      beqz       $18, .L800883B8
       addu      $4, $18, $0
      addu       $5, $19, $0
      jal        func_800196FC
       addiu     $6, $0, 0x2
      jal        func_800197D8
       addu      $4, $18, $0
      addu       $4, $18, $0
.end func_8008835C

.globl func_80088380
.ent func_80088380
func_80088380:
      addiu      $29, $29, -0x38
      sw         $16, 0x30($29)
      addu       $16, $5, $0
      lw         $2, 0x48($29)
      lw         $3, 0x4C($29)
      lw         $5, 0x50($29)
      lw         $8, 0x54($29)
      lw         $9, 0x58($29)
      lw         $10, 0x5C($29)
      lw         $11, 0x60($29)
      lw         $12, 0x64($29)
      sw         $31, 0x34($29)
      sw         $5, 0x18($29)
      addu       $5, $16, $0
  .L800883B8:
      sw         $2, 0x10($29)
      sw         $3, 0x14($29)
      sw         $8, 0x1C($29)
      sw         $9, 0x20($29)
      sw         $10, 0x24($29)
      sw         $11, 0x28($29)
      jal        func_8002E728
       sw        $12, 0x2C($29)
      bnez       $2, .L8008841C
       nop
      lw         $3, 0x14($16)
      addiu      $2, $0, 0x4
      sw         $2, 0x30($16)
      bnez       $3, .L80088400
       sw        $0, 0x68($16)
      lui        $2, %hi(func_800303CC)
      addiu      $2, $2, %lo(func_800303CC)
      sw         $2, 0x14($16)
  .L80088400:
      lw         $2, 0x18($16)
      bnez       $2, .L8008841C
       addu      $2, $0, $0
      lui        $2, %hi(func_800303CC)
      addiu      $2, $2, %lo(func_800303CC)
      sw         $2, 0x18($16)
      addu       $2, $0, $0
  .L8008841C:
      lw         $31, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80088380

.globl func_8008842C
.ent func_8008842C
func_8008842C:
      lw         $2, 0x68($4)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_8008842C

.globl func_8008843C
.ent func_8008843C
func_8008843C:
      sltiu      $2, $5, 0x2
      bnel       $2, $0, .L80088450
       sw        $5, 0x68($4)
      jr         $31
       addiu     $2, $0, 0xB
  .L80088450:
      jr         $31
       addu      $2, $0, $0
.end func_8008843C

.globl func_80088458
.ent func_80088458
func_80088458:
      jal        func_8005238C
       addu      $7, $0, $0
      addu       $4, $17, $0
      jal        func_80052200
       addiu     $5, $0, 0x3D
      beqz       $18, .L80088494
       addiu     $2, $0, 0x1
      jal        func_80018280
       addu      $4, $18, $0
      addu       $4, $17, $0
.end func_80088458

.globl func_80088480
.ent func_80088480
func_80088480:
      addiu      $29, $29, -0x78
      lw         $2, 0x8C($29)
      sw         $18, 0x58($29)
      lw         $18, 0xAC($29)
      sw         $20, 0x60($29)
  .L80088494:
      lw         $20, 0xB0($29)
      sw         $21, 0x64($29)
      lw         $21, 0xB4($29)
      sw         $17, 0x54($29)
      addu       $17, $4, $0
      sw         $16, 0x50($29)
      addu       $16, $5, $0
      sw         $22, 0x68($29)
      lw         $22, 0xB8($29)
      sw         $23, 0x6C($29)
      lw         $23, 0xC4($29)
      lw         $3, 0xC8($29)
      sw         $30, 0x70($29)
      addu       $30, $7, $0
      sw         $19, 0x5C($29)
      lw         $19, 0x88($29)
      addu       $7, $0, $0
      sw         $31, 0x74($29)
      sw         $0, 0x18($29)
      sw         $2, 0x10($29)
      sw         $23, 0x14($29)
      sw         $18, 0x1C($29)
      sw         $20, 0x20($29)
      sw         $21, 0x24($29)
      sw         $22, 0x28($29)
      jal        func_8002E728
       sw        $3, 0x2C($29)
      bnez       $2, .L80088618
       nop
      lw         $3, 0x14($16)
      addiu      $2, $0, 0xB
      sw         $2, 0x30($16)
      sw         $0, 0x68($16)
      bnez       $3, .L8008852C
       sw        $0, 0x6C($16)
      lui        $2, %hi(func_800318B4)
      addiu      $2, $2, %lo(func_800318B4)
      sw         $2, 0x14($16)
  .L8008852C:
      lw         $2, 0x18($16)
      bnez       $2, .L80088540
       lui       $2, %hi(func_800318B4)
      addiu      $2, $2, %lo(func_800318B4)
      sw         $2, 0x18($16)
  .L80088540:
      beqz       $19, .L80088550
       addu      $4, $16, $0
      jal        func_8002E888
       addu      $5, $19, $0
  .L80088550:
      lw         $2, 0x90($29)
      addu       $4, $17, $0
      sw         $2, 0x10($29)
      lw         $2, 0x94($29)
      addiu      $5, $16, 0x70
      sw         $2, 0x14($29)
      addu       $2, $20, $22
      sw         $2, 0x1C($29)
      lw         $2, 0xBC($29)
      addu       $6, $16, $0
      sw         $2, 0x24($29)
      lw         $2, 0xC0($29)
      addu       $7, $30, $0
      sw         $18, 0x18($29)
      sw         $21, 0x20($29)
      sw         $23, 0x2C($29)
      sw         $0, 0x30($29)
      jal        func_80088840
       sw        $2, 0x28($29)
      lw         $2, 0x98($29)
      sw         $2, 0x10($29)
      lw         $2, 0x9C($29)
      addu       $4, $17, $0
      sw         $2, 0x14($29)
      lw         $2, 0xA0($29)
      addiu      $5, $16, 0x30C
      sw         $2, 0x18($29)
      lw         $2, 0xA4($29)
      addu       $6, $16, $0
      sw         $2, 0x1C($29)
      lw         $2, 0xA8($29)
      addu       $7, $0, $0
      sw         $0, 0x24($29)
      sw         $0, 0x28($29)
      sw         $0, 0x2C($29)
      sw         $22, 0x3C($29)
      sw         $0, 0x40($29)
      sw         $0, 0x44($29)
      sw         $0, 0x48($29)
      sw         $0, 0x4C($29)
      sw         $2, 0x20($29)
      addiu      $2, $18, 0x4
      sw         $2, 0x30($29)
      addiu      $2, $20, 0x4
      sw         $2, 0x34($29)
      addiu      $2, $21, -0x19
      jal        func_80033C60
       sw        $2, 0x38($29)
      addu       $2, $0, $0
      sb         $0, 0x4CC($16)
  .L80088618:
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
.end func_80088480

.globl func_80088648
.ent func_80088648
func_80088648:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      addiu      $4, $16, 0x70
      addu       $5, $0, $0
      sw         $31, 0x24($29)
      jal        func_80088B14
       addiu     $6, $29, 0x18
      beqz       $2, .L8008867C
       nop
      sw         $0, 0x10($29)
      j          .L80088690
       sw        $0, 0x14($29)
  .L8008867C:
      lw         $2, 0x18($29)
      lw         $8, 0x38($2)
      lw         $9, 0x3C($2)
      sw         $8, 0x10($29)
      sw         $9, 0x14($29)
  .L80088690:
      lw         $5, 0x10($29)
      addiu      $16, $16, 0x30C
      jal        func_80034874
       addu      $4, $16, $0
      addu       $3, $2, $0
      bnez       $3, .L80088704
       addu      $4, $16, $0
      addu       $5, $0, $0
      addu       $6, $5, $0
      jal        func_80034930
       addiu     $7, $0, 0x1
      addu       $3, $2, $0
      bnez       $3, .L80088704
       addu      $4, $16, $0
      addiu      $5, $29, 0x10
      addu       $6, $0, $0
      jal        func_800346D8
       addiu     $7, $0, 0x1
      addu       $3, $2, $0
      bnez       $3, .L80088704
       addu      $2, $3, $0
      addu       $4, $16, $0
      addu       $5, $0, $0
      lw         $6, 0x10($29)
      jal        func_80034930
       addiu     $7, $0, 0x1
      addu       $3, $2, $0
      beql       $3, $0, .L80088704
       addu      $2, $0, $0
  .L80088704:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80088648

.globl func_80088714
.ent func_80088714
func_80088714:
      addiu      $4, $4, 0x70
      sw         $4, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_80088714

.globl func_80088724
.ent func_80088724
func_80088724:
      addiu      $4, $4, 0x30C
  .L80088728:
      sw         $4, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_80088724

.globl func_80088734
.ent func_80088734
func_80088734:
      lw         $2, 0x68($4)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_80088734

.globl func_80088744
.ent func_80088744
func_80088744:
      sltiu      $2, $5, 0x2
      bnel       $2, $0, .L80088758
       sw        $5, 0x68($4)
      jr         $31
       addiu     $2, $0, 0xB
  .L80088758:
      jr         $31
       addu      $2, $0, $0
.end func_80088744

.globl func_80088760
.ent func_80088760
func_80088760:
      swl        $11, 0xC($5)
      swr        $11, 0xF($5)
      addiu      $3, $3, 0x10
      bne        $3, $2, .L80088728
       addiu     $5, $5, 0x10
      j          .L800887AC
       addu      $4, $20, $0
      lw         $8, 0x0($3)
.end func_80088760

.globl func_80088780
.ent func_80088780
func_80088780:
      addiu      $29, $29, -0x40
      sw         $19, 0x34($29)
      addu       $19, $4, $0
      sw         $31, 0x3C($29)
      sw         $20, 0x38($29)
      sw         $18, 0x30($29)
      sw         $17, 0x2C($29)
      sw         $16, 0x28($29)
      lw         $2, 0x40($19)
      sw         $2, 0x18($29)
      lw         $2, 0x48($19)
  .L800887AC:
      addu       $20, $6, $0
      sw         $20, 0x24($29)
      addiu      $2, $2, -0x18
      sw         $2, 0x20($29)
      lw         $2, 0x0($5)
      beqz       $2, .L80088818
       addu      $17, $0, $0
      addu       $16, $5, $0
      addu       $18, $17, $0
  .L800887D0:
      lw         $4, 0x0($16)
      sw         $17, 0x6C($4)
      sw         $19, 0x4($4)
      lw         $2, 0x44($19)
      lw         $3, 0x24($29)
      addu       $2, $2, $18
      sw         $2, 0x1C($29)
      sw         $3, 0x10($29)
      lw         $5, 0x18($29)
      lw         $7, 0x20($29)
      jal        func_8002E92C
       addu      $6, $2, $0
      bnez       $2, .L80088820
       addiu     $16, $16, 0x4
      addu       $18, $18, $20
      lw         $2, 0x0($16)
      bnez       $2, .L800887D0
       addiu     $17, $17, 0x1
  .L80088818:
      sw         $17, 0x298($19)
      addu       $2, $0, $0
  .L80088820:
      lw         $31, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_80088780

.globl func_80088840
.ent func_80088840
func_80088840:
      addiu      $29, $29, -0x60
      lw         $9, 0x70($29)
      sw         $22, 0x50($29)
      lw         $22, 0x78($29)
      sw         $21, 0x4C($29)
      addu       $21, $4, $0
      sw         $16, 0x38($29)
      addu       $16, $5, $0
      sw         $23, 0x54($29)
      lw         $23, 0x7C($29)
      sw         $20, 0x48($29)
      lw         $20, 0x80($29)
      sw         $19, 0x44($29)
      addu       $19, $7, $0
      sw         $18, 0x40($29)
      lw         $18, 0x84($29)
      sw         $17, 0x3C($29)
      lw         $17, 0x88($29)
      lw         $3, 0x8C($29)
      lw         $8, 0x90($29)
      addiu      $2, $0, 0xA
      sw         $31, 0x58($29)
      sw         $2, 0x30($16)
      sw         $0, 0x18($29)
      sw         $9, 0x10($29)
      sw         $3, 0x14($29)
      sw         $22, 0x1C($29)
      sw         $23, 0x20($29)
      sw         $20, 0x24($29)
      sw         $18, 0x28($29)
      jal        func_8002E728
       sw        $8, 0x2C($29)
      bnez       $2, .L8008898C
       nop
      lw         $2, 0x14($16)
      bnez       $2, .L800888DC
       lui       $2, %hi(func_80031480)
      addiu      $2, $2, %lo(func_80031480)
      sw         $2, 0x14($16)
  .L800888DC:
      lw         $2, 0x18($16)
      bnez       $2, .L800888F4
       addu      $4, $16, $0
      lui        $2, %hi(func_80031480)
      addiu      $2, $2, %lo(func_80031480)
      sw         $2, 0x18($16)
  .L800888F4:
      addu       $5, $19, $0
      jal        func_80088780
       addu      $6, $17, $0
      div        $zero, $18, $17
      bnez       $17, .L80088910
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L80088910:
      addiu      $1, $0, -0x1
      bne        $17, $1, .L80088928
       lui       $1, (0x80000000 >> 16)
      bne        $18, $1, .L80088928
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L80088928:
      mflo       $8
      addu       $4, $21, $0
      addiu      $5, $16, 0x68
      addu       $6, $16, $0
      addu       $2, $22, $20
      lw         $7, 0x74($29)
      addiu      $2, $2, -0x15
      sw         $2, 0x18($29)
      addiu      $2, $23, 0x6
      sw         $2, 0x1C($29)
      addiu      $2, $0, 0xF
      sw         $2, 0x20($29)
      addiu      $2, $18, -0xB
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      sw         $2, 0x24($29)
      sw         $0, 0x28($29)
      lw         $3, 0x298($6)
      addiu      $2, $0, 0x1
      sw         $2, 0x30($29)
      sw         $0, 0x34($29)
      subu       $3, $3, $8
      jal        func_80089180
       sw        $3, 0x2C($29)
      addu       $2, $0, $0
  .L8008898C:
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
.end func_80088840

.globl func_800889B8
.ent func_800889B8
func_800889B8:
      addiu      $29, $29, -0x38
      sw         $16, 0x30($29)
      addu       $16, $5, $0
      lw         $2, 0x48($29)
      lw         $3, 0x4C($29)
      sw         $6, 0x10($29)
      addu       $6, $0, $0
      sw         $7, 0x14($29)
      addu       $7, $6, $0
      sw         $31, 0x34($29)
      sw         $0, 0x1C($29)
      sw         $0, 0x20($29)
      sw         $0, 0x24($29)
      sw         $0, 0x28($29)
      sw         $2, 0x18($29)
      jal        func_8002E728
       sw        $3, 0x2C($29)
      bnez       $2, .L80088A10
       addiu     $3, $0, 0xA
      addu       $2, $0, $0
      sw         $3, 0x30($16)
      sw         $0, 0x68($16)
  .L80088A10:
      lw         $31, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800889B8

.globl func_80088A20
.ent func_80088A20
func_80088A20:
      lw         $8, 0x6C($5)
      lw         $9, 0x298($4)
      slt        $2, $8, $9
      beqz       $2, .L80088A3C
       addu      $7, $0, $0
      bgez       $8, .L80088A4C
       andi      $3, $6, 0xFF
  .L80088A3C:
      jr         $31
       addiu     $2, $0, 0xB
  .L80088A44:
      jr         $31
       addiu     $2, $0, 0x16
  .L80088A4C:
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80088A8C
       slt       $2, $7, $9
      beqz       $2, .L80088A8C
       nop
  .L80088A60:
      lw         $3, 0x8($4)
      sll        $2, $7, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      beqz       $2, .L80088A44
       addiu     $7, $7, 0x1
      sw         $0, 0x68($2)
      lw         $2, 0x298($4)
      slt        $2, $7, $2
      bnez       $2, .L80088A60
       nop
  .L80088A8C:
      lw         $3, 0x68($5)
      addu       $2, $0, $0
      xori       $3, $3, 0x1
      sltu       $3, $2, $3
      jr         $31
       sw        $3, 0x68($5)
.end func_80088A20

.globl func_80088AA4
.ent func_80088AA4
func_80088AA4:
      lw         $2, 0x298($4)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_80088AA4

.globl func_80088AB4
.ent func_80088AB4
func_80088AB4:
      addiu      $2, $0, -0x1
      sw         $2, 0x0($6)
      lw         $2, 0x8($4)
      sll        $3, $5, 2
      addu       $2, $3, $2
      lw         $2, 0x0($2)
      beqz       $2, .L80088B0C
       addiu     $8, $0, 0x1
  .L80088AD4:
      lw         $7, 0x8($4)
      addu       $2, $3, $7
      lw         $2, 0x0($2)
      lw         $2, 0x68($2)
      bnel       $2, $8, .L80088AF8
       addiu     $5, $5, 0x1
      sw         $5, 0x0($6)
      jr         $31
       addu      $2, $0, $0
  .L80088AF8:
      sll        $3, $5, 2
      addu       $2, $3, $7
      lw         $2, 0x0($2)
      bnez       $2, .L80088AD4
       nop
  .L80088B0C:
      jr         $31
       addiu     $2, $0, 0xB
.end func_80088AB4

.globl func_80088B14
.ent func_80088B14
func_80088B14:
      sw         $0, 0x0($6)
      lw         $2, 0x8($4)
      sll        $3, $5, 2
      addu       $2, $3, $2
      lw         $2, 0x0($2)
      beqz       $2, .L80088B68
       addiu     $8, $0, 0x1
  .L80088B30:
      lw         $7, 0x8($4)
      addu       $2, $3, $7
      lw         $3, 0x0($2)
      lw         $2, 0x68($3)
      bne        $2, $8, .L80088B54
       addiu     $5, $5, 0x1
      sw         $3, 0x0($6)
      jr         $31
       addu      $2, $0, $0
  .L80088B54:
      sll        $3, $5, 2
      addu       $2, $3, $7
      lw         $2, 0x0($2)
      bnez       $2, .L80088B30
       nop
  .L80088B68:
      jr         $31
       addiu     $2, $0, 0xB
.end func_80088B14

.globl func_80088B70
.ent func_80088B70
func_80088B70:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      sw         $31, 0x1C($29)
      jal        func_8002E86C
       addu      $18, $6, $0
      addu       $3, $2, $0
      bnez       $3, .L80088BBC
       addu      $2, $3, $0
      addu       $4, $16, $0
      addu       $5, $17, $0
      jal        func_80088780
       addu      $6, $18, $0
      addu       $3, $2, $0
      beql       $3, $0, .L80088BBC
       addu      $2, $0, $0
  .L80088BBC:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80088B70

.globl func_80088BD4
.ent func_80088BD4
func_80088BD4:
      lw         $2, 0x68($4)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_80088BD4

.globl func_80088BE4
.ent func_80088BE4
func_80088BE4:
      sltiu      $2, $5, 0x2
      bnel       $2, $0, .L80088BF8
       sw        $5, 0x68($4)
      jr         $31
       addiu     $2, $0, 0xB
  .L80088BF8:
      jr         $31
       addu      $2, $0, $0
.end func_80088BE4

.globl func_80088C00
.ent func_80088C00
func_80088C00:
      lw         $2, 0x6C($4)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_80088C00

.globl func_80088C10
.ent func_80088C10
func_80088C10:
      addiu      $29, $29, -0x40
      sw         $18, 0x30($29)
      addu       $18, $4, $0
      sw         $31, 0x38($29)
      sw         $19, 0x34($29)
      sw         $17, 0x2C($29)
      sw         $16, 0x28($29)
      lw         $3, 0x8($18)
      lw         $2, 0x0($3)
      beqz       $2, .L80088CA4
       addu      $19, $5, $0
      addu       $16, $0, $0
      addu       $2, $16, $3
  .L80088C44:
      lw         $17, 0x0($2)
      addiu      $5, $29, 0x18
      jal        func_8002E904
       addu      $4, $17, $0
      bnez       $2, .L80088CA8
       addu      $4, $17, $0
      lw         $3, 0x24($29)
      mult       $19, $3
      lw         $2, 0x1C($29)
      mflo       $8
      addu       $2, $2, $8
      sw         $2, 0x1C($29)
      sw         $3, 0x10($29)
      lw         $5, 0x18($29)
      lw         $7, 0x20($29)
      jal        func_8002E92C
       addu      $6, $2, $0
      bnez       $2, .L80088CA8
       addiu     $16, $16, 0x4
      lw         $3, 0x8($18)
      addu       $2, $16, $3
      lw         $2, 0x0($2)
      bnez       $2, .L80088C44
       addu      $2, $16, $3
  .L80088CA4:
      addu       $2, $0, $0
  .L80088CA8:
      lw         $31, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_80088C10

.globl func_80088CC4
.ent func_80088CC4
func_80088CC4:
      addiu      $29, $29, -0x30
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $3, 0x8($18)
      addu       $21, $6, $0
      lw         $2, 0x0($3)
      beqz       $2, .L80088D54
       addu      $19, $7, $0
      addu       $16, $0, $0
      addu       $5, $20, $0
  .L80088D08:
      addu       $2, $16, $3
      lw         $17, 0x0($2)
      addu       $6, $21, $0
      jal        func_8002E400
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L80088D3C
       addu      $4, $18, $0
      addu       $5, $17, $0
      jal        func_80088A20
       andi      $6, $19, 0xFF
      j          .L80088D58
       addu      $2, $0, $0
  .L80088D3C:
      lw         $3, 0x8($18)
      addiu      $16, $16, 0x4
      addu       $2, $16, $3
      lw         $2, 0x0($2)
      bnez       $2, .L80088D08
       addu      $5, $20, $0
  .L80088D54:
      addiu      $2, $0, 0xB
  .L80088D58:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80088CC4

.globl func_80088D7C
.ent func_80088D7C
func_80088D7C:
      addiu      $5, $5, 0x2A90
.end func_80088D7C

.globl func_80088D80
.ent func_80088D80
func_80088D80:
      addiu      $29, $29, -0x38
      sw         $16, 0x30($29)
      addu       $16, $5, $0
      lw         $2, 0x48($29)
      lw         $3, 0x4C($29)
      lw         $5, 0x50($29)
      lw         $8, 0x54($29)
      lw         $9, 0x58($29)
      lw         $10, 0x5C($29)
      lw         $11, 0x60($29)
      lw         $12, 0x64($29)
      sw         $31, 0x34($29)
      sw         $5, 0x18($29)
      addu       $5, $16, $0
      sw         $2, 0x10($29)
      sw         $3, 0x14($29)
      sw         $8, 0x1C($29)
      sw         $9, 0x20($29)
      sw         $10, 0x24($29)
      sw         $11, 0x28($29)
      jal        func_8002E728
       sw        $12, 0x2C($29)
      bnez       $2, .L80088E18
       nop
      lw         $3, 0x14($16)
      addiu      $2, $0, 0x3
      bnez       $3, .L80088DFC
       sw        $2, 0x30($16)
      lui        $2, %hi(func_80030060)
      addiu      $2, $2, %lo(func_80030060)
      sw         $2, 0x14($16)
  .L80088DFC:
      lw         $2, 0x18($16)
      bnez       $2, .L80088E18
       addu      $2, $0, $0
      lui        $2, %hi(func_80030060)
      addiu      $2, $2, %lo(func_80030060)
      sw         $2, 0x18($16)
      addu       $2, $0, $0
  .L80088E18:
      lw         $31, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80088D80

.globl func_80088E28
.ent func_80088E28
func_80088E28:
      jal        func_800880CC
       addiu     $7, $29, 0x10
      beqz       $16, func_80088E40
       nop
      jal        func_800522B4
       addu      $4, $16, $0
.end func_80088E28

.globl func_80088E40
.ent func_80088E40
func_80088E40:
      lw         $2, 0x0($5)
      beqz       $2, .L80088E7C
       addu      $7, $0, $0
      addiu      $8, $0, 0x5
      addu       $6, $5, $0
  .L80088E54:
      lw         $3, 0x0($6)
      lw         $2, 0x30($3)
      bne        $2, $8, .L80088E94
       addiu     $6, $6, 0x4
      sw         $0, 0x68($3)
      sw         $7, 0x6C($3)
      sw         $4, 0x4($3)
      lw         $2, 0x0($6)
      bnez       $2, .L80088E54
       addiu     $7, $7, 0x1
  .L80088E7C:
      sw         $7, 0x68($4)
      lw         $5, 0x0($5)
      bnez       $5, .L80088E9C
       addiu     $2, $0, 0x1
      jr         $31
       addiu     $2, $0, 0x16
  .L80088E94:
      jr         $31
       addiu     $2, $0, 0x1B
  .L80088E9C:
      sw         $2, 0x68($5)
      jr         $31
       addu      $2, $0, $0
.end func_80088E40

.globl func_80088EA8
.ent func_80088EA8
func_80088EA8:
      addiu      $29, $29, -0x38
      sw         $16, 0x30($29)
      addu       $16, $5, $0
      lw         $2, 0x48($29)
      lw         $3, 0x4C($29)
      lw         $5, 0x50($29)
      lw         $8, 0x54($29)
      lw         $9, 0x58($29)
      lw         $10, 0x5C($29)
      lw         $11, 0x60($29)
      lw         $12, 0x64($29)
      sw         $31, 0x34($29)
      sw         $5, 0x18($29)
      addu       $5, $16, $0
      sw         $2, 0x10($29)
      sw         $3, 0x14($29)
      sw         $8, 0x1C($29)
      sw         $9, 0x20($29)
      sw         $10, 0x24($29)
      sw         $11, 0x28($29)
      jal        func_8002E728
       sw        $12, 0x2C($29)
      bnez       $2, .L80088F44
       nop
      lw         $3, 0x14($16)
      addiu      $2, $0, 0x5
      sw         $2, 0x30($16)
      bnez       $3, .L80088F28
       sw        $0, 0x68($16)
      lui        $2, %hi(func_80030668)
      addiu      $2, $2, %lo(func_80030668)
      sw         $2, 0x14($16)
  .L80088F28:
      lw         $2, 0x18($16)
      bnez       $2, .L80088F44
       addu      $2, $0, $0
      lui        $2, %hi(func_80030668)
      addiu      $2, $2, %lo(func_80030668)
      sw         $2, 0x18($16)
      addu       $2, $0, $0
  .L80088F44:
      lw         $31, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80088EA8

.globl func_80088F54
.ent func_80088F54
func_80088F54:
      lw         $2, 0x68($4)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_80088F54

.globl func_80088F64
.ent func_80088F64
func_80088F64:
      sltiu      $2, $5, 0x2
      bnel       $2, $0, .L80088F78
       sw        $5, 0x68($4)
      jr         $31
       addiu     $2, $0, 0xB
  .L80088F78:
      jr         $31
       addu      $2, $0, $0
.end func_80088F64

.globl func_80088F80
.ent func_80088F80
func_80088F80:
      lw         $2, 0x6C($4)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_80088F80

.globl func_80088F90
.ent func_80088F90
func_80088F90:
      addiu      $29, $29, -0x40
      sw         $16, 0x30($29)
      addu       $16, $5, $0
      sw         $17, 0x34($29)
      addu       $17, $7, $0
      lw         $2, 0x50($29)
      lw         $3, 0x54($29)
      lw         $8, 0x58($29)
      lw         $9, 0x5C($29)
      lw         $10, 0x60($29)
      lw         $11, 0x64($29)
      lw         $12, 0x68($29)
      lw         $13, 0x6C($29)
      sw         $31, 0x38($29)
      sw         $2, 0x10($29)
      sw         $3, 0x14($29)
      sw         $8, 0x18($29)
      sw         $9, 0x1C($29)
      sw         $10, 0x20($29)
      sw         $11, 0x24($29)
      sw         $12, 0x28($29)
      jal        func_8002E728
       sw        $13, 0x2C($29)
      bnez       $2, .L80089040
       addu      $4, $16, $0
      addiu      $2, $0, 0x6
      sw         $2, 0x30($16)
      jal        func_80088E40
       addu      $5, $17, $0
      bnez       $2, .L80089040
       nop
      lw         $2, 0x14($16)
      bnez       $2, .L80089024
       sw        $0, 0x6C($16)
      lui        $2, %hi(func_80030848)
      addiu      $2, $2, %lo(func_80030848)
      sw         $2, 0x14($16)
  .L80089024:
      lw         $2, 0x18($16)
      bnez       $2, .L80089040
       addu      $2, $0, $0
      lui        $2, %hi(func_80030848)
      addiu      $2, $2, %lo(func_80030848)
      sw         $2, 0x18($16)
      addu       $2, $0, $0
  .L80089040:
      lw         $31, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_80088F90

.globl func_80089054
.ent func_80089054
func_80089054:
      lw         $2, 0x68($4)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_80089054

.globl func_80089064
.ent func_80089064
func_80089064:
      lw         $2, 0x6C($4)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_80089064

.globl func_80089074
.ent func_80089074
func_80089074:
      lw         $2, 0x6C($4)
      lw         $3, 0x8($4)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_80089074

.globl func_80089094
.ent func_80089094
func_80089094:
      lw         $2, 0x68($4)
      blez       $2, .L800890CC
       addu      $6, $0, $0
  .L800890A0:
      lw         $3, 0x8($4)
      sll        $2, $6, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      beqz       $2, .L800890F8
       addiu     $6, $6, 0x1
      sw         $0, 0x68($2)
      lw         $2, 0x68($4)
      slt        $2, $6, $2
      bnez       $2, .L800890A0
       nop
  .L800890CC:
      lw         $2, 0x6C($5)
      lw         $3, 0x8($4)
      sw         $2, 0x6C($4)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $3, 0x0($2)
      beqz       $3, .L80089100
       addiu     $2, $0, 0x1
      sw         $2, 0x68($3)
      jr         $31
       addu      $2, $0, $0
  .L800890F8:
      jr         $31
       addiu     $2, $0, 0x16
  .L80089100:
      jr         $31
       addiu     $2, $0, 0x16
.end func_80089094

.globl func_80089108
.ent func_80089108
func_80089108:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      sw         $31, 0x18($29)
      jal        func_8002E86C
       addu      $17, $5, $0
      addu       $3, $2, $0
      bnez       $3, .L80089148
       addu      $2, $3, $0
      addu       $4, $16, $0
      jal        func_80088E40
       addu      $5, $17, $0
      addu       $3, $2, $0
      beql       $3, $0, .L80089148
       addu      $2, $0, $0
  .L80089148:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80089108

.globl func_8008915C
.ent func_8008915C
func_8008915C:
      sw         $31, 0x24($29)
      jal        func_80089614
       addiu     $6, $29, 0x18
      beqz       $2, .L8008917C
       nop
      sw         $0, 0x10($29)
      j          .L80089190
       sw        $0, 0x14($29)
  .L8008917C:
      lw         $2, 0x18($29)
.end func_8008915C

.globl func_80089180
.ent func_80089180
func_80089180:
      addiu      $29, $29, -0x78
      sw         $23, 0x6C($29)
      lw         $23, 0xA0($29)
      sw         $30, 0x70($29)
  .L80089190:
      lw         $30, 0xA4($29)
      sw         $17, 0x54($29)
      lw         $17, 0x88($29)
      sw         $21, 0x64($29)
      lw         $21, 0x90($29)
      sw         $22, 0x68($29)
      lw         $22, 0x94($29)
      sw         $18, 0x58($29)
      lw         $18, 0x98($29)
      sw         $19, 0x5C($29)
      lw         $19, 0x9C($29)
      lw         $3, 0xAC($29)
      sw         $20, 0x60($29)
      addu       $20, $4, $0
      sw         $16, 0x50($29)
      addu       $16, $5, $0
      sw         $31, 0x74($29)
      sw         $6, 0x80($29)
      slt        $2, $30, $23
      bnez       $2, .L800891F8
       sw        $7, 0x84($29)
      lw         $8, 0xA8($29)
      subu       $2, $30, $23
      slt        $2, $2, $8
      beql       $2, $0, .L80089200
       sw        $0, 0x3C($29)
  .L800891F8:
      j          .L80089670
       addiu     $2, $0, 0xB
  .L80089200:
      sw         $0, 0x40($29)
      sw         $0, 0x48($29)
      beqz       $17, .L8008922C
       sw        $0, 0x44($29)
      lw         $2, 0x0($17)
      sw         $2, 0x30($29)
      lw         $2, 0x4($17)
      sw         $2, 0x34($29)
      lw         $2, 0x4($17)
      j          .L80089238
       sw        $2, 0x38($29)
  .L8008922C:
      sw         $0, 0x30($29)
      sw         $0, 0x34($29)
      sw         $0, 0x38($29)
  .L80089238:
      slt        $2, $19, $18
      bnez       $2, .L8008924C
       addiu     $2, $0, 0x1
      j          .L80089250
       sw        $0, 0x22C($16)
  .L8008924C:
      sw         $2, 0x22C($16)
  .L80089250:
      lw         $2, 0x22C($16)
      bnez       $2, .L8008929C
       addu      $4, $20, $0
      addiu      $5, $16, 0x68
      addu       $6, $16, $0
      addu       $7, $0, $0
      addiu      $2, $29, 0x30
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x1
      sw         $2, 0x14($29)
      addu       $2, $22, $18
      sw         $2, 0x20($29)
      sll        $2, $18, 1
      subu       $2, $19, $2
      sw         $0, 0x18($29)
      sw         $21, 0x1C($29)
      sw         $18, 0x24($29)
      j          .L800892D8
       sw        $2, 0x28($29)
  .L8008929C:
      addiu      $5, $16, 0x68
      addu       $6, $16, $0
      addu       $7, $0, $0
      addiu      $2, $29, 0x30
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x1
      sw         $2, 0x14($29)
      addu       $2, $21, $19
      sw         $2, 0x1C($29)
      sll        $2, $19, 1
      subu       $2, $18, $2
      sw         $0, 0x18($29)
      sw         $22, 0x20($29)
      sw         $2, 0x24($29)
      sw         $19, 0x28($29)
  .L800892D8:
      jal        func_8002E728
       sw        $3, 0x2C($29)
      bnez       $2, .L80089670
       nop
      lw         $3, 0x7C($16)
      addiu      $2, $0, 0x7
      bnez       $3, .L80089304
       sw        $2, 0x98($16)
      lui        $2, %hi(func_80030D04)
      addiu      $2, $2, %lo(func_80030D04)
      sw         $2, 0x7C($16)
  .L80089304:
      lw         $2, 0x80($16)
      bnez       $2, .L80089318
       lui       $2, %hi(func_80030D04)
      addiu      $2, $2, %lo(func_80030D04)
      sw         $2, 0x80($16)
  .L80089318:
      beql       $17, $0, .L8008933C
       sw        $0, 0x30($29)
      lw         $2, 0x8($17)
      sw         $2, 0x30($29)
      lw         $2, 0xC($17)
      sw         $2, 0x34($29)
      lw         $2, 0xC($17)
      j          .L80089344
       sw        $2, 0x38($29)
  .L8008933C:
      sw         $0, 0x34($29)
      sw         $0, 0x38($29)
  .L80089344:
      lw         $2, 0x22C($16)
      bnez       $2, .L80089384
       addu      $4, $20, $0
      addiu      $5, $16, 0xD0
      addu       $6, $16, $0
      addu       $7, $0, $0
      addiu      $2, $29, 0x30
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x2
      sw         $2, 0x14($29)
      sw         $0, 0x18($29)
      sw         $21, 0x1C($29)
      sw         $22, 0x20($29)
      sw         $18, 0x24($29)
      j          .L800893B4
       sw        $18, 0x28($29)
  .L80089384:
      addiu      $5, $16, 0xD0
      addu       $6, $16, $0
      addu       $7, $0, $0
      addiu      $2, $29, 0x30
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x2
      sw         $2, 0x14($29)
      sw         $0, 0x18($29)
      sw         $21, 0x1C($29)
      sw         $22, 0x20($29)
      sw         $19, 0x24($29)
      sw         $19, 0x28($29)
  .L800893B4:
      jal        func_8002E728
       sw        $0, 0x2C($29)
      bnez       $2, .L80089670
       nop
      lw         $3, 0xE4($16)
      addiu      $2, $0, 0x7
      bnez       $3, .L800893E0
       sw        $2, 0x100($16)
      lui        $2, %hi(func_80030E18)
      addiu      $2, $2, %lo(func_80030E18)
      sw         $2, 0xE4($16)
  .L800893E0:
      lw         $2, 0xE8($16)
      bnez       $2, .L800893F4
       lui       $2, %hi(func_80030E18)
      addiu      $2, $2, %lo(func_80030E18)
      sw         $2, 0xE8($16)
  .L800893F4:
      beql       $17, $0, .L80089418
       sw        $0, 0x30($29)
      lw         $2, 0x10($17)
      sw         $2, 0x30($29)
      lw         $2, 0x14($17)
      sw         $2, 0x34($29)
      lw         $2, 0x14($17)
      j          .L80089420
       sw        $2, 0x38($29)
  .L80089418:
      sw         $0, 0x34($29)
      sw         $0, 0x38($29)
  .L80089420:
      lw         $2, 0x22C($16)
      bnez       $2, .L80089468
       addu      $4, $20, $0
      addiu      $5, $16, 0x138
      addu       $6, $16, $0
      addu       $7, $0, $0
      addiu      $2, $29, 0x30
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x3
      sw         $2, 0x14($29)
      addu       $2, $22, $19
      subu       $2, $2, $18
      sw         $0, 0x18($29)
      sw         $21, 0x1C($29)
      sw         $2, 0x20($29)
      sw         $18, 0x24($29)
      j          .L800894A0
       sw        $18, 0x28($29)
  .L80089468:
      addiu      $5, $16, 0x138
      addu       $6, $16, $0
      addu       $7, $0, $0
      addiu      $2, $29, 0x30
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x3
      sw         $2, 0x14($29)
      addu       $2, $21, $18
      subu       $2, $2, $19
      sw         $0, 0x18($29)
      sw         $2, 0x1C($29)
      sw         $22, 0x20($29)
      sw         $19, 0x24($29)
      sw         $19, 0x28($29)
  .L800894A0:
      jal        func_8002E728
       sw        $0, 0x2C($29)
      bnez       $2, .L80089670
       nop
      lw         $3, 0x14C($16)
      addiu      $2, $0, 0x7
      bnez       $3, .L800894CC
       sw        $2, 0x168($16)
      lui        $2, %hi(func_80031010)
      addiu      $2, $2, %lo(func_80031010)
      sw         $2, 0x14C($16)
  .L800894CC:
      lw         $2, 0x150($16)
      bnez       $2, .L800894E0
       lui       $2, %hi(func_80031010)
      addiu      $2, $2, %lo(func_80031010)
      sw         $2, 0x150($16)
  .L800894E0:
      beql       $17, $0, .L80089504
       sw        $0, 0x30($29)
      lw         $2, 0x18($17)
      sw         $2, 0x30($29)
      lw         $2, 0x1C($17)
      sw         $2, 0x34($29)
      lw         $2, 0x1C($17)
      j          .L8008950C
       sw        $2, 0x38($29)
  .L80089504:
      sw         $0, 0x34($29)
      sw         $0, 0x38($29)
  .L8008950C:
      lw         $2, 0x22C($16)
      bnez       $2, .L80089550
       addu      $4, $20, $0
      addiu      $5, $16, 0x1A0
      addu       $6, $16, $0
      addu       $7, $0, $0
      addiu      $2, $29, 0x30
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x4
      sw         $2, 0x14($29)
      addu       $2, $22, $18
      sw         $0, 0x18($29)
      sw         $21, 0x1C($29)
      sw         $2, 0x20($29)
      sw         $18, 0x24($29)
      j          .L80089584
       sw        $18, 0x28($29)
  .L80089550:
      addiu      $5, $16, 0x1A0
      addu       $6, $16, $0
      addu       $7, $0, $0
      addiu      $2, $29, 0x30
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x4
      sw         $2, 0x14($29)
      addu       $2, $21, $19
      sw         $0, 0x18($29)
      sw         $2, 0x1C($29)
      sw         $22, 0x20($29)
      sw         $19, 0x24($29)
      sw         $19, 0x28($29)
  .L80089584:
      jal        func_8002E728
       sw        $0, 0x2C($29)
      bnez       $2, .L80089670
       addiu     $17, $0, 0x7
      lw         $2, 0x1B4($16)
      bnez       $2, .L800895AC
       sw        $17, 0x1D0($16)
      lui        $2, %hi(func_80031208)
      addiu      $2, $2, %lo(func_80031208)
      sw         $2, 0x1B4($16)
  .L800895AC:
      lw         $2, 0x1B8($16)
      bnez       $2, .L800895C4
       addu      $4, $20, $0
      lui        $2, %hi(func_80031208)
      addiu      $2, $2, %lo(func_80031208)
      sw         $2, 0x1B8($16)
  .L800895C4:
      addu       $5, $16, $0
      lw         $6, 0x80($29)
      lw         $8, 0x84($29)
      addiu      $2, $16, 0x68
      sw         $2, 0x208($16)
      addiu      $2, $16, 0xD0
      sw         $2, 0x20C($16)
      addiu      $2, $16, 0x138
      sw         $2, 0x210($16)
      addiu      $2, $16, 0x1A0
      sw         $2, 0x214($16)
      sw         $0, 0x218($16)
      lw         $2, 0x8C($29)
      addiu      $7, $16, 0x208
      sw         $0, 0x18($29)
      sw         $21, 0x1C($29)
      sw         $22, 0x20($29)
      sw         $18, 0x24($29)
      sw         $19, 0x28($29)
      sw         $0, 0x2C($29)
.end func_80089180

.globl func_80089614
.ent func_80089614
func_80089614:
      sw         $8, 0x10($29)
      jal        func_8002E728
       sw        $2, 0x14($29)
      bnez       $2, .L80089670
       nop
      lw         $2, 0x14($16)
      bnez       $2, .L80089640
       sw        $17, 0x30($16)
      lui        $2, %hi(func_80030BB8)
      addiu      $2, $2, %lo(func_80030BB8)
      sw         $2, 0x14($16)
  .L80089640:
      lw         $2, 0x18($16)
      bnel       $2, $0, .L8008965C
       sw        $23, 0x220($16)
      lui        $2, %hi(func_80030BB8)
      addiu      $2, $2, %lo(func_80030BB8)
      sw         $2, 0x18($16)
      sw         $23, 0x220($16)
  .L8008965C:
      sw         $30, 0x224($16)
      lw         $8, 0xA8($29)
      addu       $2, $0, $0
      sw         $8, 0x228($16)
      sw         $23, 0x21C($16)
  .L80089670:
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
.end func_80089614

.globl func_800896A0
.ent func_800896A0
func_800896A0:
      lw         $2, 0x21C($4)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_800896A0

.globl func_800896B0
.ent func_800896B0
func_800896B0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x220($4)
      slt        $2, $5, $2
      bnez       $2, .L800896EC
       addiu     $2, $0, 0xB
      lw         $2, 0x224($4)
      slt        $2, $2, $5
      bnez       $2, .L800896EC
       addiu     $2, $0, 0xB
      jal        func_800896F8
       sw        $5, 0x21C($4)
      addu       $3, $2, $0
      beql       $3, $0, .L800896EC
       addu      $2, $0, $0
  .L800896EC:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800896B0

.globl func_800896F8
.ent func_800896F8
func_800896F8:
      addiu      $29, $29, -0x40
      sw         $16, 0x38($29)
      addu       $16, $4, $0
      addiu      $5, $29, 0x28
      sw         $31, 0x3C($29)
      jal        func_80089C40
       addiu     $6, $0, 0x1
      lw         $3, 0x28($29)
      beqz       $3, .L800898A4
       addu      $4, $2, $0
      addu       $4, $16, $0
      addiu      $5, $29, 0x2C
      jal        func_80089C40
       addiu     $6, $0, 0x4
      lw         $3, 0x2C($29)
      beqz       $3, .L800898A4
       addu      $4, $2, $0
      addu       $4, $16, $0
      jal        func_8008994C
       addiu     $5, $29, 0x30
      addu       $4, $2, $0
      bnez       $4, .L800898A4
       addu      $4, $16, $0
      jal        func_800896A0
       addiu     $5, $29, 0x34
      addu       $4, $2, $0
      bnez       $4, .L800898A4
       nop
      lw         $4, 0x2C($29)
      jal        func_8002E904
       addiu     $5, $29, 0x18
      addu       $4, $2, $0
      bnez       $4, .L800898A4
       nop
      lw         $7, 0x224($16)
      lw         $6, 0x220($16)
      bne        $7, $6, .L800897A0
       nop
      lw         $2, 0x28($29)
      lw         $2, 0x44($2)
      j          .L80089878
       sw        $2, 0x18($29)
  .L800897A0:
      lw         $3, 0x30($29)
      bnez       $3, .L80089810
       addiu     $2, $0, 0x1
      lw         $5, 0x28($29)
      lw         $3, 0x2C($29)
      lw         $2, 0x4C($5)
      lw         $3, 0x4C($3)
      lw         $4, 0x34($29)
      subu       $2, $2, $3
      mult       $2, $4
      mflo       $9
      subu       $3, $7, $6
      nop
      div        $zero, $9, $3
      bnez       $3, .L800897E4
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800897E4:
      addiu      $1, $0, -0x1
      bne        $3, $1, .L800897FC
       lui       $1, (0x80000000 >> 16)
      bne        $9, $1, .L800897FC
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L800897FC:
      mflo       $3
      lw         $2, 0x44($5)
      addu       $2, $2, $3
      j          .L80089878
       sw        $2, 0x1C($29)
  .L80089810:
      bne        $3, $2, .L800898A4
       addu      $2, $0, $0
      lw         $5, 0x28($29)
      lw         $3, 0x2C($29)
      lw         $2, 0x48($5)
      lw         $3, 0x48($3)
      lw         $4, 0x34($29)
      subu       $2, $2, $3
      mult       $2, $4
      mflo       $9
      subu       $3, $7, $6
      nop
      div        $zero, $9, $3
      bnez       $3, .L80089850
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L80089850:
      addiu      $1, $0, -0x1
      bne        $3, $1, .L80089868
       lui       $1, (0x80000000 >> 16)
      bne        $9, $1, .L80089868
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L80089868:
      mflo       $3
      lw         $2, 0x40($5)
      addu       $2, $2, $3
      sw         $2, 0x18($29)
  .L80089878:
      lw         $2, 0x24($29)
      lw         $4, 0x2C($29)
      sw         $2, 0x10($29)
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      lw         $7, 0x20($29)
      jal        func_8002E92C
       nop
      addu       $4, $2, $0
      beql       $4, $0, .L800898A4
       addu      $2, $0, $0
  .L800898A4:
      lw         $31, 0x3C($29)
      lw         $16, 0x38($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800896F8

.globl func_800898B4
.ent func_800898B4
func_800898B4:
      lw         $2, 0x220($4)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_800898B4

.globl func_800898C4
.ent func_800898C4
func_800898C4:
      lw         $2, 0x224($4)
      slt        $2, $2, $5
      beql       $2, $0, .L800898DC
       sw        $5, 0x220($4)
      jr         $31
       addiu     $2, $0, 0xB
  .L800898DC:
      jr         $31
       addu      $2, $0, $0
.end func_800898C4

.globl func_800898E4
.ent func_800898E4
func_800898E4:
      lw         $2, 0x224($4)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_800898E4

.globl func_800898F4
.ent func_800898F4
func_800898F4:
      lw         $2, 0x220($4)
      slt        $2, $5, $2
      beql       $2, $0, .L8008990C
       sw        $5, 0x224($4)
      jr         $31
       addiu     $2, $0, 0xB
  .L8008990C:
      jr         $31
       addu      $2, $0, $0
.end func_800898F4

.globl func_80089914
.ent func_80089914
func_80089914:
      lw         $2, 0x228($4)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_80089914

.globl func_80089924
.ent func_80089924
func_80089924:
      lw         $2, 0x224($4)
      lw         $3, 0x220($4)
      subu       $2, $2, $3
      slt        $2, $2, $5
      beql       $2, $0, .L80089944
       sw        $5, 0x228($4)
      jr         $31
       addiu     $2, $0, 0xB
  .L80089944:
      jr         $31
       addu      $2, $0, $0
.end func_80089924

.globl func_8008994C
.ent func_8008994C
func_8008994C:
      lw         $2, 0x22C($4)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_8008994C

.globl func_8008995C
.ent func_8008995C
func_8008995C:
      addiu      $29, $29, -0x38
      sw         $17, 0x2C($29)
      addu       $17, $4, $0
      sw         $31, 0x34($29)
      sw         $18, 0x30($29)
      sw         $16, 0x28($29)
      lw         $2, 0x22C($17)
      addu       $18, $5, $0
      beq        $2, $18, .L80089C24
       sltiu     $2, $18, 0x2
      bnel       $2, $0, .L80089994
       sw        $18, 0x22C($17)
      j          .L80089C28
       addiu     $2, $0, 0xB
  .L80089994:
      addu       $4, $17, $0
      jal        func_8002E904
       addiu     $5, $29, 0x18
      addu       $3, $2, $0
      bnez       $3, .L80089C28
       nop
      lw         $2, 0x24($29)
      lw         $3, 0x20($29)
      addu       $4, $17, $0
      sw         $2, 0x20($29)
      sw         $3, 0x24($29)
      sw         $3, 0x10($29)
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      jal        func_8002E92C
       addu      $7, $2, $0
      addu       $3, $2, $0
      bnez       $3, .L80089C28
       nop
      addiu      $2, $0, 0x1
      bne        $18, $2, .L800899F8
       nop
      lw         $16, 0x48($17)
      j          .L800899FC
       nop
  .L800899F8:
      lw         $16, 0x4C($17)
  .L800899FC:
      bnez       $18, .L80089B14
       addiu     $4, $17, 0xD0
      sw         $16, 0x24($29)
      sw         $16, 0x10($29)
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      lw         $7, 0x20($29)
      jal        func_8002E92C
       addiu     $4, $17, 0xD0
      addu       $3, $2, $0
      bnez       $3, .L80089C28
       nop
      addu       $4, $17, $0
      jal        func_8002E904
       addiu     $5, $29, 0x18
      addu       $3, $2, $0
      bnez       $3, .L80089C28
       nop
      lw         $2, 0x1C($29)
      lw         $3, 0x24($29)
      addiu      $4, $17, 0x138
      addu       $2, $2, $3
      subu       $2, $2, $16
      sw         $2, 0x1C($29)
      sw         $3, 0x10($29)
      lw         $5, 0x18($29)
      lw         $7, 0x20($29)
      jal        func_8002E92C
       addu      $6, $2, $0
      addu       $3, $2, $0
      bnez       $3, .L80089C28
       nop
      lw         $2, 0x24($29)
      sw         $2, 0x10($29)
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      lw         $7, 0x20($29)
      jal        func_8002E92C
       addiu     $4, $17, 0x1A0
      addu       $3, $2, $0
      bnez       $3, .L80089C28
       nop
      jal        func_800896F8
       addu      $4, $17, $0
      addu       $3, $2, $0
      bnez       $3, .L80089C28
       nop
      addu       $4, $17, $0
      jal        func_8002E904
       addiu     $5, $29, 0x18
      addu       $3, $2, $0
      bnez       $3, .L80089C28
       sll       $3, $16, 1
      lw         $2, 0x1C($29)
      addu       $2, $2, $16
      sw         $2, 0x1C($29)
      lw         $2, 0x24($29)
      subu       $2, $2, $3
      sw         $2, 0x24($29)
      sw         $2, 0x10($29)
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      lw         $7, 0x20($29)
      jal        func_8002E92C
       addiu     $4, $17, 0x68
      addu       $3, $2, $0
      beql       $3, $0, .L80089C28
       addu      $2, $0, $0
      j          .L80089C28
       nop
  .L80089B14:
      lw         $2, 0x24($29)
      sw         $16, 0x20($29)
      sw         $2, 0x10($29)
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      jal        func_8002E92C
       addu      $7, $16, $0
      addu       $3, $2, $0
      bnez       $3, .L80089C28
       nop
      addu       $4, $17, $0
      jal        func_8002E904
       addiu     $5, $29, 0x18
      addu       $3, $2, $0
      bnez       $3, .L80089C28
       nop
      lw         $2, 0x18($29)
      lw         $3, 0x20($29)
      addiu      $4, $17, 0x138
      addu       $2, $2, $3
      lw         $3, 0x24($29)
      subu       $2, $2, $16
      sw         $2, 0x18($29)
      sw         $3, 0x10($29)
      lw         $6, 0x1C($29)
      lw         $7, 0x20($29)
      jal        func_8002E92C
       addu      $5, $2, $0
      addu       $3, $2, $0
      bnez       $3, .L80089C28
       nop
      lw         $2, 0x24($29)
      sw         $2, 0x10($29)
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      lw         $7, 0x20($29)
      jal        func_8002E92C
       addiu     $4, $17, 0x1A0
      addu       $3, $2, $0
      bnez       $3, .L80089C28
       nop
      jal        func_800896F8
       addu      $4, $17, $0
      addu       $3, $2, $0
      bnez       $3, .L80089C28
       nop
      addu       $4, $17, $0
      jal        func_8002E904
       addiu     $5, $29, 0x18
      addu       $3, $2, $0
      bnez       $3, .L80089C28
       sll       $3, $16, 1
      lw         $2, 0x18($29)
      addu       $2, $2, $16
      sw         $2, 0x18($29)
      lw         $2, 0x20($29)
      lw         $4, 0x24($29)
      subu       $2, $2, $3
      sw         $2, 0x20($29)
      sw         $4, 0x10($29)
      addu       $7, $2, $0
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      jal        func_8002E92C
       addiu     $4, $17, 0x68
      addu       $3, $2, $0
      bnez       $3, .L80089C28
       nop
  .L80089C24:
      addu       $2, $0, $0
  .L80089C28:
      lw         $31, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8008995C

.globl func_80089C40
.ent func_80089C40
func_80089C40:
      addiu      $2, $0, 0x2
      beq        $6, $2, .L80089C90
       sltiu     $2, $6, 0x3
      beqz       $2, .L80089C64
       addiu     $2, $0, 0x1
      beq        $6, $2, .L80089C80
       addiu     $2, $0, 0xB
      j          .L80089CC0
       nop
  .L80089C64:
      addiu      $2, $0, 0x3
      beq        $6, $2, .L80089CA0
       addiu     $2, $0, 0x4
      beq        $6, $2, .L80089CB0
       addiu     $2, $0, 0xB
      j          .L80089CC0
       nop
  .L80089C80:
      lw         $2, 0x8($4)
      lw         $2, 0x0($2)
      j          .L80089CBC
       sw        $2, 0x0($5)
  .L80089C90:
      lw         $2, 0x8($4)
      lw         $2, 0x4($2)
      j          .L80089CBC
       sw        $2, 0x0($5)
  .L80089CA0:
      lw         $2, 0x8($4)
      lw         $2, 0x8($2)
      j          .L80089CBC
       sw        $2, 0x0($5)
  .L80089CB0:
      lw         $2, 0x8($4)
      lw         $2, 0xC($2)
      sw         $2, 0x0($5)
  .L80089CBC:
      addu       $2, $0, $0
  .L80089CC0:
      jr         $31
       nop
.end func_80089C40

.globl func_80089CC8
.ent func_80089CC8
func_80089CC8:
      sw         $16, 0x50($29)
      addu       $16, $5, $0
      sw         $31, 0x74($29)
      sw         $6, 0x80($29)
      slt        $2, $30, $23
      bnez       $2, .L80089CF8
       sw        $7, 0x84($29)
      lw         $8, 0xA8($29)
      subu       $2, $30, $23
      slt        $2, $2, $8
      beql       $2, $0, func_80089D00
       sw        $0, 0x3C($29)
  .L80089CF8:
      j          .L8008A170
       addiu     $2, $0, 0xB
.end func_80089CC8

.globl func_80089D00
.ent func_80089D00
func_80089D00:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      andi       $5, $5, 0xFF
      beqz       $5, .L80089D34
       sw        $31, 0x14($29)
      lw         $2, 0x90($16)
      bnez       $2, .L80089D4C
       nop
      jal        func_80089DEC
       nop
      j          .L80089D4C
       nop
  .L80089D34:
      lw         $4, 0x90($16)
      beqz       $4, .L80089D4C
       nop
      jal        func_80052488
       nop
      sw         $0, 0x90($16)
  .L80089D4C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80089D00

.globl func_80089D5C
.ent func_80089D5C
func_80089D5C:
      addiu      $29, $29, -0x68
      sw         $16, 0x60($29)
      addu       $16, $4, $0
      beqz       $16, .L80089DDC
       sw        $31, 0x64($29)
      lw         $2, 0x14($16)
      beqz       $2, .L80089D84
       addiu     $2, $0, -0x1
      j          .L80089DDC
       sw        $2, 0x18($16)
  .L80089D84:
      addiu      $4, $29, 0x20
      addu       $5, $0, $0
      addiu      $6, $0, 0x3C
      sw         $0, 0x90($16)
      jal        func_80016140
       sw        $0, 0x18($16)
      lw         $2, 0x1C($16)
      addu       $6, $0, $0
      sw         $2, 0x20($29)
      lw         $3, 0x30($16)
      addiu      $2, $0, 0x4
      sw         $2, 0x10($29)
      lui        $2, %hi(D_800ED7DC)
      addiu      $2, $2, %lo(D_800ED7DC)
      sw         $2, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      lw         $4, 0x2C($16)
      lw         $5, 0xC($16)
      lw         $2, 0x14($3)
      jalr       $2
       addiu     $7, $29, 0x20
  .L80089DDC:
      lw         $31, 0x64($29)
      lw         $16, 0x60($29)
      jr         $31
       addiu     $29, $29, 0x68
.end func_80089D5C

.globl func_80089DEC
.ent func_80089DEC
func_80089DEC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L80089E38
       sw        $31, 0x14($29)
      lw         $2, 0x18($16)
      beqz       $2, .L80089E38
       sll       $4, $2, 5
      subu       $4, $4, $2
      sll        $4, $4, 2
      addu       $4, $4, $2
      sll        $4, $4, 3
      addu       $5, $16, $0
      addu       $6, $0, $0
      jal        func_8008A8EC
       addiu     $7, $16, 0x90
      addiu      $3, $0, 0x1
      bnel       $2, $3, .L80089E38
       sw        $0, 0x90($16)
  .L80089E38:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
      bnez       $2, .L80089E84
       addu      $4, $20, $0
      addiu      $5, $16, 0xD0
      addu       $6, $16, $0
      addu       $7, $0, $0
      addiu      $2, $29, 0x30
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x2
      sw         $2, 0x14($29)
      sw         $0, 0x18($29)
      sw         $21, 0x1C($29)
      sw         $22, 0x20($29)
      sw         $18, 0x24($29)
      j          .L80089EB4
.end func_80089DEC

.globl func_80089E80
.ent func_80089E80
func_80089E80:
      lw         $3, 0xC($4)
  .L80089E84:
      lw         $2, 0x4($4)
      beq        $3, $2, .L80089EA0
       addu      $5, $0, $0
      lw         $3, 0x8($4)
      lw         $2, 0x0($4)
      bne        $3, $2, .L80089EA4
       nop
  .L80089EA0:
      addiu      $5, $0, 0x1
  .L80089EA4:
      jr         $31
       addu      $2, $5, $0
.end func_80089E80

.globl func_80089EAC
.ent func_80089EAC
func_80089EAC:
      lw         $3, 0x8($7)
      lw         $7, 0x0($7)
  .L80089EB4:
      lui        $1, %hi(D_800F1580)
      ldc1       $f2, %lo(D_800F1580)($1)
      subu       $12, $3, $7
      mtc1       $12, $f4
      cvt.d.w    $f4, $f4
      mul.d      $f2, $f4, $f2
      lui        $1, %hi(D_800F1588)
      ldc1       $f0, %lo(D_800F1588)($1)
      mul.d      $f4, $f4, $f0
      lw         $9, 0x8($6)
      lw         $6, 0x0($6)
      subu       $10, $9, $6
      addu       $13, $5, $3
      trunc.w.d  $f6, $f2
      mfc1       $11, $f6
      trunc.w.d  $f6, $f4
      mfc1       $8, $f6
      subu       $2, $12, $11
      subu       $14, $10, $2
      addu       $2, $9, $8
      slt        $2, $13, $2
      beqz       $2, .L80089F44
       addu      $2, $14, $8
      bgtz       $2, .L80089F38
       subu      $2, $6, $8
      subu       $2, $12, $10
      subu       $3, $2, $8
      addu       $2, $5, $9
      subu       $5, $2, $13
      slt        $2, $11, $3
      bnel       $2, $0, .L80089F34
       addu      $3, $11, $0
  .L80089F34:
      addu       $2, $5, $3
  .L80089F38:
      sw         $2, 0x0($4)
  .L80089F3C:
      jr         $31
       addiu     $2, $0, 0x1
  .L80089F44:
      subu       $3, $6, $8
      addu       $2, $5, $7
      slt        $2, $3, $2
      beqz       $2, .L80089F80
       addu      $2, $14, $8
      blez       $2, .L80089F68
       subu      $2, $12, $10
      j          .L80089F3C
       sw        $3, 0x0($4)
  .L80089F68:
      subu       $3, $2, $8
      slt        $2, $11, $3
      bnel       $2, $0, .L80089F78
       addu      $3, $11, $0
  .L80089F78:
      j          .L80089F38
       subu      $2, $6, $3
  .L80089F80:
      addu       $2, $0, $0
      jr         $31
       sw        $5, 0x0($4)
.end func_80089EAC

.globl func_80089F8C
.ent func_80089F8C
func_80089F8C:
      addu       $10, $4, $0
      lw         $4, 0xC($7)
      lw         $2, 0x4($7)
      lui        $1, %hi(D_800F1590)
      ldc1       $f2, %lo(D_800F1590)($1)
      subu       $2, $4, $2
      mtc1       $2, $f4
      cvt.d.w    $f4, $f4
      mul.d      $f2, $f4, $f2
      lui        $1, %hi(D_800F1598)
      ldc1       $f0, %lo(D_800F1598)($1)
      mul.d      $f4, $f4, $f0
      lw         $7, 0xC($6)
      lw         $8, 0x4($6)
      subu       $3, $7, $8
      addu       $4, $5, $4
      trunc.w.d  $f6, $f2
      mfc1       $9, $f6
      trunc.w.d  $f6, $f4
      mfc1       $6, $f6
      subu       $2, $2, $9
      subu       $3, $3, $2
      addu       $2, $7, $6
      slt        $2, $4, $2
      beqz       $2, .L8008A018
       addu      $2, $3, $6
      blezl      $2, .L8008A004
       addu      $2, $5, $7
      j          .L8008A00C
       subu      $2, $8, $6
  .L8008A004:
      subu       $2, $2, $4
      addu       $2, $2, $9
  .L8008A00C:
      sw         $2, 0x0($10)
  .L8008A010:
      jr         $31
       addiu     $2, $0, 0x1
  .L8008A018:
      subu       $4, $8, $6
      slt        $2, $4, $5
      beqz       $2, .L8008A038
       addu      $2, $3, $6
      blez       $2, .L8008A00C
       subu      $2, $8, $9
      j          .L8008A010
       sw        $4, 0x0($10)
  .L8008A038:
      addu       $2, $0, $0
      jr         $31
       sw        $5, 0x0($10)
.end func_80089F8C

.globl func_8008A044
.ent func_8008A044
func_8008A044:
      addiu      $29, $29, -0x50
      sw         $21, 0x44($29)
      lw         $21, 0x60($29)
      sw         $22, 0x48($29)
      lw         $22, 0x64($29)
      sw         $17, 0x34($29)
      addu       $17, $4, $0
      sw         $18, 0x38($29)
      addu       $18, $5, $0
      sw         $20, 0x40($29)
      addu       $20, $6, $0
      sw         $19, 0x3C($29)
      addu       $19, $7, $0
      sw         $31, 0x4C($29)
      bnez       $18, .L8008A08C
       sw        $16, 0x30($29)
      j          .L8008A134
       addu      $2, $0, $0
  .L8008A08C:
      addu       $4, $17, $0
      addiu      $16, $29, 0x20
      jal        func_8008BB94
       addu      $5, $16, $0
      addu       $4, $17, $0
      addu       $5, $18, $0
      jal        func_800780B4
       addiu     $6, $29, 0x10
      addu       $4, $19, $0
      addiu      $6, $29, 0x10
      lw         $5, 0x50($17)
      jal        func_80089EAC
       addu      $7, $16, $0
      sb         $2, 0x0($21)
      andi       $2, $2, 0xFF
      beqz       $2, .L8008A0E4
       addu      $4, $20, $0
      lw         $5, 0x0($19)
      jal        func_80080440
       addu      $4, $17, $0
      sw         $2, 0x0($19)
      addu       $4, $20, $0
  .L8008A0E4:
      addiu      $6, $29, 0x10
      lw         $5, 0x4C($17)
      jal        func_80089F8C
       addu      $7, $16, $0
      sb         $2, 0x0($22)
      andi       $2, $2, 0xFF
      beqz       $2, .L8008A114
       nop
      lw         $5, 0x0($20)
      jal        func_80080418
       addu      $4, $17, $0
      sw         $2, 0x0($20)
  .L8008A114:
      lbu        $2, 0x0($21)
      bnez       $2, .L8008A12C
       addu      $3, $0, $0
      lbu        $2, 0x0($22)
      beqz       $2, .L8008A134
       addu      $2, $3, $0
  .L8008A12C:
      addiu      $3, $0, 0x1
      addu       $2, $3, $0
  .L8008A134:
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
.end func_8008A044

.globl func_8008A15C
.ent func_8008A15C
func_8008A15C:
      lw         $2, 0x10($29)
      sw         $5, 0x0($4)
      sw         $6, 0x4($4)
      sw         $7, 0x8($4)
      sw         $2, 0xC($4)
  .L8008A170:
      jr         $31
       addiu     $2, $0, 0x1
.end func_8008A15C

.globl func_8008A178
.ent func_8008A178
func_8008A178:
      lw         $2, 0x0($4)
      lw         $3, 0x4($4)
      addu       $2, $2, $5
      sw         $2, 0x0($4)
      lw         $2, 0x8($4)
      addu       $3, $3, $6
      sw         $3, 0x4($4)
      lw         $3, 0xC($4)
      subu       $2, $2, $5
      subu       $3, $3, $6
      sw         $2, 0x8($4)
      addiu      $2, $0, 0x1
      jr         $31
       sw        $3, 0xC($4)
.end func_8008A178

.globl func_8008A1B0
.ent func_8008A1B0
func_8008A1B0:
      lw         $3, 0x0($4)
      lw         $2, 0x0($5)
      beq        $3, $2, .L8008A1C8
       nop
  .L8008A1C0:
      jr         $31
       addu      $2, $0, $0
  .L8008A1C8:
      lw         $3, 0x8($4)
      lw         $2, 0x8($5)
      bne        $3, $2, .L8008A1C0
       nop
      lw         $3, 0x4($4)
      lw         $2, 0x4($5)
      bne        $3, $2, .L8008A1FC
       nop
      lw         $2, 0xC($4)
      lw         $3, 0xC($5)
      xor        $2, $2, $3
      jr         $31
       sltiu     $2, $2, 0x1
  .L8008A1FC:
      jr         $31
       addu      $2, $0, $0
.end func_8008A1B0

.globl func_8008A204
.ent func_8008A204
func_8008A204:
      lw         $2, 0x0($4)
      lw         $3, 0x8($4)
      addu       $2, $2, $5
      sw         $2, 0x0($4)
      lw         $2, 0x4($4)
      addu       $3, $3, $5
      sw         $3, 0x8($4)
      lw         $3, 0xC($4)
      addu       $2, $2, $6
      addu       $3, $3, $6
      sw         $2, 0x4($4)
      addiu      $2, $0, 0x1
      jr         $31
       sw        $3, 0xC($4)
.end func_8008A204

.globl func_8008A23C
.ent func_8008A23C
func_8008A23C:
      sw         $5, 0x4($29)
      sw         $6, 0x8($29)
      lw         $2, 0x0($4)
      slt        $2, $5, $2
      bnez       $2, .L8008A288
       addu      $2, $0, $0
      lw         $2, 0x8($4)
      slt        $2, $2, $5
      bnez       $2, .L8008A288
       addu      $2, $0, $0
      lw         $2, 0x4($4)
      slt        $2, $6, $2
      bnez       $2, .L8008A288
       addu      $2, $0, $0
      lw         $3, 0xC($4)
      slt        $3, $3, $6
      beqz       $3, .L8008A288
       addiu     $2, $0, 0x1
      addu       $2, $0, $0
  .L8008A288:
      jr         $31
       nop
.end func_8008A23C

.globl func_8008A290
.ent func_8008A290
func_8008A290:
      addiu      $29, $29, -0x30
      sw         $18, 0x28($29)
      addu       $18, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $16, 0x20($29)
      addu       $16, $6, $0
      sw         $31, 0x2C($29)
      jal        func_80089E80
       addu      $4, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8008A2E8
       nop
      lw         $7, 0x0($16)
      lw         $8, 0x4($16)
      lw         $9, 0x8($16)
      lw         $10, 0xC($16)
      sw         $7, 0x0($18)
      sw         $8, 0x4($18)
      sw         $9, 0x8($18)
      j          .L8008A3A0
       sw        $10, 0xC($18)
  .L8008A2E8:
      jal        func_80089E80
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8008A320
       nop
      lw         $7, 0x0($17)
      lw         $8, 0x4($17)
      lw         $9, 0x8($17)
      lw         $10, 0xC($17)
      sw         $7, 0x0($18)
      sw         $8, 0x4($18)
      sw         $9, 0x8($18)
      j          .L8008A3A0
       sw        $10, 0xC($18)
  .L8008A320:
      lw         $3, 0x0($16)
      lw         $4, 0x0($17)
      slt        $2, $4, $3
      bnel       $2, $0, .L8008A334
       addu      $3, $4, $0
  .L8008A334:
      sw         $3, 0x10($29)
      lw         $3, 0x4($16)
      lw         $4, 0x4($17)
      slt        $2, $4, $3
      bnel       $2, $0, .L8008A34C
       addu      $3, $4, $0
  .L8008A34C:
      sw         $3, 0x14($29)
      lw         $3, 0xC($16)
      lw         $4, 0xC($17)
      slt        $2, $3, $4
      bnel       $2, $0, .L8008A364
       addu      $3, $4, $0
  .L8008A364:
      sw         $3, 0x1C($29)
      lw         $4, 0x8($16)
      lw         $5, 0x8($17)
      slt        $2, $4, $5
      bnel       $2, $0, .L8008A37C
       addu      $4, $5, $0
  .L8008A37C:
      sw         $4, 0x18($29)
      lw         $7, 0x10($29)
      lw         $8, 0x14($29)
      lw         $9, 0x18($29)
      lw         $10, 0x1C($29)
      sw         $7, 0x0($18)
      sw         $8, 0x4($18)
      sw         $9, 0x8($18)
      sw         $10, 0xC($18)
  .L8008A3A0:
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x30
.end func_8008A290

.globl func_8008A3BC
.ent func_8008A3BC
func_8008A3BC:
      lw         $3, 0x0($6)
      lw         $7, 0x0($5)
      slt        $2, $3, $7
      bnel       $2, $0, .L8008A3D0
       addu      $3, $7, $0
  .L8008A3D0:
      sw         $3, 0x0($4)
      lw         $3, 0x4($6)
      lw         $7, 0x4($5)
      slt        $2, $3, $7
      bnel       $2, $0, .L8008A3E8
.end func_8008A3BC

.globl func_8008A3E4
.ent func_8008A3E4
func_8008A3E4:
      addu       $3, $7, $0
  .L8008A3E8:
      sw         $3, 0x4($4)
      lw         $3, 0x8($6)
      lw         $7, 0x8($5)
      slt        $2, $7, $3
      bnel       $2, $0, .L8008A400
       addu      $3, $7, $0
  .L8008A400:
      sw         $3, 0x8($4)
      lw         $6, 0xC($6)
      lw         $5, 0xC($5)
      slt        $2, $5, $6
      bnel       $2, $0, .L8008A418
       addu      $6, $5, $0
  .L8008A418:
      lw         $2, 0x4($4)
      slt        $2, $2, $6
      beqz       $2, .L8008A43C
       sw        $6, 0xC($4)
      lw         $3, 0x8($4)
      lw         $2, 0x0($4)
      slt        $2, $2, $3
      bnez       $2, .L8008A444
       nop
  .L8008A43C:
      jr         $31
       addu      $2, $0, $0
  .L8008A444:
      jr         $31
       addiu     $2, $0, 0x1
.end func_8008A3E4

.globl func_8008A44C
.ent func_8008A44C
func_8008A44C:
      lw         $2, 0x0($4)
      lw         $3, 0x8($4)
      subu       $2, $2, $5
      sw         $2, 0x0($4)
      lw         $2, 0x4($4)
      addu       $3, $3, $5
      sw         $3, 0x8($4)
      lw         $3, 0xC($4)
      subu       $2, $2, $6
      addu       $3, $3, $6
      sw         $2, 0x4($4)
      addiu      $2, $0, 0x1
      jr         $31
       sw        $3, 0xC($4)
.end func_8008A44C

.globl func_8008A484
.ent func_8008A484
func_8008A484:
      addiu      $29, $29, -0x58
      sw         $18, 0x50($29)
      addu       $18, $4, $0
      sw         $17, 0x4C($29)
      addu       $17, $5, $0
      sw         $16, 0x48($29)
      addu       $16, $6, $0
      sw         $31, 0x54($29)
      jal        func_8002D560
       addiu     $5, $29, 0x10
      bnez       $2, .L8008A524
       nop
      sltiu      $2, $17, 0x9
      beqz       $2, .L8008A518
       lui       $2, %hi(jtbl_800F15A0)
      addiu      $2, $2, %lo(jtbl_800F15A0)
      sll        $3, $17, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8008A4D8
.L8008A4D8:
      j          .L8008A518
       sw        $16, 0x10($29)
  .globl .L8008A4E0
.L8008A4E0:
      j          .L8008A518
       sw        $16, 0x14($29)
  .globl .L8008A4E8
.L8008A4E8:
      j          .L8008A518
       sw        $16, 0x20($29)
  .globl .L8008A4F0
.L8008A4F0:
      j          .L8008A518
       sw        $16, 0x24($29)
  .globl .L8008A4F8
.L8008A4F8:
      j          .L8008A518
       sw        $16, 0x28($29)
  .globl .L8008A500
.L8008A500:
      j          .L8008A518
       sw        $16, 0x2C($29)
  .globl .L8008A508
.L8008A508:
      j          .L8008A518
       sw        $16, 0x34($29)
  .globl .L8008A510
.L8008A510:
      sw         $16, 0x14($29)
  .globl .L8008A514
.L8008A514:
      sw         $16, 0x40($29)
  .L8008A518:
      addu       $4, $18, $0
      jal        func_8002D5E4
       addiu     $5, $29, 0x10
  .L8008A524:
      lw         $31, 0x54($29)
      lw         $18, 0x50($29)
      lw         $17, 0x4C($29)
      lw         $16, 0x48($29)
      jr         $31
       addiu     $29, $29, 0x58
.end func_8008A484

.globl func_8008A53C
.ent func_8008A53C
func_8008A53C:
      addiu      $29, $29, -0x50
      sw         $16, 0x40($29)
      addu       $16, $4, $0
      andi       $5, $5, 0xFF
      sw         $31, 0x48($29)
      beqz       $5, .L8008A560
       sw        $17, 0x44($29)
      jal        func_8002DFFC
       nop
  .L8008A560:
      addu       $4, $16, $0
      jal        func_8002E904
       addiu     $5, $29, 0x18
      bnez       $2, .L8008A5D8
       addiu     $17, $29, 0x28
      addu       $4, $17, $0
      lw         $8, 0x18($29)
      lw         $2, 0x1C($29)
      lw         $3, 0x24($29)
      lw         $7, 0x20($29)
      addu       $2, $2, $3
      sw         $2, 0x10($29)
      addu       $5, $8, $0
      lw         $6, 0x1C($29)
      jal        func_8008A15C
       addu      $7, $8, $7
      jal        func_8002E12C
       addu      $4, $16, $0
      addu       $16, $2, $0
      beqz       $16, .L8008A5D8
       nop
      jal        func_8002DD40
       addu      $4, $16, $0
      addu       $4, $16, $0
      jal        func_8002EA10
       addiu     $5, $29, 0x38
      lw         $4, 0x38($29)
      addu       $5, $17, $0
      jal        func_80080C84
       addu      $6, $0, $0
  .L8008A5D8:
      lw         $31, 0x48($29)
      lw         $17, 0x44($29)
      lw         $16, 0x40($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_8008A53C

.globl func_8008A5EC
.ent func_8008A5EC
func_8008A5EC:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      sw         $31, 0x1C($29)
      jal        func_80088648
       addu      $16, $4, $0
      addu       $4, $16, $0
      jal        func_80088724
       addiu     $5, $29, 0x10
      addu       $5, $0, $0
      addu       $6, $5, $0
      lw         $4, 0x10($29)
      jal        func_80034930
       addiu     $7, $0, 0x1
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008A5EC

.globl func_8008A630
.ent func_8008A630
func_8008A630:
      addiu      $29, $29, -0x20
      sw         $31, 0x1C($29)
      sw         $16, 0x18($29)
      lbu        $3, 0x10($4)
      slti       $2, $3, 0x9
      bnez       $2, .L8008A6B0
       slti      $2, $3, 0xB
      bnez       $2, .L8008A65C
       addiu     $2, $0, 0x11
      bne        $3, $2, .L8008A6B0
       nop
  .L8008A65C:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $16, 0x28($2)
      jal        func_8002DF84
       addu      $4, $16, $0
      addu       $4, $16, $0
      jal        func_80035048
       addiu     $5, $0, 0x1
      addu       $4, $16, $0
      jal        func_80034F80
       addiu     $5, $0, 0x1
      addu       $4, $16, $0
      jal        func_8002EACC
       addiu     $5, $29, 0x10
      lw         $3, 0x10($29)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8008A6B0
       nop
      jal        func_8003269C
       addiu     $4, $16, 0x140
  .L8008A6B0:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008A630

.globl func_8008A6C0
.ent func_8008A6C0
func_8008A6C0:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lbu        $3, 0x10($4)
      slti       $2, $3, 0x9
      bnez       $2, .L8008A71C
       slti      $2, $3, 0xB
      bnez       $2, .L8008A6EC
       addiu     $2, $0, 0x11
      bne        $3, $2, .L8008A71C
       nop
  .L8008A6EC:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $2, 0x0($2)
      lw         $16, 0x28($2)
      addu       $5, $0, $0
      jal        func_80034F80
       addu      $4, $16, $0
      jal        func_8003269C
       addiu     $4, $16, 0x140
      addu       $4, $16, $0
      jal        func_80035048
       addu      $5, $0, $0
  .L8008A71C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008A6C0

.globl func_8008A72C
.ent func_8008A72C
func_8008A72C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addiu      $2, $0, 0x11
      beq        $5, $2, .L8008A750
       sw        $31, 0x14($29)
      addiu      $2, $0, 0x35
      bne        $5, $2, .L8008A75C
       addu      $4, $16, $0
  .L8008A750:
      addu       $4, $16, $0
      j          .L8008A760
       addiu     $5, $0, 0x7
  .L8008A75C:
      addiu      $5, $0, 0x8
  .L8008A760:
      jal        func_800351A0
       addiu     $6, $0, 0x1
      addu       $4, $16, $0
      addiu      $5, $0, 0x9
      jal        func_80034124
       addiu     $6, $0, 0x1
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008A72C

.globl func_8008A788
.ent func_8008A788
func_8008A788:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
  .L8008A798:
      jal        func_8007A084
       addu      $4, $16, $0
      beql       $2, $0, .L8008A7B0
       addu      $2, $16, $0
      j          .L8008A798
       addu      $16, $2, $0
  .L8008A7B0:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008A788

.globl func_8008A7C0
.ent func_8008A7C0
func_8008A7C0:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      beqz       $16, .L8008A854
       sw        $31, 0x20($29)
      jal        func_80077960
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8008A858
       addu      $2, $17, $0
      addu       $4, $16, $0
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $4, 0x0($2)
      addiu      $2, $4, 0x28
      beqz       $2, .L8008A858
       addu      $2, $17, $0
      lw         $16, 0x28($4)
      beqz       $16, .L8008A858
       nop
      lw         $5, 0x10($18)
      jal        func_8002DF5C
       addu      $4, $16, $0
      beqz       $2, .L8008A858
       addu      $2, $17, $0
      addu       $4, $16, $0
      jal        func_8008A53C
       addu      $5, $0, $0
      jal        func_8002DD40
       addiu     $4, $19, 0xB8
      addiu      $17, $0, 0x1
  .L8008A854:
      addu       $2, $17, $0
  .L8008A858:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8008A7C0

.globl func_8008A874
.ent func_8008A874
func_8008A874:
      addiu      $29, $29, -0x48
      sw         $18, 0x40($29)
      addu       $18, $4, $0
      sw         $17, 0x3C($29)
      addu       $17, $5, $0
      addiu      $4, $29, 0x10
      addu       $5, $0, $0
      addiu      $6, $0, 0x28
      sw         $31, 0x44($29)
      jal        func_80016140
       sw        $16, 0x38($29)
      lui        $16, %hi(D_80133AFC)
      lw         $3, %lo(D_80133AFC)($16)
      addiu      $2, $0, 0xC
      sh         $2, 0x10($29)
      sw         $17, 0x20($29)
      sw         $18, 0x24($29)
      jal        func_8002D740
       sw        $3, 0x14($29)
      addiu      $5, $0, 0x1
      lw         $4, %lo(D_80133AFC)($16)
      addiu      $6, $29, 0x10
      jal        func_8002CE60
       sw        $2, 0x1C($29)
      lw         $31, 0x44($29)
      lw         $18, 0x40($29)
      lw         $17, 0x3C($29)
      lw         $16, 0x38($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_8008A874

.globl func_8008A8EC
.ent func_8008A8EC
func_8008A8EC:
      addiu      $29, $29, -0x20
      addu       $2, $4, $0
      lui        $4, %hi(func_8008A874)
      sw         $7, 0x10($29)
      andi       $7, $6, 0xFF
      addiu      $4, $4, %lo(func_8008A874)
      sw         $31, 0x18($29)
      jal        func_80052480
       addu      $6, $2, $0
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008A8EC

.globl func_8008A91C
.ent func_8008A91C
func_8008A91C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80052488
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008A91C

.globl func_8008A938
.ent func_8008A938
func_8008A938:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
.end func_8008A938

.globl func_8008A940
.ent func_8008A940
func_8008A940:
      addiu      $29, $29, -0x38
      sw         $31, 0x34($29)
      sw         $20, 0x30($29)
      sw         $19, 0x2C($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      sw         $16, 0x20($29)
      lw         $2, 0x4($4)
      lw         $2, 0x0($2)
      lw         $4, 0x44($2)
      jal        func_80058434
       addu      $20, $5, $0
      addu       $17, $2, $0
      beqz       $17, .L8008AA2C
       addiu     $19, $0, 0x2B
      addiu      $18, $29, 0x10
  .L8008A980:
      lbu        $2, 0x10($17)
      bne        $2, $19, .L8008AA20
       nop
      jal        func_8007D4AC
       addu      $4, $17, $0
      addu       $16, $2, $0
      lw         $4, 0x8($16)
      jal        func_8007A060
       nop
      andi       $2, $2, 0xFF
      beqz       $2, .L8008AA20
       addu      $4, $18, $0
      lw         $2, 0x8($16)
      addu       $5, $20, $0
      lw         $16, 0x8($2)
      lw         $3, 0x80($16)
      lw         $7, 0x84($16)
      lw         $8, 0x88($16)
      lw         $9, 0x8C($16)
      sw         $3, 0x10($29)
      sw         $7, 0x14($29)
      sw         $8, 0x18($29)
      sw         $9, 0x1C($29)
      jal        func_8008A3BC
       addu      $6, $18, $0
      addu       $4, $18, $0
      lw         $5, 0x80($16)
      lw         $6, 0x84($16)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8008BB08
       addiu     $6, $0, 0x1
      jal        func_800809B8
       addu      $4, $16, $0
      addu       $4, $16, $0
      jal        func_8008A940
       addu      $5, $18, $0
  .L8008AA20:
      lw         $17, 0x8($17)
      bnez       $17, .L8008A980
       nop
  .L8008AA2C:
      lw         $31, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8008A940

.globl func_8008AA4C
.ent func_8008AA4C
func_8008AA4C:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      sw         $31, 0x24($29)
      jal        func_8008B620
       addu      $16, $4, $0
      addu       $4, $16, $0
      jal        func_8008BB94
       addiu     $5, $29, 0x10
      addu       $4, $16, $0
      addiu      $5, $29, 0x10
      jal        func_8008BB08
       addiu     $6, $0, 0x1
      lui        $4, %hi(D_80137108)
      addiu      $4, $4, %lo(D_80137108)
      lw         $2, 0x18($29)
      lw         $5, 0x10($29)
      lw         $3, 0x1C($29)
      lw         $6, 0x14($29)
      subu       $2, $2, $5
      subu       $3, $3, $6
      sw         $2, 0x7C($4)
      sw         $3, 0x80($4)
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8008AA4C

.globl func_8008AAB4
.ent func_8008AAB4
func_8008AAB4:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      beqz       $17, .L8008AB1C
       sw        $31, 0x28($29)
      beqz       $16, .L8008AB1C
       nop
      jal        func_8002E904
       nop
      bnez       $2, .L8008AB1C
       nop
      lw         $2, 0xC($16)
      sw         $18, 0x0($16)
      sw         $19, 0x4($16)
      sw         $2, 0x10($29)
      lw         $5, 0x0($16)
      lw         $6, 0x4($16)
      lw         $7, 0x8($16)
      jal        func_8002E92C
       addu      $4, $17, $0
  .L8008AB1C:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8008AAB4

.globl func_8008AB38
.ent func_8008AB38
func_8008AB38:
      addiu      $29, $29, -0x40
      sw         $19, 0x34($29)
      addu       $19, $5, $0
      sw         $17, 0x2C($29)
      addu       $17, $6, $0
      sw         $18, 0x30($29)
      addu       $18, $7, $0
      sw         $16, 0x28($29)
      lbu        $16, 0x53($29)
      sw         $31, 0x38($29)
      jal        func_8002E85C
       addiu     $5, $29, 0x20
      bnez       $2, .L8008ABF0
       nop
      beqz       $18, .L8008ABA4
       andi      $2, $16, 0xFF
      lw         $2, 0x20($29)
      lw         $4, 0x0($2)
      jal        func_8002E904
       addiu     $5, $29, 0x10
      bnez       $2, .L8008ABA4
       andi      $2, $16, 0xFF
      lw         $2, 0x1C($29)
      mult       $18, $2
      mflo       $8
      subu       $17, $17, $8
      andi       $2, $16, 0xFF
  .L8008ABA4:
      bnel       $2, $0, .L8008ABAC
       addiu     $17, $17, 0xC
  .L8008ABAC:
      lw         $4, 0x20($29)
      lw         $2, 0x0($4)
      beqz       $2, .L8008ABF0
       addu      $16, $0, $0
  .L8008ABBC:
      addiu      $5, $29, 0x10
      addu       $2, $16, $4
      addu       $6, $19, $0
      lw         $4, 0x0($2)
      jal        func_8008AAB4
       addu      $7, $17, $0
      addiu      $16, $16, 0x4
      lw         $4, 0x20($29)
      lw         $3, 0x1C($29)
      addu       $2, $16, $4
      lw         $2, 0x0($2)
      bnez       $2, .L8008ABBC
       addu      $17, $17, $3
  .L8008ABF0:
      lw         $31, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_8008AB38

.globl func_8008AC0C
.ent func_8008AC0C
func_8008AC0C:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $0, $0
      sw         $31, 0x24($29)
      jal        func_8002E8B0
       addiu     $5, $29, 0x10
      bnez       $2, .L8008AC74
       addu      $2, $17, $0
      lw         $3, 0x10($29)
      addiu      $2, $0, 0xF
      bne        $3, $2, .L8008AC58
       nop
      lw         $4, 0x4F4($16)
      j          .L8008AC60
       slt       $2, $4, $18
  .L8008AC58:
      lw         $4, 0x29C($16)
      slt        $2, $4, $18
  .L8008AC60:
      bnez       $2, .L8008AC74
       addu      $2, $17, $0
      subu       $2, $4, $18
      addiu      $17, $2, 0x1
      addu       $2, $17, $0
  .L8008AC74:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8008AC0C

.globl func_8008AC8C
.ent func_8008AC8C
func_8008AC8C:
      addiu      $29, $29, -0x70
      sw         $17, 0x54($29)
      addu       $17, $4, $0
      sw         $22, 0x68($29)
      addu       $22, $5, $0
      addu       $4, $22, $0
      addiu      $5, $0, 0x5
      sw         $31, 0x6C($29)
      sw         $21, 0x64($29)
      sw         $20, 0x60($29)
      sw         $19, 0x5C($29)
      sw         $18, 0x58($29)
      jal        func_80058268
       sw        $16, 0x50($29)
      lw         $2, 0x0($2)
      lw         $16, 0x28($2)
      beqz       $16, .L8008AF7C
       addu      $4, $16, $0
      jal        func_8002E894
       addiu     $5, $29, 0x38
      bnez       $2, .L8008AF7C
       addu      $4, $22, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $22, $0
      lw         $3, 0x0($2)
      lw         $2, 0x50($17)
      addu       $5, $0, $0
      jal        func_80058268
       subu      $19, $3, $2
      addu       $4, $16, $0
      addiu      $5, $29, 0x18
      lw         $3, 0x4($2)
      lw         $2, 0x4C($17)
      addu       $6, $19, $0
      subu       $21, $3, $2
      jal        func_8008AAB4
       addu      $7, $21, $0
      lw         $3, 0x38($29)
      addiu      $2, $0, 0xA
      beq        $3, $2, .L8008AD60
       sltiu     $2, $3, 0xB
      beqz       $2, .L8008AD4C
       addiu     $2, $0, 0x9
      beq        $3, $2, .L8008AF44
       addu      $4, $22, $0
      j          .L8008AF68
       nop
  .L8008AD4C:
      addiu      $2, $0, 0xB
      beq        $3, $2, .L8008ADB8
       addu      $4, $22, $0
      j          .L8008AF68
       nop
  .L8008AD60:
      addiu      $4, $16, 0x68
      addiu      $5, $29, 0x3C
      jal        func_800898E4
       sw        $16, 0x44($29)
      lw         $5, 0x3C($29)
      jal        func_8008AC0C
       addu      $4, $16, $0
      addiu      $5, $29, 0x40
      lw         $4, 0x44($29)
      jal        func_80088AA4
       addu      $16, $2, $0
      addu       $5, $19, $0
      lw         $3, 0x40($29)
      lw         $2, 0x3C($29)
      addu       $6, $21, $0
      slt        $2, $2, $3
      sw         $2, 0x10($29)
      lw         $4, 0x44($29)
      jal        func_8008AB38
       addu      $7, $16, $0
      j          .L8008AF68
       addu      $4, $22, $0
  .L8008ADB8:
      addu       $4, $16, $0
      jal        func_80088714
       addiu     $5, $29, 0x44
      bnez       $2, .L8008AF14
       addu      $4, $16, $0
      lw         $4, 0x44($29)
      lw         $17, 0x24($29)
      jal        func_8002E12C
       addu      $18, $21, $17
      addu       $4, $2, $0
      jal        func_8002E904
       addiu     $5, $29, 0x28
      lw         $2, 0x34($29)
      subu       $2, $2, $18
      addiu      $2, $2, -0x18
      div        $zero, $2, $17
      bnez       $17, .L8008AE04
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8008AE04:
      addiu      $1, $0, -0x1
      bne        $17, $1, .L8008AE1C
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L8008AE1C
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8008AE1C:
      mflo       $2
      lw         $4, 0x44($29)
      addiu      $5, $29, 0x40
      jal        func_80088AA4
       sw        $2, 0x3C($29)
      lw         $3, 0x3C($29)
      lw         $4, 0x40($29)
      slt        $2, $4, $3
      bnel       $2, $0, .L8008AE44
       addu      $3, $4, $0
  .L8008AE44:
      sltiu      $20, $3, 0x1
      beqz       $20, .L8008AE58
       sw        $3, 0x3C($29)
      addiu      $2, $0, 0x1
      sw         $2, 0x3C($29)
  .L8008AE58:
      lw         $4, 0x44($29)
      lw         $5, 0x3C($29)
      jal        func_800898F4
       addiu     $4, $4, 0x68
      lw         $4, 0x44($29)
      jal        func_8002E904
       addiu     $5, $29, 0x18
      lw         $3, 0x3C($29)
      mult       $17, $3
      lw         $4, 0x40($29)
      slt        $3, $3, $4
      mflo       $5
      addiu      $2, $5, 0x4
      beqz       $3, .L8008AE9C
       sw        $2, 0x24($29)
      addiu      $2, $5, 0x1C
      sw         $2, 0x24($29)
  .L8008AE9C:
      lw         $2, 0x24($29)
      lw         $4, 0x44($29)
      sw         $2, 0x10($29)
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      lw         $7, 0x20($29)
      jal        func_8002E92C
       nop
.end func_8008AC8C

.globl func_8008AEBC
.ent func_8008AEBC
func_8008AEBC:
      beqz       $20, .L8008AED0
       addiu     $5, $29, 0x18
      lw         $3, 0x34($29)
      lw         $2, 0x24($29)
      subu       $18, $3, $2
  .L8008AED0:
      addu       $6, $19, $0
      lw         $4, 0x44($29)
      jal        func_8008AAB4
       addu      $7, $18, $0
      lw         $5, 0x3C($29)
      jal        func_8008AC0C
       addu      $4, $16, $0
      addu       $5, $19, $0
      addu       $6, $18, $0
      addu       $7, $2, $0
      lw         $3, 0x40($29)
      lw         $2, 0x3C($29)
      lw         $4, 0x44($29)
      slt        $2, $2, $3
      jal        func_8008AB38
       sw        $2, 0x10($29)
      addu       $4, $16, $0
  .L8008AF14:
      jal        func_80088724
       addiu     $5, $29, 0x48
      bnez       $2, .L8008AF48
       addu      $4, $16, $0
      addiu      $5, $29, 0x18
      addu       $6, $19, $0
      lw         $4, 0x48($29)
      jal        func_8008AAB4
       addu      $7, $21, $0
      lw         $16, 0x48($29)
      addiu      $2, $0, 0x9
      sw         $2, 0x38($29)
  .L8008AF44:
      addu       $4, $16, $0
  .L8008AF48:
      jal        func_80034D30
       addiu     $5, $29, 0x4C
      bnez       $2, .L8008AF7C
       nop
      lw         $5, 0x4C($29)
      jal        func_80034D40
       addu      $4, $16, $0
      addu       $4, $22, $0
  .L8008AF68:
      jal        func_80058268
       addiu     $5, $0, 0x5
      lw         $3, 0x0($2)
      addiu      $2, $0, 0x1
      sb         $2, 0x27($3)
  .L8008AF7C:
      lw         $31, 0x6C($29)
      lw         $22, 0x68($29)
.end func_8008AEBC

.globl func_8008AF84
.ent func_8008AF84
func_8008AF84:
      lw         $21, 0x64($29)
      lw         $20, 0x60($29)
      lw         $19, 0x5C($29)
      lw         $18, 0x58($29)
      lw         $17, 0x54($29)
      lw         $16, 0x50($29)
      jr         $31
       addiu     $29, $29, 0x70
.end func_8008AF84

.globl func_8008AFA4
.ent func_8008AFA4
func_8008AFA4:
      addiu      $29, $29, -0x40
      sw         $16, 0x30($29)
      addu       $16, $4, $0
      sw         $17, 0x34($29)
      addu       $17, $0, $0
      sw         $31, 0x38($29)
      jal        func_8008BB94
       addiu     $5, $29, 0x10
      lw         $5, 0x50($16)
      lw         $6, 0x4C($16)
      jal        func_8008A204
       addiu     $4, $29, 0x10
      andi       $2, $2, 0xFF
      beqz       $2, .L8008B028
       addu      $2, $17, $0
      jal        func_80077B54
       addu      $4, $16, $0
      addu       $4, $16, $0
      addu       $5, $2, $0
      addiu      $16, $29, 0x20
      jal        func_800780B4
       addu      $6, $16, $0
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8008B028
       addu      $2, $17, $0
      addu       $4, $16, $0
      addiu      $5, $29, 0x10
      jal        func_8008A3BC
       addu      $6, $4, $0
      andi       $2, $2, 0xFF
      sltu       $2, $0, $2
      addu       $17, $2, $0
      addu       $2, $17, $0
  .L8008B028:
      lw         $31, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_8008AFA4

.globl func_8008B03C
.ent func_8008B03C
func_8008B03C:
      addiu      $29, $29, -0x28
      addiu      $2, $0, 0x1
      addu       $5, $2, $0
      addu       $6, $2, $0
      addiu      $7, $29, 0x18
      sw         $31, 0x20($29)
      jal        func_80077CD0
       sw        $2, 0x10($29)
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8008B03C

.globl func_8008B068
.ent func_8008B068
func_8008B068:
      addiu      $29, $29, -0x38
      addiu      $5, $29, 0x28
      sw         $31, 0x34($29)
      jal        func_8002EA10
       sw        $16, 0x30($29)
      bnez       $2, .L8008B120
       addiu     $2, $0, 0x16
      lw         $16, 0x28($29)
      beqz       $16, .L8008B120
       nop
      lw         $2, 0x4($16)
      beql       $2, $0, .L8008B120
       addiu     $2, $0, 0x16
      lw         $2, 0x0($2)
      bnez       $2, .L8008B0B0
       addiu     $4, $29, 0x18
      j          .L8008B120
       addiu     $2, $0, 0x16
  .L8008B0B0:
      addiu      $3, $16, 0xB8
      lw         $8, 0xA4($3)
      lw         $2, 0xA8($3)
      lw         $5, 0xB0($3)
      lw         $7, 0xAC($3)
      addu       $2, $2, $5
      sw         $2, 0x10($29)
      lw         $5, 0xA4($3)
      lw         $6, 0xA8($3)
      jal        func_8008A15C
       addu      $7, $8, $7
      addiu      $4, $29, 0x18
      lw         $5, 0x80($16)
      lw         $6, 0x84($16)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
      addu       $4, $16, $0
      addiu      $5, $29, 0x18
      jal        func_8008C288
       addiu     $6, $0, 0x1
      addu       $4, $16, $0
      addiu      $5, $29, 0x18
      addu       $6, $0, $0
      addu       $7, $6, $0
      jal        func_80083BE0
       sw        $0, 0x10($29)
      addu       $2, $0, $0
  .L8008B120:
      lw         $31, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8008B068

.globl func_8008B130
.ent func_8008B130
func_8008B130:
      lw         $2, 0x8C($4)
      lw         $3, 0x84($4)
      subu       $2, $2, $3
      addiu      $8, $2, 0x1
      sltiu      $2, $6, 0xC
      beqz       $2, .L8008B214
       addu      $7, $5, $0
      lui        $2, %hi(jtbl_800F1600)
      addiu      $2, $2, %lo(jtbl_800F1600)
      sll        $3, $6, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8008B168
.L8008B168:
      lui        $2, %hi(D_80137170)
      lw         $2, %lo(D_80137170)($2)
      j          .L8008B214
       addu      $7, $5, $2
  .globl .L8008B178
.L8008B178:
      lui        $1, %hi(.L800F1630)
      ldc1       $f2, %lo(.L800F1630)($1)
      mtc1       $8, $f0
      cvt.d.w    $f0, $f0
      mul.d      $f0, $f0, $f2
      j          .L8008B1C8
       nop
  .globl .L8008B194
.L8008B194:
      lui        $1, %hi(D_800F1638)
      ldc1       $f2, %lo(D_800F1638)($1)
      mtc1       $8, $f0
      cvt.d.w    $f0, $f0
      mul.d      $f0, $f0, $f2
      j          .L8008B1F0
       nop
  .globl .L8008B1B0
.L8008B1B0:
      lui        $1, %hi(D_800F1640)
      ldc1       $f2, %lo(D_800F1640)($1)
      mtc1       $8, $f0
      cvt.d.w    $f0, $f0
      mul.d      $f2, $f0, $f2
      sub.d      $f0, $f0, $f2
  .L8008B1C8:
      trunc.w.d  $f4, $f0
      mfc1       $2, $f4
      j          .L8008B214
       subu      $7, $5, $2
  .globl .L8008B1D8
.L8008B1D8:
      lui        $1, %hi(D_800F1648)
      ldc1       $f2, %lo(D_800F1648)($1)
      mtc1       $8, $f0
      cvt.d.w    $f0, $f0
      mul.d      $f2, $f0, $f2
      sub.d      $f0, $f0, $f2
  .L8008B1F0:
      trunc.w.d  $f4, $f0
      mfc1       $2, $f4
      j          .L8008B214
       addu      $7, $5, $2
  .globl .L8008B200
.L8008B200:
      j          .L8008B214
       addu      $7, $0, $0
  .globl .L8008B208
.L8008B208:
      lw         $2, 0x4($4)
      lw         $2, 0x0($2)
      lw         $7, 0xC($2)
  .globl .L8008B214
.L8008B214:
      jr         $31
       addu      $2, $7, $0
.end func_8008B130

.globl func_8008B21C
.ent func_8008B21C
func_8008B21C:
      lw         $2, 0x88($4)
      lw         $3, 0x80($4)
      subu       $2, $2, $3
      addiu      $7, $2, 0x1
      addiu      $3, $6, -0x2
      sltiu      $2, $3, 0xC
      beqz       $2, .L8008B2EC
       addu      $4, $5, $0
      lui        $2, %hi(jtbl_800F1650)
      addiu      $2, $2, %lo(jtbl_800F1650)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8008B258
.L8008B258:
      lui        $2, %hi(D_8013716C)
      lw         $2, %lo(D_8013716C)($2)
      j          .L8008B2EC
       addu      $4, $5, $2
  .globl .L8008B268
.L8008B268:
      lui        $1, %hi(D_800F1680)
      ldc1       $f2, %lo(D_800F1680)($1)
      mtc1       $7, $f0
      cvt.d.w    $f0, $f0
      mul.d      $f0, $f0, $f2
      j          .L8008B2B8
       nop
  .globl .L8008B284
.L8008B284:
      lui        $1, %hi(D_800F1688)
      ldc1       $f2, %lo(D_800F1688)($1)
      mtc1       $7, $f0
      cvt.d.w    $f0, $f0
      mul.d      $f0, $f0, $f2
      j          .L8008B2E0
       nop
  .globl .L8008B2A0
.L8008B2A0:
      lui        $1, %hi(D_800F1690)
      ldc1       $f2, %lo(D_800F1690)($1)
      mtc1       $7, $f0
      cvt.d.w    $f0, $f0
      mul.d      $f2, $f0, $f2
      sub.d      $f0, $f0, $f2
  .L8008B2B8:
      trunc.w.d  $f4, $f0
      mfc1       $2, $f4
      j          .L8008B2EC
       subu      $4, $5, $2
  .globl .L8008B2C8
.L8008B2C8:
      lui        $1, %hi(D_800F1698)
      ldc1       $f2, %lo(D_800F1698)($1)
      mtc1       $7, $f0
      cvt.d.w    $f0, $f0
      mul.d      $f2, $f0, $f2
      sub.d      $f0, $f0, $f2
  .L8008B2E0:
      trunc.w.d  $f4, $f0
      mfc1       $2, $f4
      addu       $4, $5, $2
  .globl .L8008B2EC
.L8008B2EC:
      jr         $31
       addu      $2, $4, $0
.end func_8008B21C

.globl func_8008B2F4
.ent func_8008B2F4
func_8008B2F4:
      addiu      $29, $29, -0x48
      sw         $17, 0x3C($29)
      addu       $17, $4, $0
      sw         $31, 0x40($29)
      beqz       $17, .L8008B3F4
       sw        $16, 0x38($29)
      lw         $2, 0x4($17)
      beqz       $2, .L8008B3F4
       nop
      lw         $2, 0x0($2)
      beqz       $2, .L8008B3F4
       nop
      lw         $5, 0x4C($17)
      jal        func_8008B130
       addiu     $6, $0, 0xB
      addu       $4, $17, $0
      jal        func_80080418
       addu      $5, $2, $0
      addu       $4, $17, $0
      addiu      $3, $0, -0x1
      addu       $16, $2, $0
      sw         $3, 0x28($29)
      sw         $3, 0x2C($29)
      jal        func_8008B620
       sw        $16, 0x4C($17)
      addu       $4, $17, $0
      jal        func_8008BB94
       addiu     $5, $29, 0x18
      addu       $4, $17, $0
      addiu      $5, $29, 0x18
      jal        func_8008BB08
       addiu     $6, $0, 0x1
      jal        func_80077B54
       addu      $4, $17, $0
      addu       $4, $17, $0
      addu       $5, $2, $0
      addiu      $6, $29, 0x28
      addiu      $2, $29, 0x30
      sw         $2, 0x10($29)
      addiu      $2, $29, 0x31
      addiu      $7, $29, 0x2C
      jal        func_8008A044
       sw        $2, 0x14($29)
      lui        $4, %hi(D_80137108)
      addiu      $4, $4, %lo(D_80137108)
      sw         $16, 0x70($4)
      lw         $2, 0x4($17)
      lw         $2, 0x0($2)
      lw         $2, 0x14($2)
      sw         $2, 0x74($4)
      lw         $2, 0x4($17)
      lw         $5, 0x18($29)
      lw         $3, 0x24($29)
      lw         $2, 0x0($2)
      lw         $6, 0x1C($29)
      lw         $7, 0x18($2)
      lw         $2, 0x20($29)
      subu       $3, $3, $6
      sw         $3, 0x80($4)
      subu       $2, $2, $5
      sw         $2, 0x7C($4)
      addiu      $2, $0, 0x1
      sb         $2, 0x61($4)
      sw         $7, 0x78($4)
  .L8008B3F4:
      lw         $31, 0x40($29)
      lw         $17, 0x3C($29)
      lw         $16, 0x38($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_8008B2F4

.globl func_8008B408
.ent func_8008B408
func_8008B408:
      addiu      $29, $29, -0x38
      sw         $18, 0x30($29)
      addu       $18, $4, $0
      sw         $31, 0x34($29)
      sw         $17, 0x2C($29)
      beqz       $18, .L8008B4F0
       sw        $16, 0x28($29)
      lw         $2, 0x4($18)
      beqz       $2, .L8008B4F0
       nop
      lw         $2, 0x0($2)
      beqz       $2, .L8008B4F0
       addu      $6, $5, $0
      lw         $16, 0x4C($18)
      jal        func_8008B130
       addu      $5, $16, $0
      addu       $4, $18, $0
      jal        func_80080418
       addu      $5, $2, $0
      addu       $17, $2, $0
      beq        $17, $16, .L8008B4F0
       nop
      addu       $4, $18, $0
      jal        func_8008AA4C
       sw        $17, 0x4C($18)
      jal        func_80077B54
       addu      $4, $18, $0
      addu       $4, $18, $0
      addu       $5, $2, $0
      addiu      $6, $29, 0x18
      addiu      $2, $29, 0x20
      sw         $2, 0x10($29)
      addiu      $2, $29, 0x21
      addiu      $7, $29, 0x1C
      jal        func_8008A044
       sw        $2, 0x14($29)
      lbu        $2, 0x21($29)
      beqz       $2, .L8008B4B0
       lui       $3, %hi(D_80137108)
      jal        func_8008B03C
       addu      $4, $18, $0
      lui        $3, %hi(D_80137108)
  .L8008B4B0:
      addiu      $3, $3, %lo(D_80137108)
      sw         $17, 0x70($3)
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $2, 0x14($2)
      sw         $2, 0x74($3)
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $5, 0x68($3)
      lw         $4, 0x18($2)
      addiu      $2, $0, 0x1
      sb         $2, 0x61($3)
      bnez       $5, .L8008B4F0
       sw        $4, 0x78($3)
      jal        func_800809B8
       addu      $4, $18, $0
  .L8008B4F0:
      lw         $31, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8008B408

.globl func_8008B508
.ent func_8008B508
func_8008B508:
      addiu      $29, $29, -0x38
      sw         $18, 0x30($29)
      addu       $18, $4, $0
      sw         $31, 0x34($29)
      sw         $17, 0x2C($29)
      beqz       $18, .L8008B608
       sw        $16, 0x28($29)
      lw         $2, 0x4($18)
      beqz       $2, .L8008B608
       nop
      lw         $2, 0x0($2)
      beqz       $2, .L8008B608
       addu      $6, $5, $0
      lw         $16, 0x50($18)
      jal        func_8008B21C
       addu      $5, $16, $0
      addu       $4, $18, $0
      jal        func_80080440
       addu      $5, $2, $0
      addu       $17, $2, $0
      beq        $17, $16, .L8008B608
       nop
      sw         $17, 0x50($18)
      jal        func_8008AA4C
       addu      $4, $18, $0
      jal        func_8008AFA4
       addu      $4, $18, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L8008B5F4
       lui       $2, %hi(D_8013716C)
      jal        func_80077B54
       addu      $4, $18, $0
      addu       $4, $18, $0
      addu       $5, $2, $0
      addiu      $6, $29, 0x18
      addiu      $2, $29, 0x20
      sw         $2, 0x10($29)
      addiu      $2, $29, 0x21
      addiu      $7, $29, 0x1C
      jal        func_8008A044
       sw        $2, 0x14($29)
      lui        $3, %hi(D_80137108)
      addiu      $3, $3, %lo(D_80137108)
      sw         $17, 0x6C($3)
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $2, 0x14($2)
      sw         $2, 0x74($3)
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lbu        $5, 0x20($29)
      lw         $4, 0x18($2)
      addiu      $2, $0, 0x1
      sb         $2, 0x61($3)
      beqz       $5, .L8008B5F0
       sw        $4, 0x78($3)
      jal        func_8008B03C
       addu      $4, $18, $0
  .L8008B5F0:
      lui        $2, %hi(D_8013716C)
  .L8008B5F4:
      lw         $2, %lo(D_8013716C)($2)
      bnez       $2, .L8008B608
       nop
      jal        func_800809B8
       addu      $4, $18, $0
  .L8008B608:
      lw         $31, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8008B508

.globl func_8008B620
.ent func_8008B620
func_8008B620:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x4($18)
      lw         $2, 0x0($2)
      lw         $4, 0x44($2)
      jal        func_80058434
       nop
      addu       $17, $2, $0
      beqz       $17, .L8008B700
       lui       $2, %hi(jtbl_800F16A0)
      addiu      $19, $2, %lo(jtbl_800F16A0)
  .L8008B660:
      lbu        $2, 0x10($17)
      addiu      $3, $2, -0x2
      sltiu      $2, $3, 0x34
      beqz       $2, .L8008B6F4
       sll       $2, $3, 2
      addu       $2, $2, $19
      lw         $2, 0x0($2)
      jr         $2
       nop
  .globl .L8008B684
.L8008B684:
      addu       $4, $18, $0
      jal        func_8008AC8C
       addu      $5, $17, $0
      j          .L8008B6F4
       nop
  .globl .L8008B698
.L8008B698:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      lw         $16, 0x0($2)
      beqz       $16, .L8008B6F4
       addu      $4, $18, $0
      addu       $5, $17, $0
      addu       $6, $16, $0
      jal        func_80058AD0
       addiu     $7, $0, 0x1
      addu       $4, $18, $0
      jal        func_80080300
       addu      $5, $16, $0
      j          .L8008B6F4
       nop
  .globl .L8008B6D4
.L8008B6D4:
      addu       $4, $17, $0
      jal        func_80058268
       addiu     $5, $0, 0x2
      addu       $4, $18, $0
      addu       $5, $17, $0
      lw         $6, 0x8($2)
      jal        func_80058AD0
       addiu     $7, $0, 0x1
  .globl .L8008B6F4
.L8008B6F4:
      lw         $17, 0x8($17)
      bnez       $17, .L8008B660
       nop
  .L8008B700:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8008B620

.globl func_8008B71C
.ent func_8008B71C
func_8008B71C:
      addiu      $29, $29, -0x30
      sw         $16, 0x28($29)
      addu       $16, $4, $0
      addiu      $2, $29, 0x20
      sw         $2, 0x10($29)
      addiu      $2, $29, 0x21
      addiu      $6, $29, 0x18
      addiu      $7, $29, 0x1C
      sw         $31, 0x2C($29)
      jal        func_8008A044
       sw        $2, 0x14($29)
      lw         $2, 0x50($16)
      lw         $4, 0x1C($29)
      beql       $2, $4, .L8008B758
       sb        $0, 0x20($29)
  .L8008B758:
      lw         $3, 0x4C($16)
      lw         $2, 0x18($29)
      beql       $3, $2, .L8008B768
       sb        $0, 0x21($29)
  .L8008B768:
      lbu        $2, 0x20($29)
      bnel       $2, $0, .L8008B788
       sw        $4, 0x50($16)
      lbu        $2, 0x21($29)
      beqz       $2, .L8008B7A0
       nop
      j          .L8008B78C
       nop
  .L8008B788:
      lbu        $2, 0x21($29)
  .L8008B78C:
      beqz       $2, .L8008B79C
       nop
      lw         $2, 0x18($29)
      sw         $2, 0x4C($16)
  .L8008B79C:
      lbu        $2, 0x21($29)
  .L8008B7A0:
      bnez       $2, .L8008B7B4
       addu      $3, $0, $0
      lbu        $2, 0x20($29)
      beqz       $2, .L8008B7B8
       nop
  .L8008B7B4:
      addiu      $3, $0, 0x1
  .L8008B7B8:
      lw         $31, 0x2C($29)
      lw         $16, 0x28($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x30
.end func_8008B71C

.globl func_8008B7CC
.ent func_8008B7CC
func_8008B7CC:
      addiu      $29, $29, -0x40
      sw         $18, 0x28($29)
      addu       $18, $4, $0
      sw         $31, 0x38($29)
      sw         $21, 0x34($29)
      sw         $20, 0x30($29)
      sw         $19, 0x2C($29)
      sw         $17, 0x24($29)
      sw         $16, 0x20($29)
      lw         $2, 0x4($18)
      addu       $19, $5, $0
      lw         $3, 0x0($2)
      addu       $21, $0, $0
      lw         $2, 0x8($3)
      bnez       $2, .L8008B818
       addu      $20, $21, $0
      lw         $2, 0xC($3)
      beqz       $2, .L8008B8D8
       andi      $2, $20, 0xFF
  .L8008B818:
      beqz       $19, .L8008B850
       addu      $4, $19, $0
      jal        func_80058268
       addu      $5, $0, $0
      addu       $4, $19, $0
      lw         $17, 0x4($2)
      jal        func_80058268
       addu      $5, $0, $0
      lw         $3, 0x88($18)
      lw         $4, 0x80($18)
      lw         $2, 0x8($2)
      subu       $3, $3, $4
      j          .L8008B858
       subu      $16, $2, $3
  .L8008B850:
      addu       $17, $0, $0
      addu       $16, $17, $0
  .L8008B858:
      addu       $4, $18, $0
      jal        func_80080418
       addu      $5, $17, $0
      addu       $17, $2, $0
      addu       $4, $18, $0
      jal        func_80080440
       addu      $5, $16, $0
      lw         $3, 0x4C($18)
      bne        $17, $3, .L8008B88C
       addu      $16, $2, $0
      lw         $2, 0x50($18)
      beq        $16, $2, .L8008B8D8
       andi      $2, $20, 0xFF
  .L8008B88C:
      addu       $4, $18, $0
      sw         $17, 0x4C($18)
      jal        func_8008AA4C
       sw        $16, 0x50($18)
      addu       $4, $18, $0
      addiu      $5, $0, 0x1
      addu       $20, $5, $0
      addu       $21, $5, $0
      lw         $2, 0x4($18)
      addu       $6, $5, $0
      lw         $2, 0x0($2)
      addiu      $7, $29, 0x18
      sw         $19, 0x6C($2)
      addu       $2, $5, $0
      jal        func_80077CD0
       sw        $2, 0x10($29)
      jal        func_800809B8
       addu      $4, $18, $0
      andi       $2, $20, 0xFF
  .L8008B8D8:
      bnez       $2, .L8008B8EC
       addu      $3, $0, $0
      andi       $2, $21, 0xFF
      beqz       $2, .L8008B8F0
       nop
  .L8008B8EC:
      addiu      $3, $0, 0x1
  .L8008B8F0:
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
.end func_8008B7CC

.globl func_8008B918
.ent func_8008B918
func_8008B918:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x18($29)
      jal        func_8008B71C
       sw        $17, 0x14($29)
      andi       $17, $2, 0xFF
      beqz       $17, .L8008B950
       addu      $2, $17, $0
      jal        func_8008AA4C
       addu      $4, $16, $0
      jal        func_800809B8
       addu      $4, $16, $0
      addu       $2, $17, $0
  .L8008B950:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008B918

.globl func_8008B964
.ent func_8008B964
func_8008B964:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $31, 0x24($29)
      lw         $3, 0x64($16)
      addiu      $2, $0, 0x2
      beq        $3, $2, .L8008B9A8
       nop
      lw         $2, 0x4($16)
      beqz       $2, .L8008B9BC
       nop
      lw         $2, 0x0($2)
      beqz       $2, .L8008B9B8
       nop
      lbu        $2, 0xD9($2)
      beqz       $2, .L8008B9B8
       nop
  .L8008B9A8:
      jal        func_8008B620
       addu      $4, $16, $0
      j          .L8008BAF8
       nop
  .L8008B9B8:
      lw         $2, 0x4($16)
  .L8008B9BC:
      lw         $2, 0x0($2)
      lw         $6, 0x1C($2)
      lw         $7, 0x20($2)
      lw         $8, 0x24($2)
      lw         $9, 0x28($2)
      sw         $6, 0x10($29)
      sw         $7, 0x14($29)
      sw         $8, 0x18($29)
      sw         $9, 0x1C($29)
      lw         $4, 0x4($16)
      lw         $3, 0x1C($29)
      lw         $2, 0x14($29)
      lw         $4, 0x0($4)
      subu       $3, $3, $2
      lw         $5, 0x9C($4)
      lw         $2, 0x18($4)
      lh         $5, 0x3A($5)
      subu       $2, $2, $3
      addu       $2, $2, $5
      sw         $2, 0xC($4)
      lw         $2, 0x4($16)
      lw         $3, 0x0($2)
      lw         $2, 0xC($3)
      bltzl      $2, .L8008BA20
       sw        $0, 0xC($3)
  .L8008BA20:
      lw         $2, 0x4($16)
      lw         $2, 0x0($2)
      lw         $3, 0x18($2)
      blezl      $3, .L8008BA40
       addu      $2, $0, $0
      lw         $2, 0x9C($2)
      lh         $2, 0x3A($2)
      addu       $2, $3, $2
  .L8008BA40:
      lui        $1, %hi(D_800F1770)
      ldc1       $f0, %lo(D_800F1770)($1)
      mtc1       $2, $f12
      cvt.d.w    $f12, $f12
      div.d      $f12, $f12, $f0
      jal        func_8008C2FC
       cvt.s.d   $f12, $f12
      lw         $2, 0x4($16)
      lw         $2, 0x0($2)
      trunc.w.s  $f2, $f0
      swc1       $f2, 0x10($2)
      lw         $2, 0x4($16)
      lw         $3, 0x0($2)
      lw         $2, 0x10($3)
      bnez       $2, .L8008BA84
       addiu     $2, $0, 0x1
      sw         $2, 0x10($3)
  .L8008BA84:
      lw         $2, 0x4($16)
      lw         $3, 0x0($2)
      lw         $2, 0x4C($16)
      lw         $3, 0xC($3)
      slt        $2, $3, $2
      bnel       $2, $0, .L8008BAA0
       sw        $3, 0x4C($16)
  .L8008BAA0:
      lw         $2, 0x4($16)
      lw         $3, 0x18($29)
      lw         $5, 0x0($2)
      lw         $4, 0x10($29)
      lw         $2, 0x14($5)
      subu       $3, $3, $4
      subu       $2, $2, $3
      sw         $2, 0x8($5)
      lw         $2, 0x4($16)
      lw         $3, 0x0($2)
      lw         $2, 0x8($3)
      bltzl      $2, .L8008BAD4
       sw        $0, 0x8($3)
  .L8008BAD4:
      lw         $2, 0x4($16)
      lw         $3, 0x0($2)
      lw         $2, 0x50($16)
      lw         $3, 0x8($3)
      slt        $2, $3, $2
      bnel       $2, $0, .L8008BAF0
       sw        $3, 0x50($16)
  .L8008BAF0:
      jal        func_8008AA4C
       addu      $4, $16, $0
  .L8008BAF8:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8008B964

.globl func_8008BB08
.ent func_8008BB08
func_8008BB08:
      addiu      $29, $29, -0x18
      addiu      $4, $4, 0x38
      sw         $31, 0x10($29)
      jal        func_8008A290
       addu      $6, $4, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008BB08

.globl func_8008BB28
.ent func_8008BB28
func_8008BB28:
      jr         $31
       addu      $2, $0, $0
.end func_8008BB28

.globl func_8008BB30
.ent func_8008BB30
func_8008BB30:
      lw         $3, 0x8($4)
      lw         $2, 0x84($3)
      bnez       $2, .L8008BB8C
       nop
      lw         $2, 0x8C($3)
      bnez       $2, .L8008BB8C
       nop
      lw         $2, 0x88($3)
      bnez       $2, .L8008BB8C
       nop
      lw         $2, 0x80($3)
      bnez       $2, .L8008BB8C
       addiu     $2, $0, 0x1
      lw         $6, 0x0($5)
      lw         $7, 0x4($5)
      lw         $8, 0x8($5)
      lw         $9, 0xC($5)
      sw         $6, 0x80($3)
      sw         $7, 0x84($3)
      sw         $8, 0x88($3)
      sw         $9, 0x8C($3)
      jr         $31
       nop
  .L8008BB8C:
      jr         $31
       addiu     $2, $0, -0x2
.end func_8008BB30

.globl func_8008BB94
.ent func_8008BB94
func_8008BB94:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      addu       $2, $4, $0
      beqz       $2, .L8008BBE4
       addu      $4, $5, $0
      beqz       $4, .L8008BBE4
       nop
      lw         $3, 0x80($2)
      lw         $7, 0x84($2)
      lw         $8, 0x88($2)
      lw         $9, 0x8C($2)
      sw         $3, 0x0($4)
      sw         $7, 0x4($4)
      sw         $8, 0x8($4)
      sw         $9, 0xC($4)
      lw         $5, 0x0($4)
      lw         $6, 0x4($4)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
  .L8008BBE4:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008BB94

.globl func_8008BBF0
.ent func_8008BBF0
func_8008BBF0:
      jr         $31
       nop
.end func_8008BBF0

.globl func_8008BBF8
.ent func_8008BBF8
func_8008BBF8:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      bnez       $17, .L8008BC3C
       sw        $31, 0x18($29)
      lw         $2, 0x10($16)
      beql       $2, $0, .L8008BC40
       sw        $17, 0x28($16)
      lw         $2, 0x28($16)
      beql       $2, $0, .L8008BC40
       sw        $17, 0x28($16)
      jal        func_8007C140
       nop
      jal        func_8008BE90
       addu      $4, $16, $0
  .L8008BC3C:
      sw         $17, 0x28($16)
  .L8008BC40:
      sw         $0, 0x10($16)
      sw         $0, 0x80($16)
      sw         $0, 0x84($16)
      sw         $0, 0x88($16)
      sw         $0, 0x8C($16)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008BBF8

.globl func_8008BC6C
.ent func_8008BC6C
func_8008BC6C:
      addiu      $29, $29, -0x88
      sw         $18, 0x80($29)
      addu       $18, $4, $0
      sw         $31, 0x84($29)
      sw         $17, 0x7C($29)
      sw         $16, 0x78($29)
      lw         $8, 0x80($18)
      lw         $9, 0x84($18)
      lw         $10, 0x88($18)
      lw         $11, 0x8C($18)
      sw         $8, 0x38($29)
      sw         $9, 0x3C($29)
      sw         $10, 0x40($29)
      sw         $11, 0x44($29)
      lw         $2, 0x34($18)
      andi       $2, $2, 0x4
      beql       $2, $0, .L8008BCDC
       addu      $4, $18, $0
      jal        func_8007A084
       nop
      bnez       $2, .L8008BCDC
       addu      $4, $18, $0
      lw         $2, 0x44($29)
      lw         $3, 0x40($29)
      addiu      $2, $2, 0x2
      addiu      $3, $3, 0x2
      sw         $2, 0x44($29)
      sw         $3, 0x40($29)
  .L8008BCDC:
      addiu      $5, $29, 0x38
      jal        func_8008C288
       addu      $6, $0, $0
      lui        $2, %hi(func_8008B068)
      lw         $7, 0x28($18)
      addiu      $2, $2, %lo(func_8008B068)
      sw         $2, 0x4C($29)
      addiu      $2, $29, 0x48
      sw         $0, 0x48($29)
      sw         $0, 0x54($29)
      sw         $0, 0x58($29)
      sw         $0, 0x50($29)
      sw         $0, 0x10($29)
      sw         $2, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      lw         $2, 0x38($29)
      sw         $2, 0x20($29)
      lw         $2, 0x3C($29)
      sw         $2, 0x24($29)
      lw         $2, 0x40($29)
      lw         $3, 0x38($29)
      subu       $2, $2, $3
      sw         $2, 0x28($29)
      lw         $2, 0x44($29)
      lw         $3, 0x3C($29)
      addiu      $16, $18, 0xB8
      sw         $18, 0x30($29)
      subu       $2, $2, $3
      sw         $2, 0x2C($29)
      lw         $4, 0x0($7)
      lw         $5, 0x68($7)
      jal        func_8002DA40
       addu      $6, $16, $0
      bnez       $2, .L8008BE78
       addu      $2, $0, $0
      lw         $2, 0x34($18)
      andi       $2, $2, 0x4
      beqz       $2, .L8008BDCC
       addu      $4, $18, $0
      jal        func_8007A084
       addu      $4, $18, $0
      bnel       $2, $0, .L8008BDCC
       addu      $4, $18, $0
      addu       $4, $16, $0
      jal        func_8002E904
       addiu     $5, $29, 0x68
      addu       $4, $16, $0
      lw         $2, 0x70($29)
      lw         $3, 0x74($29)
      addiu      $2, $2, -0x2
      addiu      $3, $3, -0x2
      sw         $2, 0x70($29)
      sw         $3, 0x74($29)
      sw         $3, 0x10($29)
      lw         $5, 0x68($29)
      lw         $6, 0x6C($29)
      jal        func_8002E92C
       addu      $7, $2, $0
      addu       $4, $18, $0
  .L8008BDCC:
      jal        func_8008C060
       sw        $0, 0x1A8($18)
      addu       $4, $16, $0
      sw         $0, 0x34($2)
      lui        $2, %hi(D_80137AD8)
      lw         $6, %lo(D_80137AD8)($2)
      jal        func_8008A484
       addiu     $5, $0, 0x1
      addu       $4, $16, $0
      lui        $2, %hi(D_80124F80)
      lw         $6, %lo(D_80124F80)($2)
      addu       $5, $0, $0
      jal        func_8008A484
       addiu     $6, $6, 0xC
      jal        func_8002DC48
       addu      $4, $16, $0
      lui        $17, %hi(D_800FEF74)
      lbu        $2, %lo(D_800FEF74)($17)
      addiu      $3, $0, 0x1
      beq        $2, $3, .L8008BE2C
       lui       $2, %hi(D_800FEF75)
      lbu        $2, %lo(D_800FEF75)($2)
      bnel       $2, $3, .L8008BE3C
       lui       $17, %hi(D_800FEF77)
  .L8008BE2C:
      jal        func_80003964
       nop
      sb         $0, %lo(D_800FEF74)($17)
      lui        $17, %hi(D_800FEF77)
  .L8008BE3C:
      lbu        $2, %lo(D_800FEF77)($17)
      beqz       $2, .L8008BE54
       nop
      jal        func_8001CACC
       addiu     $4, $0, 0x32FA
      sb         $0, %lo(D_800FEF77)($17)
  .L8008BE54:
      jal        func_8002DD40
       addu      $4, $16, $0
      addu       $4, $16, $0
      lui        $2, %hi(D_80137ADC)
      lw         $6, %lo(D_80137ADC)($2)
      jal        func_8008A484
       addu      $5, $0, $0
      addiu      $2, $0, 0x1
      sw         $16, 0x10($18)
  .L8008BE78:
      lw         $31, 0x84($29)
      lw         $18, 0x80($29)
      lw         $17, 0x7C($29)
      lw         $16, 0x78($29)
      jr         $31
       addiu     $29, $29, 0x88
.end func_8008BC6C

.globl func_8008BE90
.ent func_8008BE90
func_8008BE90:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x1A8($16)
      beqz       $4, .L8008BEB8
       nop
      jal        func_8008A91C
       nop
      sw         $0, 0x1A8($16)
  .L8008BEB8:
      jal        func_8002DC1C
       addiu     $4, $16, 0xB8
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      sltiu      $2, $2, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008BE90

.globl func_8008BED4
.ent func_8008BED4
func_8008BED4:
      addiu      $29, $29, -0x50
      sw         $17, 0x44($29)
      addu       $17, $4, $0
      sw         $16, 0x40($29)
      addiu      $16, $17, 0xB8
      addu       $4, $16, $0
      sw         $18, 0x48($29)
      addu       $18, $5, $0
      sw         $31, 0x4C($29)
      jal        func_8002E95C
       addiu     $5, $29, 0x18
      bnez       $2, .L8008BF40
       addu      $4, $17, $0
      andi       $2, $18, 0xFF
      xori       $2, $2, 0x1
      sltiu      $2, $2, 0x1
      sw         $2, 0x24($29)
      lw         $8, 0x24($29)
      lw         $9, 0x28($29)
      sw         $8, 0x10($29)
      sw         $9, 0x14($29)
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      lw         $7, 0x20($29)
      jal        func_8002E98C
       addu      $4, $16, $0
      addu       $4, $17, $0
  .L8008BF40:
      addiu      $16, $29, 0x30
      jal        func_8008BB94
       addu      $5, $16, $0
      addu       $4, $17, $0
      addu       $5, $16, $0
      jal        func_8008BB08
       addiu     $6, $0, 0x1
      andi       $3, $18, 0xFF
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8008BF74
       nop
      jal        func_800809B8
       addu      $4, $17, $0
  .L8008BF74:
      lw         $31, 0x4C($29)
      lw         $18, 0x48($29)
      lw         $17, 0x44($29)
      lw         $16, 0x40($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_8008BED4

.globl func_8008BF8C
.ent func_8008BF8C
func_8008BF8C:
      jr         $31
       addu      $2, $0, $0
.end func_8008BF8C

.globl func_8008BF94
.ent func_8008BF94
func_8008BF94:
      jr         $31
       nop
.end func_8008BF94

.globl func_8008BF9C
.ent func_8008BF9C
func_8008BF9C:
      jr         $31
       nop
.end func_8008BF9C

.globl func_8008BFA4
.ent func_8008BFA4
func_8008BFA4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800779CC
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008BFA4

.globl func_8008BFC0
.ent func_8008BFC0
func_8008BFC0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80077AD0
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008BFC0

.globl func_8008BFDC
.ent func_8008BFDC
func_8008BFDC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8008B2F4
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008BFDC

.globl func_8008BFF8
.ent func_8008BFF8
func_8008BFF8:
      addiu      $29, $29, -0x18
      sltiu      $2, $5, 0xE
      beqz       $2, .L8008C04C
       sw        $31, 0x10($29)
      lui        $2, %hi(jtbl_800F1778)
      addiu      $2, $2, %lo(jtbl_800F1778)
      sll        $3, $5, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8008C024
.L8008C024:
      lui        $3, %hi(D_80137168)
      addiu      $2, $0, 0x1
      jal        func_8008B408
       sb        $2, %lo(D_80137168)($3)
      j          .L8008C04C
       nop
  .globl .L8008C03C
.L8008C03C:
      lui        $3, %hi(D_80137168)
      addiu      $2, $0, 0x1
      jal        func_8008B508
       sb        $2, %lo(D_80137168)($3)
  .L8008C04C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008BFF8

.globl func_8008C058
.ent func_8008C058
func_8008C058:
      jr         $31
       addiu     $2, $0, 0x1
.end func_8008C058

.globl func_8008C060
.ent func_8008C060
func_8008C060:
      jr         $31
       addiu     $2, $4, 0x124
.end func_8008C060

.globl func_8008C068
.ent func_8008C068
func_8008C068:
      jr         $31
       addu      $2, $0, $0
.end func_8008C068

.globl func_8008C070
.ent func_8008C070
func_8008C070:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      sw         $31, 0x1C($29)
      sw         $16, 0x10($29)
      lw         $16, 0x8($4)
      lw         $5, 0x10($17)
      beqz       $16, .L8008C0A8
       addiu     $18, $0, 0x1
      lw         $6, 0x60($16)
      addiu      $2, $0, 0x3
      beq        $6, $2, .L8008C0B0
       addiu     $2, $0, 0x7
  .L8008C0A8:
      j          .L8008C214
       addiu     $2, $0, 0x1
  .L8008C0B0:
      lw         $3, 0x4($17)
      beq        $3, $2, .L8008C0F0
       sltiu     $2, $3, 0x8
      beqz       $2, .L8008C0DC
       sltiu     $2, $3, 0x3
      beqz       $2, .L8008C214
       addu      $2, $18, $0
      beqz       $3, .L8008C214
       nop
      j          .L8008C178
       nop
  .L8008C0DC:
      addiu      $2, $0, 0x8
      beq        $3, $2, .L8008C1D8
       addu      $2, $18, $0
      j          .L8008C214
       nop
  .L8008C0F0:
      lw         $4, 0x14($5)
      lw         $5, 0x10($5)
      beqz       $4, .L8008C138
       nop
      lw         $2, 0x60($4)
      bne        $2, $6, .L8008C138
       lui       $3, (0x48544D56 >> 16)
      lw         $2, 0x0($4)
      ori        $3, $3, (0x48544D56 & 0xFFFF)
      bne        $2, $3, .L8008C138
       nop
      lw         $2, 0x90($4)
      bne        $5, $2, .L8008C138
       nop
      jal        func_80089D5C
       nop
      j          .L8008C214
       addu      $2, $18, $0
  .L8008C138:
      beqz       $16, .L8008C210
       addiu     $2, $0, 0x3
      lw         $3, 0x60($16)
      bne        $3, $2, .L8008C214
       addu      $2, $18, $0
      lw         $2, 0x1A8($16)
      bne        $2, $5, .L8008C210
       addu      $18, $0, $0
      jal        func_80077B54
       addu      $4, $16, $0
      addu       $4, $16, $0
      addu       $5, $17, $0
      jal        func_8008A7C0
       addu      $6, $2, $0
      j          .L8008C210
       addiu     $18, $0, 0x1
  .L8008C178:
      lw         $4, 0x20($16)
      beqz       $4, .L8008C190
       nop
      lw         $2, 0xC($16)
      bne        $4, $2, .L8008C1C8
       nop
  .L8008C190:
      jal        func_80077B54
       addu      $4, $16, $0
      addu       $4, $16, $0
      addu       $5, $17, $0
      jal        func_8008A7C0
       addu      $6, $2, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L8008C214
       addu      $2, $18, $0
      addu       $4, $16, $0
      jal        func_8007848C
       addu      $5, $17, $0
      j          .L8008C210
       addu      $18, $2, $0
  .L8008C1C8:
      jal        func_8008C070
       addu      $5, $17, $0
      j          .L8008C210
       addu      $18, $2, $0
  .L8008C1D8:
      addu       $4, $16, $0
      addiu      $17, $17, 0x14
      addu       $5, $17, $0
      jal        func_8008BB08
       addiu     $6, $0, 0x1
      jal        func_800809B8
       addu      $4, $16, $0
      lw         $2, 0x4($16)
      lw         $2, 0x0($2)
      lbu        $2, 0xD9($2)
      beqz       $2, .L8008C210
       addu      $4, $16, $0
      jal        func_8008A940
       addu      $5, $17, $0
  .L8008C210:
      addu       $2, $18, $0
  .L8008C214:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008C070

.globl func_8008C22C
.ent func_8008C22C
func_8008C22C:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      jal        func_8002EA10
       addiu     $5, $29, 0x10
      bnez       $2, .L8008C278
       nop
      jal        func_8002E12C
       addu      $4, $16, $0
      addu       $4, $2, $0
      jal        func_8002EA10
       addiu     $5, $29, 0x14
      bnez       $2, .L8008C278
       nop
      lw         $4, 0x14($29)
      lw         $5, 0x10($29)
      jal        func_8008AC8C
       nop
  .L8008C278:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008C22C

.globl func_8008C288
.ent func_8008C288
func_8008C288:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      sw         $31, 0x1C($29)
      jal        func_8007A084
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L8008C2E4
       andi      $17, $17, 0xFF
      lw         $5, 0x80($16)
      bnel       $17, $0, .L8008C2C0
       negu      $5, $5
  .L8008C2C0:
      lw         $6, 0x84($16)
      bnel       $17, $0, .L8008C2CC
       negu      $6, $6
  .L8008C2CC:
      jal        func_8008A204
       addu      $4, $18, $0
      addu       $4, $16, $0
      addu       $5, $18, $0
      jal        func_8008C288
       addu      $6, $17, $0
  .L8008C2E4:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008C288

.globl func_8008C2FC
.ent func_8008C2FC
func_8008C2FC:
      trunc.w.s  $f2, $f12
      mfc1       $2, $f2
      mtc1       $2, $f0
      cvt.s.w    $f0, $f0
      c.eq.s     $f0, $f12
      nop
      bc1t       .L8008C324
       addiu     $2, $2, 0x1
      mtc1       $2, $f0
      cvt.s.w    $f0, $f0
  .L8008C324:
      jr         $31
       nop
.end func_8008C2FC

.globl func_8008C32C
.ent func_8008C32C
func_8008C32C:
      lw         $17, 0x4($2)
      jal        func_80058D68
       addu      $5, $0, $0
      lw         $3, 0x88($18)
      lw         $4, 0x80($18)
.end func_8008C32C

.globl func_8008C340
.ent func_8008C340
func_8008C340:
      addiu      $29, $29, -0xC0
      lw         $2, 0xE4($29)
      sw         $17, 0xAC($29)
      addu       $17, $4, $0
      sw         $19, 0xB4($29)
      lw         $19, 0xD0($29)
      lbu        $4, 0xDF($29)
      lbu        $8, 0xE3($29)
      sw         $31, 0xB8($29)
      sw         $18, 0xB0($29)
      sw         $16, 0xA8($29)
      lw         $3, 0x4($2)
      addu       $9, $5, $0
      sw         $3, 0xA4($29)
      lw         $3, 0x0($2)
      sltiu      $2, $3, 0x2001
      bnez       $2, .L8008C38C
       addu      $10, $6, $0
      addiu      $3, $0, 0x2000
  .L8008C38C:
      lui        $2, %hi(func_8008C70C)
      addiu      $2, $2, %lo(func_8008C70C)
      sw         $3, 0xA0($29)
      sb         $0, 0x214($17)
      sw         $2, 0x50($29)
      lui        $2, %hi(func_8008C6D4)
      addiu      $2, $2, %lo(func_8008C6D4)
      sw         $2, 0x5C($29)
      lui        $2, %hi(func_8008C6F0)
      addiu      $2, $2, %lo(func_8008C6F0)
      sw         $2, 0x60($29)
      lui        $2, %hi(func_8008CAE8)
      addiu      $2, $2, %lo(func_8008CAE8)
      sw         $2, 0x70($29)
      lui        $2, %hi(func_8008CB50)
      addiu      $2, $2, %lo(func_8008CB50)
      sw         $2, 0x74($29)
      lui        $2, %hi(func_8008CB88)
      addiu      $2, $2, %lo(func_8008CB88)
      sw         $2, 0x78($29)
      lui        $2, %hi(func_8008CB98)
      addiu      $2, $2, %lo(func_8008CB98)
      sw         $2, 0x7C($29)
      lui        $2, %hi(func_8008CBBC)
      addiu      $2, $2, %lo(func_8008CBBC)
      sw         $2, 0x80($29)
      lui        $2, %hi(func_8008CBC8)
      addiu      $2, $2, %lo(func_8008CBC8)
      sw         $2, 0x84($29)
      lui        $2, %hi(func_8008CD08)
      addiu      $2, $2, %lo(func_8008CD08)
      sw         $2, 0x90($29)
      lui        $2, %hi(func_8008CDB0)
      addiu      $2, $2, %lo(func_8008CDB0)
      sw         $2, 0x94($29)
      lui        $2, %hi(func_8008CDF0)
      addiu      $2, $2, %lo(func_8008CDF0)
      sw         $2, 0x98($29)
      addiu      $2, $29, 0x50
      sw         $0, 0x64($29)
      sw         $0, 0x68($29)
      sw         $0, 0x54($29)
      sw         $0, 0x58($29)
      sw         $0, 0x88($29)
      sw         $0, 0x8C($29)
      sw         $2, 0x10($29)
      addiu      $2, $29, 0x70
      sw         $2, 0x14($29)
      addiu      $2, $29, 0x88
      sw         $2, 0x18($29)
      addiu      $2, $17, 0x1C8
      sw         $2, 0x20($29)
      lw         $2, 0xD4($29)
      addu       $5, $17, $0
      sw         $2, 0x38($29)
      lw         $2, 0xD8($29)
      andi       $18, $4, 0xFF
      sw         $0, 0x1C($29)
      sw         $0, 0x24($29)
      sw         $7, 0x28($29)
      sw         $10, 0x2C($29)
      sw         $0, 0x30($29)
      sw         $0, 0x34($29)
      sw         $2, 0x3C($29)
      addiu      $2, $17, 0x1E8
      sw         $2, 0x40($29)
      andi       $2, $8, 0xFF
      sw         $18, 0x44($29)
      sw         $2, 0x48($29)
      lw         $2, 0xE8($29)
      addu       $6, $9, $0
      sw         $2, 0x4C($29)
      lw         $4, 0x0($6)
      jal        func_80033C60
       addu      $7, $0, $0
      addu       $16, $2, $0
      bnez       $16, .L8008C524
       nop
      bnel       $19, $0, .L8008C4CC
       sw        $19, 0x1D8($17)
  .L8008C4CC:
      addu       $4, $17, $0
      addiu      $5, $29, 0xA0
      addu       $6, $0, $0
      jal        func_800346D8
       addiu     $7, $0, 0x1
      addu       $16, $2, $0
      addu       $4, $17, $0
      jal        func_80034F80
       addu      $5, $0, $0
      jal        func_80032904
       or        $16, $16, $2
      beqz       $18, .L8008C510
       addu      $4, $17, $0
      jal        func_80033FF0
       addu      $5, $0, $0
      j          .L8008C520
       or        $16, $16, $2
  .L8008C510:
      lw         $5, 0x10($2)
      jal        func_80034F28
       addu      $4, $17, $0
      or         $16, $16, $2
  .L8008C520:
      addu       $2, $16, $0
  .L8008C524:
      lw         $31, 0xB8($29)
      lw         $19, 0xB4($29)
      lw         $18, 0xB0($29)
      lw         $17, 0xAC($29)
      lw         $16, 0xA8($29)
      jr         $31
       addiu     $29, $29, 0xC0
.end func_8008C340

.globl func_8008C540
.ent func_8008C540
func_8008C540:
      addiu      $29, $29, -0x38
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $16, 0x20($29)
      addu       $16, $5, $0
      sw         $19, 0x2C($29)
      addu       $19, $0, $0
      sw         $18, 0x28($29)
      addiu      $18, $0, 0x1
      sw         $31, 0x30($29)
      jal        func_8002EA48
       addiu     $5, $29, 0x10
      lw         $3, 0x10($29)
      addiu      $2, $0, 0x1
      bnel       $3, $2, .L8008C6B8
       addu      $2, $19, $0
      addu       $4, $17, $0
      addu       $5, $16, $0
      jal        func_800351A0
       addu      $6, $2, $0
      addu       $3, $2, $0
      addiu      $2, $3, -0x1D
      sltiu      $2, $2, 0x2
      beqz       $2, .L8008C69C
       addiu     $2, $0, 0x3
      beq        $16, $2, .L8008C614
       addiu     $2, $0, 0x4
      bne        $16, $2, .L8008C684
       addiu     $2, $3, -0x1D
      lw         $16, 0x1BC($17)
      addu       $4, $17, $0
      addiu      $5, $29, 0x14
      jal        func_80034914
       addiu     $6, $29, 0x18
      addu       $3, $2, $0
      bnez       $3, .L8008C684
       addiu     $2, $3, -0x1D
      addu       $4, $17, $0
      addiu      $5, $0, 0x2
      jal        func_800351A0
       addiu     $6, $0, 0x1
      addu       $3, $2, $0
      bnez       $3, .L8008C684
       addiu     $2, $3, -0x1D
      addiu      $16, $16, 0x1
      addu       $4, $17, $0
      lw         $5, 0x14($29)
      addiu      $7, $0, 0x1
      sw         $16, 0x1BC($17)
      lw         $6, 0x18($29)
      addu       $5, $5, $7
      j          .L8008C670
       addu      $6, $6, $7
  .L8008C614:
      lw         $16, 0x1BC($17)
      addu       $4, $17, $0
      addiu      $5, $29, 0x14
      jal        func_80034914
       addiu     $6, $29, 0x18
      addu       $3, $2, $0
      bnez       $3, .L8008C684
       addiu     $2, $3, -0x1D
      addu       $4, $17, $0
      addiu      $5, $0, 0x1
      jal        func_800351A0
       addu      $6, $5, $0
      addu       $3, $2, $0
      bnez       $3, .L8008C684
       addiu     $2, $3, -0x1D
      addiu      $16, $16, -0x1
      addu       $4, $17, $0
      lw         $5, 0x14($29)
      addiu      $7, $0, 0x1
      sw         $16, 0x1BC($17)
      lw         $6, 0x18($29)
      addiu      $5, $5, -0x1
      addiu      $6, $6, -0x1
  .L8008C670:
      sw         $5, 0x14($29)
      jal        func_80034930
       sw        $6, 0x18($29)
      addu       $3, $2, $0
      addiu      $2, $3, -0x1D
  .L8008C684:
      sltiu      $2, $2, 0x2
      beqz       $2, .L8008C6A0
       andi      $2, $18, 0xFF
      jal        func_8002DFAC
       addu      $4, $17, $0
      addu       $18, $0, $0
  .L8008C69C:
      andi       $2, $18, 0xFF
  .L8008C6A0:
      beqz       $2, .L8008C6B4
       addu      $4, $17, $0
      jal        func_8008D60C
       addu      $5, $0, $0
      addu       $19, $17, $0
  .L8008C6B4:
      addu       $2, $19, $0
  .L8008C6B8:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8008C540

.globl func_8008C6D4
.ent func_8008C6D4
func_8008C6D4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8002EA2C
       addiu     $5, $0, 0x1
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008C6D4

.globl func_8008C6F0
.ent func_8008C6F0
func_8008C6F0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8002EA2C
       addu      $5, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008C6F0

.globl func_8008C70C
.ent func_8008C70C
func_8008C70C:
      addiu      $29, $29, -0x38
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $19, 0x2C($29)
      addu       $19, $5, $0
      sw         $17, 0x24($29)
      addu       $17, $0, $0
      sw         $31, 0x30($29)
      jal        func_8002E12C
       sw        $18, 0x28($29)
      beqz       $2, .L8008C8FC
       addiu     $18, $0, 0x1
      lhu        $3, 0x0($19)
      lhu        $5, 0xC($19)
      beq        $3, $18, .L8008C75C
       addiu     $2, $0, 0xC
      beq        $3, $2, .L8008C8D4
       addu      $2, $17, $0
      j          .L8008C900
       nop
  .L8008C75C:
      lui        $2, (0xFFFF02F8 >> 16)
      ori        $2, $2, (0xFFFF02F8 & 0xFFFF)
      addu       $3, $5, $2
      sltiu      $2, $3, 0x27
      beqz       $2, .L8008C818
       lui       $2, %hi(jtbl_800F17C0)
      addiu      $2, $2, %lo(jtbl_800F17C0)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8008C78C
.L8008C78C:
      addu       $4, $16, $0
      andi       $18, $5, 0xFFFF
      addu       $5, $18, $0
      jal        func_80034B80
       addiu     $6, $29, 0x10
      lw         $2, 0x10($29)
      andi       $2, $2, 0x10
      beqz       $2, .L8008C900
       addu      $2, $17, $0
      jal        func_8002DF84
       addu      $4, $16, $0
      addu       $4, $16, $0
      jal        func_8008C9B8
       addu      $5, $18, $0
      j          .L8008C8FC
       addu      $17, $16, $0
  .globl .L8008C7CC
.L8008C7CC:
      jal        func_8002DFAC
       addu      $4, $16, $0
      j          .L8008C900
       addu      $2, $17, $0
  .globl .L8008C7DC
.L8008C7DC:
      addu       $4, $16, $0
      j          .L8008C808
       addiu     $5, $0, 0x4
  .globl .L8008C7E8
.L8008C7E8:
      addu       $4, $16, $0
      j          .L8008C808
       addiu     $5, $0, 0x3
  .globl .L8008C7F4
.L8008C7F4:
      addu       $4, $16, $0
      j          .L8008C808
       addiu     $5, $0, 0x1
  .globl .L8008C800
.L8008C800:
      addu       $4, $16, $0
      addiu      $5, $0, 0x2
  .L8008C808:
      jal        func_8008C540
       nop
      j          .L8008C8FC
       addu      $17, $2, $0
  .globl .L8008C818
.L8008C818:
      addu       $4, $16, $0
      andi       $5, $5, 0xFFFF
      jal        func_80034B80
       addiu     $6, $29, 0x10
      lw         $2, 0x10($29)
      andi       $2, $2, 0x8
      beqz       $2, .L8008C8FC
       addu      $4, $16, $0
      jal        func_8002EA48
       addiu     $5, $29, 0x14
      jal        func_8002DF84
       addu      $4, $16, $0
      lw         $2, 0x10($29)
      andi       $2, $2, 0x1
      beqz       $2, .L8008C890
       addiu     $2, $0, 0x1
      lw         $3, 0x14($29)
      bne        $3, $2, .L8008C8FC
       addu      $17, $16, $0
      addu       $4, $16, $0
      jal        func_8002E8B0
       addiu     $5, $29, 0x18
      lw         $3, 0x18($29)
      addiu      $2, $0, 0x11
      beq        $3, $2, .L8008C890
       nop
      jal        func_800874F4
       addu      $4, $16, $0
      j          .L8008C8FC
       addu      $17, $16, $0
  .L8008C890:
      lwl        $8, 0xC($19)
      lwr        $8, 0xF($19)
      lwl        $9, 0x10($19)
      lwr        $9, 0x13($19)
      lh         $10, 0x14($19)
      swl        $8, 0x4($29)
      swr        $8, 0x7($29)
      swl        $9, 0x8($29)
      swr        $9, 0xB($29)
      sh         $10, 0xC($29)
      lw         $5, 0x4($29)
      lw         $6, 0x8($29)
      lw         $7, 0xC($29)
      jal        func_8008C91C
       addu      $4, $16, $0
      j          .L8008C8FC
       addu      $17, $16, $0
  .L8008C8D4:
      addu       $4, $16, $0
      jal        func_8002EA48
       addiu     $5, $29, 0x14
      lw         $2, 0x14($29)
      bne        $2, $18, .L8008C900
       addu      $2, $17, $0
      addu       $4, $16, $0
      jal        func_800350E4
       addu      $5, $0, $0
      addu       $17, $16, $0
  .L8008C8FC:
      addu       $2, $17, $0
  .L8008C900:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8008C70C

.globl func_8008C91C
.ent func_8008C91C
func_8008C91C:
      addiu      $29, $29, -0x30
      sw         $18, 0x28($29)
      addu       $18, $4, $0
      sw         $31, 0x2C($29)
      sw         $17, 0x24($29)
      jal        func_8002E12C
       sw        $16, 0x20($29)
      addu       $17, $2, $0
      beqz       $17, .L8008C99C
       addu      $4, $18, $0
      addiu      $5, $29, 0x10
      addiu      $3, $29, 0x18
      addiu      $16, $0, 0x1
      addu       $6, $0, $0
      lbu        $2, 0x35($29)
      addu       $7, $16, $0
      sw         $3, 0x14($29)
      sw         $16, 0x10($29)
      jal        func_800346D8
       sb        $2, 0x18($29)
      bne        $2, $16, .L8008C984
       nop
      lw         $4, 0x68($17)
      jal        func_8008DD9C
       addiu     $5, $0, 0x64
      addu       $2, $0, $0
  .L8008C984:
      bnez       $2, .L8008C9A0
       addu      $4, $18, $0
      jal        func_8008D60C
       addu      $5, $0, $0
      j          .L8008C9A0
       nop
  .L8008C99C:
      addiu      $2, $0, 0x16
  .L8008C9A0:
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8008C91C

.globl func_8008C9B8
.ent func_8008C9B8
func_8008C9B8:
      addiu      $29, $29, -0x38
      sw         $18, 0x30($29)
      addu       $18, $4, $0
      sw         $17, 0x2C($29)
      addu       $17, $5, $0
      addiu      $5, $29, 0x18
      addiu      $6, $29, 0x1C
      sw         $31, 0x34($29)
      jal        func_80034914
       sw        $16, 0x28($29)
      addu       $4, $2, $0
      bnez       $4, .L8008CACC
       ori       $2, $0, 0xFD08
      andi       $5, $17, 0xFFFF
      beq        $5, $2, .L8008CA0C
       addiu     $16, $0, 0x1
      ori        $2, $0, 0xFD2E
      beql       $5, $2, .L8008CA2C
       addu      $4, $18, $0
      j          .L8008CA6C
       addu      $16, $0, $0
  .L8008CA0C:
      lw         $3, 0x1C($29)
      lw         $2, 0x18($29)
      bnel       $3, $2, .L8008CA6C
       addu      $16, $0, $0
      beqz       $3, .L8008CA68
       addiu     $2, $3, -0x1
      j          .L8008CA6C
       sw        $2, 0x18($29)
  .L8008CA2C:
      jal        func_80034848
       addiu     $5, $29, 0x20
      addu       $4, $2, $0
      bnel       $4, $0, .L8008CA6C
       addu      $16, $0, $0
      lw         $3, 0x1C($29)
      lw         $2, 0x18($29)
      bnel       $3, $2, .L8008CA6C
       addu      $16, $0, $0
      lw         $2, 0x20($29)
      sltu       $2, $3, $2
      beqz       $2, .L8008CA68
       addiu     $2, $3, 0x1
      j          .L8008CA6C
       sw        $2, 0x1C($29)
  .L8008CA68:
      addu       $16, $0, $0
  .L8008CA6C:
      andi       $2, $16, 0xFF
      beqz       $2, .L8008CACC
       nop
      addu       $4, $18, $0
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      jal        func_80034930
       addiu     $7, $0, 0x1
      addu       $4, $2, $0
      bnez       $4, .L8008CACC
       addu      $6, $0, $0
      addu       $4, $18, $0
      addiu      $5, $29, 0x10
      addiu      $7, $0, 0x1
      sw         $0, 0x14($29)
      jal        func_800346D8
       sw        $0, 0x10($29)
      addu       $4, $2, $0
      bnez       $4, .L8008CACC
       nop
      addu       $4, $18, $0
      jal        func_8008D60C
       addu      $5, $0, $0
      addu       $4, $2, $0
  .L8008CACC:
      lw         $31, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x38
.end func_8008C9B8

.globl func_8008CAE8
.ent func_8008CAE8
func_8008CAE8:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      beqz       $17, .L8008CB20
       sw        $31, 0x18($29)
      addu       $4, $17, $0
      jal        func_800524E8
       addu      $5, $0, $0
      bnez       $2, .L8008CB24
       sw        $2, 0x0($16)
      j          .L8008CB3C
       addiu     $2, $0, 0x3
  .L8008CB20:
      sw         $0, 0x0($16)
  .L8008CB24:
      addu       $2, $0, $0
      addiu      $3, $0, 0x2000
      sw         $0, 0x8($16)
      sw         $17, 0xC($16)
      sw         $3, 0x10($16)
      sb         $0, 0x4($16)
  .L8008CB3C:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008CAE8

.globl func_8008CB50
.ent func_8008CB50
func_8008CB50:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $4, 0x0($16)
      sw         $0, 0x8($16)
      jal        func_80052540
       sw        $0, 0xC($16)
      sw         $0, 0x0($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008CB50

.globl func_8008CB88
.ent func_8008CB88
func_8008CB88:
      lw         $2, 0x8($4)
      sw         $2, 0x0($5)
      jr         $31
       addu      $2, $0, $0
.end func_8008CB88

.globl func_8008CB98
.ent func_8008CB98
func_8008CB98:
      lw         $2, 0x0($4)
      sw         $5, 0x18($4)
      addu       $5, $5, $6
      sw         $5, 0x1C($4)
      sw         $2, 0x0($7)
      addiu      $2, $0, 0x1
      sb         $2, 0x4($4)
      jr         $31
       addu      $2, $0, $0
.end func_8008CB98

.globl func_8008CBBC
.ent func_8008CBBC
func_8008CBBC:
      sb         $0, 0x4($4)
      jr         $31
       addu      $2, $0, $0
.end func_8008CBBC

.globl func_8008CBC8
.ent func_8008CBC8
func_8008CBC8:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      sw         $20, 0x20($29)
      addu       $20, $7, $0
      sw         $31, 0x24($29)
      beqz       $16, .L8008CC24
       sw        $18, 0x18($29)
      addu       $5, $19, $16
      lw         $2, 0x0($17)
      lw         $6, 0x8($17)
      addu       $4, $2, $19
      addu       $5, $2, $5
      subu       $6, $6, $19
      jal        func_80035780
       subu      $6, $6, $16
      lw         $2, 0x8($17)
      subu       $2, $2, $16
      sw         $2, 0x8($17)
  .L8008CC24:
      lw         $18, 0x0($20)
      lw         $5, 0x8($17)
      lw         $4, 0xC($17)
      addu       $16, $5, $18
      sltu       $2, $4, $16
      beqz       $2, .L8008CCA0
       nop
      lw         $3, 0x10($17)
      sltu       $2, $4, $3
      bnez       $2, .L8008CC58
       sltu      $2, $3, $16
      j          .L8008CCE8
       addiu     $2, $0, 0x1
  .L8008CC58:
      beqz       $2, .L8008CC6C
       srl       $16, $16, 10
      subu       $18, $3, $5
      addu       $16, $3, $0
      srl        $16, $16, 10
  .L8008CC6C:
      sltiu      $2, $16, 0x8
      bnel       $2, $0, .L8008CC78
       addiu     $16, $16, 0x1
  .L8008CC78:
      sll        $16, $16, 10
      addu       $5, $16, $0
      lw         $4, 0x0($17)
      jal        func_80052524
       addu      $6, $0, $0
      bnez       $2, .L8008CC9C
       sw        $2, 0x0($17)
      j          .L8008CCE8
       addiu     $2, $0, 0x3
  .L8008CC9C:
      sw         $16, 0xC($17)
  .L8008CCA0:
      blez       $18, .L8008CCE8
       addu      $2, $0, $0
      addu       $4, $19, $18
      lw         $5, 0x0($17)
      lw         $6, 0x8($17)
      addu       $4, $5, $4
      addu       $5, $5, $19
      jal        func_80035780
       subu      $6, $6, $19
      addu       $6, $18, $0
      lw         $4, 0x0($17)
      lw         $5, 0x4($20)
      jal        func_80013F00
       addu      $4, $4, $19
      lw         $2, 0x8($17)
      addu       $2, $2, $18
      sw         $2, 0x8($17)
      addu       $2, $0, $0
  .L8008CCE8:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8008CBC8

.globl func_8008CD08
.ent func_8008CD08
func_8008CD08:
      addu       $3, $5, $0
      addiu      $5, $5, -0x21
      andi       $5, $5, 0xFFFF
      sltiu      $5, $5, 0x5E
      beqz       $5, .L8008CD28
       sw        $0, 0x0($6)
      addiu      $2, $0, 0x8
      sw         $2, 0x0($6)
  .L8008CD28:
      andi       $4, $3, 0xFFFF
      ori        $2, $0, 0xFD20
      bne        $4, $2, .L8008CD48
       ori       $2, $0, 0xFD09
      lw         $2, 0x0($6)
      ori        $2, $2, 0xA
      sw         $2, 0x0($6)
      ori        $2, $0, 0xFD09
  .L8008CD48:
      bne        $4, $2, .L8008CD60
       ori       $2, $0, 0xFD0D
      lw         $2, 0x0($6)
      ori        $2, $2, 0x10
      sw         $2, 0x0($6)
      ori        $2, $0, 0xFD0D
  .L8008CD60:
      beq        $4, $2, .L8008CD70
       addiu     $2, $0, 0xD
      bne        $4, $2, .L8008CD80
       addiu     $2, $3, 0x2F8
  .L8008CD70:
      lw         $2, 0x0($6)
      ori        $2, $2, 0x9
      sw         $2, 0x0($6)
      addiu      $2, $3, 0x2F8
  .L8008CD80:
      andi       $2, $2, 0xFFFF
      sltiu      $2, $2, 0x2
      bnez       $2, .L8008CD9C
       andi      $3, $3, 0xFFFF
      ori        $2, $0, 0xFD2E
      bne        $3, $2, .L8008CDA8
       nop
  .L8008CD9C:
      lw         $2, 0x0($6)
      ori        $2, $2, 0x10
      sw         $2, 0x0($6)
  .L8008CDA8:
      jr         $31
       addu      $2, $0, $0
.end func_8008CD08

.globl func_8008CDB0
.ent func_8008CDB0
func_8008CDB0:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      addu       $4, $6, $0
      sw         $31, 0x14($29)
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $3, $2, $0
      addiu      $2, $0, 0x3
      beqz       $3, .L8008CDE0
       sw        $3, 0x0($16)
      addu       $2, $0, $0
  .L8008CDE0:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008CDB0

.globl func_8008CDF0
.ent func_8008CDF0
func_8008CDF0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80052540
       addu      $4, $5, $0
      lw         $31, 0x10($29)
      addu       $2, $0, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008CDF0

.globl func_8008CE10
.ent func_8008CE10
func_8008CE10:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      addiu      $5, $29, 0x10
      sw         $31, 0x20($29)
      jal        func_8002EA48
       sw        $16, 0x18($29)
      addu       $16, $2, $0
      bnez       $16, .L8008CE94
       addu      $2, $16, $0
      lw         $3, 0x10($29)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8008CE94
       addu      $2, $16, $0
      addu       $4, $17, $0
      jal        func_8002EA2C
       addu      $5, $0, $0
      addu       $16, $2, $0
      bnez       $16, .L8008CE94
       addu      $2, $16, $0
      jal        func_8002DFFC
       addu      $4, $17, $0
      addu       $16, $2, $0
      bnez       $16, .L8008CE94
       addu      $2, $16, $0
      jal        func_8002E12C
       addu      $4, $17, $0
      beql       $2, $0, .L8008CE94
       addu      $2, $16, $0
      jal        func_8002DD5C
       addu      $4, $2, $0
      addu       $16, $2, $0
      addu       $2, $16, $0
  .L8008CE94:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8008CE10

.globl func_8008CEA8
.ent func_8008CEA8
func_8008CEA8:
      addiu      $29, $29, -0x30
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $17, 0x1C($29)
      lw         $17, 0x40($29)
      addiu      $5, $29, 0x10
      sw         $31, 0x28($29)
      sb         $0, 0x0($19)
      jal        func_8002E85C
       sb        $0, 0x0($18)
      andi       $16, $16, 0xFF
      beqz       $16, .L8008CF14
       nop
      lw         $4, 0x0($17)
      lw         $2, 0x10($29)
      sll        $3, $4, 2
      addu       $3, $3, $2
      lw         $2, 0x4($3)
      bnez       $2, .L8008CF2C
       addiu     $2, $4, 0x1
      addiu      $2, $0, 0x1
      j          .L8008CF30
       sb        $2, 0x0($19)
  .L8008CF14:
      lw         $2, 0x0($17)
      bnez       $2, .L8008CF2C
       addiu     $2, $2, -0x1
      addiu      $2, $0, 0x1
      j          .L8008CF30
       sb        $2, 0x0($18)
  .L8008CF2C:
      sw         $2, 0x0($17)
  .L8008CF30:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8008CEA8

.globl func_8008CF4C
.ent func_8008CF4C
func_8008CF4C:
      addiu      $29, $29, -0x78
      sw         $16, 0x60($29)
      addu       $16, $4, $0
      sw         $20, 0x70($29)
      addu       $20, $5, $0
      lui        $4, %hi(D_800EC6D0)
      lui        $2, %hi(D_80137BB8)
      lw         $5, %lo(D_80137BB8)($2)
      addiu      $4, $4, %lo(D_800EC6D0)
      sw         $19, 0x6C($29)
      addu       $19, $6, $0
      sw         $31, 0x74($29)
      sw         $18, 0x68($29)
      jal        func_8005339C
       sw        $17, 0x64($29)
      addu       $4, $16, $0
      jal        func_8002E12C
       addu      $17, $2, $0
      addu       $18, $2, $0
      beqz       $18, .L8008D058
       addiu     $16, $29, 0x28
      addu       $4, $18, $0
      jal        func_8002D560
       addu      $5, $16, $0
      addu       $4, $18, $0
      addu       $5, $16, $0
      addiu      $2, $0, 0x1
      sw         $17, 0x3C($29)
      sw         $17, 0x38($29)
      sw         $17, 0x40($29)
      sw         $17, 0x44($29)
      sw         $0, 0x30($29)
      jal        func_8002D5E4
       sw        $2, 0x48($29)
      addu       $4, $20, $0
      jal        func_8002E904
       addiu     $5, $29, 0x18
      addu       $4, $18, $0
      lw         $2, 0x18($29)
      lw         $3, 0x1C($29)
      addiu      $2, $2, 0x5
      sw         $2, 0x18($29)
      lw         $2, 0x20($29)
      addiu      $3, $3, 0x5
      sw         $3, 0x1C($29)
      lw         $3, 0x24($29)
      addiu      $2, $2, -0x5
      addiu      $3, $3, -0x5
      sw         $2, 0x20($29)
      sw         $3, 0x24($29)
      sw         $3, 0x10($29)
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      jal        func_8002BD94
       addu      $7, $2, $0
      lw         $2, 0x24($29)
      sw         $2, 0x10($29)
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      lw         $7, 0x20($29)
      jal        func_8002DC64
       addu      $4, $18, $0
      andi       $2, $19, 0xFF
      bnez       $2, .L8008D058
       nop
      jal        func_8002DD5C
       addu      $4, $18, $0
  .L8008D058:
      lw         $31, 0x74($29)
      lw         $20, 0x70($29)
      lw         $19, 0x6C($29)
      lw         $18, 0x68($29)
      lw         $17, 0x64($29)
      lw         $16, 0x60($29)
      jr         $31
       addiu     $29, $29, 0x78
.end func_8008CF4C

.globl func_8008D078
.ent func_8008D078
func_8008D078:
      addiu      $29, $29, -0x70
      sw         $17, 0x5C($29)
      addu       $17, $4, $0
      sw         $19, 0x64($29)
      addu       $19, $5, $0
      sw         $18, 0x60($29)
      addu       $18, $6, $0
      addiu      $5, $0, 0x1
      sw         $31, 0x68($29)
      sw         $16, 0x58($29)
      jal        func_80088744
       sw        $0, 0x4C($29)
      jal        func_8008C22C
       addu      $4, $17, $0
      jal        func_800512D4
       nop
      jal        func_8002E12C
       addu      $4, $17, $0
      addu       $16, $2, $0
      addu       $4, $16, $0
      jal        func_8002EA10
       addiu     $5, $29, 0x48
      addu       $4, $17, $0
      jal        func_8002EA10
       addiu     $5, $29, 0x4C
      addu       $4, $16, $0
      jal        func_8002D560
       addiu     $5, $29, 0x10
      lw         $2, 0x48($29)
      addiu      $6, $29, 0x50
      lw         $2, 0x4($2)
      lw         $5, 0x4C($29)
      lw         $4, 0x0($2)
      jal        func_80084994
       addiu     $7, $29, 0x10
      addu       $4, $16, $0
      lw         $2, 0x50($29)
      addiu      $5, $29, 0x10
      jal        func_8002D5E4
       sw        $2, 0x38($29)
      jal        func_8002DFFC
       addu      $4, $17, $0
      jal        func_8002E12C
       addu      $4, $17, $0
      jal        func_8002DD5C
       addu      $4, $2, $0
      addu       $4, $18, $0
      jal        func_8002DF5C
       addu      $5, $19, $0
      lw         $31, 0x68($29)
      lw         $19, 0x64($29)
      lw         $18, 0x60($29)
      lw         $17, 0x5C($29)
      lw         $16, 0x58($29)
      jr         $31
       addiu     $29, $29, 0x70
.end func_8008D078

.globl func_8008D158
.ent func_8008D158
func_8008D158:
      addiu      $29, $29, -0x38
      sw         $17, 0x2C($29)
      addu       $17, $4, $0
      sw         $16, 0x28($29)
      addu       $16, $5, $0
      sw         $31, 0x30($29)
      jal        func_80088744
       addu      $5, $0, $0
      jal        func_80051308
       nop
      addu       $4, $16, $0
      addu       $5, $0, $0
      jal        func_80088AB4
       addiu     $6, $29, 0x20
      lw         $2, 0x20($29)
      addu       $4, $17, $0
      jal        func_8008A5EC
       sw        $2, 0x4F4($17)
      jal        func_8002DFFC
       addu      $4, $17, $0
      jal        func_8002E12C
       addu      $4, $17, $0
      addu       $16, $2, $0
      jal        func_8002DD40
       addu      $4, $16, $0
      addu       $4, $16, $0
      jal        func_8002EA10
       addiu     $5, $29, 0x24
      lw         $4, 0x24($29)
      jal        func_8008BB94
       addiu     $5, $29, 0x10
      addiu      $5, $29, 0x10
      lw         $4, 0x24($29)
      jal        func_8008BB08
       addu      $6, $0, $0
      lw         $4, 0x24($29)
      jal        func_800809B8
       nop
      addu       $2, $17, $0
      lw         $31, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8008D158

.globl func_8008D208
.ent func_8008D208
func_8008D208:
      addiu      $29, $29, -0x28
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $16, 0x18($29)
      sw         $31, 0x24($29)
      lhu        $3, 0x0($17)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8008D2EC
       addu      $16, $0, $0
      jal        func_80088734
       addiu     $5, $29, 0x10
      bnez       $2, .L8008D2F0
       addu      $2, $16, $0
      addu       $4, $18, $0
      jal        func_80088714
       addiu     $5, $29, 0x14
      bnez       $2, .L8008D2F0
       addu      $2, $16, $0
      lw         $2, 0x10($29)
      bnez       $2, .L8008D298
       ori       $2, $0, 0xFD0D
      lhu        $3, 0xC($17)
      bne        $3, $2, .L8008D2F0
       addu      $2, $16, $0
      lw         $6, 0x14($29)
      lw         $2, 0x8($6)
      lw         $2, 0x0($2)
      beqz       $2, .L8008D2F0
       addu      $2, $16, $0
      addu       $4, $18, $0
      jal        func_8008D078
       addu      $5, $17, $0
      j          .L8008D2EC
       addu      $16, $2, $0
  .L8008D298:
      lw         $4, 0x14($29)
      jal        func_8002DF5C
       addu      $5, $17, $0
      addu       $16, $2, $0
      lui        $3, (0xFFFF02F7 >> 16)
      lhu        $2, 0xC($17)
      ori        $3, $3, (0xFFFF02F7 & 0xFFFF)
      addu       $3, $2, $3
      sltiu      $2, $3, 0x60
      beqz       $2, .L8008D2EC
       lui       $2, %hi(jtbl_800F1860)
      addiu      $2, $2, %lo(jtbl_800F1860)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8008D2DC
.L8008D2DC:
      lw         $5, 0x14($29)
      jal        func_8008D158
       addu      $4, $18, $0
      addu       $16, $2, $0
  .globl .L8008D2EC
.L8008D2EC:
      addu       $2, $16, $0
  .L8008D2F0:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8008D208

.globl func_8008D308
.ent func_8008D308
func_8008D308:
      addiu      $29, $29, -0x58
      sw         $17, 0x34($29)
      addu       $17, $4, $0
      sw         $22, 0x48($29)
      addu       $22, $5, $0
      sw         $23, 0x4C($29)
      addu       $23, $0, $0
      sw         $19, 0x3C($29)
      addu       $19, $23, $0
      sw         $20, 0x40($29)
      addu       $20, $23, $0
      sw         $21, 0x44($29)
      addu       $21, $23, $0
      sw         $16, 0x30($29)
      addu       $16, $23, $0
      addiu      $5, $29, 0x18
      sw         $31, 0x50($29)
      jal        func_8002E8B0
       sw        $18, 0x38($29)
      addu       $4, $17, $0
      jal        func_8002E85C
       addiu     $5, $29, 0x1C
      lw         $3, 0x18($29)
      addiu      $2, $0, 0xF
      bne        $3, $2, .L8008D384
       addiu     $18, $17, 0x29C
      addu       $4, $17, $0
      jal        func_8002E840
       addiu     $5, $29, 0x20
      lw         $2, 0x20($29)
      addiu      $18, $2, 0x4F4
  .L8008D384:
      lhu        $3, 0x0($22)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8008D57C
       andi      $2, $19, 0xFF
      lui        $3, (0xFFFF02F7 >> 16)
      lhu        $2, 0xC($22)
      ori        $3, $3, (0xFFFF02F7 & 0xFFFF)
      addu       $3, $2, $3
      sltiu      $2, $3, 0x60
      beqz       $2, .L8008D578
       lui       $2, %hi(jtbl_800F19E0)
      addiu      $2, $2, %lo(jtbl_800F19E0)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8008D3C8
.L8008D3C8:
      addu       $4, $17, $0
      jal        func_8002EA48
       addiu     $5, $29, 0x24
      lw         $3, 0x24($29)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8008D57C
       andi      $2, $19, 0xFF
      addu       $4, $17, $0
      jal        func_8002EA2C
       addu      $5, $0, $0
      j          .L8008D570
       addiu     $21, $0, 0x1
  .globl .L8008D3F8
.L8008D3F8:
      lw         $2, 0x1C($29)
      lw         $2, 0x0($2)
      beqz       $2, .L8008D574
       addu      $4, $17, $0
      jal        func_8002EA48
       addiu     $5, $29, 0x24
      lw         $2, 0x24($29)
      bnez       $2, .L8008D44C
       addu      $4, $17, $0
      jal        func_8002EA2C
       addiu     $5, $0, 0x1
      addu       $4, $17, $0
      lw         $2, 0x0($18)
      lw         $3, 0x1C($29)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $5, 0x0($2)
      jal        func_8008CF4C
       addu      $6, $0, $0
      j          .L8008D578
       addu      $16, $17, $0
  .L8008D44C:
      lw         $2, 0x0($18)
      lw         $3, 0x1C($29)
      lw         $6, 0x18($29)
      sll        $2, $2, 2
      addu       $2, $2, $3
      xori       $6, $6, 0x16
      lw         $5, 0x0($2)
      jal        func_80088A20
       sltu      $6, $0, $6
      lw         $3, 0x18($29)
      addiu      $2, $0, 0x16
      beq        $3, $2, .L8008D490
       addu      $4, $17, $0
      jal        func_8002EA2C
       addu      $5, $0, $0
      j          .L8008D494
       addu      $20, $0, $0
  .L8008D490:
      addiu      $20, $0, 0x1
  .L8008D494:
      lw         $2, 0x18($29)
      addiu      $19, $0, 0x1
      xori       $2, $2, 0xF
      sltu       $2, $0, $2
      j          .L8008D574
       addu      $21, $2, $0
  .globl .L8008D4AC
.L8008D4AC:
      addu       $4, $17, $0
      jal        func_8002EA48
       addiu     $5, $29, 0x24
      lw         $2, 0x24($29)
      beqz       $2, .L8008D578
       addu      $4, $17, $0
      addiu      $6, $29, 0x28
      lhu        $2, 0xC($22)
      addiu      $7, $29, 0x29
      sw         $18, 0x10($29)
      xori       $2, $2, 0xFD28
      sltiu      $2, $2, 0x1
      addu       $19, $2, $0
      andi       $16, $19, 0xFF
      jal        func_8008CEA8
       addu      $5, $16, $0
      addiu      $4, $17, 0x68
      jal        func_800898E4
       addiu     $5, $29, 0x2C
      beqz       $16, .L8008D538
       nop
      lbu        $2, 0x29($29)
      bnez       $2, .L8008D530
       andi      $2, $19, 0xFF
      lw         $2, 0x0($18)
      lw         $3, 0x2C($29)
      slt        $2, $2, $3
      bnez       $2, .L8008D530
       andi      $2, $19, 0xFF
      addu       $4, $17, $0
      jal        func_80088C10
       addiu     $5, $0, -0x1
      andi       $2, $19, 0xFF
  .L8008D530:
      bnel       $2, $0, .L8008D56C
       addiu     $21, $0, 0x1
  .L8008D538:
      lbu        $2, 0x28($29)
      bnez       $2, .L8008D56C
       addiu     $21, $0, 0x1
      lw         $2, 0x2C($29)
      lw         $3, 0x0($18)
      addiu      $2, $2, -0x1
      slt        $3, $3, $2
      bnez       $3, .L8008D570
       addu      $20, $21, $0
      addu       $4, $17, $0
      jal        func_80088C10
       addiu     $5, $0, 0x1
      addiu      $21, $0, 0x1
  .L8008D56C:
      addu       $20, $21, $0
  .L8008D570:
      addu       $19, $21, $0
  .L8008D574:
      addu       $16, $17, $0
  .globl .L8008D578
.L8008D578:
      andi       $2, $19, 0xFF
  .L8008D57C:
      beqz       $2, .L8008D590
       andi      $2, $20, 0xFF
      jal        func_8002DFFC
       addu      $4, $17, $0
      andi       $2, $20, 0xFF
  .L8008D590:
      beqz       $2, .L8008D5B4
       addu      $4, $17, $0
      lw         $2, 0x0($18)
      lw         $3, 0x1C($29)
      sll        $2, $2, 2
      addu       $2, $2, $3
      lw         $5, 0x0($2)
      jal        func_8008CF4C
       addiu     $6, $0, 0x1
  .L8008D5B4:
      andi       $2, $21, 0xFF
      beqz       $2, .L8008D5E0
       addu      $2, $16, $0
      bnez       $23, .L8008D5D4
       nop
      jal        func_8002E12C
       addu      $4, $17, $0
      addu       $23, $2, $0
  .L8008D5D4:
      jal        func_8002DD5C
       addu      $4, $23, $0
      addu       $2, $16, $0
  .L8008D5E0:
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
.end func_8008D308

.globl func_8008D60C
.ent func_8008D60C
func_8008D60C:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $31, 0x28($29)
      jal        func_8002E8B0
       addiu     $5, $29, 0x10
      addu       $4, $2, $0
      bnez       $4, .L8008D708
       andi      $2, $17, 0xFF
      lw         $3, 0x10($29)
      addiu      $2, $0, 0x11
      beq        $3, $2, .L8008D69C
       addu      $4, $16, $0
      addiu      $5, $29, 0x14
      jal        func_80034BB4
       addiu     $6, $0, 0x1
      addu       $4, $2, $0
      bnez       $4, .L8008D708
       andi      $2, $17, 0xFF
      lw         $5, 0x14($29)
      lw         $3, 0x1BC($16)
      lw         $2, 0x14($5)
      sltu       $2, $2, $3
      bnez       $2, .L8008D684
       nop
      addu       $4, $16, $0
      j          .L8008D6F8
       addiu     $5, $0, 0x7
  .L8008D684:
      lw         $2, 0x18($5)
      sltu       $2, $2, $3
      beqz       $2, .L8008D704
       addiu     $5, $0, 0x8
      j          .L8008D6F8
       addu      $4, $16, $0
  .L8008D69C:
      jal        func_80034C6C
       addiu     $5, $29, 0x18
      addu       $4, $2, $0
      bnez       $4, .L8008D708
       andi      $2, $17, 0xFF
      addu       $4, $16, $0
      jal        func_80034C9C
       addiu     $5, $29, 0x1C
      addu       $4, $2, $0
      bnez       $4, .L8008D708
       andi      $2, $17, 0xFF
      lw         $3, 0x1B8($16)
      lw         $2, 0x18($29)
      sltu       $2, $3, $2
      beqz       $2, .L8008D6E4
       addiu     $5, $0, 0x5
      j          .L8008D6F8
       addu      $4, $16, $0
  .L8008D6E4:
      lw         $2, 0x1C($29)
      sltu       $2, $2, $3
      beqz       $2, .L8008D704
       addiu     $5, $0, 0x6
      addu       $4, $16, $0
  .L8008D6F8:
      jal        func_80034124
       addiu     $6, $0, 0x1
      addu       $4, $2, $0
  .L8008D704:
      andi       $2, $17, 0xFF
  .L8008D708:
      bnez       $2, .L8008D7AC
       nop
      jal        func_8002DFFC
       addu      $4, $16, $0
      addu       $4, $2, $0
      bnez       $4, .L8008D7AC
       addiu     $2, $0, 0x11
      lw         $3, 0x10($29)
      bne        $3, $2, .L8008D74C
       nop
      lw         $3, 0x1B8($16)
      lw         $2, 0x1C($29)
      sltu       $2, $2, $3
      bnel       $2, $0, .L8008D7A0
       addu      $4, $16, $0
      j          .L8008D7AC
       nop
  .L8008D74C:
      lw         $2, 0x1BC($16)
      beqz       $2, .L8008D7AC
       nop
      addu       $4, $16, $0
      addiu      $5, $29, 0x14
      jal        func_80034BB4
       addiu     $6, $0, 0x1
      addu       $4, $2, $0
      bnez       $4, .L8008D7AC
       nop
      lw         $3, 0x14($29)
      lw         $5, 0x1BC($16)
      lw         $2, 0x18($3)
      sltu       $2, $2, $5
      bnel       $2, $0, .L8008D7A0
       addu      $4, $16, $0
      lw         $2, 0x14($3)
      sltu       $2, $2, $5
      bnez       $2, .L8008D7AC
       nop
      addu       $4, $16, $0
  .L8008D7A0:
      jal        func_8008D60C
       andi      $5, $17, 0xFF
      addu       $4, $2, $0
  .L8008D7AC:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x30
.end func_8008D60C

.globl func_8008D7C4
.ent func_8008D7C4
func_8008D7C4:
      addiu      $29, $29, -0x48
      sw         $20, 0x40($29)
      addu       $20, $6, $0
      sw         $17, 0x34($29)
      lw         $17, 0x58($29)
      lbu        $3, 0x67($29)
      lbu        $6, 0x6B($29)
      sw         $18, 0x38($29)
      addu       $18, $4, $0
      sw         $19, 0x3C($29)
      addu       $19, $7, $0
      sw         $31, 0x44($29)
      sw         $16, 0x30($29)
      bnez       $17, .L8008D804
       addu      $7, $17, $0
      addiu      $7, $0, 0x80
  .L8008D804:
      lw         $2, 0x5C($29)
      sw         $2, 0x14($29)
      lw         $2, 0x60($29)
      sw         $2, 0x18($29)
      andi       $2, $3, 0xFF
      sw         $2, 0x1C($29)
      andi       $2, $6, 0xFF
      sw         $2, 0x20($29)
      lw         $2, 0x6C($29)
      addu       $4, $18, $0
      sw         $17, 0x10($29)
      sw         $2, 0x24($29)
      lw         $2, 0x70($29)
      addu       $6, $20, $0
      jal        func_8008C340
       sw        $2, 0x28($29)
      addu       $16, $2, $0
      bnez       $16, .L8008D8AC
       nop
      beqz       $17, .L8008D860
       sltu      $2, $19, $17
      beql       $2, $0, .L8008D864
       addu      $5, $0, $0
  .L8008D860:
      addiu      $5, $0, 0x18
  .L8008D864:
      jal        func_80034D40
       addu      $4, $18, $0
      or         $16, $16, $2
      addu       $4, $18, $0
      jal        func_80034DC8
       addu      $5, $0, $0
      or         $16, $16, $2
      sltiu      $2, $19, 0x2
      bnez       $2, .L8008D890
       addiu     $5, $0, 0x1
      srlv       $5, $19, $5
  .L8008D890:
      jal        func_80034D24
       addu      $4, $18, $0
      or         $16, $16, $2
      addu       $4, $18, $0
      jal        func_8008A72C
       addu      $5, $20, $0
      addu       $2, $16, $0
  .L8008D8AC:
      lw         $31, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_8008D7C4

.globl func_8008D8CC
.ent func_8008D8CC
func_8008D8CC:
      addiu      $29, $29, -0x48
      sw         $18, 0x38($29)
      addu       $18, $4, $0
      sw         $19, 0x3C($29)
      addu       $19, $6, $0
      sw         $17, 0x34($29)
      addu       $17, $7, $0
      lw         $2, 0x5C($29)
      lw         $3, 0x58($29)
      lw         $8, 0x60($29)
      lw         $9, 0x64($29)
      addiu      $7, $0, 0x400
      sw         $31, 0x40($29)
      sw         $16, 0x30($29)
      sw         $0, 0x10($29)
      sw         $0, 0x1C($29)
      sw         $0, 0x20($29)
      addiu      $2, $2, 0x18
      sw         $3, 0x14($29)
      sw         $2, 0x18($29)
      sw         $8, 0x24($29)
      jal        func_8008C340
       sw        $9, 0x28($29)
      addu       $16, $2, $0
      bnez       $16, .L8008D984
       addu      $4, $18, $0
      jal        func_80034D40
       addiu     $5, $0, 0x60
      addu       $16, $2, $0
      addu       $4, $18, $0
      jal        func_80034DC8
       addiu     $5, $0, 0x1
      or         $16, $16, $2
      slti       $2, $17, 0x2
      bnel       $2, $0, .L8008D968
       addiu     $5, $0, 0x1
      srl        $2, $17, 31
      addu       $2, $17, $2
      sra        $5, $2, 1
  .L8008D968:
      jal        func_80034D08
       addu      $4, $18, $0
      or         $16, $16, $2
      addu       $4, $18, $0
      jal        func_8008A72C
       addu      $5, $19, $0
      addu       $2, $16, $0
  .L8008D984:
      lw         $31, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_8008D8CC

.globl func_8008D9A0
.ent func_8008D9A0
func_8008D9A0:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
.end func_8008D9A0

.globl func_8008D9A8
.ent func_8008D9A8
func_8008D9A8:
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      addiu      $4, $16, 0x1C8
      sw         $31, 0x20($29)
      jal        func_8008CB88
       addiu     $5, $29, 0x10
      lw         $3, 0x1C8($16)
      lw         $4, 0x10($29)
      sw         $3, 0x4($17)
      sw         $4, 0x0($17)
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8008D9A8

.globl func_8008D9E8
.ent func_8008D9E8
func_8008D9E8:
      addiu      $29, $29, -0x110
      sw         $17, 0x104($29)
      addu       $17, $4, $0
      addu       $3, $5, $0
      addu       $5, $17, $0
      lui        $2, %hi(func_8008D208)
      lw         $8, 0x120($29)
      lw         $10, 0x124($29)
      lw         $4, 0x128($29)
      lw         $9, 0x12C($29)
      addiu      $2, $2, %lo(func_8008D208)
      sw         $2, 0x58($29)
      lui        $2, %hi(func_8008D308)
      addiu      $2, $2, %lo(func_8008D308)
      sw         $2, 0x78($29)
      lui        $2, %hi(func_8008CD08)
      addiu      $2, $2, %lo(func_8008CD08)
      sw         $2, 0xD8($29)
      lui        $2, %hi(func_8008CDB0)
      addiu      $2, $2, %lo(func_8008CDB0)
      sw         $2, 0xDC($29)
      lui        $2, %hi(func_8008CDF0)
      addiu      $2, $2, %lo(func_8008CDF0)
      sw         $2, 0xE0($29)
      lui        $2, %hi(func_8008CAE8)
      addiu      $2, $2, %lo(func_8008CAE8)
      sw         $31, 0x108($29)
      sw         $16, 0x100($29)
      sw         $0, 0x5C($29)
      sw         $0, 0x60($29)
      sw         $0, 0x64($29)
      sw         $0, 0x68($29)
      sw         $0, 0x6C($29)
      sw         $0, 0x70($29)
      sw         $0, 0x7C($29)
      sw         $0, 0x80($29)
      sw         $0, 0x84($29)
      sw         $0, 0x88($29)
      sw         $0, 0x8C($29)
      sw         $0, 0x90($29)
      sw         $0, 0x98($29)
      sw         $0, 0x9C($29)
      sw         $0, 0xA0($29)
      sw         $0, 0xA4($29)
      sw         $0, 0xA8($29)
      sw         $0, 0xAC($29)
      sw         $0, 0xB0($29)
      sw         $0, 0xD0($29)
      sw         $0, 0xD4($29)
      sw         $2, 0xB8($29)
      lui        $2, %hi(func_8008CB50)
      addiu      $2, $2, %lo(func_8008CB50)
      sw         $2, 0xBC($29)
      lui        $2, %hi(func_8008CB88)
      addiu      $2, $2, %lo(func_8008CB88)
      sw         $2, 0xC0($29)
      lui        $2, %hi(func_8008CB98)
      addiu      $2, $2, %lo(func_8008CB98)
      sw         $2, 0xC4($29)
      lui        $2, %hi(func_8008CBBC)
      addiu      $2, $2, %lo(func_8008CBBC)
      sw         $2, 0xC8($29)
      lui        $2, %hi(func_8008CBC8)
      addiu      $2, $2, %lo(func_8008CBC8)
      sw         $2, 0xCC($29)
      sw         $6, 0x4C($29)
      addu       $6, $3, $0
      addiu      $3, $29, 0x58
      addiu      $2, $29, 0x78
      sw         $2, 0x18($29)
      addiu      $2, $29, 0xB8
      sw         $2, 0x24($29)
      addiu      $2, $29, 0xD0
      sw         $2, 0x28($29)
      addiu      $2, $29, 0x98
      sw         $2, 0x2C($29)
      addiu      $2, $17, 0x4D4
      sw         $0, 0x10($29)
      sw         $3, 0x14($29)
      sw         $3, 0x1C($29)
      sw         $3, 0x20($29)
      sw         $2, 0x30($29)
      sw         $0, 0x34($29)
      sw         $0, 0x38($29)
      sw         $7, 0x3C($29)
      sw         $8, 0x40($29)
      sw         $4, 0x44($29)
      sw         $10, 0x48($29)
      sw         $9, 0x50($29)
      lw         $4, 0x0($6)
      jal        func_80088480
       addiu     $7, $17, 0x4F8
      addu       $16, $2, $0
      bnez       $16, .L8008DC2C
       addu      $2, $16, $0
      addu       $4, $17, $0
      jal        func_80088714
       addiu     $5, $29, 0xF8
      addu       $16, $2, $0
      bnez       $16, .L8008DC2C
       addu      $2, $16, $0
      jal        func_80088648
       addu      $4, $17, $0
      addu       $16, $2, $0
      bnez       $16, .L8008DC2C
       addu      $2, $16, $0
      addu       $4, $17, $0
      jal        func_80088724
       addiu     $5, $29, 0xFC
      addu       $16, $2, $0
      bnez       $16, .L8008DC2C
       addu      $2, $16, $0
      lw         $4, 0xFC($29)
      jal        func_80034F80
       addu      $5, $0, $0
      addu       $16, $2, $0
      bnez       $16, .L8008DC2C
       addu      $2, $16, $0
      lw         $4, 0xF8($29)
      jal        func_8002E904
       addiu     $5, $29, 0xE8
      lw         $2, 0xF0($29)
      lw         $4, 0xF8($29)
      lw         $3, 0xF4($29)
      addiu      $2, $2, -0xF
      sw         $2, 0xF0($29)
      sw         $3, 0x10($29)
      lw         $5, 0xE8($29)
      lw         $6, 0xEC($29)
      jal        func_8002E92C
       addu      $7, $2, $0
      lw         $4, 0xF8($29)
      addu       $5, $0, $0
      jal        func_8002EAB0
       addiu     $4, $4, 0x68
      addu       $5, $0, $0
      addu       $6, $5, $0
      lw         $4, 0xFC($29)
      jal        func_80034930
       addiu     $7, $0, 0x1
      addu       $16, $2, $0
      lw         $4, 0xF8($29)
      jal        func_8002EA20
       addu      $5, $17, $0
      addu       $2, $16, $0
  .L8008DC2C:
      lw         $31, 0x108($29)
      lw         $17, 0x104($29)
      lw         $16, 0x100($29)
      jr         $31
       addiu     $29, $29, 0x110
.end func_8008D9E8

.globl func_8008DC40
.ent func_8008DC40
func_8008DC40:
      addiu      $29, $29, -0x78
      sw         $16, 0x68($29)
      addu       $16, $4, $0
      addu       $8, $5, $0
      sw         $18, 0x70($29)
      addu       $18, $7, $0
      lw         $7, 0x90($29)
      lw         $2, 0x88($29)
      mult       $18, $7
      addu       $9, $6, $0
      sw         $31, 0x74($29)
      sw         $17, 0x6C($29)
      sltu       $2, $18, $2
      mflo       $3
      beqz       $2, .L8008DC84
       addiu     $4, $3, 0x4
      addiu      $4, $3, 0x1C
  .L8008DC84:
      lui        $2, %hi(func_8008D308)
      addiu      $2, $2, %lo(func_8008D308)
      sw         $2, 0x38($29)
      lui        $2, %hi(func_8008CE10)
      addiu      $2, $2, %lo(func_8008CE10)
      sw         $2, 0x48($29)
      addiu      $2, $29, 0x38
      sw         $0, 0x3C($29)
      sw         $0, 0x40($29)
      sw         $0, 0x44($29)
      sw         $0, 0x4C($29)
      sw         $0, 0x50($29)
      sw         $2, 0x10($29)
      sw         $2, 0x14($29)
      lw         $2, 0x8C($29)
      addu       $5, $16, $0
      sw         $2, 0x20($29)
      lw         $2, 0x94($29)
      addu       $6, $8, $0
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      sw         $4, 0x24($29)
      sw         $7, 0x28($29)
      sw         $9, 0x2C($29)
      sw         $2, 0x30($29)
      lw         $4, 0x0($6)
      jal        func_80088840
       addiu     $7, $16, 0x2A0
      addu       $17, $2, $0
      bnez       $17, .L8008DD60
       addu      $2, $17, $0
      addu       $4, $16, $0
      jal        func_8002EA2C
       addu      $5, $0, $0
      addu       $4, $16, $0
      jal        func_8002E904
       addiu     $5, $29, 0x58
      addu       $4, $16, $0
      lw         $2, 0x60($29)
      lw         $3, 0x64($29)
      addiu      $2, $2, -0xF
      sw         $2, 0x60($29)
      sw         $3, 0x10($29)
      lw         $5, 0x58($29)
      lw         $6, 0x5C($29)
      jal        func_8002E92C
       addu      $7, $2, $0
      addiu      $16, $16, 0x68
      addu       $4, $16, $0
      jal        func_8002EAB0
       addu      $5, $0, $0
      addu       $4, $16, $0
      jal        func_800898F4
       addu      $5, $18, $0
      addu       $2, $17, $0
  .L8008DD60:
      lw         $31, 0x74($29)
      lw         $18, 0x70($29)
      lw         $17, 0x6C($29)
      lw         $16, 0x68($29)
      jr         $31
       addiu     $29, $29, 0x78
.end func_8008DC40

.globl func_8008DD78
.ent func_8008DD78
func_8008DD78:
      lw         $2, 0x0($2)
      beqz       $2, .L8008DDF0
.end func_8008DD78

.globl func_8008DD80
.ent func_8008DD80
func_8008DD80:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8001DF14
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008DD80

.globl func_8008DD9C
.ent func_8008DD9C
func_8008DD9C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      beqz       $4, .L8008DE3C
       addiu     $2, $0, 0x16
      addiu      $2, $5, 0x64
      sltiu      $2, $2, 0xC9
      beqz       $2, .L8008DE3C
       addiu     $2, $0, 0xB
      lw         $7, 0x20($4)
      mult       $7, $5
      bgez       $5, .L8008DDF4
       nop
      mflo       $3
      lui        $2, (0x51EB851F >> 16)
      ori        $2, $2, (0x51EB851F & 0xFFFF)
      mult       $3, $2
      sra        $3, $3, 31
      mfhi       $9
      sra        $2, $9, 5
      subu       $2, $2, $3
      j          .L8008DE28
  .L8008DDF0:
       subu      $7, $7, $2
  .L8008DDF4:
      blez       $5, .L8008DE28
       addiu     $2, $0, 0x64
      subu       $2, $2, $7
      mult       $2, $5
      mflo       $2
      lui        $3, (0x51EB851F >> 16)
      ori        $3, $3, (0x51EB851F & 0xFFFF)
      mult       $2, $3
      sra        $2, $2, 31
      mfhi       $3
      sra        $3, $3, 5
      subu       $3, $3, $2
      addu       $7, $7, $3
  .L8008DE28:
      lw         $5, 0x24($4)
      lw         $6, 0x28($4)
      jal        func_8008DD80
       nop
      addu       $2, $0, $0
  .L8008DE3C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008DD9C

.globl func_8008DE48
.ent func_8008DE48
func_8008DE48:
      bnez       $4, .L8008DE58
       sltiu     $2, $5, 0x65
      jr         $31
       addiu     $2, $0, 0x16
  .L8008DE58:
      beqz       $2, .L8008DE70
       addu      $2, $0, $0
      sw         $5, 0x20($4)
      sw         $6, 0x24($4)
      jr         $31
       sw        $7, 0x28($4)
  .L8008DE70:
      jr         $31
       addiu     $2, $0, 0xB
.end func_8008DE48

.globl func_8008DE78
.ent func_8008DE78
func_8008DE78:
      addiu      $5, $29, 0x20
      lw         $2, 0x20($29)
.end func_8008DE78

.globl func_8008DE80
.ent func_8008DE80
func_8008DE80:
      jr         $31
       addu      $2, $0, $0
.end func_8008DE80

.globl func_8008DE88
.ent func_8008DE88
func_8008DE88:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      andi       $2, $17, 0xFF
      addiu      $3, $0, 0xD
      bne        $2, $3, .L8008DEB8
       sw        $31, 0x18($29)
      lw         $4, 0x10($16)
      j          .L8008DED8
       addu      $5, $3, $0
  .L8008DEB8:
      lbu        $2, 0xAB7($16)
      beql       $2, $3, .L8008DEE4
       sb        $17, 0xAB7($16)
      lw         $4, 0x10($16)
      jal        func_80051700
       addiu     $5, $0, 0xD
      lw         $4, 0x10($16)
      addiu      $5, $0, 0xA
  .L8008DED8:
      jal        func_80051700
       nop
      sb         $17, 0xAB7($16)
  .L8008DEE4:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008DE88

.globl func_8008DEF8
.ent func_8008DEF8
func_8008DEF8:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addu       $6, $5, $0
      beqz       $16, .L8008DF2C
       sw        $31, 0x14($29)
      lui        $5, %hi(D_800EC6B8)
      jal        func_80016580
       addiu     $5, $5, %lo(D_800EC6B8)
      addu       $4, $16, $0
      lui        $5, %hi(D_800EC608)
      jal        func_80017500
       addiu     $5, $5, %lo(D_800EC608)
  .L8008DF2C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008DEF8

.globl func_8008DF3C
.ent func_8008DF3C
func_8008DF3C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L8008DF74
       sw        $31, 0x14($29)
      lui        $4, %hi(D_800ECAB0)
      jal        func_800523C0
       addiu     $4, $4, %lo(D_800ECAB0)
      lui        $4, %hi(D_800ECAB8)
      addiu      $4, $4, %lo(D_800ECAB8)
      jal        func_800523C0
       sw        $2, 0x0($16)
      sw         $2, 0x4($16)
      sw         $0, 0x8($16)
  .L8008DF74:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008DF3C

.globl func_8008DF84
.ent func_8008DF84
func_8008DF84:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L8008DFBC
       sw        $31, 0x14($29)
      lui        $4, %hi(D_800ECAC4)
      jal        func_800523C0
       addiu     $4, $4, %lo(D_800ECAC4)
      lui        $4, %hi(D_800ECACC)
      addiu      $4, $4, %lo(D_800ECACC)
      jal        func_800523C0
       sw        $2, 0x0($16)
      sw         $2, 0x4($16)
      sw         $0, 0x8($16)
  .L8008DFBC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008DF84

.globl func_8008DFCC
.ent func_8008DFCC
func_8008DFCC:
      addiu      $7, $29, 0x29
      sw         $18, 0x10($29)
      xori       $2, $2, 0xFD28
      sltiu      $2, $2, 0x1
      addu       $19, $2, $0
      andi       $16, $19, 0xFF
      jal        func_8008D9A8
       addu      $5, $16, $0
      addiu      $4, $17, 0x68
      jal        func_8008A3E4
       addiu     $5, $29, 0x2C
      beqz       $16, .L8008E038
       nop
.end func_8008DFCC

.globl func_8008E000
.ent func_8008E000
func_8008E000:
      addiu      $29, $29, -0x70
      sw         $20, 0x58($29)
      lw         $20, 0x88($29)
      sw         $17, 0x4C($29)
      addu       $17, $4, $0
      sw         $22, 0x60($29)
      addu       $22, $5, $0
      sw         $18, 0x50($29)
      sw         $31, 0x6C($29)
      sw         $30, 0x68($29)
      sw         $23, 0x64($29)
      sw         $21, 0x5C($29)
      sw         $19, 0x54($29)
      sw         $16, 0x48($29)
  .L8008E038:
      sw         $6, 0x78($29)
      sw         $0, 0x40($29)
      lw         $2, 0x0($17)
      lw         $3, 0xC($17)
      lw         $2, 0x50($2)
      addiu      $30, $3, 0xB4
      sw         $2, 0x34($30)
      lui        $2, %hi(D_80125540)
      lw         $21, 0x80($29)
      lw         $19, 0x84($29)
      lbu        $2, %lo(D_80125540)($2)
      lw         $5, 0x8C($29)
      bnez       $2, .L8008E090
       addu      $18, $7, $0
      lui        $2, %hi(D_80137108)
      addiu      $4, $2, %lo(D_80137108)
      lw         $3, 0x3C($4)
      addiu      $2, $0, 0x1
      bnel       $3, $2, .L8008E094
       addiu     $2, $17, 0x4C
      sb         $3, 0x59($4)
      sllv       $20, $20, $2
  .L8008E090:
      addiu      $2, $17, 0x4C
  .L8008E094:
      sw         $2, 0x34($30)
      addiu      $2, $0, -0x1
      bne        $5, $2, .L8008E13C
       nop
      bnez       $22, .L8008E0DC
       nop
      lw         $2, 0x3C($17)
      bne        $19, $2, .L8008E0DC
       addu      $5, $18, $0
      sw         $20, 0x10($29)
      lw         $2, 0x44($17)
      addu       $6, $21, $0
      sw         $2, 0x14($29)
      lw         $4, 0xC($17)
      jal        func_8002BE04
       addu      $7, $19, $0
      j          .L8008E1E8
       lui       $2, %hi(D_80137161)
  .L8008E0DC:
      blez       $20, .L8008E1E4
       addu      $16, $0, $0
      addiu      $23, $0, 0x1
      addu       $5, $18, $0
  .L8008E0EC:
      lw         $9, 0x78($29)
      lw         $3, 0x3C($17)
      addu       $2, $9, $16
      mult       $2, $3
      addu       $6, $21, $16
      lw         $2, 0x44($17)
      addu       $7, $19, $0
      sw         $23, 0x10($29)
      mflo       $9
      addu       $2, $2, $9
      addu       $2, $2, $22
      sw         $2, 0x14($29)
      lw         $4, 0xC($17)
      jal        func_8002BE04
       addiu     $16, $16, 0x1
      slt        $2, $16, $20
      bnez       $2, .L8008E0EC
       addu      $5, $18, $0
      j          .L8008E1E8
       lui       $2, %hi(D_80137161)
  .L8008E13C:
      bnez       $22, .L8008E180
       nop
      lw         $2, 0x3C($17)
      bne        $19, $2, .L8008E180
       addu      $5, $18, $0
      sw         $20, 0x10($29)
      lw         $2, 0x44($17)
      sw         $2, 0x14($29)
      lw         $2, 0x0($17)
      lbu        $2, 0x4B($2)
      addu       $6, $21, $0
      sw         $2, 0x18($29)
      lw         $4, 0xC($17)
      jal        func_8002C00C
       addu      $7, $19, $0
      j          .L8008E1E8
       lui       $2, %hi(D_80137161)
  .L8008E180:
      blez       $20, .L8008E1E4
       addu      $16, $0, $0
      addiu      $23, $0, 0x1
  .L8008E18C:
      lw         $9, 0x78($29)
      lw         $3, 0x3C($17)
      addu       $2, $9, $16
      mult       $2, $3
      lw         $2, 0x44($17)
      addu       $5, $18, $0
      sw         $23, 0x10($29)
      mflo       $9
      addu       $2, $2, $9
      addu       $2, $2, $22
      sw         $2, 0x14($29)
      lw         $2, 0x0($17)
      addu       $6, $21, $16
      lbu        $2, 0x4B($2)
      addu       $7, $19, $0
      sw         $2, 0x18($29)
      lw         $4, 0xC($17)
      jal        func_8002C00C
       addiu     $16, $16, 0x1
      slt        $2, $16, $20
      bnez       $2, .L8008E18C
       nop
  .L8008E1E4:
      lui        $2, %hi(D_80137161)
  .L8008E1E8:
      sb         $0, %lo(D_80137161)($2)
      sw         $0, 0x34($30)
      lw         $9, 0x90($29)
      addiu      $2, $0, 0x1
      bne        $9, $2, .L8008E34C
       nop
      bgez       $18, .L8008E210
       addu      $16, $21, $0
      addu       $19, $19, $18
      addu       $18, $0, $0
  .L8008E210:
      bgez       $16, .L8008E220
       nop
      addu       $20, $20, $16
      addu       $16, $0, $0
  .L8008E220:
      lw         $2, 0xC($17)
      lw         $4, 0x68($2)
      jal        func_8002AE34
       addiu     $5, $29, 0x20
      lw         $3, 0x28($29)
      addu       $2, $18, $19
      slt        $2, $3, $2
      bnel       $2, $0, .L8008E244
       subu      $19, $3, $18
  .L8008E244:
      lw         $3, 0x2C($29)
      addu       $2, $16, $20
      slt        $2, $3, $2
      bnel       $2, $0, .L8008E258
       subu      $20, $3, $16
  .L8008E258:
      lw         $2, 0x2C($17)
      lw         $9, 0x90($29)
      bne        $2, $9, .L8008E2F8
       nop
      lw         $5, 0xC($17)
      lw         $8, 0x24C($17)
      lw         $2, 0x48($5)
      slt        $2, $8, $2
      beqz       $2, .L8008E34C
       nop
      lw         $4, 0x250($17)
      lw         $2, 0x4C($5)
      slt        $2, $4, $2
      beqz       $2, .L8008E34C
       nop
      lw         $2, 0x10($17)
      lw         $3, 0x30($2)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L8008E2CC
       addu      $7, $0, $0
      lw         $6, 0x254($17)
      lw         $2, 0x258($17)
      sw         $0, 0x14($29)
      subu       $2, $2, $4
      sw         $2, 0x10($29)
      lw         $4, 0x68($5)
      lw         $5, 0xC($17)
      j          .L8008E340
       subu      $6, $6, $8
  .L8008E2CC:
      lw         $2, 0x258($17)
      lw         $6, 0x254($17)
      subu       $2, $2, $4
      sw         $2, 0x10($29)
      lw         $2, 0x250($17)
      sw         $2, 0x14($29)
      lw         $4, 0x68($5)
      lw         $5, 0xC($17)
      lw         $7, 0x24C($17)
      j          .L8008E340
       subu      $6, $6, $8
  .L8008E2F8:
      blez       $19, .L8008E34C
       nop
      blez       $20, .L8008E34C
       nop
      lw         $3, 0xC($17)
      lw         $2, 0x48($3)
      slt        $2, $18, $2
      beqz       $2, .L8008E34C
       nop
      lw         $2, 0x4C($3)
      slt        $2, $16, $2
      beqz       $2, .L8008E34C
       addu      $6, $19, $0
      sw         $20, 0x10($29)
      sw         $16, 0x14($29)
      lw         $4, 0x68($3)
      lw         $5, 0xC($17)
      addu       $7, $18, $0
  .L8008E340:
      jal        func_8002AFE0
       nop
      sw         $2, 0x40($29)
  .L8008E34C:
      lw         $9, 0x40($29)
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
      sltu       $2, $0, $9
      jr         $31
       addiu     $29, $29, 0x70
.end func_8008E000

.globl func_8008E384
.ent func_8008E384
func_8008E384:
      lw         $2, 0x48($4)
      beqz       $2, .L8008E3A4
       nop
      lw         $2, 0x4($5)
      sw         $2, 0x0($6)
      lw         $2, 0x8($5)
      j          .L8008E3C4
       sw        $2, 0x0($7)
  .L8008E3A4:
      lw         $2, 0x274($4)
      lw         $3, 0x26C($4)
      subu       $2, $2, $3
      sw         $2, 0x0($6)
      lw         $2, 0x278($4)
      lw         $3, 0x270($4)
      subu       $2, $2, $3
      sw         $2, 0x0($7)
  .L8008E3C4:
      lw         $2, 0x0($6)
      bgtz       $2, .L8008E3D8
       nop
      lw         $2, 0x4($5)
      sw         $2, 0x0($6)
  .L8008E3D8:
      lw         $2, 0x0($7)
      bgtz       $2, .L8008E3EC
       nop
      lw         $2, 0x8($5)
      sw         $2, 0x0($7)
  .L8008E3EC:
      lw         $3, 0x0($7)
      lw         $2, 0x8($5)
      bne        $3, $2, .L8008E410
       addu      $4, $0, $0
      lw         $2, 0x0($6)
      lw         $3, 0x4($5)
      xor        $2, $2, $3
      sltiu      $2, $2, 0x1
      addu       $4, $2, $0
  .L8008E410:
      lw         $2, 0x10($29)
      jr         $31
       sb        $4, 0x0($2)
.end func_8008E384

.globl func_8008E41C
.ent func_8008E41C
func_8008E41C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x0($16)
      lbu        $2, 0x3C($2)
      bnez       $2, .L8008E478
       nop
      lw         $2, 0x48($16)
      beqz       $2, .L8008E45C
       addu      $6, $0, $0
      lw         $4, 0x284($16)
      jal        func_8002DC48
       nop
      j          .L8008E474
       addiu     $2, $0, 0x1
  .L8008E45C:
      lw         $4, 0x14($16)
      lw         $2, 0x18($16)
      lw         $5, 0x8($16)
      lw         $2, 0x40($2)
      jalr       $2
       addiu     $7, $16, 0x24C
  .L8008E474:
      sb         $2, 0x27E($16)
  .L8008E478:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008E41C

.globl func_8008E488
.ent func_8008E488
func_8008E488:
      addiu      $29, $29, -0x38
      lui        $2, %hi(D_80125540)
      sw         $19, 0x1C($29)
      lw         $19, 0x4C($29)
      lbu        $2, %lo(D_80125540)($2)
      sw         $21, 0x24($29)
      lw         $21, 0x48($29)
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $22, 0x28($29)
      addu       $22, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $6, $0
      sw         $17, 0x14($29)
      addu       $17, $7, $0
      sw         $31, 0x30($29)
      sw         $23, 0x2C($29)
      bnez       $2, .L8008E500
       sw        $18, 0x18($29)
      lui        $2, %hi(D_80137108)
      addiu      $3, $2, %lo(D_80137108)
      lbu        $2, 0x5A($3)
      bnez       $2, .L8008E500
       addiu     $2, $0, 0x1
      lw         $3, 0x3C($3)
      bne        $3, $2, .L8008E500
       srl       $2, $19, 31
      addu       $2, $19, $2
      sra        $19, $2, 1
      sll        $17, $17, 1
  .L8008E500:
      lw         $2, 0x0($20)
      lw         $9, 0x54($2)
      lw         $7, 0x50($2)
      slti       $2, $9, 0x101
      bnez       $2, .L8008E51C
       addiu     $8, $20, 0x4C
      addiu      $9, $0, 0x100
  .L8008E51C:
      blez       $9, .L8008E570
       addu      $6, $0, $0
      addiu      $5, $7, 0x2
  .L8008E528:
      lbu        $3, -0x1($5)
      lbu        $4, 0x0($5)
      addiu      $5, $5, 0x3
      lbu        $2, 0x0($7)
      addiu      $7, $7, 0x3
      addiu      $6, $6, 0x1
      srl        $2, $2, 3
      srl        $3, $3, 3
      srl        $4, $4, 3
      sll        $2, $2, 11
      sll        $3, $3, 6
      or         $2, $2, $3
      sll        $4, $4, 1
      or         $2, $2, $4
      sh         $2, 0x0($8)
      slt        $2, $6, $9
      bnez       $2, .L8008E528
       addiu     $8, $8, 0x2
  .L8008E570:
      lw         $2, 0x44($20)
      lw         $18, 0x4C($22)
      beqz       $2, .L8008E658
       addu      $23, $0, $0
      lui        $2, %hi(D_800FF0A4)
      addiu      $4, $2, %lo(D_800FF0A4)
      lui        $2, %hi(D_800F1B80)
      addiu      $3, $2, %lo(D_800F1B80)
      or         $2, $3, $4
      andi       $2, $2, 0x3
      beqz       $2, .L8008E5F4
       addiu     $2, $3, 0x20
  .L8008E5A0:
      lwl        $12, 0x0($3)
      lwr        $12, 0x3($3)
      lwl        $13, 0x4($3)
      lwr        $13, 0x7($3)
      lwl        $14, 0x8($3)
      lwr        $14, 0xB($3)
      lwl        $15, 0xC($3)
      lwr        $15, 0xF($3)
      swl        $12, 0x0($4)
      swr        $12, 0x3($4)
      swl        $13, 0x4($4)
      swr        $13, 0x7($4)
      swl        $14, 0x8($4)
      swr        $14, 0xB($4)
      swl        $15, 0xC($4)
      swr        $15, 0xF($4)
      addiu      $3, $3, 0x10
      bne        $3, $2, .L8008E5A0
       addiu     $4, $4, 0x10
      j          .L8008E620
       nop
  .L8008E5F4:
      lw         $12, 0x0($3)
      lw         $13, 0x4($3)
      lw         $14, 0x8($3)
      lw         $15, 0xC($3)
      sw         $12, 0x0($4)
      sw         $13, 0x4($4)
      sw         $14, 0x8($4)
      sw         $15, 0xC($4)
      addiu      $3, $3, 0x10
      bne        $3, $2, .L8008E5F4
       addiu     $4, $4, 0x10
  .L8008E620:
      lwl        $12, 0x0($3)
      lwr        $12, 0x3($3)
      lwl        $13, 0x4($3)
      lwr        $13, 0x7($3)
      swl        $12, 0x0($4)
      swr        $12, 0x3($4)
      swl        $13, 0x4($4)
      swr        $13, 0x7($4)
      lui        $3, %hi(D_800FF124)
      lw         $4, 0x44($20)
      addiu      $2, $0, 0x1C8
      jal        func_80013B34
       sw        $2, %lo(D_800FF124)($3)
      sw         $0, 0x44($20)
  .L8008E658:
      mult       $16, $17
      mflo       $4
      jal        func_80052504
       addu      $5, $0, $0
      bnez       $2, .L8008E688
       sw        $2, 0x44($20)
      beqz       $23, .L8008E798
       addiu     $2, $0, -0x5
      jal        func_80052540
       addu      $4, $18, $0
      j          .L8008E798
       addiu     $2, $0, -0x5
  .L8008E688:
      addu       $11, $2, $0
      addiu      $2, $0, 0x2000
      bne        $21, $2, .L8008E6A0
       nop
      beq        $19, $21, .L8008E730
       nop
  .L8008E6A0:
      blez       $17, .L8008E784
       addu      $7, $0, $0
      addu       $10, $7, $0
      addu       $8, $7, $0
  .L8008E6B0:
      bgez       $8, .L8008E6BC
       addu      $2, $8, $0
      addiu      $2, $8, 0x1FFF
  .L8008E6BC:
      lw         $3, 0x4($22)
      sra        $2, $2, 13
      mult       $2, $3
      addu       $6, $11, $10
      addu       $5, $0, $0
      mflo       $2
      addu       $4, $18, $2
      blez       $16, .L8008E714
       addu      $9, $4, $0
      addu       $3, $5, $0
  .L8008E6E4:
      lbu        $2, 0x0($4)
      addu       $4, $3, $0
      sb         $2, 0x0($6)
      bgez       $3, .L8008E6FC
       addiu     $6, $6, 0x1
      addiu      $4, $3, 0x1FFF
  .L8008E6FC:
      sra        $2, $4, 13
      addu       $4, $9, $2
      addiu      $5, $5, 0x1
      slt        $2, $5, $16
      bnez       $2, .L8008E6E4
       addu      $3, $3, $21
  .L8008E714:
      addu       $10, $10, $16
      addiu      $7, $7, 0x1
      slt        $2, $7, $17
      bnez       $2, .L8008E6B0
       addu      $8, $8, $19
      j          .L8008E784
       nop
  .L8008E730:
      blez       $17, .L8008E784
       addu      $7, $0, $0
      addu       $3, $7, $0
  .L8008E73C:
      lw         $2, 0x4($22)
      mult       $7, $2
      addu       $6, $11, $3
      addu       $5, $0, $0
      mflo       $12
      blez       $16, .L8008E774
       addu      $4, $18, $12
  .L8008E758:
      lbu        $2, 0x0($4)
      addiu      $4, $4, 0x1
      addiu      $5, $5, 0x1
      sb         $2, 0x0($6)
      slt        $2, $5, $16
      bnez       $2, .L8008E758
       addiu     $6, $6, 0x1
  .L8008E774:
      addiu      $7, $7, 0x1
      slt        $2, $7, $17
      bnez       $2, .L8008E73C
       addu      $3, $3, $16
  .L8008E784:
      beqz       $23, .L8008E798
       addiu     $2, $0, 0x1
      jal        func_80052540
       addu      $4, $18, $0
      addiu      $2, $0, 0x1
  .L8008E798:
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
.end func_8008E488

.globl func_8008E7C4
.ent func_8008E7C4
func_8008E7C4:
      lui        $2, %hi(D_80133DD2)
      lbu        $2, %lo(D_80133DD2)($2)
      addiu      $29, $29, -0x18
      beqz       $2, .L8008E7EC
       sw        $31, 0x10($29)
      lbu        $2, 0x27F($4)
      beqz       $2, .L8008E7EC
       nop
      jal        func_8008E41C
       nop
  .L8008E7EC:
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008E7C4

.globl func_8008E7FC
.ent func_8008E7FC
func_8008E7FC:
      addiu      $29, $29, -0x70
      sw         $20, 0x58($29)
      addu       $20, $4, $0
      sw         $19, 0x54($29)
      addu       $19, $5, $0
      sw         $31, 0x68($29)
      sw         $23, 0x64($29)
      sw         $22, 0x60($29)
      sw         $21, 0x5C($29)
      sw         $18, 0x50($29)
      sw         $17, 0x4C($29)
      sw         $16, 0x48($29)
      lw         $3, 0xC($20)
      lw         $2, 0x0($20)
      lw         $9, 0x54($2)
      lw         $7, 0x50($2)
      slti       $2, $9, 0x101
      bnez       $2, .L8008E84C
       addiu     $10, $3, 0xB4
      addiu      $9, $0, 0x100
  .L8008E84C:
      blez       $9, .L8008E8A8
       addu      $6, $0, $0
      lui        $2, %hi(D_80132740)
      addiu      $8, $2, %lo(D_80132740)
      addiu      $5, $7, 0x2
  .L8008E860:
      lbu        $3, -0x1($5)
      lbu        $4, 0x0($5)
      addiu      $5, $5, 0x3
      lbu        $2, 0x0($7)
      addiu      $7, $7, 0x3
      addiu      $6, $6, 0x1
      srl        $2, $2, 3
      srl        $3, $3, 3
      srl        $4, $4, 3
      sll        $2, $2, 11
      sll        $3, $3, 6
      or         $2, $2, $3
      sll        $4, $4, 1
      or         $2, $2, $4
      sh         $2, 0x0($8)
      slt        $2, $6, $9
      bnez       $2, .L8008E860
       addiu     $8, $8, 0x2
  .L8008E8A8:
      lui        $2, %hi(D_80132740)
      addiu      $2, $2, %lo(D_80132740)
      sw         $2, 0x34($10)
      lui        $2, %hi(D_80137108)
      addiu      $5, $2, %lo(D_80137108)
      addiu      $2, $0, 0x1
      lw         $3, 0x0($20)
      lw         $4, 0x3C($5)
      lw         $21, 0x8($3)
      lw         $18, 0x4($3)
      bne        $4, $2, .L8008E8F4
       addu      $22, $21, $0
      lui        $2, %hi(D_80125540)
      lbu        $2, %lo(D_80125540)($2)
      bnez       $2, .L8008E8F4
       srl       $2, $21, 31
      addu       $2, $21, $2
      sra        $21, $2, 1
      sb         $4, 0x59($5)
  .L8008E8F4:
      lw         $4, 0x270($20)
      lw         $3, 0x24($20)
      lw         $2, 0xC($19)
      subu       $17, $4, $3
      slt        $2, $17, $2
      beqz       $2, .L8008EA10
       addiu     $23, $0, -0x1
      addu       $2, $17, $21
  .L8008E914:
      sw         $17, 0x2C($29)
      sw         $2, 0x34($29)
      lw         $4, 0x26C($20)
      lw         $3, 0x20($20)
      lw         $2, 0x8($19)
      subu       $16, $4, $3
      slt        $2, $16, $2
      beqz       $2, .L8008E9FC
       addiu     $4, $29, 0x38
  .L8008E938:
      addu       $5, $19, $0
      addiu      $6, $29, 0x28
      addu       $2, $16, $18
      sw         $16, 0x28($29)
      jal        func_8008A3BC
       sw        $2, 0x30($29)
      andi       $2, $2, 0xFF
      beqz       $2, .L8008E9E8
       nop
      lw         $2, 0x0($20)
      lw         $2, 0x48($2)
      bne        $2, $23, .L8008E9C0
       sw        $22, 0x10($29)
      lw         $2, 0x0($19)
      sw         $2, 0x14($29)
      lw         $2, 0x4($19)
      sw         $2, 0x18($29)
      lw         $2, 0x8($19)
      lw         $3, 0x0($19)
      subu       $2, $2, $3
      sw         $2, 0x1C($29)
      lw         $2, 0xC($19)
      lw         $3, 0x4($19)
      addu       $5, $16, $0
      subu       $2, $2, $3
      sw         $2, 0x20($29)
      lw         $2, 0x44($20)
      addu       $6, $17, $0
      sw         $2, 0x24($29)
      lw         $4, 0xC($20)
      jal        func_8002BEA8
       addu      $7, $18, $0
      j          .L8008E9E8
       nop
  .L8008E9C0:
      lw         $2, 0x44($20)
      sw         $2, 0x14($29)
      lw         $2, 0x0($20)
      addu       $5, $16, $0
      lbu        $2, 0x4B($2)
      addu       $6, $17, $0
      sw         $2, 0x18($29)
      lw         $4, 0xC($20)
      jal        func_8002C00C
       addu      $7, $18, $0
  .L8008E9E8:
      lw         $2, 0x8($19)
      addu       $16, $16, $18
      slt        $2, $16, $2
      bnez       $2, .L8008E938
       addiu     $4, $29, 0x38
  .L8008E9FC:
      lw         $2, 0xC($19)
      addu       $17, $17, $21
      slt        $2, $17, $2
      bnez       $2, .L8008E914
       addu      $2, $17, $21
  .L8008EA10:
      lui        $2, %hi(D_80137161)
      sb         $0, %lo(D_80137161)($2)
      lw         $3, 0xC($20)
      lw         $2, 0x48($3)
      sw         $2, 0x10($29)
      lw         $2, 0xC($20)
      lw         $2, 0x4C($2)
      addu       $6, $0, $0
      sw         $2, 0x14($29)
      lw         $4, 0x68($3)
      lw         $5, 0xC($20)
      jal        func_8002AFE0
       addu      $7, $6, $0
      lw         $31, 0x68($29)
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
.end func_8008E7FC

.globl func_8008EA70
.ent func_8008EA70
func_8008EA70:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x18($29)
      lw         $4, 0x4($16)
      addiu      $2, $4, 0x7
      bltzl      $2, .L8008EA98
       addiu     $2, $4, 0xE
  .L8008EA98:
      sra        $2, $2, 3
      mult       $2, $4
      mflo       $3
      lw         $4, 0x8($16)
      nop
      mult       $3, $4
      mflo       $4
      jal        func_80052504
       addu      $5, $0, $0
      addu       $3, $2, $0
      beqz       $3, .L8008EB68
       sw        $3, 0x44($17)
      addu       $7, $0, $0
      lw         $2, 0x8($16)
      lw         $6, 0x4C($16)
      blez       $2, .L8008EB60
       addu      $9, $3, $0
      lui        $2, %hi(D_80133DC8)
      addiu      $8, $2, %lo(D_80133DC8)
  .L8008EAE4:
      lw         $2, 0x4($16)
      mult       $7, $2
      addu       $5, $0, $0
      mflo       $10
      blez       $2, .L8008EB4C
       addu      $4, $9, $10
  .L8008EAFC:
      addu       $3, $0, $0
  .L8008EB00:
      lbu        $2, 0x0($6)
      srav       $2, $2, $3
      andi       $2, $2, 0x1
      beqz       $2, .L8008EB20
       nop
      lbu        $2, 0x7($8)
      j          .L8008EB28
       sb        $2, 0x0($4)
  .L8008EB20:
      lbu        $2, 0x3($8)
      sb         $2, 0x0($4)
  .L8008EB28:
      addiu      $3, $3, 0x1
      slti       $2, $3, 0x8
      bnez       $2, .L8008EB00
       addiu     $4, $4, 0x1
      lw         $2, 0x4($16)
      addiu      $5, $5, 0x8
      slt        $2, $5, $2
      bnez       $2, .L8008EAFC
       addiu     $6, $6, 0x1
  .L8008EB4C:
      lw         $2, 0x8($16)
      addiu      $7, $7, 0x1
      slt        $2, $7, $2
      bnez       $2, .L8008EAE4
       nop
  .L8008EB60:
      j          .L8008EB90
       addiu     $2, $0, 0x1
  .L8008EB68:
      jal        func_80052540
       addu      $4, $0, $0
      lbu        $2, 0x27F($17)
      bnez       $2, .L8008EB8C
       sw        $0, 0x44($17)
      lw         $4, 0x50($16)
      jal        func_80052540
       nop
      sw         $0, 0x50($16)
  .L8008EB8C:
      addiu      $2, $0, -0x5
  .L8008EB90:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008EA70

.globl func_8008EBA4
.ent func_8008EBA4
func_8008EBA4:
      addiu      $29, $29, -0x48
      sw         $17, 0x34($29)
      addu       $17, $4, $0
      sw         $31, 0x44($29)
      sw         $20, 0x40($29)
      sw         $19, 0x3C($29)
      sw         $18, 0x38($29)
      sw         $16, 0x30($29)
      lw         $16, 0x0($17)
      lw         $2, 0x4C($16)
      beqz       $2, .L8008EDA4
       addiu     $2, $0, 0x1
      lw         $2, 0x44($17)
      beqz       $2, .L8008EBF8
       addu      $18, $0, $0
      lbu        $2, 0x29($16)
      beqz       $2, .L8008EBF8
       nop
      lbu        $2, 0x27F($17)
      sltiu      $2, $2, 0x1
      addu       $18, $2, $0
  .L8008EBF8:
      lw         $2, 0x10($16)
      andi       $2, $2, 0x10
      beqz       $2, .L8008EC1C
       addu      $4, $17, $0
      jal        func_8008EA70
       addu      $5, $16, $0
      xori       $2, $2, 0x1
      j          .L8008EDA4
       sltu      $2, $0, $2
  .L8008EC1C:
      addu       $5, $16, $0
      addiu      $6, $29, 0x20
      addiu      $7, $29, 0x24
      addiu      $2, $29, 0x28
      jal        func_8008E384
       sw        $2, 0x10($29)
      lw         $2, 0x4($16)
      lw         $4, 0x20($29)
      sll        $2, $2, 13
      div        $zero, $2, $4
      bnez       $4, .L8008EC50
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8008EC50:
      addiu      $1, $0, -0x1
      bne        $4, $1, .L8008EC68
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L8008EC68
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8008EC68:
      mflo       $19
      andi       $3, $18, 0xFF
      lw         $2, 0x8($16)
      lw         $5, 0x24($29)
      sll        $2, $2, 13
      div        $zero, $2, $5
      bnez       $5, .L8008EC8C
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8008EC8C:
      addiu      $1, $0, -0x1
      bne        $5, $1, .L8008ECA4
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L8008ECA4
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8008ECA4:
      mflo       $20
      bnez       $3, .L8008ED1C
       lui       $2, %hi(D_80125540)
      lw         $2, 0x44($17)
      bnez       $2, .L8008ECE0
       andi      $2, $18, 0xFF
      mult       $4, $5
      mflo       $4
      jal        func_80052504
       addu      $5, $0, $0
      bnez       $2, .L8008ECDC
       sw        $2, 0x44($17)
      j          .L8008EDA4
       addiu     $2, $0, 0x1
  .L8008ECDC:
      andi       $2, $18, 0xFF
  .L8008ECE0:
      bnez       $2, .L8008ED1C
       lui       $2, %hi(D_80125540)
      addu       $4, $17, $0
      addu       $5, $16, $0
      lw         $6, 0x20($29)
      lw         $7, 0x24($29)
      addiu      $2, $17, 0x281
      sw         $19, 0x10($29)
      sw         $20, 0x14($29)
      jal        func_8008E488
       sw        $2, 0x18($29)
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8008EDA4
       addiu     $2, $0, 0x1
      lui        $2, %hi(D_80125540)
  .L8008ED1C:
      lbu        $2, %lo(D_80125540)($2)
      bnez       $2, .L8008ED44
       andi      $2, $18, 0xFF
      lui        $2, %hi(D_80137108)
      addiu      $4, $2, %lo(D_80137108)
      lw         $3, 0x3C($4)
      addiu      $2, $0, 0x1
      beql       $3, $2, .L8008ED40
       sb        $3, 0x59($4)
  .L8008ED40:
      andi       $2, $18, 0xFF
  .L8008ED44:
      bnez       $2, .L8008ED84
       nop
      lw         $2, 0x44($17)
      beqz       $2, .L8008ED84
       nop
      lbu        $2, 0x281($17)
      bnez       $2, .L8008ED84
       addu      $4, $17, $0
      lw         $6, 0x20($29)
      lw         $7, 0x24($29)
      addu       $5, $16, $0
      jal        func_8008E7C4
       sw        $20, 0x10($29)
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8008EDA4
       addiu     $2, $0, 0x1
  .L8008ED84:
      lbu        $2, 0x29($16)
      beqz       $2, .L8008EDA4
       addu      $2, $0, $0
      lw         $2, 0x8($16)
      sw         $0, 0x1C($16)
      addiu      $2, $2, -0x1
      sw         $2, 0x18($16)
      addu       $2, $0, $0
  .L8008EDA4:
      lw         $31, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_8008EBA4

.globl func_8008EDC4
.ent func_8008EDC4
func_8008EDC4:
      addiu      $29, $29, -0xA0
      sw         $17, 0x94($29)
      addu       $17, $4, $0
      addiu      $4, $0, 0xF4
      addu       $5, $0, $0
      sw         $31, 0x9C($29)
      sw         $18, 0x98($29)
      jal        func_80052504
       sw        $16, 0x90($29)
      addu       $16, $2, $0
      beqz       $16, .L8008EED0
       sw        $16, 0x284($17)
      lw         $7, 0x10($17)
      addiu      $2, $29, 0x38
      sw         $0, 0x38($29)
      sw         $0, 0x44($29)
      sw         $0, 0x48($29)
      sw         $0, 0x3C($29)
      sw         $0, 0x40($29)
      sw         $0, 0x10($29)
      sw         $2, 0x14($29)
      sw         $0, 0x18($29)
      sw         $0, 0x1C($29)
      lw         $2, 0x24C($17)
      sw         $2, 0x20($29)
      lw         $2, 0x250($17)
      sw         $2, 0x24($29)
      lw         $2, 0x254($17)
      lw         $3, 0x24C($17)
      subu       $2, $2, $3
      sw         $2, 0x28($29)
      lw         $2, 0x258($17)
      lw         $3, 0x250($17)
      sw         $17, 0x30($29)
      subu       $2, $2, $3
      sw         $2, 0x2C($29)
      lw         $4, 0x0($7)
      lw         $5, 0x68($7)
      jal        func_8002DA40
       addu      $6, $16, $0
      bnez       $2, .L8008EED0
       addu      $4, $16, $0
      addiu      $18, $29, 0x58
      jal        func_8002D560
       addu      $5, $18, $0
      bnez       $2, .L8008EED0
       addu      $4, $16, $0
      lui        $2, %hi(D_80133DC8)
      addiu      $3, $2, %lo(D_80133DC8)
      lw         $2, %lo(D_80133DC8)($2)
      lw         $3, 0x4($3)
      addu       $5, $18, $0
      sw         $2, 0x58($29)
      jal        func_8002D5E4
       sw        $3, 0x5C($29)
      bnez       $2, .L8008EED4
       addu      $2, $0, $0
      jal        func_8002DC48
       addu      $4, $16, $0
      bnez       $2, .L8008EED4
       addu      $2, $0, $0
      jal        func_8002DD40
       addu      $4, $16, $0
      bnez       $2, .L8008EED0
       addiu     $2, $0, 0x1
      j          .L8008EED4
       sw        $16, 0xC($17)
  .L8008EED0:
      addu       $2, $0, $0
  .L8008EED4:
      lw         $31, 0x9C($29)
      lw         $18, 0x98($29)
      lw         $17, 0x94($29)
      lw         $16, 0x90($29)
      jr         $31
       addiu     $29, $29, 0xA0
.end func_8008EDC4

.globl func_8008EEEC
.ent func_8008EEEC
func_8008EEEC:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addiu      $17, $0, 0x1
      bnez       $16, .L8008EF10
       sw        $31, 0x20($29)
      j          .L8008EFD8
       addiu     $2, $0, -0x4
  .L8008EF10:
      lw         $3, 0x254($16)
      lw         $2, 0x24C($16)
      lw         $4, 0x258($16)
      subu       $5, $3, $2
      lw         $2, 0x250($16)
      lw         $3, 0x2C($16)
      bne        $3, $17, .L8008EFA0
       subu      $4, $4, $2
      lw         $2, 0x0($16)
      lw         $3, 0x0($16)
      lw         $2, 0x4($2)
      addiu      $4, $16, 0x26C
      sw         $2, 0x3C($16)
      lw         $2, 0x8($3)
      addu       $5, $0, $0
      sw         $2, 0x38($16)
      sw         $2, 0x10($29)
      lw         $7, 0x3C($16)
      jal        func_8008A15C
       addu      $6, $5, $0
      lw         $2, 0x10($16)
      sw         $0, 0x48($16)
      addu       $3, $2, $0
      sw         $2, 0xC($16)
      lw         $3, 0x30($3)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L8008EFD8
       addu      $2, $17, $0
      jal        func_8008EDC4
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      bnel       $2, $17, .L8008EFD4
       addiu     $17, $0, -0x1
      lw         $2, 0xC($16)
      j          .L8008EFD4
       sw        $2, 0x48($16)
  .L8008EFA0:
      sw         $5, 0x3C($16)
      sw         $4, 0x38($16)
      lw         $8, 0x24C($16)
      lw         $9, 0x250($16)
      lw         $10, 0x254($16)
      lw         $11, 0x258($16)
      sw         $8, 0x26C($16)
      sw         $9, 0x270($16)
      sw         $10, 0x274($16)
      sw         $11, 0x278($16)
      lw         $2, 0x10($16)
      sw         $0, 0x48($16)
      sw         $2, 0xC($16)
  .L8008EFD4:
      addu       $2, $17, $0
  .L8008EFD8:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8008EEEC

.globl func_8008EFEC
.ent func_8008EFEC
func_8008EFEC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      bnez       $16, .L8008F008
       sw        $31, 0x14($29)
      j          .L8008F054
       addiu     $2, $0, -0x4
  .L8008F008:
      lw         $4, 0x44($16)
      jal        func_80052540
       nop
      lw         $3, 0xC($16)
      lw         $2, 0x10($16)
      beq        $3, $2, .L8008F050
       sw        $0, 0x44($16)
      lw         $4, 0x284($16)
      beqz       $4, .L8008F044
       nop
      jal        func_8002DC1C
       nop
      bnez       $2, .L8008F054
       addiu     $2, $0, -0x1
      lw         $4, 0x284($16)
  .L8008F044:
      jal        func_80052540
       nop
      sw         $0, 0x48($16)
  .L8008F050:
      addiu      $2, $0, 0x1
  .L8008F054:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008EFEC

.globl func_8008F064
.ent func_8008F064
func_8008F064:
      addiu      $29, $29, -0x40
      sw         $31, 0x38($29)
      sw         $17, 0x34($29)
      sw         $16, 0x30($29)
      lw         $2, 0x48($4)
      beqz       $2, .L8008F0C4
       addu      $16, $5, $0
      lw         $17, 0x284($4)
      addiu      $5, $29, 0x18
      jal        func_8002E95C
       addu      $4, $17, $0
      bnez       $2, .L8008F0C4
       andi      $2, $16, 0xFF
      sltu       $2, $0, $2
      sw         $2, 0x24($29)
      lw         $3, 0x24($29)
      lw         $8, 0x28($29)
      sw         $3, 0x10($29)
      sw         $8, 0x14($29)
      lw         $5, 0x18($29)
      lw         $6, 0x1C($29)
      lw         $7, 0x20($29)
      jal        func_8002E98C
       addu      $4, $17, $0
  .L8008F0C4:
      lw         $31, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x40
.end func_8008F064

.globl func_8008F0DC
.ent func_8008F0DC
func_8008F0DC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      lui        $16, %hi(D_80125541)
      lbu        $2, %lo(D_80125541)($16)
      bnez       $2, .L8008F104
       sw        $31, 0x14($29)
      jal        func_80090000
       nop
      addiu      $2, $0, 0x1
      sb         $2, %lo(D_80125541)($16)
  .L8008F104:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008F0DC

.globl func_8008F118
.ent func_8008F118
func_8008F118:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      addiu      $4, $16, 0x25C
      addu       $5, $0, $0
      addu       $6, $5, $0
      addu       $7, $5, $0
      sw         $31, 0x1C($29)
      sw         $0, 0x48($16)
      sw         $0, 0x3C($16)
      sw         $0, 0x38($16)
      sb         $0, 0x27D($16)
      sw         $0, 0x44($16)
      jal        func_8008A15C
       sw        $0, 0x10($29)
      addiu      $4, $16, 0x26C
      addu       $5, $0, $0
      addu       $6, $5, $0
      addu       $7, $5, $0
      jal        func_8008A15C
       sw        $0, 0x10($29)
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008F118

.globl func_8008F180
.ent func_8008F180
func_8008F180:
      addiu      $2, $0, 0x3
      bne        $5, $2, .L8008F190
       addiu     $2, $0, 0x1
      sb         $2, 0x27E($4)
  .L8008F190:
      jr         $31
       addiu     $2, $0, 0x1
.end func_8008F180

.globl func_8008F198
.ent func_8008F198
func_8008F198:
      addiu      $29, $29, -0x58
      sw         $31, 0x54($29)
      sw         $18, 0x50($29)
      sw         $17, 0x4C($29)
      sw         $16, 0x48($29)
      lw         $17, 0x8($4)
      beqz       $17, .L8008F1C4
       addu      $18, $6, $0
      lw         $3, 0x0($17)
      bnez       $3, .L8008F1CC
       nop
  .L8008F1C4:
      j          .L8008F4BC
       addiu     $2, $0, -0x4
  .L8008F1CC:
      lw         $2, 0x44($17)
      bnez       $2, .L8008F1E4
       nop
      lbu        $2, 0x29($3)
      beqz       $2, .L8008F4BC
       addu      $2, $0, $0
  .L8008F1E4:
      lw         $2, 0x0($17)
      lbu        $2, 0x3C($2)
      beqz       $2, .L8008F1F8
       addiu     $2, $0, 0x1
      sb         $2, 0x27E($17)
  .L8008F1F8:
      lw         $2, 0x44($17)
      bnez       $2, .L8008F298
       nop
      lw         $2, 0x48($17)
      beqz       $2, .L8008F224
       nop
      lw         $2, 0x0($17)
      lw         $9, 0x8($2)
      lw         $10, 0x4($2)
      j          .L8008F23C
       nop
  .L8008F224:
      lw         $5, 0x278($17)
      lw         $3, 0x270($17)
      lw         $4, 0x274($17)
      lw         $2, 0x26C($17)
      subu       $9, $5, $3
      subu       $10, $4, $2
  .L8008F23C:
      lw         $3, 0x0($17)
      lw         $2, 0x8($3)
      bne        $9, $2, .L8008F268
       nop
      lw         $2, 0x4($3)
      bne        $10, $2, .L8008F268
       nop
      jal        func_8008EBA4
       addu      $4, $17, $0
      j          .L8008F28C
       nop
  .L8008F268:
      lw         $2, 0x0($17)
      lbu        $16, 0x29($2)
      sb         $0, 0x29($2)
      lw         $2, 0x0($17)
      addu       $4, $17, $0
      jal        func_8008EBA4
       sw        $0, 0x1C($2)
      lw         $2, 0x0($17)
      sb         $16, 0x29($2)
  .L8008F28C:
      lw         $2, 0x44($17)
      beqz       $2, .L8008F4BC
       addiu     $2, $0, -0x5
  .L8008F298:
      lw         $2, 0x48($17)
      beqz       $2, .L8008F2D0
       addiu     $4, $17, 0x25C
      lw         $5, 0x0($17)
      lw         $8, 0x24C($17)
      lw         $2, 0x250($17)
      lw         $3, 0x8($5)
      lw         $7, 0x4($5)
      addu       $2, $2, $3
      sw         $2, 0x10($29)
      lw         $5, 0x24C($17)
      lw         $6, 0x250($17)
      j          .L8008F2F4
       addu      $7, $8, $7
  .L8008F2D0:
      addu       $5, $0, $0
      addu       $6, $5, $0
      lw         $8, 0x274($17)
      lw         $7, 0x26C($17)
      lw         $2, 0x278($17)
      lw         $3, 0x270($17)
      subu       $7, $8, $7
      subu       $2, $2, $3
      sw         $2, 0x10($29)
  .L8008F2F4:
      jal        func_8008A15C
       nop
      lw         $11, 0x25C($17)
      lw         $12, 0x260($17)
      lw         $13, 0x264($17)
      lw         $14, 0x268($17)
      sw         $11, 0x28($29)
      sw         $12, 0x2C($29)
      sw         $13, 0x30($29)
      sw         $14, 0x34($29)
      lw         $2, 0x48($17)
      bnez       $2, .L8008F338
       addiu     $16, $29, 0x28
      lw         $5, 0x24C($17)
      lw         $6, 0x250($17)
      jal        func_8008A204
       addu      $4, $16, $0
  .L8008F338:
      addu       $4, $16, $0
      lw         $5, 0x20($17)
      lw         $6, 0x24($17)
      negu       $5, $5
      jal        func_8008A204
       negu      $6, $6
      lw         $3, 0x2C($17)
      addiu      $2, $0, 0x3
      beq        $3, $2, .L8008F378
       addiu     $4, $29, 0x38
      addu       $5, $16, $0
      jal        func_8008A3BC
       addu      $6, $18, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8008F4BC
       addu      $2, $0, $0
  .L8008F378:
      lw         $3, 0x0($17)
      lw         $2, 0x4C($3)
      beqz       $2, .L8008F4BC
       addiu     $2, $0, 0x1
      lw         $2, 0x44($17)
      beqz       $2, .L8008F4BC
       addiu     $2, $0, 0x1
      lw         $2, 0x3C($17)
      beqz       $2, .L8008F3AC
       nop
      lw         $2, 0x38($17)
      bnez       $2, .L8008F3C0
       nop
  .L8008F3AC:
      lw         $2, 0x4($3)
      lw         $3, 0x0($17)
      sw         $2, 0x3C($17)
      lw         $2, 0x8($3)
      sw         $2, 0x38($17)
  .L8008F3C0:
      lbu        $2, 0x27F($17)
      beqz       $2, .L8008F3EC
       nop
      lbu        $2, 0x27E($17)
      bnez       $2, .L8008F3EC
       nop
      lw         $2, 0x44($17)
      beqz       $2, .L8008F3EC
       nop
      jal        func_8008E41C
       addu      $4, $17, $0
  .L8008F3EC:
      lw         $2, 0x0($17)
      lw         $3, 0x48($2)
      addiu      $2, $0, -0x1
      beq        $3, $2, .L8008F414
       nop
      lbu        $2, 0x27E($17)
      bnez       $2, .L8008F414
       nop
      jal        func_8008E41C
       addu      $4, $17, $0
  .L8008F414:
      lw         $3, 0x34($17)
      addiu      $2, $0, 0x3
      bne        $3, $2, .L8008F448
       nop
      lw         $2, 0x0($17)
      lw         $3, 0xC($2)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8008F4BC
       addu      $4, $17, $0
      jal        func_8008E7FC
       addu      $5, $18, $0
      j          .L8008F4BC
       addiu     $2, $0, 0x1
  .L8008F448:
      lw         $2, 0x40($29)
      lw         $7, 0x38($29)
      lw         $3, 0x44($29)
      lw         $8, 0x3C($29)
      subu       $10, $2, $7
      lw         $2, 0x28($29)
      subu       $9, $3, $8
      subu       $5, $7, $2
      lw         $2, 0x2C($29)
      lbu        $3, 0x281($17)
      bnez       $3, .L8008F4B8
       subu      $6, $8, $2
      blez       $9, .L8008F4BC
       addiu     $2, $0, 0x1
      blez       $10, .L8008F4BC
       nop
      lw         $2, 0x44($17)
      beqz       $2, .L8008F4B8
       addu      $4, $17, $0
      sw         $8, 0x10($29)
      sw         $10, 0x14($29)
      sw         $9, 0x18($29)
      lw         $2, 0x0($4)
      lw         $3, 0x48($2)
      lw         $2, 0x68($29)
      sw         $2, 0x20($29)
      jal        func_8008E000
       sw        $3, 0x1C($29)
  .L8008F4B8:
      addiu      $2, $0, 0x1
  .L8008F4BC:
      lw         $31, 0x54($29)
      lw         $18, 0x50($29)
      lw         $17, 0x4C($29)
      lw         $16, 0x48($29)
      jr         $31
       addiu     $29, $29, 0x58
.end func_8008F198

.globl func_8008F4D4
.ent func_8008F4D4
func_8008F4D4:
      addiu      $29, $29, -0x38
      sw         $17, 0x2C($29)
      addu       $17, $4, $0
      sw         $31, 0x30($29)
      beqz       $17, .L8008F504
       sw        $16, 0x28($29)
      lbu        $2, 0x27D($17)
      beqz       $2, .L8008F504
       addiu     $2, $0, 0x3
      lw         $3, 0x2C($17)
      bne        $3, $2, .L8008F50C
       nop
  .L8008F504:
      j          .L8008F568
       addu      $2, $0, $0
  .L8008F50C:
      jal        func_8008EBA4
       addu      $4, $17, $0
      addiu      $16, $29, 0x18
      lw         $8, 0x24C($17)
      lw         $9, 0x250($17)
      lw         $10, 0x254($17)
      lw         $11, 0x258($17)
      sw         $8, 0x18($29)
      sw         $9, 0x1C($29)
      sw         $10, 0x20($29)
      sw         $11, 0x24($29)
      lw         $5, 0x20($17)
      lw         $6, 0x24($17)
      jal        func_8008A204
       addu      $4, $16, $0
      addu       $5, $0, $0
      addiu      $2, $0, 0x1
      sw         $2, 0x10($29)
      lui        $2, %hi(D_80133DC8)
      lw         $4, 0x8($17)
      lw         $7, %lo(D_80133DC8)($2)
      jal        func_8008F198
       addu      $6, $16, $0
  .L8008F568:
      lw         $31, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8008F4D4

.globl func_8008F57C
.ent func_8008F57C
func_8008F57C:
      sw         $16, 0x10($29)
.end func_8008F57C

.globl func_8008F580
.ent func_8008F580
func_8008F580:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      lui        $2, %hi(D_8012559C)
      sw         $16, 0x10($29)
      addiu      $16, $2, %lo(D_8012559C)
      addu       $4, $16, $0
      sw         $31, 0x1C($29)
      jal        func_80053A34
       addu      $5, $17, $0
      addu       $3, $2, $0
      addiu      $2, $0, -0x1
      beq        $3, $2, .L8008F5D8
       sll       $2, $3, 4
      addu       $2, $2, $16
      lw         $2, 0xC($2)
      beqz       $2, .L8008F5D8
       addu      $4, $17, $0
      jalr       $2
       addu      $5, $18, $0
  .L8008F5D8:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008F580

.globl func_8008F5F4
.ent func_8008F5F4
func_8008F5F4:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x0($18)
      blez       $2, .L8008F644
       addu      $16, $0, $0
      addu       $17, $16, $0
  .L8008F61C:
      lw         $2, 0x4($18)
      addu       $2, $17, $2
      lw         $4, 0x0($2)
      lw         $5, 0x4($2)
      jal        func_8008F580
       addiu     $16, $16, 0x1
      lw         $2, 0x0($18)
      slt        $2, $16, $2
      bnez       $2, .L8008F61C
       addiu     $17, $17, 0xC
  .L8008F644:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_8008F5F4

.globl func_8008F660
.ent func_8008F660
func_8008F660:
      addiu      $29, $29, -0x18
      addu       $5, $4, $0
      lui        $4, %hi(D_8012559C)
      sw         $31, 0x10($29)
      jal        func_80053AC0
       addiu     $4, $4, %lo(D_8012559C)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008F660

.globl func_8008F684
.ent func_8008F684
func_8008F684:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      lui        $2, %hi(D_8012559C)
      sw         $17, 0x14($29)
      addiu      $17, $2, %lo(D_8012559C)
      addu       $4, $17, $0
      sw         $31, 0x24($29)
      jal        func_80053A34
       addu      $5, $18, $0
      addu       $3, $2, $0
      addiu      $2, $0, -0x1
      beq        $3, $2, .L8008F6F4
       sll       $2, $3, 4
      addu       $2, $2, $17
      lw         $2, 0x8($2)
      beqz       $2, .L8008F6F4
       addu      $4, $18, $0
      addu       $5, $19, $0
      jalr       $2
       addu      $6, $20, $0
      addu       $16, $2, $0
  .L8008F6F4:
      addu       $2, $16, $0
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8008F684

.globl func_8008F718
.ent func_8008F718
func_8008F718:
      lui        $2, %hi(D_801329C0)
      lw         $4, %lo(D_801329C0)($2)
      lui        $2, %hi(D_80139080)
      lw         $2, %lo(D_80139080)($2)
      addiu      $29, $29, -0x28
      sw         $18, 0x20($29)
      addiu      $18, $0, 0x1
      sw         $17, 0x1C($29)
      lui        $17, %hi(D_80133DC8)
      sw         $16, 0x18($29)
      addiu      $16, $17, %lo(D_80133DC8)
      sw         $31, 0x24($29)
      sb         $18, 0x9($16)
      sb         $0, 0xA($16)
      sb         $0, 0x8($16)
      sb         $18, 0xB($16)
      lw         $2, 0x2C($2)
      jalr       $2
       addiu     $5, $29, 0x10
      addu       $18, $2, $0
      addiu      $4, $0, 0xFF
      addu       $5, $4, $0
      lw         $7, 0x10($29)
      jal        func_80053284
       addu      $6, $4, $0
      addu       $4, $0, $0
      addu       $5, $4, $0
      lw         $7, 0x10($29)
      addu       $6, $4, $0
      jal        func_80053284
       sw        $2, %lo(D_80133DC8)($17)
      lw         $4, 0x10($29)
      sw         $2, 0x4($16)
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       nop
      addu       $2, $18, $0
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8008F718

.globl func_8008F7C8
.ent func_8008F7C8
func_8008F7C8:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      lui        $4, %hi(D_8012559C)
      sw         $31, 0x14($29)
      jal        func_80053600
       addiu     $4, $4, %lo(D_8012559C)
      addu       $3, $2, $0
      addiu      $2, $0, -0x5
      beqz       $3, .L8008F7F8
       sw        $3, 0x0($16)
      addiu      $2, $0, 0x1
  .L8008F7F8:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008F7C8

.globl func_8008F808
.ent func_8008F808
func_8008F808:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80053804
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008F808

.globl func_8008F824
.ent func_8008F824
func_8008F824:
      lui        $2, %hi(D_80133DD2)
      addu       $4, $5, $0
      addu       $5, $6, $0
      lbu        $6, %lo(D_80133DD2)($2)
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800539DC
       nop
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008F824

.globl func_8008F854
.ent func_8008F854
func_8008F854:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800538D8
       addu      $4, $5, $0
      lw         $31, 0x10($29)
      lui        $3, %hi(D_80133DD2)
      sb         $2, %lo(D_80133DD2)($3)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008F854

.globl func_8008F87C
.ent func_8008F87C
func_8008F87C:
      lui        $2, %hi(D_80133DD1)
      addu       $4, $5, $0
      addu       $5, $6, $0
      lbu        $6, %lo(D_80133DD1)($2)
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800539DC
       nop
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008F87C

.globl func_8008F8AC
.ent func_8008F8AC
func_8008F8AC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800538D8
       addu      $4, $5, $0
      lw         $31, 0x10($29)
      lui        $3, %hi(D_80133DD1)
      sb         $2, %lo(D_80133DD1)($3)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008F8AC

.globl func_8008F8D4
.ent func_8008F8D4
func_8008F8D4:
      lui        $2, %hi(D_80133DD3)
      addu       $4, $5, $0
      addu       $5, $6, $0
      lbu        $6, %lo(D_80133DD3)($2)
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800539DC
       nop
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008F8D4

.globl func_8008F904
.ent func_8008F904
func_8008F904:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800538D8
       addu      $4, $5, $0
      lw         $31, 0x10($29)
      lui        $3, %hi(D_80133DD3)
      sb         $2, %lo(D_80133DD3)($3)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_8008F904

.globl func_8008F92C
.ent func_8008F92C
func_8008F92C:
      sw         $2, 0x24($29)
      lw         $2, 0x254($17)
      lw         $3, 0x24C($17)
      subu       $2, $2, $3
      sw         $2, 0x28($29)
.end func_8008F92C

.globl func_8008F940
.ent func_8008F940
func_8008F940:
      addu       $12, $0, $0
      addiu      $13, $0, 0x6
      addiu      $11, $0, 0xA
      lui        $2, %hi(D_80138C70)
      addiu      $9, $2, %lo(D_80138C70)
      lui        $2, %hi(D_80138868)
      addiu      $10, $2, %lo(D_80138868)
  .L8008F95C:
      sw         $10, 0x0($9)
      addu       $6, $0, $0
      addiu      $7, $0, 0x1A
      addu       $5, $6, $0
      addu       $8, $6, $0
      div        $zero, $4, $13
      bnez       $13, .L8008F980
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8008F980:
      addiu      $1, $0, -0x1
      bne        $13, $1, .L8008F998
       lui       $1, (0x80000000 >> 16)
      bne        $4, $1, .L8008F998
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8008F998:
      mflo       $4
      slt        $2, $7, $5
  .L8008F9A0:
      beqz       $2, .L8008F9F8
       sll       $2, $6, 8
      subu       $2, $2, $6
      sll        $2, $2, 1
      addiu      $3, $2, 0xFE
  .L8008F9B4:
      addiu      $3, $3, 0x1FE
      addu       $2, $3, $13
      div        $zero, $2, $11
      bnez       $11, .L8008F9CC
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8008F9CC:
      addiu      $1, $0, -0x1
      bne        $11, $1, .L8008F9E4
       lui       $1, (0x80000000 >> 16)
      bne        $2, $1, .L8008F9E4
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8008F9E4:
      mflo       $7
      addu       $8, $8, $4
      slt        $2, $7, $5
      bnez       $2, .L8008F9B4
       addiu     $6, $6, 0x1
  .L8008F9F8:
      lw         $2, 0x0($9)
      addu       $2, $2, $5
      addiu      $5, $5, 0x1
      sb         $8, 0x0($2)
      slti       $2, $5, 0x100
      bnez       $2, .L8008F9A0
       slt       $2, $7, $5
      addiu      $9, $9, 0x4
      addiu      $12, $12, 0x1
      slti       $2, $12, 0x3
      bnez       $2, .L8008F95C
       addiu     $10, $10, 0x100
      jr         $31
       nop
.end func_8008F940

.globl func_8008FA30
.ent func_8008FA30
func_8008FA30:
      addiu      $29, $29, -0x68
      sw         $16, 0x40($29)
      addu       $16, $5, $0
      sw         $21, 0x54($29)
      addu       $21, $6, $0
      addiu      $15, $0, 0x1
      addiu      $2, $21, 0x2
      sw         $4, 0x68($29)
      sll        $4, $2, 1
      addu       $4, $4, $2
      sll        $4, $4, 2
      addiu      $5, $0, 0x2
      sw         $31, 0x64($29)
      sw         $30, 0x60($29)
      sw         $23, 0x5C($29)
      sw         $22, 0x58($29)
      sw         $20, 0x50($29)
      sw         $19, 0x4C($29)
      sw         $18, 0x48($29)
      sw         $17, 0x44($29)
      sw         $7, 0x74($29)
      jal        func_80052504
       sb        $15, 0x20($29)
      bnez       $2, .L8008FA9C
       sw        $2, 0x18($29)
      j          .L8008FE8C
       addiu     $2, $0, -0x5
  .L8008FA9C:
      lw         $20, 0x78($29)
      beqz       $20, .L8008FAAC
       addiu     $30, $0, 0x3
      addiu      $30, $0, 0x1
  .L8008FAAC:
      lw         $22, 0x74($29)
      sw         $0, 0x38($29)
      blez       $22, .L8008FE70
       sw        $0, 0x34($29)
      addiu      $3, $21, 0x1
      sll        $2, $3, 1
      addu       $2, $2, $3
      sll        $2, $2, 2
      sw         $2, 0x24($29)
      sw         $16, 0x28($29)
  .L8008FAD4:
      mult       $21, $30
      mflo       $15
      lw         $20, 0x34($29)
      nop
      mult       $15, $20
      lw         $22, 0x68($29)
      addiu      $20, $0, 0x1
      lw         $15, 0x38($29)
      mflo       $23
      addu       $23, $22, $23
      bne        $15, $20, .L8008FB2C
       sw        $23, 0x1C($29)
      addiu      $2, $21, -0x1
      addiu      $23, $0, -0x1
      lw         $22, 0x28($29)
      lw         $15, 0x18($29)
      lw         $20, 0x24($29)
      addiu      $4, $0, -0x3
      sw         $23, 0x30($29)
      addu       $12, $22, $2
      j          .L8008FB40
       addu      $11, $15, $20
  .L8008FB2C:
      addiu      $22, $0, 0x1
      lw         $12, 0x28($29)
      lw         $11, 0x18($29)
      addiu      $4, $0, 0x3
      sw         $22, 0x30($29)
  .L8008FB40:
      addu       $9, $0, $0
      addu       $8, $9, $0
      addu       $7, $9, $0
      addu       $19, $9, $0
      addu       $18, $9, $0
      addu       $17, $9, $0
      addu       $16, $9, $0
      addu       $24, $9, $0
      sw         $0, 0x3C($29)
      blez       $21, .L8008FE3C
       addu      $14, $9, $0
      sll        $13, $4, 2
      addu       $25, $9, $0
      addiu      $10, $11, 0x8
  .L8008FB78:
      lw         $23, 0x38($29)
      beqz       $23, .L8008FB9C
       addiu     $2, $14, 0x1
      subu       $2, $21, $2
      mult       $2, $30
      lw         $15, 0x1C($29)
      mflo       $20
      j          .L8008FBA4
       addu      $5, $15, $20
  .L8008FB9C:
      lw         $22, 0x1C($29)
      addu       $5, $22, $25
  .L8008FBA4:
      lw         $23, 0x80($29)
      addiu      $2, $0, -0x1
      beq        $23, $2, .L8008FC14
       addu      $4, $13, $11
      lbu        $2, 0x0($5)
      bne        $2, $23, .L8008FC18
       lui       $22, %hi(D_800F1C80)
      addu       $9, $0, $0
      addu       $8, $9, $0
      addu       $7, $9, $0
      addu       $19, $9, $0
      addu       $18, $9, $0
      addu       $17, $9, $0
      lui        $15, %hi(D_80125608)
      addiu      $15, $15, %lo(D_80125608)
      lbu        $2, 0x3($15)
      addu       $16, $9, $0
      sw         $0, 0x3C($29)
      sb         $2, 0x0($12)
      lw         $20, 0x30($29)
      addu       $24, $9, $0
      sw         $0, 0x0($11)
      sw         $0, -0x4($10)
      sw         $0, 0x0($10)
      addu       $10, $10, $13
      addu       $11, $11, $13
      j          .L8008FE2C
       addu      $12, $12, $20
  .L8008FC14:
      lui        $22, %hi(D_800F1C80)
  .L8008FC18:
      addiu      $22, $22, %lo(D_800F1C80)
      lui        $23, %hi(D_800F1C80)
      addiu      $23, $23, %lo(D_800F1C80)
      lui        $15, %hi(D_800F1C80)
      lw         $2, 0x0($4)
      addiu      $15, $15, %lo(D_800F1C80)
      sb         $0, 0x20($29)
      lw         $3, 0x4($4)
      lw         $20, 0x78($29)
      addu       $2, $9, $2
      addiu      $2, $2, 0x8
      sra        $9, $2, 4
      addu       $3, $8, $3
      addiu      $3, $3, 0x8
      lw         $2, 0x8($4)
      sra        $8, $3, 4
      addu       $2, $7, $2
      addiu      $2, $2, 0x8
      sra        $7, $2, 4
      addiu      $2, $9, 0x100
      sll        $2, $2, 2
      addu       $2, $2, $22
      lw         $9, 0x0($2)
      addiu      $2, $8, 0x100
      sll        $2, $2, 2
      addu       $2, $2, $23
      lw         $8, 0x0($2)
      addiu      $2, $7, 0x100
      sll        $2, $2, 2
      addu       $2, $2, $15
      lw         $7, 0x0($2)
      beqz       $20, .L8008FCDC
       nop
      lbu        $3, 0x0($5)
      sll        $2, $3, 1
      addu       $2, $2, $3
      addu       $2, $2, $20
      lb         $22, 0x0($2)
      lb         $23, 0x1($2)
      lb         $15, 0x2($2)
      sb         $22, 0x10($29)
      sb         $23, 0x11($29)
      sb         $15, 0x12($29)
      lbu        $2, 0x10($29)
      lbu        $3, 0x12($29)
      addu       $9, $9, $2
      lbu        $2, 0x11($29)
      j          .L8008FCF0
       addu      $7, $7, $3
  .L8008FCDC:
      lbu        $2, 0x0($5)
      lbu        $3, 0x2($5)
      addu       $9, $9, $2
      lbu        $2, 0x1($5)
      addu       $7, $7, $3
  .L8008FCF0:
      addu       $8, $8, $2
      slti       $2, $9, 0x100
      beqz       $2, .L8008FD0C
       addiu     $2, $0, 0xFF
      bgez       $9, .L8008FD0C
       addu      $2, $9, $0
      addu       $2, $0, $0
  .L8008FD0C:
      addu       $9, $2, $0
      slti       $2, $8, 0x100
      beqz       $2, .L8008FD28
       addiu     $2, $0, 0xFF
      bgez       $8, .L8008FD28
       addu      $2, $8, $0
      addu       $2, $0, $0
  .L8008FD28:
      addu       $8, $2, $0
      slti       $2, $7, 0x100
      beqz       $2, .L8008FD44
       addiu     $3, $0, 0xFF
      bgez       $7, .L8008FD44
       addu      $3, $7, $0
      addu       $3, $0, $0
  .L8008FD44:
      lui        $22, %hi(D_80138C70)
      addu       $7, $3, $0
      addu       $23, $22, $0
      addiu      $23, $23, %lo(D_80138C70)
      lui        $15, %hi(D_80132AE8)
      addiu      $15, $15, %lo(D_80132AE8)
      lw         $2, %lo(D_80138C70)($22)
      lw         $3, 0x4($23)
      lw         $4, 0x8($23)
      addu       $2, $2, $9
      addu       $3, $3, $8
      addu       $4, $4, $7
      lbu        $2, 0x0($2)
      lbu        $3, 0x0($3)
      lbu        $4, 0x0($4)
      addu       $2, $2, $3
      addu       $2, $2, $4
      sb         $2, 0x0($12)
      addu       $2, $2, $15
      lbu        $3, 0x0($2)
      lw         $20, 0x30($29)
      lw         $22, 0x3C($29)
      addu       $12, $12, $20
      subu       $9, $9, $3
      addu       $6, $9, $0
      lbu        $3, 0x100($2)
      lbu        $2, 0x200($2)
      subu       $8, $8, $3
      subu       $7, $7, $2
      sll        $2, $9, 1
      addu       $9, $9, $2
      addu       $5, $16, $9
      addu       $9, $9, $2
      addu       $16, $19, $9
      addu       $19, $6, $0
      addu       $9, $9, $2
      addu       $6, $8, $0
      sll        $2, $8, 1
      addu       $8, $8, $2
      addu       $4, $24, $8
      addu       $8, $8, $2
      addu       $24, $18, $8
      addu       $18, $6, $0
      addu       $8, $8, $2
      addu       $6, $7, $0
      sll        $2, $7, 1
      addu       $7, $7, $2
      addu       $3, $22, $7
      addu       $7, $7, $2
      addu       $17, $17, $7
      sw         $17, 0x3C($29)
      addu       $17, $6, $0
      addu       $7, $7, $2
      sw         $5, 0x0($11)
      sw         $4, -0x4($10)
      sw         $3, 0x0($10)
      addu       $10, $10, $13
      addu       $11, $11, $13
  .L8008FE2C:
      addiu      $14, $14, 0x1
      slt        $2, $14, $21
      bnez       $2, .L8008FB78
       addu      $25, $25, $30
  .L8008FE3C:
      addiu      $23, $0, 0x1
      lw         $15, 0x38($29)
      lw         $20, 0x28($29)
      lw         $22, 0x34($29)
      subu       $23, $23, $15
      addu       $20, $20, $21
      sw         $23, 0x38($29)
      lw         $23, 0x74($29)
      addiu      $22, $22, 0x1
      sw         $20, 0x28($29)
      slt        $2, $22, $23
      bnez       $2, .L8008FAD4
       sw        $22, 0x34($29)
  .L8008FE70:
      lw         $4, 0x18($29)
      jal        func_80052540
       nop
      lw         $2, 0x84($29)
      lbu        $15, 0x20($29)
      sb         $15, 0x0($2)
      addiu      $2, $0, 0x1
  .L8008FE8C:
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
.end func_8008FA30

.globl func_8008FEBC
.ent func_8008FEBC
func_8008FEBC:
      addiu      $13, $0, 0xD8
      addu       $9, $13, $0
      addiu      $14, $0, 0x6
      addiu      $15, $0, 0x5
      addiu      $25, $0, 0x2
      lui        $2, %hi(D_80132AE8)
      addiu      $11, $2, %lo(D_80132AE8)
      addu       $12, $11, $0
      addu       $10, $0, $0
      addiu      $24, $11, 0x300
  .L8008FEE4:
      addu       $7, $0, $0
      addu       $6, $25, $0
      div        $zero, $9, $14
      bnez       $14, .L8008FEFC
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8008FEFC:
      addiu      $1, $0, -0x1
      bne        $14, $1, .L8008FF14
       lui       $1, (0x80000000 >> 16)
      bne        $9, $1, .L8008FF14
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8008FF14:
      mflo       $5
  .L8008FF18:
      nop
      nop
      mult       $7, $5
      mflo       $4
      slt        $2, $4, $13
      nop
      div        $zero, $6, $15
      bnez       $15, .L8008FF40
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8008FF40:
      addiu      $1, $0, -0x1
      bne        $15, $1, .L8008FF58
       lui       $1, (0x80000000 >> 16)
      bne        $6, $1, .L8008FF58
       nop
      .word      0x0006000D                    # break      6 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8008FF58:
      mflo       $8
      beql       $2, $0, .L8008FFA0
       addiu     $7, $7, 0x1
  .L8008FF64:
      blez       $5, .L8008FF8C
       addu      $3, $0, $0
      addu       $2, $4, $3
  .L8008FF70:
      addu       $2, $2, $10
      addu       $2, $2, $12
      sb         $8, 0x0($2)
      addiu      $3, $3, 0x1
      slt        $2, $3, $5
      bnez       $2, .L8008FF70
       addu      $2, $4, $3
  .L8008FF8C:
      addu       $4, $4, $9
      slt        $2, $4, $13
      bnez       $2, .L8008FF64
       nop
      addiu      $7, $7, 0x1
  .L8008FFA0:
      slt        $2, $7, $14
      bnez       $2, .L8008FF18
       addiu     $6, $6, 0xFF
      addu       $3, $13, $0
      slti       $2, $3, 0xFF
      beqz       $2, .L8008FFE0
       addiu     $2, $0, 0xFF
      addu       $4, $10, $0
      addu       $2, $3, $4
  .L8008FFC4:
      addu       $2, $2, $12
      sb         $0, 0x0($2)
      addiu      $3, $3, 0x1
      slti       $2, $3, 0xFF
      bnez       $2, .L8008FFC4
       addu      $2, $3, $4
      addiu      $2, $0, 0xFF
  .L8008FFE0:
      sb         $2, 0xFF($11)
      addu       $9, $5, $0
      addiu      $11, $11, 0x100
      slt        $2, $11, $24
      bnez       $2, .L8008FEE4
       addiu     $10, $10, 0x100
      jr         $31
       nop
.end func_8008FEBC

.globl func_80090000
.ent func_80090000
func_80090000:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      lui        $16, %hi(D_80125600)
      lw         $2, %lo(D_80125600)($16)
      bnez       $2, .L80090040
       sw        $31, 0x14($29)
      jal        func_8008FEBC
       nop
      addiu      $2, $0, 0xD8
      lui        $3, %hi(D_80125604)
      sw         $2, %lo(D_80125600)($16)
      addiu      $2, $0, 0xD7
      sw         $2, %lo(D_80125604)($3)
      lui        $3, %hi(D_80125608)
      addiu      $2, $0, 0xFF
      sw         $2, %lo(D_80125608)($3)
  .L80090040:
      lw         $4, %lo(D_80125600)($16)
      jal        func_8008F940
       nop
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80090000

.globl func_8009005C
.ent func_8009005C
func_8009005C:
      addiu      $29, $29, -0x28
      lw         $2, 0x38($29)
      lw         $3, 0x3C($29)
      lw         $8, 0x40($29)
      lw         $9, 0x44($29)
      sw         $31, 0x20($29)
      sw         $2, 0x10($29)
      sw         $3, 0x14($29)
      sw         $8, 0x18($29)
      jal        func_8008FA30
       sw        $9, 0x1C($29)
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009005C

.globl func_80090094
.ent func_80090094
func_80090094:
      lui        $2, %hi(D_80126B1C)
      sw         $16, 0x10($29)
      addiu      $16, $2, %lo(D_80126B1C)
      addu       $4, $16, $0
      sw         $31, 0x1C($29)
      jal        func_80054534
       addu      $5, $17, $0
      addu       $3, $2, $0
      addiu      $2, $0, -0x1
      beq        $3, $2, .L800900D8
       sll       $2, $3, 4
.end func_80090094

.globl func_800900C0
.ent func_800900C0
func_800900C0:
      addiu      $29, $29, -0x30
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $21, 0x24($29)
      addu       $21, $0, $0
      addu       $4, $21, $0
  .L800900D8:
      addu       $5, $21, $0
      addiu      $6, $0, 0x3C
      sw         $31, 0x28($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      jal        func_800D27D0
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L800901D8
       addiu     $18, $16, 0xC
      addu       $4, $18, $0
      addiu      $5, $16, 0x18
      lui        $2, (0x20000 >> 16)
      sw         $2, 0x0($16)
      lui        $2, %hi(D_800F24C0)
      addiu      $2, $2, %lo(D_800F24C0)
      sw         $2, 0x4($16)
      lui        $2, %hi(D_800F256C)
      addiu      $2, $2, %lo(D_800F256C)
      sw         $16, 0x8($16)
      sw         $2, 0xC($16)
      sw         $16, 0x10($16)
      jal        func_800BEA84
       sw        $17, 0x14($16)
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800901C8
       addu      $19, $3, $0
      addu       $4, $18, $0
      jal        func_800CC0AC
       addiu     $5, $16, 0x1C
      addu       $3, $2, $0
      bne        $3, $19, .L800901C8
       addu      $17, $3, $0
      addu       $4, $18, $0
      jal        func_800BD808
       addiu     $5, $16, 0x20
      addu       $3, $2, $0
      bne        $3, $17, .L800901C8
       addu      $19, $3, $0
      addu       $4, $18, $0
      jal        func_800CAD9C
       addiu     $5, $16, 0x24
      addu       $3, $2, $0
      bne        $3, $19, .L800901C8
       addu      $20, $3, $0
      addu       $4, $18, $0
      jal        func_80099814
       addiu     $5, $16, 0x28
      addu       $3, $2, $0
      bne        $3, $20, .L800901C8
       addu      $17, $3, $0
      addu       $4, $18, $0
      jal        func_800D2084
       addiu     $5, $16, 0x2C
      bne        $2, $17, .L800901C8
       nop
      addu       $21, $16, $0
      addu       $16, $0, $0
  .L800901C8:
      beqz       $16, .L800901DC
       addu      $2, $21, $0
      jal        func_8009021C
       addu      $4, $16, $0
  .L800901D8:
      addu       $2, $21, $0
  .L800901DC:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800900C0

.globl func_80090200
.ent func_80090200
func_80090200:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800511FC
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80090200

.globl func_8009021C
.ent func_8009021C
func_8009021C:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L8009025C
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F25D0)
      addiu      $4, $4, %lo(D_800F25D0)
      lui        $5, %hi(D_800F2620)
      lui        $6, %hi(D_800F263C)
      addiu      $5, $5, %lo(D_800F2620)
      addiu      $6, $6, %lo(D_800F263C)
      jal        func_80002E80
       addiu     $7, $0, 0x1E8
  .L8009025C:
      lw         $16, 0x8($16)
      jal        func_80090338
       addu      $4, $16, $0
      lw         $4, 0x2C($16)
      beqz       $4, .L80090284
       nop
      lw         $2, 0x0($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L80090284:
      lw         $4, 0x28($16)
      beqz       $4, .L800902A0
       nop
      lw         $2, 0x0($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800902A0:
      lw         $4, 0x24($16)
      beqz       $4, .L800902BC
       nop
      lw         $2, 0x0($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800902BC:
      lw         $4, 0x20($16)
      beqz       $4, .L800902D8
       nop
      lw         $2, 0x0($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800902D8:
      lw         $4, 0x1C($16)
      beqz       $4, .L800902F4
       nop
      lw         $2, 0x0($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L800902F4:
      lw         $4, 0x18($16)
      beqz       $4, .L80090310
       nop
      lw         $2, 0x0($4)
      lw         $2, 0x0($2)
      jalr       $2
       nop
  .L80090310:
      jal        func_80090200
       nop
      jal        func_800510D0
       nop
      jal        func_800D2814
       addu      $4, $16, $0
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8009021C

.globl func_80090338
.ent func_80090338
func_80090338:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L80090378
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2650)
      addiu      $4, $4, %lo(D_800F2650)
      lui        $5, %hi(D_800F2620)
      lui        $6, %hi(D_800F269C)
      addiu      $5, $5, %lo(D_800F2620)
      addiu      $6, $6, %lo(D_800F269C)
      jal        func_80002E80
       addiu     $7, $0, 0x21D
  .L80090378:
      lw         $4, 0x24($16)
      beqz       $4, .L80090394
       nop
      lw         $2, 0x0($4)
      lw         $2, 0x4($2)
      jalr       $2
       nop
  .L80090394:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80090338

.globl func_800903A4
.ent func_800903A4
func_800903A4:
      addiu      $29, $29, -0x40
      sw         $20, 0x38($29)
      addu       $20, $4, $0
      sw         $31, 0x3C($29)
      sw         $19, 0x34($29)
      sw         $18, 0x30($29)
      sw         $17, 0x2C($29)
      sw         $16, 0x28($29)
      bnez       $20, .L800903F8
       sw        $0, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2650)
      addiu      $4, $4, %lo(D_800F2650)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F26B4)
      addiu      $6, $6, %lo(D_800F26B4)
      jal        func_80002E80
       addiu     $7, $0, 0x23B
  .L800903F8:
      lw         $4, 0x14($20)
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $29, 0x20
      addu       $19, $2, $0
      addiu      $2, $0, 0x1
      bne        $19, $2, .L8009047C
       addu      $2, $19, $0
      lw         $4, 0x20($29)
      jal        func_8009D34C
       nop
      lw         $4, 0x20($29)
      jal        func_8009D358
       addu      $17, $2, $0
      lw         $4, 0x20($29)
      jal        func_8009D364
       addu      $16, $2, $0
      lw         $4, 0x20($29)
      jal        func_800D4D40
       addu      $18, $2, $0
      lw         $3, 0x20($20)
      addu       $5, $17, $0
      lw         $3, 0x0($3)
      addu       $6, $16, $0
      sw         $2, 0x10($29)
      addiu      $2, $20, 0x30
      sw         $19, 0x14($29)
      sw         $2, 0x18($29)
      lw         $4, 0x20($20)
      lw         $2, 0x4($3)
      jalr       $2
       addu      $7, $18, $0
  .L8009047C:
      lw         $31, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800903A4

.globl func_8009049C
.ent func_8009049C
func_8009049C:
      addiu      $29, $29, -0x30
      sw         $18, 0x28($29)
      addu       $18, $4, $0
      sw         $31, 0x2C($29)
      sw         $17, 0x24($29)
      bnez       $18, .L800904E4
       sw        $16, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2650)
      addiu      $4, $4, %lo(D_800F2650)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F26CC)
      addiu      $6, $6, %lo(D_800F26CC)
      jal        func_80002E80
       addiu     $7, $0, 0x25A
  .L800904E4:
      addiu      $4, $18, 0xC
      addu       $5, $0, $0
      jal        func_80092C44
       addiu     $6, $29, 0x18
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80090548
       addu      $17, $16, $0
      lw         $4, 0x18($29)
      jal        func_80051038
       addu      $5, $0, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      bne        $16, $17, .L80090534
       nop
      jal        func_800903A4
       addu      $4, $18, $0
      j          .L80090548
       addu      $16, $2, $0
  .L80090534:
      lw         $4, 0x18($29)
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       nop
  .L80090548:
      addu       $2, $16, $0
      lw         $31, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8009049C

.globl func_80090564
.ent func_80090564
func_80090564:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      bnez       $16, .L800905B4
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2650)
      addiu      $4, $4, %lo(D_800F2650)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F26E4)
      addiu      $6, $6, %lo(D_800F26E4)
      jal        func_80002E80
       addiu     $7, $0, 0x279
  .L800905B4:
      lw         $2, 0x24($16)
      bnez       $2, .L800905EC
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F26F8)
      addiu      $4, $4, %lo(D_800F26F8)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F26E4)
      addiu      $6, $6, %lo(D_800F26E4)
      jal        func_80002E80
       addiu     $7, $0, 0x27A
  .L800905EC:
      bnez       $17, .L80090620
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2748)
      addiu      $4, $4, %lo(D_800F2748)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F26E4)
      addiu      $6, $6, %lo(D_800F26E4)
      jal        func_80002E80
       addiu     $7, $0, 0x27B
  .L80090620:
      lw         $4, 0x24($16)
      lw         $2, 0x0($4)
      addu       $5, $17, $0
      lw         $2, 0x10($2)
      jalr       $2
       addu      $6, $18, $0
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80090564

.globl func_80090650
.ent func_80090650
func_80090650:
      addiu      $29, $29, -0x30
      sw         $20, 0x28($29)
      lw         $20, 0x40($29)
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      bnez       $17, .L800906B0
       sw        $31, 0x2C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2650)
      addiu      $4, $4, %lo(D_800F2650)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2794)
      addiu      $6, $6, %lo(D_800F2794)
      jal        func_80002E80
       addiu     $7, $0, 0x296
  .L800906B0:
      lw         $2, 0x24($17)
      bnez       $2, .L800906E8
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F26F8)
      addiu      $4, $4, %lo(D_800F26F8)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2794)
      addiu      $6, $6, %lo(D_800F2794)
      jal        func_80002E80
       addiu     $7, $0, 0x297
  .L800906E8:
      bnez       $16, .L8009071C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F27A8)
      addiu      $4, $4, %lo(D_800F27A8)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2794)
      addiu      $6, $6, %lo(D_800F2794)
      jal        func_80002E80
       addiu     $7, $0, 0x298
  .L8009071C:
      bnez       $18, .L80090750
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F27F4)
      addiu      $4, $4, %lo(D_800F27F4)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2794)
      addiu      $6, $6, %lo(D_800F2794)
      jal        func_80002E80
       addiu     $7, $0, 0x299
  .L80090750:
      bnez       $19, .L80090784
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2844)
      addiu      $4, $4, %lo(D_800F2844)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2794)
      addiu      $6, $6, %lo(D_800F2794)
      jal        func_80002E80
       addiu     $7, $0, 0x29A
  .L80090784:
      bnez       $20, .L800907B8
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2894)
      addiu      $4, $4, %lo(D_800F2894)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2794)
      addiu      $6, $6, %lo(D_800F2794)
      jal        func_80002E80
       addiu     $7, $0, 0x29B
  .L800907B8:
      jal        func_800CB094
       addu      $4, $18, $0
      beqz       $2, .L800907DC
       addu      $4, $17, $0
      addu       $5, $2, $0
      jal        func_80090564
       addiu     $6, $0, 0x1
      bltz       $2, .L80090814
       nop
  .L800907DC:
      addiu      $2, $0, 0x48
      sw         $2, 0x0($16)
      sw         $19, 0x8($16)
      sw         $20, 0xC($16)
      lw         $2, 0x24($17)
      lw         $7, 0x44($29)
      lw         $3, 0x0($2)
      lw         $2, 0x48($29)
      addu       $5, $16, $0
      sw         $2, 0x10($29)
      lw         $4, 0x24($17)
      lw         $2, 0x8($3)
      jalr       $2
       addu      $6, $18, $0
  .L80090814:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80090650

.globl func_80090834
.ent func_80090834
func_80090834:
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $29, 0x10
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8009085C
       addu      $2, $0, $0
      lw         $2, 0x10($29)
  .L8009085C:
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80090834

.globl func_80090868
.ent func_80090868
func_80090868:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $16, 0x10($29)
      addiu      $16, $0, 0x1
      addu       $2, $4, $0
      bnez       $2, .L80090898
       sw        $31, 0x18($29)
      jal        func_80093240
       nop
      beql       $2, $0, .L80090898
       addiu     $16, $0, -0x5
  .L80090898:
      bnel       $17, $0, .L800908A0
       sw        $2, 0x0($17)
  .L800908A0:
      addu       $2, $16, $0
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80090868

.globl func_800908B8
.ent func_800908B8
func_800908B8:
      beqz       $4, .L800908D8
       addiu     $2, $0, -0x4
      beqz       $5, .L800908D0
       nop
      lw         $2, 0x0($4)
      sw         $2, 0x0($5)
  .L800908D0:
      jr         $31
       addiu     $2, $0, 0x1
  .L800908D8:
      jr         $31
       nop
.end func_800908B8

.globl func_800908E0
.ent func_800908E0
func_800908E0:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800908E0

.globl func_800908E8
.ent func_800908E8
func_800908E8:
      addiu      $29, $29, -0x30
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $20, 0x28($29)
      addu       $20, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $0, $0
      sw         $31, 0x2C($29)
      sw         $19, 0x24($29)
      bnez       $16, .L80090940
       sw        $18, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F28E4)
      addiu      $4, $4, %lo(D_800F28E4)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2930)
      addiu      $6, $6, %lo(D_800F2930)
      jal        func_80002E80
       addiu     $7, $0, 0x33D
  .L80090940:
      jal        func_800CD6A8
       addu      $4, $16, $0
      addu       $4, $16, $0
      jal        func_800CD6C4
       addu      $19, $2, $0
      addu       $4, $16, $0
      jal        func_800CD68C
       addu      $18, $2, $0
      beqz       $19, .L800909E0
       addu      $16, $2, $0
      beqz       $18, .L800909E4
       addu      $4, $0, $0
      beqz       $16, .L800909E4
       addiu     $5, $0, 0x2
      sll        $6, $16, 1
      addu       $6, $6, $16
      jal        func_800D27B4
       sllv      $6, $6, $5
      addu       $17, $2, $0
      beql       $17, $0, .L800909FC
       addiu     $16, $0, -0x5
      beqz       $16, .L800909D4
       addu      $4, $0, $0
      addu       $6, $18, $0
      addu       $3, $17, $0
      addu       $5, $19, $0
  .L800909A8:
      lw         $2, 0x0($5)
      addiu      $5, $5, 0x4
      sw         $2, 0x0($3)
      lw         $2, 0x0($6)
      addiu      $6, $6, 0x4
      sw         $4, 0x8($3)
      addiu      $4, $4, 0x1
      sw         $2, 0x4($3)
      sltu       $2, $4, $16
      bnez       $2, .L800909A8
       addiu     $3, $3, 0xC
  .L800909D4:
      addu       $4, $17, $0
      j          .L800909E8
       addu      $5, $16, $0
  .L800909E0:
      addu       $4, $0, $0
  .L800909E4:
      addu       $5, $4, $0
  .L800909E8:
      jal        func_80054380
       addu      $6, $20, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
  .L800909FC:
      beqz       $17, .L80090A10
       addu      $2, $16, $0
      jal        func_800D2814
       addu      $4, $17, $0
      addu       $2, $16, $0
  .L80090A10:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800908E8

.globl func_80090A30
.ent func_80090A30
func_80090A30:
      addiu      $29, $29, -0x148
      sw         $19, 0x12C($29)
      addu       $19, $4, $0
      sw         $18, 0x128($29)
      addu       $18, $5, $0
      sw         $20, 0x130($29)
      addu       $20, $6, $0
      sw         $31, 0x144($29)
      sw         $30, 0x140($29)
      sw         $23, 0x13C($29)
      sw         $22, 0x138($29)
      sw         $21, 0x134($29)
      sw         $17, 0x124($29)
      sw         $16, 0x120($29)
      bnez       $19, .L80090A9C
       sw        $7, 0x154($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2650)
      addiu      $4, $4, %lo(D_800F2650)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2950)
      addiu      $6, $6, %lo(D_800F2950)
      jal        func_80002E80
       addiu     $7, $0, 0x36C
  .L80090A9C:
      lw         $2, 0x2C($19)
      bnez       $2, .L80090AD4
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2950)
      addiu      $6, $6, %lo(D_800F2950)
      jal        func_80002E80
       addiu     $7, $0, 0x36D
  .L80090AD4:
      jal        func_80090834
       addu      $4, $18, $0
      lw         $4, 0x2C($19)
      addu       $5, $2, $0
      lw         $2, 0x0($4)
      lw         $2, 0x60($2)
      jalr       $2
       addu      $6, $20, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      beq        $16, $2, .L80090BCC
       addiu     $30, $0, -0x9
      addiu      $2, $29, 0x18
      addu       $17, $2, $0
      lui        $23, %hi(D_800F29B4)
      lui        $22, %hi(D_800F2620)
      lui        $21, %hi(D_800F2950)
      addiu      $2, $0, 0x100
      sw         $17, 0x118($29)
      sw         $2, 0x11C($29)
  .L80090B24:
      addu       $4, $18, $0
      lw         $2, 0x4($18)
      addu       $5, $20, $0
      lw         $2, 0x58($2)
      jalr       $2
       addiu     $6, $29, 0x118
      addu       $16, $2, $0
      bne        $16, $30, .L80090B94
       addiu     $2, $0, 0x1
      lw         $2, 0x118($29)
      beq        $2, $17, .L80090B78
       addu      $4, $0, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      addiu      $4, $23, %lo(D_800F29B4)
      addiu      $5, $22, %lo(D_800F2620)
      addiu      $6, $21, %lo(D_800F2950)
      jal        func_80002E80
       addiu     $7, $0, 0x37F
      addu       $4, $0, $0
  .L80090B78:
      lw         $6, 0x11C($29)
      jal        func_800D27B4
       addiu     $5, $0, 0x2
      bnez       $2, .L80090B24
       sw        $2, 0x118($29)
      addiu      $16, $0, -0x5
      addiu      $2, $0, 0x1
  .L80090B94:
      bne        $16, $2, .L80090BB4
       addu      $4, $19, $0
      addu       $5, $18, $0
      lw         $3, 0x154($29)
      lw         $6, 0x118($29)
      jal        func_800913E4
       ori       $7, $3, 0x4
      addu       $16, $2, $0
  .L80090BB4:
      lw         $4, 0x118($29)
      addiu      $2, $29, 0x18
      beq        $4, $2, .L80090BD0
       addu      $2, $16, $0
      jal        func_800D2814
       nop
  .L80090BCC:
      addu       $2, $16, $0
  .L80090BD0:
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
.end func_80090A30

.globl func_80090C00
.ent func_80090C00
func_80090C00:
      addiu      $29, $29, -0x18
      beqz       $4, .L80090C1C
       sw        $31, 0x10($29)
      jal        func_8009021C
       nop
      j          .L80090C20
       addiu     $2, $0, 0x1
  .L80090C1C:
      addiu      $2, $0, -0x4
  .L80090C20:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80090C00

.globl func_80090C2C
.ent func_80090C2C
func_80090C2C:
      addiu      $29, $29, -0x38
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $18, 0x28($29)
      addu       $18, $6, $0
      sw         $19, 0x2C($29)
      addu       $19, $7, $0
      bnez       $16, .L80090C84
       sw        $31, 0x30($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F25D0)
      addiu      $4, $4, %lo(D_800F25D0)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2A00)
      addiu      $6, $6, %lo(D_800F2A00)
      jal        func_80002E80
       addiu     $7, $0, 0x3DB
  .L80090C84:
      lw         $3, 0x8($16)
      lw         $2, 0x20($3)
      lw         $7, 0x0($2)
      lw         $2, 0x48($29)
      sw         $2, 0x10($29)
      lw         $2, 0x4C($29)
      addu       $5, $17, $0
      sw         $2, 0x14($29)
      lw         $2, 0x50($29)
      addu       $6, $18, $0
      sw         $2, 0x18($29)
      lw         $4, 0x20($3)
      lw         $2, 0x4($7)
      jalr       $2
       addu      $7, $19, $0
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80090C2C

.globl func_80090CDC
.ent func_80090CDC
func_80090CDC:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      bnez       $16, .L80090D2C
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F25D0)
      addiu      $4, $4, %lo(D_800F25D0)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2A10)
      addiu      $6, $6, %lo(D_800F2A10)
      jal        func_80002E80
       addiu     $7, $0, 0x3F9
  .L80090D2C:
      lw         $2, 0x8($16)
      lw         $4, 0x20($2)
      lw         $2, 0x0($4)
      addu       $5, $17, $0
      lw         $2, 0x8($2)
      jalr       $2
       addu      $6, $18, $0
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80090CDC

.globl func_80090D60
.ent func_80090D60
func_80090D60:
      addiu      $29, $29, -0x18
      beqz       $4, .L80090D80
       sw        $31, 0x10($29)
      jal        func_80051134
       nop
      andi       $2, $2, 0xFF
      j          .L80090D84
       sltu      $2, $0, $2
  .L80090D80:
      addiu      $2, $0, -0x4
  .L80090D84:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80090D60

.globl func_80090D90
.ent func_80090D90
func_80090D90:
      addiu      $29, $29, -0x18
      beqz       $4, .L80090DB4
       sw        $31, 0x10($29)
      jal        func_800511BC
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      j          .L80090DB8
       nop
  .L80090DB4:
      addiu      $2, $0, -0x4
  .L80090DB8:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80090D90

.globl func_80090DC4
.ent func_80090DC4
func_80090DC4:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      beqz       $4, .L80090DF4
       sw        $16, 0x18($29)
      bnez       $17, .L80090DFC
       nop
  .L80090DF4:
      j          .L80090E60
       addiu     $2, $0, -0x4
  .L80090DFC:
      lw         $16, 0x8($4)
      lw         $2, 0x18($16)
      bnez       $2, .L80090E40
       addu      $5, $17, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2A24)
      addiu      $4, $4, %lo(D_800F2A24)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2A74)
      addiu      $6, $6, %lo(D_800F2A74)
      jal        func_80002E80
       addiu     $7, $0, 0x46E
      lw         $2, 0x18($16)
      addu       $5, $17, $0
  .L80090E40:
      lw         $3, 0x0($2)
      lw         $2, 0x40($29)
      addu       $6, $18, $0
      sw         $2, 0x10($29)
      lw         $4, 0x18($16)
      lw         $2, 0x4($3)
      jalr       $2
       addu      $7, $19, $0
  .L80090E60:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80090DC4

.globl func_80090E7C
.ent func_80090E7C
func_80090E7C:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      beqz       $4, .L80090EAC
       sw        $16, 0x18($29)
      bnez       $17, .L80090EB4
       nop
  .L80090EAC:
      j          .L80090F0C
       addiu     $2, $0, -0x4
  .L80090EB4:
      lw         $16, 0x8($4)
      lw         $2, 0x18($16)
      bnez       $2, .L80090EF0
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2A24)
      addiu      $4, $4, %lo(D_800F2A24)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2A84)
      addiu      $6, $6, %lo(D_800F2A84)
      jal        func_80002E80
       addiu     $7, $0, 0x48E
  .L80090EF0:
      lw         $4, 0x18($16)
      addu       $5, $17, $0
      lw         $2, 0x0($4)
      addu       $6, $18, $0
      lw         $2, 0x8($2)
      jalr       $2
       addu      $7, $19, $0
  .L80090F0C:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80090E7C

.globl func_80090F28
.ent func_80090F28
func_80090F28:
      jr         $31
       addiu     $2, $0, 0x1
.end func_80090F28

.globl func_80090F30
.ent func_80090F30
func_80090F30:
      addiu      $29, $29, -0xB0
      sw         $20, 0xA8($29)
      addu       $20, $4, $0
      sw         $18, 0xA0($29)
      addu       $18, $5, $0
      sw         $31, 0xAC($29)
      sw         $19, 0xA4($29)
      sw         $17, 0x9C($29)
      sw         $16, 0x98($29)
      sw         $0, 0x84($29)
      sw         $0, 0x88($29)
      sw         $0, 0x8C($29)
      beqz       $20, .L80090F94
       sw        $0, 0x90($29)
      beqz       $18, .L800911A0
       addiu     $2, $0, -0x4
      lw         $2, 0x8($18)
      beqz       $2, .L800911A0
       addiu     $2, $0, -0x4
      lw         $2, 0xC($18)
      beqz       $2, .L800911A0
       addiu     $2, $0, -0x4
      lw         $2, 0x28($18)
      bnel       $2, $0, .L80090F9C
       sw        $2, 0x10($29)
  .L80090F94:
      j          .L800911A0
       addiu     $2, $0, -0x4
  .L80090F9C:
      lw         $3, 0x2C($18)
      addiu      $2, $29, 0x80
      sw         $2, 0x18($29)
      addiu      $2, $29, 0x84
      sw         $2, 0x1C($29)
      sw         $3, 0x14($29)
      lw         $5, 0x1C($18)
      lw         $6, 0x20($18)
      lw         $7, 0x24($18)
      jal        func_800D3FCC
       addiu     $4, $18, 0x18
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80091138
       addu      $17, $16, $0
      lui        $4, %hi(D_800FAD14)
      addiu      $4, $4, %lo(D_800FAD14)
      addu       $5, $0, $0
      lw         $6, 0x80($29)
      lw         $7, 0x84($29)
      addiu      $2, $29, 0x88
      sw         $0, 0x10($29)
      sw         $0, 0x14($29)
      sw         $0, 0x18($29)
      jal        func_800CAE28
       sw        $2, 0x1C($29)
      addu       $16, $2, $0
      bne        $16, $17, .L80091138
       addu      $19, $16, $0
      addiu      $4, $29, 0x20
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x48
      lw         $4, 0x10($18)
      beqz       $4, .L80091040
       nop
      jal        func_800908E8
       addiu     $5, $29, 0x8C
      addu       $16, $2, $0
      bne        $16, $19, .L80091138
       nop
  .L80091040:
      lw         $2, 0x4($18)
      andi       $2, $2, 0x20
      beqz       $2, .L80091068
       nop
      lw         $4, 0x30($18)
      jal        func_80090868
       addiu     $5, $29, 0x90
      addu       $16, $2, $0
      bne        $16, $19, .L80091138
       nop
  .L80091068:
      lw         $2, 0x90($29)
      lw         $3, 0x8C($29)
      sw         $2, 0x24($29)
      sw         $3, 0x30($29)
      lw         $2, 0x14($18)
      beqz       $2, .L800910D0
       addiu     $17, $29, 0x94
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x4
      addiu      $16, $29, 0x68
      addu       $4, $16, $0
      addu       $5, $0, $0
      lw         $2, 0x14($18)
      addiu      $6, $0, 0x14
      jal        func_80016140
       sw        $2, 0x94($29)
      lui        $2, %hi(func_800908B8)
      addiu      $2, $2, %lo(func_800908B8)
      sw         $2, 0x68($29)
      lui        $2, %hi(func_800908E0)
      addiu      $2, $2, %lo(func_800908E0)
      sw         $2, 0x6C($29)
      sw         $17, 0x70($29)
      sw         $16, 0x34($29)
  .L800910D0:
      lw         $2, 0xC($18)
      lw         $6, 0x88($29)
      sw         $2, 0x10($29)
      lw         $3, 0x4($18)
      addiu      $2, $18, 0x34
      sw         $2, 0x18($29)
      sw         $3, 0x14($29)
      lw         $4, 0x8($20)
      lw         $7, 0x8($18)
      jal        func_80090650
       addiu     $5, $29, 0x20
      addu       $16, $2, $0
      bne        $16, $19, .L80091138
       nop
      lw         $2, 0x4($18)
      andi       $2, $2, 0x80
      bnez       $2, .L80091124
       nop
      lw         $4, 0x84($29)
      jal        func_800D40C8
       nop
  .L80091124:
      lw         $2, 0x90($29)
      sw         $0, 0x90($29)
      sw         $0, 0x84($29)
      sw         $0, 0x88($29)
      sw         $2, 0x30($18)
  .L80091138:
      lw         $4, 0x90($29)
      beqz       $4, .L80091158
       nop
      lw         $2, 0x30($18)
      beq        $4, $2, .L80091158
       nop
      jal        func_80093320
       nop
  .L80091158:
      lw         $4, 0x8C($29)
      beqz       $4, .L8009116C
       nop
      jal        func_800546DC
       nop
  .L8009116C:
      lw         $4, 0x88($29)
      beqz       $4, .L80091188
       nop
      jal        func_800CAEC8
       nop
      j          .L800911A0
       addu      $2, $16, $0
  .L80091188:
      lw         $4, 0x84($29)
      beqz       $4, .L800911A0
       addu      $2, $16, $0
      jal        func_800D4120
       nop
      addu       $2, $16, $0
  .L800911A0:
      lw         $31, 0xAC($29)
      lw         $20, 0xA8($29)
      lw         $19, 0xA4($29)
      lw         $18, 0xA0($29)
      lw         $17, 0x9C($29)
      lw         $16, 0x98($29)
      jr         $31
       addiu     $29, $29, 0xB0
.end func_80090F30

.globl func_800911C0
.ent func_800911C0
func_800911C0:
      addiu      $29, $29, -0x28
      sw         $31, 0x20($29)
      sw         $17, 0x1C($29)
      beqz       $4, .L800911E8
       sw        $16, 0x18($29)
      beqz       $5, .L80091244
       addiu     $2, $0, -0x4
      lw         $17, 0x34($5)
      bnez       $17, .L800911F0
       nop
  .L800911E8:
      j          .L80091244
       addiu     $2, $0, -0x4
  .L800911F0:
      lw         $16, 0x8($4)
      lw         $2, 0x24($16)
      bnez       $2, .L8009122C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F26F8)
      addiu      $4, $4, %lo(D_800F26F8)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2A94)
      addiu      $6, $6, %lo(D_800F2A94)
      jal        func_80002E80
       addiu     $7, $0, 0x526
  .L8009122C:
      lw         $4, 0x24($16)
      lw         $2, 0x0($4)
      addu       $5, $17, $0
      lw         $2, 0xC($2)
      jalr       $2
       addu      $6, $0, $0
  .L80091244:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800911C0

.globl func_80091258
.ent func_80091258
func_80091258:
      addiu      $29, $29, -0x110
      sw         $21, 0x104($29)
      addu       $21, $4, $0
      addu       $2, $5, $0
      sw         $19, 0xFC($29)
      addu       $19, $6, $0
      sw         $20, 0x100($29)
      addu       $20, $7, $0
      sw         $17, 0xF4($29)
      addu       $17, $0, $0
      sw         $31, 0x108($29)
      sw         $18, 0xF8($29)
      sw         $16, 0xF0($29)
      sw         $0, 0xE8($29)
      beqz       $21, .L800912B0
       sw        $0, 0xEC($29)
      beql       $2, $0, .L800913C0
       addiu     $2, $0, -0x4
      beql       $19, $0, .L800913C0
       addiu     $2, $0, -0x4
      bnez       $20, .L800912B8
       lui       $4, %hi(D_800FAD14)
  .L800912B0:
      j          .L800913C0
       addiu     $2, $0, -0x4
  .L800912B8:
      addiu      $4, $4, %lo(D_800FAD14)
      addu       $5, $0, $0
      addu       $6, $2, $0
      addu       $7, $5, $0
      addiu      $2, $29, 0xE8
      sw         $0, 0x10($29)
      jal        func_800CAE80
       sw        $2, 0x14($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8009137C
       addu      $18, $16, $0
      addiu      $4, $29, 0x20
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x48
      addiu      $4, $29, 0x68
      addiu      $5, $0, 0x80
      jal        func_800CCA00
       addu      $6, $0, $0
      addu       $17, $2, $0
      beqz       $17, .L80091378
       addu      $4, $19, $0
      jal        func_800908E8
       addiu     $5, $29, 0xEC
      addu       $16, $2, $0
      bne        $16, $18, .L8009137C
       addu      $19, $16, $0
      lw         $2, 0xEC($29)
      lw         $6, 0xE8($29)
      addiu      $5, $29, 0x20
      sw         $2, 0x54($29)
      lw         $2, 0x120($29)
      lui        $7, %hi(D_800FACAC)
      sw         $17, 0x2C($29)
      sw         $20, 0x58($29)
      sw         $17, 0x10($29)
      sw         $0, 0x18($29)
      ori        $2, $2, 0xC
      sw         $2, 0x14($29)
      lw         $4, 0x8($21)
      jal        func_80090650
       addiu     $7, $7, %lo(D_800FACAC)
      addu       $16, $2, $0
      beql       $16, $19, .L8009137C
       sw        $0, 0xE8($29)
      j          .L8009137C
       nop
  .L80091378:
      addiu      $16, $0, -0x5
  .L8009137C:
      lw         $4, 0xEC($29)
      beqz       $4, .L80091390
       nop
      jal        func_800546DC
       nop
  .L80091390:
      beqz       $17, .L800913A8
       addiu     $2, $29, 0x68
      beq        $17, $2, .L800913A8
       nop
      jal        func_800D2814
       addu      $4, $17, $0
  .L800913A8:
      lw         $4, 0xE8($29)
      beqz       $4, .L800913C0
       addu      $2, $16, $0
      jal        func_800CAEC8
       nop
      addu       $2, $16, $0
  .L800913C0:
      lw         $31, 0x108($29)
      lw         $21, 0x104($29)
      lw         $20, 0x100($29)
      lw         $19, 0xFC($29)
      lw         $18, 0xF8($29)
      lw         $17, 0xF4($29)
      lw         $16, 0xF0($29)
      jr         $31
       addiu     $29, $29, 0x110
.end func_80091258

.globl func_800913E4
.ent func_800913E4
func_800913E4:
      addiu      $29, $29, -0x88
      sw         $19, 0x7C($29)
      addu       $19, $4, $0
      addu       $2, $5, $0
      sw         $18, 0x78($29)
      addu       $18, $6, $0
      sw         $20, 0x80($29)
      addu       $20, $7, $0
      sw         $31, 0x84($29)
      sw         $17, 0x74($29)
      sw         $16, 0x70($29)
      beqz       $19, .L80091428
       sw        $0, 0x68($29)
      beql       $2, $0, .L800914B8
       addiu     $2, $0, -0x4
      bnez       $18, .L80091430
       lui       $4, %hi(D_800FAD14)
  .L80091428:
      j          .L800914B8
       addiu     $2, $0, -0x4
  .L80091430:
      addiu      $4, $4, %lo(D_800FAD14)
      addu       $5, $0, $0
      addu       $6, $2, $0
      addu       $7, $5, $0
      addiu      $2, $29, 0x68
      sw         $0, 0x10($29)
      jal        func_800CAE80
       sw        $2, 0x14($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800914A0
       addu      $17, $16, $0
      addiu      $4, $29, 0x20
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x48
      addiu      $5, $29, 0x20
      lw         $6, 0x68($29)
      lui        $7, %hi(D_800FACAC)
      sw         $18, 0x10($29)
      sw         $20, 0x14($29)
      sw         $0, 0x18($29)
      lw         $4, 0x8($19)
      jal        func_80090650
       addiu     $7, $7, %lo(D_800FACAC)
      addu       $16, $2, $0
      beql       $16, $17, .L800914A0
       sw        $0, 0x68($29)
  .L800914A0:
      lw         $4, 0x68($29)
      beqz       $4, .L800914B8
       addu      $2, $16, $0
      jal        func_800CAEC8
       nop
      addu       $2, $16, $0
  .L800914B8:
      lw         $31, 0x84($29)
      lw         $20, 0x80($29)
      lw         $19, 0x7C($29)
      lw         $18, 0x78($29)
      lw         $17, 0x74($29)
      lw         $16, 0x70($29)
      jr         $31
       addiu     $29, $29, 0x88
.end func_800913E4

.globl func_800914D8
.ent func_800914D8
func_800914D8:
      addiu      $29, $29, -0x18
      beqz       $4, .L800914EC
       sw        $31, 0x10($29)
      bnez       $5, .L800914F4
       addiu     $6, $0, 0x1
  .L800914EC:
      j          .L80091500
       addiu     $2, $0, -0x4
  .L800914F4:
      lw         $4, 0x8($4)
      jal        func_80090A30
       addu      $7, $0, $0
  .L80091500:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800914D8

.globl func_8009150C
.ent func_8009150C
func_8009150C:
      addiu      $29, $29, -0x18
      beqz       $4, .L80091520
       sw        $31, 0x10($29)
      bnez       $5, .L80091528
       addu      $6, $0, $0
  .L80091520:
      j          .L80091534
       addiu     $2, $0, -0x4
  .L80091528:
      lw         $4, 0x8($4)
      jal        func_80090A30
       addu      $7, $6, $0
  .L80091534:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009150C

.globl func_80091540
.ent func_80091540
func_80091540:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      beqz       $4, .L80091558
       addu      $7, $6, $0
      bnez       $5, .L80091560
       nop
  .L80091558:
      j          .L8009156C
       addiu     $2, $0, -0x4
  .L80091560:
      lw         $4, 0x8($4)
      jal        func_80090A30
       addiu     $6, $0, 0x2
  .L8009156C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80091540

.globl func_80091578
.ent func_80091578
func_80091578:
      addiu      $29, $29, -0x18
      beqz       $4, .L8009158C
       sw        $31, 0x10($29)
      bnez       $5, .L80091594
       nop
  .L8009158C:
      j          .L800915A0
       addiu     $2, $0, -0x4
  .L80091594:
      lw         $4, 0x8($4)
      jal        func_80090564
       addu      $6, $0, $0
  .L800915A0:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80091578

.globl func_800915AC
.ent func_800915AC
func_800915AC:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $31, 0x20($29)
      beqz       $4, .L800915CC
       sw        $16, 0x18($29)
      bnez       $17, .L800915D4
       nop
  .L800915CC:
      j          .L80091624
       addiu     $2, $0, -0x4
  .L800915D4:
      lw         $16, 0x8($4)
      lw         $2, 0x24($16)
      bnez       $2, .L80091610
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F26F8)
      addiu      $4, $4, %lo(D_800F26F8)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2AA4)
      addiu      $6, $6, %lo(D_800F2AA4)
      jal        func_80002E80
       addiu     $7, $0, 0x643
  .L80091610:
      lw         $4, 0x24($16)
      lw         $2, 0x0($4)
      lw         $2, 0x18($2)
      jalr       $2
       addu      $5, $17, $0
  .L80091624:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800915AC

.globl func_80091638
.ent func_80091638
func_80091638:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      beqz       $4, .L80091660
       sw        $16, 0x18($29)
      bnez       $17, .L80091668
       nop
  .L80091660:
      j          .L800916C4
       addiu     $2, $0, -0x4
  .L80091668:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L800916A4
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2AAC)
      addiu      $6, $6, %lo(D_800F2AAC)
      jal        func_80002E80
       addiu     $7, $0, 0x666
  .L800916A4:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      addu       $5, $2, $0
      lw         $2, 0x0($4)
      lw         $2, 0x58($2)
      jalr       $2
       addu      $6, $18, $0
  .L800916C4:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80091638

.globl func_800916DC
.ent func_800916DC
func_800916DC:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      beqz       $4, .L80091704
       sw        $16, 0x18($29)
      bnez       $17, .L8009170C
       nop
  .L80091704:
      j          .L80091774
       addiu     $2, $0, -0x4
  .L8009170C:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80091748
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2AB8)
      addiu      $6, $6, %lo(D_800F2AB8)
      jal        func_80002E80
       addiu     $7, $0, 0x68C
  .L80091748:
      jal        func_80090834
       addu      $4, $17, $0
      bnez       $2, .L80091760
       addu      $5, $2, $0
      j          .L80091774
       addu      $2, $0, $0
  .L80091760:
      lw         $4, 0x2C($16)
      lw         $2, 0x0($4)
      lw         $2, 0x2C($2)
      jalr       $2
       addu      $6, $18, $0
  .L80091774:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800916DC

.globl func_8009178C
.ent func_8009178C
func_8009178C:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      beqz       $4, .L800917BC
       sw        $16, 0x18($29)
      beqz       $17, .L80091820
       addiu     $2, $0, -0x4
      bnez       $18, .L800917C4
       nop
  .L800917BC:
      j          .L80091820
       addiu     $2, $0, -0x4
  .L800917C4:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80091800
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2AC0)
      addiu      $6, $6, %lo(D_800F2AC0)
      jal        func_80002E80
       addiu     $7, $0, 0x6BA
  .L80091800:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      addu       $5, $2, $0
      lw         $2, 0x0($4)
      lw         $2, 0x34($2)
      jalr       $2
       addu      $6, $18, $0
  .L80091820:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009178C

.globl func_80091838
.ent func_80091838
func_80091838:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      beqz       $4, .L80091878
       sw        $16, 0x18($29)
      beqz       $17, .L800918E0
       addiu     $2, $0, -0x4
      beqz       $18, .L800918E0
       nop
      bnez       $19, .L80091880
       nop
  .L80091878:
      j          .L800918E0
       addiu     $2, $0, -0x4
  .L80091880:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L800918BC
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2ACC)
      addiu      $6, $6, %lo(D_800F2ACC)
      jal        func_80002E80
       addiu     $7, $0, 0x6DD
  .L800918BC:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      addu       $5, $2, $0
      lw         $2, 0x0($4)
      addu       $6, $18, $0
      lw         $2, 0x1C($2)
      jalr       $2
       addu      $7, $19, $0
  .L800918E0:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80091838

.globl func_800918FC
.ent func_800918FC
func_800918FC:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      beqz       $4, .L8009192C
       sw        $16, 0x18($29)
      beqz       $17, .L80091990
       addiu     $2, $0, -0x4
      bnez       $18, .L80091934
       nop
  .L8009192C:
      j          .L80091990
       addiu     $2, $0, -0x4
  .L80091934:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80091970
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2AE0)
      addiu      $6, $6, %lo(D_800F2AE0)
      jal        func_80002E80
       addiu     $7, $0, 0x700
  .L80091970:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      addu       $5, $2, $0
      lw         $2, 0x0($4)
      lw         $2, 0x38($2)
      jalr       $2
       addu      $6, $18, $0
  .L80091990:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800918FC

.globl func_800919A8
.ent func_800919A8
func_800919A8:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      beqz       $4, .L800919D0
       sw        $16, 0x18($29)
      bnez       $17, .L800919D8
       nop
  .L800919D0:
      j          .L80091A34
       addiu     $2, $0, -0x4
  .L800919D8:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80091A14
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2AEC)
      addiu      $6, $6, %lo(D_800F2AEC)
      jal        func_80002E80
       addiu     $7, $0, 0x723
  .L80091A14:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      addu       $5, $2, $0
      lw         $2, 0x0($4)
      lw         $2, 0x5C($2)
      jalr       $2
       addu      $6, $18, $0
  .L80091A34:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800919A8

.globl func_80091A4C
.ent func_80091A4C
func_80091A4C:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      beqz       $4, .L80091A84
       sw        $16, 0x18($29)
      beqz       $17, .L80091AEC
       addiu     $2, $0, -0x4
      bnez       $18, .L80091A8C
       nop
  .L80091A84:
      j          .L80091AEC
       addiu     $2, $0, -0x4
  .L80091A8C:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80091AC8
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2AF8)
      addiu      $6, $6, %lo(D_800F2AF8)
      jal        func_80002E80
       addiu     $7, $0, 0x746
  .L80091AC8:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      addu       $5, $2, $0
      lw         $2, 0x0($4)
      addu       $6, $18, $0
      lw         $2, 0x68($2)
      jalr       $2
       addu      $7, $19, $0
  .L80091AEC:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80091A4C

.globl func_80091B08
.ent func_80091B08
func_80091B08:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      beqz       $4, .L80091B38
       sw        $16, 0x18($29)
      beqz       $17, .L80091B9C
       addiu     $2, $0, -0x4
      bnez       $18, .L80091B40
       nop
  .L80091B38:
      j          .L80091B9C
       addiu     $2, $0, -0x4
  .L80091B40:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80091B7C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2B00)
      addiu      $6, $6, %lo(D_800F2B00)
      jal        func_80002E80
       addiu     $7, $0, 0x769
  .L80091B7C:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      addu       $5, $2, $0
      lw         $2, 0x0($4)
      lw         $2, 0x20($2)
      jalr       $2
       addu      $6, $18, $0
  .L80091B9C:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80091B08

.globl func_80091BB4
.ent func_80091BB4
func_80091BB4:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      beqz       $4, .L80091BDC
       sw        $16, 0x18($29)
      bnez       $17, .L80091BE4
       nop
  .L80091BDC:
      j          .L80091C40
       addiu     $2, $0, -0x4
  .L80091BE4:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80091C20
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2B08)
      addiu      $6, $6, %lo(D_800F2B08)
      jal        func_80002E80
       addiu     $7, $0, 0x78E
  .L80091C20:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      addu       $5, $2, $0
      lw         $2, 0x0($4)
      lw         $2, 0x64($2)
      jalr       $2
       addu      $6, $18, $0
  .L80091C40:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80091BB4

.globl func_80091C58
.ent func_80091C58
func_80091C58:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      beqz       $4, .L80091C88
       sw        $16, 0x18($29)
      beqz       $17, .L80091CEC
       addiu     $2, $0, -0x4
      bnez       $18, .L80091C90
       nop
  .L80091C88:
      j          .L80091CEC
       addiu     $2, $0, -0x4
  .L80091C90:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80091CCC
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2B14)
      addiu      $6, $6, %lo(D_800F2B14)
      jal        func_80002E80
       addiu     $7, $0, 0x7D1
  .L80091CCC:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      addu       $5, $2, $0
      lw         $2, 0x0($4)
      lw         $2, 0x24($2)
      jalr       $2
       addu      $6, $18, $0
  .L80091CEC:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80091C58

.globl func_80091D04
.ent func_80091D04
func_80091D04:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      beqz       $4, .L80091D34
       sw        $16, 0x18($29)
      beqz       $17, .L80091D98
       addiu     $2, $0, -0x4
      bnez       $18, .L80091D3C
       nop
  .L80091D34:
      j          .L80091D98
       addiu     $2, $0, -0x4
  .L80091D3C:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80091D78
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2B1C)
      addiu      $6, $6, %lo(D_800F2B1C)
      jal        func_80002E80
       addiu     $7, $0, 0x7F4
  .L80091D78:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      addu       $5, $2, $0
      lw         $2, 0x0($4)
      lw         $2, 0x6C($2)
      jalr       $2
       addu      $6, $18, $0
  .L80091D98:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80091D04

.globl func_80091DB0
.ent func_80091DB0
func_80091DB0:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $31, 0x20($29)
      beqz       $4, .L80091DD0
       sw        $16, 0x18($29)
      bnez       $17, .L80091DD8
       nop
  .L80091DD0:
      j          .L80091E34
       addiu     $2, $0, -0x4
  .L80091DD8:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80091E14
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2B24)
      addiu      $6, $6, %lo(D_800F2B24)
      jal        func_80002E80
       addiu     $7, $0, 0x817
  .L80091E14:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      lw         $3, 0x0($4)
      addu       $5, $2, $0
      lw         $2, 0x70($3)
      jalr       $2
       nop
  .L80091E34:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80091DB0

.globl func_80091E48
.ent func_80091E48
func_80091E48:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $31, 0x20($29)
      beqz       $4, .L80091E68
       sw        $16, 0x18($29)
      bnez       $17, .L80091E70
       nop
  .L80091E68:
      j          .L80091ECC
       addiu     $2, $0, -0x4
  .L80091E70:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80091EAC
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2B34)
      addiu      $6, $6, %lo(D_800F2B34)
      jal        func_80002E80
       addiu     $7, $0, 0x83A
  .L80091EAC:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      lw         $3, 0x0($4)
      addu       $5, $2, $0
      lw         $2, 0x78($3)
      jalr       $2
       nop
  .L80091ECC:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80091E48

.globl func_80091EE0
.ent func_80091EE0
func_80091EE0:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $31, 0x20($29)
      beqz       $4, .L80091F00
       sw        $16, 0x18($29)
      bnez       $17, .L80091F08
       nop
  .L80091F00:
      j          .L80091F64
       addiu     $2, $0, -0x4
  .L80091F08:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80091F44
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2B3C)
      addiu      $6, $6, %lo(D_800F2B3C)
      jal        func_80002E80
       addiu     $7, $0, 0x85D
  .L80091F44:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      lw         $3, 0x0($4)
      addu       $5, $2, $0
      lw         $2, 0x7C($3)
      jalr       $2
       nop
  .L80091F64:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80091EE0

.globl func_80091F78
.ent func_80091F78
func_80091F78:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $31, 0x20($29)
      beqz       $4, .L80091F98
       sw        $16, 0x18($29)
      bnez       $17, .L80091FA0
       nop
  .L80091F98:
      j          .L80091FFC
       addiu     $2, $0, -0x4
  .L80091FA0:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80091FDC
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2B48)
      addiu      $6, $6, %lo(D_800F2B48)
      jal        func_80002E80
       addiu     $7, $0, 0x880
  .L80091FDC:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      lw         $3, 0x0($4)
      addu       $5, $2, $0
      lw         $2, 0x80($3)
      jalr       $2
       nop
  .L80091FFC:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80091F78

.globl func_80092010
.ent func_80092010
func_80092010:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      beqz       $4, .L80092038
       sw        $16, 0x18($29)
      bnez       $17, .L80092040
       nop
  .L80092038:
      j          .L8009209C
       addiu     $2, $0, -0x4
  .L80092040:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L8009207C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2B54)
      addiu      $6, $6, %lo(D_800F2B54)
      jal        func_80002E80
       addiu     $7, $0, 0x8A3
  .L8009207C:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      addu       $5, $2, $0
      lw         $2, 0x0($4)
      lw         $2, 0x74($2)
      jalr       $2
       addu      $6, $18, $0
  .L8009209C:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80092010

.globl func_800920B4
.ent func_800920B4
func_800920B4:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $19, 0x24($29)
      addu       $19, $6, $0
      sw         $18, 0x20($29)
      addu       $18, $7, $0
      sw         $31, 0x28($29)
      beqz       $4, .L800920EC
       sw        $16, 0x18($29)
      beqz       $17, .L80092154
       addiu     $2, $0, -0x4
      bnez       $18, .L800920F4
       nop
  .L800920EC:
      j          .L80092154
       addiu     $2, $0, -0x4
  .L800920F4:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80092130
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2B5C)
      addiu      $6, $6, %lo(D_800F2B5C)
      jal        func_80002E80
       addiu     $7, $0, 0x8C6
  .L80092130:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      addu       $5, $2, $0
      lw         $2, 0x0($4)
      addu       $6, $19, $0
      lw         $2, 0x18($2)
      jalr       $2
       addu      $7, $18, $0
  .L80092154:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800920B4

.globl func_80092170
.ent func_80092170
func_80092170:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      beqz       $4, .L800921A0
       sw        $16, 0x18($29)
      bnez       $17, .L800921A8
       nop
  .L800921A0:
      j          .L8009221C
       addiu     $2, $0, -0x4
  .L800921A8:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L800921E4
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2B6C)
      addiu      $6, $6, %lo(D_800F2B6C)
      jal        func_80002E80
       addiu     $7, $0, 0x8E9
  .L800921E4:
      jal        func_80090834
       addu      $4, $17, $0
      addu       $5, $2, $0
      lw         $3, 0x2C($16)
      lw         $2, 0x40($29)
      lw         $3, 0x0($3)
      sw         $2, 0x10($29)
      lw         $2, 0x44($29)
      addu       $6, $18, $0
      sw         $2, 0x14($29)
      lw         $4, 0x2C($16)
      lw         $2, 0x28($3)
      jalr       $2
       addu      $7, $19, $0
  .L8009221C:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80092170

.globl func_80092238
.ent func_80092238
func_80092238:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      beqz       $4, .L80092268
       sw        $16, 0x18($29)
      bnez       $17, .L80092270
       nop
  .L80092268:
      j          .L800922E4
       addiu     $2, $0, -0x4
  .L80092270:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L800922AC
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2B80)
      addiu      $6, $6, %lo(D_800F2B80)
      jal        func_80002E80
       addiu     $7, $0, 0x90C
  .L800922AC:
      jal        func_80090834
       addu      $4, $17, $0
      addu       $5, $2, $0
      lw         $3, 0x2C($16)
      lw         $2, 0x40($29)
      lw         $3, 0x0($3)
      sw         $2, 0x10($29)
      lw         $2, 0x44($29)
      addu       $6, $18, $0
      sw         $2, 0x14($29)
      lw         $4, 0x2C($16)
      lw         $2, 0x3C($3)
      jalr       $2
       addu      $7, $19, $0
  .L800922E4:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80092238

.globl func_80092300
.ent func_80092300
func_80092300:
      addiu      $29, $29, -0x38
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $18, 0x28($29)
      addu       $18, $6, $0
      sw         $19, 0x2C($29)
      addu       $19, $7, $0
      sw         $31, 0x30($29)
      beqz       $4, .L80092330
       sw        $16, 0x20($29)
      bnez       $17, .L80092338
       nop
  .L80092330:
      j          .L800923BC
       addiu     $2, $0, -0x4
  .L80092338:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80092374
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2B94)
      addiu      $6, $6, %lo(D_800F2B94)
      jal        func_80002E80
       addiu     $7, $0, 0x92F
  .L80092374:
      jal        func_80090834
       addu      $4, $17, $0
      addu       $5, $2, $0
      lw         $3, 0x2C($16)
      lw         $2, 0x48($29)
      lw         $3, 0x0($3)
      sw         $2, 0x10($29)
      lw         $2, 0x4C($29)
      sw         $2, 0x14($29)
      lw         $2, 0x50($29)
      sw         $2, 0x18($29)
      lw         $2, 0x54($29)
      addu       $6, $18, $0
      sw         $2, 0x1C($29)
      lw         $4, 0x2C($16)
      lw         $2, 0x40($3)
      jalr       $2
       addu      $7, $19, $0
  .L800923BC:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80092300

.globl func_800923D8
.ent func_800923D8
func_800923D8:
      addiu      $29, $29, -0x38
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $18, 0x28($29)
      addu       $18, $6, $0
      sw         $19, 0x2C($29)
      addu       $19, $7, $0
      sw         $31, 0x30($29)
      beqz       $4, .L80092408
       sw        $16, 0x20($29)
      bnez       $17, .L80092410
       nop
  .L80092408:
      j          .L80092494
       addiu     $2, $0, -0x4
  .L80092410:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L8009244C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2BA8)
      addiu      $6, $6, %lo(D_800F2BA8)
      jal        func_80002E80
       addiu     $7, $0, 0x952
  .L8009244C:
      jal        func_80090834
       addu      $4, $17, $0
      addu       $5, $2, $0
      lw         $3, 0x2C($16)
      lw         $2, 0x48($29)
      lw         $3, 0x0($3)
      sw         $2, 0x10($29)
      lw         $2, 0x4C($29)
      sw         $2, 0x14($29)
      lw         $2, 0x50($29)
      sw         $2, 0x18($29)
      lw         $2, 0x54($29)
      addu       $6, $18, $0
      sw         $2, 0x1C($29)
      lw         $4, 0x2C($16)
      lw         $2, 0x44($3)
      jalr       $2
       addu      $7, $19, $0
  .L80092494:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800923D8

.globl func_800924B0
.ent func_800924B0
func_800924B0:
      addiu      $29, $29, -0x38
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $18, 0x28($29)
      addu       $18, $6, $0
      sw         $19, 0x2C($29)
      addu       $19, $7, $0
      sw         $31, 0x30($29)
      beqz       $4, .L800924E0
       sw        $16, 0x20($29)
      bnez       $17, .L800924E8
       nop
  .L800924E0:
      j          .L80092564
       addiu     $2, $0, -0x4
  .L800924E8:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L80092524
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2BC0)
      addiu      $6, $6, %lo(D_800F2BC0)
      jal        func_80002E80
       addiu     $7, $0, 0x975
  .L80092524:
      jal        func_80090834
       addu      $4, $17, $0
      addu       $5, $2, $0
      lw         $3, 0x2C($16)
      lw         $2, 0x48($29)
      lw         $3, 0x0($3)
      sw         $2, 0x10($29)
      lw         $2, 0x4C($29)
      sw         $2, 0x14($29)
      lw         $2, 0x50($29)
      addu       $6, $18, $0
      sw         $2, 0x18($29)
      lw         $4, 0x2C($16)
      lw         $2, 0x48($3)
      jalr       $2
       addu      $7, $19, $0
  .L80092564:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800924B0

.globl func_80092580
.ent func_80092580
func_80092580:
      addiu      $29, $29, -0x38
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      sw         $18, 0x28($29)
      addu       $18, $6, $0
      sw         $19, 0x2C($29)
      addu       $19, $7, $0
      sw         $31, 0x30($29)
      beqz       $4, .L800925B0
       sw        $16, 0x20($29)
      bnez       $17, .L800925B8
       nop
  .L800925B0:
      j          .L80092634
       addiu     $2, $0, -0x4
  .L800925B8:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L800925F4
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2BD0)
      addiu      $6, $6, %lo(D_800F2BD0)
      jal        func_80002E80
       addiu     $7, $0, 0x998
  .L800925F4:
      jal        func_80090834
       addu      $4, $17, $0
      addu       $5, $2, $0
      lw         $3, 0x2C($16)
      lw         $2, 0x48($29)
      lw         $3, 0x0($3)
      sw         $2, 0x10($29)
      lw         $2, 0x4C($29)
      sw         $2, 0x14($29)
      lw         $2, 0x50($29)
      addu       $6, $18, $0
      sw         $2, 0x18($29)
      lw         $4, 0x2C($16)
      lw         $2, 0x4C($3)
      jalr       $2
       addu      $7, $19, $0
  .L80092634:
      lw         $31, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80092580

.globl func_80092650
.ent func_80092650
func_80092650:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      beqz       $4, .L80092680
       sw        $16, 0x18($29)
      bnez       $17, .L80092688
       nop
  .L80092680:
      j          .L800926FC
       addiu     $2, $0, -0x4
  .L80092688:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L800926C4
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2BE4)
      addiu      $6, $6, %lo(D_800F2BE4)
      jal        func_80002E80
       addiu     $7, $0, 0x9BB
  .L800926C4:
      jal        func_80090834
       addu      $4, $17, $0
      addu       $5, $2, $0
      lw         $3, 0x2C($16)
      lw         $2, 0x40($29)
      lw         $3, 0x0($3)
      sw         $2, 0x10($29)
      lw         $2, 0x44($29)
      addu       $6, $18, $0
      sw         $2, 0x14($29)
      lw         $4, 0x2C($16)
      lw         $2, 0x50($3)
      jalr       $2
       addu      $7, $19, $0
  .L800926FC:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80092650

.globl func_80092718
.ent func_80092718
func_80092718:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      beqz       $4, .L80092748
       sw        $16, 0x18($29)
      bnez       $17, .L80092750
       nop
  .L80092748:
      j          .L800927C4
       addiu     $2, $0, -0x4
  .L80092750:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L8009278C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2BF8)
      addiu      $6, $6, %lo(D_800F2BF8)
      jal        func_80002E80
       addiu     $7, $0, 0x9DE
  .L8009278C:
      jal        func_80090834
       addu      $4, $17, $0
      addu       $5, $2, $0
      lw         $3, 0x2C($16)
      lw         $2, 0x40($29)
      lw         $3, 0x0($3)
      sw         $2, 0x10($29)
      lw         $2, 0x44($29)
      addu       $6, $18, $0
      sw         $2, 0x14($29)
      lw         $4, 0x2C($16)
      lw         $2, 0x54($3)
      jalr       $2
       addu      $7, $19, $0
  .L800927C4:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80092718

.globl func_800927E0
.ent func_800927E0
func_800927E0:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      beqz       $4, .L80092808
       sw        $16, 0x18($29)
      bnez       $17, .L80092810
       nop
  .L80092808:
      j          .L8009286C
       addiu     $2, $0, -0x4
  .L80092810:
      lw         $16, 0x8($4)
      lw         $2, 0x2C($16)
      bnez       $2, .L8009284C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2964)
      addiu      $4, $4, %lo(D_800F2964)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2C10)
      addiu      $6, $6, %lo(D_800F2C10)
      jal        func_80002E80
       addiu     $7, $0, 0xA01
  .L8009284C:
      jal        func_80090834
       addu      $4, $17, $0
      lw         $4, 0x2C($16)
      addu       $5, $2, $0
      lw         $2, 0x0($4)
      lw         $2, 0x84($2)
      jalr       $2
       addu      $6, $18, $0
  .L8009286C:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800927E0

.globl func_80092884
.ent func_80092884
func_80092884:
      beqz       $4, .L800928A4
       addiu     $2, $0, -0x4
      beqz       $5, .L8009289C
       nop
      lw         $2, 0x4($4)
      sw         $2, 0x0($5)
  .L8009289C:
      jr         $31
       addiu     $2, $0, 0x1
  .L800928A4:
      jr         $31
       nop
.end func_80092884

.globl func_800928AC
.ent func_800928AC
func_800928AC:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      bnez       $4, .L800928D4
       sw        $16, 0x18($29)
      j          .L80092928
       addiu     $2, $0, -0x4
  .L800928D4:
      lw         $16, 0x4($4)
      lw         $2, 0x1C($16)
      bnez       $2, .L80092910
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2C1C)
      addiu      $4, $4, %lo(D_800F2C1C)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2C6C)
      addiu      $6, $6, %lo(D_800F2C6C)
      jal        func_80002E80
       addiu     $7, $0, 0xA4C
  .L80092910:
      lw         $4, 0x1C($16)
      lw         $2, 0x0($4)
      addu       $5, $17, $0
      lw         $2, 0x4($2)
      jalr       $2
       addu      $6, $18, $0
  .L80092928:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800928AC

.globl func_80092940
.ent func_80092940
func_80092940:
      beqz       $4, .L80092964
       addiu     $2, $0, -0x4
      lw         $4, 0x4($4)
      beqz       $5, .L8009295C
       nop
      lw         $2, 0x1C($4)
      sw         $2, 0x0($5)
  .L8009295C:
      jr         $31
       addiu     $2, $0, 0x1
  .L80092964:
      jr         $31
       nop
.end func_80092940

.globl func_8009296C
.ent func_8009296C
func_8009296C:
      beqz       $4, .L80092990
       addiu     $2, $0, -0x4
      lw         $4, 0x4($4)
      beqz       $5, .L80092988
       nop
      lw         $2, 0x20($4)
      sw         $2, 0x0($5)
  .L80092988:
      jr         $31
       addiu     $2, $0, 0x1
  .L80092990:
      jr         $31
       nop
.end func_8009296C

.globl func_80092998
.ent func_80092998
func_80092998:
      beqz       $4, .L800929BC
       addiu     $2, $0, -0x4
      lw         $4, 0x4($4)
      beqz       $5, .L800929B4
       nop
      lw         $2, 0x24($4)
      sw         $2, 0x0($5)
  .L800929B4:
      jr         $31
       addiu     $2, $0, 0x1
  .L800929BC:
      jr         $31
       nop
.end func_80092998

.globl func_800929C4
.ent func_800929C4
func_800929C4:
      beqz       $4, .L800929E8
       addiu     $2, $0, -0x4
      lw         $4, 0x4($4)
      beqz       $5, .L800929E0
       nop
      lw         $2, 0x28($4)
      sw         $2, 0x0($5)
  .L800929E0:
      jr         $31
       addiu     $2, $0, 0x1
  .L800929E8:
      jr         $31
       nop
.end func_800929C4

.globl func_800929F0
.ent func_800929F0
func_800929F0:
      beqz       $4, .L80092A14
       addiu     $2, $0, -0x4
      lw         $4, 0x4($4)
      beqz       $5, .L80092A0C
       nop
      lw         $2, 0x2C($4)
      sw         $2, 0x0($5)
  .L80092A0C:
      jr         $31
       addiu     $2, $0, 0x1
  .L80092A14:
      jr         $31
       nop
.end func_800929F0

.globl func_80092A1C
.ent func_80092A1C
func_80092A1C:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $31, 0x20($29)
      bnez       $4, .L80092A3C
       sw        $16, 0x18($29)
      j          .L80092A8C
       addiu     $2, $0, -0x4
  .L80092A3C:
      lw         $16, 0x4($4)
      lw         $2, 0x20($16)
      bnez       $2, .L80092A78
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2C7C)
      addiu      $4, $4, %lo(D_800F2C7C)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2CC0)
      addiu      $6, $6, %lo(D_800F2CC0)
      jal        func_80002E80
       addiu     $7, $0, 0xB29
  .L80092A78:
      lw         $4, 0x20($16)
      lw         $2, 0x0($4)
      lw         $2, 0x20($2)
      jalr       $2
       addu      $5, $17, $0
  .L80092A8C:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80092A1C

.globl func_80092AA0
.ent func_80092AA0
func_80092AA0:
      sw         $6, 0x8($29)
      sw         $7, 0xC($29)
      addiu      $29, $29, -0x38
      sw         $19, 0x24($29)
      addu       $19, $5, $0
      sw         $31, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
      beqz       $4, .L80092ADC
       sw        $6, 0x40($29)
      bnez       $19, .L80092AE4
       addiu     $5, $29, 0x10
  .L80092ADC:
      j          .L80092B70
       addiu     $2, $0, -0x4
  .L80092AE4:
      lw         $18, 0x4($4)
      lw         $4, 0x14($18)
      lw         $2, 0x4($4)
      lw         $2, 0xC($2)
      jalr       $2
       addiu     $20, $29, 0x44
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L80092B70
       addu      $2, $17, $0
      lw         $2, 0x10($29)
      beqz       $2, .L80092B6C
       addu      $16, $0, $0
      addiu      $21, $0, 0x1
  .L80092B1C:
      lw         $4, 0x14($18)
      lw         $2, 0x4($4)
      addu       $5, $16, $0
      lw         $2, 0x10($2)
      jalr       $2
       addiu     $6, $29, 0x14
      addu       $17, $2, $0
      bnel       $17, $21, .L80092B58
       addiu     $17, $0, 0x1
      lw         $4, 0x14($29)
      lw         $5, 0x40($29)
      jalr       $19
       addu      $6, $20, $0
      beqz       $2, .L80092B70
       addu      $2, $17, $0
  .L80092B58:
      lw         $2, 0x10($29)
      addiu      $16, $16, 0x1
      sltu       $2, $16, $2
      bnez       $2, .L80092B1C
       nop
  .L80092B6C:
      addu       $2, $17, $0
  .L80092B70:
      lw         $31, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80092AA0

.globl func_80092B94
.ent func_80092B94
func_80092B94:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      bnez       $4, .L80092BC4
       sw        $16, 0x18($29)
      j          .L80092C28
       addiu     $2, $0, -0x4
  .L80092BC4:
      lw         $16, 0x4($4)
      lw         $2, 0x14($16)
      bnez       $2, .L80092C08
       addu      $5, $17, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2CD0)
      addiu      $4, $4, %lo(D_800F2CD0)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2D24)
      addiu      $6, $6, %lo(D_800F2D24)
      jal        func_80002E80
       addiu     $7, $0, 0xB83
      lw         $2, 0x14($16)
      addu       $5, $17, $0
  .L80092C08:
      lw         $3, 0x4($2)
      lw         $2, 0x40($29)
      addu       $6, $18, $0
      sw         $2, 0x10($29)
      lw         $4, 0x14($16)
      lw         $2, 0x18($3)
      jalr       $2
       addu      $7, $19, $0
  .L80092C28:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80092B94

.globl func_80092C44
.ent func_80092C44
func_80092C44:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      bnez       $4, .L80092C6C
       sw        $16, 0x18($29)
      j          .L80092CC0
       addiu     $2, $0, -0x4
  .L80092C6C:
      lw         $16, 0x4($4)
      lw         $2, 0x14($16)
      bnez       $2, .L80092CA8
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2CD0)
      addiu      $4, $4, %lo(D_800F2CD0)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2D38)
      addiu      $6, $6, %lo(D_800F2D38)
      jal        func_80002E80
       addiu     $7, $0, 0xBA6
  .L80092CA8:
      lw         $4, 0x14($16)
      lw         $2, 0x4($4)
      addu       $5, $17, $0
      lw         $2, 0x1C($2)
      jalr       $2
       addu      $6, $18, $0
  .L80092CC0:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80092C44

.globl func_80092CD8
.ent func_80092CD8
func_80092CD8:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      bnez       $4, .L80092D08
       sw        $16, 0x18($29)
      j          .L80092D74
       addiu     $2, $0, -0x4
  .L80092D08:
      lw         $16, 0x4($4)
      lw         $2, 0x14($16)
      bnez       $2, .L80092D48
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2CD0)
      addiu      $4, $4, %lo(D_800F2CD0)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2D48)
      addiu      $6, $6, %lo(D_800F2D48)
      jal        func_80002E80
       addiu     $7, $0, 0xBC9
      lw         $2, 0x14($16)
  .L80092D48:
      lw         $3, 0x4($2)
      lw         $2, 0x40($29)
      addu       $5, $17, $0
      sw         $2, 0x10($29)
      lw         $2, 0x44($29)
      addu       $6, $18, $0
      sw         $2, 0x14($29)
      lw         $4, 0x14($16)
      lw         $2, 0x20($3)
      jalr       $2
       addu      $7, $19, $0
  .L80092D74:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80092CD8

.globl func_80092D90
.ent func_80092D90
func_80092D90:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x24($29)
      bnez       $4, .L80092DB8
       sw        $16, 0x18($29)
      j          .L80092E0C
       addiu     $2, $0, -0x4
  .L80092DB8:
      lw         $16, 0x4($4)
      lw         $2, 0x14($16)
      bnez       $2, .L80092DF4
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2CD0)
      addiu      $4, $4, %lo(D_800F2CD0)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2D58)
      addiu      $6, $6, %lo(D_800F2D58)
      jal        func_80002E80
       addiu     $7, $0, 0xBEC
  .L80092DF4:
      lw         $4, 0x14($16)
      lw         $2, 0x4($4)
      addu       $5, $17, $0
      lw         $2, 0x24($2)
      jalr       $2
       addu      $6, $18, $0
  .L80092E0C:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80092D90

.globl func_80092E24
.ent func_80092E24
func_80092E24:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      bnez       $4, .L80092E54
       sw        $16, 0x18($29)
      j          .L80092EAC
       addiu     $2, $0, -0x4
  .L80092E54:
      lw         $16, 0x4($4)
      lw         $2, 0x14($16)
      bnez       $2, .L80092E90
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2CD0)
      addiu      $4, $4, %lo(D_800F2CD0)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2D68)
      addiu      $6, $6, %lo(D_800F2D68)
      jal        func_80002E80
       addiu     $7, $0, 0xC0F
  .L80092E90:
      lw         $4, 0x14($16)
      addu       $5, $17, $0
      lw         $2, 0x4($4)
      addu       $6, $18, $0
      lw         $2, 0x28($2)
      jalr       $2
       addu      $7, $19, $0
  .L80092EAC:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80092E24

.globl func_80092EC8
.ent func_80092EC8
func_80092EC8:
      jr         $31
       addiu     $2, $0, -0x2
.end func_80092EC8

.globl func_80092ED0
.ent func_80092ED0
func_80092ED0:
      jr         $31
       addiu     $2, $0, -0x2
.end func_80092ED0

.globl func_80092ED8
.ent func_80092ED8
func_80092ED8:
      jr         $31
       addiu     $2, $0, -0x2
.end func_80092ED8

.globl func_80092EE0
.ent func_80092EE0
func_80092EE0:
      jr         $31
       addiu     $2, $0, -0x2
.end func_80092EE0

.globl func_80092EE8
.ent func_80092EE8
func_80092EE8:
      jr         $31
       addiu     $2, $0, -0x2
.end func_80092EE8

.globl func_80092EF0
.ent func_80092EF0
func_80092EF0:
      jr         $31
       addiu     $2, $0, -0x2
.end func_80092EF0

.globl func_80092EF8
.ent func_80092EF8
func_80092EF8:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $31, 0x20($29)
      bnez       $4, .L80092F18
       sw        $16, 0x18($29)
      j          .L80092F68
       addiu     $2, $0, -0x4
  .L80092F18:
      lw         $16, 0x4($4)
      lw         $2, 0x14($16)
      bnez       $2, .L80092F54
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2CD0)
      addiu      $4, $4, %lo(D_800F2CD0)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2D78)
      addiu      $6, $6, %lo(D_800F2D78)
      jal        func_80002E80
       addiu     $7, $0, 0xD31
  .L80092F54:
      lw         $4, 0x14($16)
      lw         $2, 0x4($4)
      lw         $2, 0x30($2)
      jalr       $2
       addu      $5, $17, $0
  .L80092F68:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80092EF8

.globl func_80092F7C
.ent func_80092F7C
func_80092F7C:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      bnez       $4, .L80092FAC
       sw        $16, 0x18($29)
      j          .L80093004
       addiu     $2, $0, -0x4
  .L80092FAC:
      lw         $16, 0x4($4)
      lw         $2, 0x14($16)
      bnez       $2, .L80092FE8
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2CD0)
      addiu      $4, $4, %lo(D_800F2CD0)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2D88)
      addiu      $6, $6, %lo(D_800F2D88)
      jal        func_80002E80
       addiu     $7, $0, 0xD54
  .L80092FE8:
      lw         $4, 0x14($16)
      addu       $5, $17, $0
      lw         $2, 0x4($4)
      addu       $6, $18, $0
      lw         $2, 0x34($2)
      jalr       $2
       addu      $7, $19, $0
  .L80093004:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80092F7C

.globl func_80093020
.ent func_80093020
func_80093020:
      jr         $31
       nop
.end func_80093020

.globl func_80093028
.ent func_80093028
func_80093028:
      jr         $31
       nop
.end func_80093028

.globl func_80093030
.ent func_80093030
func_80093030:
      addiu      $29, $29, -0x30
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      beqz       $4, .L80093060
       sw        $16, 0x18($29)
      bnez       $17, .L80093068
       nop
  .L80093060:
      j          .L800930C0
       addiu     $2, $0, -0x4
  .L80093068:
      lw         $16, 0x4($4)
      lw         $2, 0x14($16)
      bnez       $2, .L800930A4
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2CD0)
      addiu      $4, $4, %lo(D_800F2CD0)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2D9C)
      addiu      $6, $6, %lo(D_800F2D9C)
      jal        func_80002E80
       addiu     $7, $0, 0xDC0
  .L800930A4:
      lw         $4, 0x14($16)
      addu       $5, $18, $0
      lw         $2, 0x4($4)
      addu       $6, $17, $0
      lw         $2, 0x38($2)
      jalr       $2
       addu      $7, $19, $0
  .L800930C0:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80093030

.globl func_800930DC
.ent func_800930DC
func_800930DC:
      jr         $31
       nop
.end func_800930DC

.globl func_800930E4
.ent func_800930E4
func_800930E4:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      bnez       $16, .L8009312C
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2650)
      addiu      $4, $4, %lo(D_800F2650)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2DB0)
      addiu      $6, $6, %lo(D_800F2DB0)
      jal        func_80002E80
       addiu     $7, $0, 0xE03
  .L8009312C:
      bnez       $17, .L80093164
       addu      $4, $16, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2DC8)
      addiu      $4, $4, %lo(D_800F2DC8)
      lui        $5, %hi(D_800F2620)
      addiu      $5, $5, %lo(D_800F2620)
      lui        $6, %hi(D_800F2DB0)
      addiu      $6, $6, %lo(D_800F2DB0)
      jal        func_80002E80
       addiu     $7, $0, 0xE04
      addu       $4, $16, $0
  .L80093164:
      addu       $5, $0, $0
      addu       $6, $17, $0
      lw         $2, 0x0($4)
      addiu      $3, $6, 0x8
      sw         $3, 0x10($29)
      lw         $2, 0x24($2)
      jalr       $2
       addiu     $7, $6, 0x4
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800930E4

.globl func_80093198
.ent func_80093198
func_80093198:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      bnez       $18, .L800931BC
       sw        $16, 0x10($29)
      j          .L80093200
       addiu     $2, $0, -0x4
  .L800931BC:
      jal        func_800900C0
       nop
      addu       $16, $2, $0
      beqz       $16, .L80093200
       addiu     $2, $0, -0x5
      lw         $4, 0x8($16)
      jal        func_8009049C
       nop
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800931F4
       nop
      j          .L800931FC
       sw        $16, 0x0($18)
  .L800931F4:
      jal        func_8009021C
       addu      $4, $16, $0
  .L800931FC:
      addu       $2, $17, $0
  .L80093200:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80093198

.globl func_80093218
.ent func_80093218
func_80093218:
      jr         $31
       nop
.end func_80093218

.globl func_80093220
.ent func_80093220
func_80093220:
      jr         $31
       nop
.end func_80093220

.globl func_80093228
.ent func_80093228
func_80093228:
      jr         $31
       nop
.end func_80093228

.globl func_80093230
.ent func_80093230
func_80093230:
      addu       $19, $7, $0
      sw         $31, 0x28($29)
      beqz       $4, .L80093248
       sw        $16, 0x18($29)
.end func_80093230

.globl func_80093240
.ent func_80093240
func_80093240:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
  .L80093248:
      addiu      $4, $0, 0xC
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $3, $2, $0
      beqz       $3, .L80093270
       addiu     $2, $0, -0x1
      sw         $2, 0x4($3)
      addiu      $2, $0, 0x1
      sw         $0, 0x0($3)
      sw         $2, 0x8($3)
  .L80093270:
      lw         $31, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_80093240

.globl func_80093280
.ent func_80093280
func_80093280:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      bnez       $18, .L800932A8
       sw        $16, 0x10($29)
      j          .L80093304
       addiu     $2, $0, -0x4
  .L800932A8:
      lw         $16, 0x0($18)
      beqz       $16, .L80093300
       addiu     $19, $0, -0x1
      lw         $5, 0x4($18)
      beq        $5, $19, .L800932D8
       addiu     $17, $0, 0x1
      lw         $2, 0x0($16)
      lw         $2, 0x10($2)
      jalr       $2
       addu      $4, $16, $0
      addu       $17, $2, $0
      sw         $19, 0x4($18)
  .L800932D8:
      lw         $2, 0x0($16)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $16, $0
      addu       $3, $17, $0
      bltz       $3, .L800932F8
       sw        $0, 0x0($18)
      addu       $3, $2, $0
  .L800932F8:
      j          .L80093304
       addu      $2, $3, $0
  .L80093300:
      addiu      $2, $0, 0x1
  .L80093304:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80093280

.globl func_80093320
.ent func_80093320
func_80093320:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L80093344
       sw        $31, 0x14($29)
      jal        func_80093280
       nop
      jal        func_80052540
       addu      $4, $16, $0
  .L80093344:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80093320

.globl func_80093354
.ent func_80093354
func_80093354:
      lw         $4, 0x2C($16)
      addu       $5, $2, $0
      lw         $2, 0x0($4)
      lw         $2, 0x84($2)
      jalr       $2
       addu      $6, $18, $0
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
.end func_80093354

.globl func_80093380
.ent func_80093380
func_80093380:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      bnez       $16, .L800933C8
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2E84)
      addiu      $4, $4, %lo(D_800F2E84)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F2EF4)
      addiu      $6, $6, %lo(D_800F2EF4)
      jal        func_80002E80
       addiu     $7, $0, 0x1C0
  .L800933C8:
      bnez       $17, .L80093400
       addu      $5, $0, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2F00)
      addiu      $4, $4, %lo(D_800F2F00)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F2EF4)
      addiu      $6, $6, %lo(D_800F2EF4)
      jal        func_80002E80
       addiu     $7, $0, 0x1C1
      addu       $5, $0, $0
  .L80093400:
      addu       $3, $5, $0
      addu       $4, $16, $5
  .L80093408:
      addiu      $5, $5, 0x1
      sll        $2, $3, 24
      srl        $3, $3, 8
      lbu        $4, 0x0($4)
      xor        $2, $2, $3
      xor        $3, $2, $4
      sltiu      $2, $5, 0x4
      bnel       $2, $0, .L80093408
       addu      $4, $16, $5
      divu       $zero, $3, $17
      bnez       $17, .L8009343C
       nop
      .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
  .L8009343C:
      mfhi       $2
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80093380

.globl func_80093454
.ent func_80093454
func_80093454:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $31, 0x18($29)
      jal        func_80017780
       addu      $4, $16, $0
      addu       $4, $16, $0
      addu       $5, $2, $0
      jal        func_8009BA34
       addu      $6, $17, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80093454

.globl func_800934A0
.ent func_800934A0
func_800934A0:
      addiu      $29, $29, -0x40
      sw         $18, 0x30($29)
      addu       $18, $4, $0
      sw         $19, 0x34($29)
      addu       $19, $5, $0
      sw         $16, 0x28($29)
      addiu      $16, $0, -0x5
      sw         $31, 0x3C($29)
      sw         $20, 0x38($29)
      sw         $17, 0x2C($29)
      sw         $0, 0x20($29)
      bnez       $18, .L80093500
       sw        $0, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2F4C)
      addiu      $4, $4, %lo(D_800F2F4C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F2F9C)
      addiu      $6, $6, %lo(D_800F2F9C)
      jal        func_80002E80
       addiu     $7, $0, 0x1F9
  .L80093500:
      bnez       $19, .L80093538
       addu      $4, $0, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2FAC)
      addiu      $4, $4, %lo(D_800F2FAC)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F2F9C)
      addiu      $6, $6, %lo(D_800F2F9C)
      jal        func_80002E80
       addiu     $7, $0, 0x1FA
      addu       $4, $0, $0
  .L80093538:
      addiu      $5, $0, 0x2
      jal        func_800D27B4
       addiu     $6, $0, 0x2000
      addu       $17, $2, $0
      beqz       $17, .L800935F4
       addiu     $20, $0, 0x2000
      addu       $2, $20, $0
      sw         $17, 0x18($29)
      sw         $2, 0x1C($29)
  .L8009355C:
      addu       $4, $19, $0
      lw         $2, 0x4($19)
      addiu      $5, $29, 0x18
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $6, $29, 0x20
      addu       $16, $2, $0
      blez       $16, .L800935EC
       nop
      lw         $2, 0x20($29)
      sw         $0, 0x20($29)
      beqz       $2, .L800935D8
       sw        $2, 0x1C($29)
  .L80093590:
      addu       $4, $18, $0
      lw         $2, 0x4($18)
      addiu      $5, $29, 0x18
      lw         $2, 0xC($2)
      jalr       $2
       addiu     $6, $29, 0x24
      addu       $16, $2, $0
      blez       $16, .L800935D8
       nop
      lw         $2, 0x24($29)
      lw         $3, 0x18($29)
      lw         $4, 0x1C($29)
      sw         $0, 0x24($29)
      addu       $3, $3, $2
      subu       $4, $4, $2
      sw         $3, 0x18($29)
      bnez       $4, .L80093590
       sw        $4, 0x1C($29)
  .L800935D8:
      beqz       $16, .L800935EC
       addiu     $16, $0, -0x9
      sw         $17, 0x18($29)
      j          .L8009355C
       sw        $20, 0x1C($29)
  .L800935EC:
      beql       $16, $0, .L800935F4
       addiu     $16, $0, 0x1
  .L800935F4:
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80093624
       addu      $4, $19, $0
      lw         $2, 0x4($19)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
      lw         $2, 0x4($18)
      addu       $4, $18, $0
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
  .L80093624:
      beqz       $17, .L80093638
       addu      $2, $16, $0
      jal        func_800D2814
       addu      $4, $17, $0
      addu       $2, $16, $0
  .L80093638:
      lw         $31, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800934A0

.globl func_80093658
.ent func_80093658
func_80093658:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BC34
       andi      $5, $5, 0xFFFF
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80093658

.globl func_8009367C
.ent func_8009367C
func_8009367C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BD90
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009367C

.globl func_800936A0
.ent func_800936A0
func_800936A0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BC88
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800936A0

.globl func_800936C4
.ent func_800936C4
func_800936C4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BE10
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800936C4

.globl func_800936E8
.ent func_800936E8
func_800936E8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BD0C
       nop
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800936E8

.globl func_8009370C
.ent func_8009370C
func_8009370C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BEEC
       andi      $6, $6, 0xFF
      jal        func_800CC3A0
       addu      $4, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009370C

.globl func_80093730
.ent func_80093730
func_80093730:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      bnez       $16, .L80093780
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2FFC)
      addiu      $4, $4, %lo(D_800F2FFC)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3048)
      addiu      $6, $6, %lo(D_800F3048)
      jal        func_80002E80
       addiu     $7, $0, 0x237
  .L80093780:
      lw         $5, 0x0($16)
      jal        func_800936A0
       addu      $4, $17, $0
      blez       $2, .L800937BC
       nop
      lw         $5, 0x4($16)
      jal        func_800936A0
       addu      $4, $17, $0
      blez       $2, .L800937BC
       nop
      bnez       $18, .L800937BC
       nop
      lw         $5, 0x8($16)
      jal        func_800936A0
       addu      $4, $17, $0
  .L800937BC:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80093730

.globl func_800937D4
.ent func_800937D4
func_800937D4:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      bnez       $16, .L80093824
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F2FFC)
      addiu      $4, $4, %lo(D_800F2FFC)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3054)
      addiu      $6, $6, %lo(D_800F3054)
      jal        func_80002E80
       addiu     $7, $0, 0x242
  .L80093824:
      addu       $4, $17, $0
      jal        func_800936C4
       addu      $5, $16, $0
      blez       $2, .L80093858
       addu      $4, $17, $0
      jal        func_800936C4
       addiu     $5, $16, 0x4
      blez       $2, .L80093858
       nop
      bnez       $18, .L80093858
       addu      $4, $17, $0
      jal        func_800936C4
       addiu     $5, $16, 0x8
  .L80093858:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800937D4

.globl func_80093870
.ent func_80093870
func_80093870:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800D2814
       addu      $4, $5, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80093870

.globl func_8009388C
.ent func_8009388C
func_8009388C:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      bnez       $17, .L800938D4
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3060)
      addiu      $4, $4, %lo(D_800F3060)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F30AC)
      addiu      $6, $6, %lo(D_800F30AC)
      jal        func_80002E80
       addiu     $7, $0, 0x282
  .L800938D4:
      bnez       $16, .L80093908
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F30C8)
      addiu      $4, $4, %lo(D_800F30C8)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F30AC)
      addiu      $6, $6, %lo(D_800F30AC)
      jal        func_80002E80
       addiu     $7, $0, 0x283
  .L80093908:
      lw         $2, 0x0($16)
      bnez       $2, .L80093940
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3114)
      addiu      $4, $4, %lo(D_800F3114)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F30AC)
      addiu      $6, $6, %lo(D_800F30AC)
      jal        func_80002E80
       addiu     $7, $0, 0x284
  .L80093940:
      lw         $5, 0x0($16)
      lw         $6, 0x4($16)
      jal        func_80013F00
       addu      $4, $17, $0
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009388C

.globl func_80093968
.ent func_80093968
func_80093968:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800CC3B0
       addu      $6, $0, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80093968

.globl func_80093984
.ent func_80093984
func_80093984:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800936E8
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80093984

.globl func_800939A0
.ent func_800939A0
func_800939A0:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      beqz       $16, .L800939D0
       sw        $31, 0x18($29)
      beqz       $17, .L80093A20
       addiu     $2, $0, -0x4
      lw         $2, 0x0($17)
      bnez       $2, .L800939D8
       nop
  .L800939D0:
      j          .L80093A20
       addiu     $2, $0, -0x4
  .L800939D8:
      jal        func_800D28BC
       addu      $4, $16, $0
      lw         $5, 0x4($17)
      sltu       $2, $2, $5
      beqz       $2, .L800939FC
       nop
      jal        func_800D28D8
       addu      $4, $16, $0
      addu       $16, $2, $0
  .L800939FC:
      beqz       $16, .L80093A1C
       addu      $4, $16, $0
      lui        $5, %hi(func_8009388C)
      addiu      $5, $5, %lo(func_8009388C)
      jal        func_800D292C
       addu      $6, $17, $0
      j          .L80093A20
       nop
  .L80093A1C:
      addiu      $2, $0, -0x5
  .L80093A20:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800939A0

.globl func_80093A34
.ent func_80093A34
func_80093A34:
      addiu      $29, $29, -0x18
      addu       $6, $5, $0
      lui        $5, %hi(func_80093968)
      sw         $31, 0x10($29)
      jal        func_800D292C
       addiu     $5, $5, %lo(func_80093968)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80093A34

.globl func_80093A58
.ent func_80093A58
func_80093A58:
      addiu      $29, $29, -0x18
      addu       $6, $5, $0
      lui        $5, %hi(func_80093984)
      sw         $31, 0x10($29)
      jal        func_800D292C
       addiu     $5, $5, %lo(func_80093984)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80093A58

.globl func_80093A7C
.ent func_80093A7C
func_80093A7C:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      addu       $4, $5, $0
      addiu      $5, $0, 0x2
      addu       $6, $0, $0
      addiu      $7, $29, 0x18
      sw         $31, 0x28($29)
      sw         $16, 0x20($29)
      jal        func_8009370C
       sw        $0, 0x18($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80093AF0
       addu      $2, $16, $0
      lw         $4, 0x18($29)
      beqz       $4, .L80093AF0
       nop
      jal        func_80017780
       sw        $4, 0x10($29)
      addu       $4, $17, $0
      addiu      $5, $29, 0x10
      addiu      $2, $2, 0x1
      jal        func_800939A0
       sw        $2, 0x14($29)
      lw         $4, 0x18($29)
      jal        func_800D2814
       addu      $16, $2, $0
      addu       $2, $16, $0
  .L80093AF0:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80093A7C

.globl func_80093B04
.ent func_80093B04
func_80093B04:
      addiu      $29, $29, -0x30
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $19, 0x24($29)
      addu       $19, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $16, 0x18($29)
      addu       $16, $0, $0
      bnez       $18, .L80093B5C
       sw        $31, 0x28($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3168)
      addiu      $4, $4, %lo(D_800F3168)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x381
  .L80093B5C:
      addiu      $3, $19, -0x1
      sltiu      $2, $3, 0x10
      beqz       $2, .L80093F7C
       lui       $2, %hi(jtbl_800F3358)
      addiu      $2, $2, %lo(jtbl_800F3358)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80093B84
.L80093B84:
      addiu      $2, $0, 0x2
      beq        $17, $2, .L80093F7C
       addu      $16, $18, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F31C0)
      addiu      $4, $4, %lo(D_800F31C0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x385
      j          .L80093F7C
       addu      $16, $18, $0
  .globl .L80093BC4
.L80093BC4:
      addiu      $2, $0, 0x1
      beq        $17, $2, .L80093F7C
       addiu     $16, $18, 0x4
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3204)
      addiu      $4, $4, %lo(D_800F3204)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x389
      j          .L80093F7C
       addiu     $16, $18, 0x4
  .globl .L80093C04
.L80093C04:
      addiu      $2, $0, 0x1
      beq        $17, $2, .L80093F7C
       addiu     $16, $18, 0x8
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3204)
      addiu      $4, $4, %lo(D_800F3204)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x38D
      j          .L80093F7C
       addiu     $16, $18, 0x8
  .globl .L80093C44
.L80093C44:
      addiu      $2, $0, 0x4
      beq        $17, $2, .L80093F7C
       addiu     $16, $18, 0xC
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3248)
      addiu      $4, $4, %lo(D_800F3248)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x391
      j          .L80093F7C
       addiu     $16, $18, 0xC
  .globl .L80093C84
.L80093C84:
      addiu      $2, $0, 0x3
      beq        $17, $2, .L80093F7C
       addiu     $16, $18, 0x1C
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F328C)
      addiu      $4, $4, %lo(D_800F328C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x395
      j          .L80093F7C
       addiu     $16, $18, 0x1C
  .globl .L80093CC4
.L80093CC4:
      addiu      $2, $0, 0x5
      beq        $17, $2, .L80093F7C
       addiu     $16, $18, 0x20
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F32D0)
      addiu      $4, $4, %lo(D_800F32D0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x399
      j          .L80093F7C
       addiu     $16, $18, 0x20
  .globl .L80093D04
.L80093D04:
      addiu      $2, $0, 0x1
      beq        $17, $2, .L80093F7C
       addiu     $16, $18, 0x28
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3204)
      addiu      $4, $4, %lo(D_800F3204)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x39D
      j          .L80093F7C
       addiu     $16, $18, 0x28
  .globl .L80093D44
.L80093D44:
      addiu      $2, $0, 0x5
      beq        $17, $2, .L80093F7C
       addiu     $16, $18, 0x2C
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F32D0)
      addiu      $4, $4, %lo(D_800F32D0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x3A1
      j          .L80093F7C
       addiu     $16, $18, 0x2C
  .globl .L80093D84
.L80093D84:
      addiu      $2, $0, 0x1
      beq        $17, $2, .L80093F7C
       addiu     $16, $18, 0x34
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3204)
      addiu      $4, $4, %lo(D_800F3204)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x3A5
      j          .L80093F7C
       addiu     $16, $18, 0x34
  .globl .L80093DC4
.L80093DC4:
      addiu      $2, $0, 0x6
      beq        $17, $2, .L80093F7C
       addiu     $16, $18, 0x38
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3314)
      addiu      $4, $4, %lo(D_800F3314)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x3A9
      j          .L80093F7C
       addiu     $16, $18, 0x38
  .globl .L80093E04
.L80093E04:
      addiu      $2, $0, 0x6
      beq        $17, $2, .L80093F7C
       addiu     $16, $18, 0x44
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3314)
      addiu      $4, $4, %lo(D_800F3314)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x3AD
      j          .L80093F7C
       addiu     $16, $18, 0x44
  .globl .L80093E44
.L80093E44:
      addiu      $2, $0, 0x6
      beq        $17, $2, .L80093F7C
       addiu     $16, $18, 0x50
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3314)
      addiu      $4, $4, %lo(D_800F3314)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x3B1
      j          .L80093F7C
       addiu     $16, $18, 0x50
  .globl .L80093E84
.L80093E84:
      addiu      $2, $0, 0x6
      beq        $17, $2, .L80093F7C
       addiu     $16, $18, 0x5C
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3314)
      addiu      $4, $4, %lo(D_800F3314)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x3B5
      j          .L80093F7C
       addiu     $16, $18, 0x5C
  .globl .L80093EC4
.L80093EC4:
      addiu      $2, $0, 0x3
      beq        $17, $2, .L80093F7C
       addiu     $16, $18, 0x68
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F328C)
      addiu      $4, $4, %lo(D_800F328C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x3B9
      j          .L80093F7C
       addiu     $16, $18, 0x68
  .globl .L80093F04
.L80093F04:
      addiu      $2, $0, 0x3
      beq        $17, $2, .L80093F7C
       addiu     $16, $18, 0x6C
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F328C)
      addiu      $4, $4, %lo(D_800F328C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x3BD
      j          .L80093F7C
       addiu     $16, $18, 0x6C
  .globl .L80093F44
.L80093F44:
      addiu      $2, $0, 0x1
      beq        $17, $2, .L80093F7C
       addiu     $16, $18, 0x70
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3204)
      addiu      $4, $4, %lo(D_800F3204)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F31B4)
      addiu      $6, $6, %lo(D_800F31B4)
      jal        func_80002E80
       addiu     $7, $0, 0x3C1
  .L80093F7C:
      addu       $2, $16, $0
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80093B04

.globl func_80093F9C
.ent func_80093F9C
func_80093F9C:
      addiu      $29, $29, -0x30
      sw         $20, 0x28($29)
      addu       $20, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $16, 0x18($29)
      addiu      $16, $0, 0x1
      beq        $18, $16, .L80094008
       sw        $31, 0x2C($29)
      addiu      $2, $0, 0x3
      beq        $18, $2, .L80094008
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3398)
      addiu      $4, $4, %lo(D_800F3398)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F33FC)
      addiu      $6, $6, %lo(D_800F33FC)
      jal        func_80002E80
       addiu     $7, $0, 0x3E5
  .L80094008:
      bnez       $19, .L8009403C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F340C)
      addiu      $4, $4, %lo(D_800F340C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F33FC)
      addiu      $6, $6, %lo(D_800F33FC)
      jal        func_80002E80
       addiu     $7, $0, 0x3E6
  .L8009403C:
      bnel       $20, $18, .L80094094
       addiu     $16, $0, -0x3
      beqz       $17, .L80094098
       addu      $2, $16, $0
      lw         $2, 0x0($17)
      bnez       $2, .L80094060
       addiu     $2, $0, 0x4
      j          .L80094094
       sw        $2, 0x4($17)
  .L80094060:
      lw         $2, 0x4($17)
      sltiu      $2, $2, 0x4
      beqz       $2, .L80094078
       addu      $5, $19, $0
      j          .L80094094
       addiu     $16, $0, -0x9
  .L80094078:
      addiu      $6, $0, 0x4
      lw         $4, 0x0($17)
      addu       $2, $6, $0
      jal        func_80013F00
       sw        $2, 0x4($17)
      j          .L80094098
       addu      $2, $16, $0
  .L80094094:
      addu       $2, $16, $0
  .L80094098:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80093F9C

.globl func_800940B8
.ent func_800940B8
func_800940B8:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $7, $0
      beqz       $16, .L80094100
       sw        $31, 0x20($29)
      lw         $2, 0x0($16)
      beqz       $2, .L80094100
       addiu     $2, $0, 0x1
      beq        $4, $2, .L800940F0
       addiu     $2, $0, 0x3
      bne        $4, $2, .L8009418C
       addiu     $2, $0, -0x4
  .L800940F0:
      lw         $3, 0x4($16)
      addiu      $2, $0, 0x4
      beq        $3, $2, .L80094108
       addiu     $2, $0, 0x1
  .L80094100:
      j          .L8009418C
       addiu     $2, $0, -0x4
  .L80094108:
      beq        $6, $2, .L80094144
       addiu     $2, $0, 0x3
      beq        $6, $2, .L80094144
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3398)
      addiu      $4, $4, %lo(D_800F3398)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F345C)
      addiu      $6, $6, %lo(D_800F345C)
      jal        func_80002E80
       addiu     $7, $0, 0x414
  .L80094144:
      bnez       $17, .L80094178
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F340C)
      addiu      $4, $4, %lo(D_800F340C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F345C)
      addiu      $6, $6, %lo(D_800F345C)
      jal        func_80002E80
       addiu     $7, $0, 0x415
  .L80094178:
      lw         $5, 0x0($16)
      lw         $6, 0x4($16)
      jal        func_80013F00
       addu      $4, $17, $0
      addiu      $2, $0, 0x1
  .L8009418C:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800940B8

.globl func_800941A0
.ent func_800941A0
func_800941A0:
      jr         $31
       addiu     $2, $0, -0x2
.end func_800941A0

.globl func_800941A8
.ent func_800941A8
func_800941A8:
      addiu      $29, $29, -0x18
      addu       $2, $4, $0
      addiu      $4, $4, -0x21
      andi       $4, $4, 0xFF
      sltiu      $4, $4, 0x5E
      sw         $31, 0x14($29)
      bnez       $4, .L800941D0
       sw        $16, 0x10($29)
  .L800941C8:
      j          .L80094214
       addu      $2, $0, $0
  .L800941D0:
      andi       $16, $2, 0xFF
      jal        func_80012640
       addu      $4, $16, $0
      bnez       $2, .L80094214
       addiu     $2, $0, 0x1
      lui        $2, %hi(D_800FAE04)
      lbu        $3, %lo(D_800FAE04)($2)
      beqz       $3, .L80094210
       addiu     $5, $2, %lo(D_800FAE04)
      addu       $4, $16, $0
  .L800941F8:
      lbu        $2, 0x0($5)
      beq        $2, $4, .L800941C8
       addiu     $5, $5, 0x1
      lbu        $2, 0x0($5)
      bnez       $2, .L800941F8
       nop
  .L80094210:
      addiu      $2, $0, 0x1
  .L80094214:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800941A8

.globl func_80094224
.ent func_80094224
func_80094224:
      addiu      $29, $29, -0x30
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $31, 0x28($29)
      sw         $18, 0x20($29)
      sw         $17, 0x1C($29)
      bnez       $19, .L80094270
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3470)
      addiu      $4, $4, %lo(D_800F3470)
      lui        $5, %hi(D_800F2ED4)
      lui        $6, %hi(D_800F34C0)
      addiu      $5, $5, %lo(D_800F2ED4)
      addiu      $6, $6, %lo(D_800F34C0)
      jal        func_80002E80
       addiu     $7, $0, 0x470
  .L80094270:
      lbu        $2, 0x0($19)
      bnez       $2, .L80094284
       addu      $17, $0, $0
      j          .L800942E4
       addu      $2, $0, $0
  .L80094284:
      addu       $16, $19, $0
      addu       $4, $2, $0
      lui        $2, %hi(D_800FAE00)
      lbu        $18, %lo(D_800FAE00)($2)
      andi       $4, $4, 0xFF
  .L80094298:
      bne        $4, $18, .L800942B0
       nop
      bnez       $17, .L800942E4
       addu      $2, $0, $0
      j          .L800942C0
       addiu     $17, $16, 0x1
  .L800942B0:
      jal        func_800941A8
       nop
      beqz       $2, .L800942E4
       addu      $2, $0, $0
  .L800942C0:
      addiu      $16, $16, 0x1
      lbu        $4, 0x0($16)
      bnel       $4, $0, .L80094298
       andi      $4, $4, 0xFF
      sltu       $2, $19, $17
      beqz       $2, .L800942E0
       addu      $3, $0, $0
      sltu       $3, $17, $16
  .L800942E0:
      addu       $2, $3, $0
  .L800942E4:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80094224

.globl func_80094300
.ent func_80094300
func_80094300:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $31, 0x20($29)
      bnez       $17, .L80094344
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F34DC)
      addiu      $4, $4, %lo(D_800F34DC)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F352C)
      addiu      $6, $6, %lo(D_800F352C)
      jal        func_80002E80
       addiu     $7, $0, 0x49B
  .L80094344:
      addu       $16, $0, $0
  .L80094348:
      jal        func_800CD26C
       addu      $4, $17, $0
      sltu       $2, $16, $2
      beqz       $2, .L8009437C
       addu      $4, $17, $0
      jal        func_800CD394
       addu      $5, $16, $0
      jal        func_80094224
       addu      $4, $2, $0
      bnez       $2, .L80094348
       addiu     $16, $16, 0x1
      j          .L80094380
       addiu     $2, $0, -0x4
  .L8009437C:
      addiu      $2, $0, 0x1
  .L80094380:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80094300

.globl func_80094394
.ent func_80094394
func_80094394:
      addiu      $29, $29, -0x38
      sw         $18, 0x30($29)
      addu       $18, $4, $0
      sw         $16, 0x28($29)
      addu       $16, $5, $0
      sw         $17, 0x2C($29)
      addu       $17, $6, $0
      bnez       $18, .L800943E4
       sw        $31, 0x34($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3540)
      addiu      $4, $4, %lo(D_800F3540)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3598)
      addiu      $6, $6, %lo(D_800F3598)
      jal        func_80002E80
       addiu     $7, $0, 0x4BA
  .L800943E4:
      beqz       $16, .L800943FC
       addiu     $2, $0, 0xB
      beq        $16, $2, .L80094458
       addiu     $16, $0, -0x3
      j          .L80094514
       addu      $2, $16, $0
  .L800943FC:
      addu       $4, $18, $0
      lui        $5, %hi(func_80093870)
      addiu      $5, $5, %lo(func_80093870)
      jal        func_800CD234
       addu      $6, $0, $0
      lui        $4, %hi(D_800FAD74)
      jal        func_800523C0
       addiu     $4, $4, %lo(D_800FAD74)
      addu       $17, $2, $0
      beqz       $17, .L80094450
       addu      $4, $18, $0
      jal        func_800CD370
       addu      $5, $17, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      beq        $16, $2, .L80094514
       addu      $2, $16, $0
      jal        func_800D2814
       addu      $4, $17, $0
      j          .L80094514
       addu      $2, $16, $0
  .L80094450:
      j          .L80094510
       addiu     $16, $0, -0x5
  .L80094458:
      beqz       $17, .L80094510
       addiu     $16, $0, -0x4
      lw         $2, 0x0($17)
      bnez       $2, .L80094474
       addiu     $4, $29, 0x18
      j          .L80094514
       addu      $2, $16, $0
  .L80094474:
      lui        $2, %hi(D_800FAC88)
      lbu        $16, %lo(D_800FAC88)($2)
      jal        func_800CD1EC
       addu      $5, $0, $0
      addiu      $7, $29, 0x18
      lw         $4, 0x0($17)
      lw         $5, 0x4($17)
      jal        func_800CC680
       addu      $6, $16, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800944F4
       addu      $17, $16, $0
      jal        func_80094300
       addiu     $4, $29, 0x18
      addu       $16, $2, $0
      bne        $16, $17, .L800944DC
       addiu     $4, $29, 0x18
      addu       $4, $18, $0
      addiu      $5, $29, 0x18
      lui        $6, %hi(func_80093870)
      addiu      $6, $6, %lo(func_80093870)
      jal        func_800CD250
       addu      $7, $0, $0
      j          .L80094514
       addu      $2, $16, $0
  .L800944DC:
      lui        $5, %hi(func_80093870)
      addiu      $5, $5, %lo(func_80093870)
      jal        func_800CD234
       addu      $6, $0, $0
      j          .L80094514
       addu      $2, $16, $0
  .L800944F4:
      bnez       $16, .L80094514
       addu      $2, $16, $0
      addu       $4, $18, $0
      addu       $5, $0, $0
      jal        func_80094394
       addu      $6, $5, $0
      addu       $16, $2, $0
  .L80094510:
      addu       $2, $16, $0
  .L80094514:
      lw         $31, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80094394

.globl func_8009452C
.ent func_8009452C
func_8009452C:
      addiu      $29, $29, -0x30
      sw         $18, 0x20($29)
      addu       $18, $0, $0
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $31, 0x28($29)
      bnez       $19, .L80094580
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F35AC)
      addiu      $4, $4, %lo(D_800F35AC)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F35F8)
      addiu      $6, $6, %lo(D_800F35F8)
      jal        func_80002E80
       addiu     $7, $0, 0x503
  .L80094580:
      lw         $2, 0x0($19)
      bnez       $2, .L800945B8
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3614)
      addiu      $4, $4, %lo(D_800F3614)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F35F8)
      addiu      $6, $6, %lo(D_800F35F8)
      jal        func_80002E80
       addiu     $7, $0, 0x504
  .L800945B8:
      bnez       $17, .L800945EC
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3168)
      addiu      $4, $4, %lo(D_800F3168)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F35F8)
      addiu      $6, $6, %lo(D_800F35F8)
      jal        func_80002E80
       addiu     $7, $0, 0x505
  .L800945EC:
      lw         $4, 0x1C($17)
      jal        func_800D28BC
       nop
      addiu      $16, $2, 0x74
      lw         $3, 0x20($17)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80094620
       nop
      lw         $4, 0x24($17)
      jal        func_800D28BC
       nop
      j          .L80094624
       addu      $16, $16, $2
  .L80094620:
      lw         $18, 0x28($17)
  .L80094624:
      lw         $3, 0x2C($17)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80094648
       nop
      lw         $4, 0x30($17)
      jal        func_800D28BC
       nop
      j          .L80094650
       addu      $16, $16, $2
  .L80094648:
      lw         $2, 0x34($17)
      addu       $18, $18, $2
  .L80094650:
      addiu      $2, $0, 0x1
      lw         $3, 0x4($19)
      lw         $4, 0x0($19)
      beq        $3, $2, .L80094674
       addiu     $2, $0, 0x2
      beq        $3, $2, .L800946CC
       nop
      j          .L80094724
       nop
  .L80094674:
      lw         $3, 0x68($4)
      sltu       $2, $3, $16
      bnel       $2, $0, .L8009468C
       sw        $0, 0x68($4)
      subu       $2, $3, $16
      sw         $2, 0x68($4)
  .L8009468C:
      lw         $2, 0x64($4)
      lw         $3, 0x70($4)
      addu       $2, $2, $16
      sw         $2, 0x64($4)
      sltu       $2, $3, $18
      bnel       $2, $0, .L800946B0
       sw        $0, 0x70($4)
      subu       $2, $3, $18
      sw         $2, 0x70($4)
  .L800946B0:
      lw         $2, 0x6C($4)
      lw         $3, 0x60($4)
      addu       $2, $2, $18
      addiu      $3, $3, 0x1
      sw         $2, 0x6C($4)
      j          .L80094764
       sw        $3, 0x60($4)
  .L800946CC:
      lw         $3, 0x64($4)
      sltu       $2, $3, $16
      bnel       $2, $0, .L800946E4
       sw        $0, 0x64($4)
      subu       $2, $3, $16
      sw         $2, 0x64($4)
  .L800946E4:
      lw         $2, 0x68($4)
      lw         $3, 0x6C($4)
      addu       $2, $2, $16
      sw         $2, 0x68($4)
      sltu       $2, $3, $18
      bnel       $2, $0, .L80094708
       sw        $0, 0x6C($4)
      subu       $2, $3, $18
      sw         $2, 0x6C($4)
  .L80094708:
      lw         $2, 0x70($4)
      lw         $3, 0x60($4)
      addu       $2, $2, $18
      addiu      $3, $3, -0x1
      sw         $2, 0x70($4)
      j          .L80094764
       sw        $3, 0x60($4)
  .L80094724:
      lw         $2, 0x4($19)
      addiu      $2, $2, -0x1
      sltiu      $2, $2, 0x2
      bnez       $2, .L80094764
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3664)
      addiu      $4, $4, %lo(D_800F3664)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F35F8)
      addiu      $6, $6, %lo(D_800F35F8)
      jal        func_80002E80
       addiu     $7, $0, 0x530
  .L80094764:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x30
.end func_8009452C

.globl func_80094784
.ent func_80094784
func_80094784:
      addiu      $29, $29, -0x70
      sw         $22, 0x60($29)
      addu       $22, $0, $0
      addiu      $3, $29, 0x18
      addiu      $8, $29, 0x20
      sw         $17, 0x4C($29)
      addu       $17, $4, $0
      sw         $18, 0x50($29)
      addu       $18, $5, $0
      sw         $31, 0x6C($29)
      sw         $30, 0x68($29)
      sw         $23, 0x64($29)
      sw         $21, 0x5C($29)
      sw         $20, 0x58($29)
      sw         $19, 0x54($29)
      sw         $16, 0x48($29)
      sw         $3, 0x40($29)
      bnez       $17, .L800947FC
       sw        $8, 0x44($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F36C8)
      addiu      $4, $4, %lo(D_800F36C8)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3714)
      addiu      $6, $6, %lo(D_800F3714)
      jal        func_80002E80
       addiu     $7, $0, 0x555
  .L800947FC:
      lw         $2, 0x0($17)
      bnez       $2, .L80094834
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3724)
      addiu      $4, $4, %lo(D_800F3724)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3714)
      addiu      $6, $6, %lo(D_800F3714)
      jal        func_80002E80
       addiu     $7, $0, 0x556
  .L80094834:
      lw         $2, 0x4($17)
      lw         $20, 0x0($17)
      bnez       $2, .L80094874
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3774)
      addiu      $4, $4, %lo(D_800F3774)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3714)
      addiu      $6, $6, %lo(D_800F3714)
      jal        func_80002E80
       addiu     $7, $0, 0x558
      lw         $2, 0x4($17)
  .L80094874:
      lbu        $2, 0x0($2)
      bnez       $2, .L800948AC
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F37C8)
      addiu      $4, $4, %lo(D_800F37C8)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3714)
      addiu      $6, $6, %lo(D_800F3714)
      jal        func_80002E80
       addiu     $7, $0, 0x559
  .L800948AC:
      lw         $2, 0xC($17)
      bnez       $2, .L800948E4
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3814)
      addiu      $4, $4, %lo(D_800F3814)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3714)
      addiu      $6, $6, %lo(D_800F3714)
      jal        func_80002E80
       addiu     $7, $0, 0x55A
  .L800948E4:
      lw         $2, 0x10($17)
      bnez       $2, .L8009491C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F386C)
      addiu      $4, $4, %lo(D_800F386C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3714)
      addiu      $6, $6, %lo(D_800F3714)
      jal        func_80002E80
       addiu     $7, $0, 0x55B
  .L8009491C:
      lw         $2, 0x14($17)
      bnez       $2, .L80094954
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F38C8)
      addiu      $4, $4, %lo(D_800F38C8)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3714)
      addiu      $6, $6, %lo(D_800F3714)
      jal        func_80002E80
       addiu     $7, $0, 0x55C
  .L80094954:
      lw         $2, 0x18($17)
      bnez       $2, .L8009498C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3918)
      addiu      $4, $4, %lo(D_800F3918)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3714)
      addiu      $6, $6, %lo(D_800F3714)
      jal        func_80002E80
       addiu     $7, $0, 0x55D
  .L8009498C:
      bnel       $18, $0, .L800949C4
       addu      $5, $0, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3168)
      addiu      $4, $4, %lo(D_800F3168)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3714)
      addiu      $6, $6, %lo(D_800F3714)
      jal        func_80002E80
       addiu     $7, $0, 0x55E
      addu       $5, $0, $0
  .L800949C4:
      lw         $4, 0x40($29)
      jal        func_80016140
       addiu     $6, $0, 0x8
      addu       $5, $0, $0
      lw         $4, 0x44($29)
      jal        func_80016140
       addiu     $6, $0, 0x8
      addu       $4, $18, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x74
      lw         $4, 0x8($20)
      jal        func_800930E4
       addiu     $5, $29, 0x28
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80094B7C
       addu      $21, $16, $0
      lw         $2, 0x4($17)
      sw         $2, 0x38($29)
      lw         $2, 0x8($17)
      sw         $2, 0x3C($29)
      lw         $5, 0xC($20)
      lw         $6, 0x8($17)
      jal        func_800D2884
       addu      $4, $0, $0
      addu       $22, $2, $0
      beqz       $22, .L80094B78
       addu      $4, $22, $0
      jal        func_800939A0
       addiu     $5, $29, 0x38
      addu       $16, $2, $0
      bne        $16, $21, .L80094B7C
       addu      $19, $16, $0
      lw         $5, 0x4($17)
      jal        func_80093454
       addiu     $4, $18, 0xC
      addu       $16, $2, $0
      bne        $16, $19, .L80094B7C
       addu      $21, $16, $0
      lw         $7, 0x1C($17)
      lui        $30, (0x40000000 >> 16)
      and        $2, $7, $30
      bnel       $2, $0, .L80094AD0
       sw        $20, 0x0($18)
      addu       $4, $20, $0
      lui        $23, (0x80000000 >> 16)
      lw         $5, 0x40($29)
      lw         $6, 0x14($17)
      jal        func_80096CE0
       and       $7, $7, $23
      addu       $16, $2, $0
      bne        $16, $21, .L80094B7C
       addu      $19, $16, $0
      lw         $7, 0x1C($17)
      and        $2, $7, $30
      bnel       $2, $0, .L80094AD0
       sw        $20, 0x0($18)
      addu       $4, $20, $0
      lw         $5, 0x44($29)
      lw         $6, 0x18($17)
      jal        func_80096CE0
       and       $7, $7, $23
      addu       $16, $2, $0
      bne        $16, $19, .L80094B7C
       nop
      sw         $20, 0x0($18)
  .L80094AD0:
      sw         $0, 0x4($18)
      lw         $2, 0x1C($17)
      sw         $22, 0x1C($18)
      andi       $2, $2, 0x1
      sw         $2, 0x8($18)
      lw         $2, 0x14($17)
      sw         $2, 0x28($18)
      lw         $9, 0x40($29)
      lw         $10, 0x0($9)
      lw         $11, 0x4($9)
      sw         $10, 0x20($18)
      sw         $11, 0x24($18)
      lw         $2, 0x18($17)
      sw         $2, 0x34($18)
      lw         $9, 0x44($29)
      lw         $10, 0x0($9)
      lw         $11, 0x4($9)
      sw         $10, 0x2C($18)
      sw         $11, 0x30($18)
      lw         $2, 0xC($17)
      addu       $22, $0, $0
      sw         $0, 0x40($29)
      lw         $9, 0x0($2)
      lw         $10, 0x4($2)
      lw         $11, 0x8($2)
      sw         $9, 0x38($18)
      sw         $10, 0x3C($18)
      sw         $11, 0x40($18)
      lw         $2, 0x10($17)
      sw         $0, 0x44($29)
      lw         $8, 0x0($2)
      lw         $9, 0x4($2)
      lw         $10, 0x8($2)
      sw         $8, 0x44($18)
      sw         $9, 0x48($18)
      sw         $10, 0x4C($18)
      jal        func_800CCB78
       addiu     $4, $18, 0x50
      jal        func_800CCB78
       addiu     $4, $18, 0x5C
      j          .L80094B7C
       nop
  .L80094B78:
      addiu      $16, $0, -0x5
  .L80094B7C:
      lw         $3, 0x44($29)
      beqz       $3, .L80094B94
       addu      $4, $20, $0
      addu       $5, $3, $0
      jal        func_80096E90
       addu      $6, $0, $0
  .L80094B94:
      lw         $8, 0x40($29)
      beqz       $8, .L80094BAC
       addu      $4, $20, $0
      addu       $5, $8, $0
      jal        func_80096E90
       addu      $6, $0, $0
  .L80094BAC:
      beqz       $22, .L80094BC0
       addu      $2, $16, $0
      jal        func_800D28A0
       addu      $4, $22, $0
      addu       $2, $16, $0
  .L80094BC0:
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
.end func_80094784

.globl func_80094BF0
.ent func_80094BF0
func_80094BF0:
      addiu      $29, $29, -0x28
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $31, 0x24($29)
      bnez       $18, .L80094C3C
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F39B4)
      addiu      $6, $6, %lo(D_800F39B4)
      jal        func_80002E80
       addiu     $7, $0, 0x59F
  .L80094C3C:
      lw         $16, 0x0($17)
      bne        $16, $18, .L80094C98
       addu      $4, $16, $0
      lw         $6, 0x8($17)
      addiu      $5, $17, 0x20
      srl        $6, $6, 30
      jal        func_80096E90
       andi      $6, $6, 0x1
      addu       $4, $16, $0
      lw         $6, 0x8($17)
      addiu      $5, $17, 0x2C
      srl        $6, $6, 30
      jal        func_80096E90
       andi      $6, $6, 0x1
      lw         $4, 0x1C($17)
      jal        func_800D28A0
       nop
      addu       $4, $17, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x74
      j          .L80094D40
       nop
  .L80094C98:
      lw         $2, 0x1C($17)
      beqz       $2, .L80094CD0
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F39C8)
      addiu      $4, $4, %lo(D_800F39C8)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F39B4)
      addiu      $6, $6, %lo(D_800F39B4)
      jal        func_80002E80
       addiu     $7, $0, 0x5A7
  .L80094CD0:
      lw         $2, 0x20($17)
      beqz       $2, .L80094D08
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3A20)
      addiu      $4, $4, %lo(D_800F3A20)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F39B4)
      addiu      $6, $6, %lo(D_800F39B4)
      jal        func_80002E80
       addiu     $7, $0, 0x5A8
  .L80094D08:
      lw         $2, 0x2C($17)
      beqz       $2, .L80094D40
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3A74)
      addiu      $4, $4, %lo(D_800F3A74)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F39B4)
      addiu      $6, $6, %lo(D_800F39B4)
      jal        func_80002E80
       addiu     $7, $0, 0x5A9
  .L80094D40:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x28
.end func_80094BF0

.globl func_80094D5C
.ent func_80094D5C
func_80094D5C:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      bnez       $16, .L80094DA4
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3AC4)
      addiu      $4, $4, %lo(D_800F3AC4)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3B10)
      addiu      $6, $6, %lo(D_800F3B10)
      jal        func_80002E80
       addiu     $7, $0, 0x5C5
  .L80094DA4:
      lw         $2, 0x0($16)
      bnez       $2, .L80094DDC
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3B24)
      addiu      $4, $4, %lo(D_800F3B24)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3B10)
      addiu      $6, $6, %lo(D_800F3B10)
      jal        func_80002E80
       addiu     $7, $0, 0x5C6
  .L80094DDC:
      lw         $2, 0x4($16)
      bnez       $2, .L80094E14
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3B78)
      addiu      $4, $4, %lo(D_800F3B78)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3B10)
      addiu      $6, $6, %lo(D_800F3B10)
      jal        func_80002E80
       addiu     $7, $0, 0x5C7
  .L80094E14:
      bnez       $17, .L80094E48
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3168)
      addiu      $4, $4, %lo(D_800F3168)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3B10)
      addiu      $6, $6, %lo(D_800F3B10)
      jal        func_80002E80
       addiu     $7, $0, 0x5C8
  .L80094E48:
      lw         $4, 0x0($16)
      addiu      $5, $17, 0xC
      jal        func_80013EC0
       addiu     $6, $0, 0x4
      beqz       $2, .L80094E70
       addu      $2, $0, $0
      lw         $4, 0x4($16)
      lw         $3, 0x68($17)
      j          .L80094E74
       sw        $3, 0x0($4)
  .L80094E70:
      addiu      $2, $0, 0x1
  .L80094E74:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80094D5C

.globl func_80094E88
.ent func_80094E88
func_80094E88:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $31, 0x24($29)
      bnez       $16, .L80094ED4
       sw        $18, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3060)
      addiu      $4, $4, %lo(D_800F3060)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3BD0)
      addiu      $6, $6, %lo(D_800F3BD0)
      jal        func_80002E80
       addiu     $7, $0, 0x5EB
  .L80094ED4:
      bnez       $17, .L80094F08
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3168)
      addiu      $4, $4, %lo(D_800F3168)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3BD0)
      addiu      $6, $6, %lo(D_800F3BD0)
      jal        func_80002E80
       addiu     $7, $0, 0x5EC
  .L80094F08:
      lw         $2, 0x20($17)
      addiu      $18, $0, 0x2
      beq        $2, $18, .L80094F44
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3BE0)
      addiu      $4, $4, %lo(D_800F3BE0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3BD0)
      addiu      $6, $6, %lo(D_800F3BD0)
      jal        func_80002E80
       addiu     $7, $0, 0x5ED
  .L80094F44:
      lw         $2, 0x2C($17)
      beq        $2, $18, .L80094F80
       addu      $4, $16, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3C3C)
      addiu      $4, $4, %lo(D_800F3C3C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3BD0)
      addiu      $6, $6, %lo(D_800F3BD0)
      jal        func_80002E80
       addiu     $7, $0, 0x5EE
      addu       $4, $16, $0
  .L80094F80:
      jal        func_80093658
       addiu     $5, $0, 0x1
      blez       $2, .L80095060
       addu      $4, $16, $0
      jal        func_80093658
       addu      $5, $0, $0
      blez       $2, .L80095060
       nop
      lw         $5, 0x24($17)
      jal        func_800936A0
       addu      $4, $16, $0
      blez       $2, .L80095060
       nop
      lw         $5, 0x28($17)
      jal        func_800936A0
       addu      $4, $16, $0
      blez       $2, .L80095060
       nop
      lw         $5, 0x30($17)
      jal        func_800936A0
       addu      $4, $16, $0
      blez       $2, .L80095060
       nop
      lw         $5, 0x34($17)
      jal        func_800936A0
       addu      $4, $16, $0
      blez       $2, .L80095060
       addu      $4, $16, $0
      addiu      $5, $17, 0x38
      jal        func_80093730
       addiu     $6, $0, 0x1
      blez       $2, .L80095060
       addu      $4, $16, $0
      addiu      $5, $17, 0x44
      jal        func_80093730
       addiu     $6, $0, 0x1
      blez       $2, .L80095060
       addu      $4, $16, $0
      addiu      $5, $17, 0x50
      jal        func_80093730
       addiu     $6, $0, 0x1
      blez       $2, .L80095060
       addu      $4, $16, $0
      addiu      $5, $17, 0x5C
      jal        func_80093730
       addiu     $6, $0, 0x1
      blez       $2, .L80095060
       nop
      lw         $4, 0x1C($17)
      jal        func_80093A58
       addu      $5, $16, $0
      blez       $2, .L80095060
       addu      $4, $16, $0
      lui        $5, (0x23230D0A >> 16)
      jal        func_800936A0
       ori       $5, $5, (0x23230D0A & 0xFFFF)
  .L80095060:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80094E88

.globl func_80095078
.ent func_80095078
func_80095078:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      bnez       $16, .L800950C0
       sw        $31, 0x28($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3060)
      addiu      $4, $4, %lo(D_800F3060)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3C98)
      addiu      $6, $6, %lo(D_800F3C98)
      jal        func_80002E80
       addiu     $7, $0, 0x61C
  .L800950C0:
      bnez       $17, .L800950F4
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3168)
      addiu      $4, $4, %lo(D_800F3168)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3C98)
      addiu      $6, $6, %lo(D_800F3C98)
      jal        func_80002E80
       addiu     $7, $0, 0x61D
  .L800950F4:
      lw         $2, 0x1C($17)
      bnez       $2, .L80095130
       addu      $4, $16, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3CA8)
      addiu      $4, $4, %lo(D_800F3CA8)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3C98)
      addiu      $6, $6, %lo(D_800F3C98)
      jal        func_80002E80
       addiu     $7, $0, 0x61E
      addu       $4, $16, $0
  .L80095130:
      jal        func_8009367C
       addiu     $5, $29, 0x18
      addu       $4, $2, $0
      blez       $4, .L8009526C
       addu      $2, $4, $0
      addu       $4, $16, $0
      jal        func_8009367C
       addiu     $5, $29, 0x1A
      addu       $4, $2, $0
      blez       $4, .L8009526C
       addu      $2, $4, $0
      addu       $4, $16, $0
      jal        func_800936C4
       addiu     $5, $17, 0x24
      addu       $4, $2, $0
      blez       $4, .L8009526C
       addu      $2, $4, $0
      addu       $4, $16, $0
      jal        func_800936C4
       addiu     $5, $17, 0x28
      addu       $4, $2, $0
      blez       $4, .L8009526C
       addu      $2, $4, $0
      addu       $4, $16, $0
      jal        func_800936C4
       addiu     $5, $17, 0x30
      addu       $4, $2, $0
      blez       $4, .L8009526C
       addu      $2, $4, $0
      addu       $4, $16, $0
      jal        func_800936C4
       addiu     $5, $17, 0x34
      addu       $4, $2, $0
      blez       $4, .L80095268
       addiu     $5, $17, 0x38
      addu       $4, $16, $0
      jal        func_800937D4
       addiu     $6, $0, 0x1
      addu       $4, $2, $0
      blez       $4, .L80095268
       addiu     $5, $17, 0x44
      addu       $4, $16, $0
      jal        func_800937D4
       addiu     $6, $0, 0x1
      addu       $4, $2, $0
      blez       $4, .L80095268
       addiu     $5, $17, 0x50
      addu       $4, $16, $0
      jal        func_800937D4
       addiu     $6, $0, 0x1
      addu       $4, $2, $0
      blez       $4, .L80095268
       addiu     $5, $17, 0x5C
      addu       $4, $16, $0
      jal        func_800937D4
       addiu     $6, $0, 0x1
      addu       $4, $2, $0
      blez       $4, .L8009526C
       addu      $2, $4, $0
      lw         $4, 0x1C($17)
      jal        func_80093A7C
       addu      $5, $16, $0
      addu       $4, $2, $0
      blez       $4, .L8009526C
       addu      $2, $4, $0
      addu       $4, $16, $0
      jal        func_800936C4
       addiu     $5, $29, 0x1C
      addu       $4, $2, $0
      blez       $4, .L80095268
       lui       $3, (0x23230D0A >> 16)
      lw         $2, 0x1C($29)
      ori        $3, $3, (0x23230D0A & 0xFFFF)
      bnel       $2, $3, .L80095268
       addiu     $4, $0, -0x25
      addiu      $2, $0, 0x2
      sw         $2, 0x2C($17)
      sw         $2, 0x20($17)
  .L80095268:
      addu       $2, $4, $0
  .L8009526C:
      bltz       $2, .L80095280
       nop
      lhu        $2, 0x18($29)
      xori       $2, $2, 0x1
      sltiu      $2, $2, 0x1
  .L80095280:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80095078

.globl func_80095294
.ent func_80095294
func_80095294:
      addiu      $29, $29, -0x38
      sw         $16, 0x28($29)
      addu       $16, $5, $0
      sw         $17, 0x2C($29)
      addu       $17, $16, $0
      bnez       $16, .L800952DC
       sw        $31, 0x30($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3168)
      addiu      $4, $4, %lo(D_800F3168)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3D00)
      addiu      $6, $6, %lo(D_800F3D00)
      jal        func_80002E80
       addiu     $7, $0, 0x646
  .L800952DC:
      lw         $2, 0x0($16)
      bnez       $2, .L80095318
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3D0C)
      addiu      $4, $4, %lo(D_800F3D0C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3D00)
      addiu      $6, $6, %lo(D_800F3D00)
      jal        func_80002E80
       addiu     $7, $0, 0x647
      lw         $2, 0x0($16)
  .L80095318:
      lw         $2, 0x8($2)
      bnez       $2, .L80095350
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3D5C)
      addiu      $4, $4, %lo(D_800F3D5C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3D00)
      addiu      $6, $6, %lo(D_800F3D00)
      jal        func_80002E80
       addiu     $7, $0, 0x648
  .L80095350:
      lw         $3, 0x4($16)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80095364
       addiu     $2, $0, 0x2
      sw         $2, 0x4($16)
  .L80095364:
      lw         $3, 0x4($17)
      addiu      $2, $0, 0x2
      bne        $3, $2, .L800953C8
       lui       $2, (0x80000000 >> 16)
      lw         $3, 0x8($17)
      lw         $4, 0x0($17)
      or         $3, $3, $2
      sw         $3, 0x8($17)
      lw         $4, 0x8($4)
      jal        func_800930E4
       addiu     $5, $29, 0x18
      beqz       $2, .L800953C8
       nop
      lw         $8, 0x18($29)
      lw         $9, 0x1C($29)
      lw         $10, 0x20($29)
      sw         $8, 0x50($17)
      sw         $9, 0x54($17)
      sw         $10, 0x58($17)
      lw         $8, 0x18($29)
      lw         $9, 0x1C($29)
      lw         $10, 0x20($29)
      sw         $8, 0x5C($17)
      sw         $9, 0x60($17)
      sw         $10, 0x64($17)
  .L800953C8:
      lw         $31, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x38
.end func_80095294

.globl func_800953E0
.ent func_800953E0
func_800953E0:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      bnez       $5, .L80095420
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3168)
      lui        $5, %hi(D_800F2ED4)
      lui        $6, %hi(D_800F3DB0)
      addiu      $4, $4, %lo(D_800F3168)
      addiu      $5, $5, %lo(D_800F2ED4)
      addiu      $6, $6, %lo(D_800F3DB0)
      jal        func_80002E80
       addiu     $7, $0, 0x66E
  .L80095420:
      addiu      $2, $0, 0x3
      sw         $2, 0x4($16)
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_800953E0

.globl func_8009543C
.ent func_8009543C
func_8009543C:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      bnez       $5, .L8009547C
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3168)
      lui        $5, %hi(D_800F2ED4)
      lui        $6, %hi(D_800F3DC0)
      addiu      $4, $4, %lo(D_800F3168)
      addiu      $5, $5, %lo(D_800F2ED4)
      addiu      $6, $6, %lo(D_800F3DC0)
      jal        func_80002E80
       addiu     $7, $0, 0x68B
  .L8009547C:
      lw         $2, 0x70($16)
      addiu      $2, $2, 0x1
      sw         $2, 0x70($16)
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8009543C

.globl func_80095498
.ent func_80095498
func_80095498:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $16, $0
      bnez       $16, .L800954E0
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3168)
      lui        $5, %hi(D_800F2ED4)
      lui        $6, %hi(D_800F3DC8)
      addiu      $4, $4, %lo(D_800F3168)
      addiu      $5, $5, %lo(D_800F2ED4)
      addiu      $6, $6, %lo(D_800F3DC8)
      jal        func_80002E80
       addiu     $7, $0, 0x6A6
  .L800954E0:
      lw         $2, 0x70($16)
      bnez       $2, .L800954F4
       addiu     $2, $2, -0x1
      j          .L800954F8
       addu      $2, $0, $0
  .L800954F4:
      sw         $2, 0x70($17)
  .L800954F8:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80095498

.globl func_8009550C
.ent func_8009550C
func_8009550C:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $16, $0
      bnez       $16, .L80095554
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3168)
      addiu      $4, $4, %lo(D_800F3168)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3DD0)
      addiu      $6, $6, %lo(D_800F3DD0)
      jal        func_80002E80
       addiu     $7, $0, 0x6C5
  .L80095554:
      lw         $2, 0x0($16)
      bnez       $2, .L8009558C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3D0C)
      addiu      $4, $4, %lo(D_800F3D0C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3DD0)
      addiu      $6, $6, %lo(D_800F3DD0)
      jal        func_80002E80
       addiu     $7, $0, 0x6C6
  .L8009558C:
      lw         $2, 0x0($17)
      lw         $4, 0x8($2)
      jal        func_800930E4
       addiu     $5, $17, 0x5C
      addu       $4, $2, $0
      bltz       $4, .L800955B8
       nop
      lw         $3, 0x0($17)
      lw         $2, 0x74($3)
      addiu      $2, $2, 0x1
      sw         $2, 0x74($3)
  .L800955B8:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009550C

.globl func_800955D0
.ent func_800955D0
func_800955D0:
      addiu      $29, $29, -0x50
      sw         $16, 0x38($29)
      addu       $16, $4, $0
      sw         $18, 0x40($29)
      addu       $18, $5, $0
      sw         $17, 0x3C($29)
      addiu      $17, $0, 0x1
      sw         $31, 0x4C($29)
      sw         $20, 0x48($29)
      bnez       $16, .L80095628
       sw        $19, 0x44($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3AC4)
      addiu      $4, $4, %lo(D_800F3AC4)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3DDC)
      addiu      $6, $6, %lo(D_800F3DDC)
      jal        func_80002E80
       addiu     $7, $0, 0x6E5
  .L80095628:
      lw         $2, 0x0($16)
      bnez       $2, .L80095660
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3DEC)
      addiu      $4, $4, %lo(D_800F3DEC)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3DDC)
      addiu      $6, $6, %lo(D_800F3DDC)
      jal        func_80002E80
       addiu     $7, $0, 0x6E6
  .L80095660:
      lw         $2, 0x4($16)
      bnez       $2, .L80095698
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3E40)
      addiu      $4, $4, %lo(D_800F3E40)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3DDC)
      addiu      $6, $6, %lo(D_800F3DDC)
      jal        func_80002E80
       addiu     $7, $0, 0x6E7
  .L80095698:
      bnez       $18, .L800956D0
       lui       $2, %hi(D_80137964)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3168)
      addiu      $4, $4, %lo(D_800F3168)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3DDC)
      addiu      $6, $6, %lo(D_800F3DDC)
      jal        func_80002E80
       addiu     $7, $0, 0x6E8
      lui        $2, %hi(D_80137964)
  .L800956D0:
      lbu        $2, %lo(D_80137964)($2)
      beq        $2, $17, .L80095844
       addiu     $19, $0, 0x1
      lw         $4, 0x0($16)
      lui        $5, %hi(D_800FAE20)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FAE20)
      bnez       $2, .L800957E4
       lui       $5, %hi(D_800FAE5C)
      addiu      $4, $29, 0x18
      addiu      $5, $0, 0x7
      lw         $6, 0x4($16)
      jal        func_8009CFA4
       addu      $7, $0, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $17, $2, $0
      bne        $17, $19, .L80095878
       addu      $20, $17, $0
      lw         $3, 0x18($29)
      lw         $8, 0x1C($29)
      lw         $9, 0x20($29)
      sw         $3, 0x38($18)
      sw         $8, 0x3C($18)
      sw         $9, 0x40($18)
      lw         $2, 0x0($18)
      bnez       $2, .L80095770
       addiu     $19, $29, 0x18
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3D0C)
      addiu      $4, $4, %lo(D_800F3D0C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3DDC)
      addiu      $6, $6, %lo(D_800F3DDC)
      jal        func_80002E80
       addiu     $7, $0, 0x6FD
      lw         $2, 0x0($18)
  .L80095770:
      lw         $2, 0x8($2)
      bnez       $2, .L800957A8
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3D5C)
      addiu      $4, $4, %lo(D_800F3D5C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3DDC)
      addiu      $6, $6, %lo(D_800F3DDC)
      jal        func_80002E80
       addiu     $7, $0, 0x6FE
  .L800957A8:
      lw         $2, 0x0($18)
      addiu      $16, $29, 0x28
      lw         $4, 0x8($2)
      jal        func_800930E4
       addu      $5, $16, $0
      addu       $17, $2, $0
      bne        $17, $20, .L8009587C
       addu      $2, $17, $0
      addu       $4, $19, $0
      jal        func_800CCA90
       addu      $5, $16, $0
      bgtz       $2, .L8009587C
       addu      $2, $17, $0
      j          .L80095848
       addu      $4, $0, $0
  .L800957E4:
      lw         $4, 0x0($16)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FAE5C)
      bnel       $2, $0, .L80095818
       lui       $5, %hi(D_800FAE4C)
      lw         $4, 0x4($16)
      lui        $5, %hi(D_800FAE74)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FAE74)
      bnez       $2, .L8009587C
       addu      $2, $17, $0
      j          .L80095848
       addu      $4, $0, $0
  .L80095818:
      lw         $4, 0x0($16)
      jal        func_8005211C
       addiu     $5, $5, %lo(D_800FAE4C)
      bnez       $2, .L8009587C
       addu      $2, $17, $0
      lw         $4, 0x4($16)
      lui        $5, %hi(D_800FAE74)
      jal        func_800CD038
       addiu     $5, $5, %lo(D_800FAE74)
      beqz       $2, .L80095858
       lui       $5, %hi(D_800FAE80)
  .L80095844:
      addu       $4, $0, $0
  .L80095848:
      jal        func_800953E0
       addu      $5, $18, $0
      j          .L80095878
       addu      $17, $2, $0
  .L80095858:
      lw         $4, 0x4($16)
      jal        func_800CD038
       addiu     $5, $5, %lo(D_800FAE80)
      beqz       $2, .L8009587C
       addu      $2, $17, $0
      lw         $2, 0x8($18)
      ori        $2, $2, 0x1
      sw         $2, 0x8($18)
  .L80095878:
      addu       $2, $17, $0
  .L8009587C:
      lw         $31, 0x4C($29)
      lw         $20, 0x48($29)
      lw         $19, 0x44($29)
      lw         $18, 0x40($29)
      lw         $17, 0x3C($29)
      lw         $16, 0x38($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_800955D0

.globl func_8009589C
.ent func_8009589C
func_8009589C:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $16, $0
      bnez       $16, .L800958E4
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3168)
      addiu      $4, $4, %lo(D_800F3168)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3E94)
      addiu      $6, $6, %lo(D_800F3E94)
      jal        func_80002E80
       addiu     $7, $0, 0x72B
  .L800958E4:
      lw         $2, 0x0($16)
      bnez       $2, .L8009591C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3D0C)
      addiu      $4, $4, %lo(D_800F3D0C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3E94)
      addiu      $6, $6, %lo(D_800F3E94)
      jal        func_80002E80
       addiu     $7, $0, 0x72C
  .L8009591C:
      lw         $5, 0x0($16)
      lw         $3, 0x14($5)
      addiu      $2, $0, 0x1
      beql       $3, $2, .L80095998
       addu      $2, $0, $0
      beqz       $3, .L8009594C
       nop
      addiu      $2, $0, 0x2
      beq        $3, $2, .L80095998
       addiu     $2, $0, 0x1
      j          .L80095958
       nop
  .L8009594C:
      lw         $2, 0x8($17)
      j          .L80095998
       srl       $2, $2, 31
  .L80095958:
      lw         $2, 0x14($5)
      sltiu      $2, $2, 0x3
      bnez       $2, .L80095998
       addu      $2, $0, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3EA4)
      addiu      $4, $4, %lo(D_800F3EA4)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3E94)
      addiu      $6, $6, %lo(D_800F3E94)
      jal        func_80002E80
       addiu     $7, $0, 0x739
      addu       $2, $0, $0
  .L80095998:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009589C

.globl func_800959AC
.ent func_800959AC
func_800959AC:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      bnez       $16, .L800959F4
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3060)
      addiu      $4, $4, %lo(D_800F3060)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3F44)
      addiu      $6, $6, %lo(D_800F3F44)
      jal        func_80002E80
       addiu     $7, $0, 0x758
  .L800959F4:
      lw         $5, 0x0($16)
      lw         $6, 0x4($16)
      jal        func_80093B04
       addu      $4, $17, $0
      addu       $17, $2, $0
      beqz       $17, .L80095A94
       addiu     $2, $0, -0x4
      lw         $2, 0x8($16)
      bnez       $2, .L80095A48
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3FA0)
      addiu      $4, $4, %lo(D_800F3FA0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3F44)
      addiu      $6, $6, %lo(D_800F3F44)
      jal        func_80002E80
       addiu     $7, $0, 0x75B
  .L80095A48:
      lw         $2, 0xC($16)
      bnez       $2, .L80095A80
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3FF4)
      addiu      $4, $4, %lo(D_800F3FF4)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F3F44)
      addiu      $6, $6, %lo(D_800F3F44)
      jal        func_80002E80
       addiu     $7, $0, 0x75C
  .L80095A80:
      lw         $4, 0x8($16)
      lw         $6, 0xC($16)
      jal        func_80013F00
       addu      $5, $17, $0
      addiu      $2, $0, 0x1
  .L80095A94:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800959AC

.globl func_80095AA8
.ent func_80095AA8
func_80095AA8:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      bnez       $16, .L80095AF0
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3060)
      addiu      $4, $4, %lo(D_800F3060)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4040)
      addiu      $6, $6, %lo(D_800F4040)
      jal        func_80002E80
       addiu     $7, $0, 0x77B
  .L80095AF0:
      lw         $5, 0x0($16)
      lw         $6, 0x4($16)
      jal        func_80093B04
       addu      $4, $17, $0
      addu       $17, $2, $0
      beqz       $17, .L80095B90
       addiu     $2, $0, -0x4
      lw         $2, 0x8($16)
      bnez       $2, .L80095B44
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3FA0)
      addiu      $4, $4, %lo(D_800F3FA0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4040)
      addiu      $6, $6, %lo(D_800F4040)
      jal        func_80002E80
       addiu     $7, $0, 0x77E
  .L80095B44:
      lw         $2, 0xC($16)
      bnez       $2, .L80095B7C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3FF4)
      addiu      $4, $4, %lo(D_800F3FF4)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4040)
      addiu      $6, $6, %lo(D_800F4040)
      jal        func_80002E80
       addiu     $7, $0, 0x77F
  .L80095B7C:
      lw         $5, 0x8($16)
      lw         $6, 0xC($16)
      jal        func_80013F00
       addu      $4, $17, $0
      addiu      $2, $0, 0x1
  .L80095B90:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80095AA8

.globl func_80095BA4
.ent func_80095BA4
func_80095BA4:
      addiu      $29, $29, -0x28
      lw         $2, 0x38($29)
      lw         $3, 0x3C($29)
      sw         $31, 0x20($29)
      sw         $5, 0x10($29)
      sw         $6, 0x14($29)
      sw         $7, 0x18($29)
      beqz       $3, .L80095BD4
       sw        $2, 0x1C($29)
      lui        $2, %hi(func_80095AA8)
      j          .L80095BDC
       addiu     $5, $2, %lo(func_80095AA8)
  .L80095BD4:
      lui        $2, %hi(func_800959AC)
      addiu      $5, $2, %lo(func_800959AC)
  .L80095BDC:
      jal        func_800D292C
       addiu     $6, $29, 0x10
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80095BA4

.globl func_80095BF0
.ent func_80095BF0
func_80095BF0:
      addiu      $29, $29, -0x38
      sw         $20, 0x28($29)
      lw         $20, 0x48($29)
      sw         $21, 0x2C($29)
      lw         $21, 0x4C($29)
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $19, 0x24($29)
      addu       $19, $6, $0
      sw         $16, 0x18($29)
      addu       $16, $7, $0
      bne        $20, $16, .L80095C58
       sw        $31, 0x30($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4050)
      addiu      $4, $4, %lo(D_800F4050)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F40A4)
      addiu      $6, $6, %lo(D_800F40A4)
      jal        func_80002E80
       addiu     $7, $0, 0x7DD
  .L80095C58:
      addu       $4, $17, $0
      addu       $5, $18, $0
      addu       $6, $19, $0
      addu       $7, $16, $0
      sw         $21, 0x10($29)
      jal        func_80095BA4
       sw        $0, 0x14($29)
      addu       $4, $17, $0
      addu       $5, $18, $0
      addu       $6, $19, $0
      addu       $7, $20, $0
      addiu      $2, $0, 0x1
      sw         $21, 0x10($29)
      jal        func_80095BA4
       sw        $2, 0x14($29)
      lw         $31, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80095BF0

.globl func_80095CB8
.ent func_80095CB8
func_80095CB8:
      addiu      $29, $29, -0x20
      addu       $7, $6, $0
      addiu      $2, $0, 0x4
      addiu      $6, $0, 0x1
      sw         $31, 0x18($29)
      sw         $2, 0x10($29)
      jal        func_80095BA4
       sw        $0, 0x14($29)
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80095CB8

.globl func_80095CE4
.ent func_80095CE4
func_80095CE4:
      addiu      $29, $29, -0x20
      addiu      $2, $0, 0x4
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x1
      sw         $6, 0x28($29)
      addu       $6, $2, $0
      addiu      $7, $29, 0x28
      sw         $31, 0x18($29)
      jal        func_80095BA4
       sw        $2, 0x14($29)
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80095CE4

.globl func_80095D18
.ent func_80095D18
func_80095D18:
      addiu      $29, $29, -0x20
      addu       $7, $6, $0
      addiu      $2, $0, 0xC
      addiu      $6, $0, 0x6
      sw         $31, 0x18($29)
      sw         $2, 0x10($29)
      jal        func_80095BA4
       sw        $0, 0x14($29)
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80095D18

.globl func_80095D44
.ent func_80095D44
func_80095D44:
      addiu      $29, $29, -0x20
      addu       $7, $6, $0
      addiu      $2, $0, 0x4
      addiu      $6, $0, 0x3
      sw         $31, 0x18($29)
      sw         $2, 0x10($29)
      jal        func_80095BA4
       sw        $0, 0x14($29)
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80095D44

.globl func_80095D70
.ent func_80095D70
func_80095D70:
      addiu      $29, $29, -0x20
      addiu      $2, $0, 0x4
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x1
      sw         $6, 0x28($29)
      addiu      $6, $0, 0x3
      addiu      $7, $29, 0x28
      sw         $31, 0x18($29)
      jal        func_80095BA4
       sw        $2, 0x14($29)
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80095D70

.globl func_80095DA4
.ent func_80095DA4
func_80095DA4:
      addiu      $29, $29, -0x20
      addiu      $5, $0, 0x2
      sw         $31, 0x18($29)
      jal        func_80095CB8
       addiu     $6, $29, 0x10
      lw         $2, 0x10($29)
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80095DA4

.globl func_80095DC8
.ent func_80095DC8
func_80095DC8:
      addiu      $29, $29, -0x18
      addu       $6, $5, $0
      sw         $31, 0x10($29)
      jal        func_80095CE4
       addiu     $5, $0, 0x2
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80095DC8

.globl func_80095DE8
.ent func_80095DE8
func_80095DE8:
      addiu      $29, $29, -0x20
      addiu      $5, $0, 0x3
      sw         $31, 0x18($29)
      jal        func_80095CB8
       addiu     $6, $29, 0x10
      lw         $2, 0x10($29)
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80095DE8

.globl func_80095E0C
.ent func_80095E0C
func_80095E0C:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $16, 0x18($29)
      addu       $16, $6, $0
      addiu      $5, $0, 0x3
      sw         $31, 0x24($29)
      jal        func_80095CB8
       addiu     $6, $29, 0x10
      addu       $4, $17, $0
      addiu      $5, $0, 0x3
      lw         $6, 0x10($29)
      nor        $16, $0, $16
      or         $6, $6, $18
      and        $6, $6, $16
      jal        func_80095CE4
       sw        $6, 0x10($29)
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80095E0C

.globl func_80095E70
.ent func_80095E70
func_80095E70:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $31, 0x24($29)
      bnez       $17, .L80095EBC
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F40B4)
      addiu      $4, $4, %lo(D_800F40B4)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4104)
      addiu      $6, $6, %lo(D_800F4104)
      jal        func_80002E80
       addiu     $7, $0, 0x8D8
  .L80095EBC:
      bnez       $18, .L80095EF4
       addu      $4, $17, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F410C)
      addiu      $4, $4, %lo(D_800F410C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4104)
      addiu      $6, $6, %lo(D_800F4104)
      jal        func_80002E80
       addiu     $7, $0, 0x8D9
      addu       $4, $17, $0
  .L80095EF4:
      lw         $16, 0x0($18)
      addiu      $5, $0, 0xE
      jal        func_80095D70
       addu      $6, $16, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0xF
      jal        func_80095D70
       addu      $6, $0, $0
      beqz       $16, .L80095F28
       addu      $4, $16, $0
      addiu      $5, $0, 0xF
      jal        func_80095D70
       addu      $6, $17, $0
  .L80095F28:
      sw         $17, 0x0($18)
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80095E70

.globl func_80095F44
.ent func_80095F44
func_80095F44:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      bnez       $16, .L80095F8C
       sw        $31, 0x28($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F40B4)
      addiu      $4, $4, %lo(D_800F40B4)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F415C)
      addiu      $6, $6, %lo(D_800F415C)
      jal        func_80002E80
       addiu     $7, $0, 0x8F9
  .L80095F8C:
      bnez       $17, .L80095FC4
       addu      $4, $16, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F410C)
      addiu      $4, $4, %lo(D_800F410C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F415C)
      addiu      $6, $6, %lo(D_800F415C)
      jal        func_80002E80
       addiu     $7, $0, 0x8FA
      addu       $4, $16, $0
  .L80095FC4:
      addiu      $5, $0, 0xE
      jal        func_80095D44
       addiu     $6, $29, 0x18
      addu       $4, $16, $0
      addiu      $5, $0, 0xF
      jal        func_80095D44
       addiu     $6, $29, 0x1C
      lw         $4, 0x18($29)
      beqz       $4, .L80095FF8
       nop
      lw         $6, 0x1C($29)
      jal        func_80095D70
       addiu     $5, $0, 0xF
  .L80095FF8:
      lw         $4, 0x1C($29)
      beql       $4, $0, .L80096018
       addu      $4, $16, $0
      lw         $6, 0x18($29)
      jal        func_80095D70
       addiu     $5, $0, 0xE
      j          .L80096020
       addu      $4, $16, $0
  .L80096018:
      lw         $2, 0x18($29)
      sw         $2, 0x0($17)
  .L80096020:
      addiu      $5, $0, 0xE
      jal        func_80095D70
       addu      $6, $0, $0
      addu       $4, $16, $0
      addiu      $5, $0, 0xF
      jal        func_80095D70
       addu      $6, $0, $0
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80095F44

.globl func_80096050
.ent func_80096050
func_80096050:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80095DE8
       nop
      lw         $31, 0x10($29)
      andi       $2, $2, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_80096050

.globl func_80096070
.ent func_80096070
func_80096070:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80095DA4
       nop
      xori       $2, $2, 0x2
      lw         $31, 0x10($29)
      sltiu      $2, $2, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_80096070

.globl func_80096094
.ent func_80096094
func_80096094:
      addiu      $29, $29, -0x18
      lui        $5, %hi(func_8009589C)
      addiu      $5, $5, %lo(func_8009589C)
      sw         $31, 0x10($29)
      jal        func_800D292C
       addu      $6, $0, $0
      xori       $2, $2, 0x1
      lw         $31, 0x10($29)
      sltiu      $2, $2, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_80096094

.globl func_800960C0
.ent func_800960C0
func_800960C0:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      sw         $31, 0x18($29)
      jal        func_80096070
       addu      $16, $0, $0
      beqz       $2, .L800960F4
       addu      $2, $16, $0
      jal        func_80096094
       addu      $4, $17, $0
      sltu       $16, $0, $2
      addu       $2, $16, $0
  .L800960F4:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800960C0

.globl func_80096108
.ent func_80096108
func_80096108:
      addiu      $29, $29, -0x20
      sw         $5, 0x10($29)
      lui        $5, %hi(func_80094D5C)
      addiu      $5, $5, %lo(func_80094D5C)
      sw         $6, 0x14($29)
      sw         $31, 0x18($29)
      jal        func_800D292C
       addiu     $6, $29, 0x10
      xori       $2, $2, 0x1
      lw         $31, 0x18($29)
      sltiu      $2, $2, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_80096108

.globl func_8009613C
.ent func_8009613C
func_8009613C:
      addiu      $29, $29, -0x28
      addiu      $2, $0, 0x8
      addu       $5, $2, $0
      addiu      $6, $0, 0x5
      addiu      $7, $29, 0x18
      sw         $31, 0x20($29)
      sw         $2, 0x10($29)
      jal        func_80095BA4
       sw        $0, 0x14($29)
      lw         $4, 0x18($29)
      addiu      $2, $0, 0x1
      beq        $4, $2, .L80096184
       addiu     $2, $0, 0x2
      addu       $3, $2, $0
      bnel       $4, $3, .L80096188
       addiu     $2, $0, 0x3
      j          .L80096188
       nop
  .L80096184:
      addiu      $2, $0, 0x1
  .L80096188:
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009613C

.globl func_80096194
.ent func_80096194
func_80096194:
      addiu      $29, $29, -0x40
      sw         $17, 0x34($29)
      addu       $17, $4, $0
      sw         $16, 0x30($29)
      addu       $16, $5, $0
      bnez       $5, .L800961DC
       sw        $31, 0x38($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4168)
      addiu      $4, $4, %lo(D_800F4168)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F41BC)
      addiu      $6, $6, %lo(D_800F41BC)
      jal        func_80002E80
       addiu     $7, $0, 0x9B9
  .L800961DC:
      addu       $4, $17, $0
      addiu      $5, $0, 0x10
      jal        func_80095CB8
       addiu     $6, $29, 0x28
      lw         $2, 0x28($29)
      bnez       $2, .L80096234
       addu      $4, $17, $0
      addiu      $5, $0, 0xD
      jal        func_80095D18
       addiu     $6, $29, 0x18
      addiu      $4, $29, 0x18
      jal        func_800CCA90
       addiu     $5, $16, 0x4
      bgez       $2, .L80096234
       nop
      sw         $17, 0x0($16)
      lw         $3, 0x18($29)
      lw         $8, 0x1C($29)
      lw         $9, 0x20($29)
      sw         $3, 0x4($16)
      sw         $8, 0x8($16)
      sw         $9, 0xC($16)
  .L80096234:
      lw         $31, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x40
.end func_80096194

.globl func_8009624C
.ent func_8009624C
func_8009624C:
      addiu      $29, $29, -0x18
      addu       $2, $4, $0
      addu       $4, $5, $0
      addu       $5, $2, $0
      sw         $31, 0x10($29)
      jal        func_8009862C
       addiu     $6, $0, 0x1
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009624C

.globl func_80096278
.ent func_80096278
func_80096278:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      beqz       $5, .L800962B0
       sw        $31, 0x18($29)
      jal        func_80096070
       nop
      beqz       $2, .L800962B4
       addu      $2, $16, $0
      jal        func_80096050
       addu      $4, $17, $0
      sltiu      $16, $2, 0x1
  .L800962B0:
      addu       $2, $16, $0
  .L800962B4:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80096278

.globl func_800962C8
.ent func_800962C8
func_800962C8:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $16, $0
      bnez       $16, .L80096318
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F41C8)
      addiu      $4, $4, %lo(D_800F41C8)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4214)
      addiu      $6, $6, %lo(D_800F4214)
      jal        func_80002E80
       addiu     $7, $0, 0xA0E
  .L80096318:
      lw         $2, 0x0($16)
      bnez       $2, .L80096350
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4220)
      addiu      $4, $4, %lo(D_800F4220)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4214)
      addiu      $6, $6, %lo(D_800F4214)
      jal        func_80002E80
       addiu     $7, $0, 0xA0F
  .L80096350:
      lw         $16, 0x0($16)
      lw         $5, 0x18($16)
      jal        func_80096278
       addu      $4, $17, $0
      beqz       $2, .L800963A8
       nop
      jal        func_8009613C
       addu      $4, $17, $0
      addiu      $3, $0, 0x2
      beq        $2, $3, .L8009638C
       addu      $4, $16, $0
      jal        func_8009850C
       addu      $5, $17, $0
      beqz       $2, .L800963A8
       nop
  .L8009638C:
      addu       $4, $17, $0
      lui        $5, (0x40000000 >> 16)
      jal        func_80095E0C
       addu      $6, $0, $0
      lw         $2, 0x4($18)
      addiu      $2, $2, 0x1
      sw         $2, 0x4($18)
  .L800963A8:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x28
.end func_800962C8

.globl func_800963C4
.ent func_800963C4
func_800963C4:
      addiu      $29, $29, -0x28
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $16, $0
      bnez       $16, .L80096414
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4270)
      addiu      $4, $4, %lo(D_800F4270)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F42BC)
      addiu      $6, $6, %lo(D_800F42BC)
      jal        func_80002E80
       addiu     $7, $0, 0xA31
  .L80096414:
      lw         $2, 0x0($16)
      bnez       $2, .L8009644C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F42C8)
      addiu      $4, $4, %lo(D_800F42C8)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F42BC)
      addiu      $6, $6, %lo(D_800F42BC)
      jal        func_80002E80
       addiu     $7, $0, 0xA32
  .L8009644C:
      lw         $2, 0x8($16)
      bnez       $2, .L80096484
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4318)
      addiu      $4, $4, %lo(D_800F4318)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F42BC)
      addiu      $6, $6, %lo(D_800F42BC)
      jal        func_80002E80
       addiu     $7, $0, 0xA33
  .L80096484:
      jal        func_80095DE8
       addu      $4, $18, $0
      lui        $3, (0x40000000 >> 16)
      and        $2, $2, $3
      beqz       $2, .L800964D0
       addu      $4, $18, $0
      lw         $6, 0x4($17)
      lui        $5, %hi(func_80094E88)
      jal        func_800D292C
       addiu     $5, $5, %lo(func_80094E88)
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      bne        $4, $2, .L800964D4
       nop
      lw         $3, 0x8($17)
      lw         $2, 0x0($3)
      addiu      $2, $2, 0x1
      j          .L800964D4
       sw        $2, 0x0($3)
  .L800964D0:
      addiu      $4, $0, 0x1
  .L800964D4:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x28
.end func_800963C4

.globl func_800964F0
.ent func_800964F0
func_800964F0:
      addiu      $29, $29, -0x38
      sw         $16, 0x28($29)
      addu       $16, $4, $0
      sw         $17, 0x2C($29)
      addu       $17, $6, $0
      addiu      $6, $0, 0x5
      sw         $18, 0x30($29)
      addu       $18, $7, $0
      addiu      $7, $29, 0x18
      addiu      $2, $0, 0x8
      sw         $31, 0x34($29)
      sw         $2, 0x10($29)
      jal        func_80095BA4
       sw        $0, 0x14($29)
      lw         $3, 0x18($29)
      addiu      $2, $0, 0x1
      beq        $3, $2, .L80096548
       addiu     $2, $0, 0x2
      beq        $3, $2, .L80096564
       addiu     $2, $0, -0x4
      j          .L80096618
       nop
  .L80096548:
      lw         $4, 0x1C($29)
      addiu      $5, $0, -0x1
      ori        $6, $17, 0x10
      jal        func_800D29D0
       addu      $7, $18, $0
      j          .L80096618
       nop
  .L80096564:
      addu       $4, $16, $0
      addiu      $5, $0, 0x1
      addiu      $6, $0, 0x2
      addiu      $7, $29, 0x20
      addiu      $2, $0, 0x4
      sw         $2, 0x10($29)
      jal        func_80095BA4
       sw        $0, 0x14($29)
      lw         $2, 0x20($29)
      bnez       $2, .L800965C0
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4374)
      addiu      $6, $6, %lo(D_800F4374)
      jal        func_80002E80
       addiu     $7, $0, 0xA5E
      lw         $2, 0x20($29)
  .L800965C0:
      lw         $2, 0x8($2)
      bnez       $2, .L800965F8
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4380)
      addiu      $4, $4, %lo(D_800F4380)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4374)
      addiu      $6, $6, %lo(D_800F4374)
      jal        func_80002E80
       addiu     $7, $0, 0xA5F
  .L800965F8:
      lw         $2, 0x20($29)
      lw         $4, 0x8($2)
      addu       $6, $17, $0
      lw         $2, 0x0($4)
      lw         $5, 0x1C($29)
      lw         $2, 0x34($2)
      jalr       $2
       addu      $7, $18, $0
  .L80096618:
      lw         $31, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800964F0

.globl func_80096630
.ent func_80096630
func_80096630:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L80096670
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F43D0)
      addiu      $6, $6, %lo(D_800F43D0)
      jal        func_80002E80
       addiu     $7, $0, 0xA87
  .L80096670:
      addiu      $4, $16, 0x38
      addu       $5, $0, $0
      addu       $6, $5, $0
      addiu      $2, $0, 0x5
      sw         $2, 0xC($16)
      addiu      $2, $0, 0x1
      sw         $2, 0x10($16)
      sw         $2, 0x18($16)
      addiu      $2, $0, 0x400
      sw         $2, 0x1C($16)
      lui        $2, (0x100000 >> 16)
      sw         $2, 0x20($16)
      addiu      $2, $0, 0x4000
      sw         $2, 0x28($16)
      lui        $2, (0x40000 >> 16)
      sw         $0, 0x14($16)
      sw         $0, 0x24($16)
      sw         $0, 0x2C($16)
      sw         $0, 0x30($16)
      jal        func_80094394
       sw        $2, 0x34($16)
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80096630

.globl func_800966D4
.ent func_800966D4
func_800966D4:
      addiu      $29, $29, -0x30
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $19, 0x24($29)
      addu       $19, $7, $0
      sw         $17, 0x1C($29)
      addiu      $17, $0, 0x3
      sw         $16, 0x18($29)
      addiu      $16, $5, -0x81
      sw         $20, 0x28($29)
      lw         $20, 0x40($29)
      sltiu      $2, $16, 0xB
      bnez       $2, .L80096738
       sw        $31, 0x2C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F43F0)
      addiu      $4, $4, %lo(D_800F43F0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4468)
      addiu      $6, $6, %lo(D_800F4468)
      jal        func_80002E80
       addiu     $7, $0, 0xAAE
  .L80096738:
      bnez       $18, .L8009676C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3F54)
      addiu      $4, $4, %lo(D_800F3F54)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4468)
      addiu      $6, $6, %lo(D_800F4468)
      jal        func_80002E80
       addiu     $7, $0, 0xAAF
  .L8009676C:
      bnez       $19, .L800967A0
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F447C)
      addiu      $4, $4, %lo(D_800F447C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4468)
      addiu      $6, $6, %lo(D_800F4468)
      jal        func_80002E80
       addiu     $7, $0, 0xAB0
  .L800967A0:
      bnez       $20, .L800967D8
       sltiu     $2, $16, 0xA
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F44D0)
      addiu      $4, $4, %lo(D_800F44D0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4468)
      addiu      $6, $6, %lo(D_800F4468)
      jal        func_80002E80
       addiu     $7, $0, 0xAB1
      sltiu      $2, $16, 0xA
  .L800967D8:
      beqz       $2, .L80096828
       lui       $2, %hi(jtbl_800F4528)
      addiu      $2, $2, %lo(jtbl_800F4528)
      sll        $3, $16, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L800967F8
.L800967F8:
      j          .L8009682C
       addiu     $2, $0, 0x1
  .globl .L80096800
.L80096800:
      j          .L80096830
       addiu     $2, $0, 0x400
  .globl .L80096808
.L80096808:
      j          .L80096830
       lui       $2, (0x100000 >> 16)
  .globl .L80096810
.L80096810:
      j          .L80096830
       addiu     $2, $0, 0x4000
  .globl .L80096818
.L80096818:
      j          .L80096830
       addu      $2, $0, $0
  .globl .L80096820
.L80096820:
      j          .L80096830
       lui       $2, (0x40000 >> 16)
  .L80096828:
      addu       $2, $0, $0
  .L8009682C:
      addu       $17, $2, $0
  .L80096830:
      sw         $2, 0x0($18)
      sw         $17, 0x0($19)
      sw         $18, 0x0($20)
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800966D4

.globl func_8009685C
.ent func_8009685C
func_8009685C:
      addiu      $29, $29, -0x30
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $19, 0x24($29)
      addu       $19, $6, $0
      sw         $20, 0x28($29)
      addu       $20, $7, $0
      sw         $18, 0x20($29)
      addiu      $18, $0, 0x3
      bnez       $16, .L800968BC
       sw        $31, 0x2C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4550)
      addiu      $6, $6, %lo(D_800F4550)
      jal        func_80002E80
       addiu     $7, $0, 0xAF1
  .L800968BC:
      addiu      $17, $17, -0x81
      sltiu      $2, $17, 0xB
      bnez       $2, .L800968F8
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F43F0)
      addiu      $4, $4, %lo(D_800F43F0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4550)
      addiu      $6, $6, %lo(D_800F4550)
      jal        func_80002E80
       addiu     $7, $0, 0xAF2
  .L800968F8:
      bnez       $19, .L8009692C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F447C)
      addiu      $4, $4, %lo(D_800F447C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4550)
      addiu      $6, $6, %lo(D_800F4550)
      jal        func_80002E80
       addiu     $7, $0, 0xAF3
  .L8009692C:
      bnez       $20, .L80096964
       sltiu     $2, $17, 0xA
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F44D0)
      addiu      $4, $4, %lo(D_800F44D0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4550)
      addiu      $6, $6, %lo(D_800F4550)
      jal        func_80002E80
       addiu     $7, $0, 0xAF4
      sltiu      $2, $17, 0xA
  .L80096964:
      beqz       $2, .L800969D8
       lui       $2, %hi(jtbl_800F4560)
      addiu      $2, $2, %lo(jtbl_800F4560)
      sll        $3, $17, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L80096984
.L80096984:
      addiu      $4, $16, 0x10
      j          .L800969E0
       addiu     $18, $0, 0x1
  .globl .L80096990
.L80096990:
      j          .L800969E0
       addiu     $4, $16, 0x14
  .globl .L80096998
.L80096998:
      j          .L800969E0
       addiu     $4, $16, 0x18
  .globl .L800969A0
.L800969A0:
      j          .L800969E0
       addiu     $4, $16, 0x1C
  .globl .L800969A8
.L800969A8:
      j          .L800969E0
       addiu     $4, $16, 0x20
  .globl .L800969B0
.L800969B0:
      j          .L800969E0
       addiu     $4, $16, 0x24
  .globl .L800969B8
.L800969B8:
      j          .L800969E0
       addiu     $4, $16, 0x28
  .globl .L800969C0
.L800969C0:
      j          .L800969E0
       addiu     $4, $16, 0x2C
  .globl .L800969C8
.L800969C8:
      j          .L800969E0
       addiu     $4, $16, 0x30
  .globl .L800969D0
.L800969D0:
      j          .L800969E0
       addiu     $4, $16, 0x34
  .L800969D8:
      addu       $4, $0, $0
      addu       $18, $4, $0
  .L800969E0:
      sw         $18, 0x0($19)
      sw         $4, 0x0($20)
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8009685C

.globl func_80096A08
.ent func_80096A08
func_80096A08:
      addiu      $29, $29, -0x38
      sw         $16, 0x28($29)
      addu       $16, $6, $0
      sw         $17, 0x2C($29)
      addu       $17, $7, $0
      lw         $7, 0x48($29)
      addiu      $2, $0, 0x8B
      bne        $5, $2, .L80096A44
       sw        $31, 0x30($29)
      addiu      $4, $4, 0x38
      addu       $5, $16, $0
      jal        func_800941A0
       addu      $6, $17, $0
      j          .L80096A84
       nop
  .L80096A44:
      beqz       $7, .L80096A64
       addiu     $2, $29, 0x20
      sw         $2, 0x10($29)
      addiu      $6, $29, 0x18
      jal        func_800966D4
       addiu     $7, $29, 0x1C
      j          .L80096A74
       addu      $4, $16, $0
  .L80096A64:
      addiu      $6, $29, 0x1C
      jal        func_8009685C
       addiu     $7, $29, 0x20
      addu       $4, $16, $0
  .L80096A74:
      lw         $6, 0x1C($29)
      lw         $7, 0x20($29)
      jal        func_80093F9C
       addu      $5, $17, $0
  .L80096A84:
      lw         $31, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80096A08

.globl func_80096A98
.ent func_80096A98
func_80096A98:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $6, $0
      sw         $17, 0x1C($29)
      addu       $17, $7, $0
      addiu      $2, $0, 0x8B
      beq        $5, $2, .L80096AE0
       sw        $31, 0x20($29)
      addiu      $6, $29, 0x10
      jal        func_8009685C
       addiu     $7, $29, 0x14
      addu       $4, $16, $0
      lw         $6, 0x10($29)
      lw         $7, 0x14($29)
      jal        func_800940B8
       addu      $5, $17, $0
      j          .L80096AF0
       nop
  .L80096AE0:
      addiu      $4, $4, 0x38
      addu       $5, $16, $0
      jal        func_80094394
       addu      $6, $17, $0
  .L80096AF0:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80096A98

.globl func_80096B04
.ent func_80096B04
func_80096B04:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      bnez       $17, .L80096B54
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4588)
      addiu      $6, $6, %lo(D_800F4588)
      jal        func_80002E80
       addiu     $7, $0, 0xB7E
  .L80096B54:
      bnez       $16, .L80096B8C
       addu      $4, $0, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F45A0)
      addiu      $4, $4, %lo(D_800F45A0)
.end func_80096B04

.globl func_80096B70
.ent func_80096B70
func_80096B70:
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4588)
      addiu      $6, $6, %lo(D_800F4588)
      jal        func_80002E80
       addiu     $7, $0, 0xB7F
      addu       $4, $0, $0
  .L80096B8C:
      lw         $5, 0xC($17)
      jal        func_800D2884
       addu      $6, $18, $0
      addu       $4, $2, $0
      beqz       $4, .L80096BB4
       addiu     $2, $0, -0x5
      addiu      $2, $0, 0x1
      addu       $3, $2, $0
      sw         $3, 0x0($16)
      sw         $4, 0x4($16)
  .L80096BB4:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80096B70

.globl func_80096BCC
.ent func_80096BCC
func_80096BCC:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      bnez       $16, .L80096C14
       sw        $31, 0x28($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F45F0)
      addiu      $6, $6, %lo(D_800F45F0)
      jal        func_80002E80
       addiu     $7, $0, 0xBA0
  .L80096C14:
      lw         $2, 0x8($16)
      bnez       $2, .L80096C4C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4380)
      addiu      $4, $4, %lo(D_800F4380)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F45F0)
      addiu      $6, $6, %lo(D_800F45F0)
      jal        func_80002E80
       addiu     $7, $0, 0xBA1
  .L80096C4C:
      bnez       $17, .L80096C84
       addiu     $5, $0, 0x2
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F45A0)
      addiu      $4, $4, %lo(D_800F45A0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F45F0)
      addiu      $6, $6, %lo(D_800F45F0)
      jal        func_80002E80
       addiu     $7, $0, 0xBA2
      addiu      $5, $0, 0x2
  .L80096C84:
      lw         $2, 0x8($16)
      addiu      $6, $0, 0x1
      lw         $3, 0x0($2)
      addiu      $2, $29, 0x18
      sw         $0, 0x10($29)
      sw         $2, 0x14($29)
      lw         $4, 0x8($16)
      lw         $2, 0x2C($3)
      jalr       $2
       addu      $7, $0, $0
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      bne        $4, $2, .L80096CC8
       addiu     $2, $0, 0x2
      lw         $3, 0x18($29)
      sw         $2, 0x0($17)
      sw         $3, 0x4($17)
  .L80096CC8:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x30
.end func_80096BCC

.globl func_80096CE0
.ent func_80096CE0
func_80096CE0:
      addiu      $29, $29, -0x18
      bnez       $7, .L80096CFC
       sw        $31, 0x10($29)
      jal        func_80096BCC
       nop
      j          .L80096D04
       nop
  .L80096CFC:
      jal        func_80096B04
       nop
  .L80096D04:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80096CE0

.globl func_80096D10
.ent func_80096D10
func_80096D10:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      bnez       $16, .L80096D50
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F45A0)
      addiu      $4, $4, %lo(D_800F45A0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4608)
      addiu      $6, $6, %lo(D_800F4608)
      jal        func_80002E80
       addiu     $7, $0, 0xBDC
  .L80096D50:
      lw         $4, 0x4($16)
      beql       $4, $0, .L80096D68
       addu      $4, $16, $0
      jal        func_800D28A0
       nop
      addu       $4, $16, $0
  .L80096D68:
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x8
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80096D10

.globl func_80096D84
.ent func_80096D84
func_80096D84:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      bnez       $16, .L80096DD4
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4620)
      addiu      $6, $6, %lo(D_800F4620)
      jal        func_80002E80
       addiu     $7, $0, 0xBF9
  .L80096DD4:
      lw         $2, 0x8($16)
      bnez       $2, .L80096E0C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4380)
      addiu      $4, $4, %lo(D_800F4380)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4620)
      addiu      $6, $6, %lo(D_800F4620)
      jal        func_80002E80
       addiu     $7, $0, 0xBFA
  .L80096E0C:
      bnez       $17, .L80096E40
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F45A0)
      addiu      $4, $4, %lo(D_800F45A0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4620)
      addiu      $6, $6, %lo(D_800F4620)
      jal        func_80002E80
       addiu     $7, $0, 0xBFB
  .L80096E40:
      lw         $5, 0x4($17)
      beqz       $5, .L80096E6C
       addu      $4, $17, $0
      bnel       $18, $0, .L80096E70
       addu      $5, $0, $0
      lw         $4, 0x8($16)
      lw         $2, 0x0($4)
      lw         $2, 0x30($2)
      jalr       $2
       addu      $6, $0, $0
      addu       $4, $17, $0
  .L80096E6C:
      addu       $5, $0, $0
  .L80096E70:
      jal        func_80016140
       addiu     $6, $0, 0x8
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80096D84

.globl func_80096E90
.ent func_80096E90
func_80096E90:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      bnez       $16, .L80096EE0
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F45A0)
      addiu      $4, $4, %lo(D_800F45A0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4638)
      addiu      $6, $6, %lo(D_800F4638)
      jal        func_80002E80
       addiu     $7, $0, 0xC17
  .L80096EE0:
      lw         $3, 0x0($16)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L80096F00
       addu      $4, $17, $0
      jal        func_80096D10
       addu      $5, $16, $0
      j          .L80096F0C
       nop
  .L80096F00:
      addu       $5, $16, $0
      jal        func_80096D84
       addu      $6, $18, $0
  .L80096F0C:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80096E90

.globl func_80096F24
.ent func_80096F24
func_80096F24:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L80096F64
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4648)
      addiu      $6, $6, %lo(D_800F4648)
      jal        func_80002E80
       addiu     $7, $0, 0xC34
  .L80096F64:
      addu       $4, $0, $0
      lw         $5, 0xC($16)
      jal        func_800D2884
       addiu     $6, $0, 0x74
      addu       $3, $2, $0
      beqz       $3, .L80096F8C
       nop
      lw         $2, 0x5C($16)
      addiu      $2, $2, 0x1
      sw         $2, 0x5C($16)
  .L80096F8C:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_80096F24

.globl func_80096FA0
.ent func_80096FA0
func_80096FA0:
      addiu      $29, $29, -0x18
      addu       $6, $4, $0
      lui        $2, %hi(func_80094BF0)
      addu       $4, $5, $0
      sw         $31, 0x10($29)
      jal        func_800D292C
       addiu     $5, $2, %lo(func_80094BF0)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80096FA0

.globl func_80096FC8
.ent func_80096FC8
func_80096FC8:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      bnez       $16, .L80097010
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4654)
      addiu      $6, $6, %lo(D_800F4654)
      jal        func_80002E80
       addiu     $7, $0, 0xC69
  .L80097010:
      beqz       $17, .L80097038
       nop
      addu       $4, $16, $0
      jal        func_80096FA0
       addu      $5, $17, $0
      jal        func_800D28A0
       addu      $4, $17, $0
      lw         $2, 0x5C($16)
      addiu      $2, $2, -0x1
      sw         $2, 0x5C($16)
  .L80097038:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80096FC8

.globl func_8009704C
.ent func_8009704C
func_8009704C:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $31, 0x28($29)
      bnez       $17, .L80097090
       sw        $16, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4660)
      addiu      $6, $6, %lo(D_800F4660)
      jal        func_80002E80
       addiu     $7, $0, 0xC88
  .L80097090:
      lw         $16, 0x58($17)
      beql       $16, $0, .L800970C8
       sw        $0, 0x58($17)
      addu       $4, $16, $0
  .L800970A0:
      addiu      $5, $0, 0xE
      jal        func_80095D44
       addiu     $6, $29, 0x18
      addu       $4, $17, $0
      jal        func_80096FC8
       addu      $5, $16, $0
      lw         $16, 0x18($29)
      bnez       $16, .L800970A0
       addu      $4, $16, $0
      sw         $0, 0x58($17)
  .L800970C8:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8009704C

.globl func_800970DC
.ent func_800970DC
func_800970DC:
      addiu      $29, $29, -0x48
      sw         $16, 0x38($29)
      addu       $16, $4, $0
      sw         $17, 0x3C($29)
      addu       $17, $5, $0
      bnez       $16, .L80097124
       sw        $31, 0x40($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4670)
      addiu      $6, $6, %lo(D_800F4670)
      jal        func_80002E80
       addiu     $7, $0, 0xCA7
  .L80097124:
      lw         $2, 0x8($16)
      bnez       $2, .L8009715C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4380)
      addiu      $4, $4, %lo(D_800F4380)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4670)
      addiu      $6, $6, %lo(D_800F4670)
      jal        func_80002E80
       addiu     $7, $0, 0xCA8
  .L8009715C:
      lw         $4, 0x8($16)
      jal        func_800930E4
       addiu     $5, $29, 0x18
      addiu      $3, $0, 0x1
      bne        $2, $3, .L80097198
       addu      $2, $0, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0xA
      addiu      $16, $29, 0x28
      jal        func_80095D18
       addu      $6, $16, $0
      addu       $4, $16, $0
      jal        func_800CCA90
       addiu     $5, $29, 0x18
      slti       $2, $2, 0x1
  .L80097198:
      lw         $31, 0x40($29)
      lw         $17, 0x3C($29)
      lw         $16, 0x38($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_800970DC

.globl func_800971AC
.ent func_800971AC
func_800971AC:
      addiu      $29, $29, -0x20
      lui        $2, %hi(func_8009452C)
      sw         $4, 0x10($29)
      addu       $4, $5, $0
      addiu      $5, $2, %lo(func_8009452C)
      sw         $6, 0x14($29)
      sw         $31, 0x18($29)
      jal        func_800D292C
       addiu     $6, $29, 0x10
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800971AC

.globl func_800971DC
.ent func_800971DC
func_800971DC:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $5, $0
      sw         $31, 0x24($29)
      bnez       $17, .L80097228
       sw        $16, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4680)
      addiu      $6, $6, %lo(D_800F4680)
      jal        func_80002E80
       addiu     $7, $0, 0xCE3
  .L80097228:
      bnez       $18, .L8009725C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F468C)
      addiu      $4, $4, %lo(D_800F468C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4680)
      addiu      $6, $6, %lo(D_800F4680)
      jal        func_80002E80
       addiu     $7, $0, 0xCE4
  .L8009725C:
      lw         $16, 0x58($17)
      beqz       $16, .L80097278
       addu      $4, $16, $0
      jal        func_80095F44
       addiu     $5, $17, 0x58
      j          .L80097298
       nop
  .L80097278:
      lw         $2, 0x5C($17)
      lw         $3, 0x1C($17)
      sltu       $2, $2, $3
      beqz       $2, .L80097298
       nop
      jal        func_80096F24
       addu      $4, $17, $0
      addu       $16, $2, $0
  .L80097298:
      bnel       $16, $0, .L800972C4
       sw        $16, 0x0($18)
      lw         $2, 0x60($17)
      beqz       $2, .L800972BC
       addu      $4, $17, $0
      jal        func_800986B0
       addu      $5, $0, $0
      j          .L8009725C
       nop
  .L800972BC:
      j          .L800972C8
       addu      $2, $0, $0
  .L800972C4:
      addiu      $2, $0, 0x1
  .L800972C8:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800971DC

.globl func_800972E0
.ent func_800972E0
func_800972E0:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      bnez       $16, .L80097328
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F46E0)
      addiu      $6, $6, %lo(D_800F46E0)
      jal        func_80002E80
       addiu     $7, $0, 0xD0C
  .L80097328:
      lw         $3, 0x20($16)
      sltu       $2, $17, $3
      beqz       $2, .L80097380
       addu      $2, $0, $0
      beqz       $3, .L80097380
       nop
  .L80097340:
      lw         $2, 0x68($16)
      sltu       $2, $17, $2
      bnez       $2, .L80097380
       addiu     $2, $0, 0x1
      addu       $4, $16, $0
      jal        func_800986B0
       addiu     $5, $0, 0x1
      bnez       $2, .L80097374
       addu      $4, $16, $0
      jal        func_800986B0
       addiu     $5, $0, 0x2
      beqz       $2, .L80097380
       addu      $2, $0, $0
  .L80097374:
      lw         $2, 0x20($16)
      bnez       $2, .L80097340
       addu      $2, $0, $0
  .L80097380:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800972E0

.globl func_80097394
.ent func_80097394
func_80097394:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $18
      bnez       $16, .L800973E4
       sw        $31, 0x24($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F46F4)
      addiu      $6, $6, %lo(D_800F46F4)
      jal        func_80002E80
       addiu     $7, $0, 0xD2F
  .L800973E4:
      lw         $2, 0x24($16)
      sltu       $2, $18, $2
      bnez       $2, .L80097444
       addu      $2, $0, $0
      lw         $2, 0x28($16)
      sltu       $2, $2, $18
      bnez       $2, .L80097444
       addu      $2, $0, $0
  .L80097404:
      lw         $2, 0x20($16)
      beqz       $2, .L80097444
       addu      $2, $0, $0
      lw         $3, 0x68($16)
      sltu       $2, $17, $3
      bnez       $2, .L80097444
       addiu     $2, $0, 0x1
      lw         $2, 0x64($16)
      addu       $2, $3, $2
      sltu       $2, $17, $2
      beqz       $2, .L80097404
       addu      $4, $16, $0
      jal        func_800986B0
       addiu     $5, $0, 0x1
      bnez       $2, .L80097404
       addu      $2, $0, $0
  .L80097444:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80097394

.globl func_8009745C
.ent func_8009745C
func_8009745C:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      bnez       $16, .L800974A4
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F470C)
      addiu      $6, $6, %lo(D_800F470C)
      jal        func_80002E80
       addiu     $7, $0, 0xD52
  .L800974A4:
      lw         $2, 0x30($16)
      sltu       $2, $17, $2
      bnez       $2, .L80097504
       addu      $2, $0, $0
      lw         $2, 0x34($16)
      sltu       $2, $2, $17
      bnez       $2, .L80097504
       addu      $2, $0, $0
  .L800974C4:
      lw         $2, 0x2C($16)
      beqz       $2, .L80097504
       addu      $2, $0, $0
      lw         $3, 0x70($16)
      sltu       $2, $17, $3
      bnez       $2, .L80097504
       addiu     $2, $0, 0x1
      lw         $2, 0x6C($16)
      addu       $2, $3, $2
      sltu       $2, $17, $2
      beqz       $2, .L800974C4
       addu      $4, $16, $0
      jal        func_800986B0
       addiu     $5, $0, 0x2
      bnez       $2, .L800974C4
       addu      $2, $0, $0
  .L80097504:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009745C

.globl func_80097518
.ent func_80097518
func_80097518:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $20, 0x20($29)
      addu       $20, $6, $0
      sw         $17, 0x14($29)
      addu       $17, $7, $0
      sw         $16, 0x10($29)
      sw         $31, 0x24($29)
      jal        func_800972E0
       addiu     $16, $0, 0x3
      beqz       $2, .L800975A0
       sltiu     $2, $17, 0x2
      beqz       $2, .L80097570
       addu      $4, $18, $0
      addu       $5, $19, $0
      jal        func_80097394
       addu      $6, $20, $0
      bnel       $2, $0, .L80097570
       addiu     $16, $0, 0x1
  .L80097570:
      addiu      $2, $0, 0x3
      bne        $16, $2, .L800975A4
       addu      $2, $16, $0
      beqz       $17, .L8009758C
       addiu     $2, $0, 0x2
      bne        $17, $2, .L800975A4
       addu      $2, $16, $0
  .L8009758C:
      addu       $4, $18, $0
      jal        func_8009745C
       addu      $5, $20, $0
      bnel       $2, $0, .L800975A0
       addiu     $16, $0, 0x2
  .L800975A0:
      addu       $2, $16, $0
  .L800975A4:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80097518

.globl func_800975C4
.ent func_800975C4
func_800975C4:
      addiu      $29, $29, -0x38
      sw         $19, 0x2C($29)
      lw         $19, 0x4C($29)
      sw         $20, 0x30($29)
      lw         $20, 0x50($29)
      sw         $17, 0x24($29)
      addu       $17, $4, $0
      sw         $18, 0x28($29)
      addu       $18, $5, $0
      sw         $16, 0x20($29)
      addu       $16, $6, $7
      sw         $31, 0x34($29)
      bnez       $17, .L80097628
       sw        $0, 0x18($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4724)
      addiu      $6, $6, %lo(D_800F4724)
      jal        func_80002E80
       addiu     $7, $0, 0xD96
  .L80097628:
      bnez       $19, .L8009765C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F468C)
      addiu      $4, $4, %lo(D_800F468C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4724)
      addiu      $6, $6, %lo(D_800F4724)
      jal        func_80002E80
       addiu     $7, $0, 0xD97
  .L8009765C:
      bnez       $20, .L80097690
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4734)
      addiu      $4, $4, %lo(D_800F4734)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4724)
      addiu      $6, $6, %lo(D_800F4724)
      jal        func_80002E80
       addiu     $7, $0, 0xD98
  .L80097690:
      lw         $2, 0x28($17)
      sltu       $2, $2, $16
      beqz       $2, .L800976B0
       nop
      lw         $2, 0x34($17)
      sltu       $2, $2, $16
      bnez       $2, .L8009775C
       addu      $2, $0, $0
  .L800976B0:
      lw         $2, 0x20($17)
      addiu      $3, $18, 0x74
      sltu       $2, $2, $3
      bnez       $2, .L8009775C
       addu      $2, $0, $0
      addu       $4, $17, $0
      jal        func_800971DC
       addiu     $5, $29, 0x18
      beqz       $2, .L80097758
       addu      $4, $17, $0
      addu       $5, $18, $0
      lw         $7, 0x48($29)
      jal        func_80097518
       addu      $6, $16, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x3
      beq        $16, $2, .L8009774C
       addiu     $2, $16, -0x1
      sltiu      $2, $2, 0x2
      bnez       $2, .L80097730
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4788)
      addiu      $4, $4, %lo(D_800F4788)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4724)
      addiu      $6, $6, %lo(D_800F4724)
      jal        func_80002E80
       addiu     $7, $0, 0xDA0
  .L80097730:
      lw         $3, 0x18($29)
      addiu      $2, $0, 0x1
      sw         $3, 0x0($19)
      xor        $3, $16, $2
      sltu       $3, $3, $2
      j          .L8009775C
       sw        $3, 0x0($20)
  .L8009774C:
      lw         $4, 0x18($29)
      jal        func_80095E70
       addiu     $5, $17, 0x58
  .L80097758:
      addu       $2, $0, $0
  .L8009775C:
      lw         $31, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_800975C4

.globl func_8009777C
.ent func_8009777C
func_8009777C:
      addiu      $29, $29, -0x38
      lw         $2, 0x48($29)
      lw         $3, 0x4C($29)
      lw         $8, 0x50($29)
      lw         $9, 0x54($29)
      lw         $10, 0x58($29)
      sw         $4, 0x10($29)
      addu       $4, $5, $0
      sw         $6, 0x14($29)
      addiu      $6, $29, 0x10
      sw         $31, 0x30($29)
      sw         $7, 0x18($29)
      sw         $2, 0x1C($29)
      lui        $2, %hi(func_80094784)
      addiu      $5, $2, %lo(func_80094784)
      sw         $3, 0x20($29)
      sw         $8, 0x24($29)
      sw         $9, 0x28($29)
      jal        func_800D292C
       sw        $10, 0x2C($29)
      lw         $31, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8009777C

.globl func_800977D8
.ent func_800977D8
func_800977D8:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      bnez       $16, .L80097820
       sw        $31, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F47E4)
      addiu      $6, $6, %lo(D_800F47E4)
      jal        func_80002E80
       addiu     $7, $0, 0xDE2
  .L80097820:
      addu       $4, $16, $0
      jal        func_80096FA0
       addu      $5, $17, $0
      addu       $4, $17, $0
      jal        func_80095E70
       addiu     $5, $16, 0x58
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800977D8

.globl func_8009784C
.ent func_8009784C
func_8009784C:
      addiu      $29, $29, -0x40
      sw         $20, 0x30($29)
      addu       $20, $5, $0
      sw         $21, 0x34($29)
      addu       $21, $6, $0
      sw         $22, 0x38($29)
      addu       $22, $7, $0
      sw         $18, 0x28($29)
      addiu      $18, $4, 0x48
      sw         $31, 0x3C($29)
      sw         $19, 0x2C($29)
      sw         $17, 0x24($29)
      bnez       $4, .L800978B0
       sw        $16, 0x20($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F47F0)
      addiu      $6, $6, %lo(D_800F47F0)
      jal        func_80002E80
       addiu     $7, $0, 0xDFF
  .L800978B0:
      bnez       $21, .L800978E4
       addu      $17, $0, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4804)
      addiu      $4, $4, %lo(D_800F4804)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F47F0)
      addiu      $6, $6, %lo(D_800F47F0)
      jal        func_80002E80
       addiu     $7, $0, 0xE00
  .L800978E4:
      addiu      $19, $0, 0x1
  .L800978E8:
      jal        func_800CD46C
       addu      $4, $18, $0
      sltu       $2, $17, $2
      beqz       $2, .L80097960
       addu      $4, $18, $0
      sw         $0, 0x18($29)
      jal        func_800CD594
       addu      $5, $17, $0
      addu       $16, $2, $0
      beql       $16, $0, .L800978E8
       addiu     $17, $17, 0x1
      addu       $4, $16, $0
  .L80097918:
      addiu      $5, $0, 0xE
      jal        func_80095D44
       addiu     $6, $29, 0x18
      beqz       $20, .L8009793C
       addu      $4, $16, $0
      jal        func_8009613C
       addu      $4, $16, $0
      bne        $2, $20, .L8009794C
       addu      $4, $16, $0
  .L8009793C:
      jalr       $21
       addu      $5, $22, $0
      bne        $2, $19, .L80097964
       nop
  .L8009794C:
      lw         $16, 0x18($29)
      bnez       $16, .L80097918
       addu      $4, $16, $0
      j          .L800978E8
       addiu     $17, $17, 0x1
  .L80097960:
      addiu      $2, $0, 0x1
  .L80097964:
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
.end func_8009784C

.globl func_8009798C
.ent func_8009798C
func_8009798C:
      addiu      $29, $29, -0x48
      sw         $16, 0x30($29)
      addu       $16, $4, $0
      sw         $18, 0x38($29)
      addu       $18, $5, $0
      sw         $20, 0x40($29)
      addu       $20, $6, $0
      sw         $19, 0x3C($29)
      addu       $19, $0, $0
      sw         $31, 0x44($29)
      bnez       $16, .L800979E8
       sw        $17, 0x34($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4854)
      addiu      $6, $6, %lo(D_800F4854)
      jal        func_80002E80
       addiu     $7, $0, 0xE27
  .L800979E8:
      bnez       $18, .L80097A1C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4860)
      addiu      $4, $4, %lo(D_800F4860)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4854)
      addiu      $6, $6, %lo(D_800F4854)
      jal        func_80002E80
       addiu     $7, $0, 0xE28
  .L80097A1C:
      lbu        $2, 0x0($18)
      bnez       $2, .L80097A54
       addiu     $17, $16, 0x48
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F48B0)
      addiu      $4, $4, %lo(D_800F48B0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4854)
      addiu      $6, $6, %lo(D_800F4854)
      jal        func_80002E80
       addiu     $7, $0, 0xE29
  .L80097A54:
      jal        func_800CD488
       addu      $4, $17, $0
      addu       $16, $2, $0
      beqz       $16, .L80097AEC
       addiu     $4, $29, 0x18
      jal        func_80093454
       addu      $5, $18, $0
      addiu      $3, $0, 0x1
      bne        $2, $3, .L80097AF0
       addu      $2, $19, $0
      addiu      $4, $29, 0x18
      jal        func_80093380
       addu      $5, $16, $0
      addu       $4, $17, $0
      jal        func_800CD46C
       addu      $16, $2, $0
      sltu       $2, $16, $2
      beqz       $2, .L80097AEC
       addu      $4, $17, $0
      jal        func_800CD594
       addu      $5, $16, $0
      addu       $16, $2, $0
      beqz       $16, .L80097AF0
       addu      $2, $19, $0
      addu       $4, $16, $0
  .L80097AB8:
      addiu      $5, $29, 0x18
      jal        func_80096108
       addiu     $6, $29, 0x28
      bnez       $2, .L80097AD8
       nop
      lw         $16, 0x28($29)
      bnez       $16, .L80097AB8
       addu      $4, $16, $0
  .L80097AD8:
      beqz       $16, .L80097AF0
       addu      $2, $19, $0
      bnel       $20, $0, .L80097AE8
       sw        $16, 0x0($20)
  .L80097AE8:
      addiu      $19, $0, 0x1
  .L80097AEC:
      addu       $2, $19, $0
  .L80097AF0:
      lw         $31, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_8009798C

.globl func_80097B10
.ent func_80097B10
func_80097B10:
      addiu      $29, $29, -0x38
      sw         $16, 0x28($29)
      addu       $16, $4, $0
      sw         $18, 0x30($29)
      addu       $18, $5, $0
      sw         $17, 0x2C($29)
      addu       $17, $6, $0
      bnez       $16, .L80097B60
       sw        $31, 0x34($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F48F8)
      addiu      $6, $6, %lo(D_800F48F8)
      jal        func_80002E80
       addiu     $7, $0, 0xE57
  .L80097B60:
      bnez       $17, .L80097B98
       addiu     $4, $29, 0x1C
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F468C)
      addiu      $4, $4, %lo(D_800F468C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F48F8)
      addiu      $6, $6, %lo(D_800F48F8)
      jal        func_80002E80
       addiu     $7, $0, 0xE58
      addiu      $4, $29, 0x1C
  .L80097B98:
      jal        func_800CCBE0
       sw        $0, 0x18($29)
      addu       $4, $16, $0
      addu       $5, $18, $0
      lui        $6, %hi(func_80096194)
      addiu      $6, $6, %lo(func_80096194)
      jal        func_8009784C
       addiu     $7, $29, 0x18
      lw         $2, 0x18($29)
      bnel       $2, $0, .L80097BCC
       sw        $2, 0x0($17)
      j          .L80097BD0
       addu      $2, $0, $0
  .L80097BCC:
      addiu      $2, $0, 0x1
  .L80097BD0:
      lw         $31, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_80097B10

.globl func_80097BE8
.ent func_80097BE8
func_80097BE8:
      addiu      $29, $29, -0x48
      sw         $19, 0x3C($29)
      addu       $19, $4, $0
      sw         $18, 0x38($29)
      addu       $18, $5, $0
      sw         $17, 0x34($29)
      addiu      $17, $19, 0x48
      sw         $31, 0x40($29)
      bnez       $19, .L80097C3C
       sw        $16, 0x30($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4908)
      addiu      $6, $6, %lo(D_800F4908)
      jal        func_80002E80
       addiu     $7, $0, 0xE7D
  .L80097C3C:
      bnel       $18, $0, .L80097C74
       addu      $4, $18, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F40B4)
      addiu      $4, $4, %lo(D_800F40B4)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4908)
      addiu      $6, $6, %lo(D_800F4908)
      jal        func_80002E80
       addiu     $7, $0, 0xE7E
      addu       $4, $18, $0
  .L80097C74:
      addiu      $5, $0, 0x4
      addu       $6, $5, $0
      addiu      $7, $29, 0x18
      addiu      $2, $0, 0x10
      sw         $2, 0x10($29)
      jal        func_80095BA4
       sw        $0, 0x14($29)
      jal        func_800CD488
       addu      $4, $17, $0
      addiu      $4, $29, 0x18
      jal        func_80093380
       addu      $5, $2, $0
      addu       $4, $17, $0
      jal        func_800CD46C
       addu      $16, $2, $0
      sltu       $2, $16, $2
      beqz       $2, .L80097CCC
       addu      $4, $17, $0
      jal        func_800CD594
       addu      $5, $16, $0
      j          .L80097CD0
       sw        $2, 0x28($29)
  .L80097CCC:
      sw         $0, 0x28($29)
  .L80097CD0:
      addu       $4, $18, $0
      jal        func_80095E70
       addiu     $5, $29, 0x28
      addu       $4, $17, $0
      lw         $6, 0x28($29)
      jal        func_800CD54C
       addu      $5, $16, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bnel       $16, $2, .L80097D10
       addu      $2, $16, $0
      addu       $4, $19, $0
      addu       $5, $18, $0
      jal        func_800971AC
       addu      $6, $2, $0
      addu       $2, $16, $0
  .L80097D10:
      lw         $31, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_80097BE8

.globl func_80097D2C
.ent func_80097D2C
func_80097D2C:
      addiu      $29, $29, -0x48
      sw         $19, 0x3C($29)
      addu       $19, $4, $0
      sw         $18, 0x38($29)
      addu       $18, $5, $0
      sw         $17, 0x34($29)
      addiu      $17, $19, 0x48
      sw         $31, 0x40($29)
      bnez       $19, .L80097D80
       sw        $16, 0x30($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4918)
      addiu      $6, $6, %lo(D_800F4918)
      jal        func_80002E80
       addiu     $7, $0, 0xEA4
  .L80097D80:
      bnel       $18, $0, .L80097DB8
       addu      $4, $18, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F40B4)
      addiu      $4, $4, %lo(D_800F40B4)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4918)
      addiu      $6, $6, %lo(D_800F4918)
      jal        func_80002E80
       addiu     $7, $0, 0xEA5
      addu       $4, $18, $0
  .L80097DB8:
      addiu      $5, $0, 0x4
      addu       $6, $5, $0
      addiu      $7, $29, 0x18
      addiu      $2, $0, 0x10
      sw         $2, 0x10($29)
      jal        func_80095BA4
       sw        $0, 0x14($29)
      jal        func_800CD488
       addu      $4, $17, $0
      addiu      $4, $29, 0x18
      jal        func_80093380
       addu      $5, $2, $0
      addu       $4, $17, $0
      jal        func_800CD46C
       addu      $16, $2, $0
      sltu       $2, $16, $2
      bnez       $2, .L80097E08
       addu      $4, $17, $0
      j          .L80097E44
       addu      $2, $0, $0
  .L80097E08:
      jal        func_800CD594
       addu      $5, $16, $0
      addu       $4, $18, $0
      addiu      $5, $29, 0x28
      jal        func_80095F44
       sw        $2, 0x28($29)
      addu       $4, $17, $0
      lw         $6, 0x28($29)
      jal        func_800CD54C
       addu      $5, $16, $0
      addu       $4, $19, $0
      addu       $5, $18, $0
      jal        func_800971AC
       addiu     $6, $0, 0x2
      addiu      $2, $0, 0x1
  .L80097E44:
      lw         $31, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_80097D2C

.globl func_80097E60
.ent func_80097E60
func_80097E60:
      addiu      $29, $29, -0x58
      sw         $21, 0x44($29)
      lw         $21, 0x68($29)
      sw         $22, 0x48($29)
      lw         $22, 0x6C($29)
      sw         $18, 0x38($29)
      addu       $18, $4, $0
      sw         $17, 0x34($29)
      addu       $17, $5, $0
      sw         $30, 0x50($29)
      addu       $30, $6, $0
      sw         $23, 0x4C($29)
      lw         $23, 0x70($29)
      addu       $4, $17, $0
      sw         $31, 0x54($29)
      sw         $20, 0x40($29)
      sw         $19, 0x3C($29)
      sw         $16, 0x30($29)
      jal        func_80017780
       sw        $7, 0x64($29)
      addiu      $20, $2, 0x1
      sw         $0, 0x28($29)
      bnez       $18, .L80097EEC
       sw        $0, 0x2C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4928)
      addiu      $6, $6, %lo(D_800F4928)
      jal        func_80002E80
       addiu     $7, $0, 0xECC
  .L80097EEC:
      lw         $2, 0x10($18)
      beqz       $2, .L80097FE4
       addu      $4, $18, $0
      addu       $5, $17, $0
      jal        func_8009798C
       addu      $6, $0, $0
      bnez       $2, .L80097FE8
       addu      $16, $0, $0
      addu       $4, $18, $0
      addu       $5, $20, $0
      addu       $6, $21, $0
      lw         $2, 0x74($29)
      addu       $7, $22, $0
      sw         $2, 0x10($29)
      addiu      $2, $29, 0x28
      sw         $2, 0x14($29)
      addiu      $2, $29, 0x2C
      jal        func_800975C4
       sw        $2, 0x18($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80097FC8
       addu      $19, $16, $0
      lw         $5, 0x28($29)
      lw         $3, 0x64($29)
      sw         $30, 0x10($29)
      sw         $21, 0x18($29)
      sw         $22, 0x1C($29)
      sw         $23, 0x20($29)
      sw         $3, 0x14($29)
      lw         $2, 0x2C($29)
      beqz       $2, .L80097F78
       lui       $2, (0x80000000 >> 16)
      or         $2, $23, $2
      sw         $2, 0x20($29)
  .L80097F78:
      addu       $4, $18, $0
      addu       $6, $17, $0
      jal        func_8009777C
       addu      $7, $20, $0
      addu       $16, $2, $0
      bne        $16, $19, .L80097FC8
       addu      $17, $16, $0
      lw         $5, 0x28($29)
      jal        func_80097BE8
       addu      $4, $18, $0
      addu       $16, $2, $0
      bne        $16, $17, .L80097FC8
       nop
      lw         $4, 0x28($29)
      lw         $5, 0x78($29)
      jal        func_80099AA4
       nop
      addu       $16, $2, $0
      bgezl      $16, .L80097FC8
       sw        $0, 0x28($29)
  .L80097FC8:
      lw         $5, 0x28($29)
      beqz       $5, .L80097FEC
       addu      $2, $16, $0
      jal        func_800977D8
       addu      $4, $18, $0
      j          .L80097FEC
       addu      $2, $16, $0
  .L80097FE4:
      addu       $16, $0, $0
  .L80097FE8:
      addu       $2, $16, $0
  .L80097FEC:
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
.end func_80097E60

.globl func_8009801C
.ent func_8009801C
func_8009801C:
      addiu      $29, $29, -0xB8
      sw         $18, 0xB0($29)
      addu       $18, $4, $0
      sw         $16, 0xA8($29)
      addu       $16, $5, $0
      addiu      $4, $29, 0x28
      addu       $5, $0, $0
      addiu      $6, $0, 0x74
      sw         $31, 0xB4($29)
      jal        func_80016140
       sw        $17, 0xAC($29)
      addu       $4, $0, $0
      lw         $5, 0xC($18)
      jal        func_800D2884
       addu      $6, $4, $0
      beqz       $2, .L800981A0
       sw        $2, 0x44($29)
      addu       $4, $16, $0
      jal        func_80095078
       addiu     $5, $29, 0x28
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L8009818C
       addu      $16, $17, $0
      lw         $4, 0x44($29)
      jal        func_800D28BC
       nop
      beqz       $2, .L8009818C
       addiu     $17, $0, -0x25
      lw         $4, 0x44($29)
      jal        func_800D28F4
       nop
      beqz       $2, .L80098188
       addu      $4, $18, $0
      addu       $5, $2, $0
      addiu      $6, $29, 0x60
      lw         $2, 0x50($29)
      addiu      $7, $29, 0x6C
      sw         $2, 0x10($29)
      lw         $3, 0x5C($29)
      lui        $2, (0x40000000 >> 16)
      sw         $2, 0x18($29)
      addiu      $2, $0, 0x2
      sw         $2, 0x1C($29)
      addiu      $2, $29, 0xA0
      sw         $2, 0x20($29)
      jal        func_80097E60
       sw        $3, 0x14($29)
      addu       $17, $2, $0
      bne        $17, $16, .L80098174
       addiu     $5, $0, 0x6
      addiu      $6, $0, 0x5
      addiu      $7, $29, 0x48
      lw         $4, 0xA0($29)
      addiu      $16, $0, 0x8
      sw         $16, 0x10($29)
      jal        func_80095BA4
       sw        $17, 0x14($29)
      addu       $5, $16, $0
      addiu      $6, $0, 0x5
      lw         $4, 0xA0($29)
      addiu      $7, $29, 0x54
      sw         $16, 0x10($29)
      jal        func_80095BA4
       sw        $17, 0x14($29)
      addiu      $5, $0, 0xC
      addiu      $6, $0, 0x6
      addiu      $7, $29, 0x78
      lw         $4, 0xA0($29)
      addu       $16, $5, $0
      sw         $16, 0x10($29)
      jal        func_80095BA4
       sw        $17, 0x14($29)
      addiu      $5, $0, 0xD
      addiu      $6, $0, 0x6
      lw         $4, 0xA0($29)
      addiu      $7, $29, 0x84
      sw         $16, 0x10($29)
      jal        func_80095BA4
       sw        $17, 0x14($29)
      lw         $4, 0xA0($29)
      jal        func_80095DC8
       addiu     $5, $0, 0x2
      lw         $4, 0xA0($29)
      jal        func_80099B04
       nop
  .L80098174:
      lw         $4, 0x44($29)
      jal        func_800D2910
       nop
      j          .L8009818C
       nop
  .L80098188:
      addiu      $17, $0, -0x2F
  .L8009818C:
      lw         $4, 0x44($29)
      jal        func_800D28A0
       nop
      j          .L800981A8
       addu      $2, $17, $0
  .L800981A0:
      addiu      $17, $0, -0x5
      addu       $2, $17, $0
  .L800981A8:
      lw         $31, 0xB4($29)
      lw         $18, 0xB0($29)
      lw         $17, 0xAC($29)
      lw         $16, 0xA8($29)
      jr         $31
       addiu     $29, $29, 0xB8
.end func_8009801C

.globl func_800981C0
.ent func_800981C0
func_800981C0:
      addiu      $29, $29, -0x40
      sw         $19, 0x2C($29)
      lw         $19, 0x50($29)
      sw         $20, 0x30($29)
      addu       $20, $4, $0
      sw         $16, 0x20($29)
      addu       $16, $5, $0
      sw         $17, 0x24($29)
      addu       $17, $6, $0
      sw         $21, 0x34($29)
      addu       $21, $7, $0
      sw         $31, 0x38($29)
      sw         $18, 0x28($29)
      sw         $0, 0x18($29)
      bnez       $20, .L8009822C
       sw        $0, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F493C)
      addiu      $6, $6, %lo(D_800F493C)
      jal        func_80002E80
       addiu     $7, $0, 0xF29
  .L8009822C:
      bnez       $19, .L80098260
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F45A0)
      addiu      $4, $4, %lo(D_800F45A0)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F493C)
      addiu      $6, $6, %lo(D_800F493C)
      jal        func_80002E80
       addiu     $7, $0, 0xF2A
  .L80098260:
      jal        func_8009613C
       addu      $4, $16, $0
      addiu      $18, $0, 0x1
      beq        $2, $18, .L800982A4
       addu      $4, $19, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F494C)
      addiu      $4, $4, %lo(D_800F494C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F493C)
      addiu      $6, $6, %lo(D_800F493C)
      jal        func_80002E80
       addiu     $7, $0, 0xF2B
      addu       $4, $19, $0
  .L800982A4:
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x8
      addu       $4, $16, $0
      addu       $5, $17, $0
      addiu      $6, $0, 0x1
      jal        func_800964F0
       addiu     $7, $29, 0x18
      addu       $16, $2, $0
      bne        $16, $18, .L8009833C
       addu      $17, $16, $0
      addu       $4, $20, $0
      addu       $5, $19, $0
      addu       $6, $21, $0
      jal        func_80096CE0
       addu      $7, $0, $0
      addu       $16, $2, $0
      bne        $16, $17, .L8009833C
       addu      $18, $16, $0
      lw         $4, 0x8($20)
      addiu      $6, $0, 0x2
      lw         $2, 0x0($4)
      lw         $5, 0x4($19)
      lw         $2, 0x34($2)
      jalr       $2
       addiu     $7, $29, 0x1C
      addu       $16, $2, $0
      bne        $16, $18, .L8009833C
       addu      $17, $16, $0
      lw         $4, 0x1C($29)
      lw         $5, 0x18($29)
      jal        func_800934A0
       nop
      addu       $16, $2, $0
      bne        $16, $17, .L8009833C
       nop
      sw         $0, 0x1C($29)
      sw         $0, 0x18($29)
  .L8009833C:
      lw         $4, 0x1C($29)
      beqz       $4, .L8009835C
       addiu     $2, $0, 0x1
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $16, $0
      addiu      $2, $0, 0x1
  .L8009835C:
      beq        $16, $2, .L80098370
       addu      $4, $20, $0
      addu       $5, $19, $0
      jal        func_80096E90
       addu      $6, $0, $0
  .L80098370:
      lw         $4, 0x18($29)
      beqz       $4, .L80098390
       addu      $2, $16, $0
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $16, $0
      addu       $2, $16, $0
  .L80098390:
      lw         $31, 0x38($29)
      lw         $21, 0x34($29)
      lw         $20, 0x30($29)
      lw         $19, 0x2C($29)
      lw         $18, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x40
.end func_800981C0

.globl func_800983B4
.ent func_800983B4
func_800983B4:
      addiu      $29, $29, -0x48
      sw         $21, 0x3C($29)
      addu       $21, $4, $0
      sw         $18, 0x30($29)
      addu       $18, $5, $0
      sw         $19, 0x34($29)
      addu       $19, $6, $0
      sw         $20, 0x38($29)
      addu       $20, $7, $0
      sw         $31, 0x40($29)
      sw         $17, 0x2C($29)
      bnez       $19, .L80098414
       sw        $16, 0x28($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F499C)
      addiu      $4, $4, %lo(D_800F499C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F49F0)
      addiu      $6, $6, %lo(D_800F49F0)
      jal        func_80002E80
       addiu     $7, $0, 0xF52
  .L80098414:
      bnez       $20, .L8009844C
       addu      $4, $21, $0
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4A00)
      addiu      $4, $4, %lo(D_800F4A00)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F49F0)
      addiu      $6, $6, %lo(D_800F49F0)
      jal        func_80002E80
       addiu     $7, $0, 0xF53
      addu       $4, $21, $0
  .L8009844C:
      addu       $5, $18, $0
      jal        func_800971AC
       addiu     $6, $0, 0x2
      addu       $4, $18, $0
      addiu      $5, $0, 0x6
      addiu      $6, $0, 0x5
      addiu      $7, $29, 0x18
      addiu      $17, $29, 0x20
      addiu      $16, $0, 0x8
      lw         $3, 0x0($19)
      lw         $8, 0x4($19)
      sw         $3, 0x20($29)
      sw         $8, 0x24($29)
      sw         $17, 0x10($29)
      jal        func_80095BF0
       sw        $16, 0x14($29)
      addu       $4, $18, $0
      addu       $5, $16, $0
      addiu      $6, $0, 0x5
      addiu      $7, $29, 0x18
      lw         $3, 0x18($29)
      lw         $8, 0x1C($29)
      sw         $3, 0x0($19)
      sw         $8, 0x4($19)
      lw         $3, 0x0($20)
      lw         $8, 0x4($20)
      sw         $3, 0x20($29)
      sw         $8, 0x24($29)
      sw         $17, 0x10($29)
      jal        func_80095BF0
       sw        $16, 0x14($29)
      addu       $4, $21, $0
      addu       $5, $18, $0
      lw         $3, 0x18($29)
      lw         $8, 0x1C($29)
      sw         $3, 0x0($20)
      sw         $8, 0x4($20)
      jal        func_800971AC
       addiu     $6, $0, 0x1
      lw         $31, 0x40($29)
      lw         $21, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_800983B4

.globl func_8009850C
.ent func_8009850C
func_8009850C:
      addiu      $29, $29, -0x50
      sw         $21, 0x44($29)
      addu       $21, $4, $0
      sw         $19, 0x3C($29)
      addu       $19, $5, $0
      addu       $4, $19, $0
      addiu      $5, $0, 0x7
      addiu      $6, $29, 0x28
      sw         $31, 0x48($29)
      sw         $20, 0x40($29)
      sw         $18, 0x38($29)
      sw         $17, 0x34($29)
      jal        func_80095CB8
       sw        $16, 0x30($29)
      addu       $4, $19, $0
      addiu      $5, $0, 0x9
      jal        func_80095CB8
       addiu     $6, $29, 0x2C
      lw         $2, 0x28($29)
      lw         $5, 0x2C($29)
      addu       $4, $21, $0
      jal        func_8009745C
       addu      $5, $2, $5
      beqz       $2, .L800985FC
       addu      $4, $21, $0
      addu       $5, $19, $0
      addiu      $6, $0, 0x6
      lw         $7, 0x28($29)
      addiu      $18, $29, 0x18
      jal        func_800981C0
       sw        $18, 0x10($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80098600
       addu      $20, $16, $0
      addu       $4, $21, $0
      addu       $5, $19, $0
      addiu      $6, $0, 0x8
      lw         $7, 0x2C($29)
      addiu      $17, $29, 0x20
      jal        func_800981C0
       sw        $17, 0x10($29)
      addu       $16, $2, $0
      bne        $16, $20, .L80098604
       xori      $2, $16, 0x1
      addu       $4, $21, $0
      addu       $5, $19, $0
      addu       $6, $18, $0
      jal        func_800983B4
       addu      $7, $17, $0
      addu       $4, $21, $0
      addu       $5, $18, $0
      jal        func_80096E90
       addu      $6, $0, $0
      addu       $4, $21, $0
      addu       $5, $17, $0
      jal        func_80096E90
       addu      $6, $0, $0
      j          .L80098604
       xori      $2, $16, 0x1
  .L800985FC:
      addu       $16, $0, $0
  .L80098600:
      xori       $2, $16, 0x1
  .L80098604:
      lw         $31, 0x48($29)
      lw         $21, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      sltiu      $2, $2, 0x1
      jr         $31
       addiu     $29, $29, 0x50
.end func_8009850C

.globl func_8009862C
.ent func_8009862C
func_8009862C:
      addiu      $29, $29, -0x28
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      addu       $4, $16, $0
      addiu      $5, $0, 0x10
      sw         $31, 0x24($29)
      jal        func_80095CB8
       addu      $6, $29, $5
      lw         $2, 0x10($29)
      beqz       $2, .L80098670
       addu      $4, $18, $0
      beql       $17, $0, .L8009868C
       addu      $4, $16, $0
  .L80098670:
      jal        func_80097D2C
       addu      $5, $16, $0
      addu       $4, $18, $0
      jal        func_800977D8
       addu      $5, $16, $0
      j          .L80098698
       addiu     $2, $0, 0x1
  .L8009868C:
      jal        func_80095DC8
       addiu     $5, $0, 0x3
      addu       $2, $0, $0
  .L80098698:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009862C

.globl func_800986B0
.ent func_800986B0
func_800986B0:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      addiu      $6, $29, 0x10
      sw         $31, 0x1C($29)
      jal        func_80097B10
       sw        $0, 0x10($29)
      beqz       $2, .L80098724
       addu      $2, $0, $0
      lw         $4, 0x10($29)
      jal        func_8009613C
       nop
      addiu      $3, $0, 0x1
      bne        $2, $3, .L80098718
       addu      $4, $16, $0
      lw         $4, 0x10($29)
      jal        func_80096050
       nop
      bnez       $2, .L80098718
       addu      $4, $16, $0
      lw         $5, 0x10($29)
      jal        func_8009850C
       addu      $4, $16, $0
      bnez       $2, .L80098724
       addu      $2, $0, $0
      addu       $4, $16, $0
  .L80098718:
      lw         $5, 0x10($29)
      jal        func_8009862C
       addu      $6, $0, $0
  .L80098724:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800986B0

.globl func_80098734
.ent func_80098734
func_80098734:
      addiu      $29, $29, -0x18
      lui        $6, %hi(func_8009624C)
      addiu      $6, $6, %lo(func_8009624C)
      sw         $31, 0x10($29)
      jal        func_8009784C
       addu      $7, $4, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80098734

.globl func_80098758
.ent func_80098758
func_80098758:
      addiu      $29, $29, -0x20
      lui        $6, %hi(func_800962C8)
      addu       $5, $0, $0
      addiu      $6, $6, %lo(func_800962C8)
      addiu      $7, $29, 0x10
      sw         $31, 0x18($29)
      sw         $4, 0x10($29)
      jal        func_8009784C
       sw        $0, 0x14($29)
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8009878C
       addu      $2, $0, $0
      lw         $2, 0x14($29)
  .L8009878C:
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80098758

.globl func_80098798
.ent func_80098798
func_80098798:
      addiu      $29, $29, -0x28
      sw         $6, 0x18($29)
      lui        $6, %hi(func_800963C4)
      sw         $5, 0x14($29)
      addiu      $5, $0, 0x2
      addiu      $6, $6, %lo(func_800963C4)
      addiu      $7, $29, 0x10
      sw         $31, 0x20($29)
      jal        func_8009784C
       sw        $4, 0x10($29)
      lw         $31, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80098798

.globl func_800987CC
.ent func_800987CC
func_800987CC:
      addiu      $29, $29, -0x30
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $21, 0x24($29)
      addu       $21, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      addiu      $3, $0, 0x1
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      sw         $31, 0x28($29)
      sw         $19, 0x1C($29)
      beqz       $17, .L8009883C
       sw        $18, 0x18($29)
      addu       $19, $3, $0
      addiu      $18, $0, -0x5
      addu       $4, $20, $0
  .L80098810:
      jal        func_8009801C
       addu      $5, $21, $0
      addu       $3, $2, $0
      beq        $3, $19, .L80098830
       addiu     $16, $16, 0x1
      bne        $3, $18, .L8009883C
       nop
      addiu      $3, $0, 0x1
  .L80098830:
      sltu       $2, $16, $17
      bnez       $2, .L80098810
       addu      $4, $20, $0
  .L8009883C:
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
.end func_800987CC

.globl func_80098864
.ent func_80098864
func_80098864:
      addiu      $29, $29, -0x30
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      addu       $4, $16, $0
      sw         $18, 0x20($29)
      lw         $18, 0x40($29)
      addu       $5, $6, $0
      sw         $17, 0x1C($29)
      addu       $17, $7, $0
      sw         $31, 0x28($29)
      jal        func_800936A0
       sw        $0, 0x10($29)
      addu       $5, $2, $0
      blez       $5, .L80098938
       addu      $4, $16, $0
      jal        func_800936A0
       addu      $5, $17, $0
      addu       $5, $2, $0
      blez       $5, .L80098938
       addu      $4, $16, $0
      jal        func_800936A0
       addu      $5, $18, $0
      addu       $5, $2, $0
      blez       $5, .L80098938
       addu      $4, $16, $0
      lw         $5, 0x44($29)
      jal        func_80093730
       addiu     $6, $0, 0x1
      addu       $5, $2, $0
      blez       $5, .L80098938
       addu      $4, $16, $0
      lui        $5, (0x23230D0A >> 16)
      jal        func_800936A0
       ori       $5, $5, (0x23230D0A & 0xFFFF)
      addu       $5, $2, $0
      blez       $5, .L80098938
       addu      $4, $19, $0
      addu       $5, $16, $0
      jal        func_80098798
       addiu     $6, $29, 0x10
      addu       $5, $2, $0
      blez       $5, .L80098938
       nop
      lw         $2, 0x10($29)
      bnel       $2, $18, .L80098938
       addiu     $5, $0, -0x25
      lw         $2, 0x4($16)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $4, $16, $0
      addu       $5, $2, $0
  .L80098938:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $5, $0
      jr         $31
       addiu     $29, $29, 0x30
.end func_80098864

.globl func_80098958
.ent func_80098958
func_80098958:
      addiu      $29, $29, -0x48
      sw         $19, 0x3C($29)
      addu       $19, $4, $0
      sw         $16, 0x30($29)
      addu       $16, $5, $0
      sw         $17, 0x34($29)
      addu       $17, $6, $0
      sw         $18, 0x38($29)
      addu       $18, $7, $0
      addu       $4, $16, $0
      sw         $31, 0x40($29)
      jal        func_800936C4
       addiu     $5, $29, 0x20
      blez       $2, .L80098A44
       nop
      lw         $2, 0x20($29)
      bne        $2, $17, .L80098A44
       addiu     $2, $0, -0x25
      addu       $4, $16, $0
      jal        func_800936C4
       addiu     $5, $29, 0x24
      blez       $2, .L80098A44
       nop
      lw         $2, 0x24($29)
      bne        $2, $18, .L80098A44
       addiu     $2, $0, -0x31
      addu       $4, $16, $0
      jal        func_800936C4
       addiu     $5, $29, 0x28
      blez       $2, .L80098A44
       nop
      lw         $2, 0x28($29)
      beqz       $2, .L80098A40
       addu      $4, $16, $0
      addiu      $5, $29, 0x10
      jal        func_800937D4
       addiu     $6, $0, 0x1
      blez       $2, .L80098A44
       nop
      lw         $4, 0x58($29)
      jal        func_800CCA90
       addiu     $5, $29, 0x10
      blez       $2, .L80098A40
       addu      $4, $16, $0
      jal        func_800936C4
       addiu     $5, $29, 0x2C
      blez       $2, .L80098A44
       lui       $3, (0x23230D0A >> 16)
      lw         $2, 0x2C($29)
      ori        $3, $3, (0x23230D0A & 0xFFFF)
      bne        $2, $3, .L80098A44
       addiu     $2, $0, -0x25
      addu       $4, $19, $0
      lw         $6, 0x28($29)
      jal        func_800987CC
       addu      $5, $16, $0
      j          .L80098A44
       nop
  .L80098A40:
      addiu      $2, $0, -0x25
  .L80098A44:
      lw         $31, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_80098958

.globl func_80098A60
.ent func_80098A60
func_80098A60:
      addiu      $29, $29, -0x48
      sw         $19, 0x3C($29)
      addu       $19, $4, $0
      sw         $20, 0x40($29)
      addu       $20, $5, $0
      sw         $31, 0x44($29)
      sw         $18, 0x38($29)
      sw         $17, 0x34($29)
      sw         $16, 0x30($29)
      sw         $0, 0x28($29)
      bnez       $19, .L80098ABC
       sw        $0, 0x2C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4A54)
      addiu      $6, $6, %lo(D_800F4A54)
      jal        func_80002E80
       addiu     $7, $0, 0x10B3
  .L80098ABC:
      lw         $4, 0x8($19)
      jal        func_800930E4
       addiu     $5, $29, 0x18
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80098B54
       addu      $18, $16, $0
      lw         $4, 0x8($19)
      addiu      $5, $0, 0x2
      lw         $2, 0x0($4)
      addu       $6, $5, $0
      lw         $2, 0x34($2)
      jalr       $2
       addiu     $7, $29, 0x28
      addu       $16, $2, $0
      bne        $16, $18, .L80098B54
       addu      $17, $16, $0
      lw         $4, 0x28($29)
      addiu      $5, $0, 0x5
      addiu      $6, $0, 0x2
      jal        func_800CD72C
       addiu     $7, $29, 0x2C
      addu       $16, $2, $0
      bne        $16, $17, .L80098B54
       addu      $18, $16, $0
      addu       $4, $19, $0
      lui        $6, (0x444D4353 >> 16)
      ori        $6, $6, (0x444D4353 & 0xFFFF)
      lui        $7, (0x10000 >> 16)
      lw         $5, 0x2C($29)
      addiu      $2, $29, 0x18
      sw         $0, 0x28($29)
      sw         $20, 0x10($29)
      jal        func_80098864
       sw        $2, 0x14($29)
      addu       $16, $2, $0
      beql       $16, $18, .L80098B54
       sw        $0, 0x2C($29)
  .L80098B54:
      lw         $4, 0x2C($29)
      beqz       $4, .L80098B70
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $16, $0
  .L80098B70:
      lw         $4, 0x28($29)
      beqz       $4, .L80098B90
       addu      $2, $16, $0
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $16, $0
      addu       $2, $16, $0
  .L80098B90:
      lw         $31, 0x44($29)
      lw         $20, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_80098A60

.globl func_80098BB0
.ent func_80098BB0
func_80098BB0:
      addiu      $29, $29, -0x48
      sw         $19, 0x3C($29)
      addu       $19, $4, $0
      sw         $31, 0x40($29)
      sw         $18, 0x38($29)
      sw         $17, 0x34($29)
      sw         $16, 0x30($29)
      sw         $0, 0x28($29)
      bnez       $19, .L80098C04
       sw        $0, 0x2C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4A68)
      addiu      $6, $6, %lo(D_800F4A68)
      jal        func_80002E80
       addiu     $7, $0, 0x10D9
  .L80098C04:
      lw         $2, 0x8($19)
      bnez       $2, .L80098C3C
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4380)
      addiu      $4, $4, %lo(D_800F4380)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4A68)
      addiu      $6, $6, %lo(D_800F4A68)
      jal        func_80002E80
       addiu     $7, $0, 0x10DA
  .L80098C3C:
      lw         $4, 0x8($19)
      jal        func_800930E4
       addiu     $5, $29, 0x18
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80098CFC
       addu      $18, $16, $0
      lw         $4, 0x8($19)
      addu       $6, $2, $0
      lw         $2, 0x0($4)
      addiu      $5, $0, 0x2
      lw         $2, 0x34($2)
      jalr       $2
       addiu     $7, $29, 0x28
      addu       $16, $2, $0
      bne        $16, $18, .L80098CF0
       addu      $17, $16, $0
      lw         $4, 0x28($29)
      addiu      $5, $0, 0x5
      addiu      $6, $0, 0x1
      jal        func_800CD72C
       addiu     $7, $29, 0x2C
      addu       $16, $2, $0
      bne        $16, $17, .L80098CFC
       addu      $18, $16, $0
      addu       $4, $19, $0
      lui        $6, (0x444D4353 >> 16)
      ori        $6, $6, (0x444D4353 & 0xFFFF)
      lui        $7, (0x10000 >> 16)
      lw         $5, 0x2C($29)
      addiu      $2, $29, 0x18
      sw         $0, 0x28($29)
      jal        func_80098958
       sw        $2, 0x10($29)
      addu       $16, $2, $0
      bne        $16, $18, .L80098CFC
       nop
      lw         $4, 0x2C($29)
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
      addu       $16, $2, $0
      j          .L80098CFC
       sw        $0, 0x2C($29)
  .L80098CF0:
      addiu      $2, $0, -0x20
      beql       $16, $2, .L80098CFC
       addiu     $16, $0, 0x1
  .L80098CFC:
      lw         $4, 0x2C($29)
      beqz       $4, .L80098D18
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $16, $0
  .L80098D18:
      lw         $4, 0x28($29)
      beqz       $4, .L80098D38
       addu      $2, $16, $0
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $16, $0
      addu       $2, $16, $0
  .L80098D38:
      lw         $31, 0x40($29)
      lw         $19, 0x3C($29)
      lw         $18, 0x38($29)
      lw         $17, 0x34($29)
      lw         $16, 0x30($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_80098BB0

.globl func_80098D54
.ent func_80098D54
func_80098D54:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L80098D94
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F3968)
      addiu      $4, $4, %lo(D_800F3968)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4A7C)
      addiu      $6, $6, %lo(D_800F4A7C)
      jal        func_80002E80
       addiu     $7, $0, 0x10FF
  .L80098D94:
      lw         $2, 0x8($16)
      bnez       $2, .L80098DCC
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4380)
      addiu      $4, $4, %lo(D_800F4380)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4A7C)
      addiu      $6, $6, %lo(D_800F4A7C)
      jal        func_80002E80
       addiu     $7, $0, 0x1100
  .L80098DCC:
      lw         $4, 0x8($16)
      lw         $2, 0x0($4)
      addiu      $5, $0, 0x2
      lw         $2, 0x30($2)
      jalr       $2
       addu      $6, $0, $0
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80098D54

.globl func_80098DF4
.ent func_80098DF4
func_80098DF4:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L80098E34
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4A8C)
      addiu      $4, $4, %lo(D_800F4A8C)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4AD8)
      addiu      $6, $6, %lo(D_800F4AD8)
      jal        func_80002E80
       addiu     $7, $0, 0x113F
  .L80098E34:
      addu       $4, $0, $0
      addu       $5, $4, $0
      jal        func_800D27D0
       addiu     $6, $0, 0x7C
      beqz       $2, .L80098E60
       lui       $3, %hi(D_800F2E68)
      addiu      $3, $3, %lo(D_800F2E68)
      sw         $3, 0x0($2)
      sw         $2, 0x4($2)
      j          .L80098E64
       sw        $16, 0x8($2)
  .L80098E60:
      addu       $2, $0, $0
  .L80098E64:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80098DF4

.globl func_80098E74
.ent func_80098E74
func_80098E74:
      addiu      $29, $29, -0x30
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $31, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      bnez       $16, .L80098EC0
       sw        $17, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4AEC)
      addiu      $4, $4, %lo(D_800F4AEC)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4B3C)
      addiu      $6, $6, %lo(D_800F4B3C)
      jal        func_80002E80
       addiu     $7, $0, 0x115F
  .L80098EC0:
      lw         $17, 0x4($16)
      jal        func_80096630
       addu      $4, $17, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80098F68
       addu      $19, $16, $0
      addu       $4, $0, $0
      lw         $5, 0xC($17)
      jal        func_8009A380
       addu      $6, $4, $0
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      bne        $16, $19, .L80098F3C
       addu      $18, $16, $0
      addiu      $4, $17, 0x48
      lw         $5, 0x1C($17)
      lw         $6, 0xC($17)
      jal        func_800CD3EC
       addiu     $5, $5, -0x1
      addu       $16, $2, $0
      bne        $16, $18, .L80098F34
       lui       $4, %hi(D_800F4B50)
      lw         $2, 0x20($17)
      lw         $3, 0x2C($17)
      sw         $2, 0x68($17)
      j          .L80098F4C
       sw        $3, 0x70($17)
  .L80098F34:
      j          .L80098F44
       addiu     $4, $4, %lo(D_800F4B50)
  .L80098F3C:
      lui        $4, %hi(D_800F4B6C)
      addiu      $4, $4, %lo(D_800F4B6C)
  .L80098F44:
      jal        func_80002E80
       nop
  .L80098F4C:
      bgez       $16, .L80098F6C
       addu      $2, $16, $0
      lui        $4, %hi(D_800F4B94)
      jal        func_80002E80
       addiu     $4, $4, %lo(D_800F4B94)
      sw         $0, 0x10($17)
      addiu      $16, $0, 0x1
  .L80098F68:
      addu       $2, $16, $0
  .L80098F6C:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80098E74

.globl func_80098F88
.ent func_80098F88
func_80098F88:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      bnez       $16, .L80098FC8
       sw        $31, 0x1C($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4AEC)
      addiu      $4, $4, %lo(D_800F4AEC)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4BB0)
      addiu      $6, $6, %lo(D_800F4BB0)
      jal        func_80002E80
       addiu     $7, $0, 0x1196
  .L80098FC8:
      lw         $16, 0x4($16)
      lw         $2, 0x60($16)
      beqz       $2, .L80099004
       nop
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4BC4)
      addiu      $4, $4, %lo(D_800F4BC4)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4BB0)
      addiu      $6, $6, %lo(D_800F4BB0)
      jal        func_80002E80
       addiu     $7, $0, 0x1198
  .L80099004:
      jal        func_8009704C
       addu      $4, $16, $0
      lw         $2, 0x5C($16)
      beql       $2, $0, .L80099048
       addiu     $4, $16, 0x48
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4C18)
      addiu      $4, $4, %lo(D_800F4C18)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4BB0)
      addiu      $6, $6, %lo(D_800F4BB0)
      jal        func_80002E80
       addiu     $7, $0, 0x119A
      addiu      $4, $16, 0x48
  .L80099048:
      addu       $5, $0, $0
      jal        func_800CD434
       addu      $6, $5, $0
      addiu      $4, $16, 0x38
      lui        $5, %hi(func_80093870)
      addiu      $5, $5, %lo(func_80093870)
      jal        func_800CD234
       addu      $6, $0, $0
      lw         $5, 0xC($16)
      jal        func_8009A408
       addu      $4, $0, $0
      jal        func_800D2814
       addu      $4, $16, $0
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80098F88

.globl func_8009908C
.ent func_8009908C
func_8009908C:
      addiu      $29, $29, -0x80
      lw         $2, 0x90($29)
      sw         $23, 0x74($29)
      lw         $23, 0x98($29)
      sw         $22, 0x70($29)
      lw         $22, 0x9C($29)
      sw         $16, 0x58($29)
      addu       $16, $4, $0
      sw         $17, 0x5C($29)
      addu       $17, $5, $0
      sw         $19, 0x64($29)
      addu       $19, $7, $0
      sw         $21, 0x6C($29)
      addu       $21, $0, $0
      sw         $20, 0x68($29)
      addu       $20, $21, $0
      sw         $31, 0x78($29)
      bnez       $16, .L80099104
       sw        $18, 0x60($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4C68)
      addiu      $4, $4, %lo(D_800F4C68)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4CBC)
      addiu      $6, $6, %lo(D_800F4CBC)
      jal        func_80002E80
       addiu     $7, $0, 0x11C7
  .L80099104:
      lw         $4, 0x90($29)
      lui        $5, %hi(D_800FAE74)
      jal        func_800CCF74
       addiu     $5, $5, %lo(D_800FAE74)
      bnel       $2, $0, .L80099264
       addu      $16, $0, $0
      addu       $4, $17, $0
      addu       $5, $0, $0
      lw         $2, 0x0($16)
      jalr       $2
       addiu     $6, $29, 0x48
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80099264
       addu      $18, $16, $0
      lw         $4, 0x48($29)
      beqz       $4, .L80099264
       addiu     $16, $0, -0x4
      jal        func_800CAF4C
       nop
      addu       $4, $2, $0
      beqz       $4, .L80099264
       nop
      lw         $2, 0x0($4)
      lw         $2, 0x14($2)
      jalr       $2
       addiu     $5, $29, 0x4C
      addu       $16, $2, $0
      bne        $16, $18, .L80099264
       addu      $17, $16, $0
      lw         $2, 0x4C($29)
      addu       $5, $19, $0
      lw         $4, 0x4($2)
      jal        func_80099744
       addiu     $6, $29, 0x50
      addu       $16, $2, $0
      bne        $16, $17, .L80099264
       addu      $19, $16, $0
      lw         $4, 0x50($29)
      jal        func_80096070
       nop
      beqz       $2, .L80099258
       nop
      lw         $4, 0x50($29)
      jal        func_80096094
       nop
      bnel       $2, $0, .L80099258
       addiu     $21, $0, 0x4
      addiu      $5, $0, 0xB
      lw         $4, 0x50($29)
      jal        func_80095D18
       addiu     $6, $29, 0x18
      addu       $5, $0, $0
      lui        $2, %hi(D_800FAE28)
      addiu      $18, $2, %lo(D_800FAE28)
      addu       $6, $18, $0
      lw         $4, 0x90($29)
      jal        func_8005446C
       addu      $7, $5, $0
      bnez       $2, .L80099250
       addiu     $2, $0, 0x1
      addiu      $4, $29, 0x18
      addiu      $5, $0, 0x5
      addiu      $17, $29, 0x28
      addu       $6, $17, $0
      jal        func_8009D060
       addiu     $7, $0, 0x20
      jal        func_800CC3A8
       addu      $4, $2, $0
      addu       $16, $2, $0
      bne        $16, $19, .L80099250
       addiu     $2, $0, 0x1
      addiu      $4, $29, 0x90
      addu       $5, $18, $0
      addu       $6, $17, $0
      jal        func_80054530
       addiu     $7, $0, -0x1
      jal        func_800CC3A8
       addu      $4, $2, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
  .L80099250:
      beql       $16, $2, .L80099258
       addu      $20, $2, $0
  .L80099258:
      lw         $4, 0x50($29)
      jal        func_80099B04
       nop
  .L80099264:
      beql       $16, $0, .L8009926C
       addiu     $16, $0, 0x1
  .L8009926C:
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800992A0
       nop
      bnez       $20, .L80099290
       addiu     $4, $29, 0x90
      lui        $5, %hi(D_800FAE28)
      addiu      $5, $5, %lo(D_800FAE28)
      jal        func_800545BC
       addiu     $6, $0, -0x1
  .L80099290:
      bnel       $22, $0, .L80099298
       sw        $21, 0x0($22)
  .L80099298:
      bnel       $23, $0, .L800992A0
       sw        $0, 0x0($23)
  .L800992A0:
      jal        func_800CC3A8
       addu      $4, $16, $0
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
.end func_8009908C

.globl func_800992D4
.ent func_800992D4
func_800992D4:
      addiu      $29, $29, -0x68
      sw         $16, 0x48($29)
      lw         $16, 0x7C($29)
      sw         $22, 0x60($29)
      lw         $22, 0x8C($29)
      sw         $21, 0x5C($29)
      lw         $21, 0x90($29)
      sw         $17, 0x4C($29)
      addu       $17, $4, $0
      sw         $18, 0x50($29)
      addu       $18, $5, $0
      sw         $20, 0x58($29)
      addu       $20, $7, $0
      sw         $19, 0x54($29)
      addu       $19, $0, $0
      bnez       $17, .L80099344
       sw        $31, 0x64($29)
      jal        func_80013DC8
       nop
      sw         $2, 0x10($29)
      lui        $4, %hi(D_800F4C68)
      addiu      $4, $4, %lo(D_800F4C68)
      lui        $5, %hi(D_800F2ED4)
      addiu      $5, $5, %lo(D_800F2ED4)
      lui        $6, %hi(D_800F4CD4)
      addiu      $6, $6, %lo(D_800F4CD4)
      jal        func_80002E80
       addiu     $7, $0, 0x1212
  .L80099344:
      addiu      $2, $0, 0xC8
      beq        $16, $2, .L80099358
       addiu     $2, $0, 0x130
      bnel       $16, $2, .L80099458
       addu      $17, $0, $0
  .L80099358:
      addu       $4, $18, $0
      addu       $5, $0, $0
      lw         $2, 0x0($17)
      jalr       $2
       addiu     $6, $29, 0x38
      jal        func_800CC3A0
       addu      $4, $2, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L80099458
       addu      $18, $17, $0
      lw         $4, 0x38($29)
      beqz       $4, .L80099458
       addiu     $17, $0, -0x4
      jal        func_800CAF4C
       nop
      addu       $4, $2, $0
      beqz       $4, .L80099458
       nop
      lw         $2, 0x0($4)
      lw         $2, 0x14($2)
      jalr       $2
       addiu     $5, $29, 0x3C
      addu       $17, $2, $0
      bne        $17, $18, .L80099458
       addu      $16, $17, $0
      lw         $2, 0x3C($29)
      addu       $5, $20, $0
      lw         $18, 0x4($2)
      addiu      $6, $29, 0x40
      jal        func_80099744
       addu      $4, $18, $0
      addu       $17, $2, $0
      bne        $17, $16, .L80099458
       nop
      lw         $4, 0x40($29)
      jal        func_80096070
       nop
      beqz       $2, .L8009944C
       addiu     $5, $0, 0xB
      addiu      $16, $29, 0x28
      lw         $4, 0x40($29)
      jal        func_80095D18
       addu      $6, $16, $0
      addu       $5, $16, $0
      lw         $4, 0x84($29)
      jal        func_800CCE74
       addiu     $6, $29, 0x18
      addiu      $4, $29, 0x18
      jal        func_800CCA90
       addu      $5, $16, $0
      bgtz       $2, .L80099440
       addu      $4, $18, $0
      lw         $4, 0x40($29)
      jal        func_80099A3C
       addiu     $19, $0, 0x4
      j          .L8009944C
       nop
  .L80099440:
      lw         $5, 0x40($29)
      jal        func_8009862C
       addu      $6, $0, $0
  .L8009944C:
      lw         $4, 0x40($29)
      jal        func_80099B04
       nop
  .L80099458:
      beql       $17, $0, .L80099460
       addiu     $17, $0, 0x1
  .L80099460:
      addiu      $2, $0, 0x1
      bne        $17, $2, .L8009947C
       nop
      bnel       $21, $0, .L80099474
       sw        $19, 0x0($21)
  .L80099474:
      bnel       $22, $0, .L8009947C
       sw        $0, 0x0($22)
  .L8009947C:
      jal        func_800CC3A8
       addu      $4, $17, $0
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
.end func_800992D4

.globl func_800994AC
.ent func_800994AC
func_800994AC:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800994AC

.globl func_800994B4
.ent func_800994B4
func_800994B4:
      jr         $31
       addiu     $2, $0, -0x2
.end func_800994B4

.globl func_800994BC
.ent func_800994BC
func_800994BC:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      bnez       $18, .L800994E0
       sw        $16, 0x10($29)
      j          .L8009952C
       addiu     $16, $0, -0x4
  .L800994E0:
      lw         $17, 0x4($18)
      jal        func_80098758
       addu      $4, $17, $0
      beqz       $2, .L80099510
       addiu     $16, $0, 0x1
      addu       $4, $17, $0
      jal        func_80098A60
       addu      $5, $2, $0
      addu       $16, $2, $0
      bgtzl      $16, .L8009951C
       addu      $4, $17, $0
      addiu      $16, $0, 0x1
  .L80099510:
      jal        func_80098D54
       addu      $4, $17, $0
      addu       $4, $17, $0
  .L8009951C:
      jal        func_80098734
       addu      $5, $0, $0
      jal        func_80098F88
       addu      $4, $18, $0
  .L8009952C:
      addu       $2, $16, $0
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800994BC

.globl func_80099548
.ent func_80099548
func_80099548:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $0, $0
      sw         $31, 0x20($29)
      sw         $17, 0x14($29)
      bnez       $4, .L80099574
       sw        $16, 0x10($29)
      j          .L800995C4
       addiu     $18, $0, -0x4
  .L80099574:
      lw         $4, 0x4($4)
      lw         $2, 0x10($4)
      beqz       $2, .L800995C4
       addu      $16, $0, $0
      addiu      $17, $4, 0x38
  .L80099588:
      jal        func_800CD26C
       addu      $4, $17, $0
      sltu       $2, $16, $2
      beqz       $2, .L800995C4
       addu      $4, $17, $0
      jal        func_800CD394
       addu      $5, $16, $0
      beqz       $2, .L800995BC
       addu      $4, $2, $0
      jal        func_800CC4AC
       addu      $5, $19, $0
      bnel       $2, $0, .L800995C4
       addiu     $18, $0, 0x1
  .L800995BC:
      j          .L80099588
       addiu     $16, $16, 0x1
  .L800995C4:
      addu       $2, $18, $0
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80099548

.globl func_800995E4
.ent func_800995E4
func_800995E4:
      addiu      $29, $29, -0x20
      beqz       $4, .L8009960C
       sw        $31, 0x18($29)
      lw         $2, 0x30($29)
      sw         $2, 0x10($29)
      lw         $4, 0x4($4)
      jal        func_80096A08
       nop
      j          .L80099610
       nop
  .L8009960C:
      addiu      $2, $0, -0x4
  .L80099610:
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800995E4

.globl func_8009961C
.ent func_8009961C
func_8009961C:
      addiu      $29, $29, -0x18
      beqz       $4, .L8009963C
       sw        $31, 0x10($29)
      lw         $4, 0x4($4)
      jal        func_80096A98
       nop
      j          .L80099640
       nop
  .L8009963C:
      addiu      $2, $0, -0x4
  .L80099640:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009961C

.globl func_8009964C
.ent func_8009964C
func_8009964C:
      addiu      $29, $29, -0x48
      sw         $18, 0x30($29)
      lw         $18, 0x58($29)
      sw         $19, 0x34($29)
      lw         $19, 0x5C($29)
      sw         $20, 0x38($29)
      addu       $20, $4, $0
      sw         $16, 0x28($29)
      addu       $16, $5, $0
      sw         $17, 0x2C($29)
      addu       $17, $6, $0
      sw         $21, 0x3C($29)
      addu       $21, $7, $0
      beqz       $20, .L800996A0
       sw        $31, 0x40($29)
      beqz       $16, .L80099720
       addiu     $2, $0, -0x4
      beqz       $17, .L80099720
       nop
      bnez       $21, .L800996A8
       nop
  .L800996A0:
      j          .L80099720
       addiu     $2, $0, -0x4
  .L800996A8:
      lbu        $2, 0x0($16)
      beqz       $2, .L80099720
       addu      $2, $0, $0
      beqz       $18, .L80099720
       nop
      beqz       $19, .L80099720
       addu      $4, $16, $0
      lui        $5, %hi(D_800F4CEC)
      addiu      $5, $5, %lo(D_800F4CEC)
      jal        func_80013F40
       addiu     $6, $0, 0x4
      bnez       $2, .L800996F0
       addu      $4, $16, $0
      lui        $5, %hi(D_800F4CF4)
      jal        func_80017880
       addiu     $5, $5, %lo(D_800F4CF4)
      bnez       $2, .L80099720
       addu      $2, $0, $0
  .L800996F0:
      lw         $2, 0x60($29)
      addu       $5, $16, $0
      sw         $2, 0x18($29)
      lw         $2, 0x64($29)
      addu       $6, $17, $0
      sw         $18, 0x10($29)
      sw         $19, 0x14($29)
      sw         $0, 0x1C($29)
      sw         $2, 0x20($29)
      lw         $4, 0x4($20)
      jal        func_80097E60
       addu      $7, $21, $0
  .L80099720:
      lw         $31, 0x40($29)
      lw         $21, 0x3C($29)
      lw         $20, 0x38($29)
      lw         $19, 0x34($29)
      lw         $18, 0x30($29)
      lw         $17, 0x2C($29)
      lw         $16, 0x28($29)
      jr         $31
       addiu     $29, $29, 0x48
.end func_8009964C

.globl func_80099744
.ent func_80099744
func_80099744:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $31, 0x20($29)
      beqz       $4, .L80099764
       sw        $16, 0x18($29)
      bnez       $5, .L8009976C
       nop
  .L80099764:
      j          .L800997D8
       addiu     $3, $0, -0x4
  .L8009976C:
      lbu        $2, 0x0($5)
      beqz       $2, .L800997D8
       addu      $3, $0, $0
      lw         $16, 0x4($4)
      lw         $2, 0x10($16)
      beqz       $2, .L800997D8
       addu      $4, $16, $0
      jal        func_8009798C
       addiu     $6, $29, 0x10
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800997D8
       nop
      lw         $5, 0x10($29)
      jal        func_800970DC
       addu      $4, $16, $0
      bnez       $2, .L800997C8
       addu      $4, $16, $0
      lw         $4, 0x10($29)
      jal        func_80099AA4
       addu      $5, $17, $0
      j          .L800997D8
       addu      $3, $2, $0
  .L800997C8:
      lw         $5, 0x10($29)
      jal        func_8009862C
       addu      $6, $0, $0
      addu       $3, $0, $0
  .L800997D8:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x28
.end func_80099744

.globl func_800997F0
.ent func_800997F0
func_800997F0:
      beqz       $4, .L8009980C
       addiu     $2, $0, 0x1
      lw         $4, 0x4($4)
      lw         $3, 0x78($4)
      addu       $3, $3, $2
      jr         $31
       sw        $3, 0x78($4)
  .L8009980C:
      jr         $31
       addiu     $2, $0, -0x4
.end func_800997F0

.globl func_80099814
.ent func_80099814
func_80099814:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      beqz       $4, .L80099840
       sw        $16, 0x10($29)
      bnez       $20, .L80099848
       nop
  .L80099840:
      j          .L800998BC
       addiu     $2, $0, -0x4
  .L80099848:
      jal        func_80098DF4
       nop
      addu       $17, $2, $0
      beqz       $17, .L800998A8
       addiu     $16, $0, -0x5
      jal        func_80098E74
       addu      $4, $17, $0
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800998A8
       addu      $19, $16, $0
      lw         $18, 0x4($17)
      jal        func_80098BB0
       addu      $4, $18, $0
      addu       $16, $2, $0
      beq        $16, $19, .L800998A0
       addu      $4, $18, $0
      addiu      $16, $0, 0x1
      jal        func_80098734
       addu      $5, $0, $0
      jal        func_80098D54
       addu      $4, $18, $0
  .L800998A0:
      sw         $17, 0x0($20)
      addu       $17, $0, $0
  .L800998A8:
      beqz       $17, .L800998BC
       addu      $2, $16, $0
      jal        func_80098F88
       addu      $4, $17, $0
      addu       $2, $16, $0
  .L800998BC:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80099814

.globl func_800998DC
.ent func_800998DC
func_800998DC:
      beqz       $4, .L80099908
       addiu     $2, $0, 0x1
      addiu      $3, $0, 0x200D
      sw         $3, 0x0($4)
      lui        $3, %hi(D_800F2E58)
      addiu      $3, $3, %lo(D_800F2E58)
      sw         $3, 0x4($4)
      lui        $3, %hi(D_800F2E4C)
      addiu      $3, $3, %lo(D_800F2E4C)
      jr         $31
       sw        $3, 0x8($4)
  .L80099908:
      jr         $31
       addiu     $2, $0, -0x4
.end func_800998DC

.globl func_80099910
.ent func_80099910
func_80099910:
      addiu      $29, $29, -0x30
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $19, 0x24($29)
      addu       $19, $5, $0
      sw         $20, 0x28($29)
      addu       $20, $6, $0
      sw         $31, 0x2C($29)
      sw         $18, 0x20($29)
      sw         $16, 0x18($29)
      sw         $0, 0x10($29)
      beqz       $17, .L80099954
       sw        $0, 0x14($29)
      beqz       $19, .L800999B4
       addiu     $16, $0, -0x4
      bnez       $20, .L8009995C
       addu      $4, $17, $0
  .L80099954:
      j          .L800999B4
       addiu     $16, $0, -0x4
  .L8009995C:
      addiu      $5, $0, 0x6
      addiu      $6, $0, 0x2
      jal        func_800964F0
       addiu     $7, $29, 0x10
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800999B4
       addu      $18, $16, $0
      addu       $4, $17, $0
      addiu      $5, $0, 0x8
      addiu      $6, $0, 0x2
      jal        func_800964F0
       addiu     $7, $29, 0x14
      addu       $16, $2, $0
      bne        $16, $18, .L800999B4
       nop
      lw         $2, 0x10($29)
      sw         $2, 0x0($19)
      lw         $2, 0x14($29)
      sw         $0, 0x10($29)
      sw         $2, 0x0($20)
      sw         $0, 0x14($29)
  .L800999B4:
      lw         $4, 0x14($29)
      beqz       $4, .L800999D0
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $16, $0
  .L800999D0:
      lw         $4, 0x10($29)
      beqz       $4, .L800999F0
       addu      $2, $16, $0
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addu      $5, $16, $0
      addu       $2, $16, $0
  .L800999F0:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80099910

.globl func_80099A10
.ent func_80099A10
func_80099A10:
      addiu      $29, $29, -0x18
      beqz       $4, .L80099A2C
       sw        $31, 0x10($29)
      jal        func_80095DC8
       addiu     $5, $0, 0x1
      j          .L80099A30
       addiu     $2, $0, 0x1
  .L80099A2C:
      addiu      $2, $0, -0x4
  .L80099A30:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80099A10

.globl func_80099A3C
.ent func_80099A3C
func_80099A3C:
      addiu      $29, $29, -0x18
      beqz       $4, .L80099A60
       sw        $31, 0x10($29)
      lui        $5, %hi(func_80095294)
      addiu      $5, $5, %lo(func_80095294)
      jal        func_800D292C
       addu      $6, $0, $0
      j          .L80099A64
       nop
  .L80099A60:
      addiu      $2, $0, -0x4
  .L80099A64:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80099A3C

.globl func_80099A70
.ent func_80099A70
func_80099A70:
      addiu      $29, $29, -0x18
      beqz       $4, .L80099A94
       sw        $31, 0x10($29)
      lui        $5, %hi(func_800953E0)
      addiu      $5, $5, %lo(func_800953E0)
      jal        func_800D292C
       addu      $6, $0, $0
      j          .L80099A98
       nop
  .L80099A94:
      addiu      $2, $0, -0x4
  .L80099A98:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80099A70

.globl func_80099AA4
.ent func_80099AA4
func_80099AA4:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      beqz       $16, .L80099AC8
       sw        $31, 0x18($29)
      bnez       $17, .L80099AD0
       lui       $5, %hi(func_8009543C)
  .L80099AC8:
      j          .L80099AF0
       addiu     $2, $0, -0x4
  .L80099AD0:
      addu       $4, $16, $0
      addiu      $5, $5, %lo(func_8009543C)
      jal        func_800D292C
       addu      $6, $0, $0
      bltz       $2, .L80099AF0
       nop
      sw         $16, 0x0($17)
      addiu      $2, $0, 0x1
  .L80099AF0:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80099AA4

.globl func_80099B04
.ent func_80099B04
func_80099B04:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      bnez       $16, .L80099B20
       sw        $31, 0x24($29)
      j          .L80099B84
       addiu     $2, $0, -0x4
  .L80099B20:
      addu       $4, $16, $0
      lui        $5, %hi(func_80095498)
      addiu      $5, $5, %lo(func_80095498)
      jal        func_800D292C
       addu      $6, $0, $0
      bnez       $2, .L80099B84
       addiu     $2, $0, 0x1
      jal        func_80095DA4
       addu      $4, $16, $0
      addiu      $3, $0, 0x3
      bne        $2, $3, .L80099B84
       addiu     $2, $0, 0x1
      addu       $4, $16, $0
      addiu      $5, $0, 0x1
      addiu      $6, $0, 0x2
      addiu      $2, $0, 0x4
      addiu      $7, $29, 0x18
      sw         $2, 0x10($29)
      jal        func_80095BA4
       sw        $0, 0x14($29)
      addu       $5, $16, $0
      lw         $4, 0x18($29)
      jal        func_8009862C
       addu      $6, $0, $0
      addiu      $2, $0, 0x1
  .L80099B84:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_80099B04

.globl func_80099B94
.ent func_80099B94
func_80099B94:
      addiu      $29, $29, -0x18
      beqz       $4, .L80099BB8
       sw        $31, 0x10($29)
      lui        $5, %hi(func_8009550C)
      addiu      $5, $5, %lo(func_8009550C)
      jal        func_800D292C
       addu      $6, $0, $0
      j          .L80099BBC
       nop
  .L80099BB8:
      addiu      $2, $0, -0x4
  .L80099BBC:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80099B94

.globl func_80099BC8
.ent func_80099BC8
func_80099BC8:
      addiu      $29, $29, -0x18
      beqz       $4, .L80099BE4
       sw        $31, 0x10($29)
      jal        func_800960C0
       nop
      j          .L80099BE8
       nop
  .L80099BE4:
      addiu      $2, $0, -0x4
  .L80099BE8:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80099BC8

.globl func_80099BF4
.ent func_80099BF4
func_80099BF4:
      addiu      $29, $29, -0x20
      beqz       $4, .L80099C10
       sw        $31, 0x18($29)
      beqz       $5, .L80099C2C
       addiu     $2, $0, -0x4
      bnel       $6, $0, .L80099C18
       sw        $5, 0x10($29)
  .L80099C10:
      j          .L80099C2C
       addiu     $2, $0, -0x4
  .L80099C18:
      lui        $5, %hi(func_800955D0)
      addiu      $5, $5, %lo(func_800955D0)
      sw         $6, 0x14($29)
      jal        func_800D292C
       addiu     $6, $29, 0x10
  .L80099C2C:
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80099BF4

.globl func_80099C38
.ent func_80099C38
func_80099C38:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      beqz       $4, .L80099C70
       sw        $31, 0x1C($29)
      beqz       $16, .L80099C70
       addiu     $5, $0, 0x5
      jal        func_80095D44
       addiu     $6, $29, 0x10
      lw         $4, 0x10($29)
      jal        func_80093A34
       addu      $5, $16, $0
      j          .L80099C74
       nop
  .L80099C70:
      addiu      $2, $0, -0x4
  .L80099C74:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80099C38

.globl func_80099C84
.ent func_80099C84
func_80099C84:
      addiu      $29, $29, -0x30
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $20, 0x28($29)
      addu       $20, $5, $0
      sw         $31, 0x2C($29)
      sw         $19, 0x24($29)
      sw         $17, 0x1C($29)
      beqz       $18, .L80099D28
       sw        $16, 0x18($29)
      beqz       $20, .L80099D28
       addu      $17, $0, $0
      addiu      $5, $29, 0x10
      sw         $0, 0x10($29)
      jal        func_80099C38
       sw        $0, 0x14($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L80099D18
       addu      $19, $16, $0
      addu       $4, $17, $0
      lw         $6, 0x14($29)
      jal        func_800D27B4
       addiu     $5, $0, 0x2
      addu       $17, $2, $0
      beqz       $17, .L80099D14
       sw        $17, 0x10($29)
      addu       $4, $18, $0
      jal        func_80099C38
       addiu     $5, $29, 0x10
      addu       $16, $2, $0
      bne        $16, $19, .L80099D18
       nop
      sw         $17, 0x0($20)
      j          .L80099D18
       addu      $17, $0, $0
  .L80099D14:
      addiu      $16, $0, -0x5
  .L80099D18:
      jal        func_800D2814
       addu      $4, $17, $0
      j          .L80099D30
       addu      $2, $16, $0
  .L80099D28:
      addiu      $16, $0, -0x4
      addu       $2, $16, $0
  .L80099D30:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_80099C84

.globl func_80099D50
.ent func_80099D50
func_80099D50:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      beqz       $4, .L80099D68
       addu      $6, $5, $0
      bnez       $6, .L80099D70
       nop
  .L80099D68:
      j          .L80099D7C
       addiu     $2, $0, -0x4
  .L80099D70:
      jal        func_80095D18
       addiu     $5, $0, 0xA
      addiu      $2, $0, 0x1
  .L80099D7C:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80099D50

.globl func_80099D88
.ent func_80099D88
func_80099D88:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      beqz       $4, .L80099DA0
       addu      $6, $5, $0
      bnez       $6, .L80099DA8
       nop
  .L80099DA0:
      j          .L80099DB4
       addiu     $2, $0, -0x4
  .L80099DA8:
      jal        func_80095D18
       addiu     $5, $0, 0xB
      addiu      $2, $0, 0x1
  .L80099DB4:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80099D88

.globl func_80099DC0
.ent func_80099DC0
func_80099DC0:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      beqz       $4, .L80099DD8
       addu      $6, $5, $0
      bnez       $6, .L80099DE0
       nop
  .L80099DD8:
      j          .L80099DEC
       addiu     $2, $0, -0x4
  .L80099DE0:
      jal        func_80095D18
       addiu     $5, $0, 0xC
      addiu      $2, $0, 0x1
  .L80099DEC:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80099DC0

.globl func_80099DF8
.ent func_80099DF8
func_80099DF8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      beqz       $4, .L80099E10
       addu      $6, $5, $0
      bnez       $6, .L80099E18
       nop
  .L80099E10:
      j          .L80099E24
       addiu     $2, $0, -0x4
  .L80099E18:
      jal        func_80095D18
       addiu     $5, $0, 0xD
      addiu      $2, $0, 0x1
  .L80099E24:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_80099DF8

.globl func_80099E30
.ent func_80099E30
func_80099E30:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      sw         $31, 0x18($29)
      jal        func_80095DA4
       addu      $17, $5, $0
      addiu      $3, $0, 0x2
      bne        $2, $3, .L80099E6C
       addu      $2, $0, $0
      addu       $4, $16, $0
      addiu      $5, $0, 0x6
      addiu      $6, $0, 0x1
      jal        func_800964F0
       addu      $7, $17, $0
  .L80099E6C:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80099E30

.globl func_80099E80
.ent func_80099E80
func_80099E80:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      sw         $31, 0x18($29)
      jal        func_80095DA4
       addu      $17, $5, $0
      addiu      $3, $0, 0x2
      bne        $2, $3, .L80099EBC
       addu      $2, $0, $0
      addu       $4, $16, $0
      addiu      $5, $0, 0x8
      addiu      $6, $0, 0x1
      jal        func_800964F0
       addu      $7, $17, $0
  .L80099EBC:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80099E80

.globl func_80099ED0
.ent func_80099ED0
func_80099ED0:
      jal        func_8009A244
       addu      $4, $18, $0
      addu       $17, $2, $0
      bne        $17, $16, .L80099F58
       nop
      lw         $4, 0x40($29)
      jal        func_80096B70
       nop
      beqz       $2, .L80099F4C
       addiu     $5, $0, 0xB
      addiu      $16, $29, 0x28
      lw         $4, 0x40($29)
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      addu       $6, $4, $0
      beqz       $6, .L80099F1C
       addu      $4, $5, $0
      jal        func_80016140
       addu      $5, $0, $0
  .L80099F1C:
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_80099ED0

.globl func_80099F2C
.ent func_80099F2C
func_80099F2C:
      addu       $3, $4, $0
      beqz       $3, .L80099F5C
       lui       $5, (0x9F4148FF >> 16)
      ori        $5, $5, (0x9F4148FF & 0xFFFF)
      addiu      $4, $4, -0x18
  .L80099F40:
      lw         $2, 0x0($4)
      bne        $2, $5, .L80099F54
       addiu     $3, $3, -0xC
  .L80099F4C:
      jr         $31
       addu      $2, $4, $0
  .L80099F54:
      bnez       $3, .L80099F40
  .L80099F58:
       addiu     $4, $4, -0xC
  .L80099F5C:
      jr         $31
       addu      $2, $0, $0
.end func_80099F2C

.globl func_80099F64
.ent func_80099F64
func_80099F64:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      jal        func_80099F2C
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L8009A01C
       nop
      lw         $17, 0x14($16)
      beqz       $17, .L8009A01C
       nop
      lw         $4, 0xC($17)
      beqz       $4, .L80099FC0
       addiu     $3, $18, -0x18
      lw         $2, 0x4($4)
      lw         $2, 0x8($2)
      jalr       $2
       nop
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8009A01C
       addiu     $3, $18, -0x18
  .L80099FC0:
      subu       $3, $3, $16
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $3, $2, 4
      addu       $2, $2, $3
      sll        $3, $2, 8
      addu       $2, $2, $3
      sll        $3, $2, 16
      addu       $2, $2, $3
      negu       $2, $2
      sh         $0, 0x8($18)
      lw         $3, 0x8($16)
      sra        $2, $2, 2
      sw         $2, 0xC($16)
      addiu      $3, $3, 0x1
      sw         $3, 0x8($16)
      lw         $4, 0xC($17)
      beqz       $4, .L8009A01C
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x10($2)
      jalr       $2
       nop
  .L8009A01C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_80099F64

.globl func_8009A034
.ent func_8009A034
func_8009A034:
      lw         $2, 0x8($4)
      bnez       $2, .L8009A048
       addiu     $5, $4, 0x18
      jr         $31
       addu      $2, $0, $0
  .L8009A048:
      lw         $3, 0xC($4)
      lw         $2, 0x4($4)
      beql       $3, $2, .L8009A058
       sw        $0, 0xC($4)
  .L8009A058:
      lw         $3, 0xC($4)
      lw         $6, 0x4($4)
      sltu       $2, $3, $6
      beqz       $2, .L8009A09C
       nop
      sll        $2, $3, 1
      addu       $2, $2, $3
      sll        $2, $2, 2
      addu       $5, $2, $5
  .L8009A07C:
      lhu        $2, 0x8($5)
      andi       $2, $2, 0x1
      beqz       $2, .L8009A09C
       nop
      addiu      $3, $3, 0x1
      sltu       $2, $3, $6
      bnez       $2, .L8009A07C
       addiu     $5, $5, 0xC
  .L8009A09C:
      lw         $2, 0x4($4)
      sw         $3, 0xC($4)
      jr         $31
       sltu      $2, $3, $2
.end func_8009A034

.globl func_8009A0AC
.ent func_8009A0AC
func_8009A0AC:
      jr         $31
       addu      $2, $0, $0
.end func_8009A0AC

.globl func_8009A0B4
.ent func_8009A0B4
func_8009A0B4:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $18, 0x18($29)
      addiu      $18, $0, 0x618
      sw         $31, 0x20($29)
      sw         $16, 0x10($29)
  .L8009A0D8:
      lw         $5, 0x4($19)
      jal        func_800524E8
       addu      $4, $18, $0
      addu       $16, $2, $0
      bnel       $16, $0, .L8009A118
       addu      $4, $16, $0
      andi       $2, $17, 0xFF
      bnez       $2, .L8009A140
       addu      $4, $19, $0
      jal        func_8009A0AC
       addu      $5, $18, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8009A140
       addiu     $17, $0, 0x1
      j          .L8009A0D8
       nop
  .L8009A118:
      addu       $5, $0, $0
      jal        func_80016140
       addu      $6, $18, $0
      lui        $2, (0x9F4148FF >> 16)
      ori        $2, $2, (0x9F4148FF & 0xFFFF)
      sw         $2, 0x0($16)
      addiu      $2, $0, 0x80
      sw         $2, 0x4($16)
      sw         $2, 0x8($16)
      sw         $19, 0x14($16)
  .L8009A140:
      addu       $2, $16, $0
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009A0B4

.globl func_8009A160
.ent func_8009A160
func_8009A160:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $16, 0x10($29)
      addiu      $16, $4, 0x10
      sw         $31, 0x1C($29)
      sw         $18, 0x18($29)
  .L8009A17C:
      beqz       $16, .L8009A1EC
       nop
      jal        func_8009A034
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8009A1C4
       addiu     $18, $16, 0x18
      lw         $2, 0xC($16)
      sll        $3, $2, 1
      addu       $3, $3, $2
      sll        $3, $3, 2
      addu       $17, $18, $3
      addiu      $2, $2, 0x1
      sw         $2, 0xC($16)
      lhu        $2, 0x8($17)
      ori        $2, $2, 0x1
      j          .L8009A1EC
       sh        $2, 0x8($17)
  .L8009A1C4:
      lw         $2, 0x10($16)
      bnez       $2, .L8009A1E0
       nop
      lw         $4, 0x14($16)
      jal        func_8009A0B4
       nop
      sw         $2, 0x10($16)
  .L8009A1E0:
      lw         $16, 0x10($16)
      beqz       $17, .L8009A17C
       nop
  .L8009A1EC:
      beqz       $17, .L8009A204
       addu      $2, $17, $0
      lw         $2, 0x8($16)
      addiu      $2, $2, -0x1
      sw         $2, 0x8($16)
      addu       $2, $17, $0
  .L8009A204:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8009A160

.globl func_8009A21C
.ent func_8009A21C
func_8009A21C:
      addiu      $29, $29, -0x28
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      addiu      $4, $0, 0x628
      sw         $31, 0x20($29)
      jal        func_800524E8
.end func_8009A21C

.globl func_8009A244
.ent func_8009A244
func_8009A244:
      sw         $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L8009A28C
       addu      $4, $16, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x628
      lui        $2, (0x9F4148FF >> 16)
      ori        $2, $2, (0x9F4148FF & 0xFFFF)
      sw         $2, 0x10($16)
      addiu      $2, $16, 0x10
      addiu      $3, $0, 0x80
      sw         $18, 0x0($16)
      sw         $17, 0x4($16)
      sw         $19, 0xC($16)
      sw         $3, 0x4($2)
      sw         $3, 0x8($2)
      sw         $16, 0x14($2)
  .L8009A28C:
      addu       $2, $16, $0
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009A244

.globl func_8009A2AC
.ent func_8009A2AC
func_8009A2AC:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $31, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $4, 0xC($18)
      beql       $4, $0, .L8009A2F0
       addiu     $4, $18, 0x10
      lw         $2, 0x4($4)
      lw         $2, 0x8($2)
      jalr       $2
       nop
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8009A33C
       nop
      addiu      $4, $18, 0x10
  .L8009A2F0:
      beqz       $4, .L8009A318
       addu      $17, $4, $0
  .L8009A2F8:
      lw         $16, 0x10($4)
      beql       $4, $17, .L8009A310
       addu      $4, $16, $0
      jal        func_80052540
       nop
      addu       $4, $16, $0
  .L8009A310:
      bnez       $4, .L8009A2F8
       nop
  .L8009A318:
      lw         $4, 0xC($18)
      beqz       $4, .L8009A334
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       nop
  .L8009A334:
      jal        func_80052540
       addu      $4, $18, $0
  .L8009A33C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8009A2AC

.globl func_8009A354
.ent func_8009A354
func_8009A354:
      slti       $2, $5, 0x8
      bnez       $2, .L8009A368
       lui       $3, %hi(D_80125640)
      jr         $31
       addu      $2, $0, $0
  .L8009A368:
      addiu      $3, $3, %lo(D_80125640)
      sll        $2, $5, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      jr         $31
       nop
.end func_8009A354

.globl func_8009A380
.ent func_8009A380
func_8009A380:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $18, 0x18($29)
      sw         $31, 0x1C($29)
      jal        func_8009A354
       addu      $18, $6, $0
      bnez       $2, .L8009A3F0
       addiu     $2, $0, -0x12
      sltiu      $2, $16, 0x8
      beqz       $2, .L8009A3EC
       addu      $4, $17, $0
      addu       $5, $16, $0
      jal        func_8009A21C
       addu      $6, $18, $0
      addu       $4, $2, $0
      lui        $3, %hi(D_80125640)
      addiu      $3, $3, %lo(D_80125640)
      sll        $2, $16, 2
      addu       $2, $2, $3
      sw         $4, 0x0($2)
      bnez       $4, .L8009A3F0
       addiu     $2, $0, 0x1
      j          .L8009A3F0
       addiu     $2, $0, -0x5
  .L8009A3EC:
      addiu      $2, $0, -0x4
  .L8009A3F0:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8009A380

.globl func_8009A408
.ent func_8009A408
func_8009A408:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      sw         $31, 0x14($29)
      jal        func_8009A354
       addu      $16, $5, $0
      beqz       $2, .L8009A440
       nop
      jal        func_8009A2AC
       addu      $4, $2, $0
      lui        $3, %hi(D_80125640)
      addiu      $3, $3, %lo(D_80125640)
      sll        $2, $16, 2
      addu       $2, $2, $3
      sw         $0, 0x0($2)
  .L8009A440:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009A408

.globl func_8009A450
.ent func_8009A450
func_8009A450:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $6, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $18, 0x18($29)
      addu       $18, $17, $0
      sw         $31, 0x20($29)
      jal        func_8009A354
       sw        $16, 0x10($29)
      addu       $16, $2, $0
      beqz       $16, .L8009A524
       nop
      lw         $4, 0xC($16)
      beqz       $4, .L8009A4AC
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x8($2)
      jalr       $2
       nop
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8009A524
       nop
  .L8009A4AC:
      jal        func_8009A160
       addu      $4, $16, $0
      addu       $17, $2, $0
      beqz       $17, .L8009A508
       nop
      beqz       $19, .L8009A508
       nop
  .L8009A4C8:
      lw         $5, 0x4($16)
      jal        func_800524E8
       addu      $4, $19, $0
      bnez       $2, .L8009A504
       sw        $2, 0x0($17)
      andi       $2, $18, 0xFF
      bnez       $2, .L8009A508
       addu      $4, $16, $0
      jal        func_8009A0AC
       addu      $5, $19, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8009A508
       addiu     $18, $0, 0x1
      j          .L8009A4C8
       nop
  .L8009A504:
      sw         $19, 0x4($17)
  .L8009A508:
      lw         $4, 0xC($16)
      beqz       $4, .L8009A524
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x10($2)
      jalr       $2
       nop
  .L8009A524:
      beqz       $17, .L8009A550
       addu      $2, $17, $0
      beqz       $19, .L8009A550
       nop
      lw         $2, 0x0($17)
      bnez       $2, .L8009A550
       addu      $2, $17, $0
      jal        func_80099F64
       addu      $4, $17, $0
      addu       $17, $0, $0
      addu       $2, $17, $0
  .L8009A550:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009A450

.globl func_8009A56C
.ent func_8009A56C
func_8009A56C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L8009A5A4
       sw        $31, 0x14($29)
      lw         $4, 0x0($16)
      beqz       $4, .L8009A59C
       nop
      jal        func_80052540
       nop
      sw         $0, 0x0($16)
      sw         $0, 0x4($16)
  .L8009A59C:
      jal        func_80099F64
       addu      $4, $16, $0
  .L8009A5A4:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009A56C

.globl func_8009A5B4
.ent func_8009A5B4
func_8009A5B4:
      beqz       $4, .L8009A5C0
       addu      $2, $0, $0
      lw         $2, 0x4($4)
  .L8009A5C0:
      jr         $31
       nop
.end func_8009A5B4

.globl func_8009A5C8
.ent func_8009A5C8
func_8009A5C8:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      beqz       $17, .L8009A6D4
       sw        $16, 0x10($29)
      lw         $2, 0x4($17)
      beq        $2, $20, .L8009A6D8
       addu      $2, $17, $0
      jal        func_80099F2C
       addu      $19, $0, $0
      beql       $2, $0, .L8009A6D8
       addu      $2, $17, $0
      lw         $18, 0x14($2)
      beqz       $18, .L8009A6D8
       addu      $2, $17, $0
      lw         $4, 0xC($18)
      beqz       $4, .L8009A640
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x8($2)
      jalr       $2
       nop
      addiu      $3, $0, 0x1
      bne        $2, $3, .L8009A6D8
       addu      $2, $17, $0
  .L8009A640:
      lw         $2, 0x0($17)
      bnez       $2, .L8009A670
       nop
      lw         $5, 0x4($18)
      jal        func_800524E8
       addu      $4, $20, $0
      addu       $16, $2, $0
      bnel       $16, $0, .L8009A6B4
       sw        $16, 0x0($17)
      lw         $2, 0x0($17)
      beqz       $2, .L8009A68C
       andi      $2, $19, 0xFF
  .L8009A670:
      lw         $4, 0x0($17)
      lw         $6, 0x4($18)
      jal        func_80052524
       addu      $5, $20, $0
      addu       $16, $2, $0
      bnez       $16, .L8009A6B0
       andi      $2, $19, 0xFF
  .L8009A68C:
      bnez       $2, .L8009A6A8
       addu      $4, $18, $0
      jal        func_8009A0AC
       addu      $5, $20, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L8009A640
       addiu     $19, $0, 0x1
  .L8009A6A8:
      beql       $16, $0, .L8009A6B8
       addu      $17, $0, $0
  .L8009A6B0:
      sw         $16, 0x0($17)
  .L8009A6B4:
      sw         $20, 0x4($17)
  .L8009A6B8:
      lw         $4, 0xC($18)
      beqz       $4, .L8009A6D8
       addu      $2, $17, $0
      lw         $2, 0x4($4)
      lw         $2, 0x10($2)
      jalr       $2
       nop
  .L8009A6D4:
      addu       $2, $17, $0
  .L8009A6D8:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009A5C8

.globl func_8009A6F8
.ent func_8009A6F8
func_8009A6F8:
      beqz       $4, .L8009A714
       addu      $2, $0, $0
      lhu        $3, 0xA($4)
      lw         $2, 0x0($4)
      addiu      $3, $3, 0x1
      jr         $31
       sh        $3, 0xA($4)
  .L8009A714:
      jr         $31
       nop
.end func_8009A6F8

.globl func_8009A71C
.ent func_8009A71C
func_8009A71C:
      beqz       $4, .L8009A734
       nop
      lhu        $2, 0xA($4)
      beqz       $2, .L8009A734
       addiu     $2, $2, -0x1
      sh         $2, 0xA($4)
  .L8009A734:
      jr         $31
       nop
.end func_8009A71C

.globl func_8009A73C
.ent func_8009A73C
func_8009A73C:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      beqz       $17, .L8009A768
       sw        $31, 0x1C($29)
      bnez       $16, .L8009A770
       nop
  .L8009A768:
      j          .L8009A7A0
       addiu     $16, $0, -0x4
  .L8009A770:
      jal        func_8009A6F8
       addu      $4, $17, $0
      beqz       $2, .L8009A79C
       addu      $4, $18, $0
      jalr       $16
       addu      $5, $2, $0
      addu       $16, $2, $0
      jal        func_8009A71C
       addu      $4, $17, $0
      j          .L8009A7A4
       addu      $2, $16, $0
  .L8009A79C:
      addiu      $16, $0, -0x2F
  .L8009A7A0:
      addu       $2, $16, $0
  .L8009A7A4:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8009A73C

.globl func_8009A7BC
.ent func_8009A7BC
func_8009A7BC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      beqz       $16, .L8009A7EC
       sw        $31, 0x14($29)
      jal        func_8009A5B4
       nop
      addu       $4, $16, $0
      lui        $5, %hi(func_80099ED0 + 0x30)
      addiu      $5, $5, %lo(func_80099ED0 + 0x30)
      jal        func_8009A73C
       addu      $6, $2, $0
  .L8009A7EC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009A7BC

.globl func_8009A7FC
.ent func_8009A7FC
func_8009A7FC:
      addu       $16, $2, $0
.end func_8009A7FC

.globl func_8009A800
.ent func_8009A800
func_8009A800:
      beqz       $6, .L8009A840
       addu      $7, $0, $0
  .L8009A808:
      lbu        $2, 0x3($5)
      addu       $3, $4, $7
      sb         $2, 0x0($3)
      lw         $2, 0x0($5)
      srl        $2, $2, 8
      sb         $2, 0x1($3)
      lhu        $2, 0x0($5)
      addiu      $7, $7, 0x4
      sb         $2, 0x2($3)
      lbu        $2, 0x0($5)
      sb         $2, 0x3($3)
      sltu       $2, $7, $6
      bnez       $2, .L8009A808
       addiu     $5, $5, 0x4
  .L8009A840:
      jr         $31
       nop
.end func_8009A800

.globl func_8009A848
.ent func_8009A848
func_8009A848:
      addu       $9, $5, $0
      beqz       $6, .L8009A898
       addu      $7, $0, $0
      addu       $8, $4, $0
  .L8009A858:
      addu       $5, $9, $7
      addiu      $7, $7, 0x4
      lbu        $3, 0x1($5)
      lbu        $2, 0x0($5)
      lbu        $4, 0x2($5)
      sll        $3, $3, 8
      or         $2, $2, $3
      sll        $4, $4, 16
      lbu        $3, 0x3($5)
      or         $2, $2, $4
      sll        $3, $3, 24
      or         $2, $2, $3
      sw         $2, 0x0($8)
      sltu       $2, $7, $6
      bnez       $2, .L8009A858
       addiu     $8, $8, 0x4
  .L8009A898:
      jr         $31
       nop
.end func_8009A848

.globl func_8009A8A0
.ent func_8009A8A0
func_8009A8A0:
      addiu      $29, $29, -0x158
      sw         $16, 0x130($29)
      addu       $16, $4, $0
      addiu      $4, $29, 0x10
      sw         $31, 0x154($29)
      sw         $30, 0x150($29)
      sw         $23, 0x14C($29)
      sw         $22, 0x148($29)
      sw         $21, 0x144($29)
      sw         $20, 0x140($29)
      sw         $19, 0x13C($29)
      sw         $18, 0x138($29)
      sw         $17, 0x134($29)
      lw         $30, 0x0($16)
      lw         $25, 0x4($16)
      lw         $24, 0x8($16)
      lw         $23, 0xC($16)
      addiu      $6, $0, 0x40
      sw         $24, 0x120($29)
      jal        func_8009A848
       sw        $25, 0x124($29)
      lui        $7, (0xD76AA478 >> 16)
      ori        $7, $7, (0xD76AA478 & 0xFFFF)
      lui        $8, (0xE8C7B756 >> 16)
      ori        $8, $8, (0xE8C7B756 & 0xFFFF)
      lui        $9, (0x242070DB >> 16)
      ori        $9, $9, (0x242070DB & 0xFFFF)
      lui        $10, (0xC1BDCEEE >> 16)
      ori        $10, $10, (0xC1BDCEEE & 0xFFFF)
      lui        $11, (0xF57C0FAF >> 16)
      ori        $11, $11, (0xF57C0FAF & 0xFFFF)
      lui        $12, (0x4787C62A >> 16)
      ori        $12, $12, (0x4787C62A & 0xFFFF)
      lui        $13, (0xA8304613 >> 16)
      ori        $13, $13, (0xA8304613 & 0xFFFF)
      lui        $14, (0xFD469501 >> 16)
      ori        $14, $14, (0xFD469501 & 0xFFFF)
      lui        $15, (0x698098D8 >> 16)
      ori        $15, $15, (0x698098D8 & 0xFFFF)
      lui        $17, (0x8B44F7AF >> 16)
      ori        $17, $17, (0x8B44F7AF & 0xFFFF)
      lui        $18, (0xFFFF5BB1 >> 16)
      ori        $18, $18, (0xFFFF5BB1 & 0xFFFF)
      lui        $19, (0x895CD7BE >> 16)
      ori        $19, $19, (0x895CD7BE & 0xFFFF)
      lui        $20, (0x6B901122 >> 16)
      ori        $20, $20, (0x6B901122 & 0xFFFF)
      lui        $21, (0xFD987193 >> 16)
      ori        $21, $21, (0xFD987193 & 0xFFFF)
      lui        $22, (0xA679438E >> 16)
      ori        $22, $22, (0xA679438E & 0xFFFF)
      sw         $17, 0x128($29)
      lui        $17, (0x49B40821 >> 16)
      ori        $17, $17, (0x49B40821 & 0xFFFF)
      sw         $17, 0x54($29)
      lui        $17, (0xF61E2562 >> 16)
      ori        $17, $17, (0xF61E2562 & 0xFFFF)
      sw         $17, 0x5C($29)
      lui        $17, (0xC040B340 >> 16)
      ori        $17, $17, (0xC040B340 & 0xFFFF)
      sw         $17, 0x64($29)
      lui        $17, (0x265E5A51 >> 16)
      ori        $17, $17, (0x265E5A51 & 0xFFFF)
      sw         $17, 0x68($29)
      lui        $17, (0xE9B6C7AA >> 16)
      ori        $17, $17, (0xE9B6C7AA & 0xFFFF)
      sw         $17, 0x6C($29)
      lui        $17, (0xD62F105D >> 16)
      ori        $17, $17, (0xD62F105D & 0xFFFF)
      sw         $17, 0x70($29)
      lui        $17, (0x2441453 >> 16)
      ori        $17, $17, (0x2441453 & 0xFFFF)
      sw         $17, 0x74($29)
      lui        $17, (0xD8A1E681 >> 16)
      ori        $17, $17, (0xD8A1E681 & 0xFFFF)
      sw         $17, 0x78($29)
      lui        $17, (0xE7D3FBC8 >> 16)
      ori        $17, $17, (0xE7D3FBC8 & 0xFFFF)
      sw         $17, 0x7C($29)
      lui        $17, (0x21E1CDE6 >> 16)
      ori        $17, $17, (0x21E1CDE6 & 0xFFFF)
      sw         $17, 0x80($29)
      lui        $17, (0xC33707D6 >> 16)
      ori        $17, $17, (0xC33707D6 & 0xFFFF)
      sw         $17, 0x84($29)
      lui        $17, (0xF4D50D87 >> 16)
      ori        $17, $17, (0xF4D50D87 & 0xFFFF)
      sw         $17, 0x88($29)
      lui        $17, (0x455A14ED >> 16)
      ori        $17, $17, (0x455A14ED & 0xFFFF)
      sw         $17, 0x8C($29)
      lui        $17, (0xA9E3E905 >> 16)
      ori        $17, $17, (0xA9E3E905 & 0xFFFF)
      sw         $17, 0x90($29)
      lui        $17, (0xFCEFA3F8 >> 16)
      ori        $17, $17, (0xFCEFA3F8 & 0xFFFF)
      sw         $17, 0x94($29)
      lui        $17, (0x676F02D9 >> 16)
      ori        $17, $17, (0x676F02D9 & 0xFFFF)
      sw         $17, 0x98($29)
      lui        $17, (0x8D2A4C8A >> 16)
      ori        $17, $17, (0x8D2A4C8A & 0xFFFF)
      sw         $17, 0x9C($29)
      lui        $17, (0xFFFA3942 >> 16)
      ori        $17, $17, (0xFFFA3942 & 0xFFFF)
      sw         $17, 0xA0($29)
      lui        $17, (0x8771F681 >> 16)
      ori        $17, $17, (0x8771F681 & 0xFFFF)
      sw         $17, 0xA4($29)
      lui        $17, (0x6D9D6122 >> 16)
      ori        $17, $17, (0x6D9D6122 & 0xFFFF)
      sw         $17, 0xA8($29)
      lui        $17, (0xFDE5380C >> 16)
      ori        $17, $17, (0xFDE5380C & 0xFFFF)
      sw         $17, 0xAC($29)
      lui        $17, (0xA4BEEA44 >> 16)
      ori        $17, $17, (0xA4BEEA44 & 0xFFFF)
      sw         $17, 0xB0($29)
      lui        $17, (0x4BDECFA9 >> 16)
      ori        $17, $17, (0x4BDECFA9 & 0xFFFF)
      sw         $17, 0xB4($29)
      lui        $17, (0xF6BB4B60 >> 16)
      ori        $17, $17, (0xF6BB4B60 & 0xFFFF)
      sw         $17, 0xB8($29)
      lui        $17, (0xBEBFBC70 >> 16)
      ori        $17, $17, (0xBEBFBC70 & 0xFFFF)
      sw         $17, 0xBC($29)
      lui        $17, (0x289B7EC6 >> 16)
      ori        $17, $17, (0x289B7EC6 & 0xFFFF)
      sw         $17, 0xC0($29)
      lui        $17, (0xEAA127FA >> 16)
      ori        $17, $17, (0xEAA127FA & 0xFFFF)
      sw         $17, 0xC4($29)
      lui        $17, (0xD4EF3085 >> 16)
      ori        $17, $17, (0xD4EF3085 & 0xFFFF)
      sw         $17, 0xC8($29)
      lui        $17, (0x4881D05 >> 16)
      ori        $17, $17, (0x4881D05 & 0xFFFF)
      sw         $17, 0xCC($29)
      lui        $17, (0xD9D4D039 >> 16)
      ori        $17, $17, (0xD9D4D039 & 0xFFFF)
      sw         $17, 0xD0($29)
      lui        $17, (0xE6DB99E5 >> 16)
      ori        $17, $17, (0xE6DB99E5 & 0xFFFF)
      sw         $17, 0xD4($29)
      lui        $17, (0x1FA27CF8 >> 16)
      ori        $17, $17, (0x1FA27CF8 & 0xFFFF)
      sw         $17, 0xD8($29)
      lui        $17, (0xC4AC5665 >> 16)
      ori        $17, $17, (0xC4AC5665 & 0xFFFF)
      sw         $17, 0xDC($29)
      lui        $17, (0xF4292244 >> 16)
      ori        $17, $17, (0xF4292244 & 0xFFFF)
      sw         $17, 0xE0($29)
      lui        $17, (0x432AFF97 >> 16)
      ori        $17, $17, (0x432AFF97 & 0xFFFF)
      sw         $17, 0xE4($29)
      lui        $17, (0xAB9423A7 >> 16)
      ori        $17, $17, (0xAB9423A7 & 0xFFFF)
      sw         $17, 0xE8($29)
      lui        $17, (0xFC93A039 >> 16)
      ori        $17, $17, (0xFC93A039 & 0xFFFF)
      sw         $17, 0xEC($29)
      lui        $17, (0x655B59C3 >> 16)
      ori        $17, $17, (0x655B59C3 & 0xFFFF)
      sw         $17, 0xF0($29)
      lui        $17, (0x8F0CCC92 >> 16)
      ori        $17, $17, (0x8F0CCC92 & 0xFFFF)
      sw         $17, 0xF4($29)
      lui        $17, (0xFFEFF47D >> 16)
      ori        $17, $17, (0xFFEFF47D & 0xFFFF)
      sw         $17, 0xF8($29)
      lui        $17, (0x85845DD1 >> 16)
      ori        $17, $17, (0x85845DD1 & 0xFFFF)
      sw         $17, 0xFC($29)
      lui        $17, (0x6FA87E4F >> 16)
      ori        $17, $17, (0x6FA87E4F & 0xFFFF)
      sw         $17, 0x100($29)
      lui        $17, (0xFE2CE6E0 >> 16)
      ori        $17, $17, (0xFE2CE6E0 & 0xFFFF)
      sw         $17, 0x104($29)
      lui        $17, (0xA3014314 >> 16)
      ori        $17, $17, (0xA3014314 & 0xFFFF)
      sw         $17, 0x108($29)
      lui        $17, (0x4E0811A1 >> 16)
      ori        $17, $17, (0x4E0811A1 & 0xFFFF)
      sw         $17, 0x10C($29)
      lui        $17, (0xF7537E82 >> 16)
      ori        $17, $17, (0xF7537E82 & 0xFFFF)
      sw         $17, 0x110($29)
      lui        $17, (0xBD3AF235 >> 16)
      ori        $17, $17, (0xBD3AF235 & 0xFFFF)
      sw         $17, 0x114($29)
      lui        $17, (0x2AD7D2BB >> 16)
      ori        $17, $17, (0x2AD7D2BB & 0xFFFF)
      sw         $17, 0x118($29)
      lui        $17, (0xEB86D391 >> 16)
      ori        $17, $17, (0xEB86D391 & 0xFFFF)
      addiu      $4, $29, 0x10
      addu       $5, $0, $0
      addiu      $6, $0, 0x40
      addu       $7, $30, $7
      lw         $24, 0x120($29)
      lw         $25, 0x124($29)
      addu       $8, $23, $8
      sw         $17, 0x11C($29)
      lw         $17, 0x10($29)
      and        $3, $25, $24
      nor        $2, $0, $25
      and        $2, $2, $23
      or         $3, $3, $2
      addu       $3, $3, $17
      addu       $30, $7, $3
      sll        $3, $30, 7
      srl        $2, $30, 25
      or         $30, $3, $2
      addu       $30, $30, $25
      and        $3, $30, $25
      nor        $2, $0, $30
      and        $2, $2, $24
      or         $3, $3, $2
      addu       $9, $24, $9
      addu       $10, $25, $10
      lw         $17, 0x14($29)
      addu       $11, $30, $11
      addu       $3, $3, $17
      addu       $23, $8, $3
      sll        $3, $23, 12
      srl        $2, $23, 20
      or         $23, $3, $2
      addu       $23, $23, $30
      and        $3, $23, $30
      nor        $2, $0, $23
      and        $2, $2, $25
      or         $3, $3, $2
      lw         $17, 0x18($29)
      addu       $12, $23, $12
      addu       $3, $3, $17
      addu       $24, $9, $3
      sll        $3, $24, 17
      srl        $2, $24, 15
      or         $24, $3, $2
      addu       $24, $24, $23
      and        $3, $24, $23
      nor        $2, $0, $24
      and        $2, $2, $30
      or         $3, $3, $2
      addu       $13, $24, $13
      lw         $17, 0x1C($29)
      lw         $9, 0x48($29)
      addu       $3, $3, $17
      addu       $25, $10, $3
      sll        $3, $25, 22
      srl        $2, $25, 10
      or         $25, $3, $2
      addu       $25, $25, $24
      and        $3, $25, $24
      nor        $2, $0, $25
      and        $2, $2, $23
      or         $3, $3, $2
      addu       $14, $25, $14
      lw         $17, 0x20($29)
      lw         $10, 0x40($29)
      addu       $3, $3, $17
      addu       $30, $11, $3
      sll        $3, $30, 7
      srl        $2, $30, 25
      or         $30, $3, $2
      addu       $30, $30, $25
      and        $3, $30, $25
      nor        $2, $0, $30
      and        $2, $2, $24
      or         $3, $3, $2
      lw         $17, 0x24($29)
      addu       $15, $30, $15
      addu       $3, $3, $17
      addu       $23, $12, $3
      sll        $3, $23, 12
      srl        $2, $23, 20
      or         $23, $3, $2
      addu       $23, $23, $30
      and        $3, $23, $30
      nor        $2, $0, $23
      and        $2, $2, $25
      or         $3, $3, $2
      lw         $17, 0x28($29)
      lw         $12, 0x2C($29)
      addu       $3, $3, $17
      addu       $24, $13, $3
      sll        $3, $24, 17
      srl        $2, $24, 15
      or         $24, $3, $2
      addu       $24, $24, $23
      and        $3, $24, $23
      nor        $2, $0, $24
      and        $2, $2, $30
      or         $3, $3, $2
      addu       $3, $3, $12
      addu       $25, $14, $3
      sll        $3, $25, 22
      srl        $2, $25, 10
      or         $25, $3, $2
      addu       $25, $25, $24
      and        $3, $25, $24
      nor        $2, $0, $25
      and        $2, $2, $23
      or         $3, $3, $2
      addu       $18, $24, $18
      addu       $19, $25, $19
      lw         $17, 0x30($29)
      lw         $13, 0x38($29)
      lw         $14, 0x44($29)
      addu       $3, $3, $17
      addu       $30, $15, $3
      sll        $3, $30, 7
      srl        $2, $30, 25
      or         $30, $3, $2
      addu       $30, $30, $25
      and        $3, $30, $25
      nor        $2, $0, $30
      and        $2, $2, $24
      or         $3, $3, $2
      lw         $17, 0x128($29)
      lw         $15, 0x3C($29)
      addu       $23, $23, $17
      lw         $17, 0x34($29)
      addu       $20, $30, $20
      sw         $23, 0x128($29)
      addu       $3, $3, $17
      addu       $23, $23, $3
      sll        $3, $23, 12
      srl        $2, $23, 20
      or         $23, $3, $2
      addu       $23, $23, $30
      and        $3, $23, $30
      nor        $2, $0, $23
      and        $2, $2, $25
      or         $3, $3, $2
      addu       $3, $3, $13
      addu       $24, $18, $3
      sll        $3, $24, 17
      srl        $2, $24, 15
      or         $24, $3, $2
      addu       $24, $24, $23
      and        $3, $24, $23
      nor        $2, $0, $24
      and        $2, $2, $30
      or         $3, $3, $2
      addu       $3, $3, $15
      addu       $25, $19, $3
      sll        $3, $25, 22
      srl        $2, $25, 10
      or         $25, $3, $2
      addu       $25, $25, $24
      and        $3, $25, $24
      nor        $2, $0, $25
      and        $2, $2, $23
      or         $3, $3, $2
      addu       $3, $3, $10
      addu       $30, $20, $3
      sll        $3, $30, 7
      srl        $2, $30, 25
      or         $30, $3, $2
      addu       $30, $30, $25
      addu       $21, $23, $21
      and        $3, $30, $25
      nor        $2, $0, $30
      and        $2, $2, $24
      or         $3, $3, $2
      addu       $3, $3, $14
      addu       $23, $21, $3
      sll        $3, $23, 12
      srl        $2, $23, 20
      or         $23, $3, $2
      addu       $23, $23, $30
      addu       $22, $24, $22
      and        $2, $23, $30
      nor        $8, $0, $23
      and        $3, $8, $25
      or         $2, $2, $3
      addu       $2, $2, $9
      addu       $24, $22, $2
      sll        $3, $24, 17
      srl        $2, $24, 15
      or         $24, $3, $2
      addu       $24, $24, $23
      and        $2, $24, $23
      nor        $7, $0, $24
      and        $3, $7, $30
      or         $2, $2, $3
      lw         $17, 0x54($29)
      and        $8, $24, $8
      addu       $25, $25, $17
      sw         $25, 0x50($29)
      lw         $11, 0x4C($29)
      lw         $17, 0x5C($29)
      addu       $2, $2, $11
      addu       $25, $25, $2
      sll        $3, $25, 22
      srl        $2, $25, 10
      or         $25, $3, $2
      addu       $25, $25, $24
      addu       $17, $30, $17
      and        $2, $25, $23
      sw         $17, 0x58($29)
      lw         $17, 0x14($29)
      or         $2, $2, $8
      addu       $2, $2, $17
      lw         $17, 0x58($29)
      and        $7, $25, $7
      addu       $30, $17, $2
      sll        $3, $30, 5
      srl        $2, $30, 27
      or         $30, $3, $2
      addu       $30, $30, $25
      lw         $17, 0x64($29)
      and        $2, $30, $24
      addu       $23, $23, $17
      lw         $17, 0x28($29)
      or         $2, $2, $7
      sw         $23, 0x60($29)
      addu       $2, $2, $17
      addu       $23, $23, $2
      sll        $3, $23, 9
      srl        $2, $23, 23
      or         $23, $3, $2
      addu       $23, $23, $30
      and        $3, $23, $25
      nor        $2, $0, $25
      and        $2, $30, $2
      or         $3, $3, $2
      lw         $17, 0x68($29)
      addu       $3, $3, $15
      addu       $7, $24, $17
      addu       $24, $7, $3
      sll        $3, $24, 14
      srl        $2, $24, 18
      or         $24, $3, $2
      addu       $24, $24, $23
      and        $3, $24, $30
      nor        $2, $0, $30
      lw         $17, 0x6C($29)
      and        $2, $23, $2
      addu       $7, $25, $17
      lw         $17, 0x10($29)
      or         $3, $3, $2
      addu       $3, $3, $17
      addu       $25, $7, $3
      sll        $3, $25, 20
      srl        $2, $25, 12
      or         $25, $3, $2
      addu       $25, $25, $24
      and        $3, $25, $23
      nor        $2, $0, $23
      lw         $17, 0x70($29)
      and        $2, $24, $2
      addu       $7, $30, $17
      lw         $17, 0x24($29)
      or         $3, $3, $2
      addu       $3, $3, $17
      addu       $30, $7, $3
      sll        $3, $30, 5
      srl        $2, $30, 27
      or         $30, $3, $2
      addu       $30, $30, $25
      and        $3, $30, $24
      nor        $2, $0, $24
      and        $2, $25, $2
      or         $3, $3, $2
      lw         $17, 0x74($29)
      addu       $3, $3, $13
      addu       $8, $23, $17
      addu       $23, $8, $3
      sll        $3, $23, 9
      srl        $2, $23, 23
      or         $23, $3, $2
      addu       $23, $23, $30
      and        $3, $23, $25
      nor        $2, $0, $25
      and        $2, $30, $2
      or         $3, $3, $2
      lw         $17, 0x78($29)
      addu       $3, $3, $11
      addu       $7, $24, $17
      addu       $24, $7, $3
      sll        $3, $24, 14
      srl        $2, $24, 18
      or         $24, $3, $2
      addu       $24, $24, $23
      and        $3, $24, $30
      nor        $2, $0, $30
      lw         $17, 0x7C($29)
      and        $2, $23, $2
      addu       $7, $25, $17
      lw         $17, 0x20($29)
      or         $3, $3, $2
      addu       $3, $3, $17
      addu       $25, $7, $3
      sll        $3, $25, 20
      srl        $2, $25, 12
      or         $25, $3, $2
      addu       $25, $25, $24
      and        $3, $25, $23
      nor        $2, $0, $23
      lw         $17, 0x80($29)
      and        $2, $24, $2
      addu       $7, $30, $17
      lw         $17, 0x34($29)
      or         $3, $3, $2
      addu       $3, $3, $17
      addu       $30, $7, $3
      sll        $3, $30, 5
      srl        $2, $30, 27
      or         $30, $3, $2
      addu       $30, $30, $25
      and        $3, $30, $24
      nor        $2, $0, $24
      and        $2, $25, $2
      or         $3, $3, $2
      lw         $17, 0x84($29)
      addu       $3, $3, $9
      addu       $8, $23, $17
      addu       $23, $8, $3
      sll        $3, $23, 9
      srl        $2, $23, 23
      or         $23, $3, $2
      addu       $23, $23, $30
      and        $3, $23, $25
      nor        $2, $0, $25
      lw         $17, 0x88($29)
      and        $2, $30, $2
      addu       $7, $24, $17
      lw         $17, 0x1C($29)
      or         $3, $3, $2
      addu       $3, $3, $17
      addu       $24, $7, $3
      sll        $3, $24, 14
      srl        $2, $24, 18
      or         $24, $3, $2
      addu       $24, $24, $23
      and        $3, $24, $30
      nor        $2, $0, $30
      lw         $17, 0x8C($29)
      and        $2, $23, $2
      addu       $7, $25, $17
      lw         $17, 0x30($29)
      or         $3, $3, $2
      addu       $3, $3, $17
      addu       $25, $7, $3
      sll        $3, $25, 20
      srl        $2, $25, 12
      or         $25, $3, $2
      addu       $25, $25, $24
      and        $3, $25, $23
      nor        $2, $0, $23
      and        $2, $24, $2
      or         $3, $3, $2
      lw         $17, 0x90($29)
      addu       $3, $3, $14
      addu       $7, $30, $17
      addu       $30, $7, $3
      sll        $3, $30, 5
      srl        $2, $30, 27
      or         $30, $3, $2
      addu       $30, $30, $25
      and        $3, $30, $24
      nor        $2, $0, $24
      lw         $17, 0x94($29)
      and        $2, $25, $2
      addu       $8, $23, $17
      lw         $17, 0x18($29)
      or         $3, $3, $2
      addu       $3, $3, $17
      addu       $23, $8, $3
      sll        $3, $23, 9
      srl        $2, $23, 23
      or         $23, $3, $2
      addu       $23, $23, $30
      and        $3, $23, $25
      nor        $2, $0, $25
      and        $2, $30, $2
      or         $3, $3, $2
      lw         $17, 0x98($29)
      addu       $3, $3, $12
      addu       $7, $24, $17
      addu       $24, $7, $3
      sll        $3, $24, 14
      srl        $2, $24, 18
      or         $24, $3, $2
      addu       $24, $24, $23
      and        $3, $24, $30
      nor        $2, $0, $30
      and        $2, $23, $2
      or         $3, $3, $2
      lw         $17, 0x9C($29)
      addu       $3, $3, $10
      addu       $7, $25, $17
      addu       $25, $7, $3
      sll        $3, $25, 20
      srl        $2, $25, 12
      or         $25, $3, $2
      addu       $25, $25, $24
      lw         $17, 0xA0($29)
      xor        $2, $25, $24
      addu       $3, $30, $17
      lw         $17, 0x24($29)
      xor        $2, $2, $23
      addu       $2, $2, $17
      addu       $30, $3, $2
      sll        $3, $30, 4
      srl        $2, $30, 28
      or         $30, $3, $2
      addu       $30, $30, $25
      lw         $17, 0xA4($29)
      xor        $2, $30, $25
      addu       $3, $23, $17
      lw         $17, 0x30($29)
      xor        $2, $2, $24
      addu       $2, $2, $17
      addu       $23, $3, $2
      sll        $3, $23, 11
      srl        $2, $23, 21
      or         $23, $3, $2
      addu       $23, $23, $30
      xor        $2, $23, $30
      xor        $2, $2, $25
      lw         $17, 0xA8($29)
      addu       $2, $2, $15
      addu       $3, $24, $17
      addu       $24, $3, $2
      sll        $3, $24, 16
      srl        $2, $24, 16
      or         $24, $3, $2
      addu       $24, $24, $23
      xor        $2, $24, $23
      xor        $2, $2, $30
      lw         $17, 0xAC($29)
      addu       $2, $2, $9
      addu       $3, $25, $17
      addu       $25, $3, $2
      sll        $3, $25, 23
      srl        $2, $25, 9
      or         $25, $3, $2
      addu       $25, $25, $24
      lw         $17, 0xB0($29)
      xor        $2, $25, $24
      addu       $3, $30, $17
      lw         $17, 0x14($29)
      xor        $2, $2, $23
      addu       $2, $2, $17
      addu       $30, $3, $2
      sll        $3, $30, 4
      srl        $2, $30, 28
      or         $30, $3, $2
      addu       $30, $30, $25
      lw         $17, 0xB4($29)
      xor        $2, $30, $25
      addu       $3, $23, $17
      lw         $17, 0x20($29)
      xor        $2, $2, $24
      addu       $2, $2, $17
      addu       $23, $3, $2
      sll        $3, $23, 11
      srl        $2, $23, 21
      or         $23, $3, $2
      addu       $23, $23, $30
      xor        $2, $23, $30
      xor        $2, $2, $25
      lw         $17, 0xB8($29)
      addu       $2, $2, $12
      addu       $3, $24, $17
      addu       $24, $3, $2
      sll        $3, $24, 16
      srl        $2, $24, 16
      or         $24, $3, $2
      addu       $24, $24, $23
      xor        $2, $24, $23
      xor        $2, $2, $30
      lw         $17, 0xBC($29)
      addu       $2, $2, $13
      addu       $3, $25, $17
      addu       $25, $3, $2
      sll        $3, $25, 23
      srl        $2, $25, 9
      or         $25, $3, $2
      addu       $25, $25, $24
      xor        $2, $25, $24
      xor        $2, $2, $23
      lw         $17, 0xC0($29)
      addu       $2, $2, $14
      addu       $3, $30, $17
      addu       $30, $3, $2
      sll        $3, $30, 4
      srl        $2, $30, 28
      or         $30, $3, $2
      addu       $30, $30, $25
      lw         $17, 0xC4($29)
      xor        $2, $30, $25
      addu       $3, $23, $17
      lw         $17, 0x10($29)
      xor        $2, $2, $24
      addu       $2, $2, $17
      addu       $23, $3, $2
      sll        $3, $23, 11
      srl        $2, $23, 21
      or         $23, $3, $2
      addu       $23, $23, $30
      lw         $17, 0xC8($29)
      xor        $2, $23, $30
      addu       $3, $24, $17
      lw         $17, 0x1C($29)
      xor        $2, $2, $25
      addu       $2, $2, $17
      addu       $24, $3, $2
      sll        $3, $24, 16
      srl        $2, $24, 16
      or         $24, $3, $2
      addu       $24, $24, $23
      lw         $17, 0xCC($29)
      xor        $2, $24, $23
      addu       $3, $25, $17
      lw         $17, 0x28($29)
      xor        $2, $2, $30
      addu       $2, $2, $17
      addu       $25, $3, $2
      sll        $3, $25, 23
      srl        $2, $25, 9
      or         $25, $3, $2
      addu       $25, $25, $24
      lw         $17, 0xD0($29)
      xor        $2, $25, $24
      addu       $3, $30, $17
      lw         $17, 0x34($29)
      xor        $2, $2, $23
      addu       $2, $2, $17
      addu       $30, $3, $2
      sll        $3, $30, 4
      srl        $2, $30, 28
      or         $30, $3, $2
      addu       $30, $30, $25
      xor        $2, $30, $25
      xor        $2, $2, $24
      lw         $17, 0xD4($29)
      addu       $2, $2, $10
      addu       $3, $23, $17
      addu       $23, $3, $2
      sll        $3, $23, 11
      srl        $2, $23, 21
      or         $23, $3, $2
      addu       $23, $23, $30
      xor        $2, $23, $30
      xor        $2, $2, $25
      lw         $17, 0xD8($29)
      addu       $2, $2, $11
      addu       $3, $24, $17
      addu       $24, $3, $2
      sll        $3, $24, 16
      srl        $2, $24, 16
      or         $24, $3, $2
      addu       $24, $24, $23
      lw         $17, 0xDC($29)
      xor        $2, $24, $23
      addu       $3, $25, $17
      lw         $17, 0x18($29)
      xor        $2, $2, $30
      addu       $2, $2, $17
      addu       $25, $3, $2
      sll        $3, $25, 23
      srl        $2, $25, 9
      or         $25, $3, $2
      addu       $25, $25, $24
      nor        $2, $0, $23
      lw         $17, 0xE0($29)
      or         $2, $25, $2
      addu       $3, $30, $17
      lw         $17, 0x10($29)
      xor        $2, $24, $2
      addu       $2, $2, $17
      addu       $30, $3, $2
      sll        $3, $30, 6
      srl        $2, $30, 26
      or         $30, $3, $2
      addu       $30, $30, $25
      nor        $2, $0, $24
      or         $2, $30, $2
      xor        $2, $25, $2
      lw         $17, 0xE4($29)
      addu       $2, $2, $12
      addu       $3, $23, $17
      addu       $23, $3, $2
      sll        $3, $23, 10
      srl        $2, $23, 22
      or         $23, $3, $2
      addu       $23, $23, $30
      nor        $2, $0, $25
      or         $2, $23, $2
      xor        $2, $30, $2
      lw         $17, 0xE8($29)
      addu       $2, $2, $9
      addu       $3, $24, $17
      addu       $24, $3, $2
      sll        $3, $24, 15
      srl        $2, $24, 17
      or         $24, $3, $2
      addu       $24, $24, $23
      nor        $2, $0, $30
      lw         $17, 0xEC($29)
      or         $2, $24, $2
      addu       $3, $25, $17
      lw         $17, 0x24($29)
      xor        $2, $23, $2
      addu       $2, $2, $17
      addu       $25, $3, $2
      sll        $3, $25, 21
      srl        $2, $25, 11
      or         $25, $3, $2
      addu       $25, $25, $24
      nor        $2, $0, $23
      or         $2, $25, $2
      xor        $2, $24, $2
      lw         $17, 0xF0($29)
      addu       $2, $2, $10
      addu       $3, $30, $17
      addu       $30, $3, $2
      sll        $3, $30, 6
      srl        $2, $30, 26
      or         $30, $3, $2
      addu       $30, $30, $25
      nor        $2, $0, $24
      lw         $17, 0xF4($29)
      or         $2, $30, $2
      addu       $3, $23, $17
      lw         $17, 0x1C($29)
      xor        $2, $25, $2
      addu       $2, $2, $17
      addu       $23, $3, $2
      sll        $3, $23, 10
      srl        $2, $23, 22
      or         $23, $3, $2
      addu       $23, $23, $30
      nor        $2, $0, $25
      or         $2, $23, $2
      xor        $2, $30, $2
      lw         $17, 0xF8($29)
      addu       $2, $2, $13
      addu       $3, $24, $17
      addu       $24, $3, $2
      sll        $3, $24, 15
      srl        $2, $24, 17
      or         $24, $3, $2
      addu       $24, $24, $23
      nor        $2, $0, $30
      lw         $17, 0xFC($29)
      or         $2, $24, $2
      addu       $3, $25, $17
      lw         $17, 0x14($29)
      xor        $2, $23, $2
      addu       $2, $2, $17
      addu       $25, $3, $2
      sll        $3, $25, 21
      srl        $2, $25, 11
      or         $25, $3, $2
      addu       $25, $25, $24
      nor        $2, $0, $23
      lw         $17, 0x100($29)
      or         $2, $25, $2
      addu       $3, $30, $17
      lw         $17, 0x30($29)
      xor        $2, $24, $2
      addu       $2, $2, $17
      addu       $30, $3, $2
      sll        $3, $30, 6
      srl        $2, $30, 26
      or         $30, $3, $2
      addu       $30, $30, $25
      nor        $2, $0, $24
      or         $2, $30, $2
      xor        $2, $25, $2
      lw         $17, 0x104($29)
      addu       $2, $2, $11
      addu       $3, $23, $17
      addu       $23, $3, $2
      sll        $3, $23, 10
      srl        $2, $23, 22
      or         $23, $3, $2
      addu       $23, $23, $30
      nor        $2, $0, $25
      lw         $17, 0x108($29)
      or         $2, $23, $2
      addu       $3, $24, $17
      lw         $17, 0x28($29)
      xor        $2, $30, $2
      addu       $2, $2, $17
      addu       $24, $3, $2
      sll        $3, $24, 15
      srl        $2, $24, 17
      or         $24, $3, $2
      addu       $24, $24, $23
      nor        $2, $0, $30
      or         $2, $24, $2
      xor        $2, $23, $2
      lw         $17, 0x10C($29)
      addu       $2, $2, $14
      addu       $3, $25, $17
      addu       $25, $3, $2
      sll        $3, $25, 21
      srl        $2, $25, 11
      or         $25, $3, $2
      addu       $25, $25, $24
      nor        $2, $0, $23
      lw         $17, 0x110($29)
      or         $2, $25, $2
      addu       $3, $30, $17
      lw         $17, 0x20($29)
      xor        $2, $24, $2
      addu       $2, $2, $17
      addu       $30, $3, $2
      sll        $3, $30, 6
      srl        $2, $30, 26
      or         $30, $3, $2
      addu       $30, $30, $25
      nor        $2, $0, $24
      or         $2, $30, $2
      xor        $2, $25, $2
      lw         $17, 0x114($29)
      addu       $2, $2, $15
      addu       $3, $23, $17
      addu       $23, $3, $2
      sll        $3, $23, 10
      srl        $2, $23, 22
      or         $23, $3, $2
      addu       $23, $23, $30
      nor        $2, $0, $25
      lw         $17, 0x118($29)
      or         $2, $23, $2
      addu       $3, $24, $17
      lw         $17, 0x18($29)
      xor        $2, $30, $2
      addu       $2, $2, $17
      addu       $24, $3, $2
      sll        $3, $24, 15
      srl        $2, $24, 17
      or         $24, $3, $2
      addu       $24, $24, $23
      nor        $2, $0, $30
      lw         $17, 0x11C($29)
      or         $2, $24, $2
      addu       $3, $25, $17
      lw         $17, 0x34($29)
      xor        $2, $23, $2
      addu       $2, $2, $17
      addu       $25, $3, $2
      sll        $3, $25, 21
      srl        $2, $25, 11
      or         $25, $3, $2
      addu       $25, $25, $24
      lw         $2, 0x0($16)
      lw         $3, 0x4($16)
      addu       $2, $2, $30
      sw         $2, 0x0($16)
      lw         $2, 0x8($16)
      addu       $3, $3, $25
      sw         $3, 0x4($16)
      lw         $3, 0xC($16)
      addu       $2, $2, $24
      addu       $3, $3, $23
      sw         $2, 0x8($16)
      jal        func_80016140
       sw        $3, 0xC($16)
      lw         $31, 0x154($29)
      lw         $30, 0x150($29)
      lw         $23, 0x14C($29)
      lw         $22, 0x148($29)
      lw         $21, 0x144($29)
      lw         $20, 0x140($29)
      lw         $19, 0x13C($29)
      lw         $18, 0x138($29)
      lw         $17, 0x134($29)
      lw         $16, 0x130($29)
      jr         $31
       addiu     $29, $29, 0x158
.end func_8009A8A0

.globl func_8009B7F4
.ent func_8009B7F4
func_8009B7F4:
      addiu      $29, $29, -0x18
      lui        $6, (0x67452301 >> 16)
      ori        $6, $6, (0x67452301 & 0xFFFF)
      lui        $5, (0xEFCDAB89 >> 16)
      ori        $5, $5, (0xEFCDAB89 & 0xFFFF)
      lui        $3, (0x98BADCFE >> 16)
      ori        $3, $3, (0x98BADCFE & 0xFFFF)
      lui        $2, (0x10325476 >> 16)
      ori        $2, $2, (0x10325476 & 0xFFFF)
      sw         $31, 0x10($29)
      sw         $0, 0x14($4)
      sw         $0, 0x10($4)
      sw         $6, 0x0($4)
      sw         $5, 0x4($4)
      sw         $3, 0x8($4)
      sw         $2, 0xC($4)
      addiu      $4, $4, 0x18
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x40
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009B7F4

.globl func_8009B850
.ent func_8009B850
func_8009B850:
      addiu      $29, $29, -0x28
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $19, 0x1C($29)
      sw         $31, 0x20($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $2, 0x10($17)
      addu       $18, $6, $0
      srl        $3, $2, 3
      andi       $4, $3, 0x3F
      sll        $3, $18, 3
      addu       $2, $2, $3
      sw         $2, 0x10($17)
      sltu       $2, $2, $3
      beqz       $2, .L8009B8A0
       addu      $19, $5, $0
      lw         $2, 0x14($17)
      addiu      $2, $2, 0x1
      sw         $2, 0x14($17)
  .L8009B8A0:
      lw         $2, 0x14($17)
      srl        $3, $18, 29
      addu       $2, $2, $3
      sw         $2, 0x14($17)
      addiu      $2, $0, 0x40
      subu       $16, $2, $4
      sltu       $2, $18, $16
      bnel       $2, $0, .L8009B90C
       addu      $16, $0, $0
      addu       $4, $4, $17
      addiu      $4, $4, 0x18
      addu       $5, $19, $0
      jal        func_80013F00
       addu      $6, $16, $0
      addu       $4, $17, $0
      jal        func_8009A8A0
       addiu     $5, $17, 0x18
      j          .L8009B8FC
       addiu     $2, $16, 0x3F
  .L8009B8EC:
      jal        func_8009A8A0
       addu      $5, $19, $16
      addiu      $16, $16, 0x40
      addiu      $2, $16, 0x3F
  .L8009B8FC:
      sltu       $2, $2, $18
      bnez       $2, .L8009B8EC
       addu      $4, $17, $0
      addu       $4, $0, $0
  .L8009B90C:
      addu       $4, $4, $17
      addiu      $4, $4, 0x18
      addu       $5, $19, $16
      jal        func_80013F00
       subu      $6, $18, $16
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009B850

.globl func_8009B93C
.ent func_8009B93C
func_8009B93C:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      sw         $16, 0x18($29)
      addu       $16, $5, $0
      addiu      $4, $29, 0x10
      addiu      $5, $16, 0x10
      sw         $31, 0x20($29)
      jal        func_8009A800
       addiu     $6, $0, 0x8
      lw         $2, 0x10($16)
      srl        $2, $2, 3
      andi       $6, $2, 0x3F
      sltiu      $2, $6, 0x38
      bnez       $2, .L8009B980
       addiu     $2, $0, 0x38
      addiu      $2, $0, 0x78
  .L8009B980:
      subu       $6, $2, $6
      addu       $4, $16, $0
      lui        $5, %hi(D_800F4D00)
      jal        func_8009B850
       addiu     $5, $5, %lo(D_800F4D00)
      addu       $4, $16, $0
      addiu      $5, $29, 0x10
      jal        func_8009B850
       addiu     $6, $0, 0x8
      addu       $4, $17, $0
      addu       $5, $16, $0
      jal        func_8009A800
       addiu     $6, $0, 0x10
      addu       $4, $16, $0
      addu       $5, $0, $0
      jal        func_80016140
       addiu     $6, $0, 0x58
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009B93C

.globl func_8009B9D8
.ent func_8009B9D8
func_8009B9D8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009B7F4
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009B9D8

.globl func_8009B9F4
.ent func_8009B9F4
func_8009B9F4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009B850
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009B9F4

.globl func_8009BA10
.ent func_8009BA10
func_8009BA10:
      addiu      $29, $29, -0x18
      addu       $2, $4, $0
      addu       $4, $5, $0
      sw         $31, 0x10($29)
      jal        func_8009B93C
       addu      $5, $2, $0
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009BA10

.globl func_8009BA34
.ent func_8009BA34
func_8009BA34:
      addiu      $29, $29, -0x78
      sw         $16, 0x68($29)
      addu       $16, $4, $0
      sw         $18, 0x70($29)
      addu       $18, $5, $0
      sw         $17, 0x6C($29)
      addu       $17, $6, $0
      beqz       $16, .L8009BA60
       sw        $31, 0x74($29)
      bnez       $17, .L8009BA68
       nop
  .L8009BA60:
      j          .L8009BA90
       addiu     $2, $0, -0x4
  .L8009BA68:
      jal        func_8009B7F4
       addiu     $4, $29, 0x10
      addiu      $4, $29, 0x10
      addu       $5, $16, $0
      jal        func_8009B850
       addu      $6, $18, $0
      addu       $4, $17, $0
      jal        func_8009B93C
       addiu     $5, $29, 0x10
      addiu      $2, $0, 0x1
  .L8009BA90:
      lw         $31, 0x74($29)
      lw         $18, 0x70($29)
      lw         $17, 0x6C($29)
      lw         $16, 0x68($29)
      jr         $31
       addiu     $29, $29, 0x78
.end func_8009BA34

.globl func_8009BAA8
.ent func_8009BAA8
func_8009BAA8:
      jr         $31
       addiu     $2, $0, 0x58
.end func_8009BAA8

.globl func_8009BAB0
.ent func_8009BAB0
func_8009BAB0:
      beqz       $4, .L8009BAC0
       nop
      bnez       $5, .L8009BAC8
       or        $2, $5, $4
  .L8009BAC0:
      jr         $31
       addiu     $2, $0, -0x4
  .L8009BAC8:
      andi       $2, $2, 0x3
      beqz       $2, .L8009BB28
       addiu     $2, $5, 0x50
  .L8009BAD4:
      lwl        $3, 0x0($5)
      lwr        $3, 0x3($5)
      lwl        $6, 0x4($5)
      lwr        $6, 0x7($5)
      lwl        $7, 0x8($5)
      lwr        $7, 0xB($5)
      lwl        $8, 0xC($5)
      lwr        $8, 0xF($5)
      swl        $3, 0x0($4)
      swr        $3, 0x3($4)
      swl        $6, 0x4($4)
      swr        $6, 0x7($4)
      swl        $7, 0x8($4)
      swr        $7, 0xB($4)
      swl        $8, 0xC($4)
      swr        $8, 0xF($4)
      addiu      $5, $5, 0x10
      bne        $5, $2, .L8009BAD4
       addiu     $4, $4, 0x10
      j          .L8009BB54
       nop
  .L8009BB28:
      lw         $3, 0x0($5)
      lw         $6, 0x4($5)
      lw         $7, 0x8($5)
      lw         $8, 0xC($5)
      sw         $3, 0x0($4)
      sw         $6, 0x4($4)
      sw         $7, 0x8($4)
      sw         $8, 0xC($4)
      addiu      $5, $5, 0x10
      bne        $5, $2, .L8009BB28
       addiu     $4, $4, 0x10
  .L8009BB54:
      lwl        $3, 0x0($5)
      lwr        $3, 0x3($5)
      lwl        $6, 0x4($5)
      lwr        $6, 0x7($5)
      swl        $3, 0x0($4)
      swr        $3, 0x3($4)
      swl        $6, 0x4($4)
      swr        $6, 0x7($4)
      jr         $31
       addiu     $2, $0, 0x1
.end func_8009BAB0

.globl func_8009BB7C
.ent func_8009BB7C
func_8009BB7C:
      nor        $2, $0, $23
.end func_8009BB7C

.globl func_8009BB80
.ent func_8009BB80
func_8009BB80:
      jr         $31
       andi      $2, $4, 0xFFFF
.end func_8009BB80

.globl func_8009BB88
.ent func_8009BB88
func_8009BB88:
      jr         $31
       addu      $2, $4, $0
.end func_8009BB88

.globl func_8009BB90
.ent func_8009BB90
func_8009BB90:
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      sw         $6, 0x14($29)
      beqz       $5, .L8009BBC0
       sw        $5, 0x10($29)
      lw         $2, 0x4($4)
      addiu      $5, $29, 0x10
      lw         $2, 0xC($2)
      jalr       $2
       addu      $6, $0, $0
      j          .L8009BBC4
       nop
  .L8009BBC0:
      addiu      $2, $0, -0x5
  .L8009BBC4:
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8009BB90

.globl func_8009BBD0
.ent func_8009BBD0
func_8009BBD0:
      addiu      $29, $29, -0x28
      sw         $31, 0x20($29)
      sw         $6, 0x14($29)
      beqz       $5, .L8009BC20
       sw        $5, 0x10($29)
      lw         $2, 0x4($4)
      addiu      $5, $29, 0x10
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $6, $29, 0x18
      addu       $4, $2, $0
      addiu      $2, $0, 0x1
      bne        $4, $2, .L8009BC24
       nop
      lw         $3, 0x18($29)
      lw         $2, 0x14($29)
      bnel       $3, $2, .L8009BC24
       addiu     $4, $0, -0x25
      j          .L8009BC24
       nop
  .L8009BC20:
      addiu      $4, $0, -0x5
  .L8009BC24:
      lw         $31, 0x20($29)
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009BBD0

.globl func_8009BC34
.ent func_8009BC34
func_8009BC34:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $31, 0x24($29)
      jal        func_8009BB80
       andi      $4, $5, 0xFFFF
      addu       $4, $16, $0
      sh         $2, 0x18($29)
      addiu      $2, $29, 0x18
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x2
      sw         $2, 0x14($29)
      lw         $2, 0x4($4)
      addiu      $5, $29, 0x10
      lw         $2, 0xC($2)
      jalr       $2
       addu      $6, $0, $0
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009BC34

.globl func_8009BC88
.ent func_8009BC88
func_8009BC88:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $31, 0x24($29)
      jal        func_8009BB88
       addu      $4, $5, $0
      addu       $4, $16, $0
      sw         $2, 0x18($29)
      addiu      $2, $29, 0x18
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x4
      sw         $2, 0x14($29)
      lw         $2, 0x4($4)
      addiu      $5, $29, 0x10
      lw         $2, 0xC($2)
      jalr       $2
       addu      $6, $0, $0
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009BC88

.globl func_8009BCDC
.ent func_8009BCDC
func_8009BCDC:
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      sw         $5, 0x10($29)
      sw         $6, 0x14($29)
      lw         $2, 0x4($4)
      addiu      $5, $29, 0x10
      lw         $2, 0xC($2)
      jalr       $2
       addu      $6, $0, $0
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8009BCDC

.globl func_8009BD0C
.ent func_8009BD0C
func_8009BD0C:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x1C($29)
      beqz       $17, .L8009BD3C
       sw        $16, 0x10($29)
      jal        func_80017780
       addu      $4, $17, $0
      j          .L8009BD40
       addu      $16, $2, $0
  .L8009BD3C:
      addu       $16, $0, $0
  .L8009BD40:
      addu       $4, $18, $0
      jal        func_8009BC88
       addu      $5, $16, $0
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8009BD74
       nop
      beqz       $16, .L8009BD74
       addu      $4, $18, $0
      addu       $5, $17, $0
      jal        func_8009BB90
       addu      $6, $16, $0
      addu       $3, $2, $0
  .L8009BD74:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_8009BD0C

.globl func_8009BD90
.ent func_8009BD90
func_8009BD90:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      addiu      $2, $29, 0x18
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x2
      sw         $31, 0x28($29)
      sw         $16, 0x20($29)
      sw         $2, 0x14($29)
      lw         $2, 0x4($4)
      addiu      $5, $29, 0x10
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $6, $29, 0x1C
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8009BDFC
       addu      $2, $16, $0
      lw         $3, 0x1C($29)
      lw         $2, 0x14($29)
      bnel       $3, $2, .L8009BDF8
       addiu     $16, $0, -0x25
      lhu        $4, 0x18($29)
      jal        func_8009BB80
       nop
      sh         $2, 0x0($17)
  .L8009BDF8:
      addu       $2, $16, $0
  .L8009BDFC:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8009BD90

.globl func_8009BE10
.ent func_8009BE10
func_8009BE10:
      addiu      $29, $29, -0x30
      sw         $17, 0x24($29)
      addu       $17, $5, $0
      addiu      $2, $29, 0x18
      sw         $2, 0x10($29)
      addiu      $2, $0, 0x4
      sw         $31, 0x28($29)
      sw         $16, 0x20($29)
      sw         $2, 0x14($29)
      lw         $2, 0x4($4)
      addiu      $5, $29, 0x10
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $6, $29, 0x1C
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L8009BE7C
       addu      $2, $16, $0
      lw         $3, 0x1C($29)
      lw         $2, 0x14($29)
      bnel       $3, $2, .L8009BE78
       addiu     $16, $0, -0x25
      lw         $4, 0x18($29)
      jal        func_8009BB88
       nop
      sw         $2, 0x0($17)
  .L8009BE78:
      addu       $2, $16, $0
  .L8009BE7C:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8009BE10

.globl func_8009BE90
.ent func_8009BE90
func_8009BE90:
      addiu      $29, $29, -0x28
      sw         $16, 0x20($29)
      addu       $16, $6, $0
      sw         $31, 0x24($29)
      sw         $5, 0x10($29)
      sw         $16, 0x14($29)
      lw         $2, 0x4($4)
      addiu      $5, $29, 0x10
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $6, $29, 0x18
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L8009BED8
       nop
      lw         $2, 0x18($29)
      bnel       $2, $16, .L8009BED8
       addiu     $3, $0, -0x25
  .L8009BED8:
      lw         $31, 0x24($29)
      lw         $16, 0x20($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x28
.end func_8009BE90

.globl func_8009BEEC
.ent func_8009BEEC
func_8009BEEC:
      addiu      $29, $29, -0x38
      sw         $19, 0x24($29)
      addu       $19, $4, $0
      sw         $20, 0x28($29)
      addu       $20, $5, $0
      sw         $16, 0x18($29)
      addu       $16, $0, $0
      addiu      $5, $29, 0x10
      sw         $21, 0x2C($29)
      addu       $21, $7, $0
      sw         $18, 0x20($29)
      addu       $18, $6, $0
      sw         $31, 0x30($29)
      jal        func_8009BE10
       sw        $17, 0x1C($29)
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L8009BF94
       nop
      lw         $4, 0x10($29)
      bnez       $4, .L8009BF50
       addiu     $4, $4, 0x1
      andi       $2, $18, 0xFF
      beqz       $2, .L8009BF8C
       addiu     $2, $0, 0x1
  .L8009BF50:
      jal        func_800524E8
       addu      $5, $20, $0
      addu       $16, $2, $0
      beql       $16, $0, .L8009BF88
       addiu     $17, $0, -0x5
      lw         $6, 0x10($29)
      beqz       $6, .L8009BF7C
       addu      $4, $19, $0
      jal        func_8009BBD0
       addu      $5, $16, $0
      addu       $17, $2, $0
  .L8009BF7C:
      lw         $2, 0x10($29)
      addu       $2, $16, $2
      sb         $0, 0x0($2)
  .L8009BF88:
      addiu      $2, $0, 0x1
  .L8009BF8C:
      beq        $17, $2, .L8009BFA4
       addu      $2, $17, $0
  .L8009BF94:
      jal        func_80052540
       addu      $4, $16, $0
      addu       $16, $0, $0
      addu       $2, $17, $0
  .L8009BFA4:
      sw         $16, 0x0($21)
      lw         $31, 0x30($29)
      lw         $21, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x38
.end func_8009BEEC

.globl func_8009BFCC
.ent func_8009BFCC
func_8009BFCC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BB88
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009BFCC

.globl func_8009BFE8
.ent func_8009BFE8
func_8009BFE8:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BB88
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009BFE8

.globl func_8009C004
.ent func_8009C004
func_8009C004:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BB80
       andi      $4, $4, 0xFFFF
      lw         $31, 0x10($29)
      andi       $2, $2, 0xFFFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009C004

.globl func_8009C024
.ent func_8009C024
func_8009C024:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_8009BB80
       andi      $4, $4, 0xFFFF
      lw         $31, 0x10($29)
      andi       $2, $2, 0xFFFF
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009C024

.globl func_8009C044
.ent func_8009C044
func_8009C044:
      lw         $17, 0x24($29)
      xor        $2, $23, $2
      addu       $2, $2, $17
      addu       $25, $3, $2
      sll        $3, $25, 21
      srl        $2, $25, 11
      or         $25, $3, $2
      addu       $25, $25, $24
      nor        $2, $0, $23
      or         $2, $25, $2
      xor        $2, $24, $2
      lw         $17, 0xF0($29)
      addu       $2, $2, $10
      addu       $3, $30, $17
      addu       $30, $3, $2
.end func_8009C044

.globl func_8009C080
.ent func_8009C080
func_8009C080:
      andi       $2, $4, 0x3
      bnez       $2, .L8009C0E8
       addu      $7, $0, $0
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
      bnel       $4, $2, .L8009C0E8
       addiu     $7, $0, 0x1
      sra        $3, $6, 7
      subu       $3, $3, $5
      sll        $2, $3, 1
      addu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $3
      sll        $2, $2, 4
      beql       $4, $2, .L8009C0E8
       addiu     $7, $0, 0x1
  .L8009C0E8:
      jr         $31
       addu      $2, $7, $0
.end func_8009C080

.globl func_8009C0F0
.ent func_8009C0F0
func_8009C0F0:
      addiu      $29, $29, -0x30
      sw         $21, 0x24($29)
      addu       $21, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $20, 0x20($29)
      addiu      $20, $0, 0x1
      lui        $2, %hi(D_800F4D8C)
      sw         $18, 0x18($29)
      addiu      $18, $2, %lo(D_800F4D8C)
      sw         $31, 0x28($29)
      sw         $16, 0x10($29)
  .L8009C128:
      lw         $16, 0x0($18)
      bne        $17, $20, .L8009C148
       slt       $2, $16, $19
      jal        func_8009C080
       addu      $4, $21, $0
      bnel       $2, $0, .L8009C144
       addiu     $16, $16, 0x1
  .L8009C144:
      slt        $2, $16, $19
  .L8009C148:
      bnez       $2, .L8009C158
       subu      $19, $19, $16
      j          .L8009C16C
       addiu     $2, $17, 0x1
  .L8009C158:
      addiu      $17, $17, 0x1
      slti       $2, $17, 0xC
      bnez       $2, .L8009C128
       addiu     $18, $18, 0x4
      addu       $2, $0, $0
  .L8009C16C:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8009C0F0

.globl func_8009C190
.ent func_8009C190
func_8009C190:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      lui        $2, %hi(D_800F4D40)
      sw         $17, 0x14($29)
      addiu      $17, $2, %lo(D_800F4D40)
      sw         $31, 0x1C($29)
  .L8009C1B4:
      addu       $4, $18, $0
      lw         $5, 0x0($17)
      jal        func_800177C0
       addiu     $6, $0, 0x3
      bnel       $2, $0, .L8009C1D4
       addiu     $16, $16, 0x1
      j          .L8009C1E4
       addiu     $2, $16, 0x1
  .L8009C1D4:
      slti       $2, $16, 0xC
      bnez       $2, .L8009C1B4
       addiu     $17, $17, 0x4
      addu       $2, $0, $0
  .L8009C1E4:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8009C190

.globl func_8009C1FC
.ent func_8009C1FC
func_8009C1FC:
      addiu      $4, $4, -0x1
      sltiu      $2, $4, 0xC
      bnez       $2, .L8009C214
       lui       $3, %hi(D_800F4D40)
      jr         $31
       addu      $2, $0, $0
  .L8009C214:
      addiu      $3, $3, %lo(D_800F4D40)
      sll        $2, $4, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      jr         $31
       nop
.end func_8009C1FC

.globl func_8009C22C
.ent func_8009C22C
func_8009C22C:
      addu       $8, $4, $0
      slti       $2, $8, 0x709
      beqz       $2, .L8009C244
       addu      $9, $5, $0
      j          .L8009C2E8
       addu      $4, $0, $0
  .L8009C244:
      addiu      $3, $8, -0x709
      bgez       $3, .L8009C254
       addu      $5, $3, $0
      addiu      $5, $8, -0x706
  .L8009C254:
      lui        $2, (0x51EB851F >> 16)
      ori        $2, $2, (0x51EB851F & 0xFFFF)
      mult       $3, $2
      lui        $6, (0x92492493 >> 16)
      ori        $6, $6, (0x92492493 & 0xFFFF)
      sra        $5, $5, 2
      mfhi       $7
      addiu      $4, $8, -0x641
      sra        $3, $3, 31
      mult       $4, $2
      sra        $2, $7, 5
      subu       $2, $2, $3
      subu       $5, $5, $2
      sra        $4, $4, 31
      addiu      $3, $8, -0x708
      mfhi       $11
      sra        $2, $11, 7
      subu       $2, $2, $4
      addu       $5, $5, $2
      sll        $2, $3, 3
      addu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $3
      sll        $3, $2, 2
      addu       $2, $2, $3
      addu       $2, $2, $5
      addu       $2, $2, $9
      addiu      $2, $2, 0x2
      mult       $2, $6
      sra        $4, $2, 31
      mfhi       $3
      addu       $3, $3, $2
      sra        $3, $3, 2
      subu       $4, $3, $4
      sll        $3, $4, 3
      subu       $3, $3, $4
      subu       $4, $2, $3
  .L8009C2E8:
      jr         $31
       addu      $2, $4, $0
.end func_8009C22C

.globl func_8009C2F0
.ent func_8009C2F0
func_8009C2F0:
      addiu      $29, $29, -0x30
      sw         $21, 0x24($29)
      addu       $21, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $20, 0x20($29)
      addiu      $20, $0, 0x1
      lui        $2, %hi(D_800F4D8C)
      sw         $19, 0x1C($29)
      addiu      $19, $2, %lo(D_800F4D8C)
      sw         $31, 0x28($29)
      sw         $16, 0x10($29)
  .L8009C328:
      lw         $16, 0x0($19)
      bne        $17, $20, .L8009C348
       slt       $2, $16, $18
      jal        func_8009C080
       addu      $4, $21, $0
      bnel       $2, $0, .L8009C344
       addiu     $16, $16, 0x1
  .L8009C344:
      slt        $2, $16, $18
  .L8009C348:
      bnel       $2, $0, .L8009C358
       subu      $18, $18, $16
      j          .L8009C36C
       addu      $2, $18, $0
  .L8009C358:
      addiu      $17, $17, 0x1
      slti       $2, $17, 0xC
      bnez       $2, .L8009C328
       addiu     $19, $19, 0x4
      addu       $2, $0, $0
  .L8009C36C:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_8009C2F0

.globl func_8009C390
.ent func_8009C390
func_8009C390:
      addiu      $29, $29, -0x38
      sw         $21, 0x24($29)
      addu       $21, $4, $0
      sw         $22, 0x28($29)
      addu       $22, $5, $0
      sw         $23, 0x2C($29)
      addu       $23, $6, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $18, 0x18($29)
      addu       $18, $17, $0
      lui        $2, %hi(D_800F4D8C)
      sw         $20, 0x20($29)
      addiu      $20, $2, %lo(D_800F4D8C)
      sw         $19, 0x1C($29)
      addiu      $19, $0, 0x1
      sw         $31, 0x30($29)
      sw         $16, 0x10($29)
  .L8009C3D8:
      sll        $2, $17, 2
      addu       $2, $2, $20
      lw         $16, 0x0($2)
      bne        $17, $19, .L8009C400
       addiu     $2, $17, 0x1
      jal        func_8009C080
       addu      $4, $21, $0
      bnel       $2, $0, .L8009C3FC
       addiu     $16, $16, 0x1
  .L8009C3FC:
      addiu      $2, $17, 0x1
  .L8009C400:
      bne        $2, $22, .L8009C410
       addu      $17, $2, $0
      j          .L8009C420
       addu      $2, $18, $23
  .L8009C410:
      slti       $2, $17, 0xC
      bnez       $2, .L8009C3D8
       addu      $18, $18, $16
      addu       $2, $0, $0
  .L8009C420:
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
.end func_8009C390

.globl func_8009C44C
.ent func_8009C44C
func_8009C44C:
      addiu      $4, $4, -0x1
      sltiu      $2, $4, 0x7
      bnez       $2, .L8009C464
       lui       $3, %hi(D_800F4D70)
      jr         $31
       addu      $2, $0, $0
  .L8009C464:
      addiu      $3, $3, %lo(D_800F4D70)
      sll        $2, $4, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      jr         $31
       nop
.end func_8009C44C

.globl func_8009C47C
.ent func_8009C47C
func_8009C47C:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      lw         $17, 0x30($29)
      sw         $18, 0x18($29)
      lw         $18, 0x34($29)
      sw         $16, 0x10($29)
      sw         $31, 0x1C($29)
      jal        func_8009C390
       addu      $16, $7, $0
      addiu      $2, $2, -0x1
      sll        $3, $2, 1
      addu       $3, $3, $2
      sll        $4, $3, 4
      subu       $4, $4, $3
      sll        $2, $4, 4
      subu       $2, $2, $4
      sll        $2, $2, 7
      sll        $3, $16, 4
      subu       $3, $3, $16
      sll        $3, $3, 2
      lw         $31, 0x1C($29)
      lw         $16, 0x10($29)
      addu       $3, $3, $17
      sll        $4, $3, 4
      subu       $4, $4, $3
      sll        $4, $4, 2
      addu       $2, $2, $4
      addu       $2, $2, $18
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_8009C47C

.globl func_8009C4FC
.ent func_8009C4FC
func_8009C4FC:
      lui        $2, (0xC22E4507 >> 16)
      ori        $2, $2, (0xC22E4507 & 0xFFFF)
      multu      $5, $2
      lw         $9, 0x10($29)
      lw         $10, 0x14($29)
      mfhi       $11
      srl        $8, $11, 16
      addu       $4, $8, $0
      sll        $2, $4, 1
      addu       $2, $2, $4
      sll        $3, $2, 4
      subu       $3, $3, $2
      sll        $2, $3, 4
      subu       $2, $2, $3
      sll        $2, $2, 7
      beqz       $6, .L8009C548
       subu      $8, $5, $2
      addiu      $2, $4, 0x1
      sw         $2, 0x0($6)
  .L8009C548:
      lui        $2, (0x91A2B3C5 >> 16)
      ori        $2, $2, (0x91A2B3C5 & 0xFFFF)
      mult       $8, $2
      lui        $4, (0x88888889 >> 16)
      ori        $4, $4, (0x88888889 & 0xFFFF)
      sra        $3, $8, 31
      mfhi       $11
      addu       $2, $11, $8
      sra        $2, $2, 11
      subu       $5, $2, $3
      sll        $2, $5, 3
      subu       $2, $2, $5
      sll        $2, $2, 5
      addu       $2, $2, $5
      sll        $6, $2, 4
      subu       $3, $8, $6
      mult       $3, $4
      mfhi       $11
      addu       $2, $11, $3
      sra        $2, $2, 5
      sra        $3, $3, 31
      beqz       $7, .L8009C5A8
       subu      $3, $2, $3
      sw         $5, 0x0($7)
  .L8009C5A8:
      bnel       $9, $0, .L8009C5B0
       sw        $3, 0x0($9)
  .L8009C5B0:
      beqz       $10, .L8009C5CC
       sll       $2, $3, 4
      subu       $2, $2, $3
      sll        $2, $2, 2
      addu       $2, $6, $2
      subu       $2, $8, $2
      sw         $2, 0x0($10)
  .L8009C5CC:
      jr         $31
       addiu     $2, $0, 0x1
.end func_8009C4FC

.globl func_8009C5D4
.ent func_8009C5D4
func_8009C5D4:
      addiu      $29, $29, -0x48
      sw         $21, 0x34($29)
      addu       $21, $4, $0
      sw         $23, 0x3C($29)
      addu       $23, $5, $0
      sw         $22, 0x38($29)
      addu       $22, $6, $0
      sw         $20, 0x30($29)
      addiu      $20, $0, 0x1
      sw         $19, 0x2C($29)
      addu       $19, $0, $0
      sw         $31, 0x40($29)
      sw         $18, 0x28($29)
      sw         $17, 0x24($29)
      sw         $16, 0x20($29)
      lbu        $2, 0x0($21)
      beqz       $2, .L8009C694
       addu      $16, $21, $0
      addiu      $18, $29, 0x10
      addu       $17, $21, $20
  .L8009C624:
      slti       $2, $19, 0x3
      beqz       $2, .L8009C698
       addiu     $2, $0, 0x1
      lbu        $4, 0x0($16)
      jal        func_80012680
       nop
      beql       $2, $0, .L8009C694
       addiu     $20, $0, -0x1
      lbu        $4, 0x0($17)
      jal        func_80012680
       nop
      beql       $2, $0, .L8009C694
       addiu     $20, $0, -0x1
      lbu        $4, 0x0($17)
      addiu      $17, $17, 0x3
      lbu        $3, 0x0($16)
      addiu      $16, $16, 0x3
      addiu      $3, $3, -0x30
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 1
      addiu      $2, $2, -0x30
      addu       $2, $2, $4
      sw         $2, 0x0($18)
      addiu      $18, $18, 0x4
      lbu        $2, 0x0($16)
      bnez       $2, .L8009C624
       addiu     $19, $19, 0x1
  .L8009C694:
      addiu      $2, $0, 0x1
  .L8009C698:
      bne        $20, $2, .L8009C770
       addu      $2, $20, $0
      lbu        $3, -0x1($16)
      addiu      $2, $0, 0x3A
      beq        $3, $2, .L8009C6B8
       addiu     $2, $0, 0x2E
      bnel       $3, $2, .L8009C700
       addiu     $16, $16, -0x1
  .L8009C6B8:
      lbu        $2, 0x0($16)
      beqz       $2, .L8009C700
       addiu     $18, $0, 0x2E
      addiu      $17, $0, 0x3A
  .L8009C6C8:
      lbu        $4, 0x0($16)
      jal        func_80012680
       nop
      bnel       $2, $0, .L8009C6F4
       addiu     $16, $16, 0x1
      lbu        $2, 0x0($16)
      beql       $2, $18, .L8009C6F4
       addiu     $16, $16, 0x1
      bne        $2, $17, .L8009C700
       nop
      addiu      $16, $16, 0x1
  .L8009C6F4:
      lbu        $2, 0x0($16)
      bnez       $2, .L8009C6C8
       nop
  .L8009C700:
      lw         $2, 0x18($29)
      slti       $2, $2, 0x3C
      beql       $2, $0, .L8009C768
       sw        $21, 0x0($23)
      lw         $2, 0x14($29)
      slti       $2, $2, 0x3C
      beql       $2, $0, .L8009C768
       sw        $21, 0x0($23)
      sw         $16, 0x0($23)
      sw         $0, 0x0($22)
      lw         $5, 0x14($29)
      lw         $3, 0x18($29)
      lw         $4, 0x10($29)
      sw         $0, 0x8($22)
      sll        $2, $5, 4
      subu       $2, $2, $5
      sll        $2, $2, 2
      addu       $3, $3, $2
      sll        $2, $4, 3
      subu       $2, $2, $4
      sll        $2, $2, 5
      addu       $2, $2, $4
      sll        $2, $2, 4
      addu       $3, $3, $2
      j          .L8009C76C
       sw        $3, 0x4($22)
  .L8009C768:
      addiu      $20, $0, -0x1
  .L8009C76C:
      addu       $2, $20, $0
  .L8009C770:
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
.end func_8009C5D4

.globl func_8009C79C
.ent func_8009C79C
func_8009C79C:
      addiu      $29, $29, -0x60
      sw         $16, 0x40($29)
      addu       $16, $4, $0
      sw         $21, 0x54($29)
      addu       $21, $5, $0
      sw         $20, 0x50($29)
      addu       $20, $6, $0
      addiu      $4, $29, 0x30
      addu       $5, $0, $0
      addiu      $6, $0, 0xC
      sw         $31, 0x58($29)
      sw         $19, 0x4C($29)
      sw         $18, 0x48($29)
      jal        func_80016140
       sw        $17, 0x44($29)
      lbu        $4, 0x0($16)
      jal        func_80012680
       addiu     $18, $0, -0x1
      beqz       $2, .L8009C9C4
       addiu     $2, $0, 0x6E
      lbu        $2, 0x0($16)
      beqz       $2, .L8009C824
       addiu     $17, $29, 0x10
  .L8009C7F8:
      lbu        $4, 0x0($16)
      jal        func_80012680
       nop
      beql       $2, $0, .L8009C828
       sb        $0, 0x0($17)
      lbu        $2, 0x0($16)
      addiu      $16, $16, 0x1
      sb         $2, 0x0($17)
      lbu        $2, 0x0($16)
      bnez       $2, .L8009C7F8
       addiu     $17, $17, 0x1
  .L8009C824:
      sb         $0, 0x0($17)
  .L8009C828:
      lbu        $17, 0x0($16)
      addiu      $19, $0, 0x2E
      bne        $17, $19, .L8009C880
       addiu     $2, $0, 0x3A
      addiu      $16, $16, 0x1
      jal        func_80024000
       addiu     $4, $29, 0x10
      sw         $2, 0x38($29)
      lbu        $2, 0x0($16)
      beql       $2, $0, .L8009C9F8
       addiu     $18, $0, 0x1
  .L8009C854:
      lbu        $4, 0x0($16)
      jal        func_80012680
       nop
      beql       $2, $0, .L8009C9F8
       addiu     $18, $0, 0x1
      addiu      $16, $16, 0x1
      lbu        $2, 0x0($16)
      bnez       $2, .L8009C854
       nop
      j          .L8009C9F8
       addiu     $18, $0, 0x1
  .L8009C880:
      bne        $17, $2, .L8009C9AC
       nop
      addiu      $16, $16, 0x1
      jal        func_80024000
       addiu     $4, $29, 0x10
      sw         $2, 0x30($29)
      lbu        $4, 0x0($16)
      jal        func_80012680
       nop
      beqz       $2, .L8009C9FC
       addiu     $2, $0, 0x1
      lbu        $4, 0x1($16)
      jal        func_80012680
       nop
      beqz       $2, .L8009C9FC
       addiu     $2, $0, 0x1
      lbu        $3, 0x0($16)
      addiu      $3, $3, -0x30
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 1
      lbu        $3, 0x1($16)
      addiu      $2, $2, -0x30
      addu       $2, $2, $3
      sw         $2, 0x34($29)
      lbu        $2, 0x2($16)
      bne        $2, $17, .L8009C9FC
       addiu     $2, $0, 0x1
      lbu        $4, 0x3($16)
      jal        func_80012680
       nop
      beqz       $2, .L8009C9FC
       addiu     $2, $0, 0x1
      lbu        $4, 0x4($16)
      jal        func_80012680
       nop
      beqz       $2, .L8009C9FC
       addiu     $2, $0, 0x1
      addiu      $16, $16, 0x3
      lbu        $3, 0x0($16)
      lbu        $4, 0x1($16)
      addiu      $16, $16, 0x2
      addiu      $3, $3, -0x30
      sll        $2, $3, 2
      addu       $2, $2, $3
      sll        $2, $2, 1
      addiu      $2, $2, -0x30
      addu       $2, $2, $4
      sw         $2, 0x38($29)
      lbu        $2, 0x0($16)
      bne        $2, $19, .L8009C984
       nop
      addiu      $16, $16, 0x1
      lbu        $2, 0x0($16)
      beqz       $2, .L8009C984
       nop
  .L8009C960:
      lbu        $4, 0x0($16)
      jal        func_80012680
       nop
      beqz       $2, .L8009C984
       nop
      addiu      $16, $16, 0x2
      lbu        $2, 0x0($16)
      bnez       $2, .L8009C960
       nop
  .L8009C984:
      lw         $2, 0x38($29)
      slti       $2, $2, 0x3C
      beqz       $2, .L8009C9FC
       addiu     $2, $0, 0x1
      lw         $2, 0x34($29)
      slti       $2, $2, 0x3C
      beqz       $2, .L8009C9FC
       addiu     $2, $0, 0x1
  .L8009C9A4:
      j          .L8009C9F8
       addiu     $18, $0, 0x1
  .L8009C9AC:
      bnez       $17, .L8009C9FC
       addiu     $2, $0, 0x1
      jal        func_80024000
       addiu     $4, $29, 0x10
      j          .L8009C9A4
       sw        $2, 0x38($29)
  .L8009C9C4:
      lbu        $3, 0x0($16)
      bne        $3, $2, .L8009C9FC
       addiu     $2, $0, 0x1
      lbu        $3, 0x1($16)
      addiu      $2, $0, 0x6F
      bne        $3, $2, .L8009C9FC
       addiu     $2, $0, 0x1
      lbu        $3, 0x2($16)
      addiu      $2, $0, 0x77
      bne        $3, $2, .L8009C9FC
       addiu     $2, $0, 0x1
      addiu      $16, $16, 0x3
      addiu      $18, $0, -0x2
  .L8009C9F8:
      addiu      $2, $0, 0x1
  .L8009C9FC:
      bne        $18, $2, .L8009CA4C
       addu      $2, $18, $0
      sw         $16, 0x0($21)
      sw         $0, 0x0($20)
      lw         $5, 0x34($29)
      lw         $3, 0x38($29)
      lw         $4, 0x30($29)
      sw         $0, 0x8($20)
      sll        $2, $5, 4
      subu       $2, $2, $5
      sll        $2, $2, 2
      addu       $3, $3, $2
      sll        $2, $4, 3
      subu       $2, $2, $4
      sll        $2, $2, 5
      addu       $2, $2, $4
      sll        $2, $2, 4
      addu       $3, $3, $2
      sw         $3, 0x4($20)
      addu       $2, $18, $0
  .L8009CA4C:
      lw         $31, 0x58($29)
      lw         $21, 0x54($29)
      lw         $20, 0x50($29)
      lw         $19, 0x4C($29)
      lw         $18, 0x48($29)
      lw         $17, 0x44($29)
      lw         $16, 0x40($29)
      jr         $31
       addiu     $29, $29, 0x60
.end func_8009C79C

.globl func_8009CA70
.ent func_8009CA70
func_8009CA70:
      sw         $4, 0x0($5)
      jr         $31
       addiu     $2, $0, -0x2
.end func_8009CA70

.globl func_8009CA7C
.ent func_8009CA7C
func_8009CA7C:
      addiu      $29, $29, -0x70
      sw         $19, 0x64($29)
      addu       $19, $4, $0
      sw         $20, 0x68($29)
      addu       $20, $5, $0
      sw         $18, 0x60($29)
      addu       $18, $6, $0
      sw         $17, 0x5C($29)
      addu       $17, $0, $0
      lui        $5, %hi(D_800EC944)
      addiu      $5, $5, %lo(D_800EC944)
      addiu      $6, $29, 0x28
      addiu      $7, $29, 0x40
      sw         $16, 0x58($29)
      addiu      $16, $29, 0x38
      addiu      $2, $29, 0x44
      sw         $2, 0x14($29)
      addiu      $2, $29, 0x48
      sw         $2, 0x18($29)
      addiu      $2, $29, 0x4C
      sw         $2, 0x1C($29)
      addiu      $2, $29, 0x50
      sw         $31, 0x6C($29)
      sw         $16, 0x10($29)
      jal        func_800165C0
       sw        $2, 0x20($29)
      addiu      $3, $0, 0x7
      bne        $2, $3, .L8009CB80
       addu      $2, $17, $0
      jal        func_80017780
       addiu     $4, $29, 0x28
      addu       $2, $2, $29
      sb         $0, 0x27($2)
      jal        func_8009C190
       addu      $4, $16, $0
      addu       $5, $2, $0
      blez       $5, .L8009CB80
       addu      $2, $17, $0
      lw         $3, 0x44($29)
      slti       $2, $3, 0x64
      beqz       $2, .L8009CB34
       slti      $2, $3, 0x42
      bnez       $2, .L8009CB30
       addiu     $2, $3, 0x7D0
      addiu      $2, $3, 0x76C
  .L8009CB30:
      sw         $2, 0x44($29)
  .L8009CB34:
      lw         $4, 0x44($29)
      lw         $6, 0x40($29)
      lw         $7, 0x48($29)
      lw         $2, 0x4C($29)
      sw         $4, 0x0($18)
      sw         $2, 0x10($29)
      lw         $2, 0x50($29)
      jal        func_8009C47C
       sw        $2, 0x14($29)
      sw         $2, 0x4($18)
      beqz       $20, .L8009CB78
       sw        $0, 0x8($18)
      jal        func_80017780
       addiu     $4, $29, 0x28
      addiu      $2, $2, 0x18
      addu       $2, $19, $2
      sw         $2, 0x0($20)
  .L8009CB78:
      addiu      $17, $0, 0x1
      addu       $2, $17, $0
  .L8009CB80:
      lw         $31, 0x6C($29)
      lw         $20, 0x68($29)
      lw         $19, 0x64($29)
      lw         $18, 0x60($29)
      lw         $17, 0x5C($29)
      lw         $16, 0x58($29)
      jr         $31
       addiu     $29, $29, 0x70
.end func_8009CA7C

.globl func_8009CBA0
.ent func_8009CBA0
func_8009CBA0:
      addiu      $29, $29, -0x68
      sw         $19, 0x5C($29)
      addu       $19, $4, $0
      sw         $20, 0x60($29)
      addu       $20, $5, $0
      sw         $18, 0x58($29)
      addu       $18, $6, $0
      sw         $17, 0x54($29)
      addu       $17, $0, $0
      lui        $5, %hi(D_800EC968)
      addiu      $5, $5, %lo(D_800EC968)
      addiu      $6, $29, 0x28
      addiu      $7, $29, 0x38
      sw         $16, 0x50($29)
      addiu      $16, $29, 0x30
      addiu      $2, $29, 0x3C
      sw         $2, 0x14($29)
      addiu      $2, $29, 0x40
      sw         $2, 0x18($29)
      addiu      $2, $29, 0x44
      sw         $2, 0x1C($29)
      addiu      $2, $29, 0x48
      sw         $31, 0x64($29)
      sw         $16, 0x10($29)
      jal        func_800165C0
       sw        $2, 0x20($29)
      addiu      $3, $0, 0x7
      bne        $2, $3, .L8009CC64
       addu      $2, $17, $0
      jal        func_8009C190
       addu      $4, $16, $0
      blez       $2, .L8009CC60
       addu      $5, $2, $0
      lw         $4, 0x3C($29)
      lw         $6, 0x38($29)
      lw         $7, 0x40($29)
      lw         $2, 0x44($29)
      sw         $4, 0x0($18)
      sw         $2, 0x10($29)
      lw         $2, 0x48($29)
      jal        func_8009C47C
       sw        $2, 0x14($29)
      sw         $2, 0x4($18)
      beqz       $20, .L8009CC5C
       sw        $0, 0x8($18)
      addiu      $2, $19, 0x1D
      sw         $2, 0x0($20)
  .L8009CC5C:
      addiu      $17, $0, 0x1
  .L8009CC60:
      addu       $2, $17, $0
  .L8009CC64:
      lw         $31, 0x64($29)
      lw         $20, 0x60($29)
      lw         $19, 0x5C($29)
      lw         $18, 0x58($29)
      lw         $17, 0x54($29)
      lw         $16, 0x50($29)
      jr         $31
       addiu     $29, $29, 0x68
.end func_8009CBA0

.globl func_8009CC84
.ent func_8009CC84
func_8009CC84:
      addiu      $29, $29, -0x68
      sw         $19, 0x5C($29)
      addu       $19, $4, $0
      sw         $20, 0x60($29)
      addu       $20, $5, $0
      sw         $18, 0x58($29)
      addu       $18, $6, $0
      sw         $17, 0x54($29)
      addu       $17, $0, $0
      lui        $5, %hi(D_800EC990)
      addiu      $5, $5, %lo(D_800EC990)
      addiu      $6, $29, 0x28
      sw         $16, 0x50($29)
      addiu      $16, $29, 0x30
      addu       $7, $16, $0
      addiu      $2, $29, 0x38
      sw         $2, 0x10($29)
      addiu      $2, $29, 0x3C
      sw         $2, 0x14($29)
      addiu      $2, $29, 0x40
      sw         $2, 0x18($29)
      addiu      $2, $29, 0x44
      sw         $2, 0x1C($29)
      addiu      $2, $29, 0x48
      sw         $31, 0x64($29)
      jal        func_800165C0
       sw        $2, 0x20($29)
      addiu      $3, $0, 0x7
      bne        $2, $3, .L8009CD4C
       addu      $2, $17, $0
      jal        func_8009C190
       addu      $4, $16, $0
      blez       $2, .L8009CD48
       addu      $5, $2, $0
      lw         $4, 0x48($29)
      lw         $6, 0x38($29)
      lw         $7, 0x3C($29)
      lw         $2, 0x40($29)
      sw         $4, 0x0($18)
      sw         $2, 0x10($29)
      lw         $2, 0x44($29)
      jal        func_8009C47C
       sw        $2, 0x14($29)
      sw         $2, 0x4($18)
      beqz       $20, .L8009CD44
       sw        $0, 0x8($18)
      addiu      $2, $19, 0x18
      sw         $2, 0x0($20)
  .L8009CD44:
      addiu      $17, $0, 0x1
  .L8009CD48:
      addu       $2, $17, $0
  .L8009CD4C:
      lw         $31, 0x64($29)
      lw         $20, 0x60($29)
      lw         $19, 0x5C($29)
      lw         $18, 0x58($29)
      lw         $17, 0x54($29)
      lw         $16, 0x50($29)
      jr         $31
       addiu     $29, $29, 0x68
.end func_8009CC84

.globl func_8009CD6C
.ent func_8009CD6C
func_8009CD6C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lbu        $2, 0x0($4)
      beqz       $2, .L8009CDD0
       addu      $3, $4, $0
      addiu      $7, $0, 0x2C
      lbu        $2, 0x0($3)
  .L8009CD88:
      beq        $2, $7, .L8009CDA0
       nop
      addiu      $3, $3, 0x1
      lbu        $2, 0x0($3)
      bnez       $2, .L8009CD88
       nop
  .L8009CDA0:
      beqz       $2, .L8009CDD0
       addiu     $2, $3, -0x3
      bne        $4, $2, .L8009CDC0
       nop
      jal        func_8009CBA0
       nop
      j          .L8009CDD8
       nop
  .L8009CDC0:
      jal        func_8009CA7C
       nop
      j          .L8009CDD8
       nop
  .L8009CDD0:
      jal        func_8009CC84
       nop
  .L8009CDD8:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009CD6C

.globl func_8009CDE4
.ent func_8009CDE4
func_8009CDE4:
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      lw         $8, 0x4($4)
      lui        $2, (0x91A2B3C5 >> 16)
      ori        $2, $2, (0x91A2B3C5 & 0xFFFF)
      multu      $8, $2
      lui        $2, (0x88888889 >> 16)
      ori        $2, $2, (0x88888889 & 0xFFFF)
      mfhi       $9
      srl        $6, $9, 11
      sll        $3, $6, 3
      subu       $3, $3, $6
      sll        $3, $3, 5
      addu       $3, $3, $6
      sll        $3, $3, 4
      subu       $4, $8, $3
      multu      $4, $2
      addu       $4, $5, $0
      mfhi       $9
      srl        $7, $9, 5
      sll        $2, $7, 4
      subu       $2, $2, $7
      sll        $2, $2, 2
      addu       $3, $3, $2
      subu       $8, $8, $3
      lui        $2, %hi(D_800EC934)
      addiu      $5, $2, %lo(D_800EC934)
      jal        func_80016580
       sw        $8, 0x10($29)
      lw         $31, 0x18($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x20
.end func_8009CDE4

.globl func_8009CE68
.ent func_8009CE68
func_8009CE68:
      addiu      $29, $29, -0x18
      addu       $2, $4, $0
      lui        $3, %hi(D_800EC6B8)
      addu       $4, $5, $0
      sw         $31, 0x10($29)
      lw         $6, 0x4($2)
      jal        func_80016580
       addiu     $5, $3, %lo(D_800EC6B8)
      lw         $31, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009CE68

.globl func_8009CE98
.ent func_8009CE98
func_8009CE98:
      jr         $31
       addiu     $2, $0, -0x2
.end func_8009CE98

.globl func_8009CEA0
.ent func_8009CEA0
func_8009CEA0:
      jr         $31
       addiu     $2, $0, -0x2
.end func_8009CEA0

.globl func_8009CEA8
.ent func_8009CEA8
func_8009CEA8:
      addiu      $29, $29, -0x50
      sw         $19, 0x44($29)
      addu       $19, $5, $0
      sltiu      $6, $6, 0x1E
      sw         $31, 0x48($29)
      sw         $18, 0x40($29)
      sw         $17, 0x3C($29)
      beqz       $6, .L8009CED4
       sw        $16, 0x38($29)
      j          .L8009CF80
       addiu     $2, $0, -0x9
  .L8009CED4:
      addiu      $6, $29, 0x28
      addiu      $7, $29, 0x2C
      lw         $18, 0x0($4)
      addiu      $2, $29, 0x30
      sw         $2, 0x10($29)
      addiu      $2, $29, 0x34
      sw         $2, 0x14($29)
      lw         $5, 0x4($4)
      jal        func_8009C4FC
       addu      $4, $18, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L8009CF80
       addiu     $2, $0, -0x4
      lw         $5, 0x28($29)
      jal        func_8009C22C
       addu      $4, $18, $0
      jal        func_8009C44C
       addu      $4, $2, $0
      addu       $4, $18, $0
      lw         $5, 0x28($29)
      jal        func_8009C2F0
       addu      $17, $2, $0
      addu       $4, $18, $0
      lw         $5, 0x28($29)
      jal        func_8009C0F0
       addu      $16, $2, $0
      jal        func_8009C1FC
       addu      $4, $2, $0
      addu       $4, $19, $0
      lui        $5, %hi(D_800EC968)
      sw         $2, 0x10($29)
      sw         $18, 0x14($29)
      lw         $2, 0x2C($29)
      addiu      $5, $5, %lo(D_800EC968)
      sw         $2, 0x18($29)
      lw         $2, 0x30($29)
      addu       $6, $17, $0
      sw         $2, 0x1C($29)
      lw         $2, 0x34($29)
      addu       $7, $16, $0
      jal        func_80016580
       sw        $2, 0x20($29)
      addiu      $2, $0, 0x1
  .L8009CF80:
      lw         $31, 0x48($29)
      lw         $19, 0x44($29)
      lw         $18, 0x40($29)
      lw         $17, 0x3C($29)
      lw         $16, 0x38($29)
      jr         $31
       addiu     $29, $29, 0x50
.end func_8009CEA8

.globl func_8009CF9C
.ent func_8009CF9C
func_8009CF9C:
      jr         $31
       addiu     $2, $0, -0x2
.end func_8009CF9C

.globl func_8009CFA4
.ent func_8009CFA4
func_8009CFA4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      addu       $8, $4, $0
      addu       $3, $5, $0
      addu       $4, $6, $0
      sltiu      $2, $3, 0x8
      beqz       $2, .L8009D050
       addu      $5, $7, $0
      lui        $2, %hi(jtbl_800F4DC0)
      addiu      $2, $2, %lo(jtbl_800F4DC0)
      sll        $3, $3, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8009CFE0
.L8009CFE0:
      jal        func_8009C5D4
       addu      $6, $8, $0
      j          .L8009D054
       nop
  .globl .L8009CFF0
.L8009CFF0:
      jal        func_8009C79C
       addu      $6, $8, $0
      j          .L8009D054
       nop
  .globl .L8009D000
.L8009D000:
      jal        func_8009CA70
       addu      $6, $8, $0
      j          .L8009D054
       nop
  .globl .L8009D010
.L8009D010:
      jal        func_8009CA7C
       addu      $6, $8, $0
      j          .L8009D054
       nop
  .globl .L8009D020
.L8009D020:
      jal        func_8009CBA0
       addu      $6, $8, $0
      j          .L8009D054
       nop
  .globl .L8009D030
.L8009D030:
      jal        func_8009CC84
       addu      $6, $8, $0
      j          .L8009D054
       nop
  .globl .L8009D040
.L8009D040:
      jal        func_8009CD6C
       addu      $6, $8, $0
      j          .L8009D054
       nop
  .globl .L8009D050
.L8009D050:
      addiu      $2, $0, -0x4
  .L8009D054:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009CFA4

.globl func_8009D060
.ent func_8009D060
func_8009D060:
      addiu      $29, $29, -0x18
      sltiu      $2, $5, 0x8
      beqz       $2, .L8009D104
       sw        $31, 0x10($29)
      lui        $2, %hi(jtbl_800F4DE0)
      addiu      $2, $2, %lo(jtbl_800F4DE0)
      sll        $3, $5, 2
      addu       $3, $3, $2
      lw         $2, 0x0($3)
      jr         $2
       nop
  .globl .L8009D08C
.L8009D08C:
      addu       $5, $6, $0
      jal        func_8009CDE4
       addu      $6, $7, $0
      j          .L8009D108
       nop
  .globl .L8009D0A0
.L8009D0A0:
      addu       $5, $6, $0
      jal        func_8009CE68
       addu      $6, $7, $0
      j          .L8009D108
       nop
  .globl .L8009D0B4
.L8009D0B4:
      xori       $5, $5, 0x3
      jal        func_8009CE98
       sltiu     $5, $5, 0x1
      j          .L8009D108
       nop
  .globl .L8009D0C8
.L8009D0C8:
      addu       $5, $6, $0
      jal        func_8009CEA0
       addu      $6, $7, $0
      j          .L8009D108
       nop
  .globl .L8009D0DC
.L8009D0DC:
      addu       $5, $6, $0
      jal        func_8009CEA8
       addu      $6, $7, $0
      j          .L8009D108
       nop
  .globl .L8009D0F0
.L8009D0F0:
      addu       $5, $6, $0
      jal        func_8009CF9C
       addu      $6, $7, $0
      j          .L8009D108
       nop
  .L8009D104:
      addiu      $2, $0, -0x4
  .L8009D108:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_8009D060

.globl func_8009D114
.ent func_8009D114
func_8009D114:
      beqz       $2, .L8009D194
       addu      $16, $21, $0
      addiu      $18, $29, 0x10
      addu       $17, $21, $20
      slti       $2, $19, 0x3
      beqz       $2, .L8009D198
       addiu     $2, $0, 0x1
      lbu        $4, 0x0($16)
      jal        func_80013180
       nop
      beql       $2, $0, .L8009D194
.end func_8009D114
