## coproc fun
### Simple example
_simple_example.sh_
```bash
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
```
```bash
bash simple_example.sh
```
```
declare -a COPROC=([0]="63" [1]="60")
declare -- COPROC_PID="113853"
     1	hello world
     2	use variable to read
     3	read more
killing last job
```
### Naming coproc
_naming_coproc.sh_
```bash
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
```
```bash
bash naming_coproc.sh
```
```
[Read] 1	[writer foo] Hello
[Read] 2	[writer zoo] Hello
[Read] 3	[writer baz] Hello
```
