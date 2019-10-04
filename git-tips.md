# Helpful Git commands

## upstream 
### Configure upstream
##### List the current configured remote repository for your fork.
`git remote -v`
##### Specify a new remote upstream repository that will be synced with the fork.
`git remote add upstream <ssh_git_repo>`
`git remote add upstream ssh_git_repo && git fetch upstream`
##### Verify the new upstream repository you've specified for your fork.
`git remote -v`
##### Update upstream (otherwise upstream will have little/no data)
`git fetch upstream`



