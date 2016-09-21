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

Find your CSS file. 

This file might have either `.css` or `.scss` as an extension.

Once you have found it you should make a small change to it.
Change the background color, for instance.

Once that is done, you can add and commit those changes: 

`git add -v * && git commit -a -m "edited css to different background color`

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

To compare your changes with what you had before, make sure all your changes are committed with `git status` (If they're not committed they'll follow you around from branch to branch). Then `git chekcout master` and view your development site.  You should see the old version of the site after a refresh.  If everything looks good, you can `git merge testing` to merge your `testing` commits into `master`.  Then a final refresh should show that your master branch looks like testing did!

If they did, and you like them, you can merge them back into the `master` branch and then they will be live on your site when you push them up to GitHub. Go ahead and `git push origin master` and view them on your live github site.

If you want to kill the preview, press `CTRL+C` in the SSH terminal where jekyll is running. 

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

# For Next Time

We're going to try a slightly different approach next time. 
I'm going to cluster you in groups based on where you are in the process of completing assignment #1. 
It is okay if you are still early on: that is fine. 
I want to be able to collectively help you, though, and that will be easier to do if I know 
where you are and if you can help each other through tasks that are closer together in the overall workflow. 