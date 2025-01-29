#script creation for fibonacci series

#!/bin/bash

# Function to print Fibonacci series up to n terms
fibonacci() {
    n=$1
    a=0
    b=1

    if [ $n -le 0 ]; then
        echo "Please enter a positive integer."
        return
    elif [ $n -eq 1 ]; then
        echo "Fibonacci series up to $n term: $a"
    else
        echo -n "Fibonacci series up to $n terms: "
        echo -n "$a $b "
        for (( i=2; i<$n; i++ ))
        do
            c=$((a + b))
            echo -n "$c "
            a=$b
            b=$c
        done
        echo # to move to the next line
    fi
}

# Read the number of terms from the user
read -p "Enter the number of terms in the Fibonacci series: " num

# Call the fibonacci function
fibonacci $num
