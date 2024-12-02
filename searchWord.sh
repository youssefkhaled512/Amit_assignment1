word=count
filename=searchWord.sh

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File not found: $filename"

else

count=$(grep "$word" "$filename" | wc -l)
echo "The word '$word' occurs $count times in the file '$filename'."

fi

