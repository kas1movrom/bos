#!/bin/bash

FILES_WITH_HASHES="$(md5sum dups/*.txt | sort -u -t ' ' -k1,1)"

TMP="$(md5sum dups/*.txt | sort -k1 | cut -d ' ' -f1 | uniq -c | sort -k1 -n)"

ONE_NUMB="$(echo "$TMP" | grep "1 " | wc -l)"
let "ONE_NUMB += 1"

LIST="$(echo "$TMP" | tail -n +"$ONE_NUMB" | sed 's/ \{2,\}//g')"

COUNT="$(echo "$LIST" | cut -d ' ' -f1)"
HASHES="$(echo "$LIST" | cut -d ' ' -f2)"

echo "$HASHES" > tmp_file

while read sum; do
	echo "$(echo "$LIST" | grep "$sum" | cut -d ' ' -f1) $(echo "$FILES_WITH_HASHES" | grep "$sum" | cut -d ' ' -f3)"
done < tmp_file

