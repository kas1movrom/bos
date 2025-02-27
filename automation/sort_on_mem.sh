#!/bin/bash

du -ah . | sort -t\t -k1 -rn
