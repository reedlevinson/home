# More useful gdb hints

The following tips, tricks, and guides have been assembled over the years from the 
gdb documentation, SlashDot, StackOverflow, and a variety of other **open** sources.
References are provided when possible.

## More help using `apropos`

`gdb` has about 1500 commands! Suppose you know you want to do examine memory, but can't recall the `gdb` command, try the `apropos` help command:

```bash
db$ apropos examine
disable pretty-printer -- GDB command to disable the specified pretty-printer.
display -- Print value of expression EXP each time the program stops.
enable pretty-printer -- GDB command to enable the specified pretty-printer.
info breakpoints, info b -- Status of specified breakpoints (all user-settable breakpoints if no argument).
maintenance info breakpoints -- Status of all breakpoints, or breakpoint number NUMBER.
set backtrace limit -- Set an upper bound on the number of backtrace levels.
show backtrace limit -- Show the upper bound on the number of backtrace levels.
show convenience, show conv -- Debugger convenience ("$foo") variables and functions.
x -- Examine memory: x/FMT ADDRESS.
gdb$ 
```

Now you can run `help x` to learn all about how to examine memory.

## GDB Text User Interface

The GDB Text User Interface (TUI) is a terminal interface which uses the curses library 
to show the source file, the assembly output, the program registers and GDB commands 
in separate text windows.

It's a little finicky, and you need to learn a few new keyboard commands, but it can 
be very useful. 

- `tui enable` to get it started
- `C-a` to toggle tui on/off
- `C-o`  to jump between active windows
- `PgUp/PgDn` to scroll the active window
- arrow keys to move around the active window

