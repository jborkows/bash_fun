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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7fff7e28aa60 /* 93 vars */) = 0
[pid 671485] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5af5fa4d8380 /* 93 vars */) = 0
[pid 671488] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5af5fa4d8380 /* 93 vars */) = 0
[pid 671491] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5af5fa4d8380 /* 93 vars */) = 0
[pid 671494] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5af5fa4d8380 /* 93 vars */) = 0
[pid 671497] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5af5fa4d8380 /* 93 vars */) = 0
[pid 671500] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5af5fa4d8380 /* 93 vars */) = 0
[pid 671503] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5af5fa4d8380 /* 93 vars */) = 0
[pid 671506] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5af5fa4d8380 /* 93 vars */) = 0
[pid 671509] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5af5fa4d8380 /* 93 vars */) = 0
```
