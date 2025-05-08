.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

.globl func_800A2280
.ent func_800A2280
func_800A2280:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $18, 0x18($29)
      addu       $18, $5, $0
      sw         $16, 0x10($29)
      addu       $16, $0, $0
      addiu      $4, $0, 0x20
      sw         $31, 0x1C($29)
      jal        func_80052504
       addu      $5, $16, $0
      addu       $3, $2, $0
      beqz       $3, .L800A22DC
       lui       $2, (0x10001 >> 16)
      ori        $2, $2, (0x10001 & 0xFFFF)
      addu       $16, $3, $0
      sw         $2, 0x0($16)
      lui        $2, %hi(D_800F5380)
      addiu      $2, $2, %lo(D_800F5380)
      sw         $2, 0x4($16)
      sw         $16, 0x8($16)
      sw         $17, 0xC($16)
      sw         $18, 0x1C($16)
  .L800A22DC:
      addu       $2, $16, $0
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A2280

.globl func_800A22F8
.ent func_800A22F8
func_800A22F8:
      addiu      $29, $29, -0x28
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $19, 0x1C($29)
      addu       $19, $5, $0
      sw         $17, 0x14($29)
      addu       $17, $0, $0
      sw         $31, 0x24($29)
      sw         $18, 0x18($29)
      sw         $16, 0x10($29)
      lw         $4, 0x4($19)
      jal        func_800524E8
       addu      $5, $17, $0
      addu       $18, $2, $0
      beqz       $18, .L800A2378
       addiu     $16, $0, -0x5
      lw         $2, 0xC($19)
      jalr       $2
       addu      $4, $18, $0
      lw         $4, 0x8($19)
      jal        func_80052504
       addu      $5, $17, $0
      addu       $17, $2, $0
      beqz       $17, .L800A2374
       addiu     $16, $0, 0x1
      sw         $18, 0x14($20)
      addu       $18, $0, $0
      sw         $17, 0x18($20)
      addu       $17, $18, $0
      j          .L800A2378
       sw        $19, 0x10($20)
  .L800A2374:
      addiu      $16, $0, -0x5
  .L800A2378:
      jal        func_80052540
       addu      $4, $17, $0
      jal        func_80052540
       addu      $4, $18, $0
      addu       $2, $16, $0
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A22F8

.globl func_800A23AC
.ent func_800A23AC
func_800A23AC:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x1C($16)
      andi       $2, $2, 0x10
      bnez       $2, .L800A23E8
       nop
      lw         $4, 0xC($16)
      beqz       $4, .L800A23E8
       nop
      lw         $2, 0x4($4)
      lw         $2, 0x4($2)
      jalr       $2
       addiu     $5, $0, 0x1
  .L800A23E8:
      lw         $4, 0x18($16)
      jal        func_80052540
       nop
      lw         $4, 0x14($16)
      jal        func_80052540
       nop
      jal        func_80052540
       addu      $4, $16, $0
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A23AC

.globl func_800A2418
.ent func_800A2418
func_800A2418:
      addiu      $29, $29, -0x30
      sw         $16, 0x20($29)
      addu       $16, $4, $0
      sw         $31, 0x28($29)
      sw         $17, 0x24($29)
      lw         $4, 0x14($16)
      lw         $17, 0x10($16)
      lw         $5, 0x18($16)
      lw         $2, 0x14($17)
      jalr       $2
       nop
      lw         $2, 0x18($16)
      sw         $2, 0x10($29)
      lw         $2, 0x8($17)
      sw         $2, 0x14($29)
      lw         $4, 0xC($16)
      lw         $2, 0x4($4)
      addiu      $5, $29, 0x10
      lw         $2, 0xC($2)
      jalr       $2
       addiu     $6, $29, 0x18
      addu       $4, $2, $0
      bltz       $4, .L800A248C
       nop
      lw         $3, 0x18($29)
      lw         $2, 0x8($17)
      bne        $3, $2, .L800A248C
       addiu     $4, $0, -0x9
      addiu      $4, $0, 0x1
  .L800A248C:
      lw         $31, 0x28($29)
      lw         $17, 0x24($29)
      lw         $16, 0x20($29)
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x30
.end func_800A2418

.globl func_800A24A4
.ent func_800A24A4
func_800A24A4:
      addiu      $29, $29, -0x78
      sw         $19, 0x6C($29)
      addu       $19, $4, $0
      sw         $31, 0x70($29)
      sw         $18, 0x68($29)
      sw         $17, 0x64($29)
      sw         $16, 0x60($29)
      lw         $4, 0x14($19)
      lw         $18, 0x10($19)
      lw         $5, 0x18($19)
      lw         $2, 0x14($18)
      jalr       $2
       nop
      lw         $4, 0x8($18)
      sltiu      $2, $4, 0x41
      bnez       $2, .L800A24F4
       addiu     $17, $29, 0x10
      jal        func_800524E8
       addu      $5, $0, $0
      addu       $17, $2, $0
  .L800A24F4:
      beqz       $17, .L800A256C
       addiu     $5, $29, 0x50
      sw         $17, 0x50($29)
      lw         $2, 0x8($18)
      sw         $2, 0x54($29)
      lw         $4, 0xC($19)
      lw         $2, 0x4($4)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $6, $29, 0x58
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bne        $16, $2, .L800A255C
       nop
      lw         $3, 0x58($29)
      lw         $2, 0x54($29)
      bnel       $3, $2, .L800A2570
       addiu     $16, $0, -0x25
      lw         $5, 0x18($19)
      lw         $6, 0x8($18)
      jal        func_80013EC0
       addu      $4, $17, $0
      beqz       $2, .L800A2574
       addiu     $2, $29, 0x10
      j          .L800A2574
       addiu     $16, $0, -0x25
  .L800A255C:
      bnez       $16, .L800A2574
       addiu     $2, $29, 0x10
      j          .L800A2574
       addiu     $16, $0, -0x25
  .L800A256C:
      addiu      $16, $0, -0x5
  .L800A2570:
      addiu      $2, $29, 0x10
  .L800A2574:
      beq        $17, $2, .L800A2588
       addu      $2, $16, $0
      jal        func_80052540
       addu      $4, $17, $0
      addu       $2, $16, $0
  .L800A2588:
      lw         $31, 0x70($29)
      lw         $19, 0x6C($29)
      lw         $18, 0x68($29)
      lw         $17, 0x64($29)
      lw         $16, 0x60($29)
      jr         $31
       addiu     $29, $29, 0x78
.end func_800A24A4

.globl func_800A25A4
.ent func_800A25A4
func_800A25A4:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $2, 0x10($4)
      lw         $4, 0x14($4)
      lw         $2, 0x10($2)
      jalr       $2
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A25A4

.globl func_800A25CC
.ent func_800A25CC
func_800A25CC:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      bnez       $17, .L800A25EC
       sw        $16, 0x10($29)
      j          .L800A262C
       addiu     $16, $0, -0x4
  .L800A25EC:
      lw         $2, 0xC($17)
      beqz       $2, .L800A2624
       addiu     $16, $0, 0x1
      lw         $2, 0x1C($17)
      andi       $2, $2, 0x2
      beqz       $2, .L800A2618
       nop
      jal        func_800A2418
       addu      $4, $17, $0
      j          .L800A2624
       addu      $16, $2, $0
  .L800A2618:
      jal        func_800A24A4
       addu      $4, $17, $0
      addu       $16, $2, $0
  .L800A2624:
      jal        func_800A23AC
       addu      $4, $17, $0
  .L800A262C:
      addu       $2, $16, $0
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A25CC

.globl func_800A2644
.ent func_800A2644
func_800A2644:
      addiu      $29, $29, -0x30
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $17, 0x1C($29)
      addu       $17, $5, $0
      sw         $19, 0x24($29)
      addu       $19, $6, $0
      sw         $31, 0x28($29)
      beqz       $18, .L800A2680
       sw        $16, 0x18($29)
      beqz       $17, .L800A26DC
       addiu     $16, $0, -0x4
      lw         $2, 0x0($17)
      bnez       $2, .L800A2688
       addu      $5, $17, $0
  .L800A2680:
      j          .L800A26DC
       addiu     $16, $0, -0x4
  .L800A2688:
      lw         $4, 0xC($18)
      lw         $2, 0x4($4)
      sw         $0, 0x10($29)
      lw         $2, 0x8($2)
      jalr       $2
       addiu     $6, $29, 0x10
      addu       $16, $2, $0
      bltz       $16, .L800A26E0
       addu      $2, $16, $0
      lw         $2, 0x1C($18)
      andi       $2, $2, 0x1
      beqz       $2, .L800A26CC
       nop
      lw         $5, 0x0($17)
      lw         $6, 0x10($29)
      jal        func_800A25A4
       addu      $4, $18, $0
  .L800A26CC:
      beqz       $19, .L800A26E0
       addu      $2, $16, $0
      lw         $2, 0x10($29)
      sw         $2, 0x0($19)
  .L800A26DC:
      addu       $2, $16, $0
  .L800A26E0:
      lw         $31, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800A2644

.globl func_800A26FC
.ent func_800A26FC
func_800A26FC:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      beqz       $16, .L800A2734
       sw        $31, 0x1C($29)
      beqz       $17, .L800A2770
       addiu     $2, $0, -0x4
      lw         $5, 0x0($17)
      bnez       $5, .L800A273C
       nop
  .L800A2734:
      j          .L800A2770
       addiu     $2, $0, -0x4
  .L800A273C:
      lw         $2, 0x1C($16)
      andi       $2, $2, 0x2
      beqz       $2, .L800A2758
       nop
      lw         $6, 0x4($17)
      jal        func_800A25A4
       addu      $4, $16, $0
  .L800A2758:
      lw         $4, 0xC($16)
      lw         $2, 0x4($4)
      addu       $5, $17, $0
      lw         $2, 0xC($2)
      jalr       $2
       addu      $6, $18, $0
  .L800A2770:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A26FC

.globl func_800A2788
.ent func_800A2788
func_800A2788:
      addiu      $29, $29, -0x18
      bnez       $4, .L800A279C
       sw        $31, 0x10($29)
      j          .L800A27B0
       addiu     $2, $0, -0x4
  .L800A279C:
      lw         $4, 0xC($4)
      lw         $2, 0x4($4)
      lw         $2, 0x10($2)
      jalr       $2
       nop
  .L800A27B0:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A2788

.globl func_800A27BC
.ent func_800A27BC
func_800A27BC:
      jr         $31
       addiu     $2, $0, -0x3
.end func_800A27BC

.globl func_800A27C4
.ent func_800A27C4
func_800A27C4:
      addiu      $29, $29, -0x18
      bnez       $4, .L800A27D8
       sw        $31, 0x10($29)
      j          .L800A27EC
       addiu     $2, $0, -0x4
  .L800A27D8:
      lw         $4, 0xC($4)
      lw         $2, 0x4($4)
      lw         $2, 0x18($2)
      jalr       $2
       nop
  .L800A27EC:
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A27C4

.globl func_800A27F8
.ent func_800A27F8
func_800A27F8:
      jr         $31
       addiu     $2, $0, -0x3
.end func_800A27F8

.globl func_800A2800
.ent func_800A2800
func_800A2800:
      addu       $6, $0, $0
      lui        $2, %hi(D_800F53A0)
      addiu      $3, $2, %lo(D_800F53A0)
  .L800A280C:
      lw         $2, 0x0($3)
      bnel       $2, $4, .L800A2828
       addiu     $6, $6, 0x1
      bnel       $5, $0, .L800A2820
       sw        $3, 0x0($5)
  .L800A2820:
      jr         $31
       addiu     $2, $0, 0x1
  .L800A2828:
      beqz       $6, .L800A280C
       addiu     $3, $3, 0x18
      jr         $31
       addu      $2, $0, $0
.end func_800A2800

.globl func_800A2838
.ent func_800A2838
func_800A2838:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      addu       $5, $6, $0
      sw         $18, 0x18($29)
      addu       $18, $7, $0
      sw         $31, 0x1C($29)
      beqz       $4, .L800A286C
       sw        $16, 0x10($29)
      beql       $17, $0, .L800A28D0
       addiu     $17, $0, -0x4
      bnez       $18, .L800A2874
       andi      $3, $5, 0x3
  .L800A286C:
      j          .L800A28D0
       addiu     $17, $0, -0x4
  .L800A2874:
      addiu      $2, $0, 0x3
      bne        $3, $2, .L800A2888
       nop
      j          .L800A28D0
       addiu     $17, $0, -0x3
  .L800A2888:
      jal        func_800A2280
       nop
      addu       $16, $2, $0
      beqz       $16, .L800A28CC
       addu      $4, $16, $0
      jal        func_800A22F8
       addu      $5, $17, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800A28BC
       nop
      j          .L800A28D0
       sw        $16, 0x0($18)
  .L800A28BC:
      jal        func_800A23AC
       addu      $4, $16, $0
      j          .L800A28D4
       addu      $2, $17, $0
  .L800A28CC:
      addiu      $17, $0, -0x5
  .L800A28D0:
      addu       $2, $17, $0
  .L800A28D4:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A2838

.globl func_800A28EC
.ent func_800A28EC
func_800A28EC:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      addu       $4, $5, $0
      addiu      $5, $29, 0x10
      sw         $17, 0x1C($29)
      addu       $17, $6, $0
      sw         $18, 0x20($29)
      sw         $31, 0x24($29)
      jal        func_800A2800
       addu      $18, $7, $0
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800A293C
       addu      $4, $16, $0
      lw         $5, 0x10($29)
      addu       $6, $17, $0
      jal        func_800A2838
       addu      $7, $18, $0
      addu       $3, $2, $0
  .L800A293C:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A28EC

.globl func_800A2958
.ent func_800A2958
func_800A2958:
      sw         $4, 0x30($29)
      addu       $16, $4, $0
      lbu        $2, 0x0($16)
      beqz       $2, .L800A29AC
       addu      $17, $16, $0
      addiu      $4, $0, 0x5C
      addiu      $3, $0, 0x22
      andi       $2, $2, 0xFF
      bne        $2, $4, .L800A2994
       nop
