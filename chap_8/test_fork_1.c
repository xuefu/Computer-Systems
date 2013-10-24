#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main(int argc, const char *argv[])
{
  int x = 1;

  if(fork() == 0)
  {
    printf("child : x = %d\n", ++x);
  }

  printf("parent : x = %d\n", --x);
  return 0;
}
