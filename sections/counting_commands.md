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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7ffe001f1920 /* 93 vars */) = 0
[pid 681446] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x605276e5c380 /* 93 vars */) = 0
[pid 681449] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x605276e5c380 /* 93 vars */) = 0
[pid 681452] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x605276e5c380 /* 93 vars */) = 0
[pid 681455] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x605276e5c380 /* 93 vars */) = 0
[pid 681458] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x605276e5c380 /* 93 vars */) = 0
[pid 681461] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x605276e5c380 /* 93 vars */) = 0
[pid 681464] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x605276e5c380 /* 93 vars */) = 0
[pid 681467] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x605276e5c380 /* 93 vars */) = 0
[pid 681470] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x605276e5c380 /* 93 vars */) = 0
```
