#include <stdio.h>

int main(int argc, char **argv)
{
	char *temp = "Paras";

	int i;
	i=0;

	temp[3]='F';

	for (i =0 ; i < 5 ; i++ )
		printf("%c\n", temp[i]);

	return 0;	
}
