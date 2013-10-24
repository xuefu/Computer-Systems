#include <stdio.h>

int main(int argc, const char *argv[])
{
  int *i;
  printf("%p\n", i);
  int *j = i;
  printf("%p\n", j);
  return 0;
}