.end func_800A2958

.globl func_800A2980
.ent func_800A2980
func_800A2980:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
  .L800A2994:
      addiu      $4, $0, 0x14
      sw         $31, 0x18($29)
      jal        func_800524E8
       addu      $5, $0, $0
      beqz       $2, .L800A29B4
       nop
  .L800A29AC:
      sw         $16, 0x0($2)
      sw         $17, 0x4($2)
  .L800A29B4:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A2980

.globl func_800A29C8
.ent func_800A29C8
func_800A29C8:
      addiu      $2, $0, 0x1
      sw         $0, 0x8($4)
      sw         $0, 0xC($4)
      jr         $31
       sw        $0, 0x10($4)
.end func_800A29C8

.globl func_800A29DC
.ent func_800A29DC
func_800A29DC:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_80052540
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A29DC

.globl func_800A29F8
.ent func_800A29F8
func_800A29F8:
      lui        $2, %hi(D_801256C0)
      lw         $3, %lo(D_801256C0)($2)
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      lw         $2, 0x0($3)
      lw         $4, 0x4($3)
      lw         $2, 0x2C($2)
      jalr       $2
       addiu     $5, $29, 0x10
      addiu      $3, $0, 0x1
      bne        $2, $3, .L800A2A2C
       addu      $2, $0, $0
      lw         $2, 0x10($29)
  .L800A2A2C:
      lw         $31, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A29F8

.globl func_800A2A38
.ent func_800A2A38
func_800A2A38:
      beqz       $5, .L800A2A8C
       addiu     $3, $0, 0x1
      lui        $2, %hi(D_800F541C)
      addiu      $2, $2, %lo(D_800F541C)
      addiu      $4, $2, 0x30
  .L800A2A4C:
      lw         $6, 0x0($2)
      lw         $7, 0x4($2)
      lw         $8, 0x8($2)
      lw         $9, 0xC($2)
      sw         $6, 0x0($5)
      sw         $7, 0x4($5)
      sw         $8, 0x8($5)
      sw         $9, 0xC($5)
      addiu      $2, $2, 0x10
      bne        $2, $4, .L800A2A4C
       addiu     $5, $5, 0x10
      lw         $6, 0x0($2)
      lw         $7, 0x4($2)
      sw         $6, 0x0($5)
      j          .L800A2A90
       sw        $7, 0x4($5)
  .L800A2A8C:
      addiu      $3, $0, -0x4
  .L800A2A90:
      jr         $31
       addu      $2, $3, $0
.end func_800A2A38

.globl func_800A2A98
.ent func_800A2A98
func_800A2A98:
      jr         $31
       addiu     $2, $0, 0x1
.end func_800A2A98

.globl func_800A2AA0
.ent func_800A2AA0
func_800A2AA0:
      addiu      $29, $29, -0x20
      addu       $4, $0, $0
      lui        $2, %hi(D_801256C0)
      lw         $2, %lo(D_801256C0)($2)
      addu       $5, $4, $0
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      bnez       $2, .L800A2B40
       sw        $16, 0x10($29)
      slt        $2, $5, $7
      beqz       $2, .L800A2AF4
       addu      $3, $4, $0
      addiu      $8, $0, 0x2010
  .L800A2AD4:
      lw         $2, 0x0($6)
      bne        $2, $8, .L800A2AE8
       addiu     $3, $3, 0x1
      lw         $4, 0x4($6)
      lw         $5, 0x8($6)
  .L800A2AE8:
      slt        $2, $3, $7
      bnez       $2, .L800A2AD4
       addiu     $6, $6, 0xC
  .L800A2AF4:
      beqz       $4, .L800A2B44
       addiu     $17, $0, -0x10
      jal        func_800A2980
       nop
      addu       $16, $2, $0
      beqz       $16, .L800A2B44
       addiu     $17, $0, -0x5
      jal        func_800A29C8
       addu      $4, $16, $0
      addu       $17, $2, $0
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800A2B30
       lui       $2, %hi(D_801256C0)
      j          .L800A2B44
       sw        $16, %lo(D_801256C0)($2)
  .L800A2B30:
      jal        func_800A29DC
       addu      $4, $16, $0
      j          .L800A2B48
       addu      $2, $17, $0
  .L800A2B40:
      addiu      $17, $0, -0x12
  .L800A2B44:
      addu       $2, $17, $0
  .L800A2B48:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A2AA0

.globl func_800A2B5C
.ent func_800A2B5C
func_800A2B5C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      lui        $16, %hi(D_801256C0)
      lw         $4, %lo(D_801256C0)($16)
      beqz       $4, .L800A2B80
       sw        $31, 0x14($29)
      jal        func_800A29DC
       nop
      sw         $0, %lo(D_801256C0)($16)
  .L800A2B80:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addiu      $2, $0, 0x1
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A2B5C

.globl func_800A2B94
.ent func_800A2B94
func_800A2B94:
      sw         $0, 0x30($29)
      beqz       $18, .L800A2BAC
       nop
      lw         $2, 0x38($29)
      sw         $2, 0x0($18)
      sw         $0, 0x38($29)
  .L800A2BAC:
      lw         $4, 0x30($29)
      jal        func_80053040
       nop
      lw         $4, 0x38($29)
      jal        func_80053040
.end func_800A2B94

.globl func_800A2BC0
.ent func_800A2BC0
func_800A2BC0:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x18($16)
      bnez       $2, .L800A2BF8
       addiu     $4, $0, 0x4C
      lhu        $3, 0x22($16)
      addiu      $2, $16, 0x170
      sw         $0, 0x170($16)
      sw         $2, 0x18($16)
      addiu      $3, $3, 0x1
      j          .L800A2C28
       sh        $3, 0x22($16)
  .L800A2BF8:
      jal        func_80052504
       addu      $5, $0, $0
      addu       $4, $2, $0
      beqz       $4, .L800A2C28
       addu      $2, $4, $0
      lhu        $2, 0x22($16)
      lw         $3, 0x18($16)
      addiu      $2, $2, 0x1
      sh         $2, 0x22($16)
      sw         $4, 0x0($3)
      sw         $4, 0x18($16)
      addu       $2, $4, $0
  .L800A2C28:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A2BC0

.globl func_800A2C38
.ent func_800A2C38
func_800A2C38:
      addiu      $4, $4, 0x170
      xor        $2, $5, $4
      jr         $31
       sltiu     $2, $2, 0x1
.end func_800A2C38

.globl func_800A2C48
.ent func_800A2C48
func_800A2C48:
      addiu      $29, $29, -0x20
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x1C($29)
      sw         $16, 0x10($29)
      lw         $4, 0xC($17)
      jal        func_80052540
       addu      $16, $6, $0
      lw         $4, 0x14($17)
      jal        func_80052540
       andi      $16, $16, 0xFF
      lw         $4, 0x4($17)
      jal        func_80052540
       nop
      jal        func_800A3DD4
       addu      $4, $17, $0
      beqz       $16, .L800A2CC4
       addiu     $3, $18, 0x170
      beqz       $3, .L800A2CC4
       nop
  .L800A2CA0:
      lw         $2, 0x0($3)
      bnel       $2, $17, .L800A2CBC
       addu      $3, $2, $0
      lw         $2, 0x0($17)
      sw         $2, 0x0($3)
      j          .L800A2CC4
       sw        $0, 0x0($17)
  .L800A2CBC:
      bnez       $3, .L800A2CA0
       nop
  .L800A2CC4:
      lbu        $2, 0x4A($17)
      beqz       $2, .L800A2CE0
       addu      $4, $18, $0
      lw         $4, 0x8($17)
      jal        func_80052540
       nop
      addu       $4, $18, $0
  .L800A2CE0:
      jal        func_800A2C38
       addu      $5, $17, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L800A2CFC
       nop
      jal        func_80052540
       addu      $4, $17, $0
  .L800A2CFC:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A2C48

.globl func_800A2D14
.ent func_800A2D14
func_800A2D14:
      jr         $31
       sw        $5, 0x3C($4)
.end func_800A2D14

.globl func_800A2D1C
.ent func_800A2D1C
func_800A2D1C:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $4, 0x3C($4)
      jal        func_8004F810
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A2D1C

.globl func_800A2D3C
.ent func_800A2D3C
func_800A2D3C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      addu       $4, $5, $0
      sltiu      $2, $4, 0x101
      beqz       $2, .L800A2D64
       sw        $31, 0x14($29)
      sb         $0, 0x14($16)
      j          .L800A2D84
       addiu     $2, $16, 0x18
  .L800A2D64:
      jal        func_800524E8
       addiu     $5, $0, 0x2
      beqz       $2, .L800A2D80
       sw        $2, 0x18($16)
      addiu      $3, $0, 0x1
      j          .L800A2D84
       sb        $3, 0x14($16)
  .L800A2D80:
      addu       $2, $0, $0
  .L800A2D84:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A2D3C

.globl func_800A2D94
.ent func_800A2D94
func_800A2D94:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $3, 0x10($16)
      addiu      $2, $0, 0x3
      bne        $3, $2, .L800A2DD4
       nop
      lbu        $2, 0x14($16)
      beql       $2, $0, .L800A2DD4
       sw        $0, 0x10($16)
      lw         $4, 0x18($16)
      jal        func_80052540
       nop
      sb         $0, 0x14($16)
      sw         $0, 0x10($16)
  .L800A2DD4:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A2D94

