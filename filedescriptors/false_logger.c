#include <fcntl.h> //flags in open
#include <stddef.h>
#include <stdio.h> //fprintf
#include <stdlib.h>
#include <unistd.h> //close
// #include <string.h> //strlen


const char* name="false_logger.txt";

void truncate_file() {

  open(name, O_WRONLY | O_TRUNC | O_CREAT,
                0644); // without o_trunc it will start writing from start
}
int openFile() {
  int fd = open(name, O_WRONLY | O_APPEND | O_CREAT,
                0644); // without o_trunc it will start writing from start
  if (fd == -1) {
    perror("Opening file failed");
    exit(1);
  }
  return fd;
}

int main() {
  truncate_file();
  int fd = openFile();
  int overide_stdout = dup2(fd, 1); //it could be arbitrary number
  close(fd);
  printf("Printing to file instead of std out\n");
  return 0;
}
