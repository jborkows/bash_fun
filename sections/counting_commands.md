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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7ffe411470a0 /* 93 vars */) = 0
[pid 675179] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x64abebca2380 /* 93 vars */) = 0
[pid 675182] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x64abebca2380 /* 93 vars */) = 0
[pid 675185] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x64abebca2380 /* 93 vars */) = 0
[pid 675188] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x64abebca2380 /* 93 vars */) = 0
[pid 675191] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x64abebca2380 /* 93 vars */) = 0
[pid 675194] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x64abebca2380 /* 93 vars */) = 0
[pid 675197] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x64abebca2380 /* 93 vars */) = 0
[pid 675200] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x64abebca2380 /* 93 vars */) = 0
[pid 675203] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x64abebca2380 /* 93 vars */) = 0
```
