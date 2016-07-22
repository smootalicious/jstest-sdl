# jstest-sdl

The jstest-sdl is a fork of the http://github.com/Grumbel/sdl-jstest.
In this repository we have the SDL2 version only, and its
name is jstest-sdl.c (in the original repo it is named sdl2-jstest.c).

The `jstest-sdl` is a simple program that lets you find
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

Get a simple list of available joysticks with their respective index number:

```sh
[prompt]$ jstest-sdl --listsimple
0:Twin USB Joystick
1:Twin USB Joystick
2:ipega Extending Game Controller
3:8Bitdo Zero Game Pad
```
   
Now you can test the joystick input with the `--test` option and a joystick
index number. Here is an output example of what I got using `jstest-sdl --test 0`:

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

Now you can press the buttons and see the feedback. Those bars at the top are for analog directionals
and the trigger buttons (usually R2 and L2).


## Installation

jstest-sdl requires the following packages to build:

- libsdl2-dev
- libncurses5-dev

So, to install it in a Debian-based distribution:

**install the dependencies:**
```sh
sudo apt-get install libsdl2-dev libncurses5-dev
```

**download the code**
```sh
git clone http://github.com/meleu/jstest-sdl
```

**compile it**
```sh
cd jstest-sdl
make
```

**put binary at `/usr/local/bin/`**
```sh
make install
```

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
