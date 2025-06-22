#!/bin/bash

PATTERN="*.txt"
FILES="$(find . -name "$PATTERN" | cut -c3-)"

echo "Txt extension "$PATTERN" files:"
echo "$FILES"

FILES_MEMORY="$(find . -name "$PATTERN" -exec ls -l {} + | sed 's/ \+/|/g' | cut -d\| -f5 | awk '{total += $1}{ print total}' | tail -1)"
FILES_STRINGS="$(find . -name "$PATTERN" -exec wc -l {} + | sed 's/ \+/|/g' | cut -d\| -f2 | tail -1)"

echo "Total size: "$FILES_MEMORY", Total strings: "$FILES_STRINGS""

