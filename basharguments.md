## Working with input arguments expansion
### Naive expansion
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
