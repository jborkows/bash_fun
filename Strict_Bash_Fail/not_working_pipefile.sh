#!/usr/bin/env bash
set -o pipefail
wc -l /usr/share/dict/words
cat /usr/share/dict/words | head -n 1
endedWith=$?
echo $endedWith
signalCode=$(( endedWith - 128 ))
trap -l | xargs -n2 | grep ${signalCode}\)


