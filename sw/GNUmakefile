# Rather generic Makefile for FPGA projects.

all: bx-hub75

# Device specific rules.
# Yes, it's cursed.
BX: $(eval PIN_DEF := pins/BX.pcf)
BX: $(eval FPGA := lp8k)
BX: $(eval PACKAGE := cm81)
BX:
	@echo "Selected target: TinyFPGA BX ($(PACKAGE) $(FPGA))"

# Projects
bx-smitest: TOP := smitest
bx-smitest: targets/bx-smitest.bin BX targets/bx-smitest.rpt
	tinyprog -p $<

bx-hub75test: TOP := hub75test
bx-hub75test: targets/bx-hub75test.bin BX targets/bx-hub75test.rpt
	tinyprog -p $<

bx-hub75: TOP := bx_hub75
bx-hub75: targets/bx-hub75.bin BX targets/bx-hub75.rpt
	tinyprog -p $<


# Shared targets.
%.blif %.json: %.v
	# Synthesis.
	yosys -q -p 'synth_ice40 -top $(TOP) -blif $*.blif -json $*.json' $<

%.asc: %.blif %.json $(PIN_DEF)
	# PNR.
	if command -v nextpnr-ice40; then \
		nextpnr-ice40 --$(FPGA) --package $(PACKAGE) --json $*.json --pcf $(PIN_DEF) --asc $@; \
	else \
		arachne-pnr -d $(subst up,,$(subst hx,,$(subst lp,,$(FPGA)))) -P $(PACKAGE) -o $@ -p $(PIN_DEF) $<; \
	fi

%.bin: %.asc
	icepack $< $@

# Generative targets.
src/pll.v:
	icepll -i 16 -o 64 -m -f $@

# Analysis.
%.rpt: %.asc
	icetime -d $(FPGA) -mtr $@ $<

%_tb: %_tb.v %.v
	iverilog -g2005 -o $@ $^

%_tb.vcd: %_tb
	vvp -N $< +vcd=$@

test: $(patsubst %.v,%.vcd,$(wildcard src/*_tb.v))

# Clean.
clean:
	rm -f targets/*.bin targets/*.asc targets/*.blif targets/*.rpt src/*.vcd src/*_tb
