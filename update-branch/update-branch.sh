#!/bin/sh

# Convenient script to update the current branch.


# Define constants
DEFAULT_BRANCH=main
YELLOW='\033[1;33m'
NC='\033[0m' # No color (used to reset color)

# Check whether the default branch is master
git branch -l | grep master
if [[ $? -eq 0 ]]; then
    DEFAULT_BRANCH=master
fi

# Checkout the default branch
echo "$YELLOW"
echo "Checking out the $DEFAULT_BRANCH branch $NC"
git checkout $DEFAULT_BRANCH

# Pull the latest changes
echo "$YELLOW"
echo "Pulling the latest changes $NC"
git pull

# Update the local branch
echo "$YELLOW"
echo "Updating the previous branch $NC"
git checkout -
git merge $DEFAULT_BRANCH