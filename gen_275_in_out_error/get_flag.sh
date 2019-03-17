#!/bin/bash

# redirect stderr to a file with 2>
./in-out-error 2> /tmp/yolo.tmp
cat /tmp/yolo.tmp
