#!/bin/bash

MSG="Hello, $(whoami)"
TODO_FILE="/home/roman/TODO"

echo "$MSG"
echo "Current time is: $(date | sed 's/ /-/g' | cut -d- -f4)" 

echo "Current date is:"
cal

echo "Your tasks on this day: $(cat "$TODO_FILE")"
