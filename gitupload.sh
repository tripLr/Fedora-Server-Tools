#!/bin/bash

# script to upload  current git directory
# Because there is so little time to do all this 

git add .
# Adds the all the files in the working directory to your local repository and stages it for commit. 
# To unstage a file, use 'git reset HEAD YOUR-FILE'.

# uncomment lines below for the current project

# git commit
# git commit -m "Add existing file"
# Commits the tracked changes and prepares them to be pushed to a remote repository. 
# To remove this commit and modify the file, use 'git reset --soft HEAD~1' and commit and add the file again.

# git commit -m "First commit"
# Commits the tracked changes and prepares them to be pushed to a remote repository. 
# To remove this commit and modify the file, use 'git reset --soft HEAD~1' and commit and add the file again.

# git remote add origin <remote repository URL>\
# Sets the new remote

git remote -v
# Verifies the new remote URL

# git push origin master
# Pushes the changes in your local repository up to the remote repository you specified as the origin to master

# git push origin your-branch
# Pushes the changes in your local repository up to the remote repository you specified as the origin to branch
