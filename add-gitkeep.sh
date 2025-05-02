#!/bin/bash

# Find all directories (recursively), skip .git and node_modules if needed
find . -type d ! -path "*/.git/*" ! -path "*/node_modules/*" | while read dir; do
  # Only create .gitkeep if the directory doesn't already have files
  if [ -z "$(ls -A "$dir")" ]; then
    touch "$dir/.gitkeep"
    echo "Created .gitkeep in $dir"
  fi
done

