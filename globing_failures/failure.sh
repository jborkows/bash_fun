#!/usr/bin/env bash
# set -euo pipefail #with this the globing will fail it will show wrongly file but it will not show the final message
i=0
a=$(mktemp -d)
for f in $a/*; do
  echo "File: $f"
  ((i++))
done
echo "Number of files: $i"
