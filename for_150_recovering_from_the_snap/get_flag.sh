#!/bin/bash

# get the partition
wget -q --no-check-certificate https://2018shell.picoctf.com/static/59cd22a161127c4924bbfdc9f25aa4b8/animals.dd

# recovere deleted files (image with the flag) in recovered/
../../tools/testdisk/photorec_static ./animals.dd
