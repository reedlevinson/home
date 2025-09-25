/* 
 * zeta.c : insertion sort of stdin to stdout
 *
 * usage: ./zeta < inputfile
 *    where the stdin is assumed to include a sequence of numbers.
 *    For example:
 *   
 *      echo "1 2 5 4 3 6 7 8 9" | ./zeta
 * 
 * derived from dfk
 */

#include <stdio.h>
#include <stdlib.h>

/* ******************* main ***************** */
int main(int argc, char **argv)
{
  const int numSlots = 10;  // number of slots in array
  int sorted[numSlots];   // the array of items
  
  /* fill the array with numbers */
  for (int n = 0; n < numSlots; n++) {
    int item;     // a new item
    scanf("%d", &item);   // read a new item
    for (int i = n; i > 0; i--) {
      if (sorted[i] > item) {
        sorted[i+1] = sorted[i]; // bump it up to make room
      } else {
        sorted[i] = item; // drop the new item here
      }
    }
  }
  
  /* print the numbers */
  for (int n = 0; n < numSlots; n++) {
    printf("%d ", sorted[n]);
  }
  putchar('\n');
}
