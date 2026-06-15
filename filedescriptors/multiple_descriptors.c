#include <fcntl.h> //flags in open
#include <stddef.h>
#include <stdio.h> //fprintf
#include <stdlib.h>
#include <unistd.h> //close
// #include <string.h> //strlen

void writeToFile(int fd) {

  char buf[] = "Hello world\n";
  size_t number_of_bytes = sizeof(buf) - 1; // -1 to not include null byte
  size_t wrote = write(fd, buf, number_of_bytes);
  if (wrote != number_of_bytes) {
    perror("Writing to file failed");
    exit(2);
  }
}


const char* name="multiple_descriptors.txt";

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
  int fd1 = openFile();
  writeToFile(fd1);
  int fd2 = openFile();
  writeToFile(fd2);
  printf("Fd1 is %d\n", fd1);
  printf("Fd2 is %d\n", fd2);
  close(fd1);
  close(fd2);
  int fd3 = openFile();
  writeToFile(fd3);
  int fd3_copy = dup(fd3);
  printf(
      "Fd3 is %d\n",
      fd3); // system can reuse file descriptor number they are for per process
  printf("Fd3 copy is %d\n", fd3_copy);
  writeToFile(fd3);
  writeToFile(fd3_copy);
  close(fd3);
  int fd3_copy_for_closed = dup(fd3);
  printf("Fd3 copy for close is %d\n", fd3_copy_for_closed);//after closing it is invalid descriptor -1
  return 0;
}
