#Create a shell script using functions and parameters to 
#give read and write permission to a particular file 
#give read permission to a particular folder.

#!/bin/bash

# Function to give read and write permissions to a file
give_file_permissions() {
    local file=$1
    if [[ -f "$file" ]]; then
        chmod u+rw "$file"
        echo "Read and write permissions granted to file: $file"
    else
        echo "Error: $file is not a valid file."
    fi
}

# Function to give read permission to a folder
give_folder_permissions() {
    local folder=$1
    if [[ -d "$folder" ]]; then
        chmod u+r "$folder"
        echo "Read permission granted to folder: $folder"
    else
        echo "Error: $folder is not a valid folder."
    fi
}

# Main script logic
if [[ $# -eq 2 ]]; then
    action=$1
    target=$2

    case $action in
        "file")
            give_file_permissions "$target"
            ;;
        "folder")
            give_folder_permissions "$target"
            ;;
        *)
            echo "Usage: $0 <file|folder> <target>"
            echo "Example: $0 file /path/to/file"
            echo "Example: $0 folder /path/to/folder"
            exit 1
            ;;
    esac
else
    echo "Usage: $0 <file|folder> <target>"
    echo "Example: $0 file /path/to/file"
    echo "Example: $0 folder /path/to/folder"
    exit 1
fi
