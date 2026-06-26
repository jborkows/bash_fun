#!/usr/bin/env bash
coproc cat -n 
declare -p COPROC COPROC_PID

read_end=${COPROC[0]}
write_end=${COPROC[1]}

echo "hello world" >&"$write_end"
IFS= read -r  <&"$read_end"
echo "$REPLY"
echo "use variable to read" >&"$write_end"
IFS= read -r answer <&"$read_end"
echo "$answer"
echo "read more" >&"$write_end"
IFS= read -r -u "$read_end" read_more
echo "$read_more"
echo killing last job
kill %% 