.globl func_800A2DE4
.ent func_800A2DE4
func_800A2DE4:
      addiu      $29, $29, -0x38
      sw         $18, 0x18($29)
      addu       $18, $4, $0
      sw         $20, 0x20($29)
      addu       $20, $5, $0
      sw         $22, 0x28($29)
      addiu      $22, $0, 0x2
      sw         $21, 0x24($29)
      addiu      $21, $0, 0x18
      sw         $23, 0x2C($29)
      addiu      $23, $0, 0x15
      sw         $31, 0x30($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $19, 0x3C($18)
  .L800A2E24:
      jal        func_8004FA7C
       addu      $4, $19, $0
      addu       $4, $19, $0
      jal        func_8004FAD0
       addu      $17, $2, $0
      lw         $3, 0x4C($18)
      beq        $3, $22, .L800A2ECC
       nop
      beqz       $17, .L800A2EB8
       nop
      lbu        $16, 0x0($2)
      addiu      $2, $17, -0x1
      sltu       $2, $2, $16
      bnez       $2, .L800A2E88
       addu      $4, $19, $0
      jal        func_8004FB58
       addiu     $5, $16, 0x1
      bnez       $16, .L800A2E24
       nop
      bnel       $20, $21, .L800A2E80
       sw        $20, 0x38($18)
      lw         $2, 0x48($18)
      sw         $2, 0x38($18)
  .L800A2E80:
      j          .L800A2EF4
       addiu     $2, $0, 0x1
  .L800A2E88:
      bnel       $20, $21, .L800A2E90
       sw        $20, 0x48($18)
  .L800A2E90:
      addu       $4, $19, $0
      addu       $5, $17, $0
      addiu      $2, $16, 0x1
      subu       $2, $2, $5
      sw         $2, 0x44($18)
      sw         $22, 0x4C($18)
      jal        func_8004FB58
       sw        $23, 0x38($18)
      j          .L800A2EF4
       addu      $2, $0, $0
  .L800A2EB8:
      bnel       $20, $21, .L800A2EC0
       sw        $20, 0x48($18)
  .L800A2EC0:
      sw         $23, 0x38($18)
      j          .L800A2EF4
       addu      $2, $0, $0
  .L800A2ECC:
      lw         $5, 0x44($18)
      sltu       $2, $17, $5
      bnez       $2, .L800A2EEC
       subu      $2, $5, $17
      jal        func_8004FB58
       addu      $4, $19, $0
      j          .L800A2E24
       sw        $0, 0x4C($18)
  .L800A2EEC:
      j          .L800A2E24
       sw        $2, 0x44($18)
  .L800A2EF4:
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
.end func_800A2DE4

.globl func_800A2F20
.ent func_800A2F20
func_800A2F20:
      addiu      $29, $29, -0x20
      addu       $2, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $16, 0x3C($2)
      jal        func_800A2D94
       addiu     $4, $2, 0x3C
      jal        func_8004FA7C
       addu      $4, $16, $0
      blez       $2, .L800A2F64
       addu      $2, $0, $0
      jal        func_8004F938
       addu      $4, $16, $0
      sb         $2, 0x0($17)
      addiu      $2, $0, 0x1
  .L800A2F64:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A2F20

.globl func_800A2F78
.ent func_800A2F78
func_800A2F78:
      addiu      $29, $29, -0x38
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $30, 0x30($29)
      addu       $30, $5, $0
      sw         $31, 0x34($29)
      sw         $23, 0x2C($29)
      sw         $22, 0x28($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $20, 0x3C($19)
      addu       $23, $6, $0
      jal        func_8004FA7C
       addu      $4, $20, $0
      addiu      $4, $19, 0x3C
      jal        func_800A2D94
       addu      $18, $2, $0
      lw         $2, 0x4C($19)
      bnez       $2, .L800A3048
       nop
      beqz       $18, .L800A30E0
       addu      $4, $0, $0
      jal        func_8004FAD0
       addu      $4, $20, $0
      addu       $17, $2, $0
      lbu        $21, 0x0($17)
      addiu      $22, $18, -0x1
      andi       $16, $21, 0xFF
      sltu       $2, $22, $16
      bnez       $2, .L800A301C
       addiu     $17, $17, 0x1
      addu       $4, $20, $0
      jal        func_8004FB58
       addiu     $5, $16, 0x1
      addiu      $4, $0, 0x1
      sw         $17, 0x0($23)
      j          .L800A30E8
       sb        $21, 0x0($30)
  .L800A301C:
      addiu      $4, $19, 0x54
      addiu      $5, $17, -0x1
      addu       $6, $18, $0
      jal        func_80013F00
       sw        $6, 0x40($19)
      addu       $4, $0, $0
      addiu      $2, $0, 0x1
      sw         $2, 0x4C($19)
      subu       $2, $16, $22
      j          .L800A30E0
       sw        $2, 0x44($19)
  .L800A3048:
      lw         $2, 0x44($19)
      sltu       $2, $18, $2
      bnez       $2, .L800A30A4
       addiu     $17, $19, 0x54
      lw         $16, 0x40($19)
      addu       $4, $20, $0
      jal        func_8004FAD0
       addu      $16, $17, $16
      addu       $4, $16, $0
      lw         $6, 0x44($19)
      jal        func_80013F00
       addu      $5, $2, $0
      lw         $5, 0x44($19)
      jal        func_8004FB58
       addu      $4, $20, $0
      addiu      $2, $0, 0x3
      sw         $2, 0x4C($19)
      addiu      $2, $19, 0x55
      sw         $2, 0x0($23)
      lbu        $2, 0x54($19)
      addiu      $4, $0, 0x1
      j          .L800A30E8
       sb        $2, 0x0($30)
  .L800A30A4:
      lw         $16, 0x40($19)
      addu       $4, $20, $0
      jal        func_8004FAD0
       addu      $16, $17, $16
      addu       $4, $16, $0
      addu       $5, $2, $0
      jal        func_80013F00
       addu      $6, $18, $0
      addu       $4, $0, $0
      lw         $2, 0x40($19)
      lw         $3, 0x44($19)
      addu       $2, $2, $18
      subu       $3, $3, $18
      sw         $2, 0x40($19)
      sw         $3, 0x44($19)
  .L800A30E0:
      sw         $0, 0x0($23)
      sb         $0, 0x0($30)
  .L800A30E8:
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
      addu       $2, $4, $0
      jr         $31
       addiu     $29, $29, 0x38
.end func_800A2F78

.globl func_800A311C
.ent func_800A311C
func_800A311C:
      addiu      $29, $29, -0x38
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $22, 0x28($29)
      addu       $22, $5, $0
      sw         $23, 0x2C($29)
      addu       $23, $6, $0
      sw         $16, 0x10($29)
      addiu      $16, $19, 0x3C
      addu       $4, $16, $0
      sw         $31, 0x30($29)
      sw         $21, 0x24($29)
      sw         $20, 0x20($29)
      sw         $18, 0x18($29)
      jal        func_800A2D94
       sw        $17, 0x14($29)
      lw         $18, 0x3C($19)
      addiu      $21, $0, 0x1
      jal        func_8004FA7C
       addu      $4, $18, $0
      lw         $3, 0x4C($19)
      bnez       $3, .L800A31EC
       addu      $17, $2, $0
      sltu       $2, $17, $22
      bnez       $2, .L800A31A4
       addu      $4, $16, $0
      jal        func_8004FAD0
       addu      $4, $18, $0
      addu       $20, $2, $0
      addu       $4, $18, $0
      jal        func_8004FB58
       addu      $5, $22, $0
      j          .L800A3280
       addu      $2, $21, $0
  .L800A31A4:
      jal        func_800A2D3C
       addu      $5, $22, $0
      addu       $16, $2, $0
      beql       $16, $0, .L800A31E4
       addiu     $21, $0, -0x5
      jal        func_8004FAD0
       addu      $4, $18, $0
      addu       $4, $16, $0
      addu       $5, $2, $0
      jal        func_80013F00
       addu      $6, $17, $0
      sw         $21, 0x4C($19)
      addu       $21, $0, $0
      subu       $2, $22, $17
      sw         $17, 0x40($19)
      sw         $2, 0x44($19)
  .L800A31E4:
      j          .L800A327C
       addu      $20, $0, $0
  .L800A31EC:
      lbu        $2, 0x50($19)
      beqz       $2, .L800A31FC
       addiu     $20, $19, 0x54
      lw         $20, 0x54($19)
  .L800A31FC:
      lw         $2, 0x44($19)
      sltu       $2, $17, $2
      bnez       $2, .L800A3240
       addu      $4, $18, $0
      lw         $16, 0x40($19)
      jal        func_8004FAD0
       addu      $16, $20, $16
      addu       $4, $16, $0
      lw         $6, 0x44($19)
      jal        func_80013F00
       addu      $5, $2, $0
      lw         $5, 0x44($19)
      jal        func_8004FB58
       addu      $4, $18, $0
      addiu      $2, $0, 0x3
      j          .L800A327C
       sw        $2, 0x4C($19)
  .L800A3240:
      lw         $16, 0x40($19)
      addu       $21, $0, $0
      jal        func_8004FAD0
       addu      $16, $20, $16
      addu       $4, $16, $0
      addu       $5, $2, $0
      jal        func_80013F00
       addu      $6, $17, $0
      addu       $20, $21, $0
      lw         $2, 0x40($19)
      lw         $3, 0x44($19)
      addu       $2, $2, $17
      subu       $3, $3, $17
      sw         $2, 0x40($19)
      sw         $3, 0x44($19)
  .L800A327C:
      addu       $2, $21, $0
  .L800A3280:
      sw         $20, 0x0($23)
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
.end func_800A311C

.globl func_800A32B0
.ent func_800A32B0
func_800A32B0:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      addiu      $5, $0, 0x6
      sw         $31, 0x1C($29)
      jal        func_800A311C
       addiu     $6, $29, 0x10
      addu       $5, $2, $0
      addiu      $2, $0, 0x1
      bnel       $5, $2, .L800A335C
       addiu     $5, $0, -0x25
      lw         $4, 0x10($29)
      lbu        $3, 0x0($4)
      addiu      $2, $0, 0x47
      bnel       $3, $2, .L800A335C
       addiu     $5, $0, -0x25
      lbu        $3, 0x1($4)
      addiu      $2, $0, 0x49
      bnel       $3, $2, .L800A335C
       addiu     $5, $0, -0x25
      lbu        $3, 0x2($4)
      addiu      $2, $0, 0x46
      bnel       $3, $2, .L800A335C
       addiu     $5, $0, -0x25
      lbu        $3, 0x3($4)
      addiu      $2, $0, 0x38
      bnel       $3, $2, .L800A335C
       addiu     $5, $0, -0x25
      lbu        $3, 0x4($4)
      addiu      $2, $0, 0x37
      beq        $3, $2, .L800A3338
       addiu     $2, $0, 0x39
      bnel       $3, $2, .L800A335C
       addiu     $5, $0, -0x25
  .L800A3338:
      lbu        $3, 0x5($4)
      addiu      $2, $0, 0x61
      bnel       $3, $2, .L800A335C
       addiu     $5, $0, -0x25
      lbu        $2, 0x4($4)
      addiu      $3, $0, 0x2
      sw         $3, 0x38($16)
      addiu      $2, $2, -0x30
      sh         $2, 0x24($16)
  .L800A335C:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $5, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A32B0

.globl func_800A3370
.ent func_800A3370
func_800A3370:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      addiu      $5, $0, 0x7
      sw         $31, 0x1C($29)
      jal        func_800A311C
       addiu     $6, $29, 0x10
      addu       $5, $2, $0
      addiu      $2, $0, 0x1
      bne        $5, $2, .L800A341C
       nop
      lw         $4, 0x10($29)
      lbu        $2, 0x1($4)
      lbu        $3, 0x0($4)
      sll        $2, $2, 8
      or         $3, $3, $2
      sh         $3, 0x1E($16)
      lbu        $2, 0x3($4)
      lbu        $3, 0x2($4)
      sll        $2, $2, 8
      or         $3, $3, $2
      sh         $3, 0x20($16)
      lbu        $2, 0x5($4)
      sb         $2, 0x26($16)
      lw         $4, 0x10($29)
      lbu        $3, 0x4($4)
      addiu      $2, $0, 0x2
      andi       $3, $3, 0x7
      sllv       $2, $2, $3
      sh         $2, 0x1C($16)
      lbu        $2, 0x4($4)
      andi       $2, $2, 0x80
      beqz       $2, .L800A33FC
       addiu     $3, $0, 0x3
      addiu      $3, $0, 0xC
  .L800A33FC:
      sw         $3, 0x38($16)
      lbu        $3, 0x6($4)
      beqz       $3, .L800A3424
       addiu     $2, $0, 0x31
      beq        $3, $2, .L800A3424
       nop
      j          .L800A3424
       addiu     $5, $0, -0x25
  .L800A341C:
      bltzl      $5, .L800A3424
       addiu     $5, $0, -0x25
  .L800A3424:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $5, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A3370

.globl func_800A3438
.ent func_800A3438
func_800A3438:
      lw         $3, 0x38($4)
      addiu      $2, $0, 0xB
      beq        $3, $2, .L800A3458
       addiu     $2, $0, 0xD
      bne        $3, $2, .L800A346C
       addiu     $3, $0, 0x18
      j          .L800A346C
       addiu     $3, $0, 0x3
  .L800A3458:
      lhu        $2, 0x22($4)
      sltiu      $2, $2, 0x2
      bnez       $2, .L800A346C
       addiu     $3, $0, 0xE
      addiu      $3, $0, 0xF
  .L800A346C:
      jr         $31
       addu      $2, $3, $0
.end func_800A3438

.globl func_800A3474
.ent func_800A3474
func_800A3474:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $6, $0
      andi       $5, $5, 0xFFFF
      sll        $4, $5, 1
      addu       $4, $4, $5
      sw         $31, 0x18($29)
      jal        func_800524E8
       addu      $5, $0, $0
      beql       $2, $0, .L800A34C8
       addiu     $2, $0, -0x5
      sw         $2, 0x0($17)
      lw         $3, 0x38($16)
      addiu      $2, $0, 0xC
      bne        $3, $2, .L800A34C0
       addiu     $4, $0, 0xB
      addiu      $4, $0, 0xD
  .L800A34C0:
      sw         $4, 0x38($16)
      addiu      $2, $0, 0x1
  .L800A34C8:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A3474

.globl func_800A34DC
.ent func_800A34DC
func_800A34DC:
      addiu      $29, $29, -0x30
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $20, 0x28($29)
      addu       $20, $6, $0
      sw         $16, 0x18($29)
      andi       $16, $5, 0xFFFF
      sll        $5, $16, 1
      sw         $17, 0x1C($29)
      addiu      $17, $29, 0x10
      addu       $5, $5, $16
      addu       $6, $17, $0
      sw         $31, 0x2C($29)
      jal        func_800A311C
       sw        $19, 0x24($29)
      addu       $19, $2, $0
      addiu      $2, $0, 0x1
      bne        $19, $2, .L800A3590
       addu      $2, $19, $0
      beqz       $16, .L800A3580
       addu      $7, $0, $0
      addu       $4, $17, $0
      addu       $5, $16, $0
      addu       $6, $20, $0
  .L800A353C:
      lw         $3, 0x0($4)
      lbu        $2, 0x0($3)
      addiu      $3, $3, 0x1
      sb         $2, 0x0($6)
      sw         $3, 0x0($4)
      lbu        $2, 0x0($3)
      addiu      $7, $7, 0x1
      sb         $2, 0x1($6)
      addiu      $2, $3, 0x1
      sw         $2, 0x0($4)
      lbu        $2, 0x1($3)
      addiu      $3, $3, 0x2
      sb         $2, 0x2($6)
      addiu      $6, $6, 0x3
      sltu       $2, $7, $5
      bnez       $2, .L800A353C
       sw        $3, 0x0($4)
  .L800A3580:
      jal        func_800A3438
       addu      $4, $18, $0
      sw         $2, 0x38($18)
      addu       $2, $19, $0
  .L800A3590:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800A34DC

.globl func_800A35B0
.ent func_800A35B0
func_800A35B0:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      addiu      $5, $0, 0xC
      addiu      $6, $29, 0x10
      sw         $31, 0x20($29)
      jal        func_800A311C
       sw        $16, 0x18($29)
      addu       $16, $2, $0
      addiu      $2, $0, 0x1
      bnel       $16, $2, .L800A3670
       addu      $2, $16, $0
      lw         $4, 0x10($29)
      lbu        $3, 0x0($4)
      addu       $4, $4, $2
      addiu      $2, $0, 0xB
      bne        $3, $2, .L800A3668
       sw        $4, 0x10($29)
      lui        $5, %hi(D_800F5540)
      addiu      $5, $5, %lo(D_800F5540)
      jal        func_80013EC0
       addu      $6, $2, $0
      beqz       $2, .L800A3628
       lui       $5, %hi(D_800F554C)
      lw         $4, 0x10($29)
      addiu      $5, $5, %lo(D_800F554C)
      jal        func_80013EC0
       addiu     $6, $0, 0xB
      bnez       $2, .L800A3634
       lui       $5, %hi(D_800F5558)
  .L800A3628:
      addiu      $2, $0, 0x13
      j          .L800A366C
       sw        $2, 0x38($17)
  .L800A3634:
      lw         $4, 0x10($29)
      addiu      $5, $5, %lo(D_800F5558)
      jal        func_80013EC0
       addiu     $6, $0, 0xB
      bnez       $2, .L800A3658
       addu      $4, $17, $0
      addiu      $2, $0, 0x14
      j          .L800A366C
       sw        $2, 0x38($17)
  .L800A3658:
      jal        func_800A2DE4
       addiu     $5, $0, 0x3
      j          .L800A366C
       addu      $16, $2, $0
  .L800A3668:
      addiu      $16, $0, -0x25
  .L800A366C:
      addu       $2, $16, $0
  .L800A3670:
      lw         $31, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A35B0

.globl func_800A3684
.ent func_800A3684
func_800A3684:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      addiu      $5, $29, 0x10
      sw         $31, 0x1C($29)
      jal        func_800A2F78
       addiu     $6, $29, 0x14
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800A36EC
       nop
      lw         $2, 0x14($29)
      lbu        $2, 0x0($2)
      andi       $2, $2, 0x7
      bne        $2, $3, .L800A36E0
       addu      $4, $16, $0
      sb         $3, 0x30($16)
      lw         $2, 0x14($29)
      lbu        $3, 0x2($2)
      lbu        $2, 0x1($2)
      sll        $3, $3, 8
      or         $2, $2, $3
      sw         $2, 0x2C($16)
  .L800A36E0:
      jal        func_800A2DE4
       addiu     $5, $0, 0x3
      addu       $3, $2, $0
  .L800A36EC:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A3684

.globl func_800A3700
.ent func_800A3700
func_800A3700:
      addiu      $29, $29, -0x18
      addiu      $2, $0, 0x1
      addiu      $5, $0, 0x3
      sw         $31, 0x10($29)
      jal        func_800A2DE4
       sb        $2, 0x30($4)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A3700

.globl func_800A3724
.ent func_800A3724
func_800A3724:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      jal        func_800A2DE4
       addiu     $5, $0, 0x3
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A3724

.globl func_800A3740
.ent func_800A3740
func_800A3740:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      addiu      $5, $0, 0x6
      sw         $31, 0x1C($29)
      jal        func_800A311C
       addiu     $6, $29, 0x10
      addu       $5, $2, $0
      addiu      $2, $0, 0x1
      bne        $5, $2, .L800A37F8
       addiu     $2, $0, 0x4
      lw         $4, 0x10($29)
      lbu        $3, 0x0($4)
      bnel       $3, $2, .L800A37F8
       addiu     $5, $0, -0x25
      lbu        $2, 0x5($4)
      bnel       $2, $0, .L800A37F8
       addiu     $5, $0, -0x25
      lbu        $2, 0x1($4)
      andi       $2, $2, 0x1
      sb         $2, 0x154($16)
      lw         $2, 0x10($29)
      lbu        $2, 0x4($2)
      sb         $2, 0x155($16)
      lw         $3, 0x10($29)
      lbu        $2, 0x1($3)
      srl        $2, $2, 2
      andi       $2, $2, 0x7
      sw         $2, 0x158($16)
      lbu        $4, 0x3($3)
      lbu        $3, 0x2($3)
      addiu      $2, $0, 0x3
      sw         $2, 0x38($16)
      lw         $2, 0x158($16)
      sb         $5, 0x15C($16)
      sll        $4, $4, 8
      or         $3, $3, $4
      sltiu      $2, $2, 0x4
      bnez       $2, .L800A37E4
       sh        $3, 0x156($16)
      sw         $0, 0x158($16)
  .L800A37E4:
      lhu        $2, 0x156($16)
      sltiu      $2, $2, 0xA
      beqz       $2, .L800A37F8
       addiu     $2, $0, 0xA
      sh         $2, 0x156($16)
  .L800A37F8:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $5, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A3740

.globl func_800A380C
.ent func_800A380C
func_800A380C:
      addiu      $29, $29, -0x18
      addiu      $4, $4, 0x154
      addu       $5, $0, $0
      sw         $31, 0x10($29)
      jal        func_80016140
       addiu     $6, $0, 0xC
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A380C

.globl func_800A3830
.ent func_800A3830
func_800A3830:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      addiu      $5, $0, 0xD
      sw         $31, 0x1C($29)
      jal        func_800A311C
       addiu     $6, $29, 0x10
      addu       $3, $2, $0
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800A3888
       nop
      lw         $2, 0x10($29)
      lbu        $3, 0x0($2)
      addiu      $2, $0, 0xC
      bne        $3, $2, .L800A3888
       addiu     $3, $0, -0x25
      jal        func_800A380C
       addu      $4, $16, $0
      addu       $4, $16, $0
      jal        func_800A2DE4
       addiu     $5, $0, 0x3
      addu       $3, $2, $0
  .L800A3888:
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      addu       $2, $3, $0
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A3830

.globl func_800A389C
.ent func_800A389C
func_800A389C:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lhu        $4, 0x30($16)
      addiu      $5, $0, 0x2
      jal        func_800524E8
       sll       $4, $4, 2
      addu       $6, $2, $0
      beqz       $6, .L800A3998
       addu      $5, $0, $0
      lhu        $2, 0x30($16)
      beqz       $2, .L800A38F8
       addu      $3, $5, $0
      addu       $4, $6, $0
  .L800A38D8:
      sw         $3, 0x0($4)
      addiu      $3, $3, 0x8
      addiu      $4, $4, 0x4
      lhu        $2, 0x30($16)
      sltu       $2, $3, $2
      bnez       $2, .L800A38D8
       addiu     $5, $5, 0x1
      lhu        $2, 0x30($16)
  .L800A38F8:
      addiu      $3, $0, 0x4
      sltu       $2, $3, $2
      beqz       $2, .L800A3928
       sll       $2, $5, 2
      addu       $4, $2, $6
  .L800A390C:
      sw         $3, 0x0($4)
      addiu      $3, $3, 0x8
      addiu      $4, $4, 0x4
      lhu        $2, 0x30($16)
      sltu       $2, $3, $2
      bnez       $2, .L800A390C
       addiu     $5, $5, 0x1
  .L800A3928:
      lhu        $2, 0x30($16)
      addiu      $3, $0, 0x2
      sltu       $2, $3, $2
      beqz       $2, .L800A395C
       sllv      $2, $5, $3
      addu       $4, $2, $6
  .L800A3940:
      sw         $3, 0x0($4)
      addiu      $3, $3, 0x4
      addiu      $4, $4, 0x4
      lhu        $2, 0x30($16)
      sltu       $2, $3, $2
      bnez       $2, .L800A3940
       addiu     $5, $5, 0x1
  .L800A395C:
      lhu        $2, 0x30($16)
      addiu      $3, $0, 0x1
      sltu       $2, $3, $2
      beqz       $2, .L800A398C
       sll       $2, $5, 2
      addu       $4, $2, $6
  .L800A3974:
      sw         $3, 0x0($4)
      addiu      $3, $3, 0x2
      lhu        $2, 0x30($16)
      sltu       $2, $3, $2
      bnez       $2, .L800A3974
       addiu     $4, $4, 0x4
  .L800A398C:
      sw         $6, 0xC($16)
      j          .L800A399C
       addiu     $2, $0, 0x1
  .L800A3998:
      addiu      $2, $0, -0x5
  .L800A399C:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A389C

.globl func_800A39AC
.ent func_800A39AC
func_800A39AC:
      addiu      $29, $29, -0x38
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      addiu      $5, $0, 0x9
      addiu      $6, $29, 0x10
      sw         $31, 0x34($29)
      sw         $22, 0x30($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      jal        func_800A311C
       sw        $16, 0x18($29)
      addu       $20, $2, $0
      addiu      $2, $0, 0x1
      bne        $20, $2, .L800A3BCC
       addu      $2, $20, $0
      lw         $3, 0x10($29)
      lbu        $2, 0x1($3)
      lbu        $4, 0x0($3)
      sll        $2, $2, 8
      or         $22, $4, $2
      lbu        $2, 0x3($3)
      lbu        $4, 0x2($3)
      sll        $2, $2, 8
      or         $21, $4, $2
      lbu        $2, 0x5($3)
      lbu        $4, 0x4($3)
      sll        $2, $2, 8
      or         $4, $4, $2
      addu       $18, $4, $0
      lbu        $2, 0x7($3)
      lbu        $3, 0x6($3)
      sll        $2, $2, 8
      or         $3, $3, $2
      lhu        $2, 0x22($17)
      bnez       $2, .L800A3A98
       addu      $19, $3, $0
      lhu        $5, 0x20($17)
      sltu       $6, $5, $19
      bnez       $6, .L800A3A64
       nop
      lhu        $2, 0x1E($17)
      sltu       $2, $2, $18
      beqz       $2, .L800A3A98
       nop
  .L800A3A64:
      beqz       $6, .L800A3A70
       addu      $2, $5, $0
      addu       $2, $3, $0
  .L800A3A70:
      lhu        $3, 0x1E($17)
      sh         $2, 0x20($17)
      sltu       $2, $3, $18
      bnel       $2, $0, .L800A3A84
       addu      $3, $4, $0
  .L800A3A84:
      lw         $4, 0xC($17)
      lhu        $6, 0x20($17)
      sh         $3, 0x1E($17)
      jal        func_800A6948
       andi      $5, $3, 0xFFFF
  .L800A3A98:
      lhu        $2, 0x1E($17)
      addu       $3, $18, $22
      slt        $2, $2, $3
      bnel       $2, $0, .L800A3BC8
       addiu     $20, $0, -0x25
      lhu        $2, 0x20($17)
      addu       $3, $19, $21
      slt        $2, $2, $3
      bnel       $2, $0, .L800A3BC8
       addiu     $20, $0, -0x25
      jal        func_800A2BC0
       addu      $4, $17, $0
      addu       $16, $2, $0
      beql       $16, $0, .L800A3BC8
       addiu     $20, $0, -0x5
      sh         $22, 0x2A($16)
      sh         $21, 0x2C($16)
      sh         $19, 0x30($16)
      sh         $18, 0x2E($16)
      lbu        $2, 0x15C($17)
      beqz       $2, .L800A3B14
       addu      $4, $17, $0
      lhu        $2, 0x156($17)
      sh         $2, 0x32($16)
      lbu        $2, 0x155($17)
      sb         $2, 0x38($16)
      lbu        $2, 0x154($17)
      sb         $2, 0x48($16)
      lw         $2, 0x158($17)
      jal        func_800A380C
       sw        $2, 0x44($16)
  .L800A3B14:
      lw         $2, 0x10($29)
      lbu        $2, 0x8($2)
      srl        $2, $2, 6
      andi       $2, $2, 0x1
      beqz       $2, .L800A3B58
       sb        $2, 0x49($16)
      jal        func_800A389C
       addu      $4, $16, $0
      addu       $20, $2, $0
      addiu      $2, $0, 0x1
      beq        $20, $2, .L800A3B58
       addu      $4, $17, $0
      addu       $5, $16, $0
      jal        func_800A2C48
       addu      $6, $2, $0
      j          .L800A3BCC
       addu      $2, $20, $0
  .L800A3B58:
      lw         $2, 0x10($29)
      lbu        $2, 0x8($2)
      andi       $2, $2, 0x80
      beqz       $2, .L800A3B94
       addiu     $2, $0, 0x1
      sb         $2, 0x4A($16)
      lw         $2, 0x10($29)
      lbu        $3, 0x8($2)
      addiu      $2, $0, 0x2
      andi       $3, $3, 0x7
      sllv       $2, $2, $3
      sh         $2, 0x28($16)
      addiu      $2, $0, 0xA
      j          .L800A3BC8
       sw        $2, 0x38($17)
  .L800A3B94:
      sb         $0, 0x4A($16)
      lw         $2, 0x14($17)
      sw         $2, 0x8($16)
      lhu        $2, 0x1C($17)
      sh         $2, 0x28($16)
      lhu        $3, 0x22($17)
      addiu      $2, $0, 0x1
      bne        $3, $2, .L800A3BC4
       addiu     $2, $0, 0xF
      addiu      $2, $0, 0xE
      j          .L800A3BC8
       sw        $2, 0x38($17)
  .L800A3BC4:
      sw         $2, 0x38($17)
  .L800A3BC8:
      addu       $2, $20, $0
  .L800A3BCC:
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
.end func_800A39AC

.globl func_800A3BF4
.ent func_800A3BF4
func_800A3BF4:
      addiu      $29, $29, -0x28
      sw         $17, 0x1C($29)
      addu       $17, $4, $0
      addiu      $5, $0, 0x1
      addiu      $6, $29, 0x10
      sw         $31, 0x24($29)
      sw         $18, 0x20($29)
      jal        func_800A311C
       sw        $16, 0x18($29)
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bne        $18, $2, .L800A3C54
       addu      $2, $18, $0
      lw         $2, 0x10($29)
      addu       $4, $17, $0
      lbu        $2, 0x0($2)
      lw         $16, 0x18($17)
      addiu      $2, $2, 0x1
      jal        func_800A46F4
       sb        $2, 0x10($16)
      sw         $2, 0x1C($16)
      addiu      $2, $0, 0x11
      sw         $2, 0x38($17)
      addu       $2, $18, $0
  .L800A3C54:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A3BF4

.globl func_800A3C6C
.ent func_800A3C6C
func_800A3C6C:
      lw         $3, 0x18($4)
      lbu        $2, 0x48($3)
      beqz       $2, .L800A3C80
       addu      $6, $0, $0
      lbu        $6, 0x38($3)
  .L800A3C80:
      lhu        $3, 0x20($4)
      lhu        $2, 0x1E($4)
      mult       $3, $2
      mflo       $7
      blez       $7, .L800A3CC4
       addu      $5, $0, $0
  .L800A3C98:
      lw         $2, 0x10($4)
      addu       $2, $2, $5
      sb         $6, 0x0($2)
      lhu        $3, 0x20($4)
      lhu        $2, 0x1E($4)
      mult       $3, $2
      addiu      $5, $5, 0x1
      mflo       $7
      slt        $2, $5, $7
      bnez       $2, .L800A3C98
       nop
  .L800A3CC4:
      jr         $31
       nop
.end func_800A3C6C

.globl func_800A3CCC
.ent func_800A3CCC
func_800A3CCC:
      addiu      $29, $29, -0x28
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      addiu      $5, $0, 0x1
      addiu      $6, $29, 0x10
      sw         $31, 0x24($29)
      sw         $18, 0x20($29)
      jal        func_800A311C
       sw        $17, 0x1C($29)
      addu       $18, $2, $0
      addiu      $2, $0, 0x1
      bne        $18, $2, .L800A3DBC
       addu      $2, $18, $0
      lw         $2, 0x10($29)
      addu       $4, $16, $0
      lbu        $2, 0x0($2)
      lw         $17, 0x18($16)
      addiu      $2, $2, 0x1
      jal        func_800A46F4
       sb        $2, 0x10($17)
      addu       $4, $16, $0
      jal        func_800A538C
       sw        $2, 0x1C($17)
      beqz       $2, .L800A3DB4
       sw        $2, 0x16C($16)
      addu       $4, $16, $0
      jal        func_800A2C38
       addu      $5, $17, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800A3D64
       nop
      lhu        $2, 0x1E($16)
      lhu        $4, 0x20($16)
      mult       $2, $4
      mflo       $4
      jal        func_800524E8
       addu      $5, $0, $0
      sw         $2, 0x10($16)
  .L800A3D64:
      lw         $2, 0x10($16)
      beql       $2, $0, .L800A3DB8
       addiu     $18, $0, -0x5
      sw         $2, 0x168($16)
      addiu      $2, $0, 0x11
      sw         $2, 0x38($16)
      lhu        $2, 0x2E($17)
      lhu        $3, 0x1E($16)
      sltu       $2, $2, $3
      bnez       $2, .L800A3DA4
       nop
      lhu        $2, 0x30($17)
      lhu        $3, 0x20($16)
      sltu       $2, $2, $3
      beqz       $2, .L800A3DBC
       addu      $2, $18, $0
  .L800A3DA4:
      jal        func_800A3C6C
       addu      $4, $16, $0
      j          .L800A3DBC
       addu      $2, $18, $0
  .L800A3DB4:
      addiu      $18, $0, -0x5
  .L800A3DB8:
      addu       $2, $18, $0
  .L800A3DBC:
      lw         $31, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A3CCC

.globl func_800A3DD4
.ent func_800A3DD4
func_800A3DD4:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x3C($16)
      beqz       $2, .L800A3E64
       nop
      lhu        $2, 0x40($16)
      beqz       $2, .L800A3E54
       addiu     $2, $2, -0x1
  .L800A3DFC:
      sh         $2, 0x40($16)
      andi       $3, $2, 0xFFFF
      sll        $2, $3, 3
      subu       $2, $2, $3
      lw         $3, 0x3C($16)
      sll        $2, $2, 3
      addu       $2, $2, $3
      lw         $4, 0x24($2)
      jal        func_80052540
       nop
      lhu        $3, 0x40($16)
      sll        $2, $3, 3
      subu       $2, $2, $3
      lw         $3, 0x3C($16)
      sll        $2, $2, 3
      addu       $2, $2, $3
      lw         $4, 0x28($2)
      jal        func_80052540
       nop
      lhu        $2, 0x40($16)
      bnez       $2, .L800A3DFC
       addiu     $2, $2, -0x1
  .L800A3E54:
      lw         $4, 0x3C($16)
      jal        func_80052540
       nop
      sw         $0, 0x3C($16)
  .L800A3E64:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A3DD4

.globl func_800A3E74
.ent func_800A3E74
func_800A3E74:
      addiu      $29, $29, -0x30
      sw         $20, 0x20($29)
      addu       $20, $4, $0
      sw         $18, 0x18($29)
      sw         $31, 0x28($29)
      sw         $21, 0x24($29)
      sw         $19, 0x1C($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lhu        $3, 0x24($20)
      addiu      $2, $0, 0x7
      beq        $3, $2, .L800A4080
       addiu     $18, $0, 0x1
      lw         $16, 0x18($20)
      lw         $2, 0x24($16)
      bnez       $2, .L800A3EC0
       addu      $6, $0, $0
      j          .L800A4084
       addiu     $2, $0, 0x1
  .L800A3EC0:
      lhu        $2, 0x40($16)
      lw         $4, 0x3C($16)
      lw         $3, 0x16C($20)
      addiu      $2, $2, 0x1
      sll        $5, $2, 3
      subu       $5, $5, $2
      lhu        $2, 0x10($3)
      lhu        $3, 0xE($3)
      sll        $5, $5, 3
      subu       $2, $2, $3
      jal        func_80052524
       andi      $21, $2, 0xFFFF
      addu       $17, $2, $0
      beql       $17, $0, .L800A406C
       addiu     $18, $0, -0x5
      lhu        $3, 0x40($16)
      sw         $17, 0x3C($16)
      lw         $4, 0x16C($20)
      sll        $2, $3, 3
      subu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $17
      addiu      $3, $4, 0x30
  .L800A3F1C:
      lw         $7, 0x0($4)
      lw         $8, 0x4($4)
      lw         $9, 0x8($4)
      lw         $10, 0xC($4)
      sw         $7, 0x0($2)
      sw         $8, 0x4($2)
      sw         $9, 0x8($2)
      sw         $10, 0xC($2)
      addiu      $4, $4, 0x10
      bne        $4, $3, .L800A3F1C
       addiu     $2, $2, 0x10
      lw         $7, 0x0($4)
      lw         $8, 0x4($4)
      sw         $7, 0x0($2)
      sw         $8, 0x4($2)
      lhu        $3, 0x40($16)
      sll        $2, $3, 3
      subu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $17
      sw         $0, 0x24($2)
      lhu        $3, 0x40($16)
      sll        $2, $3, 3
      subu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $17
      sw         $0, 0x28($2)
      lhu        $3, 0x40($16)
      sll        $2, $3, 3
      subu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $17
      sh         $0, 0x12($2)
      lhu        $3, 0x40($16)
      sll        $19, $21, 1
      sll        $2, $3, 3
      subu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $17
      sw         $0, 0x2C($2)
      lhu        $3, 0x40($16)
      addu       $4, $19, $0
      sll        $2, $3, 3
      subu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $17
      addiu      $3, $0, 0x1000
      sh         $3, 0x14($2)
      lhu        $3, 0x40($16)
      addu       $5, $0, $0
      sll        $2, $3, 3
      subu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $17
      jal        func_800524E8
       sh        $0, 0x18($2)
      lhu        $4, 0x40($16)
      sll        $3, $4, 3
      subu       $3, $3, $4
      sll        $3, $3, 3
      addu       $3, $3, $17
      beqz       $2, .L800A4068
       sw        $2, 0x24($3)
      lhu        $3, 0x40($16)
      sll        $2, $3, 3
      subu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $17
      lw         $3, 0x16C($20)
      lw         $4, 0x24($2)
      lw         $5, 0x24($3)
      jal        func_80013F00
       addu      $6, $19, $0
      lhu        $3, 0x40($16)
      sll        $2, $3, 3
      subu       $2, $2, $3
      sll        $2, $2, 3
      addu       $2, $2, $17
      sh         $21, 0x12($2)
      lhu        $2, 0x40($16)
      addiu      $2, $2, 0x1
      j          .L800A406C
       sh        $2, 0x40($16)
  .L800A4068:
      addiu      $18, $0, -0x5
  .L800A406C:
      addiu      $2, $0, 0x1
      beq        $18, $2, .L800A4084
       addu      $2, $18, $0
      jal        func_800A3DD4
       addu      $4, $16, $0
  .L800A4080:
      addu       $2, $18, $0
  .L800A4084:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800A3E74

.globl func_800A40A8
.ent func_800A40A8
func_800A40A8:
      addiu      $29, $29, -0x30
      sw         $18, 0x20($29)
      addu       $18, $4, $0
      sw         $19, 0x24($29)
      addiu      $19, $0, 0x1
      sw         $20, 0x28($29)
      addiu      $20, $0, 0x10
      sw         $31, 0x2C($29)
      sw         $17, 0x1C($29)
      sw         $16, 0x18($29)
  .L800A40D0:
      addu       $4, $18, $0
      addiu      $5, $29, 0x10
      jal        func_800A2F78
       addiu     $6, $29, 0x14
      addu       $17, $2, $0
      bne        $17, $19, .L800A418C
       addu      $2, $17, $0
      lbu        $2, 0x10($29)
      lw         $16, 0x18($18)
      bnez       $2, .L800A4124
       nop
      lw         $4, 0x14($16)
      lw         $5, 0x20($16)
      jal        func_80052524
       addu      $6, $0, $0
      lw         $3, 0x20($16)
      sw         $2, 0x14($16)
      sw         $0, 0x20($16)
      sw         $3, 0x18($16)
      j          .L800A4188
       sw        $20, 0x38($18)
  .L800A4124:
      lbu        $3, 0x10($29)
      lw         $2, 0x20($16)
      lw         $5, 0x18($16)
      addu       $2, $2, $3
      sltu       $2, $5, $2
      beqz       $2, .L800A4154
       addiu     $5, $5, 0x1000
      lw         $4, 0x14($16)
      addu       $6, $0, $0
      jal        func_80052524
       sw        $5, 0x18($16)
      sw         $2, 0x14($16)
  .L800A4154:
      lw         $2, 0x14($16)
      beqz       $2, .L800A4188
       addiu     $17, $0, -0x5
      lw         $5, 0x14($29)
      lw         $4, 0x20($16)
      lbu        $6, 0x10($29)
      jal        func_80013F00
       addu      $4, $2, $4
      lw         $2, 0x20($16)
      lbu        $3, 0x10($29)
      addu       $2, $2, $3
      j          .L800A40D0
       sw        $2, 0x20($16)
  .L800A4188:
      addu       $2, $17, $0
  .L800A418C:
      lw         $31, 0x2C($29)
      lw         $20, 0x28($29)
      lw         $19, 0x24($29)
      lw         $18, 0x20($29)
      lw         $17, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800A40A8

.globl func_800A41AC
.ent func_800A41AC
func_800A41AC:
      addu       $11, $4, $0
      lw         $8, 0x18($11)
      lhu        $4, 0x2C($8)
      lhu        $2, 0x30($8)
      lw         $3, 0x160($11)
      j          .L800A42CC
       addu      $2, $4, $2
  .L800A41C8:
      sll        $2, $2, 2
      lw         $3, 0xC($8)
      lw         $7, 0x164($11)
      lhu        $9, 0x16($5)
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      lhu        $3, 0x1E($11)
      addu       $2, $4, $2
      mult       $2, $3
      lhu        $4, 0x2A($8)
      lhu        $3, 0x2E($8)
      lw         $2, 0x10($11)
      addu       $4, $4, $3
      mflo       $12
      addu       $2, $2, $12
      addu       $10, $2, $7
      addu       $2, $7, $9
      sltu       $2, $2, $4
      beql       $2, $0, .L800A4260
       subu      $4, $4, $7
      beqz       $9, .L800A424C
       addu      $6, $0, $0
  .L800A4220:
      lw         $2, 0x30($5)
      addu       $3, $10, $6
      lbu        $2, 0x0($2)
      addiu      $6, $6, 0x1
      sb         $2, 0x0($3)
      lw         $2, 0x30($5)
      lhu        $3, 0x16($5)
      addiu      $2, $2, 0x1
      sltu       $3, $6, $3
      bnez       $3, .L800A4220
       sw        $2, 0x30($5)
  .L800A424C:
      lhu        $3, 0x16($5)
      lw         $2, 0x164($11)
      addu       $2, $2, $3
      jr         $31
       sw        $2, 0x164($11)
  .L800A4260:
      beqz       $4, .L800A4294
       addu      $6, $0, $0
  .L800A4268:
      lw         $2, 0x30($5)
      lbu        $3, 0x0($2)
      addu       $2, $10, $6
      sb         $3, 0x0($2)
      lw         $2, 0x30($5)
      addiu      $6, $6, 0x1
      addiu      $2, $2, 0x1
      sw         $2, 0x30($5)
      sltu       $2, $6, $4
      bnez       $2, .L800A4268
       nop
  .L800A4294:
      lw         $2, 0x24($8)
      addu       $2, $2, $4
      sw         $2, 0x24($8)
      lhu        $2, 0x16($5)
      subu       $2, $2, $4
      sh         $2, 0x16($5)
      lw         $3, 0x160($11)
      lhu        $2, 0x2A($8)
      addiu      $3, $3, 0x1
      sw         $2, 0x164($11)
      sw         $3, 0x160($11)
      lhu        $4, 0x2C($8)
      lhu        $2, 0x30($8)
      addu       $2, $4, $2
  .L800A42CC:
      sltu       $2, $3, $2
      bnez       $2, .L800A41C8
       subu      $2, $3, $4
      jr         $31
       nop
.end func_800A41AC

.globl func_800A42E0
.ent func_800A42E0
func_800A42E0:
      addu       $11, $4, $0
      lw         $8, 0x18($11)
      lhu        $2, 0x2C($8)
      lhu        $3, 0x30($8)
      lw         $6, 0x160($11)
      addu       $2, $2, $3
      sltu       $2, $6, $2
      beqz       $2, .L800A4404
       nop
  .L800A4304:
      lhu        $2, 0x1E($11)
      lw         $7, 0x164($11)
      lhu        $4, 0x2A($8)
      mult       $6, $2
      lhu        $3, 0x2E($8)
      lhu        $9, 0x16($5)
      addu       $4, $4, $3
      lw         $2, 0x10($11)
      mflo       $12
      addu       $2, $2, $12
      addu       $10, $2, $7
      addu       $2, $7, $9
      sltu       $2, $2, $4
      beql       $2, $0, .L800A4388
       subu      $4, $4, $7
      beqz       $9, .L800A4374
       addu      $6, $0, $0
  .L800A4348:
      lw         $2, 0x30($5)
      addu       $3, $10, $6
      lbu        $2, 0x0($2)
      addiu      $6, $6, 0x1
      sb         $2, 0x0($3)
      lw         $2, 0x30($5)
      lhu        $3, 0x16($5)
      addiu      $2, $2, 0x1
      sltu       $3, $6, $3
      bnez       $3, .L800A4348
       sw        $2, 0x30($5)
  .L800A4374:
      lhu        $3, 0x16($5)
      lw         $2, 0x164($11)
      addu       $2, $2, $3
      jr         $31
       sw        $2, 0x164($11)
  .L800A4388:
      beqz       $4, .L800A43BC
       addu      $6, $0, $0
  .L800A4390:
      lw         $2, 0x30($5)
      lbu        $3, 0x0($2)
      addu       $2, $10, $6
      sb         $3, 0x0($2)
      lw         $2, 0x30($5)
      addiu      $6, $6, 0x1
      addiu      $2, $2, 0x1
      sw         $2, 0x30($5)
      sltu       $2, $6, $4
      bnez       $2, .L800A4390
       nop
  .L800A43BC:
      lw         $2, 0x24($8)
      addu       $2, $2, $4
      sw         $2, 0x24($8)
      lhu        $2, 0x16($5)
      subu       $2, $2, $4
      sh         $2, 0x16($5)
      lw         $3, 0x160($11)
      lhu        $2, 0x2A($8)
      addiu      $3, $3, 0x1
      sw         $2, 0x164($11)
      sw         $3, 0x160($11)
      lhu        $2, 0x2C($8)
      lhu        $4, 0x30($8)
      addu       $6, $3, $0
      addu       $2, $2, $4
      sltu       $2, $6, $2
      bnez       $2, .L800A4304
       nop
  .L800A4404:
      jr         $31
       nop
.end func_800A42E0

.globl func_800A440C
.ent func_800A440C
func_800A440C:
      addu       $11, $4, $0
      lw         $8, 0x18($11)
      lw         $3, 0x160($11)
      lhu        $4, 0x2C($8)
      lhu        $2, 0x30($8)
      lbu        $6, 0x38($8)
      addu       $2, $4, $2
      sltu       $2, $3, $2
      beqz       $2, .L800A4550
       andi      $12, $6, 0xFF
      subu       $2, $3, $4
  .L800A4438:
      sll        $2, $2, 2
      lw         $3, 0xC($8)
      lw         $7, 0x164($11)
      lhu        $9, 0x16($5)
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      lhu        $3, 0x1E($11)
      addu       $2, $4, $2
      mult       $2, $3
      lhu        $4, 0x2A($8)
      lhu        $3, 0x2E($8)
      lw         $2, 0x10($11)
      addu       $4, $4, $3
      mflo       $13
      addu       $2, $2, $13
      addu       $10, $2, $7
      addu       $2, $7, $9
      sltu       $2, $2, $4
      beql       $2, $0, .L800A44D4
       subu      $4, $4, $7
      beqz       $9, .L800A44C0
       addu      $6, $0, $0
  .L800A4490:
      lw         $2, 0x30($5)
      lbu        $3, 0x0($2)
      beq        $3, $12, .L800A44A4
       addu      $2, $10, $6
      sb         $3, 0x0($2)
  .L800A44A4:
      addiu      $6, $6, 0x1
      lw         $2, 0x30($5)
      lhu        $3, 0x16($5)
      addiu      $2, $2, 0x1
      sltu       $3, $6, $3
      bnez       $3, .L800A4490
       sw        $2, 0x30($5)
  .L800A44C0:
      lhu        $3, 0x16($5)
      lw         $2, 0x164($11)
      addu       $2, $2, $3
      jr         $31
       sw        $2, 0x164($11)
  .L800A44D4:
      beqz       $4, .L800A450C
       addu      $6, $0, $0
  .L800A44DC:
      lw         $2, 0x30($5)
      lbu        $3, 0x0($2)
      beq        $3, $12, .L800A44F0
       addu      $2, $10, $6
      sb         $3, 0x0($2)
  .L800A44F0:
      lw         $2, 0x30($5)
      addiu      $6, $6, 0x1
      addiu      $2, $2, 0x1
      sw         $2, 0x30($5)
      sltu       $2, $6, $4
      bnez       $2, .L800A44DC
       nop
  .L800A450C:
      lw         $2, 0x24($8)
      addu       $2, $2, $4
      sw         $2, 0x24($8)
      lhu        $2, 0x16($5)
      subu       $2, $2, $4
      sh         $2, 0x16($5)
      lw         $3, 0x160($11)
      lhu        $2, 0x2A($8)
      addiu      $3, $3, 0x1
      sw         $2, 0x164($11)
      sw         $3, 0x160($11)
      lhu        $4, 0x2C($8)
      lhu        $2, 0x30($8)
      addu       $2, $4, $2
      sltu       $2, $3, $2
      bnez       $2, .L800A4438
       subu      $2, $3, $4
  .L800A4550:
      jr         $31
       nop
.end func_800A440C

.globl func_800A4558
.ent func_800A4558
func_800A4558:
      addu       $11, $4, $0
      lw         $8, 0x18($11)
      lhu        $2, 0x2C($8)
      lhu        $3, 0x30($8)
      lw         $6, 0x160($11)
      addu       $2, $2, $3
      sltu       $2, $6, $2
      lbu        $3, 0x38($8)
      beqz       $2, .L800A4688
       andi      $12, $3, 0xFF
  .L800A4580:
      lhu        $2, 0x1E($11)
      lw         $7, 0x164($11)
      lhu        $4, 0x2A($8)
      mult       $6, $2
      lhu        $3, 0x2E($8)
      lhu        $9, 0x16($5)
      addu       $4, $4, $3
      lw         $2, 0x10($11)
      mflo       $13
      addu       $2, $2, $13
      addu       $10, $2, $7
      addu       $2, $7, $9
      sltu       $2, $2, $4
      beql       $2, $0, .L800A4608
       subu      $4, $4, $7
      beqz       $9, .L800A45F4
       addu      $6, $0, $0
  .L800A45C4:
      lw         $2, 0x30($5)
      lbu        $3, 0x0($2)
      beq        $3, $12, .L800A45D8
       addu      $2, $10, $6
      sb         $3, 0x0($2)
  .L800A45D8:
      addiu      $6, $6, 0x1
      lw         $2, 0x30($5)
      lhu        $3, 0x16($5)
      addiu      $2, $2, 0x1
      sltu       $3, $6, $3
      bnez       $3, .L800A45C4
       sw        $2, 0x30($5)
  .L800A45F4:
      lhu        $3, 0x16($5)
      lw         $2, 0x164($11)
      addu       $2, $2, $3
      jr         $31
       sw        $2, 0x164($11)
  .L800A4608:
      beqz       $4, .L800A4640
       addu      $6, $0, $0
  .L800A4610:
      lw         $2, 0x30($5)
      lbu        $3, 0x0($2)
      beq        $3, $12, .L800A4624
       addu      $2, $10, $6
      sb         $3, 0x0($2)
  .L800A4624:
      lw         $2, 0x30($5)
      addiu      $6, $6, 0x1
      addiu      $2, $2, 0x1
      sw         $2, 0x30($5)
      sltu       $2, $6, $4
      bnez       $2, .L800A4610
       nop
  .L800A4640:
      lw         $2, 0x24($8)
      addu       $2, $2, $4
      sw         $2, 0x24($8)
      lhu        $2, 0x16($5)
      subu       $2, $2, $4
      sh         $2, 0x16($5)
      lw         $3, 0x160($11)
      lhu        $2, 0x2A($8)
      addiu      $3, $3, 0x1
      sw         $2, 0x164($11)
      sw         $3, 0x160($11)
      lhu        $2, 0x2C($8)
      lhu        $4, 0x30($8)
      addu       $6, $3, $0
      addu       $2, $2, $4
      sltu       $2, $6, $2
      bnez       $2, .L800A4580
       nop
  .L800A4688:
      jr         $31
       nop
.end func_800A4558

.globl func_800A4690
.ent func_800A4690
func_800A4690:
      addu       $7, $4, $0
      lhu        $4, 0x1E($7)
      lhu        $2, 0x20($7)
      mult       $4, $2
      lhu        $3, 0x16($5)
      mflo       $4
      beqz       $3, .L800A46EC
       addu      $6, $0, $0
  .L800A46B0:
      lw         $2, 0x30($5)
      lw         $3, 0x168($7)
      addu       $2, $2, $6
      lbu        $2, 0x0($2)
      sb         $2, 0x0($3)
      lw         $2, 0x10($7)
      addiu      $3, $3, 0x1
      addu       $2, $2, $4
      beq        $3, $2, .L800A46EC
       sw        $3, 0x168($7)
      lhu        $2, 0x16($5)
      addiu      $6, $6, 0x1
      slt        $2, $6, $2
      bnez       $2, .L800A46B0
       nop
  .L800A46EC:
      jr         $31
       nop
.end func_800A4690

.globl func_800A46F4
.ent func_800A46F4
func_800A46F4:
      addiu      $29, $29, -0x20
      sw         $31, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $16, 0x18($4)
      lbu        $2, 0x49($16)
      bnez       $2, .L800A474C
       addu      $17, $0, $0
      lhu        $2, 0x2A($16)
      bnez       $2, .L800A474C
       addiu     $17, $0, 0x1
      lhu        $2, 0x2C($16)
      bnez       $2, .L800A474C
       nop
      lhu        $3, 0x2E($16)
      lhu        $2, 0x1E($4)
      bne        $3, $2, .L800A474C
       nop
      lhu        $3, 0x30($16)
      lhu        $2, 0x20($4)
      beql       $3, $2, .L800A474C
       addiu     $17, $0, 0x2
  .L800A474C:
      jal        func_800A2C38
       addu      $5, $16, $0
      andi       $2, $2, 0xFF
      bnez       $2, .L800A4778
       lui       $3, %hi(D_800F5490)
      lbu        $2, 0x48($16)
      beqz       $2, .L800A4778
       addiu     $2, $0, 0x2
      bnel       $17, $2, .L800A4778
       addiu     $17, $17, 0x3
      lui        $3, %hi(D_800F5490)
  .L800A4778:
      addiu      $3, $3, %lo(D_800F5490)
      sll        $2, $17, 2
      addu       $2, $2, $3
      lw         $2, 0x0($2)
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A46F4

.globl func_800A479C
.ent func_800A479C
func_800A479C:
      addiu      $29, $29, -0x20
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      lw         $3, 0x18($16)
      lbu        $2, 0x48($3)
      lhu        $7, 0x28($3)
      beqz       $2, .L800A47CC
       addiu     $2, $0, -0x1
      lbu        $2, 0x38($3)
      j          .L800A47D0
       sw        $2, 0x10($29)
  .L800A47CC:
      sw         $2, 0x10($29)
  .L800A47D0:
      sw         $0, 0x14($29)
      lw         $4, 0xC($16)
      lw         $5, 0x10($16)
      lw         $6, 0x8($3)
      jal        func_800A6A64
       nop
      lw         $2, 0x18($16)
      sw         $0, 0x10($16)
      lbu        $2, 0x4A($2)
      beql       $2, $0, .L800A47FC
       sw        $0, 0x14($16)
  .L800A47FC:
      lw         $2, 0x18($16)
      sw         $0, 0x8($2)
      lw         $4, 0xC($16)
      jal        func_800A6AB0
       addiu     $5, $0, 0x1
      lw         $31, 0x1C($29)
      lw         $16, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A479C

.globl func_800A4820
.ent func_800A4820
func_800A4820:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lbu        $2, 0x1B8($16)
      bnez       $2, .L800A484C
       addiu     $3, $0, 0x1
      lbu        $2, 0x199($16)
      sb         $3, 0x1B8($16)
      addiu      $2, $2, -0x1
      sb         $2, 0x1A8($16)
  .L800A484C:
      lhu        $3, 0x1E($16)
      lhu        $2, 0x20($16)
      mult       $3, $2
      lbu        $5, 0x1A8($16)
      mflo       $6
      blez       $6, .L800A4894
       addu      $4, $0, $0
  .L800A4868:
      lw         $2, 0x10($16)
      addu       $2, $2, $4
      sb         $5, 0x0($2)
      lhu        $3, 0x1E($16)
      lhu        $2, 0x20($16)
      mult       $3, $2
      addiu      $4, $4, 0x1
      mflo       $6
      slt        $2, $4, $6
      bnez       $2, .L800A4868
       nop
  .L800A4894:
      jal        func_800A5478
       addu      $4, $16, $0
      jal        func_800A5414
       addu      $4, $16, $0
      addu       $4, $16, $0
      jal        func_800A479C
       sw        $0, 0x16C($16)
      lw         $4, 0x17C($16)
      jal        func_80052540
       nop
      lw         $4, 0x184($16)
      jal        func_80052540
       sw        $0, 0x17C($16)
      sw         $0, 0x184($16)
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A4820

.globl func_800A48DC
.ent func_800A48DC
func_800A48DC:
      addiu      $29, $29, -0x30
      sw         $21, 0x24($29)
      addu       $21, $4, $0
      sw         $31, 0x28($29)
      sw         $20, 0x20($29)
      sw         $19, 0x1C($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $18, 0x18($21)
      lhu        $2, 0x40($18)
      beqz       $2, .L800A49A4
       addu      $19, $0, $0
      addu       $20, $19, $0
  .L800A4914:
      lw         $2, 0x3C($18)
      lw         $4, 0x34($21)
      addu       $16, $2, $20
      lhu        $2, 0x10($16)
      lhu        $3, 0xE($16)
      addu       $17, $0, $0
      subu       $2, $2, $3
      andi       $2, $2, 0xFFFF
      beqz       $2, .L800A4990
       sw        $4, 0x2C($16)
      andi       $2, $17, 0xFFFF
  .L800A4940:
      lw         $3, 0x24($16)
      sll        $2, $2, 1
      addu       $2, $2, $3
      lhu        $4, 0x0($2)
      jal        func_800A6318
       addu      $5, $16, $0
      bltz       $2, .L800A4990
       addu      $4, $21, $0
      lw         $2, 0x1C($18)
      jalr       $2
       addu      $5, $16, $0
      lhu        $2, 0x10($16)
      lhu        $3, 0xE($16)
      addiu      $17, $17, 0x1
      subu       $2, $2, $3
      andi       $3, $17, 0xFFFF
      andi       $2, $2, 0xFFFF
      sltu       $3, $3, $2
      bnez       $3, .L800A4940
       andi      $2, $17, 0xFFFF
  .L800A4990:
      lhu        $2, 0x40($18)
      addiu      $19, $19, 0x1
      slt        $2, $19, $2
      bnez       $2, .L800A4914
       addiu     $20, $20, 0x38
  .L800A49A4:
      lw         $31, 0x28($29)
      lw         $21, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x30
.end func_800A48DC

.globl func_800A49C8
.ent func_800A49C8
func_800A49C8:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $4, 0x8($17)
      jal        func_800A65D0
       addu      $16, $0, $0
      beql       $2, $0, .L800A49FC
       addu      $2, $16, $0
      sw         $0, 0x8($17)
      lw         $16, 0x8($2)
      addu       $2, $16, $0
  .L800A49FC:
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A49C8

.globl func_800A4A10
.ent func_800A4A10
func_800A4A10:
      addiu      $29, $29, -0x18
      sw         $31, 0x10($29)
      lw         $4, 0x0($4)
      jal        func_800A67F8
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A4A10

.globl func_800A4A30
.ent func_800A4A30
func_800A4A30:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x18($16)
      lw         $2, 0x14($2)
      bnez       $2, .L800A4AC0
       nop
      lw         $4, 0x40($16)
      beqz       $4, .L800A4AB0
       nop
      jal        func_800524E8
       addiu     $5, $0, 0x2
      lw         $3, 0x18($16)
      beqz       $2, .L800A4AB0
       sw        $2, 0x14($3)
      lbu        $2, 0x50($16)
      beqz       $2, .L800A4A88
       addiu     $5, $16, 0x54
      lw         $5, 0x54($16)
      j          .L800A4A8C
       addiu     $5, $5, 0x1
  .L800A4A88:
      addiu      $5, $5, 0x1
  .L800A4A8C:
      lw         $2, 0x18($16)
      lw         $6, 0x40($16)
      lw         $4, 0x14($2)
      jal        func_80013F00
       addiu     $6, $6, -0x1
      lw         $2, 0x40($16)
      lw         $3, 0x18($16)
      addiu      $2, $2, -0x1
      sw         $2, 0x20($3)
  .L800A4AB0:
      lw         $2, 0x18($16)
      lw         $2, 0x14($2)
      beql       $2, $0, .L800A4AFC
       addiu     $2, $0, -0x1
  .L800A4AC0:
      lw         $2, 0x18($16)
      lw         $3, 0x20($2)
      addu       $4, $16, $0
      jal        func_800A4820
       sw        $3, 0x18($2)
      lw         $3, 0xC($16)
      addiu      $2, $0, 0x1
      sb         $2, 0x29($3)
      lw         $4, 0xC($16)
      jal        func_800A6AB0
       addiu     $5, $0, 0x1
      lw         $4, 0xC($16)
      jal        func_800A69A4
       addiu     $5, $0, 0x1
      addiu      $2, $0, 0x1
  .L800A4AFC:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A4A30

.globl func_800A4B0C
.ent func_800A4B0C
func_800A4B0C:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      beqz       $16, .L800A4B40
       sw        $31, 0x1C($29)
      beqz       $17, .L800A4B7C
       addiu     $2, $0, -0x4
      bnez       $18, .L800A4B48
       addiu     $4, $0, 0x1BC
  .L800A4B40:
      j          .L800A4B7C
       addiu     $2, $0, -0x4
  .L800A4B48:
      jal        func_80052504
       addu      $5, $0, $0
      addu       $3, $2, $0
      beqz       $3, .L800A4B70
       addiu     $2, $0, 0x1
      sw         $16, 0x0($3)
      sw         $17, 0x4($3)
      sw         $2, 0x2C($3)
      sw         $3, 0x0($18)
      addu       $3, $0, $0
  .L800A4B70:
      bnez       $3, .L800A4B7C
       addiu     $2, $0, -0x5
      addiu      $2, $0, 0x1
  .L800A4B7C:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A4B0C

.globl func_800A4B94
.ent func_800A4B94
func_800A4B94:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $7, $0
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x20($29)
      sw         $18, 0x18($29)
      bnez       $16, .L800A4BC0
       sw        $17, 0x14($29)
      j          .L800A4C34
       addiu     $2, $0, -0x4
  .L800A4BC0:
      addiu      $17, $0, 0x1
      lw         $4, 0x38($29)
      addu       $5, $0, $0
      lui        $2, %hi(D_800EC694)
      addiu      $18, $2, %lo(D_800EC694)
      addu       $6, $18, $0
      jal        func_8005446C
       addu      $7, $5, $0
      bnez       $2, .L800A4C00
       addu      $4, $19, $0
      addu       $5, $0, $0
      addu       $6, $18, $0
      jal        func_8005446C
       addu      $7, $5, $0
      beql       $2, $0, .L800A4C20
       addiu     $17, $0, -0x1F
  .L800A4C00:
      jal        func_800523C0
       addu      $4, $2, $0
      beqz       $2, .L800A4C1C
       sw        $2, 0x8($16)
      sw         $17, 0x38($16)
      j          .L800A4C20
       addu      $16, $0, $0
  .L800A4C1C:
      addiu      $17, $0, -0x5
  .L800A4C20:
      beqz       $16, .L800A4C34
       addu      $2, $17, $0
      jal        func_800A52E0
       addu      $4, $16, $0
      addu       $2, $17, $0
  .L800A4C34:
      lw         $31, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A4B94

.globl func_800A4C50
.ent func_800A4C50
func_800A4C50:
      addiu      $29, $29, -0x38
      addu       $5, $6, $0
      sw         $22, 0x30($29)
      addu       $22, $7, $0
      sw         $16, 0x18($29)
      addu       $16, $4, $0
      sw         $31, 0x34($29)
      sw         $21, 0x2C($29)
      sw         $20, 0x28($29)
      sw         $19, 0x24($29)
      sw         $18, 0x20($29)
      bnez       $16, .L800A4C8C
       sw        $17, 0x1C($29)
      j          .L800A50FC
       addiu     $2, $0, -0x4
  .L800A4C8C:
      jal        func_800A2D14
       addu      $4, $16, $0
      lbu        $2, 0x27($16)
      bnez       $2, .L800A50C0
       addiu     $17, $0, 0x1
      lui        $2, %hi(jtbl_800F54A8)
      addiu      $21, $2, %lo(jtbl_800F54A8)
      addu       $20, $17, $0
  .L800A4CAC:
      lw         $2, 0x38($16)
      addiu      $3, $2, -0x1
      sltiu      $2, $3, 0x16
      beqz       $2, .L800A50B8
       sll       $2, $3, 2
      addu       $2, $2, $21
      lw         $2, 0x0($2)
      jr         $2
       nop
  .globl .L800A4CD0
.L800A4CD0:
      j          .L800A50B8
       addu      $17, $0, $0
  .globl .L800A4CD8
.L800A4CD8:
      jal        func_800A32B0
       addu      $4, $16, $0
      j          .L800A50B8
       addu      $17, $2, $0
  .globl .L800A4CE8
.L800A4CE8:
      jal        func_800A3370
       addu      $4, $16, $0
      addu       $17, $2, $0
      bne        $17, $20, .L800A50C0
       addu      $19, $17, $0
      jal        func_800A49C8
       addu      $4, $16, $0
      addu       $18, $2, $0
      beqz       $18, .L800A50B8
       addiu     $17, $0, -0x5
      lhu        $5, 0x1E($16)
      lhu        $6, 0x20($16)
      jal        func_800A6948
       addu      $4, $18, $0
      lw         $4, 0x0($16)
      lw         $2, 0x4($16)
      lw         $5, 0x0($18)
      lw         $2, 0x10($2)
      jalr       $2
       nop
      addu       $17, $2, $0
      bne        $17, $19, .L800A4D4C
       nop
      j          .L800A50B8
       sw        $18, 0xC($16)
  .L800A4D4C:
      jal        func_800A4A10
       addu      $4, $18, $0
      j          .L800A50B8
       nop
  .globl .L800A4D5C
.L800A4D5C:
      addu       $4, $16, $0
      lhu        $5, 0x1C($16)
      jal        func_800A3474
       addiu     $6, $16, 0x14
      j          .L800A50B8
       addu      $17, $2, $0
  .globl .L800A4D74
.L800A4D74:
      lhu        $5, 0x1C($16)
      lw         $6, 0x14($16)
      jal        func_800A34DC
       addu      $4, $16, $0
      j          .L800A50B8
       addu      $17, $2, $0
  .globl .L800A4D8C
.L800A4D8C:
      lw         $6, 0x18($16)
      addu       $4, $16, $0
      lhu        $5, 0x28($6)
      jal        func_800A3474
       addiu     $6, $6, 0x8
      j          .L800A50B8
       addu      $17, $2, $0
  .globl .L800A4DA8
.L800A4DA8:
      lw         $2, 0x18($16)
      lhu        $5, 0x28($2)
      lw         $6, 0x8($2)
      jal        func_800A34DC
       addu      $4, $16, $0
      j          .L800A50B8
       addu      $17, $2, $0
  .globl .L800A4DC4
.L800A4DC4:
      addu       $4, $16, $0
      jal        func_800A2F20
       addiu     $5, $29, 0x10
      addu       $17, $2, $0
      bne        $17, $20, .L800A50C0
       addiu     $2, $0, 0xF9
      lbu        $3, 0x10($29)
      beq        $3, $2, .L800A4E28
       slti      $2, $3, 0xFA
      beql       $2, $0, .L800A4E00
       addiu     $2, $0, 0xFE
      beq        $3, $17, .L800A4E34
       addiu     $2, $0, 0x8
      j          .L800A50B8
       addiu     $17, $0, -0x25
  .L800A4E00:
      beq        $3, $2, .L800A4E1C
       addiu     $2, $0, 0xFF
      bnel       $3, $2, .L800A50B8
       addiu     $17, $0, -0x25
      addiu      $2, $0, 0x5
      j          .L800A50B8
       sw        $2, 0x38($16)
  .L800A4E1C:
      addiu      $2, $0, 0x6
      j          .L800A50B8
       sw        $2, 0x38($16)
  .L800A4E28:
      addiu      $2, $0, 0x7
      j          .L800A50B8
       sw        $2, 0x38($16)
  .L800A4E34:
      j          .L800A50B8
       sw        $2, 0x38($16)
  .globl .L800A4E3C
.L800A4E3C:
      jal        func_800A35B0
       addu      $4, $16, $0
      j          .L800A50B8
       addu      $17, $2, $0
  .globl .L800A4E4C
.L800A4E4C:
      jal        func_800A3724
       addu      $4, $16, $0
      j          .L800A50B8
       addu      $17, $2, $0
  .globl .L800A4E5C
.L800A4E5C:
      jal        func_800A3740
       addu      $4, $16, $0
      j          .L800A50B8
       addu      $17, $2, $0
  .globl .L800A4E6C
.L800A4E6C:
      jal        func_800A3830
       addu      $4, $16, $0
      j          .L800A50B8
       addu      $17, $2, $0
  .globl .L800A4E7C
.L800A4E7C:
      jal        func_800A39AC
       addu      $4, $16, $0
      j          .L800A50B8
       addu      $17, $2, $0
  .globl .L800A4E8C
.L800A4E8C:
      jal        func_800A3CCC
       addu      $4, $16, $0
      j          .L800A50B8
       addu      $17, $2, $0
  .globl .L800A4E9C
.L800A4E9C:
      jal        func_800A3BF4
       addu      $4, $16, $0
      j          .L800A50B8
       addu      $17, $2, $0
  .globl .L800A4EAC
.L800A4EAC:
      jal        func_800A40A8
       addu      $4, $16, $0
      j          .L800A50B8
       addu      $17, $2, $0
  .globl .L800A4EBC
.L800A4EBC:
      lw         $5, 0x18($16)
      jal        func_800A2C38
       addu      $4, $16, $0
      andi       $2, $2, 0xFF
      beqz       $2, .L800A4EE4
       addiu     $2, $0, 0x12
      jal        func_800A5478
       addu      $4, $16, $0
      j          .L800A50B8
       addu      $17, $2, $0
  .L800A4EE4:
      lw         $3, 0x18($16)
      sw         $2, 0x38($16)
      j          .L800A50B8
       sb        $20, 0x39($3)
  .globl .L800A4EF4
.L800A4EF4:
      lw         $2, 0x18($16)
      lbu        $2, 0x39($2)
      bnez       $2, .L800A4F2C
       addu      $4, $16, $0
      jal        func_800A2F20
       addiu     $5, $29, 0x10
      addu       $17, $2, $0
      bne        $17, $20, .L800A4F2C
       nop
      lbu        $2, 0x10($29)
      beqz       $2, .L800A4F2C
       nop
      j          .L800A50B8
       addiu     $17, $0, -0x25
  .L800A4F2C:
      jal        func_800A5414
       addu      $4, $16, $0
      lhu        $2, 0x22($16)
      bne        $2, $20, .L800A4F48
       sw        $0, 0x16C($16)
      jal        func_800A479C
       addu      $4, $16, $0
  .L800A4F48:
      lw         $2, 0x18($16)
      lhu        $3, 0x32($2)
      sw         $3, 0x34($2)
      lbu        $2, 0x30($16)
      beqz       $2, .L800A4F74
       addiu     $2, $0, 0x7
      lhu        $3, 0x24($16)
      bne        $3, $2, .L800A4F7C
       addiu     $2, $0, 0x9
      addiu      $2, $0, 0x9
      sh         $2, 0x24($16)
  .L800A4F74:
      lhu        $3, 0x24($16)
      addiu      $2, $0, 0x9
  .L800A4F7C:
      bne        $3, $2, .L800A4FB4
       nop
      lhu        $2, 0x22($16)
      sltiu      $2, $2, 0x2
      beql       $2, $0, .L800A4F94
       sb        $20, 0x30($16)
  .L800A4F94:
      lhu        $2, 0x24($16)
      bne        $2, $3, .L800A4FB4
       lui       $2, %hi(D_80133DD3)
      lbu        $2, %lo(D_80133DD3)($2)
      beqz       $2, .L800A4FB4
       addiu     $2, $0, 0x3
      j          .L800A50B8
       sw        $2, 0x38($16)
  .L800A4FB4:
      lw         $2, 0x18($16)
      lw         $4, 0x14($2)
      jal        func_80052540
       nop
      lw         $2, 0x18($16)
      sw         $0, 0x14($2)
      lw         $2, 0x18($16)
      lw         $4, 0xC($2)
      jal        func_80052540
       nop
      lw         $2, 0x18($16)
      sw         $0, 0xC($2)
      addiu      $2, $0, 0x16
      j          .L800A50B8
       sw        $2, 0x38($16)
  .globl .L800A4FF0
.L800A4FF0:
      addu       $4, $16, $0
      jal        func_800A2F20
       addiu     $5, $29, 0x10
      addu       $17, $2, $0
      bne        $17, $20, .L800A50C0
       addu      $4, $17, $0
      lbu        $3, 0x10($29)
      addiu      $2, $0, 0x2C
      beq        $3, $2, .L800A504C
       slti      $2, $3, 0x2D
      beqz       $2, .L800A5030
       addiu     $2, $0, 0x21
      beq        $3, $2, .L800A5044
       addiu     $2, $0, 0x4
      j          .L800A5070
       nop
  .L800A5030:
      addiu      $2, $0, 0x3B
      beq        $3, $2, .L800A5058
       nop
      j          .L800A5070
       nop
  .L800A5044:
      j          .L800A50B8
       sw        $2, 0x38($16)
  .L800A504C:
      addiu      $2, $0, 0x9
      j          .L800A50B8
       sw        $2, 0x38($16)
  .L800A5058:
      lhu        $2, 0x22($16)
      beqz       $2, .L800A5068
       addiu     $17, $0, -0x25
      addiu      $17, $0, 0x2
  .L800A5068:
      j          .L800A50B8
       sb        $4, 0x27($16)
  .L800A5070:
      lhu        $2, 0x22($16)
      beqz       $2, .L800A5080
       addiu     $17, $0, -0x25
      addiu      $17, $0, 0x2
  .L800A5080:
      j          .L800A50B8
       sb        $20, 0x27($16)
  .globl .L800A5088
.L800A5088:
      addu       $4, $16, $0
      jal        func_800A2DE4
       addiu     $5, $0, 0x18
      j          .L800A50B8
       addu      $17, $2, $0
  .globl .L800A509C
.L800A509C:
      jal        func_800A3684
       addu      $4, $16, $0
      j          .L800A50B8
       addu      $17, $2, $0
  .globl .L800A50AC
.L800A50AC:
      jal        func_800A3700
       addu      $4, $16, $0
      addu       $17, $2, $0
  .L800A50B8:
      beq        $17, $20, .L800A4CAC
       nop
  .L800A50C0:
      beqz       $17, .L800A50D0
       addiu     $2, $0, 0x2
      bne        $17, $2, .L800A50D8
       addiu     $2, $0, -0x25
  .L800A50D0:
      addiu      $17, $0, 0x1
      addiu      $2, $0, -0x25
  .L800A50D8:
      bnel       $17, $2, .L800A50F0
       sw        $0, 0x0($22)
      jal        func_800A5414
       addu      $4, $16, $0
      sw         $0, 0x16C($16)
      sw         $0, 0x0($22)
  .L800A50F0:
      jal        func_800A2D1C
       addu      $4, $16, $0
      addu       $2, $17, $0
  .L800A50FC:
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
.end func_800A4C50

.globl func_800A5124
.ent func_800A5124
func_800A5124:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x1C($29)
      beqz       $16, .L800A52C8
       addiu     $2, $0, -0x4
      addiu      $2, $0, 0x1
      bne        $17, $2, .L800A5260
       nop
      lw         $3, 0xC($16)
      beqz       $3, .L800A5288
       addiu     $6, $0, -0x1
      lbu        $2, 0x1AA($16)
      bnel       $2, $0, .L800A5180
       sb        $17, 0x29($3)
      jal        func_800A4A30
       addu      $4, $16, $0
      j          .L800A5288
       addu      $6, $2, $0
  .L800A5180:
      lbu        $2, 0x30($16)
      beqz       $2, .L800A5240
       addiu     $4, $0, 0x1000
      jal        func_800524E8
       addu      $5, $0, $0
      sw         $2, 0x34($16)
      addiu      $2, $16, 0x170
      sw         $2, 0x18($16)
      lui        $2, %hi(func_800A5FBC)
      lw         $3, 0xC($16)
      addiu      $2, $2, %lo(func_800A5FBC)
      sw         $2, 0x38($3)
      lw         $2, 0xC($16)
      sw         $16, 0x34($2)
      lw         $2, 0xC($16)
      lw         $3, 0x18($16)
      lw         $2, 0x4C($2)
      sw         $2, 0x10($16)
      lbu        $2, 0x4A($3)
      bnez       $2, .L800A51E8
       nop
      lw         $2, 0xC($16)
      lw         $2, 0x50($2)
      sw         $2, 0x8($3)
      j          .L800A51F4
       sw        $2, 0x14($16)
  .L800A51E8:
      lw         $2, 0xC($16)
      lw         $2, 0x50($2)
      sw         $2, 0x8($3)
  .L800A51F4:
      lw         $3, 0x18($16)
      beqz       $3, .L800A5220
       nop
  .L800A5200:
      lw         $2, 0x8($3)
      bnez       $2, .L800A5214
       nop
      lw         $2, 0x14($16)
      sw         $2, 0x8($3)
  .L800A5214:
      lw         $3, 0x0($3)
      bnez       $3, .L800A5200
       nop
  .L800A5220:
      lw         $2, 0xC($16)
      lw         $3, 0x10($2)
      addu       $4, $16, $0
      ori        $3, $3, 0x40
      sw         $3, 0x10($2)
      addiu      $2, $0, 0x1
      jal        func_800A59D8
       sb        $2, 0x31($16)
  .L800A5240:
      lw         $4, 0xC($16)
      jal        func_800A6AB0
       addiu     $5, $0, 0x1
      lw         $4, 0xC($16)
      jal        func_800A69A4
       addiu     $5, $0, 0x1
      j          .L800A5288
       addiu     $6, $0, 0x1
  .L800A5260:
      jal        func_800A5414
       addu      $4, $16, $0
      lw         $4, 0xC($16)
      beqz       $4, .L800A527C
       sw        $0, 0x16C($16)
      jal        func_800A69A4
       addiu     $5, $0, -0x1
  .L800A527C:
      bnez       $17, .L800A5288
       addiu     $6, $0, -0x7
      addiu      $6, $0, -0x1
  .L800A5288:
      lw         $5, 0xC($16)
      beqz       $5, .L800A52AC
       nop
      lw         $4, 0x0($16)
      lw         $2, 0x4($16)
      lw         $5, 0x0($5)
      lw         $2, 0x14($2)
      jalr       $2
       nop
  .L800A52AC:
      lbu        $2, 0x30($16)
      bnel       $2, $0, .L800A52C4
       sw        $0, 0x0($18)
      jal        func_800A52E0
       addu      $4, $16, $0
      sw         $0, 0x0($18)
  .L800A52C4:
      addiu      $2, $0, 0x1
  .L800A52C8:
      lw         $31, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A5124

.globl func_800A52E0
.ent func_800A52E0
func_800A52E0:
      addiu      $29, $29, -0x20
      sw         $17, 0x14($29)
      addu       $17, $4, $0
      sw         $31, 0x18($29)
      sw         $16, 0x10($29)
      lw         $4, 0x8($17)
      jal        func_80052540
       nop
      lw         $5, 0x170($17)
      beqz       $5, .L800A5324
       addu      $4, $17, $0
  .L800A530C:
      lw         $16, 0x0($5)
      jal        func_800A2C48
       addu      $6, $0, $0
      addu       $5, $16, $0
      bnez       $5, .L800A530C
       addu      $4, $17, $0
  .L800A5324:
      lw         $2, 0xC($17)
      beqz       $2, .L800A533C
       nop
      sw         $0, 0x38($2)
      lw         $2, 0xC($17)
      sw         $0, 0x34($2)
  .L800A533C:
      lw         $4, 0x34($17)
      jal        func_80052540
       nop
      lw         $4, 0x14($17)
      jal        func_80052540
       nop
      lw         $4, 0x10($17)
      jal        func_80052540
       nop
      addu       $4, $17, $0
      addiu      $5, $17, 0x170
      jal        func_800A2C48
       addu      $6, $0, $0
      jal        func_80052540
       addu      $4, $17, $0
      lw         $31, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x20
.end func_800A52E0

.globl func_800A538C
.ent func_800A538C
func_800A538C:
      addiu      $29, $29, -0x18
      sw         $31, 0x14($29)
      sw         $16, 0x10($29)
      lw         $2, 0x18($4)
      addiu      $4, $0, 0x38
      lbu        $16, 0x10($2)
      jal        func_80052504
       addu      $5, $0, $0
      addu       $6, $2, $0
      beqz       $6, .L800A5400
       addiu     $2, $0, 0x8
      sh         $2, 0x1A($6)
      addiu      $2, $16, -0x1
      addiu      $4, $0, 0x1
      sllv       $2, $4, $2
      sh         $16, 0x4($6)
      addu       $5, $16, $0
      addu       $3, $2, $4
      sh         $3, 0xC($6)
      sh         $5, 0x6($6)
      andi       $3, $5, 0xFFFF
      sh         $2, 0xA($6)
      addiu      $2, $2, 0x2
      sllv       $4, $4, $3
      sh         $0, 0x0($6)
      sh         $0, 0x2($6)
      sh         $2, 0xE($6)
      sh         $2, 0x10($6)
      sh         $4, 0x8($6)
  .L800A5400:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      addu       $2, $6, $0
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A538C

.globl func_800A5414
.ent func_800A5414
func_800A5414:
      addiu      $29, $29, -0x18
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $31, 0x14($29)
      lw         $2, 0x16C($16)
      beqz       $2, .L800A5468
       nop
      lw         $4, 0x24($2)
      jal        func_80052540
       nop
      lw         $2, 0x16C($16)
      lw         $4, 0x28($2)
      jal        func_80052540
       nop
      lw         $2, 0x16C($16)
      lw         $4, 0x2C($2)
      jal        func_80052540
       nop
      lw         $4, 0x16C($16)
      jal        func_80052540
       nop
  .L800A5468:
      lw         $31, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A5414

.globl func_800A5478
.ent func_800A5478
func_800A5478:
      addiu      $29, $29, -0x28
      sw         $19, 0x1C($29)
      addu       $19, $4, $0
      sw         $31, 0x24($29)
      sw         $20, 0x20($29)
      sw         $18, 0x18($29)
      sw         $17, 0x14($29)
      sw         $16, 0x10($29)
      lw         $18, 0x18($19)
      lw         $16, 0x16C($19)
      lw         $2, 0x14($18)
      sw         $0, 0x24($18)
      sw         $2, 0x34($16)
      lw         $2, 0x18($18)
      sw         $2, 0x1C($16)
      lhu        $2, 0x2C($18)
      sw         $2, 0x160($19)
      lhu        $2, 0x2A($18)
      sw         $2, 0x164($19)
      lw         $2, 0x3C($18)
      beqz       $2, .L800A5504
       addiu     $20, $0, 0x1
      jal        func_800A48DC
       nop
      j          .L800A55E4
       addiu     $2, $0, 0x1
  .L800A54E0:
      jal        func_800A3E74
       addu      $4, $19, $0
      addiu      $3, $0, 0x1
      addu       $2, $3, $0
      sb         $2, 0x39($18)
      sb         $2, 0x3A($18)
      addiu      $2, $0, 0x12
      j          .L800A55E0
       sw        $2, 0x38($19)
  .L800A5504:
      jal        func_800A6040
       addu      $4, $16, $0
      addu       $4, $2, $0
      bgez       $4, .L800A5538
       nop
      lhu        $3, 0x2E($18)
      lhu        $2, 0x30($18)
      mult       $3, $2
      lw         $2, 0x24($18)
      mflo       $6
      bne        $2, $6, .L800A55E0
       addiu     $3, $0, -0x25
      lhu        $4, 0xC($16)
  .L800A5538:
      lhu        $3, 0x2E($18)
      lhu        $2, 0x30($18)
      mult       $3, $2
      lw         $2, 0x24($18)
      mflo       $6
      bne        $2, $6, .L800A5558
       nop
      lhu        $4, 0xC($16)
  .L800A5558:
      lhu        $2, 0xC($16)
      beq        $4, $2, .L800A54E0
       nop
      lhu        $2, 0xA($16)
      bne        $4, $2, .L800A5598
       andi      $17, $4, 0xFFFF
      jal        func_800A3E74
       addu      $4, $19, $0
      lhu        $2, 0x4($16)
      lhu        $3, 0xE($16)
      sh         $2, 0x6($16)
      andi       $2, $2, 0xFFFF
      sllv       $2, $20, $2
      sh         $3, 0x10($16)
      j          .L800A5504
       sh        $2, 0x8($16)
  .L800A5598:
      addu       $4, $17, $0
      jal        func_800A6154
       addu      $5, $16, $0
      bltz       $2, .L800A5504
       addu      $4, $17, $0
      jal        func_800A6318
       addu      $5, $16, $0
      bltz       $2, .L800A5504
       addu      $4, $19, $0
      lw         $2, 0x18($19)
      lw         $2, 0x1C($2)
      jalr       $2
       addu      $5, $16, $0
      lhu        $3, 0x16($16)
      lw         $2, 0x24($18)
      addu       $2, $2, $3
      j          .L800A5504
       sw        $2, 0x24($18)
  .L800A55E0:
      addu       $2, $3, $0
  .L800A55E4:
      lw         $31, 0x24($29)
      lw         $20, 0x20($29)
      lw         $19, 0x1C($29)
      lw         $18, 0x18($29)
      lw         $17, 0x14($29)
      lw         $16, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x28
.end func_800A5478

.globl func_800A5604
.ent func_800A5604
func_800A5604:
      jr         $31
       addiu     $29, $29, 0x18
.end func_800A5604

.globl func_800A560C
.ent func_800A560C
func_800A560C:
      addiu      $29, $29, -0x20
      sw         $16, 0x10($29)
      addu       $16, $4, $0
      sw         $17, 0x14($29)
      addu       $17, $5, $0
      sw         $18, 0x18($29)
      addu       $18, $6, $0
      beqz       $16, .L800A5640
       sw        $31, 0x1C($29)
      beqz       $17, .L800A567C
       addiu     $2, $0, -0x4
      bnez       $18, .L800A5648
       addiu     $4, $0, 0x1BC
.end func_800A560C
