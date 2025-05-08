.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

.globl func_800E0100
.ent func_800E0100
func_800E0100:
      jr         $31
  .L800E0104:
       nop
.end func_800E0100

.globl func_800E0108
.ent func_800E0108
func_800E0108:
      jr         $31
       nop
.end func_800E0108

.globl func_800E0110
.ent func_800E0110
func_800E0110:
      jr         $31
       nop
.end func_800E0110

.globl func_800E0118
.ent func_800E0118
func_800E0118:
      ori        $18, $0, 0xFD7B
      sb         $0, 0x4A1($16)
      j          .L800E02F0
       sb        $3, 0x49D($16)
      lbu        $2, 0x495($16)
      bne        $2, $3, .L800E0144
       addiu     $17, $0, 0x1
      ori        $18, $0, 0xFDFE
      sb         $0, 0x495($16)
      j          .L800E02F0
.end func_800E0118
