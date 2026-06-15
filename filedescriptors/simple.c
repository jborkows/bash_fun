#include <fcntl.h> //flags in open
#include <stddef.h>
#include <stdio.h>  //fprintf
#include <unistd.h> //close
// #include <string.h> //strlen

int main() {
  int fd = open("./simple_example.txt", O_WRONLY | O_TRUNC | O_CREAT,
                0644); // without o_trunc it will start writing from start
  if (fd == -1) {
    perror("Opening file failed");
    return 1;
  }
  char buf[] = "Hello world\n";
  size_t number_of_bytes = sizeof(buf) - 1; // -1 to not include null byte
  size_t wrote = write(fd, buf, number_of_bytes);
  // write(fd, buf, strlen(buf) ); // strlen will omit null byte
  if (wrote != number_of_bytes) {
    perror("Writing to file failed");
    return 2;
  }

  close(fd);
  return 0;
}
