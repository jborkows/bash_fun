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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7fff46983580 /* 93 vars */) = 0
[pid 17568] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5c4941056380 /* 93 vars */) = 0
[pid 17571] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5c4941056380 /* 93 vars */) = 0
[pid 17574] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5c4941056380 /* 93 vars */) = 0
[pid 17577] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5c4941056380 /* 93 vars */) = 0
[pid 17580] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5c4941056380 /* 93 vars */) = 0
[pid 17583] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5c4941056380 /* 93 vars */) = 0
[pid 17586] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5c4941056380 /* 93 vars */) = 0
[pid 17589] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5c4941056380 /* 93 vars */) = 0
[pid 17592] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5c4941056380 /* 93 vars */) = 0
```
