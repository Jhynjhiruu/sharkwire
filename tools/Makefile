.PHONY: tools_setup tools_clean sike sharkpatch gscrc

ifeq ($(OS),Windows_NT)
	EXESUFFIX := .exe
else
	EXESUFFIX :=
endif

CARGO := cargo build
CARGO_CLEAN := cargo clean
CARGOFLAGS := --release
CARGO_TARGET := target/release

SIKE_BASE := sike/$(CARGO_TARGET)/sike
SHARKPATCH_BASE := sharkpatch/$(CARGO_TARGET)/sharkpatch
GSCRC_BASE := gscrc/$(CARGO_TARGET)/gscrc

SIKE := $(SIKE_BASE)$(EXESUFFIX)
SHARKPATCH := $(SHARKPATCH_BASE)$(EXESUFFIX)
GSCRC := $(GSCRC_BASE)$(EXESUFFIX)

tools_setup: $(SIKE) $(SHARKPATCH) $(GSCRC)

tools_clean:
	(cd sike && $(CARGO_CLEAN))
	(cd sharkpatch && $(CARGO_CLEAN))
	(cd gscrc && $(CARGO_CLEAN))

$(SIKE):
	(cd sike && $(CARGO) $(CARGOFLAGS))

$(SHARKPATCH):
	(cd sharkpatch && $(CARGO) $(CARGOFLAGS))

$(GSCRC):
	(cd gscrc && $(CARGO) $(CARGOFLAGS) --no-default-features)

sike: $(SIKE)
	(cd .. && $(CURDIR)/$(SIKE) $(ARGS))

sharkpatch: $(SHARKPATCH)
	(cd .. && $(CURDIR)/$(SHARKPATCH) $(ARGS))

gscrc: $(GSCRC)
	(cd .. && $(CURDIR)/$(GSCRC) $(ARGS))

-include $(SIKE_BASE).d
-include $(SHARKPATCH_BASE).d
-include $(GSCRC_BASE).d
