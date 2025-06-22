#!/bin/bash

PASS_PATH="/etc/passwd"

US_HOME="$(cat /etc/passwd | grep "^$1" | cut -d: -f6)"
NUMBER="$(echo ""$1" "$US_HOME"" | wc -m)"
let "NUMBER -= 2"

echo ""$1" "$US_HOME" "$NUMBER""
