# Makefile for bugs activity

TARGETS = alpha beta gamma delta epsilon zeta eta theta

CC = gcc
CFLAGS = -Wall -pedantic -std=c11 -ggdb -fno-stack-protector

.PHONY: all clean

all:	$(TARGETS)

alpha:	alpha.c
beta:	beta.c
gamma:	gamma.c
delta:	delta.c
epsilon: epsilon.c
zeta:	zeta.c
eta:	eta.c
theta:	theta.c


clean:
	rm -f *~ *.o
	rm -rf *.dSYM
	rm -f $(TARGETS)
