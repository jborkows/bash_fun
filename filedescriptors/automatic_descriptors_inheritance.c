#include <unistd.h>

int main() {
  write(3, "text\n", 5);
  return 0;
}
