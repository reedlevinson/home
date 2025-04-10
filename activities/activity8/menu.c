#include <stdio.h>
#include "menu.h"
#include "foodItem.h"
#include "meal.h"
#include "allergens.h"

int main(int argc, char **argv) 
{
	puts("=== DiningHall App ===");
	puts("");
	puts(menuHeader);
	showAllergensHeader();
	showMealHeader();
	showFoodItemHeader();
    return 0;
}

