#!/usr/bin/env bash
set -euo pipefail
text="hello world"
echo "text: $text"
echo "text from -1 (wrong): ${text:-1}"
echo "text from -1 (fixed important space): ${text: -1}"
echo "text from -2: ${text: -2}"
echo "text from -3: ${text: -3}"
