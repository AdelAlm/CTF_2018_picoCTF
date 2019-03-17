#!/bin/bash

# get the executable
wget -q --no-check-certificate https://2018shell.picoctf.com/static/143bc640105d2b0befaa66f5a87cd085/run

# make it executable
chmod +x ./run

# run it
./run
