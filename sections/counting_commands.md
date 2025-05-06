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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7ffee06b4050 /* 93 vars */) = 0
[pid 85344] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x620c00b074a0 /* 93 vars */) = 0
[pid 85347] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x620c00b074a0 /* 93 vars */) = 0
[pid 85350] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x620c00b074a0 /* 93 vars */) = 0
[pid 85353] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x620c00b074a0 /* 93 vars */) = 0
[pid 85356] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x620c00b074a0 /* 93 vars */) = 0
[pid 85359] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x620c00b074a0 /* 93 vars */) = 0
[pid 85362] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x620c00b074a0 /* 93 vars */) = 0
[pid 85365] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x620c00b074a0 /* 93 vars */) = 0
[pid 85368] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x620c00b074a0 /* 93 vars */) = 0
```
