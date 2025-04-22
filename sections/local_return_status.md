## Playing with return parameter
### Example

```bash
#!/usr/bin/env bash

bad() {
   false
   echo "bad: $?"
}

good() {
   true
   echo "good: $?"
}
good
bad
```
```bash
bash example.sh
```
```
good: 0
bad: 1
```
### Capturing return value

```bash
#!/usr/bin/env bash

bad() {
   output=$(false)
   echo "bad: $?"
}

good() {
   output=$(true)
   echo "good: $?"
}
good
bad
```
```bash
bash capturing_result.sh
```
```
good: 0
bad: 1
```
### Capturing return value into local (wrong)

```bash
#!/usr/bin/env bash

bad() {
   local output=$(false)
   echo "bad: $?" #it caches the result of local so the return value if variable was created
}

good() {
   local output=$(true)
   echo "good: $?"
}
good
bad
```
```bash
bash  capturing_result_local.sh
```
```
good: 0
bad: 0
```
### Capturing return value into local (fixed)

```bash
#!/usr/bin/env bash

bad() {
   local output
   output=$(false)
   echo "bad: $?" #it caches the result of local so the return value if variable was created
}

good() {
   local output
   output=$(true)
   echo "good: $?"
}

good
bad
```
```bash
bash  capturing_result_local_correct.sh
```
```
good: 0
bad: 1
```
