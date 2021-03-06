#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to theme...\033[0m\n"

# Go To Public folder
cd themes/hugo-whisper-theme

git checkout master

git pull origin master

# Stopping CRLF to LF conversion
git config --local core.autocrlf false

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
