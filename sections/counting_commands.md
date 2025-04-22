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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7ffe4a3b89a0 /* 93 vars */) = 0
[pid 529323] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x57a7134f9380 /* 93 vars */) = 0
[pid 529326] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x57a7134f9380 /* 93 vars */) = 0
[pid 529329] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x57a7134f9380 /* 93 vars */) = 0
[pid 529332] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x57a7134f9380 /* 93 vars */) = 0
[pid 529335] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x57a7134f9380 /* 93 vars */) = 0
[pid 529338] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x57a7134f9380 /* 93 vars */) = 0
[pid 529341] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x57a7134f9380 /* 93 vars */) = 0
[pid 529344] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x57a7134f9380 /* 93 vars */) = 0
[pid 529347] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x57a7134f9380 /* 93 vars */) = 0
```
