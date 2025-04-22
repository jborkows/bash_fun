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
execve("/usr/bin/bash", ["bash", "multiplesubshell.sh"], 0x7ffe166be080 /* 93 vars */) = 0
[pid 585087] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5f8d2411b380 /* 93 vars */) = 0
[pid 585092] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5f8d2411b380 /* 93 vars */) = 0
[pid 585097] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5f8d2411b380 /* 93 vars */) = 0
[pid 585100] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5f8d2411b380 /* 93 vars */) = 0
[pid 585103] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5f8d2411b380 /* 93 vars */) = 0
[pid 585106] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5f8d2411b380 /* 93 vars */) = 0
[pid 585109] execve("/usr/bin/cut", ["cut", "-d", ":", "-f1"], 0x5f8d2411b380 /* 93 vars */) = 0
[pid 585112] execve("/usr/bin/cut", ["cut", "-d", ":", "-f2"], 0x5f8d2411b380 /* 93 vars */) = 0
[pid 585115] execve("/usr/bin/cut", ["cut", "-d", ":", "-f", "3-"], 0x5f8d2411b380 /* 93 vars */) = 0
```
