#!/usr/bin/env bash

# Converts string to lowercase
function lowercase() {
    echo $1 | tr '[:upper:]' '[:lower:]'
}

# Applies a Caesar cipher to a string
# Usage: caeserCipher <shift> <string>
function caeserCipher() {
    local shift=$1
    local string=$2
    local output=""
    for i in "${string[@]}"; do
        output+=$i "${i:0:$((${shift})}"
    done
    echo $output

    echo $cipherText
}