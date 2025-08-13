## glob star
### Preparing
_first.sh_
```bash
#!/usr/bin/env bash
mkdir -p one/two/three
touch one/two/three/third.file
touch one/two/second.file
touch one/first.file





```
```bash
bash first.sh
```
```
```
### Without globstar
_second.sh_
```bash
#!/usr/bin/env bash

printf '%s\n' **

```
```bash
bash second.sh
```
```
first.sh
one
second.sh
summary.sh
third.sh
```
### With globstar
_third.sh_
```bash
#!/usr/bin/env bash
shopt -s globstar

printf '%s\n' **




```
```bash
bash third.sh
```
```
first.sh
one
one/first.file
one/two
one/two/second.file
one/two/three
one/two/three/third.file
second.sh
summary.sh
third.sh
```
