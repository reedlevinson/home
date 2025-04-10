#include <stdio.h>
#include <math.h>
#include "allergens.h"

static const char *allergensHeader="This is the allergens header";

void showAllergensHeader() {
	puts(allergensHeader);
	printf("%2.0f different allergens!\n", pow(2,4));
}

