## Working with input arguments expansion
### Naive expansion

```bash
#!/usr/bin/env bash
for arg in $*;do
	echo "arg is <$arg>"
done
```
```bash
bash first.sh
```
```
```
### Naive expansion - adding quotas

```bash
#!/usr/bin/env bash
for arg in "$*";do
	echo "arg is <$arg>"
done
```
```bash
bash first_all_in_quota.sh
```
```
arg is <>
```
### Fixed

```bash
#!/usr/bin/env bash
for arg in "$@";do
	echo "arg is <$arg>"
done
```
```bash
bash fixed.sh
```
```
```
