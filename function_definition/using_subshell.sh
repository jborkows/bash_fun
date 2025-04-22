#!/usr/bin/env bash
set -euo pipefail
name="foo"

no_overwriting_upper() (
	local name=$1
	echo "Name: $name"
)
foo() (
	name=$1
	echo "Name: $name"
)
no_overwriting_upper "bar"
echo "Name: $name"
echo Still not overwriting
foo "bar"
echo "Name: $name"
