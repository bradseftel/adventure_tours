#!/bin/bash
set -e
# Variables
REPO_NAME="adventure_tours"
GITHUB_USERNAME="bradseftel"
BRANCH_NAME="main"  # Change this if your branch name is different
COMMIT_MESSAGE="Automated Git Commit using Bash Script"  # You can customize this

#Step 1: Add all files to the staging area
git add .

# Step 2: Commit the files
git commit -m "$COMMIT_MESSAGE"

# Step 3: Add remote repository
#git remote add origin https://github.com/$GITHUB_USERNAME/$REPO_NAME.git

# Step 4: Push to GitHub
git push
echo "Pushed to https://github.com/$GITHUB_USERNAME/$REPO_NAME.git on branch $BRANCH_NAME"
