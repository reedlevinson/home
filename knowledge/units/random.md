The C standard library provides a pair of functions to generate a pseudorandom sequence of integers.

In short, a call to `rand()` returns a random non-negative integer.
Subsequent calls will return an apparently random sequence of integers.
The sequence is *pseudorandom*, because the sequence is determined by the *seed* from which it begins; the function `srand()` allows you to set the seed.

If you use `rand()` without `srand()` you will always get the same sequence of numbers.

If you use `rand()` after `srand(seed)`, you will always get the same sequence of numbers for a given seed `seed`.
**Your program should call `srand()` only once**.
It "seeds" the random sequence, and then `rand()` provides a new value every time you call it.

If you want a different sequence of numbers every time you run the program, you need to seed the generator with a different number every time you run the program.
Below is a common approach:

```c
#include <unistd.h>
..
// if the user provided a seed, use it to initialize the random sequence:
srand(seed);
// if they did not, seed the random-number generator with the process id
srand(getpid());
```

This works because `getpid()` returns a number unique to this process (a running copy of your program), so even if you start multiple copies of the program on the same host at the same time, each will have a different pid and thus seed the generator differently.

For more details, `man 3 rand`.

## Note for anyone needing _**REALLY GOOD**_ random numbers

  - [Prof. Brown's DieHarder website](https://webhome.phy.duke.edu/~rgb/General/dieharder.php)

        - Advice of David Jones (see resources)
          - Rule 1: don't use system generators, as almost all are flawed
            - Standard perl rand, python random() before v2.3, Java.util.Random, ALL clib rand's, Matlab's rand, Mathematica's SWB generator, and more.
            - e.g., Java's standard PRNG fails some 21 of the randomness tests!
          - Rule 2: instead, use a good PRNG and build it into your code
            - You know what you have, its proper use, and its limitations
            - You know how to keep it portable
          - Rule 3: Properly seed your PRNG
            - TOD, ps, free disk blocks, etc., all hashed together

- One of the simplest PRNG that passes the Diehard and Dieharder tests (
  is the KISS Generator from Prof. G. Marsaglia. It has a period of about $10^37$ , using three different generators


See 
[Prof. Brown's DieHarder website](https://webhome.phy.duke.edu/~rgb/General/dieharder.php) 
for guidance.  In particular: 

- Rule 1: don't use system generators, as almost all are flawed
    - Standard perl rand, python random() before v2.3, Java.util.Random, ALL clib rand's, Matlab's rand, Mathematica's SWB generator, and more.
	- e.g., Java's standard PRNG fails some 21 of the randomness tests!

- Rule 2: instead, use a good PRNG and build it into your code
    - You know what you have, its proper use, and its limitations
    - You know how to keep it portable

- Rule 3: Properly seed your PRNG
        - TOD, ps, free disk blocks, etc., all hashed together

One of the simplest PRNG's that passes the Diehard and Dieharder tests
is the KISS Generator from Prof. G. Marsaglia (see the above website)
  - it has a period of about $10^37$ , using three different generators

