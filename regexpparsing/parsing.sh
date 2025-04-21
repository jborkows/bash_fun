#!/usr/bin/env bash
set -euo pipefail
regex='^([a-zA-Z]+)([0-9]{4}-[0-9]{2}-[0-9]{2})[.]txt$'
for f in *.txt; do
    if [[ $f =~ $regex ]]; then
	echo "File: $f"
	echo "Prefix: ${BASH_REMATCH[1]}"
	echo "Date: ${BASH_REMATCH[2]}"
    else
	echo "No match for file: $f"
    fi
done
