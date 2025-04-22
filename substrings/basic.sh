#!/usr/bin/env bash
set -euo pipefail
text="hello world"
echo "text: $text"
echo "text from 0: ${text:0}"
echo "text from 1: ${text:1}"
echo "text from 2: ${text:2}"
