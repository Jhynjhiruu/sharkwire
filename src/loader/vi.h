#ifndef _VI_H
#define _VI_H

#include "types.h"

void func_80203150(int x, int y, int r, int g, int b);

void func_80203190(int x, int y, int width, int height, int col);

void func_802031F8(int col);

void func_80203224(void);

void func_80203268(void *fbuf);

void func_80203278(void);

void func_802032C4(int c);

void func_80203448(char *str);

void func_8020348C(s32 arg0);

void func_802034C0(int byte);

void func_802034F0(int halfword);

void func_80203520(int word);

void func_80203550(int num, uint base, int is_signed);

int func_802035DC(char *fmt, ...);

void func_802037F8(bool pal);

#endif
