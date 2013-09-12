#include "stdio.h"

void inplace_swap(int *x, int *y)
{
	*y = *x ^ *y;
	*x = *x ^ *y;
	*y = *x ^ *y;
}

void reverse_array(int a[], int count)
{
	int first, last;
	for(first=0; last=count-1; first++, last--)
		inplace_swap(&a[first], &a[last]);
}


int main()
{
	int *s = new int;
	int *t = new int;
	*s = 23;
	*t = 45;
	printf("%d, %d\n", *s, *t);
	inplace_swap(s,t);
	printf("%d, %d\n", *s, *t);

	int a[] = {2,3,4,5,6,8,1};
	reverse_array(a, (sizeof(a)/sizeof(*a)));
	for(int i=0; i < (sizeof(a)/sizeof(*a))-1; i++)
		printf("%d \t", a[i]);
	printf("\n");
	return 0;
}
