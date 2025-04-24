## cstyleloops
### Expansion
_expansion.sh_
```bash
#!/usr/bin/env bash

for i in {1..5}; do
    echo "Iteration $i"
done

```
```bash
bash expansion.sh
```
```
Iteration 1
Iteration 2
Iteration 3
Iteration 4
Iteration 5
```
### Failed Expansion
_failed_expansion.sh_
```bash
#!/usr/bin/env bash

max=5
for i in {1..$max}; do
    echo "Iteration $i"
done
```
```bash
bash failed_expansion.sh
```
```
Iteration {1..5}
```
### c style
_cstyle.sh_
```bash
#!/usr/bin/env bash
max=5
for (( i=1; i<=max; i++ )); do
	echo "Iteration $i"
done
```
```bash
bash cstyle.sh
```
```
Iteration 1
Iteration 2
Iteration 3
Iteration 4
Iteration 5
```
