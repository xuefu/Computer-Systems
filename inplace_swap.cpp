#include <iostream> 

using namespace std;

void inplace_swap(int *x, int *y)
{
	*y = *x ^ *y;
	*x = *x ^ *y;
	*y = *x ^ *y;
}

void reverse_array(int a[], int count)
{
	int first, last;
	for(first=0, last=count-1; first <= last; first++, last--)
		inplace_swap(&a[first], &a[last]);
}

int main()
{

	int *s = new int;
	int *t = new int;
	*s = 23;
	*t = 45;
	cout << *s << " " << *t << endl;
	inplace_swap(s,t);
	cout << *s << " " << *t << endl;

	int a[] = {1,2,3,4,5};
	reverse_array(a,5);
	for(int i = 0; i < 7; i++)
		cout << a[i] << "  ";
	cout << endl;
	return 0;
}
