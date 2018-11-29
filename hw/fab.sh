#!/bin/sh
# Produce gerbers.

if [ ! $# -eq 3 ]; then
	echo "Usage: $(basename $0) config.fab gerber_out.zip pcb.kicad_pcb"
	exit 1
fi

FABFILE="$1"
OUTFILE="$(readlink -f "$2")"
PCBFILE="$3"
NAME="$(basename "$OUTFILE" | sed 's/\.zip//')"

TMP="$(mktemp -d)"
mkdir -p "$TMP/$NAME"

echo "[*] Generating Gerbers..."
kifab -o "$TMP/$NAME" "$PCBFILE" "$FABFILE"

echo "[*] Zipping up.."
cd $TMP
zip -r "$OUTFILE" "$NAME/"
rm -r "$TMP"
echo "[*] Done."
