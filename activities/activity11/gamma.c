/* 
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

int main()
{
  int* x[10];
  int i;

  // allocate  
  for (i=0; i<sizeof(x); ++i) {
      assert( (x[i]=malloc(16)));
  }
  // free
  for (i=0; i<sizeof(x); ++i) {
      free(x[i]);
  }

  return 0;
}
