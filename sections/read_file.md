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
21:37:23 First line
21:37:23 Second line
21:37:23 Third line
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
21:37:24 First line
21:37:25 Second line
21:37:26 Third line
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
21:37:26 First line
21:37:26 Second line
21:37:26 Third line
or
21:37:26 First line
21:37:26 Second line
21:37:26 Third line
```
