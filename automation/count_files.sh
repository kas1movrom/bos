#!/bin/bash

GENERAL_TITLE="Home directory of user: $(whoami)"
HOME="/home/$(whoami)"

FILES_LIST="$(ls -al "$HOME" | grep "^-" | sed 's/ \+/|/g' | cut -d\| -f9)"

COMMON_TITLE="Contains common files: $(echo "$FILES_LIST" | grep -c -v "^\.")"
HIDDEN_TITLE="Contains hidden files: $(echo "$FILES_LIST" | grep -c "^\.")"

echo "$GENERAL_TITLE"
echo "$COMMON_TITLE"
echo "$HIDDEN_TITLE"

