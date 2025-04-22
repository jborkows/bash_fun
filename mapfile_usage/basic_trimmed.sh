#!/usr/bin/env bash
mapfile -t my_array < data.txt
printf '<%s>\n' "${my_array[@]}"
