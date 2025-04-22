#!/usr/bin/env bash
set -euo pipefail
one='hello'
two=''
echo "${one:-foo}"
echo "${two:-bar}"
