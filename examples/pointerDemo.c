#include <string.h>
#include <stdlib.h>

int main(void)
{
    char *p0 = strdup("red..");
    char *p1 = strdup("green");
    char *p2 = strdup("blue.");
    char *p3 = NULL;
    char **pp = malloc(sizeof(char *) * 4); /* I want to watch this in VSCode debugger */

    pp[0] = p0;
    pp[1] = p1;
    pp[2] = p2;
    pp[3] = p3;

    /* do something */

    return (0);
}