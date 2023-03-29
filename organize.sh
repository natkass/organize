#!/bin/bash

# Array of file extensions to process
EXTENSIONS=("MP3" "docx" "doc" "rtf")

# Loop through all files with the specified extensions
for ext in "${EXTENSIONS[@]}"; do
  for f in *."$ext"; do
    # Create subdirectory with the first 6 characters of the filename
    mkdir -p "${f:0:6}"
    # Move file into the subdirectory
    mv "$f" "${f:0:6}/"
  done
done
