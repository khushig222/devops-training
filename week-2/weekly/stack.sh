#Script creation for implementing:
#stack - Push, Pop, Peek, isEmpty, isFull, size

#!/bin/bash

# Define maximum stack size
MAX_SIZE=5

# Initialize an empty stack as an array
stack=()

# Push operation
push() {
    if [ ${#stack[@]} -ge $MAX_SIZE ]; then
        echo "Stack Overflow: Unable to push. Stack is full."
    else
        stack+=("$1")
        echo "Pushed $1 onto the stack."
    fi
}

# Pop operation
pop() {
    if [ ${#stack[@]} -eq 0 ]; then
        echo "Stack Underflow: Unable to pop. Stack is empty."
    else
        popped=${stack[-1]}
        unset 'stack[-1]'
        echo "Popped $popped from the stack."
         fi
}

# Peek operation
peek() {
    if [ ${#stack[@]} -eq 0 ]; then
        echo "Stack is empty."
    else
        echo "Top element is ${stack[-1]}"
    fi
}

# isEmpty operation
isEmpty() {
    if [ ${#stack[@]} -eq 0 ]; then
        echo "Stack is empty."
    else
        echo "Stack is not empty."
    fi
}

# isFull operation
isFull() {
    if [ ${#stack[@]} -ge $MAX_SIZE ]; then
        echo "Stack is full."
        else
        echo "Stack is not full."
    fi
}

# Size operation
size() {
    echo "Stack size: ${#stack[@]}"
}

# Display menu for user interaction
while true; do
    echo -e "\n--- Stack Operations ---"
    echo "1. Push"
    echo "2. Pop"
    echo "3. Peek"
    echo "4. Check if Empty"
    echo "5. Check if Full"
    echo "6. Get Size"
    echo "7. Exit"
    read -p "Choose an option (1-7): " choice

    case $choice in
        1)
            read -p "Enter the element to push: " element
            push "$element"
             2)
            pop
            ;;
        3)
            peek
            ;;
        4)
            isEmpty
            ;;
        5)
            isFull
            ;;
        6)
            size
            ;;
        7)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option, please try again."
            ;;
    esac
    done