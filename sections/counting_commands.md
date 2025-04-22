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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7ffe0b506ca0 /* 93 vars */) = 0
[pid 527105] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x632cbdd1b380 /* 93 vars */) = 0
[pid 527108] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x632cbdd1b380 /* 93 vars */) = 0
[pid 527111] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x632cbdd1b380 /* 93 vars */) = 0
[pid 527114] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x632cbdd1b380 /* 93 vars */) = 0
[pid 527117] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x632cbdd1b380 /* 93 vars */) = 0
[pid 527120] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x632cbdd1b380 /* 93 vars */) = 0
[pid 527123] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x632cbdd1b380 /* 93 vars */) = 0
[pid 527126] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x632cbdd1b380 /* 93 vars */) = 0
[pid 527129] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x632cbdd1b380 /* 93 vars */) = 0
```
