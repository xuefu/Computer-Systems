int fun_a(unsigned n)
{
  int val = 0;
  while(n)
  {
    val ^= n;
    n >>= 1;
  }
  return val; 
}
