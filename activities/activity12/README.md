# Activity 12: Fix memory bugs with valgrind (and maybe gdb)

Because we want to use several options, we created an alias in Lab0:
```bash
alias myvalgrind='valgrind --leak-check=full --show-leak-kinds=all'
```
so that we can run valgrind on a program `labx` by 

```bash
myvalgrind labx arg1 arg2 ...
```
Note that unlike `gdb`, you _do_ provide the arguments to the program under test when starting `valgrind`.

Here's a handy [quick reference for valgrind](https://bytes.usc.edu/cs103/wiki/valgrind.html) from USC.

## Activity [^1]

You can find the examples for this activity in the `activity12` directory in our examples directory:
`~/cs50-dev/shared/examples/activity12`.
Copy these to your own directory on plink, e.g., `~cs50-dev/activity12/`. You can also just copy the
`act12.tar` file and untar it on your machine.

### Part A

Each of the example programs v1,v2,v3,v4,v5 compile with no errors or warnings.
However, some have memory leaks and don't quite work as we
expect. Use the `valgrind` tool to investigate why and add your findings to your markdown file.

- v1
- v2
- v3
- v4
- v5 hint: try an eight character username and a three character nickname.

### Part B 

Now `cd bagbugs` and run `make`. The `bagbugstest` is a testing program for the `bagbugs` functions. 
You can see what it's testing, and some of the tests work. However, after the user inputs some text the 
test program has a problem.

Figure out the problem(s), describe them in your markdown file, fix them,
and repeat until all the tests pass.

###

When finished, upload it to Canvas for Activity 12.

[^1]: Some of the examples for this activity come from the RedHat education group.
