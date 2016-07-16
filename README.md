# sdl-jstest

This sdl-jstest is a fork of the http://github.com/Grumbel/sdl-jstest.
In this repository we have the SDL2 version of the program only, and its
name is sdl-jstest.c (in the original repo it is named sdl2-jstest.c).

The `sdl2-jstest` is a simple program that lets you find
out how many joysticks SDL2 detected on your system, how many
axes, buttons, hats and balls they have each. They also lets you test
the joysticks by displaying the events they send or by displaying
their current button, axis, hat or ball state (this is a cool way to 
substitute the `jstest`).

(The README of the original repository says that "sdl-jstest is
especially useful if you want to test your `SDL_LINUX_JOYSTICK`
configuration." I'm repeating this info here, but I don't use this
feature, it isn't usefull for my needs.)


## Usage examples

[TODO: add more examples!]

The `--test` option shows this output:

```text
Joystick Name:   'Twin USB Joystick'
Joystick Number: 0

Axes  4:
   0:      0  [                             #                              ]
   1:      0  [                             #                              ]
   2:      0  [                             #                              ]
   3:      0  [                             #                              ]

Buttons 12:
   0: 0  [ ]
   1: 0  [ ]
   2: 0  [ ]
   3: 0  [ ]
   4: 0  [ ]
   5: 0  [ ]
   6: 0  [ ]
   7: 0  [ ]
   8: 0  [ ]
   9: 0  [ ]
  10: 0  [ ]
  11: 0  [ ]

Hats  1:
   0: value: 0
  +-----+  up:    0
  |     |  down:  0
  |  O  |  left:  0
  |     |  right: 0
  +-----+

Balls  0:

Press Ctrl-c to exit
```



## Requirements

sdl-jstest requires the following packages to build:
TODO: CHECAR OS NOMES DOS PACOTES NO RASP, DEBIAN E UBUNTU

- libsdl2-dev
- libncurses5-dev



## Compilation


Simply type:

    make

And the `sdl-jstest` will be created.


## Info from the original repository

### Configuration

The SDL behaviour of what axis is treated as a hat and which as normal
axis can be configured with the environment variable
`SDL_LINUX_JOYSTICK`:

 * ftp://ptah.lnf.kth.se/pub/misc/sdl-env-vars

`SDL_LINUX_JOYSTICK`:
	Special joystick configuration string for linux. The format is
	"name numaxes numhats numballs"
	where name is the name string of the joystick (possibly in single
	quotes), and the rest are the number of axes, hats and balls
	respectively.

A simple example would be:

```sh
export SDL_LINUX_JOYSTICK="'Xbox Gamepad (userspace driver)' 6 0 0"
```

Which makes all axis be handled as normal axis and none as hat, as
most games don't use hats.
