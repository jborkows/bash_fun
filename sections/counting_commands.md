## Counting and showing execution of external commands
### counting
```bash
(cd ../parsingline; strace -f -e trace=execve bash multiplesubshell.sh 2>&1 | grep execve | wc -l)
```
```
11
```
### showing
```bash
(cd ../parsingline; strace -f -e trace=execve bash multiplesubshell.sh 2>&1 | grep execve  )
```
```
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7ffe61d2a4c0 /* 93 vars */) = 0
[pid 642792] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x56f679626380 /* 93 vars */ <unfinished ...>
[pid 642792] <... execve resumed>)      = 0
[pid 642795] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x56f679626380 /* 93 vars */) = 0
[pid 642798] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x56f679626380 /* 93 vars */) = 0
[pid 642801] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x56f679626380 /* 93 vars */) = 0
[pid 642804] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x56f679626380 /* 93 vars */) = 0
[pid 642807] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x56f679626380 /* 93 vars */ <unfinished ...>
[pid 642807] <... execve resumed>)      = 0
[pid 642810] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x56f679626380 /* 93 vars */) = 0
[pid 642813] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x56f679626380 /* 93 vars */) = 0
[pid 642816] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x56f679626380 /* 93 vars */ <unfinished ...>
[pid 642816] <... execve resumed>)      = 0
```
