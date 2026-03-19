#!/bin/bash
stem=image_$1
dir=q$1
mkdir -p ${dir}
pdftoppm -r 100 -png players_tu.pdf ${dir}/${stem}
for f in ${dir}/${stem}-*.png; do
    num=$(echo "$f" | grep -o '[0-9]*\.png' | grep -o '[0-9]*')
    num=$((10#$num))
    if [ $num -le 24 ]; then
        mv "$f" "${dir}/c${num}.png"
    else
        mv "$f" "${dir}/d$((num-24)).png"
    fi
done