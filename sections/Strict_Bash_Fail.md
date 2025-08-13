## Strict Bash Fail
### Working pipefile
_working_pipefile.sh_
```bash
#!/usr/bin/env bash
set -o pipefail
echo "AAAA" > one_liner.txt

cleanup(){
	rm one_liner.txt
}

trap cleanup EXIT

cat one_liner.txt | head -n 1
echo $?
```
```bash
bash working_pipefile.sh
```
```
AAAA
0
```
### Not working pipefile
_not_working_pipefile.sh_
```bash
#!/usr/bin/env bash
set -o pipefail
wc -l /usr/share/dict/words
cat /usr/share/dict/words | head -n 1
endedWith=$?
echo $endedWith
signalCode=$(( endedWith - 128 ))
trap -l | xargs -n2 | grep ${signalCode}\)


```
```bash
bash not_working_pipefile.sh
```
```
104334 /usr/share/dict/words
A
141
13) SIGPIPE
```
### Using bash -u to check, alternative to set -u
_script_with_failure.sh_
```bash
#!/usr/bin/env bash

echo $a
b=$a
```
```bash
bash -u script_with_failure.sh 2>&1
```
```
script_with_failure.sh: line 3: a: unbound variable
```
### Without set -e
_withoutsete.sh_
```bash
#!/usr/bin/env bash
set +e
i=-2; ((i++)); echo -2\+\+ status $?;
i=-1; ((i++)); echo -1\+\+ status $?;
i=0; ((i++)); echo 0\+\+ status $?;
i=1; ((i++)); echo 1\+\+ status $?;


```
```bash
bash withoutsete.sh
```
```
-2++ status 0
-1++ status 0
0++ status 1
1++ status 0
```
### With set -e
_withsete.sh_
```bash
#!/usr/bin/env bash
set -e
i=-2; ((i++)); echo -2++ status $?;
i=-1; ((i++)); echo -1++ status $?;
i=0; ((i++)); echo 0++ status $?;
i=1; ((i++)); echo 1++ status $?;
```
```bash
bash withsete.sh
```
```
-2++ status 0
-1++ status 0
```
### Another example without set -e
_withoutsete_function.sh_
```bash
#!/usr/bin/env bash
set +e

my-one-func(){
	echo begin my-one-func
	local output=$(false)
	echo after my-one-func
}


my-second-func(){
	echo begin my-second-func
	local output
	output=$(false)
	echo after my-second-func
}

echo start
my-one-func
my-second-func
echo done
```
```bash
bash withoutsete_function.sh
```
```
start
begin my-one-func
after my-one-func
begin my-second-func
after my-second-func
done
```
### Another example with set -e
_withsete_function.sh_
```bash
#!/usr/bin/env bash
set -e

my-one-func(){
	echo begin my-one-func
	# assignment hides return value so it will pass with set -e
	local output=$(false)
	echo after my-one-func
}


my-second-func(){
	echo begin my-second-func
	local output
	output=$(false)
	echo after my-second-func
}

echo start
my-one-func
my-second-func
echo 'done'
```
```bash
bash withsete_function.sh
```
```
start
begin my-one-func
after my-one-func
begin my-second-func
```
