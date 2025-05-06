## Extended Globbing
### Checking if extended globbing is enabled
```bash
shopt extglob
```
```
extglob        	off
```
```bash
ls
```
```
file1.png
file1.txt
file2.jpg
file3.txt
```
### Enabling extended glob
```bash
shopt -s extglob
```
```
```
```bash
shopt extglob
```
```
extglob        	on
```
### Ignoring text files
```bash
ls !(*.txt)
```
```
file1.png
file2.jpg
```
### Matching only file1 txt and png
```bash
ls ./file1.+(txt|png)
```
```
./file1.png
./file1.txt
```
