#!/bin/bash
#  script based on the input entered by the user as string "xxxx xxxx xxxx xxxx"
# It hides the first 12 number of password with asterick 

## pattern_matching="[0-9]{4} [0-9]{4} [0-9]{4}"
inputs="$1"
echo "$inputs" | sed -E 's/[0-9]{4} [0-9]{4} [0-9]{4}/**** **** ****/g'
