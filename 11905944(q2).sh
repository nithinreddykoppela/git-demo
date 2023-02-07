#!/bin/bash
result=$(find / -name myfile.txt)

if [ -n "$result" ]; then
  echo "myfile.txt found at: $result"
else
  echo "myfile.txt not found."
fi

