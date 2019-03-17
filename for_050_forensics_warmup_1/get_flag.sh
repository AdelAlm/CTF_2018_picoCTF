#!/bin/bash

# get the zip file
wget -q -c --no-check-certificate https://2018shell.picoctf.com/static/8483d8ac0beca391b8322bc414773cfc/flag.zip

# unzip it
unzip flag.zip

# open jpg image
eog flag.jpg
