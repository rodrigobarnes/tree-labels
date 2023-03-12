#!/usr/bin/env bash
cd `dirname $0`
ts=`date +%Y%m%d-%H%M%S`

# Move all SVG files into the input folder
mkdir -p input
rm input/*.svg
rm input/*.pdf
mv ~/Downloads/*.svg input

# Convert to
mkdir -p output
for f in `ls ./input/*.svg`; do 
    echo "Procesing $f"
    rsvg-convert -f pdf -o ./input/`basename $f`.pdf $f
done

pdfunite ./input/*.pdf ./output/trees-$ts.pdf