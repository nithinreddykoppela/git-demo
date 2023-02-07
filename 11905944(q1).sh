#!/bin/bash

# function to count number of files in a directory
file_count () {
  local dir="$1"
  local file_count=$(ls -l "$dir" | grep -c '^-')
  echo "Number of files in $dir: $file_count"
}

# main function to check file/directory type and perform ls command
check_and_ls () {
  for file in "$@"; do
    if [ -f "$file" ]; then
      echo "$file is a regular file."
      ls -l "$file"
    elif [ -d "$file" ]; then
      echo "$file is a directory."
      ls -l "$file"
      file_count "$file"
    else
      echo "$file is another type of file."
    fi
  done
}

# call main function with unlimited number of arguments
check_and_ls "$@"

