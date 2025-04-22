## Reading files in different ways
### everything in memory then process
reading_all_at_once.sh
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
20:48:20 First line
20:48:20 Second line
20:48:20 Third line
```
### line by line
reading_line_by_line.sh
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
20:48:21 First line
20:48:22 Second line
20:48:23 Third line
```
### line by line - without slow
reading_line_by_line_normal.sh
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
20:48:23 First line
20:48:23 Second line
20:48:23 Third line
or
20:48:23 First line
20:48:23 Second line
20:48:23 Third line
```
