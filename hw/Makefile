# Makefile for generating gerber output zips.
# Quite bad.

FAB = simple.fab

all: bx-hub75

bx-hub75: output/bx-hub75.zip

output/%.zip:
	mkdir -p output
	./fab.sh $(FAB) $@ $*/$*.kicad_pcb
