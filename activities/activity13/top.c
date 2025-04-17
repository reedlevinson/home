#include <stdio.h>
#include <stdlib.h>

void middle(void), bottom(void);

void top(void)
{
  puts("Top");
  middle();
}

