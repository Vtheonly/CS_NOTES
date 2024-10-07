#!/bin/bash

# Loop through the folder numbers from 0 to 7
for i in {0..7}
do
  # Define the folder names
  level_folder="Level $i"
  lesson_folder="$level_folder/Lessons"
  active_recall_folder="$level_folder/Active Recall Test"

  # Check if the 'Lesson' folder exists
  if [ -d "$lesson_folder" ]; then
    # Loop through each markdown file in the 'Lesson' folder
    for lesson_file in "$lesson_folder"/*.md; do
      # Check if there are any markdown files
      if [ ! -e "$lesson_file" ]; then
        echo "No markdown files found in $lesson_folder"
        break
      fi

      # Get the base filename without the path
      base_filename=$(basename "$lesson_file")

      # Define the test file name with the prefix in the 'Active recall Test' folder
      test_file="$active_recall_folder/Test - $base_filename"

      # Check if the test file already exists
      if [ ! -f "$test_file" ]; then
        # Create the test markdown file
        touch "$test_file"
        echo "Created $test_file"
      else
        echo "Skipped $test_file, already exists."
      fi
    done
  else
    echo "Lesson folder $lesson_folder does not exist!"
  fi
done

