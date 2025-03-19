#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./run_c.sh filename.c"
    exit 1
fi

filename=$(basename "$1" .c)

gcc "$1" -o "$filename.out"

if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

./"$filename.out"

rm -f "$filename.out"
