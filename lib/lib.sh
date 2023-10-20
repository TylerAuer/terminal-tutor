#!/usr/bin/env bash

# Root file for all other lib files, designed to be sourced in scripts
# Loads all lib files and sets up constants

# Constants
export LESSONS_DIR_NAME=lessons
export LIB_DIR_NAME=lib
export SCRIPTS_DIR_NAME=scripts
export LESSON_TEMPLATES_DIR_NAME=lesson_template

# Paths
export REPO_ROOT=$(git rev-parse --show-toplevel)
export LIB_DIR_PATH=$REPO_ROOT/$LIB_DIR_NAME
export SCRIPTS_DIR_PATH=$REPO_ROOT/$SCRIPTS_DIR_NAME
export LESSONS_DIR_PATH=$REPO_ROOT/$LESSONS_DIR_NAME
export LESSON_TEMPLATES_DIR_PATH=$REPO_ROOT/$LESSON_TEMPLATES_DIR_NAME

# Source all lib files (except this one)
echo
echo -e "Sourcing lib files..."
for file in $LIB_DIR_PATH/*sh; do
  if [ $file == $LIB_DIR_PATH/lib.sh ]; then continue; fi
  echo "...$(basename $file)"
  source $file
done
echo

