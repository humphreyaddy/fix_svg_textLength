#!/bin/bash

# Set the directory containing SVG files
SVG_DIR="/put/your_path_to_the_files/here/"  # Change this to your SVG directory

# Loop through all .svg files in the directory
for svg_file in "$SVG_DIR"/*.svg; do
  # Check if file exists
  if [[ -f "$svg_file" ]]; then
    echo "Processing: $svg_file"
    
    # Use sed to replace textLength with XtextLength (case-sensitive)
    sed -i 's/textLength/XtextLength/g' "$svg_file"
    
    echo "Finished:  $svg_file"
  fi
done

echo "All SVG files processed."
