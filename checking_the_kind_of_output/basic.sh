#!/usr/bin/env bash
([[ -t 1 ]] && echo is a tty || echo is not a tty)
([[ -t 1 ]] && echo is a tty || echo is not a tty) | cat

function printArray() {
	local arr=(1 2 3 4 5)
	if [[ ! -t 1 ]]; then
		IFS=$'\n'
	fi
	echo "${arr[*]}"
	IFS=
}

echo print it
printArray
echo print it by piping
printArray | cat
