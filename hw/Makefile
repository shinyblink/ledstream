# Makefile for generating gerber output zips.
# Quite bad.

FAB = simple.fab

all: bx-hub75 bx-pihat rs485-breakout

bx-hub75: output/bx-hub75.zip
bx-pihat: output/bx-pihat.zip
rs485-breakout: output/rs485-breakout.zip


output/%.zip:
	mkdir -p output
	./fab.sh $(FAB) $@ $*/$*.kicad_pcb

clean:
	rm -rf output
