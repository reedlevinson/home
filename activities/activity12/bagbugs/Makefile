#
# A simple makefile for managing build of project composed of C source files.
#

# It is likely that default C compiler is already gcc, but explicitly
# set, just to be sure
CC = gcc

# The CFLAGS variable sets compile flags for gcc:
#  -ggdb        compile with debug information
#  -Wall        give verbose compiler warnings
#  -pedantic    issue all the warnings demanded by strict ISO C and ISO C++
#  -std=c11     use the C11 (2011) standard language definition
CFLAGS = -Wall -pedantic -std=c11 -ggdb -I ./lib

# The LDFLAGS variable sets flags for linker
#  -lm   says to link in libm (the math library)
LDFLAGS = -lm

# In this section, you list the files that are part of the project.
# If you add/change names of source files, here is where you
# edit the Makefile.
SOURCES = bagbugstest.c bagbugs.c lib/file.c lib/mem.c
OBJECTS = $(SOURCES:.c=.o)
LIBS = lib/
TARGET = bugs

# The first target defined in the makefile is the one
# used when make is invoked with no argument. Given the definitions
# above, this Makefile file will build the one named TARGET and
# assume that it depends on all the named OBJECTS files.

$(TARGET) : $(OBJECTS) $(LIB)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

$(LIB):
		make --directory=lib

# Phony means not a "real" target, it doesn't build anything
# The phony target "clean" is used to remove all compiled object files.

.PHONY: clean

clean:
	@rm -f $(TARGET) $(OBJECTS) core
	@make --directory=lib clean

