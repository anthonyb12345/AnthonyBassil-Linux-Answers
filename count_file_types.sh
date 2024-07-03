#!/bin/bash

# Check if the user provided a directory path
if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/directory"
  exit 1
fi

# Check if the provided argument is a valid directory
if [ ! -d "$1" ]; then
  echo "Error: $1 is not a valid directory."
  exit 1
fi

# Initialize counters
dir_count=0
file_count=0
symlink_count=0

# Use the find command to count the file types
while IFS= read -r -d '' entry; do
  if [ -d "$entry" ]; then
    ((dir_count++))
  elif [ -f "$entry" ]; then
    ((file_count++))
  elif [ -L "$entry" ]; then
    ((symlink_count++))
  fi
done < <(find "$1" -mindepth 1 -maxdepth 1 -print0)

# Display the counts
echo "Directories: $dir_count"
echo "Regular files: $file_count"
echo "Symbolic links: $symlink_count"

exit 0


