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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7ffc58173150 /* 93 vars */) = 0
[pid 676797] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x61ad330da380 /* 93 vars */) = 0
[pid 676800] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x61ad330da380 /* 93 vars */) = 0
[pid 676803] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x61ad330da380 /* 93 vars */) = 0
[pid 676806] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x61ad330da380 /* 93 vars */) = 0
[pid 676809] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x61ad330da380 /* 93 vars */) = 0
[pid 676812] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x61ad330da380 /* 93 vars */) = 0
[pid 676815] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x61ad330da380 /* 93 vars */) = 0
[pid 676818] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x61ad330da380 /* 93 vars */) = 0
[pid 676821] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x61ad330da380 /* 93 vars */) = 0
```
