#!/usr/bin/env bash
mapfile my_array < data.txt
printf '<%s>\n' "${my_array[@]}"
