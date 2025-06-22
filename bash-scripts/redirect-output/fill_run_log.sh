#!/bin/bash

FILE="/tmp/run.log"

date >> "$FILE"
echo "Hello, world!"

EXECUTES="$(cat "$FILE" | wc -l)"
echo "$EXECUTES" >&2
