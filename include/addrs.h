#ifndef _ADDRS_H
#define _ADDRS_H

#include "common.h"

#define STACK_TOP (0x80400000 - 0x100)

#define FRAMEBUFFER_0 (0x80308000)
#define FRAMEBUFFER_1                                                          \
    ((FRAMEBUFFER_0) + (SCREEN_WIDTH * SCREEN_HEIGHT * 2 * sizeof(u16)))

#define BOOT_BASE (0x10)
#define RUN_BASE (0x1E)

#define FIRMWARE_PASSTHROUGH (0xC00000)

#endif