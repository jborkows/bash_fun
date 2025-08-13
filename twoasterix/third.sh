#!/usr/bin/env bash
shopt -s globstar

printf '%s\n' **

afiles=( **/*.file )
echo "There are ${#afiles[@]} *.file"
