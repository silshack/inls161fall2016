---
layout: default
title: Git Reference Sheet
nav_exclude: true
---

# {{ page.title }}

## Set up a workspace

Let's login to our DevBox on Cloud9 and make a new workspace. 
Then we'll turn that workspace into a Git repository. 

First, make a new directory like we learned the other day. 

`mkdir mynewproject`

Then move into that directory and create some files. 

`cd mynewproject`
`touch file1 file2 file3 file4`

Make a subdirectory of the directory we just created and are currently in. 

`mkdir ./newsubdirectory`

Make some files there.

`touch newsubdirectory/newfile1 newsubdirectory/newfile2`

Add some text to the files, either with an echo command or with nano (or another editor).

`echo "Hello, world!" > file1`
`echo "Here is some more text." > file2`
`echo "Even more text." > newsubdirectory/newfile1`

Now that we have some stuff to work with, let's turn this directory into a Git repository. 

## Git 

Make sure that you are in the correct directory. 

`pwd` should output `/home/cabox/workspace`.

The initialize your repository:

`git init`

That command told Git to start tracking the changes made in this directory from now on. 
If you do the following command you will see a ne subdirectory `.git` in the workspace:

`ls -lah`

The `ls` command we know, these switches that we added after tell us more information about the directory that we have listed. 
You can look at what the switches do by looking at the help for ls:

`ls --help` 

We can also now see all of the hidden files in the directory. 
If a file or directory name has a period in front of it, then it will be hidden. 
Our `.git` directory is hidden. 

This directory contains metadata about our workspace. 
The information contained therein tells Git what changes has been made and what to do with them. 

Now we need to add files and directories to our repository. 
This must always be done manually. 
If you do not add a file, it will not show up in your repository, which is good for files that you don't want to distribute, like certain kinds of data or log files, etc. 
There is a specific way to tell git to ignore files which we will learn later. 
For now let's just add everything. 

`git add .`

That command adds everything in the current directory including subdirectories.
If you want to be absolutely sure that you don't miss anything, use the following:

`git add *`

That tells git to expand all file and directory names and add them. 

You will see some output here. 
Try to use the articles and tutorials that we have referenced in class and figure out what the output means. 

Now that we have added files, let's commit our changes. 
Committing is sort of like "save as." 
It tells Git that we want to keep these changes as a new version. 
This is why we call this task version control. 

`git commit -a -m "first commit"`

Let's break this down a bit. 
The first switch `-a` tells git to record all the changes made. 
The second switch `-m` allows us to enter a commit message. 
This is a message to ourselves to remind us what we just did. 
This is very useful for keeping your workflow in order. 

Make a change to a file:

`echo "I'm changing this file to have a new line." > file3`

Then commit that change;

`git commit -a -m "I changed a file."`

The output from that command should show you that there has been a change (insertion) to that file.

## Branching

Now that we have some things committed, let's see what else we can do. 
First we'll create a branch. 

`git checkout -b newbranch`

This command creates and moves us into a new branch of the same workspace. 
Let's delete some files. 
Let's delete that whole subdirectory. 

`rm -rI newsubdirectory`
`ls`

We should see that the subdirectory is now gone. 

Let's switch back to the master branch and see if it has changed. 

`git checkout master`
`ls -lah`

Hmmm. It looks like they are still gone. What's going on here?

Aha! We didn't commit our changes. Switch back into the new branch:

`git checkout newbranch`

And commit:

`git commit -a -m "I deleted some things."

The output should show you your deletions. 

*Now* let's switch to the master branch: 

`git checkout master`
`ls`

*Et voila,* our deleted files are still there in our master branch. 
This is because Git preserves all of the information about what has happened in the workspace as well as all of the files in the workspace across all changes. 

One last thing with branches. 
If we want to see a list of all of our branches, we can:

`git branch --list`

This will show us the names of all of the branches that we have created and also which one we are currently in. 

## Logs

So now, let's look at what we did:

`git log`

This command gives us a list of all of the transactions we have made. 
Try out some of the other log commands in the Git Simple Guide and see how else you can display this information. 
