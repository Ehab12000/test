#!/bin/bash
#  script based on the input entered by the user if you want sample of inputs you can use these inputs
#  "namibi" "Nauru" "america" "nepal" "egypt" "Netherlands" "NewZealand" "Nicaragua" "Niger"

inputs=("$@")

for (( i=0;i<${#inputs[@]};i++)); do
    temp=${inputs[${i}]}
    first_char="${temp:0:1}"

    if [[ "$first_char" =~ [A-Z] ]]; then
            temp=".${temp:1}"            
    fi    
    input_modified="$input_modified $temp"
done 

echo $input_modified