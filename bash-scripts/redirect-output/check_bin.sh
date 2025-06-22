#!/bin/bash

while read line
do
	TEST_VARIABLE="$(echo "$line" | grep -v "bin")"
	if [ "$?" != "0" ]
	then
		echo "$line" >&2
	fi
done

