## Using proc to read environment variables
### Using proc
basic.sh
```bash
#!/usr/bin/env bash
set -euo pipefail
export FOO=hahahahah

echo "looking for FOO in env"
env | grep FOO
echo 'looking for FOO in proc $$'
cat /proc/$$/environ | tr '\0' '\n' | grep FOO || echo 'not found in snapshot' # in state of environment when the process was started
echo 'looking for FOO in proc self' 
cat /proc/self/environ | tr '\0' '\n' | grep FOO # in state of cat, which is subprocess of current shell

```
```bash
bash basic.sh
```
```
looking for FOO in env
FOO=hahahahah
looking for FOO in proc $$
not found in snapshot
looking for FOO in proc self
FOO=hahahahah
```
