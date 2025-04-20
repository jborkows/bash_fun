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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7ffd88a47450 /* 93 vars */) = 0
[pid 72440] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5a3121ecb4a0 /* 93 vars */) = 0
[pid 72444] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5a3121ecb4a0 /* 93 vars */) = 0
[pid 72447] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5a3121ecb4a0 /* 93 vars */) = 0
[pid 72450] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5a3121ecb4a0 /* 93 vars */) = 0
[pid 72454] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5a3121ecb4a0 /* 93 vars */) = 0
[pid 72457] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5a3121ecb4a0 /* 93 vars */) = 0
[pid 72462] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5a3121ecb4a0 /* 93 vars */) = 0
[pid 72465] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5a3121ecb4a0 /* 93 vars */) = 0
[pid 72468] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5a3121ecb4a0 /* 93 vars */) = 0
```
