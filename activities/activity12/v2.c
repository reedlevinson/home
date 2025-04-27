#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/* an improved version of v1 ... ? */

char *banner; 

/* create a banner with the user's name */
char * create_banner ()
{
   const char *user = getenv ("USER");
   size_t len = 1 + 2 * 4 + strlen (user) + 1;
   char *b = malloc (len);
   sprintf (b, "\t|** %s **|", user);
   return b;
}

/* print the banner and the count */
void output_report (int nr)
{
  puts (banner);
  printf ("Number: %d\n", nr);
  printf ("\n");
}

/* print the banner and count three times */
int main (int argc, char **argv)
{
  banner = create_banner ();
  for (int i = 1; i <= 3; i++)
    output_report (i);

  return 0;
}

