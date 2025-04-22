## Working with input arguments expansion
### Naive expansion
first.sh
```bash
#!/usr/bin/env bash
for arg in $*;do
	echo "arg is <$arg>"
done
```
```bash
bash first.sh foo 'bar zoo' 'ooo  xxx'
```
```
arg is <foo>
arg is <bar>
arg is <zoo>
arg is <ooo>
arg is <xxx>
```
### Naive expansion - adding quotas
first_all_in_quota.sh
```bash
#!/usr/bin/env bash
for arg in "$*";do
	echo "arg is <$arg>"
done
```
```bash
bash first_all_in_quota.sh foo 'bar zoo' 'ooo  xxx'
```
```
arg is <foo bar zoo ooo  xxx>
```
### Fixed
fixed.sh
```bash
#!/usr/bin/env bash
for arg in "$@";do
	echo "arg is <$arg>"
done
```
```bash
bash fixed.sh foo 'bar zoo' 'ooo  xxx'
```
```
arg is <foo>
arg is <bar zoo>
arg is <ooo  xxx>
```
