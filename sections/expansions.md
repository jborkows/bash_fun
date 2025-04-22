## Expansions
### Basics

```bash
#!/usr/bin/env bash
filename=my-file
echo "$filename".{txt,sh,png}
```
```bash
bash basic.sh
```
```
my-file.txt my-file.sh my-file.png
```
### Into array

```bash
#!/usr/bin/env bash
filename=my-file
array=("$filename".{txt,sh,png})
IFS=":"
echo "${array[*]}"
IFS=
```
```bash
bash array.sh
```
```
my-file.txt:my-file.sh:my-file.png
```
### Complex array

```bash
#!/usr/bin/env bash
filename=my-file
array=(home/{john,franc,molly}/"$filename".{txt,sh,png})
echo There are ${#array[@]} entries in the array
IFS=$'\n'
echo "${array[*]}"
IFS=
```
```bash
bash complex_array.sh
```
```
There are 9 entries in the array
home/john/my-file.txt
home/john/my-file.sh
home/john/my-file.png
home/franc/my-file.txt
home/franc/my-file.sh
home/franc/my-file.png
home/molly/my-file.txt
home/molly/my-file.sh
home/molly/my-file.png
```
