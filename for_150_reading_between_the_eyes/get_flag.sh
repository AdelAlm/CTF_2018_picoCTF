#!/bin/bash

# get the image
wget -q --no-check-certificate https://2018shell.picoctf.com/static/3e423171eed198e8425524a1b052869b/husky.png

# get flag with zsteg
zsteg ./husky.png | grep -oE 'picoCTF{.*}'
