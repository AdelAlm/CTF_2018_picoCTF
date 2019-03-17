#!/bin/bash

# get the image file
wget --no-check-certificate https://2018shell.picoctf.com/static/1e9d081292d7bf0fc19c5dc43fc7bfc2/flag.png

# check file type
file flag.png
flag.png: JPEG image data, JFIF standard 1.01, resolution (DPI), density 75x75, segment length 16, baseline, precision 8, 909x190, frames 3

# change extension
mv flag.png flag.jpg

# open
eog flag.jpg
