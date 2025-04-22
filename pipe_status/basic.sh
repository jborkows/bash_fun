#!/usr/bin/env bash
echo hi | cat foo - | head 
echo "General status code: $?"
echo hi | cat foo - | head 
echo "${PIPESTATUS[*]}"
