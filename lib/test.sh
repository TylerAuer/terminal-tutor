#!/usr/bin/env bash

# Returns the sha1 hash of the input
function sha1 {
  echo -n $1 | shasum | awk '{print $1}'
}

# Returns 0 if file contains string, 1 otherwise
function file_contains() {
  local file="$1"
  local string="$2"
  
  # Check that two args were passed
  if [[ $# -ne 2 ]]; then
    echo "ERROR: file_contains requires two arguments"
    return 1
  fi

  # Check if file exists
  if [[ ! -f "$file" ]]; then
    echo "ERROR: $file does not exist"
    return 1
  fi
  
  # Check if string exists in file
  if grep -E "$string" "$file"; then
    return 0
  else
    return 1
  fi
}