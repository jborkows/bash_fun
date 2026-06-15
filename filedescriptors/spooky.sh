#!/usr/bin/env bash
echo "Hello world" > spooky.txt 

# opening file descriptor 3 for read and write 
exec 3<>spooky.txt

# show the file exists and its size
echo "File exists and has $(stat -c%s spooky.txt) bytes"

rm spooky.txt
echo "File deleted from directory"

# show fd 3 is still open, pointing to deleted file
echo "But fd 3 is still open: $(readlink /proc/self/fd/3)"

# reading from deleted file
cat <&3 

echo "Writing to deleted file" 
echo "AAAA" >&3

echo "Confirming that you can write to deleted file"
echo "Deleted file size via fd: $(stat -L -c%s /proc/self/fd/3) bytes"
python3 -c 'import os; os.lseek(3, 0, os.SEEK_SET)'
cat <&3 
