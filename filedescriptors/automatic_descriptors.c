#include <unistd.h>

int main() {
  write(1, "text\n", 5);
  write(2, "error\n", 6);
  return 0;
}
