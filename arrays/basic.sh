#!/usr/bin/env bash
set -euo pipefail
names=( "one", "two", "three" )
for name in "${names[@]}"; do
    echo "Name: $name"
done

echo or without commas
orNames=( "one"
    "two"
    "three" )
for name in "${orNames[@]}"; do
    echo "Name: $name"
done

echo In array are ${#names[@]} elements
echo \* joins array to string

echo Using default separator for "${orNames[*]}"
IFS=','
echo Using separator , for "${orNames[*]}"
echo Using separator , for array which was ',' "${names[*]}"
echo see that in even iterating using @ each argument has comma in it!
IFS=
