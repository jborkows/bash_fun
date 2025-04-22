#!/usr/bin/env bash
(exit 2) | (exit 251) | false | true
echo "${PIPESTATUS[*]}"
