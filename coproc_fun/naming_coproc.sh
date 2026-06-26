#!/usr/bin/env bash
coproc NAMED_COPROC { cat -n; }


read_end=${NAMED_COPROC[0]}
write_end=${NAMED_COPROC[1]}
cat_pid=$NAMED_COPROC_PID

writer(){
	local descriptor=$1
	local name=$2
	echo [writer "$name"] Hello >&"$descriptor"
}

exec {writing}>&"${write_end}" #needs exec to duplicate descriptor, otherwise descriptor will be unavailable for writer processes

writer $writing foo &
writer $writing baz &
writer $writing zoo &
exec {writing}>&-

i=0
while read -r -u "$read_end" line; do
	((i++))
	echo [Read] "$line"
	if [[ i -eq 3 ]]; then
		break
	fi
done
kill "$cat_pid"
