#include <stdio.h>

void showx(int xval)
{
  int x;
  x = xval;
  /* print the address and value of x here */

  return;
}

void showy(int dummy)
{
  int y;
  /* print the address and value of y here */
  
  return;
}

int main()
{
  showx(7);
  showy(11);
  return 0;
}
