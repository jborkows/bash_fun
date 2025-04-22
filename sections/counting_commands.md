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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7ffdcf0f1440 /* 93 vars */) = 0
[pid 678081] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5ff9eb2cd380 /* 93 vars */) = 0
[pid 678084] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5ff9eb2cd380 /* 93 vars */) = 0
[pid 678087] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5ff9eb2cd380 /* 93 vars */) = 0
[pid 678090] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5ff9eb2cd380 /* 93 vars */) = 0
[pid 678093] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5ff9eb2cd380 /* 93 vars */) = 0
[pid 678096] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5ff9eb2cd380 /* 93 vars */) = 0
[pid 678099] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5ff9eb2cd380 /* 93 vars */) = 0
[pid 678102] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5ff9eb2cd380 /* 93 vars */) = 0
[pid 678105] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5ff9eb2cd380 /* 93 vars */) = 0
```
