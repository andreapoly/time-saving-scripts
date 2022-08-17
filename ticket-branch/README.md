# Automate a new branch creation

# How to use the script

Using the script is really easy:
`ticket-branch name_of_the_branch`

This will:
- checkout the master/main branch of the repo you are in
- pull the latest changes from the master/main branch of the repo you are in
- create a new branch having `name_of_the_branch` as its name
- pushing the branch to the remote

An example usage is:

`ticket-branch andrea/test-proj/test-feature`

# Install the script

To install the script, you can clone the repo by pasting this command in your
terminal in a folder of your choice:
`git clone git@github.com:andreapoly/time-saving-scripts.git`

This will provide you with the latest version of the code.

To make your terminal able to reach the script, you need to either:
- place it in a directory which path is already into the PATH variable
- adjust your PATH variable to the folder you want to put your script in

The first option is the simplest one.

Assuming you have cloned this repo under `.time_saving_scripts`, you can issue
this command in your terminal:

`cp .time_saving_scripts/ticket-branch/ticket-branch.sh /Users/$USER/.local/bin/ticket-branch`

This will copy the script to a location that's usually into the PATH.

Now, change the file mode to make it executable:
`chmod 700 /Users/$USER/.local/bin/ticket-branch`

Now you can simply create and push a new branch remotely using:
`ticket-branch name_of_the_branch`