## Mapfile
### Basic usage
_basic.sh_
```bash
#!/usr/bin/env bash
mapfile my_array < data.txt
printf '<%s>\n' "${my_array[@]}"
```
```bash
bash basic.sh
```
```
<First line
>
<Second line
>
<Third line
>
```
### Basic usage - trimmed
_basic_trimmed.sh_
```bash
#!/usr/bin/env bash
mapfile -t my_array < data.txt
printf '<%s>\n' "${my_array[@]}"
```
```bash
bash basic_trimmed.sh
```
```
<First line>
<Second line>
<Third line>
```
### Limited to 2 lines
_limited.sh_
```bash
#!/usr/bin/env bash
mapfile -t -n 2 my_array < data.txt
printf '<%s>\n' "${my_array[@]}"
```
```bash
bash limited.sh
```
```
<First line>
<Second line>
```
### Add callback
_callback.sh_
```bash
#!/usr/bin/env bash
my_func() {
	lineIndex=$1
	line=$2
	echo "(mapfile) read: $line (at ${lineIndex})"
}
howManyLinesToReadBeforeCallingMyFunc=1
mapfile -t -C my_func -c ${howManyLinesToReadBeforeCallingMyFunc} my_array  < data.txt
printf '<%s>\n' "${my_array[@]}"
```
```bash
bash callback.sh
```
```
(mapfile) read: First line (at 0)
(mapfile) read: Second line (at 1)
(mapfile) read: Third line (at 2)
<First line>
<Second line>
<Third line>
```
