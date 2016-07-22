# Makefile for building jstest-sdl

CC	=	gcc

CFLAGS  = -std=c99
INCPATH	= -I/usr/include/SDL2 -D_REENTRANT
LIBS	= -lncurses -ltinfo -lSDL2


all:
	$(CC) jstest-sdl.c -o jstest-sdl $(CFLAGS) $(INCPATH) $(LIBS)

clean:
	-rm -f jstest-sdl

install:
	sudo cp jstest-sdl /usr/local/bin/
