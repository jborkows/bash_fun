## Making clear environment
### Clearing environment
basic.sh
```bash
#!/usr/bin/env bash
set -euo pipefail

echo "How many are there $(bash count.sh)"
echo "How many are there in clear env $(env - bash count.sh)"
echo "How many are there in clear env with added stuff $(env - FOO=hi BAR=aa bash count.sh)"


```
```bash
bash basic.sh
```
```
How many are there 93
How many are there in clear env 3
How many are there in clear env with added stuff 5
```
