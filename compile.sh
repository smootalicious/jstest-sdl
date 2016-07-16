gcc sdl-jstest.c -o sdl-jstest \
    -std=c99 \
    -lncurses -ltinfo \
    -I/usr/include/SDL2 -D_REENTRANT \
    -lSDL2
