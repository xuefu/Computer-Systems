#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <dirent.h>
#include <errno.h>
#include <string.h>
#include <sys/stat.h>


int main(int argc, char *argv[])
{
  struct stat statbuf;
  struct dirent *dirp;
  DIR *dp;
  char *ptr;

  if (argc != 2) {
     printf("Usage: ./a.out <path of dir>\n");
     exit(1);
  }

  char *path = malloc(4096);
  strcpy(path, argv[1]);

loop:  if (lstat(path, &statbuf) < 0) {  /* stat error */
    perror("lstat error"); 
    exit(1);
  }
       printf("%s\n", path);
       printf("%d\n", S_ISDIR(statbuf.st_mode));
  if (S_ISDIR(statbuf.st_mode) == 0) { /* not a directory */
       printf("%s\n", path);
     if (path[strlen(path) - 4] == ".txt")
       printf("%s\n", path);
  }
  ptr = path + strlen(path);
  *ptr++ = '/';
  *ptr = 0;

  if ((dp = opendir(path)) == NULL)  /* can't read directory */
    perror("opendir error"); 

  while ((dirp = readdir(dp)) != NULL) {
    if (strcmp(dirp->d_name, ".") == 0 || strcmp(dirp->d_name, "..") == 0)
      continue;
    strcpy(ptr, dirp->d_name);
    goto loop;
  }
  ptr[-1] = 0;

  closedir(dp);

  return 0;
}
