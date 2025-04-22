## Using () and {} in function definition
### Using {}
_curly.sh_
```bash
#!/usr/bin/env bash
set -euo pipefail
name="foo"

no_overwriting_upper() {
	local name=$1
	echo "Name: $name"
}
foo() {
	name=$1
	echo "Name: $name"
}
no_overwriting_upper "bar"
echo "Name: $name"
echo Now overwriting
foo "bar"
echo "Name: $name"
```
```bash
bash curly.sh
```
```
Name: bar
Name: foo
Now overwriting
Name: bar
Name: bar
```
### Using ()
_using_subshell.sh_
```bash
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
```
```bash
bash using_subshell.sh
```
```
Name: bar
Name: foo
Still not overwriting
Name: bar
Name: foo
```
### Playing with exit codes
_playing_exit_codes.sh_
```bash
#!/usr/bin/env bash

curly() {
	echo "Calling curly"
	exit 1
}

paranthessis() (
	echo "Calling paranthessis"
	exit 1
)

echo Before paranthessis
paranthessis
echo After paranthessis $?

echo Before curly
( curly )
echo After curly $?
echo Before curly
curly
echo After curly $? #this will not be printed

```
```bash
bash playing_exit_codes.sh
```
```
Before paranthessis
Calling paranthessis
After paranthessis 1
Before curly
Calling curly
After curly 1
Before curly
Calling curly
```
