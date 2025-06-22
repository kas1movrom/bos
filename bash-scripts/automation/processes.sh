#!/bin/bash

USER="$(whoami)"

TITLE1="Processes of "$USER" user: $(ps -u "$USER" | tail -n +5 | wc -l)"
echo "$TITLE1"

TITLE2="Processes of root: $(ps -u root | tail -n +5 | wc -l)"
echo "$TITLE2"
