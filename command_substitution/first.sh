#!/usr/bin/env bash

new_file=$(mktemp)

cleanup() {
    rm -f "$new_file"
}

trap cleanup EXIT
echo "some text" > "$new_file"

echo It will use standard output of cat command as file containing standard output
ls  <(cat "$new_file") 
cat <(cat "$new_file") 

echo this file name can be used for assignment of a variable
piped_output=$(echo <(cat "$new_file"))
echo $piped_output

