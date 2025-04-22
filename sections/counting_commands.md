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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7fff9462abb0 /* 93 vars */) = 0
[pid 661439] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x625dd282c380 /* 93 vars */) = 0
[pid 661442] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x625dd282c380 /* 93 vars */) = 0
[pid 661445] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x625dd282c380 /* 93 vars */) = 0
[pid 661448] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x625dd282c380 /* 93 vars */) = 0
[pid 661451] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x625dd282c380 /* 93 vars */ <unfinished ...>
[pid 661451] <... execve resumed>)      = 0
[pid 661455] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x625dd282c380 /* 93 vars */) = 0
[pid 661458] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x625dd282c380 /* 93 vars */) = 0
[pid 661461] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x625dd282c380 /* 93 vars */) = 0
[pid 661465] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x625dd282c380 /* 93 vars */) = 0
```
