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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7ffced0d1290 /* 93 vars */) = 0
[pid 604940] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5825277ff380 /* 93 vars */) = 0
[pid 604943] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5825277ff380 /* 93 vars */) = 0
[pid 604946] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5825277ff380 /* 93 vars */) = 0
[pid 604949] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5825277ff380 /* 93 vars */) = 0
[pid 604952] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5825277ff380 /* 93 vars */) = 0
[pid 604955] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5825277ff380 /* 93 vars */) = 0
[pid 604958] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5825277ff380 /* 93 vars */) = 0
[pid 604961] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5825277ff380 /* 93 vars */) = 0
[pid 604964] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5825277ff380 /* 93 vars */) = 0
```
