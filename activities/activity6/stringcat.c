#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void stringcat( char *sp, char *dp);

int main()
{
  // initialize the first few characters of the arrays
  char src[8]  = "CS50";
  char dest[8] = "abcdef";

  printf( "dest started as: \"%s\"\n", dest);

  stringcat(src, dest);
  printf("src  = '%s'\n", src);
  printf("dest = '%s'\n", dest);
  return 0;
}

/* stringcat - cat string from source sp onto destination dp */
void stringcat(char *sp, char *dp)
{
  while (*dp)
	  ++dp;

  while (*sp != '\0') {
    *dp++ = *sp++;
  }
  *dp = '\0';
}
