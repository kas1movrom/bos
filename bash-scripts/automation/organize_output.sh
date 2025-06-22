#!/bin/bash

FILES="$(ls -l )"

echo "1. Directories:"
echo "$FILES" | grep "^d"

echo "2. Common files:"
echo "$FILES" | grep "^\-"

echo "3. Symbolik links:"
echo "$FILES" | grep "^l"

echo "4. Symbolic devices:"
echo "$FILES" | grep "^c"

echo "5. Blocks devices:"
echo "$FILES" | grep "^b"
