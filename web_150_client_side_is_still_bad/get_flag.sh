#!/bin/bash

# get the page with login form
# find flag with grep
curl -s http://2018shell.picoctf.com:8420 | grep -oE '== .*' | cut -d "'" -f2 | tac | tr -d '\n'
