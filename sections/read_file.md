## Reading files in different ways
_example.txt_
```bash
First line
Second line
Third line
```
_slow_read.sh_
```bash
#!/usr/bin/env bash
while read -r line; do
  sleep 1
  echo "$line"
done < <(cat $1)
```
### everything in memory then process
_reading_all_at_once.sh_
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
22:08:32 First line
22:08:32 Second line
22:08:32 Third line
```
### line by line
_reading_line_by_line.sh_
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
22:08:33 First line
22:08:34 Second line
22:08:35 Third line
```
### line by line - without slow
_reading_line_by_line_normal.sh_
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
22:08:35 First line
22:08:35 Second line
22:08:35 Third line
or
22:08:35 First line
22:08:35 Second line
22:08:35 Third line
```
