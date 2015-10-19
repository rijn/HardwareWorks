# Firmware

This project contains the source code for the PJ5.

## Environment

### OS X

```
# install Homebrew(https://github.com/Homebrew/homebrew)
$ brew —version

# install dependencies
$ sudo brew install libusb libusb-compat
$ sudo brew install pkg-config
$ sudo brew install autoconf automake libtool

# install stm8flash

# install sdcc

# PATH(replace yourusername)
echo "export PATH=/Users/yourusername/stlink.git:\$PATH" >> ~/.profile

# restart the terminal.
```

## Make targets:
```
all        : Shortcut for build
build      : compile
clean      : Clean every compiled files
# cload    :
flash      : Flash .bin using stlink
erase      : Erase the controller
```
