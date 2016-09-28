---
layout: post
title: "Branching and Merging"
category: Web
tags: 
- git
- GitHub
- web development
- workflows
---

Today we will set up a testing workflow and learn how to create branches for adding and changing features on our sites. 
We will use this to change the visual style the site and create blog posts. 

This session will be mostly hands-on. 
<excerpt/>

# Q & A

* First event writeup now due Weds before Fall break, Oct 19.  Your writeup should be a **page** on your site.  This should be accessible from the index page of your site.  Make sure this is committed and displaying on your github.io site before the end of the day on that Wednesday.


# Create a branch

To create, or "checkout" a new branch, we can follow Roger Dudler's guide again.{% sidenote 'gitnoshit' 'Dudler, Roger. “Git: The Simple Guide.” Git: The Simple Guide. Last modified 2015. <http://rogerdudler.github.io/git-guide/>.<br/><br/>Also check this resource out for help with branching and merging: Chacon, Scott, and Ben Straub. “Basic Branching and Merging.” In ProGit. New York, New York: Apress, 2014. https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging.' %}

`git checkout -b testing`

This creates a new branch and switches us into it.

If we want to see our existing branches and see where we are, type:

`git branch -l` or `git branch --list`

Once here we can make changes without disturbing the `master` branch, which should have our running code in it. 

To switch between branches, simply type (mutatis mutandis):

`git checkout BRANCH-NAME`

A neat trick is that you can use `git checkout -` to go to whatever branch you were previously on.

# Edit your CSS 

Find your CSS file. You've done this before, but make a small but obvious change now for the purposes of seeing what branching can do.

This file might have either `.css` or `.scss` as an extension.

Once you have found it you should make a small but visible change to it.
Change the background color, for instance.

Once that is done, you can add and commit those changes: 

`git add -v * && git commit -a -m "edited css to different background color`

You can type those commands separately but the `&&` is a fancy way of saying "and then do...". It will only do the second thing if there were no errors in the first command.

# Test your branch

We are still in the `testing` branch. 
We need to test our code to see if it worked. 

To do this, we will have to access the files locally and start a webserver. 
Go back to the SSH terminal and check to see that the earlier script finished its work. You'll know because you will see a prompt and blinking cursor at the bottom. 

Switch into the root directory of your website repository if you were somewhere else. 

`cd ../YOUR-GITHUB-USERNAME.github.io`

And then run the following command. 

`jekyll serve --host $IP --port $PORT`

This starts a webserver and builds your site.
Check your development server to see if your changes worked or not. 

# Comparing and Merging

To compare your changes with what you had before, make sure all your changes are committed with `git status` (If they're not committed they'll follow you around from branch to branch). Then `git chekcout master` and view your development site.  You should see the old version of the site after a refresh.  If everything looks good, you can `git merge testing` to merge your `testing` commits into `master`.  Then a final refresh of your `c9users.io` should show that your master branch looks like testing did!

Remember: whatever branch you're on will be what jekyll will serve at c9users.io. But only commits that are on the `master` branch
and get pushed to github.com will show up on github.io.

If you like yourt changes, you can push them up to GitHub. Go ahead and `git push origin master` and view them on your live github site.

If you want to kill the preview, press `CTRL+C` in the terminal where jekyll is running. 

# Roll back a change

We can roll back most changes.{% sidenote 'revert' 'jaw6. “How to Undo (almost) Anything with Git.” GitHub. Last modified June 8, 2015. https://github.com/blog/2019-how-to-undo-almost-anything-with-git.' %} 
The simplest way to do this it to just revert the last commit, which we did before in class. Here's a review:

`git revert <SHA>`

`<SHA>` above refers to the SHA-1 checksum of the git commit. 
If you look at the git log for a set of recent commits you will see this:

