/* Adapted from broken.cpp by Prof. Donahoo @ Baylor */
/* */
/* This program should accept x and n and compute the series:
 * (x^0)/0! + (x^1)/1! + (x^2)/2! + (x^3)/3! + (x^4)/4! + ... + (x^n)/n! 
 * However, it always returns an answer of infinity. Why?
 */

#include <stdio.h>
#include <math.h>

int computeFactorial(int number) {
  int fact = 0;
  int j=0;

  while (j <= number) {
    fact = fact * j++;
  }
  return fact;
}

double computeSeriesValue(double x, int n) {
  double seriesValue = 0.0;
  double xpow = 1;

  for (int k = 0; k <= n; k++) {
    seriesValue += xpow / computeFactorial(k);
    xpow = xpow * x;
  }

  return seriesValue;
}

int main() {

  double x;
  int n;

  printf("enter x and n: ");
  scanf("%lg %d", &x, &n); 

  double seriesValue = computeSeriesValue(x, n);
  printf( "The value of the series for the values entered is %lg \n", seriesValue);

  return 0;
}
