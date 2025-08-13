#!/usr/bin/env bash
set -o pipefail
echo "AAAA" > one_liner.txt

cleanup(){
	rm one_liner.txt
}

trap cleanup EXIT

cat one_liner.txt | head -n 1
echo $?
