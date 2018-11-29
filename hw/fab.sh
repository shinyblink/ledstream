#!/bin/sh
# Produce gerbers.

if [ ! $# -eq 3 ]; then
	echo "Usage: $(basename $0) config.fab gerber_out.zip pcb.kicad_pcb"
	exit 1
fi

FABFILE="$1"
OUTFILE="$(readlink -f "$2")"
PCBFILE="$3"
NAME="$(basename "$PCBFILE" | sed 's/\.kicad_pcb//')"

TMP="$(mktemp -d)"
mkdir -p "$TMP/$NAME"

kifab -o "$TMP/$NAME" "$PCBFILE" "$FABFILE"
cd $TMP
zip -r "$OUTFILE" "$NAME/"
rm -r "$TMP"
