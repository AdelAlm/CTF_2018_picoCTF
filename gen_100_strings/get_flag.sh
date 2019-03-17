#/bin/bash

# get the file
wget -q --no-check-certificate https://2018shell.picoctf.com/static/a3d311b507256d5d9299c0e94dfc4fc5/strings

# use string command
strings strings | grep -oE 'picoCTF{.*}'
