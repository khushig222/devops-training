#script creation for prime numbers.

#!/bin/bash

# Function to check if a number is prime
is_prime() {
    number=$1
    if [ $number -le 1 ]; then
        echo "$number is not a prime number."
        return
    fi
    
    for (( i=2; i<=$((number/2)); i++ ))
    do
        if [ $((number % i)) -eq 0 ]; then
            echo "$number is not a prime number."
            return
        fi
    done
    
    echo "$number is a prime number."
}

# Read number from the user
read -p "Enter a number to check if it's prime: " num

# Call the function to check if the number is prime
is_prime $num
