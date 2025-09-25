/* adapted from u of Wash  */
#include <stdio.h>
#include <string.h>

int tester(char* c, int k) ;

int main(int argc, char* argv[]) {
	int i, k;
	char x[1000];

	for(i = 0; i < 10000; ++i){
		x[i] = 'a'+(i%26);
	}

	printf("Enter integer in 0..9999: ");
	scanf("%d", &k);

	tester(x, k);
}

int tester(char* c, int k) {
	printf("x[%d] = %d\n", k, c[k]);
	return 0;
}

