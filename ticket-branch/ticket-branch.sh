#!/bin/sh

# This script is useful if your working flow is made of:
# - start to work on a new ticket
# - create a branch associated with the ticket starting from the main branch
#   of the remote repository you are working on
# - checkout it and start to work on it
# - push the changes to it

# Define constants
YELLOW='\033[1;33m'
NC='\033[0m' # No color (used to reset color)

# Check whether the current repo has master or main as its default branch
DEFAULT_BRANCH=main

git branch - l | grep master -q
if [ $? -eq 0 ]:
    DEFAULT_BRANCH=master

# Checkout the default branch and pull the latest changes
echo "$YELLOW"
echo "Checking out the main branch and updating it $NC \n"
git checkout DEFAULT_BRANCH
git pull

# Create a new branch and checkout it. Note that its name is the same as the
# name provided in the first argument of this script when invoking it
echo "$YELLOW"
echo "Creating a new branch named $1 $NC \n"
git checkout -b $1

# Push the branch to the origin to let the origin track it
echo "$YELLOW"
echo "Pushing the branch to the origin to let it track it $NC \n"
git push -u origin $1