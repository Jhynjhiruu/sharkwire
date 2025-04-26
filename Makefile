# Make magic that needs to happen

.PHONY: all setup split allclean splitclean distclean

.DEFAULT: all

# Settings you might want to play with

COMPARE := 1

# Settings you probably shouldn't play with

BASE_NAME := loader

C_FILES := src/eeprom.c src/2930.c src/hw.c src/pi.c src/30A0.c src/3150.c
S_FILES := src/header.s src/loader.s src/16A0.s src/2E90.s
D_FILES := data/CBD00.data.s
B_FILES := assets/boot.bin assets/font.bin assets/54D0.bin assets/5960.bin assets/E0000.bin

##FSBLOB_FILES := fs/shell.bin fs/gslogo3.bin fs/gslogo3.pal fs/tile1.tg~ fs/trainer.bin

# Flags

# Flags that change based on whether we're matching or not

ifeq ($(COMPARE),1)
	PATCHES := 10A8:0000000000000000 1698:609F6012F18E664B 2928:500EFAF164D601EA 2DB8:3C03802CAFB00010 2E88:AFA90014AFA10018 309C:1440FFFD 3148:00C730253C038020 5546:00000000000000000000 5954:984B1800D2B30B00FF27BDFF
##	FSBLOB_ARGS := --pad 0x2B4E0
##	GSCRC_ARGS := -e 0x80200400
else
	PATCHES := 
##	FSBLOB_ARGS := --pad 0x2B4E0
##	GSCRC_ARGS := 
endif

# Rules

# Main rule + match check
all: compare

include Makefile.common

compare: $(BUILD_DIR)/sharkwire.bin
ifeq ($(COMPARE),1)
	@sha1sum $<
	@sha1sum -c $(BASE_NAME).sha1
endif

$(BUILD_DIR)/sharkwire.bin: $(BINARY)
	$(TOOLS_DIR)/$(GSCRC) $< $@ 7101::80201000

$(BUILD_DIR)/assets/$(BASE_NAME)/font.bin: IMAGE_FORMAT := i4

# Setup repo
setup:
	$(MAKE) -C $(TOOLS_DIR) tools_setup

# Clean build
allclean:
	$(RM) -rf $(BUILD_DIR)

# Remove all split assets
allsplitclean:
	$(RM) -rf asm assets fs

# Clean everything
distclean: allclean allsplitclean
	$(MAKE) -C $(TOOLS_DIR) tools_clean

include $(TOOLS_DIR)/Makefile
