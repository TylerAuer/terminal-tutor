#!/usr/bin/env bash

source $(git rev-parse --show-toplevel)/lib/lib.sh

SOLUTION_PATH=$LESSONS_DIR_NAME/phone_number_cleanup/solution.sh
SOLUTION_OUTPUT=$(bash $SOLUTION_PATH)
SOLUTION_HASH=$(sha1 $SOLUTION_OUTPUT)

ACCEPTABLE_HASHES=(
  "e076637c32e393b3c289b4c490c3ba6a9ee73938"
)

green "Hashing your solution to see if it matches any of the expected hashes..."

# Check if solution hash matches any of the expected hashes
if ! [[ "${ACCEPTABLE_HASHES[@]}" =~ $SOLUTION_HASH ]]; then
  red "Your solution is incorrect, the hashes don't match"
  red "Your hash was:"
  red "$SOLUTION_HASH"
  exit 1
fi

# Check if the solution file contains any of the solution hashes
for hash in "${ACCEPTABLE_HASHES[@]}"; do
  if file_contains $SOLUTION_PATH $hash; then
    red "You sneaky devil, looks like you just copied the solution hash into the solution file! Try again!"
    exit 1
  fi
done

green "Success! You solved this puzzle!"

exit 0