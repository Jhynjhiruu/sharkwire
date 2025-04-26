#include "common.h"

#include "hw.h"

#include "pi.h"

u32 D_802CBD50 = 0x00400000;
u32 D_802CBD54 = 0xB0000000;

u32 func_80202DC0(u32 offset) {
    u32 addr = D_802CBD54 | D_802CBD50 | offset;
    func_80202FE0();
    return READ32(addr);
}

void func_80202DFC(u32 offset, u32 data) {
    u32 doubled_data = ((u16)data << 16) | (u16)data;
    u32 addr = D_802CBD54 | D_802CBD50 | offset;

    WRITEV32(addr, doubled_data);
    func_80202FE0();
}

void func_80202E40(u32 data) {
    u32 masked = (data & 0x0F000000) | 0x10000000;

    func_80202DFC(0x400, masked >> 24);
    D_802CBD54 = masked | 0xB0000000;
}
