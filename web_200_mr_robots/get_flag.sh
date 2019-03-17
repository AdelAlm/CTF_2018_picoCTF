#!/bin/bash

# with the challange title
# let's try the robots.txt classic
#curl -s http://2018shell.picoctf.com:60945/robots.txt
#-> User-agent: *
#-> Disallow: /65c0c.html

# go to http://2018shell.picoctf.com:60945/65c0c.html
curl -s http://2018shell.picoctf.com:60945/65c0c.html | grep -oE 'picoCTF{.*}'
