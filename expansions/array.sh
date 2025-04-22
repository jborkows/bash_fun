#!/usr/bin/env bash
filename=my-file
array=("$filename".{txt,sh,png})
IFS=":"
echo "${array[*]}"
IFS=
