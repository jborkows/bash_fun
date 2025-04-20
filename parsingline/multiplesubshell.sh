#!/usr/bin/env bash
set -euo pipefail

while read line; do 
	name=$(echo "$line" | cut -d ':' -f1)
	id=$(echo "$line" | cut -d ':' -f2)
	comment=$(echo "$line" | cut -d ':' -f 3-) # read 3rd and all following fields
	echo "$id: $name comment: $comment"
done < data.txt	
