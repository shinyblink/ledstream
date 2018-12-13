# Rather generic Makefile for FPGA projects.

all: bx-smitest

# Device specific rules.
# Yes, it's cursed.
BX: $(eval PIN_DEF := pins/BX.pcf)
BX: $(eval CLASS := 8k)
BX: $(eval FPGA := lp8k)
BX: $(eval PACKAGE := cm81)
BX:
	@echo "Selected target: TinyFPGA BX ($(PACKAGE) $(FPGA))"

# Projects
bx-smitest: TOP := smitest
bx-smitest: targets/bx-smitest.bin BX targets/bx-smitest.rpt
	tinyprog -p $<

# Shared targets.
%.blif %.json: %.v
	# Synthesis.
	yosys -p 'synth_ice40 -top $(TOP) -blif $*.blif -json $*.json' $<

%.asc: %.blif %.json $(PIN_DEF)
	# PNR.
	if command -v nextpnr-ice40; then \
		nextpnr-ice40 --$(FPGA) --package $(PACKAGE) --json $*.json --pcf $(PIN_DEF) --asc $@; \
	else \
		arachne-pnr -d $(CLASS) -P $(PACKAGE) -o $@ -p $(PIN_DEF) $<; \
	fi

%.bin: %.asc
	icepack $< $@

# Analysis.
%.rpt: %.asc
	icetime -d $(FPGA) -mtr $@ $<

# Clean.
clean:
	rm -f targets/*.bin targets/*.asc targets/*.blif targets/*.rpt
