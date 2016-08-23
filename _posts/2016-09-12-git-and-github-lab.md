---
published: false
layout: post
title: "Lab #1: Git and GitHub"
category: Basics
tags: 
- version control
- git
- GitHub
- Jekyll
- web design
---

Today we're going to learn how to fork, clone, and push changes to a repository on GitHub using git. 
We do this in preparation for creating personal websites that will be hosted by GitHub pages. 
<excerpt/>

# Fork

The first thing that we are going to do today is fork some code that will allow us to have something to work with in Cloud9 later.
We'll use this as an opportunity to get wome web code and see what that looks like. 

You are not committing to anything today: this is just for practice. 
We'll start by going to this repo:

https://github.com/henrythemes/jekyll-starter-theme

This is the repo for a very, very simple Jekyll web theme. 
We will us this as a starter theme to practice with. 

Once you are at the above repo, click the "Fork" button and select your username when prompted to make a copy of the repo in your account.{% marginnote 'fork' '![Click the "fork" button.](/assets/ref-images/fork.png)' %} 

After a few seconds you will be taken to the repo page for the copy that you have made in your account. 

# Clone

Once there, click the big green "Clone or Download" button, select "Use SSH," and copy the resulting link. {% marginnote 'clone' '![Click the "fork" button.](/assets/ref-images/clone.png)' %} 
It will look like the link in the image on the right. 

Then, switch over to Cloud9, make sure you're logged in, and then right click on your workspace and open and SSH terminal from the menu. 

In your "workspace" directory, type the following command, and paste your link in after, so that it looks like this: 

`git clone git@github.com:YOUR-GITHUB-USERNAME/jekyll-starter-theme.git`

This makes a copy of the repository that you just forked to your local workspace in Cloud9. 
This is called cloning. 

Then descend into the directory:

`cd jekyll-starter-theme`

And explore what is in there:

`ls -lah`

You should see a `_config.yml` file somewhere in the directory. 
This file is filled with variables that Jekyll reads to structure the information made by your webpage. 

The basic structure of variables for Jekyll is:

```variable-name:   "variable value"```

I want you to change the title variable to your name or whatever you like.
Change the subtitle as well. 

From this:{% marginnote 'test' 'The first thing that we are going to do today is fork' %} 

```
# site.title

title:    'Jekyll Starter Theme'
subtitle: 'Another Minimalistic Static Site Quick Starter Theme'
```

To something like this:

```
# site.title

title:    'YOUR-NAME'
subtitle: 'Some subtitle I just made up!'
```


Then I want you to change the `url` variable so that this will show up at the address associated with your GitHub repo.

So change this: 

``` url:   'http://henrythemes.github.io/jekyll-starter-theme'```

To this:

``` url:   'http://YOUR-GITHUB-USERNAME.github.io/jekyll-starter-theme'```

Once you have made those changes, then save the file and we will push it back up to GitHub.

# Push

So in order to record these changes and get them into our remote repo on GitHub, we have to first go through the normal commit process. 
First, add the files:

`git add -v *`

Then commit the changes (remember to leave a message for yourself):

`git commit -a -m "update config"`

Then we have to push the changes upstream:

`git push`

And that should be that. 

# GitHub Pages

You should be able to see this web code rendered as a webpage now. 
Try going to the address that corresponds to the GH pages site associated with this repository. It will look like this:

`https://YOUR-GITHUB-USERNAME.github.io/jekyll-starter-theme/`

And there you should see a site with the title and subtitle that you assigned in the `_config.yml` file.

# For next time

I would like you to have a look at some tutorials and guides to Markdown for Monday. 

Kirk Strobeck's page describes the origin and intent of Markdown, and provides links to useful resources. 

http://whatismarkdown.com/

Dan Harper gives a good introduction to how Markdown is used and what it looks like in the wild. 

http://code.tutsplus.com/tutorials/markdown-the-ins-and-outs--net-25482