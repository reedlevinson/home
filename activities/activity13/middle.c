#include <stdio.h>
#include <stdlib.h>

void middle(void);
void bottom(void);

void middle(void)
{
  puts("middle");
  fflush(stdout);
  bottom();
}

