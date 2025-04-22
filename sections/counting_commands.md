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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7ffc254a9660 /* 93 vars */) = 0
[pid 535157] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x59c671281380 /* 93 vars */) = 0
[pid 535160] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x59c671281380 /* 93 vars */) = 0
[pid 535163] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x59c671281380 /* 93 vars */) = 0
[pid 535166] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x59c671281380 /* 93 vars */) = 0
[pid 535169] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x59c671281380 /* 93 vars */) = 0
[pid 535172] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x59c671281380 /* 93 vars */) = 0
[pid 535175] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x59c671281380 /* 93 vars */) = 0
[pid 535178] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x59c671281380 /* 93 vars */) = 0
[pid 535181] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x59c671281380 /* 93 vars */) = 0
```
