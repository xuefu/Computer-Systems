#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>

int main(int argc, const char *argv[], char *envp[])
{
  int i;
  printf("Command line arguements:\n");
  for (i = 0; argv[i] != NULL ; i++)
    printf("  argv[%2d]: %s\n", i, argv[i]);

  printf("\n");
  printf("Environment variables: \n");
  for (i = 0; envp[i] != NULL; i++)
    printf("  envp[%2d]: %s\n", i, envp[i]);

  return 0;
}
