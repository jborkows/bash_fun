#include <fcntl.h> //flags in open
#include <stddef.h>
#include <stdio.h>  //fprintf
#include <unistd.h> //close
// #include <string.h> //strlen

int main() {
  int fd = open("/dev/full", O_WRONLY | O_TRUNC | O_CREAT,
                0644); // dev/full is always full
  if (fd == -1) {
    fprintf(stderr, "Cannot create file\n");
    perror("Opening file failed");
    return 1;
  }
  char buf[] = "Hello world\n";
  size_t number_of_bytes = sizeof(buf) - 1; // -1 to not include null byte
  ssize_t wrote = write(fd, buf, number_of_bytes);
  if (wrote != number_of_bytes) {
    printf("Writing to file failed, wrote %ld expected %lu\n", wrote, number_of_bytes);
    perror("Writing to file failed"); //it will write system error text: Writing to file failed: No space left on device

    return 2;
  }

  close(fd);
  return 0;
}
