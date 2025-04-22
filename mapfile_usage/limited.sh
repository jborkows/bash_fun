#!/usr/bin/env bash
mapfile -t -n 2 my_array < data.txt
printf '<%s>\n' "${my_array[@]}"
