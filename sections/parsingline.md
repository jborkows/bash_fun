## Reading and parsing files
### original file

```bash
jan:1:someone else
jarek:2:not a politician
jacek:3:someone different :1
```
### multiple external commands for each line

```bash
#!/usr/bin/env bash
set -euo pipefail

while read line; do 
	name=$(echo "$line" | cut -d ':' -f1)
	id=$(echo "$line" | cut -d ':' -f2)
	comment=$(echo "$line" | cut -d ':' -f 3-) # read 3rd and all following fields
	echo "$id: $name comment: $comment"
done < data.txt	
```
```bash
bash multiplesubshell.sh
```
```
1: jan comment: someone else
2: jarek comment: not a politician
3: jacek comment: someone different :1
```
### single command for each line

```bash
#!/usr/bin/env bash

while IFS=: read -r name id comment; do 
	echo "$id: $name comment: $comment"
done < data.txt

```
```bash
bash singlecommand.sh
```
```
1: jan comment: someone else
2: jarek comment: not a politician
3: jacek comment: someone different :1
```
