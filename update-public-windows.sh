#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to public site...\033[0m\n"

# Build the project.
hugo -t hugo-whisper-theme # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public

# Stopping CRLF to LF conversion
git config --local core.autocrlf false

git checkout master

git pull origin master

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
