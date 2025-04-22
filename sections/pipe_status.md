## Using pipe status
### Basics
_basic.sh_
```bash
#!/usr/bin/env bash
echo hi | cat foo - | head 
echo "General status code: $?"
echo hi | cat foo - | head 
echo "${PIPESTATUS[*]}"
```
```bash
bash basic.sh
```
```
hi
General status code: 0
hi
0 1 0
```
### Seeing exit codes
_morefun.sh_
```bash
#!/usr/bin/env bash
(exit 2) | (exit 251) | false | true
echo "${PIPESTATUS[*]}"
```
```bash
bash morefun.sh
```
```
2 251 1 0
```
