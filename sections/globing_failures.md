## Warning with globing
### Failure...
_failure.sh_
```bash
#!/usr/bin/env bash
# set -euo pipefail #with this the globing will fail it will show wrongly file but it will not show the final message
i=0
a=$(mktemp -d)
for f in $a/*; do
  echo "File: $f"
  ((i++))
done
echo "Number of files: $i"
```
```bash
bash failure.sh
```
```
File: /tmp/tmp.fbEM4H6qxe/*
Number of files: 1
```
### Fixed...
_fixed.sh_
```bash
#!/usr/bin/env bash
set -euo pipefail 
shopt -s nullglob
i=0
a=$(mktemp -d)
for f in $a/*; do
  echo "File: $f"
  ((i++))
done
echo "Number of files: $i"
```
```bash
bash fixed.sh
```
```
Number of files: 0
```
