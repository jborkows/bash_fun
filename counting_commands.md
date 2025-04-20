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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7fff19389f80 /* 93 vars */) = 0
[pid 78549] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x629da34c54a0 /* 93 vars */) = 0
[pid 78552] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x629da34c54a0 /* 93 vars */) = 0
[pid 78556] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x629da34c54a0 /* 93 vars */) = 0
[pid 78561] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x629da34c54a0 /* 93 vars */) = 0
[pid 78564] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x629da34c54a0 /* 93 vars */) = 0
[pid 78567] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x629da34c54a0 /* 93 vars */) = 0
[pid 78570] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x629da34c54a0 /* 93 vars */) = 0
[pid 78573] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x629da34c54a0 /* 93 vars */) = 0
[pid 78576] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x629da34c54a0 /* 93 vars */) = 0
```
