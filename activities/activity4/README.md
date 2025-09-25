# Activity: C ya !

**Working in your group (perhaps one person sharing screen)**, answer the following. Add your group answers to a markdown file (`activity4.md`) and upload it to canvas for this activity.

To include source code in a markdown file, put it inside a code block which begins and ends with three back-tics (the character just left of the "1" key):

````
```
main(int argc, char* argv[])
{
    printf( "Hello, world!\n");
}
```
```````

Do these exercises on `plink`, and copy your answers back to your machine to upload to Canvas.

## 1. Add the missing code

```c
#include <stdio.h>
#include <math.h>

int main(int argc, char *argv[])
{
  int width=24,
  		length=11;
  
  // print out the area of the box defined by width and length
  // it should look like 
  // 		A box of width #### and length #### has an area of ####.
  
  // calculate the length of a diagonal (hint: think Pythagoras)
  // and print it with two decimal places
  
}
```

## 2. Fix it

```c
void main()
{
    int a;
 
    if (a == 2)
        a++;
 		    printf("value of a is", a);
 
    else printf("value of a is not equal to 2 ");
}
```

## 3. Even or odd

```c
#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[])
{
  int temp=0,
      odd=0;
  char answer[5];
  
  if (argc==2) {
    if (1==sscanf(argv[1], "%d", &temp)) {
      // determine whether the # is even or odd with one operator
      // if it's odd , set odd to 1 

      // ??? //
      
     if (odd) {
        strncpy(answer,"Odd", sizeof(answer));
      }
      else {
        strncpy(answer, "Even", sizeof(answer));
      }
      puts(answer);
      return(0);
    }
  }
	else {
  	fprintf(stderr,"Usage: %s num , where num is an integer\n", argv[0]);
  	return 1;
	}
}
```



## 4. Produce the sum of integers 

Finish the program below to sum the positive integers from 1 to the provided integer number.

```c
#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[])
{
  int sum=0, max=0;
  if (argc==2) {
    if (1==sscanf(argv[1], "%d", &max)) {
      
			// make sure the max is valid
      
      // use a loop to calculate the sum
  
  		// display the answer
    }
    else {
      // user entered a non-number, so issue error message and exit
      
    }
  }
	else {
  	fprintf(stderr,"Usage: %s num , where num is an integer\n", argv[0]);
  	return 1;
	}
}
```



## 5. Leap year

Write a complete C program (possibly reusing some of the above code) to determine whether a given year is a leap year. The rule is a year is a leap year if

- It is a multiple of 4 but not of 100, or
- It is a multiple of 400.



## 6. How big is it

Write a complete C program to print the size in bytes of  these C datatypes:  char, int, short, long, float, and double.

**Extra** Copy your program back to your machine, build, and run it. Are the 
results the same? If not, why do you think they are different?

## 7. Print a half-pyramid

A half pyramid pattern of numbers looks like a right-triangle of numbers in which the hypotenuse is on the right-hand side. Write a program to accept an integer and print a half-pyramid.

***Example*** 

```
$ ./c7 5
1 
2 2 
3 3 3 
4 4 4 4 
5 5 5 5 5 
$ 
```

***Don't forget: one team member should upload your answers to Activity 4 on Canvas.***
