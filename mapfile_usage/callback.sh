#!/usr/bin/env bash
my_func() {
	lineIndex=$1
	line=$2
	echo "(mapfile) read: $line (at ${lineIndex})"
}
howManyLinesToReadBeforeCallingMyFunc=1
mapfile -t -C my_func -c ${howManyLinesToReadBeforeCallingMyFunc} my_array  < data.txt
printf '<%s>\n' "${my_array[@]}"
