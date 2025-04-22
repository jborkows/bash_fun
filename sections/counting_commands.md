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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7ffd0ac984e0 /* 93 vars */) = 0
[pid 682822] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5c0981441380 /* 93 vars */) = 0
[pid 682825] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5c0981441380 /* 93 vars */) = 0
[pid 682828] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5c0981441380 /* 93 vars */) = 0
[pid 682831] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5c0981441380 /* 93 vars */) = 0
[pid 682834] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5c0981441380 /* 93 vars */) = 0
[pid 682837] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5c0981441380 /* 93 vars */) = 0
[pid 682840] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5c0981441380 /* 93 vars */) = 0
[pid 682843] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5c0981441380 /* 93 vars */) = 0
[pid 682846] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5c0981441380 /* 93 vars */) = 0
```
