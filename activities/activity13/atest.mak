#
# Example Makefile for detecting operating system
# (Note: Requires gnumake)
#
PLATFORM := $(shell uname)

ifeq  ($(PLATFORM),Linux)
OS = linux
else
OS = not-linux
endif

.PHONY: all, clean, whereami

CC=gcc
CFLAGS=-Wall -pedantic -std=c11 -ggdb

#-----------------------------------

all:	whereami	atest

atest:	atest.o left.a right.a
	@echo ======================
	@echo Building atest now ...
	$(CC) -o atest $^
	@echo ... finished!

atest.o: atest.c
top.o:	 top.c
middle.o:	middle.c
bottom.o:	bottom.c	

left.a:	middle.o
	ar -r $@  middle.o

right.a:  top.o bottom.o
	ar -r $@  top.o bottom.o

whereami:
	@echo "********"
	@echo $(OS)
	@echo "********"

clean:
	-rm -f atest atest.o top.o middle.o bottom.o
	-rm -f left.a right.a
