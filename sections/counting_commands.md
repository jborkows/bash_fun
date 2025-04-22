## Counting and showing execution of external commands
### counting
```bash
(cd ../parsingline; strace -f -e trace=execve bash multiplesubshell.sh 2>&1 | grep execve | wc -l)
```
```
10
```
### showing
```bash
(cd ../parsingline; strace -f -e trace=execve bash multiplesubshell.sh 2>&1 | grep execve  )
```
```
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7ffd462d4ac0 /* 93 vars */) = 0
[pid 531449] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5eae068c7380 /* 93 vars */) = 0
[pid 531452] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5eae068c7380 /* 93 vars */) = 0
[pid 531455] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5eae068c7380 /* 93 vars */) = 0
[pid 531458] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5eae068c7380 /* 93 vars */) = 0
[pid 531461] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5eae068c7380 /* 93 vars */) = 0
[pid 531464] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5eae068c7380 /* 93 vars */) = 0
[pid 531467] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5eae068c7380 /* 93 vars */) = 0
[pid 531470] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5eae068c7380 /* 93 vars */) = 0
[pid 531473] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5eae068c7380 /* 93 vars */) = 0
```
