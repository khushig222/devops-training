#Write a shell script to find and replace a string in a given .txt file
#!/bin/bash

# Function to find and replace a string in a .txt file
find_and_replace() {
    local file=$1
    local search_string=$2
    local replace_string=$3

    if [[ ! -f "$file" ]]; then
        echo "Error: File '$file' does not exist."
        exit 1
    fi

    # Check if the file has a .txt extension
    if [[ "${file##*.}" != "txt" ]]; then
        echo "Error: The file must have a .txt extension."
        exit 1
    fi

    # Perform the find and replace using sed
    sed -i "s/$search_string/$replace_string/g" "$file"
    
    if [[ $? -eq 0 ]]; then
        echo "String '$search_string' has been replaced with '$replace_string' in file: $file"
    else
        echo "Error: There was a problem during the replacement process."
    fi
}

# Main script logic
if [[ $# -ne 3 ]]; then
    echo "Usage: $0 <file> <search_string> <replace_string>"
    echo "Example: $0 file.txt 'old_string' 'new_string'"
    exit 1
fi

file=$1
search_string=$2
replace_string=$3

find_and_replace "$file" "$search_string" "$replace_string"
