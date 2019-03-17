#!/bin/bash

# bif file text, with flag inside
wget -q --no-check-certificate https://2018shell.picoctf.com/static/7216e49d925b623c5d2cf9d141a6e180/file

# using grep to find the flag
cat file | grep -oE 'picoCTF{.*}'
