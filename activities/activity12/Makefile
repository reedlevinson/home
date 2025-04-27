#
# A simple makefile for managing build of project composed of C source files.
#
# It is likely that default C compiler is already gcc, but explicitly
# set, just to be sure
CC = gcc

# The CFLAGS variable sets compile flags for gcc:
# -ggdb compile with debug information
# -Wall give verbose compiler warnings
# -pedantic issue all the warnings demanded by strict ISO C and ISO C++
# -std=c11 use the C11 (2011) standard language definition
CFLAGS = -Wall -pedantic -std=c11 -ggdb

# The LDFLAGS variable sets flags for linker
# -lm says to link in libm (the math library)
LDFLAGS = -lm

.PHONY: bagbugsdir

all:	v1 v2 v3 v4 v5 bagbugsdir

v1:	v1.c

v2:	v2.c

v3:	v3.c

v4:	v4.c

v5:	v5.c

bagbugsdir:
	make -C bagbugs

# Phony means not a "real" target, it doesn't build anything
# The phony target "clean" is used to remove all compiled object files.
.PHONY: clean
	
clean:
	@rm -f v1 v2 v3 v4 v5 core
	make -C bagbugs clean

