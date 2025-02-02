#Write a shell script to take 2 numbers as input parameter, take user choice to select an arithmetic operation and perform it. The script should be able to handle five basic Arithmetic Operations and print the result based on user choice.

#!/bin/bash

# Take two numbers as input parameters
echo "Enter the first number: "
read num1

echo "Enter the second number: "
read num2

# Display options for arithmetic operations
echo "Select an operation:"
echo "1. Add"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Divide"
echo "5. Modulus"

# Take the user's choice
read -p "Enter your choice (1-5): " choice

# Perform the operation based on the user's choice
case $choice in
  1)
    result=$((num1 + num2))
    echo "Result: $num1 + $num2 = $result"
    ;;
     2)
    result=$((num1 - num2))
    echo "Result: $num1 - $num2 = $result"
    ;;
  3)
    result=$((num1 * num2))
    echo "Result: $num1 * $num2 = $result"
    ;;
  4)
    if [ $num2 -eq 0 ]; then
      echo "Error: Division by zero is not allowed!"
    else
      result=$((num1 / num2))
      echo "Result: $num1 / $num2 = $result"
    fi
    ;;
  5)
    result=$((num1 % num2))
    echo "Result: $num1 % $num2 = $result"
    ;;
  *)
    echo "Invalid choice! Please select a number between 1 and 5."
    ;;
esac