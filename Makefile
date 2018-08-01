.PHONY: clean


CC = g++
LD = g++
CFLAGS = -c -g -std=c++17 -Wall -Werror -pedantic-errors
LFLAGS = -g

OBJS = poker.o
PROG = pokerexe


default: $(PROG)

compile: $(PROG)


$(PROG): $(OBJS)
	@$(LD) $(LFLAGS) $(OBJS) -o $(PROG)

poker.o: poker.cpp data.h
	@$(CC) $(CFLAGS) poker.cpp

clean:
	@rm -f $(PROG)
	@rm -f *.o