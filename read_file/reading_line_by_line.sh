#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n'
while read -r thing; do
  echo $(date +'%H:%M:%S') "$thing"
done < <(bash slow_read.sh example.txt)


