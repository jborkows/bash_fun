## Reading files in different ways
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
21:20:59 First line
21:20:59 Second line
21:20:59 Third line
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
21:21:00 First line
21:21:01 Second line
21:21:02 Third line
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
21:21:02 First line
21:21:02 Second line
21:21:02 Third line
or
21:21:02 First line
21:21:02 Second line
21:21:02 Third line
```
