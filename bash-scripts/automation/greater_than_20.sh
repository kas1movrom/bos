#!/bin/bash

DIR="/usr"
BLACK_HOLE="/dev/null"

find "$DIR" -type f -size +20M 2>"$BLACK_HOLE"

