#!/usr/bin/env bash

while IFS=: read -r name id comment; do 
	echo "$id: $name comment: $comment"
done < data.txt

