# Let's make a lib!

Put your team's answers in a Markdown file and upload it to Canvas for Activity 13.

#### Part 1: building libraries using make
1. Copy the four `.c` files (`atest.c`, `top.c`, `middle.c`, `bottom.c`) into a new directory, but don't get the `atest.mak` file yet.
2. All but `atest.c` go into a library `act9.a`
3. Write a `Makefile` to 
	1. build all the `.o` files, 
	2. build the `act9.a` library archive, and 
	3. create the executable `atest`. 
4. Make sure `atest` runs.
5. Add a "release" target to the `Makefile` that will build a different version of the library named `act9n.a` by compiling the `.c` files without the `-ggdb` option.\
(hint: you should include a `make clean` first)
6. Note the difference in size between the two libraries!

#### Part 2: The loader isn't magic!
7. Copy the `atest.mak` file into your directory.
8. Run `make -f atest.mak clean`
9. Run `make -f atest.mak`
10. Why does it fail?
11. How can you fix it?

#### Part 3:
12. How would you prevent `git` from adding your library to your repository?
13. How can you always get the order of `.o` and `.a` files right?
14. Can you share a library with someone else on `plink`? Why or why not?\
(Not a plagiarism question ;-)
15. Can you copy your library from `plink` to your laptop and use it there? Why or why not?	
