## Reading files in different ways

```bash
First line
Second line
Third line
```

```bash
#!/usr/bin/env bash
while read -r line; do
  sleep 1
  echo "$line"
done < <(cat $1)
```
### everything in memory then process

```bash
#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n'
for thing in $(bash slow_read.sh example.txt); do
  echo $(date +'%H:%M:%S') "$thing"
done
```
```bash
bash reading_all_at_once.sh
```
```
21:42:47 First line
21:42:47 Second line
21:42:47 Third line
```
### line by line

```bash
#!/usr/bin/env bash
set -euo pipefail
while read -r thing; do
  echo $(date +'%H:%M:%S') "$thing"
done < <(bash slow_read.sh example.txt)


```
```bash
bash reading_line_by_line.sh
```
```
21:42:48 First line
21:42:49 Second line
21:42:50 Third line
```
### line by line - without slow

```bash
#!/usr/bin/env bash
set -euo pipefail
while read -r thing; do
  echo $(date +'%H:%M:%S') "$thing"
done < <(cat example.txt)
echo or

while read -r thing; do
  echo $(date +'%H:%M:%S') "$thing"
done < example.txt


```
```bash
bash reading_line_by_line_normal.sh
```
```
21:42:50 First line
21:42:50 Second line
21:42:50 Third line
or
21:42:50 First line
21:42:50 Second line
21:42:50 Third line
```
