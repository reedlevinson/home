/*
* computes fibonacci numbers until (f_n/f_(n+1)) is 
* within 0.001 of the approximate golden ratio of 1.61803399...
*/ 

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
  double n,np1,sum,ratio;
  const double gRatio = 1.61803399; 

  n=1.0;
  np1=1.0;

  for (;;) {

    sum=n+np1;
    ratio=sum/np1;
    if (abs(ratio-gRatio) <= 0.001)
      break;
    else {
      n=np1;
      np1=sum;
      putchar('*'); // to show progress
    }
  }
  printf("n=%g, np1=%g, np1/n ratio=%g\n", np1, sum, ratio);
  return 0;
}

