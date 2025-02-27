#!/bin/bash

date ; w | tail -n +3 | sed 's/ \+/- /g' | cut -d- -f1 ; uptime | cut -c-12
