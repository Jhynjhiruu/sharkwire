.include "macro.inc"

.set noat
.set noreorder
.set gp=64

.section .text, "ax"

.globl func_80202E90
.ent func_80202E90
func_80202E90:
      addiu      $29, $29, -0x1C
      sw         $8, 0x10($29)
      sw         $9, 0x14($29)
      sw         $1, 0x18($29)
      lui        $8, %hi(D_80003000)
      addiu      $9, $8, %lo(D_80003000)
      addiu      $9, $9, -0x10
  .L80202EAC:
      cache      0x01, 0x0($8)
      sltu       $1, $8, $9
      bnez       $1, .L80202EAC
       addiu     $8, $8, (0x80000010 & 0xFFFF)
      lui        $8, %hi(D_80006000)
      addiu      $9, $8, %lo(D_80006000)
      addiu      $9, $9, -0x20
  .L80202EC8:
      cache      0x00, 0x0($8)
      sltu       $1, $8, $9
      bnez       $1, .L80202EC8
       addiu     $8, $8, (0x80000020 & 0xFFFF)
      lw         $8, 0x10($29)
      lw         $9, 0x14($29)
      lw         $1, 0x18($29)
      jr         $31
       addiu     $29, $29, 0x1C
.end func_80202E90

.globl func_80202EEC
.ent func_80202EEC
func_80202EEC:
      cache      0x15, 0x0($4)
      jr         $31
       nop
.end func_80202EEC

.globl func_80202EF8
.ent func_80202EF8
func_80202EF8:
      jr         $4
       nop
      addiu      $29, $29, -0x14
      sw         $31, 0x10($29)
      jalr       $4
       nop
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x14
.end func_80202EF8

.globl func_80202F1C
.ent func_80202F1C
func_80202F1C:
      mfc0       $2, $12
      jr         $31
       nop
.end func_80202F1C

.globl func_80202F28
.ent func_80202F28
func_80202F28:
      mtc0       $4, $12
      jr         $31
       nop
.end func_80202F28

.globl func_80202F34
.ent func_80202F34
func_80202F34:
      mfc0       $2, $13
      jr         $31
       nop
.end func_80202F34

.globl func_80202F40
.ent func_80202F40
func_80202F40:
      mfc0       $2, $14
      jr         $31
       nop
.end func_80202F40

.globl func_80202F4C
.ent func_80202F4C
func_80202F4C:
      addiu      $29, $29, -0x1C
      sw         $31, 0x10($29)
      sw         $8, 0x14($29)
      sw         $9, 0x18($29)
      lui        $8, %hi(D_80202F78)
      addiu      $8, $8, %lo(D_80202F78)
      lui        $9, (0x40850000 >> 16)
      or         $9, $9, $4
      sw         $9, 0x0($8)
      jal        func_80202E90
       nop
  glabel D_80202F78
D_80202F78:
      mtc0       $5, $0
      lw         $9, 0x18($29)
      lw         $8, 0x14($29)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x1C
.end func_80202F4C

.globl func_80202F90
.ent func_80202F90
func_80202F90:
      addiu      $29, $29, -0x1C
      sw         $31, 0x10($29)
      sw         $8, 0x14($29)
      sw         $9, 0x18($29)
      lui        $8, %hi(D_80202FBC)
      addiu      $8, $8, %lo(D_80202FBC)
      lui        $9, (0x40020000 >> 16)
      or         $9, $9, $4
      sw         $9, 0x0($8)
      jal        func_80202E90
       nop
  glabel D_80202FBC
D_80202FBC:
      mfc0       $2, $0
      lw         $9, 0x18($29)
      lw         $8, 0x14($29)
      lw         $31, 0x10($29)
      jr         $31
       addiu     $29, $29, 0x1C
.end func_80202F90

.globl func_80202FD4
.ent func_80202FD4
func_80202FD4:
      lw         $2, 0x10($3)
      andi       $2, $2, 0x3
      bnez       $2, func_80202FD4
.end func_80202FD4
