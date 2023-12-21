#!/usr/bin/env bash

INPUT_FILE=lessons/phone_number_cleanup/input.txt

hi="046c168df2244d3a13985f042a50e479fe56455e"

sed 's/[^0-9]*//g' $INPUT_FILE
