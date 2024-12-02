directory=/home/youssef/Amit

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Directory not found: $directory"
    exit 1
fi

# Loop through all files in the directory
for file in "$directory"/*; do
    # Check if it's a file (not a directory)
    if [ -f "$file" ]; then
        # Get the lowercase version of the filename
        lowercase_file=$(echo "$(basename "$file")" | tr '[:upper:]' '[:lower:]')
        
        # Rename the file if the lowercase name is different
        if [ "$lowercase_file" != "$(basename "$file")" ]; then
            mv "$file" "$directory/$lowercase_file"
            echo "Renamed '$file' to '$directory/$lowercase_file'"
        fi
    fi
done
