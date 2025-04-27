#ifndef _UTIL_H
#define _UTIL_H

#include "types.h"

void func_80202E90(void);

void func_80202EEC(void *addr);

void func_80202EF8(void (*addr)(void));

void func_80202F00(void (*addr)(void));

u32 func_80202F1C(void);

void func_80202F28(u32 status);

u32 func_80202F34(void);

u32 func_80202F40(void);

void func_80202F4C(u8 reg, u32 data);

u32 func_80202F90(u8 reg);

#endif
