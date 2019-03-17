#!/bin/bash

# inspect this web site

# first part of the flag in index.html
curl -s http://2018shell.picoctf.com:56252/index.html | grep -oE 'picoCTF{.*'

# second part in mycss.css
curl -s http://2018shell.picoctf.com:47428/mycss.css | grep -oE '.+}'
