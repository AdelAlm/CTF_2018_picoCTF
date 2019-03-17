#!/bin/bash

# server return a lot of data
# pipte them to grep to find the flag with the good format
nc 2018shell.picoctf.com 44310 | grep -oE 'picoCTF{.*}'
