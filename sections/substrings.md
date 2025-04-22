## Substrings
### From beginning to end
basic.sh
```bash
#!/usr/bin/env bash
set -euo pipefail
text="hello world"
echo "text: $text"
echo "text from 0: ${text:0}"
echo "text from 1: ${text:1}"
echo "text from 2: ${text:2}"
```
```bash
bash basic.sh
```
```
text: hello world
text from 0: hello world
text from 1: ello world
text from 2: llo world
```
### From end to beginning
fromend.sh
```bash
#!/usr/bin/env bash
set -euo pipefail
text="hello world"
echo "text: $text"
echo "text from -1 (wrong): ${text:-1}"
echo "text from -1 (fixed important space): ${text: -1}"
echo "text from -2: ${text: -2}"
echo "text from -3: ${text: -3}"
```
```bash
bash fromend.sh
```
```
text: hello world
text from -1 (wrong): hello world
text from -1 (fixed important space): d
text from -2: ld
text from -3: rld
```
