#Write a shell script to print every alternate value in an array

#!/bin/bash

# Define an array
arr=(1 2 3 4 5 6 7 8 9 10)

# Loop through the array and print every alternate value
for ((i=0; i<${#arr[@]}; i+=2)); do
    echo ${arr[$i]}
done