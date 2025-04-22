## Reading files
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
18:53:28 First line
18:53:28 Second line
18:53:28 Third line
```
### line by line
reading_line_by_line.sh
```bash
#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n'
while read -r thing; do
  echo $(date +'%H:%M:%S') "$thing"
done < <(bash slow_read.sh example.txt)


```
```bash
bash reading_line_by_line.sh
```
```
18:53:29 First line
18:53:30 Second line
18:53:31 Third line
```
### line by line - without slow
reading_line_by_line_normal.sh
```bash
#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n'
while read -r thing; do
  echo $(date +'%H:%M:%S') "$thing"
done < <(cat example.txt)


```
```bash
bash reading_line_by_line_normal.sh
```
```
18:53:31 First line
18:53:31 Second line
18:53:31 Third line
```
