#!/bin/bash
set -e
# Variables
DIR="adventure_tours/.git"
REPO_NAME="adventure_tours"
GITHUB_USERNAME="bradseftel"
BRANCH_NAME="main"  # Change this if your branch name is different
COMMIT_MESSAGE="Automated Git Commit using Bash Script"  # You can customize this

# Step 1: Initialize Git repository (if not already initialized)
if [ ! -d "$DIR" ]; then
   #git init
   echo "Initialize  $DIR";
else
    echo "No Init $DIR exits"
fi

# Step 2: Add all files to the staging area
git add .

# Step 3: Commit the files
git commit -m "$COMMIT_MESSAGE"

# Step 4: Add remote repository
git remote add origin https://github.com/$GITHUB_USERNAME/$REPO_NAME.git

# Step 5: Push to GitHub
git push -u origin $BRANCH_NAME

echo "Pushed to https://github.com/$GITHUB_USERNAME/$REPO_NAME.git on branch $BRANCH_NAME"
