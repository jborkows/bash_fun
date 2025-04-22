## Playing with parameter expansion
### patterns

```bash
#!/usr/bin/env bash
set -euo pipefail

filename="/aaa/bbb/ccc/ddd.txt"
echo "input: $filename"

basename=${filename##*/} # First # means remove pattern from beginning, second ## means remove pattern greedy, pattern is everything followed by /
echo "basename: $basename"

dirname=${filename%/*} # First % means remove pattern from end
notSoDirname=${filename%%/*} 

echo "dirname: $dirname"
echo "notSoDirname: $notSoDirname"
```
```bash
bash first.sh
```
```
input: /aaa/bbb/ccc/ddd.txt
basename: ddd.txt
dirname: /aaa/bbb/ccc
notSoDirname: 
```
### replacement

```bash
#!/usr/bin/env bash
set -euo pipefail

old='Some string to be replaced'
echo $old
echo Replacing...
new=${old/to/was}
echo ${new/be/}	
```
```bash
bash replacement.sh
```
```
Some string to be replaced
Replacing...
Some string was replaced
```
### default value

```bash
#!/usr/bin/env bash
set -euo pipefail
one='hello'
two=''
echo "${one:-foo}"
echo "${two:-bar}"
```
```bash
bash defaultvalues.sh
```
```
hello
bar
```
### lower case/upper case

```bash
#!/usr/bin/env bash
set -euo pipefail

input="heLlo woRld"
echo $input
echo lower cased ${input,,}
echo upper cased ${input^^}
```
```bash
bash lower_upper_case.sh
```
```
heLlo woRld
lower cased hello world
upper cased HELLO WORLD
```
