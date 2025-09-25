#include <stdio.h>

void flip (char *);

int main()
{
    char *strings[] = {"this", "is", "a", "test"};
    int i;

    for (i=0; i<(sizeof(strings)/sizeof(char*)); ++i) {
        flip(strings[i]);
    }
    return 0;
}

void flip(char *p)
{
  char *q;

  /***********************/
  /* your code goes here */
  /***********************/

  return;
}
