#!/bin/bash

# connext to server via ssh
../ssh

env | grep -oE 'picoCTF{.*}'
