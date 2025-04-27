#ifndef _SI_H
#define _SI_H

#include "types.h"

#define PIF_RAM(addr) (0x1FC00000 + (addr))

void func_802030A0(void);

u32 func_802030BC(u32 *addr);

void func_802030E4(u32 *addr, u32 data);

void func_80203118(void);

#endif
