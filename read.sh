#!/bin/bash

# Get the directory name from the user
directory=$1

# Check if the directory exists
if [ ! -d "$directory" ]; then
  echo "The directory '$directory' does not exist."
  exit 1
fi

# List the files in the directory and its subdirectories, and display their contents
find "$directory" -type f ! -iname "*.jpg" ! -iname "*.jpeg" ! -iname "*.png" -exec sh -c '
  for file do
    echo "$file"
    cat "$file"
  done
' sh {} +
