#!/usr/bin/env bash
set -euo pipefail 
shopt -s nullglob
i=0
a=$(mktemp -d)
for f in $a/*; do
  echo "File: $f"
  ((i++))
done
echo "Number of files: $i"
