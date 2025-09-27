## Playing with inodes
### Declare utils
_show_stats.sh_
```bash
source conf.sh
stat $TEST_FILE | tee $DIFF_PREFIX."$INDEX" 
sleep 1
```
_show_diff_between_stats.sh_
```bash
source conf.sh
diff $DIFF_PREFIX."${FIRST_STATS}"  $DIFF_PREFIX."${SECOND_STATS}" 
```
## Prepare
_start.sh_
```bash
source conf.sh
rm -r $TEST_FILE 2> /dev/null || true
rm -r $DIFF_PREFIX* 2> /dev/null || true
touch $TEST_FILE
```
```bash
bash start.sh
```
```
```
```bash
INDEX=0 bash show_stats.sh
```
```
  File: /tmp/aaa_stat_fun
  Size: 0         	Blocks: 0          IO Block: 4096   regular empty file
Device: 252,1	Inode: 13107946    Links: 1
Access: (0664/-rw-rw-r--)  Uid: ( 1000/jborkows)   Gid: ( 1001/jborkows)
Access: 2025-09-27 10:55:53.290678583 +0200
Modify: 2025-09-27 10:55:53.290678583 +0200
Change: 2025-09-27 10:55:53.290678583 +0200
 Birth: 2025-09-27 10:55:53.290678583 +0200
```
## Chmod is changing inode
_use_chmod.sh_
```bash
source conf.sh
chmod g-r $TEST_FILE
```
```bash
bash use_chmod.sh
```
```
```
```bash
INDEX=1 bash show_stats.sh
```
```
  File: /tmp/aaa_stat_fun
  Size: 0         	Blocks: 0          IO Block: 4096   regular empty file
Device: 252,1	Inode: 13107946    Links: 1
Access: (0624/-rw--w-r--)  Uid: ( 1000/jborkows)   Gid: ( 1001/jborkows)
Access: 2025-09-27 10:55:53.290678583 +0200
Modify: 2025-09-27 10:55:53.290678583 +0200
Change: 2025-09-27 10:55:54.302666348 +0200
 Birth: 2025-09-27 10:55:53.290678583 +0200
```
```bash
FIRST_STATS=0  SECOND_STATS=1 bash show_diff_between_stats.sh
```
```
4c4
< Access: (0664/-rw-rw-r--)  Uid: ( 1000/jborkows)   Gid: ( 1001/jborkows)
---
> Access: (0624/-rw--w-r--)  Uid: ( 1000/jborkows)   Gid: ( 1001/jborkows)
7c7
< Change: 2025-09-27 10:55:53.290678583 +0200
---
> Change: 2025-09-27 10:55:54.302666348 +0200
```
## Changing content chaning both content (modify) and inode (change)
_replace_content.sh_
```bash
source conf.sh
echo "AAAA" > ${TEST_FILE}
```
```bash
bash replace_content.sh
```
```
```
```bash
INDEX=2 bash show_stats.sh
```
```
  File: /tmp/aaa_stat_fun
  Size: 5         	Blocks: 8          IO Block: 4096   regular file
Device: 252,1	Inode: 13107946    Links: 1
Access: (0624/-rw--w-r--)  Uid: ( 1000/jborkows)   Gid: ( 1001/jborkows)
Access: 2025-09-27 10:55:53.290678583 +0200
Modify: 2025-09-27 10:55:55.321295801 +0200
Change: 2025-09-27 10:55:55.321295801 +0200
 Birth: 2025-09-27 10:55:53.290678583 +0200
```
```bash
FIRST_STATS=1  SECOND_STATS=2 bash show_diff_between_stats.sh
```
```
2c2
<   Size: 0         	Blocks: 0          IO Block: 4096   regular empty file
---
>   Size: 5         	Blocks: 8          IO Block: 4096   regular file
6,7c6,7
< Modify: 2025-09-27 10:55:53.290678583 +0200
< Change: 2025-09-27 10:55:54.302666348 +0200
---
> Modify: 2025-09-27 10:55:55.321295801 +0200
> Change: 2025-09-27 10:55:55.321295801 +0200
```
## Directory with subdirectory has at least two links .. and .
_directory_links.sh_
```bash
stat .
```
```bash
bash directory_links.sh
```
```
  File: .
  Size: 4096      	Blocks: 8          IO Block: 4096   directory
Device: 252,1	Inode: 17831387    Links: 2
Access: (0775/drwxrwxr-x)  Uid: ( 1000/jborkows)   Gid: ( 1001/jborkows)
Access: 2025-09-26 20:26:40.726646031 +0200
Modify: 2025-09-27 10:55:21.954057266 +0200
Change: 2025-09-27 10:55:21.954057266 +0200
 Birth: 2025-09-26 20:26:40.726646031 +0200
```
## Inodes for links
_inodes_for_links.sh_
```bash
rm -rf /tmp/inodes_links_fun 2> /dev/null || true
mkdir /tmp/inodes_links_fun
(cd  /tmp/inodes_links_fun
touch original.txt
ln original.txt hardlink.txt
ln -s original.txt soft_link.txt
ls -il1

)
```
```bash
bash inodes_for_links.sh
```
```
total 0
13110688 -rw-rw-r-- 2 jborkows jborkows  0 wrz 27 10:55 hardlink.txt
13110688 -rw-rw-r-- 2 jborkows jborkows  0 wrz 27 10:55 original.txt
13110729 lrwxrwxrwx 1 jborkows jborkows 12 wrz 27 10:55 soft_link.txt -> original.txt
```
