#!/usr/bin/env bash
set -euo pipefail
names=( "one", "two", $'baz\tbat', $'new\nline' )
echo with @
for name in "${names[@]}"; do
    echo "Name: $name"
done

echo or with \*
for name in "${names[*]}"; do
    echo "Name: $name"
done
