#include <stdio.h>

int main(int argc, const char *argv[])
{
	short i = -100;
	unsigned short int j = (unsigned) i;
	printf("%d = %u\n", i, i);
	printf("%d = %u\n", j, j);
	return 0;
}
