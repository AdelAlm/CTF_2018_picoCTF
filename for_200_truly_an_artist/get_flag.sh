#!/bin/bash

# we have an image
# we have to check the artist of it
# we can use exiftool for that
../../tools/exiftool/exiftool 2018.png | grep -oE 'picoCTF{.*}'
# the flag is the 'Artist'
