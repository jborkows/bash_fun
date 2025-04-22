#!/usr/bin/env bash
set -euo pipefail

input="heLlo woRld"
echo $input
echo lower cased ${input,,}
echo upper cased ${input^^}
