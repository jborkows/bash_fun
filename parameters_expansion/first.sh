#!/usr/bin/env bash
set -euo pipefail

filename="/aaa/bbb/ccc/ddd.txt"
echo "input: $filename"

basename=${filename##*/} # First # means remove pattern from beginning, second ## means remove pattern greedy, pattern is everything followed by /
echo "basename: $basename"

dirname=${filename%/*} # First % means remove pattern from end
notSoDirname=${filename%%/*} 

echo "dirname: $dirname"
echo "notSoDirname: $notSoDirname"
