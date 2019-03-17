#!/bin/bash

# get the passwd file
# get the shadow file

# use john on shadow file
john --show ./shadow | cut -d ':' -f2

# connect with root
echo 'connect with root:hellokitty'
nc 2018shell.picoctf.com 42165
