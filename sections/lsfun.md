## Playing with ls
### ls -l
```bash
ls -l ./files
```
```
total 0
-rw-r--r-- 1 jborkows jborkows 0 kwi 19 10:39 a
-rw-r--r-- 1 jborkows jborkows 0 kwi 19 10:39 b
-rw-r--r-- 1 jborkows jborkows 0 kwi 19 10:39 c
-rw-r--r-- 1 jborkows jborkows 0 kwi 19 10:39 d      e
```
### script ls into for loop (uses spaces as separator)

```bash
#!/bin/bash
for f in `ls files`;do  #uses spaces as separator...
	echo file is $f
done
```
```bash
bash first.sh
```
```
file is a
file is b
file is c
file is d
file is e
```
### script ls into for loop (replacing IFS)

```bash
#!/bin/bash
IFS=";"
for f in `ls files`;do 
	echo file is $f
done
IFS=

```
```bash
bash first_with_ifs.sh
```
```
file is a
b
c
d      e
```
### script using for in with globbing

```bash
#!/usr/bin/env bash 
# searches for bash based on environment not on path with path like /bin/bash
for f in ./files/*; do 
	echo "file is $f"
done
```
```bash
bash second.sh
```
```
file is ./files/a
file is ./files/b
file is ./files/c
file is ./files/d      e
```
