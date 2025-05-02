#!/bin/bash

# ✏️ Edit this list with your desired folders
folders=(
  "api"
  "web"
  "db"
)

# 🚀 Create folders and add .gitkeep to each
for folder in "${folders[@]}"; do
  mkdir -p "$folder"
  touch "$folder/.gitkeep"
done

echo "Folders created with .gitkeep files:"
printf " - %s\n" "${folders[@]}"

