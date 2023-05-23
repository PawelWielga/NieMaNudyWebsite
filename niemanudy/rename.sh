#!/bin/bash

# Directory path where the files are located
directory="C:\Users\Wielgowie\source\repos\website\niemanudy\podlaskie"

# New file name prefix
new_prefix="podlaskie_"

# Navigate to the directory
cd "$directory" || exit

# Iterate over all files in the directory
for filename in *.jpg; do
    # Generate the new file name
    new_filename="${new_prefix}${filename}"

    # Rename the file
    mv "$filename" "$new_filename"
    echo "Renamed $filename to $new_filename"
done
