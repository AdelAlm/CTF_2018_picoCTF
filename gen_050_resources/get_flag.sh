#!/bin/bash

# get flag from a web page
curl -s https://picoctf.com/resources | grep -oE "picoCTF{.*}"
