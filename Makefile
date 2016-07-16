# Makefile for building sdl-jstest
#gcc sdl-jstest.c -o sdl-jstest \
#    -std=c99 \
#    -lncurses -ltinfo \
#    -I/usr/include/SDL2 -D_REENTRANT \
#    -lSDL2

####### Compiler, tools and options

CC	=	gcc

CFLAGS  = -std=c99
INCPATH	= -I/usr/include/SDL2 -D_REENTRANT
LIBS	= -lncurses -ltinfo -lSDL2


all:
	$(CC) sdl-jstest.c -o sdl-jstest $(CFLAGS) $(INCPATH) $(LIBS)

clean:
	-rm -f sdl-jstest

