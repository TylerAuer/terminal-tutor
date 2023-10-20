#!/usr/bin/env bash

# Creates the directory structure and boilerplate files
# for a lesson with the given name.

source lib/lib.sh

# Check that the user provided a lesson name
if [ -z "$1" ]; then
  red "You must provide a lesson name. Example usage: ./scripts/new_lesson.sh my_lesson"
  exit 1
fi

# Check that the lesson name is 1 word
if [ ! -z "$2" ]; then
  red "The lesson name must be 1 word, looks like you maybe used a space"
  exit 1
fi

LESSON_NAME=$(lowercase "$1")
LESSON_PATH="${LESSONS_DIR_NAME}/$LESSON_NAME"

# Check that the lesson doesn't already exist
if [ -d "$LESSON_PATH" ]; then
  red "A lesson with that name already exists"
  exit 1
fi

echo "Creating lesson: $LESSON_NAME"
echo "...copying template files"
cp -r $LESSON_TEMPLATES_DIR_PATH $LESSON_PATH

# TODO: As the infra grows, we'll need to make more changes when a new question is created