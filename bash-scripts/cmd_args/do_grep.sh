#!/bin/bash

cat "$2" | grep "$1" | head -"$3" | sort | nl
