#!/bin/bash

# Loop through the folder numbers from 0 to 7
for i in {0..7}
do
  # Define the folder name (Level 0, Level 1, etc.)
  folder="Level $i"
  
  # Check if the folder exists
  if [ -d "$folder" ]; then
    # Create the 'Lesson' and 'Active recall Test' subfolders
    mkdir -p "$folder/Lessons" "$folder/Active Recall Test"
    
    # Move all files (excluding directories) to the 'Lesson' folder
    find "$folder" -maxdepth 1 -type f -exec mv {} "$folder/Lessons/" \;
    
    echo "Moved files to 'Lessons' and created 'Active recall Test' in $folder"
  else
    echo "Folder $folder does not exist!"
  fi
done

