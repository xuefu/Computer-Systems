int rfun(int n)
{
  int result;

  if(n == 1)
    result = 1;
  else
    result = n * rfun(n);

  return result;
}
