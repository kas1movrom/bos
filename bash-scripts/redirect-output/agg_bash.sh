#!/bin/bash

ZEROS_FILE="/tmp/zeros"
NO_ZEROS_FILE="/tmp/nozeros"

PATTERN="000000"

grep "$PATTERN" bash.txt >> "$ZEROS_FILE" 
grep -v "$PATTERN" bash.txt >> "$NO_ZEROS_FILE"

echo "Zeros file:"
head -10 "$ZEROS_FILE" ; echo "------------------" ; tail -10 "$ZEROS_FILE"

echo "Non zeros file:"
head -10 "$NO_ZEROS_FILE" ; echo "------------------" ; tail -10 "$NO_ZEROS_FILE"
