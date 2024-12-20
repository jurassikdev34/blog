#!/bin/bash
set -euo pipefail

# Change to the script's directory

cd /home/alejandro/kDrive/jurassikdev34 

# Set variables for Obsidian to Hugo copy
sourcePath="/home/alejandro/kDrive/notas/content"
destinationPath="/home/alejandro/kDrive/jurassikdev34/"

# Set GitHub Repo
myrepo="git@gitlab.com:jurassikdev34/blog"

# Check for required commands
for cmd in git rsync python3 hugo; do
    if ! command -v $cmd &> /dev/null; then
        echo "$cmd is not installed or not in PATH."
        exit 1
    fi
done

# Step 2: Sync posts from Obsidian to Hugo content folder using rsync

if [ ! -d "$sourcePath" ]; then
    echo "Source path does not exist: $sourcePath"
    exit 1
fi

if [ ! -d "$destinationPath" ]; then
    echo "Destination path does not exist: $destinationPath"
    exit 1
fi

git pull 

rsync -av --delete "$sourcePath" "$destinationPath"

# Step 3: Process Markdown files with Python script to handle image links
if [ ! -f "images.py" ]; then
    echo "Python script images.py not found."
    exit 1
fi

if ! python3 images.py; then
    echo "Failed to process image links."
    exit 1
fi

# Step 5: Add changes to Git
   git add .

# Step 6: Commit changes with a dynamic message
commit_message="New Blog Post on $(date +'%Y-%m-%d %H:%M:%S')"
    git commit -m "$commit_message"

# Step 7: Push all changes to the main branch
if ! git push origin master; then
    echo "Failed to push to master branch."
    exit 1
fi

