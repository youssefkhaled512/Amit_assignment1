filename=factorial.sh

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File not found: $filename"
    exit 1
fi

# Remove duplicate lines and save the output to a temporary file
sort -u "$filename" -o "$filename"

echo "Duplicate lines removed from '$filename'."