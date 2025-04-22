#!/usr/bin/env bash
filename=my-file
array=(home/{john,franc,molly}/"$filename".{txt,sh,png})
echo There are ${#array[@]} entries in the array
IFS=$'\n'
echo "${array[*]}"
IFS=
