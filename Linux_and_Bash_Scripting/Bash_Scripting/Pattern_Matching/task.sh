#!/bin/bash 
# Task to remove lines which exists word that inside them
input_sample=$1
pattern_match=`grep "[Tt]hat" $input_sample`
unmatched_pattern=`grep -v "[Tt]hat" $input_sample`

#echo $pattern_match
echo $unmatched_pattern