#!/bin/bash
for dir in q{1..24}; do
    for prefix in a b c d; do
        for num in {1..24}; do
            old="${dir}/${prefix}${num}.png"
            new="${dir}/${prefix}$((num-1)).png"
            if [ -f "$old" ]; then
                mv "$old" "$new"
            fi
        done
    done
done