#!/usr/bin/env bash
set -euo pipefail

echo "How many are there $(bash count.sh)"
echo "How many are there in clear env $(env - bash count.sh)"
echo "How many are there in clear env with added stuff $(env - FOO=hi BAR=aa bash count.sh)"