More info may be found at the [documentation site](https://sourceware.org/gdb/current/onlinedocs/gdb.html/TUI.html)

## `~/.gdbinit`

The contents of this file are read/executed when you startup `gdb`. Here's an example:

```bash
# __________________gdb options_________________

# set to 1 to enable 64bits target by default (32bit is the default)
set $64BITS = 1

# macOS version works better with this setting off
set startup-with-shell off

# Disable confirmation requests
set confirm off

# Disables GDB output of certain informational messages
set verbose off

# Have gdb remember my past commands
set history filename ~/.gdb_history
set history save on

# Make the prompt stand out a bit
set prompt \033[31mgdb$ \033[0m

# Set default radix for numbers I use with gdb
### set output-radix 0x10
### set input-radix 0x10

# These make gdb never pause in its output
set height 0
set width 0

# Handy memory dump using external tool xxd
define xxd
  dump binary memory /tmp/dump.bin $arg0 ((char *)$arg0)+$arg1
  shell xxd /tmp/dump.bin
end
document xxd
  Runs xxd on a memory ADDR and LENGTH

  xxd ADDR LENTH
end
```

## eXamine memory

The `x` command displays the memory contents at a given address using the specified 
format. 

```bash
gdb$ x/nfu addr
```

`n`, `f`, and `u` are all optional parameters that specify how much memory to display 
and how to format it; addr is an expression giving the address where you want to start 
displaying memory. If you use defaults for `nfu`, you need not type the slash `/'. 
Several commands set convenient defaults for addr.

- `n`  the repeat count<br/>
The repeat count is a decimal integer; the default is 1. It specifies how much memory 
(counting by units u) to display.
- `f`   the display format<br/>
The display format is one of the formats used by print, or `s' (null-terminated string)
or `i' (machine instruction). The default is `x' (hexadecimal) initially, or the format 
from the last time you used either x or print.
- `u`  the unit size, which is any of
	- b  Bytes.
	- h  Halfwords (two bytes).
	- w  Words (four bytes). This is the initial default.
	- g  Giant words (eight bytes). 

Each time you specify a unit size with `x`, that size becomes the default unit the 
next time you use `x`. (For the `s' and `i' formats, the unit size is ignored and 
is normally not written.)

## Add your own commands
You can create commands that execute when a breakpoint is hit. 
```bash
tmp $ gdb bo
Reading symbols from bo...
gdb$ l
1
2       #include <stdio.h>
3       #include <string.h>
4       void secret(){
5         printf("You have accessed the secret function!!\n");
6       }
7       int main(int argc, char *argv[])
8       {
9         char buf[512];
10        strcpy(buf, argv[1]);
gdb$ b 10
Breakpoint 1 at 0x11bf: file bo.c, line 10.
gdb$ command 1 
Type commands for breakpoint(s) 1, one per line.
End with a line saying just "end".
>p buf
>p argv[1]
>end
gdb$ r
Starting program: /thayerfs/home/d29265d/cs50-dev/tmp/bo 
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".

Breakpoint 1, main (argc=1, argv=0x7fffffffd1c8) at bo.c:10
10        strcpy(buf, argv[1]);
$1 = '\000' <repeats 38 times>, "\377\000\000\000\377\000\000\000\000\000", '/' <repeats 16 times>, "\230\r", '\000' <repeats 14 times>, "`", '\000' <repeats 15 times>, "\001", '\000' <repeats 15 times>, "aries_2023.2.0/c", '\000' <repeats 112 times>...
$2 = 0x0
gdb$
```
You can also modify a variable in gdb, at the command line as well as 
when a breakpoint is hit.

```bash
gdb$ b 11
Breakpoint 1 at 0x11de: file patch.c, line 11.
gdb$ command 1
Type commands for breakpoint(s) 1, one per line.
End with a line saying just "end".
>set variable i=i-1
>end
gdb$ ...
``

## Search memory ranges with `find`

If you need to search a range of memory for a particular value or values, the `find` command is what you need:

```bash
gdb$ find 0x555555559200, 0x5555555592d0 , "Hello"
0x555535325010
0x555535325ac0
2 patterns found
gdb$ 
```

You need to specify the starting and ending addresses, and then the value(s) you seek. This command is generally most useful when you have a large amout of input that is loaded into memory (e.g., `scanf` or `read`, network data, graphics memory, etc.). Of course, you do need permission to read the memory areas you specify,. 

## `info` commands

These commands provide a variety of useful information.

- `info locals`  - displays all the local variables in the current stack frame (i.e., function).
- `info variables`  - dislays the list of global/static variables present in the debugged program. Add a regular expression and only variable names that match will be displayed.
- ``info frame`   - displays the same info as `bt` does.
- `info args`   - displays the function argument values in the current stack frame.
- `info functions`  - displays the list of functions in the program being debugged.
- `info source`   - displays information about the current source file.
- info address`   - displays the address of the given symbol, as in `info address funcname`.

## Convenience variables and commands

You can define and set your own variables for use in gdb (not the program being debugged).

```bash
gdb$ set $L=0x5555555592b3
gdb$ x/8c $L
```

You can also define your own gdb commands:

```bash
gdb$ info locals
place = 0x7fffffffd090
it = 0x0
nodep = 0x555555559710
gdb$ define pxy
Type commands for definition of "pxy".
End with a line saying just "end".
>printf "it=%08x place=%08x\n", it, place
>end
gdb$ pxy
it=00000000 place=ffffd090
gdb$ 
```

## Conditional breakpoints

```bash
(gdb) break compute_fft if num_samples == 1024
```

## Watchpoints

You can tell gdb to stop executing the program being debugged when a particular variable is changed.

```bash
gdb$ run
Starting program: /thayerfs/home/d29265d/tmp/sorter7 
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".

Breakpoint 1, main () at sorter7.c:36
36        while (!feof(stdin)) {
gdb$ watch head
Hardware watchpoint 5: head
gdb$ cont
Continuing.
Abcdefghij

Hardware watchpoint 5: head

Old value = {line = 0x0, next = 0x0}
New value = {line = 0x0, next = 0x555555559710}
list_insert (headp=0x7fffffffd090, line=0x5555555592a0 "Abcdefghij") at sorter7.c:112
112       return true;
gdb$  
```

## Using a core dump file with `gdb`

If you are testing a program and it suddenly crashes and writes out a core dump, 
you don't have to remember exactly how you were running it to cause the failure: 
you can use `gdb` ! Here's how:

1. Before running your program, make sure you followed the original Lab 0 setup which included 
a setting for `ulimit`.  At the bash prompt, run the following command and you should get the same 
output shown:

```bash
$ ulimit -c
unlimited
$ 
```
If it doesn't say `unlimited`, then run this command:
```bash
$ ulimit -c unlimited
$ 
```
2. Run the crashing program. It should report something like the following when it crashes:
```bash
tmp $ ./crash
Segmentation fault (core dumped)
tmp $
```
3. Now you have to find the core dump file. Use the following command:
```bash
tmp $ ls -tl /var/lib/apport/coredump/*$USER*   
-r-------- 1 d29265d root 311296 Jan 29 21:38 /var/lib/apport/coredump/core._thayerfs_home_d29265d_tmp_crash.180338.2d963eb2-1089-4fee-8160-f4f927adfd79.1239553.366929828
-r-------- 1 d29265d root 311296 Jan 29 10:40 /var/lib/apport/coredump/core._thayerfs_home_d29265d_tmp_crash.180338.2d963eb2-1089-4fee-8160-f4f927adfd79.912225.362981640
-r-------- 1 d29265d root 311296 Jan 29 10:39 /var/lib/apport/coredump/core._thayerfs_home_d29265d_tmp_crash.180338.2d963eb2-1089-4fee-8160-f4f927adfd79.911520.362975086
-r-------- 1 d29265d root 311296 Jan 29 10:34 /var/lib/apport/coredump/core._thayerfs_home_d29265d_c2.180338.2d963eb2-1089-4fee-8160-f4f927adfd79.910746.362947494
tmp $  
```
Yes, those are some REALLY long filenames. The first one should be the most recent core dump 
file for your username. Copy that filename (use your mouse).
4. start up `gdb` in the same directory where you ran the crashing program, but with that 
core dump filename included _after_ the program name:
```bash
tmp $ gdb ./crash /var/lib/apport/coredump/core._thayerfs_home_d29265d_tmp_crash.180338.2d963eb2-1089-4fee-8160-f4f927adfd79.1239553.366929828
Reading symbols from ./crash...
[New LWP 1239553]
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".
Core was generated by `./crash'.
Program terminated with signal SIGSEGV, Segmentation fault.
#0  0x000056089aaa113d in main () at crash.c:14
14        *x = 42;
gdb$
```
Now you are in `gdb` at the point where the program crashed!

## A few more references

- https://ftp.gnu.org/old-gnu/Manuals/gdb/html_node/gdb_toc.html
- https://interrupt.memfault.com/blog/advanced-gdb
- https://diveintosystems.org/book/C3-C_debug/gdb_advanced.html
- https://opensource.com/article/22/12/gdb-step-command:

## Using `valgrind` with `gdb`

Some bugs are easier to find if you use _both_ `gdb` and `valgrind`. This way, when 
`valgrind` finds a problem it will signal the partnered `gdb` session, allowing you
to poke around to find where things went bad.

Here is an excellent [article from Red Hat](https://developers.redhat.com/articles/2021/11/01/debug-memory-errors-valgrind-and-gdb#) 
describing this powerful combination.

## Saving a gdb session

```
(gdb) set logging file gdb.log
(gdb) set logging enabled
(gdb) set history filename gdb.history
```
then, when you're finished, either just exit `gdb` or 
```
(gdb) set logging enabled off
(gdb) set history save
```

:q