```
cabox@box-codeanywhere:~/workspace/inls161.github.io$ git log
commit 98816f674673b2f6143db724edf71f34f471f164
Author: john.d.martin.iii <john.d.martin.iii@gmail.com>
Date:   Thu Jun 30 12:01:06 2016 -0400

    changed the color of black

commit c8cc9f57e5a0e43f38ffb7a21aacb72ded8f7778
Author: john.d.martin.iii <john.d.martin.iii@gmail.com>
Date:   Thu Jun 30 11:16:42 2016 -0400

    edit index

commit a2937da7d6052d953e4cbedb1c4df0a0300d7993
Author: john.d.martin.iii <john.d.martin.iii@gmail.com>
Date:   Thu Jun 30 11:14:40 2016 -0400
```

The SHA-1 checksum identifies each git commit as unique. 

If we run `git revert 98816f674673b2f6143db724edf71f34f471f164 -m '"Revert "changed the color of black"'`, which is the SHA-1 checksum of the last commit listed above, and then run `git log` we will see that the output tells us that we reverted the last commit: 

```
cabox@box-codeanywhere:~/workspace/inls161.github.io$ git log
commit e73f76956fdd29c2cc0c92e6433be3669fccc155
Author: john.d.martin.iii <john.d.martin.iii@gmail.com>
Date:   Thu Jun 30 12:54:27 2016 -0400

    Revert "changed the color of black"

    This reverts commit 98816f674673b2f6143db724edf71f34f471f164.
```

In this way, we can always fix a mistake we have made (or multiple mistakes), even if we've committed and pushed them. 
This makes git a *very* powerful tool for making sure that you do not lose work.{% marginnote 'nota-bene' '**_Nota bene:_** This is why it is a good rule of thumb to commit early and often. while working on a project.' %}

# Cleaning up commit history

If you made lots of little commits and want to clean them up, you can `git reset` back to a specific commit in the past, 
usually at the start o a big feature or change you jsut made. Doing this
will leave all of your changes to files, and you can see them with `git status` and `git diff .`.  It just erases the commits that describe the changes. This lets you make a clean commit history
if you have lots of little changes.  That way, you can commit often while you're working, then reset and commit cleanly before you push.

**A word of caution**: in general, it's bad practice to `reset` commits you've already pushed to github.  It's OK to do in this
class if you have to but when you're working in the real world it's a no-no, since it rewrites shared history and can cause bad conflicts
with your coworkers' code.

If you do reset commits you've already pushed, you'll have to `git push -f` to get the new history up to github.  This will permanently
erase the old commits (though the changes to your code should remain if you didn't remove them).

# Merging a branch on Github

OK.  We know how to merge things on the command line.  Now let's make a change to `testing`, push it up to github, do the merge there, then `pull` it back down to our master on Cloud9.

I've put instructions in the below as comments.  You don't need to type them.

```
git checkout testing     # if you're not there already

# Make an obvious change to your CSS again

git add .
git commit -m "Another obvious CSS change"

git push origin testing  # This makes a new testing branch on github.com.
```

Now go to your repo on github.com. Github has noticed that you've pushed a branch and will ask you if you want to create a pull request.  Click to do this.

When creating a pull request, describe the change you made in complete sentences.  

Once the pull request is made, you can have a discussion about the changes, view them, etc.  This is the basis of collaborating with others on github.

Click the Merge button at the bottom.  The default settings are fine.

Congrats!  You've merged the commit to master on github.com and should be able to see it on github.io.

The final thing is to pull the change back down to Cloud9.  

```
git checkout master    # if not already there
git pull origin master # gets the new commit
```

Done!

# For Next Time

We're going to try a slightly different approach next time. 
I'm going to cluster you in groups based on where you are in the process of completing assignment #1. 
It is okay if you are still early on: that is fine. 
I want to be able to collectively help you, though, and that will be easier to do if I know 
where you are and if you can help each other through tasks that are closer together in the overall workflow. 

For the rest of class, continue to work on your sites and initial reflection post.