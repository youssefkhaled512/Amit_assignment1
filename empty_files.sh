directory=/home/youssef/Amit/assignments

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Directory not found: $directory"
    exit 1
fi

# Find and list all empty files in the directory
empty_files=$(find "$directory" -type f -empty)

if [ -z "$empty_files" ]; then
    echo "No empty files found in '$directory'."
else
    echo "Empty files in '$directory':"
    echo "$empty_files"
fi
