.PHONY: tools_setup tools_clean sike sharkpatch sharkwire-lz77 gscrc

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
SHARKWIRE_LZ77_BASE := sharkwire-lz77/$(CARGO_TARGET)/sharkwire-lz77
GSCRC_BASE := gscrc/$(CARGO_TARGET)/gscrc

SIKE := $(SIKE_BASE)$(EXESUFFIX)
SHARKPATCH := $(SHARKPATCH_BASE)$(EXESUFFIX)
SHARKWIRE_LZ77 := $(SHARKWIRE_LZ77_BASE)$(EXESUFFIX)
GSCRC := $(GSCRC_BASE)$(EXESUFFIX)

tools_setup: $(SIKE) $(SHARKPATCH) $(SHARKWIRE_LZ77) $(GSCRC)

tools_clean:
	(cd sike && $(CARGO_CLEAN))
	(cd sharkpatch && $(CARGO_CLEAN))
	(cd sharkwire-lz77 && $(CARGO_CLEAN))
	(cd gscrc && $(CARGO_CLEAN))

$(SIKE):
	(cd sike && $(CARGO) $(CARGOFLAGS))

$(SHARKPATCH):
	(cd sharkpatch && $(CARGO) $(CARGOFLAGS))

$(SHARKWIRE_LZ77):
	(cd sharkwire-lz77 && $(CARGO) $(CARGOFLAGS))

$(GSCRC):
	(cd gscrc && $(CARGO) $(CARGOFLAGS) --no-default-features)

sike: $(SIKE)
	(cd .. && $(CURDIR)/$(SIKE) $(ARGS))

sharkpatch: $(SHARKPATCH)
	(cd .. && $(CURDIR)/$(SHARKPATCH) $(ARGS))

sharkwire-lz77: $(SHARKWIRE_LZ77)
	(cd .. && $(CURDIR)/$(SHARKWIRE_LZ77) $(ARGS))

gscrc: $(GSCRC)
	(cd .. && $(CURDIR)/$(GSCRC) $(ARGS))

-include $(SIKE_BASE).d
-include $(SHARKPATCH_BASE).d
-include $(SHARKWIRE_LZ77_BASE).d
-include $(GSCRC_BASE).d
