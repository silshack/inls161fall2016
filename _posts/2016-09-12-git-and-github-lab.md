---
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

[https://github.com/henrythemes/jekyll-starter-theme](https://github.com/henrythemes/jekyll-starter-theme)

This is the repo for a very, very simple Jekyll web theme. 
We will us this as a starter theme to practice with. 

Once you are at the above repo, click the **Fork** button and select your username when prompted to make a copy of the repo in your account.{% marginnote 'fork' '![Click the "fork" button.](https://github.com/silshack/inls161fall2016/blob/gh-pages//assets/ref-images/fork.png?raw=true)' %} 

If you get a window asking where you want to fork the repo to, select your github username.  After a few seconds you will be taken to the repo page for the copy that you have made in your Github account. 

# Clone

Once there, click the big green **Clone or Download** button, make sure you're using HTTPS (the default), and copy the resulting link. {% marginnote 'clone' '![Click the "Clone" button.](https://github.com/silshack/inls161fall2016/blob/gh-pages//assets/ref-images/clone.png?raw=true)' %} 
It will look like the link in the image on the right. 

Then, switch over to Cloud9, make sure you're logged in, and go to a terminal. 

Make sure you're in your "workspace" directory with `pwd`.  If not, type `cd ~/workspace`. Then type the following command, and paste your link in after, so that it looks like this: {% marginnote 'cloned' '![Successful cloning.](https://github.com/silshack/inls161fall2016/blob/gh-pages//assets/ref-images/cloned.png?raw=true)<br>Successful cloning' %} 

{% highlight bash %}
git clone https://github.com/YOUR-GITHUB-USERNAME-GOES-HERE/jekyll-starter-theme.git
{% endhighlight %}

This makes a copy of the repository that you just forked to your local workspace in Cloud9. 
This is called cloning. 

Then descend into the directory:

{% highlight bash %}
cd jekyll-starter-theme
{% endhighlight %}

And explore what is in there:

{% highlight bash %}
ls -lah
{% endhighlight %}

# Add & Commit

You should see a `_config.yml` file somewhere in the directory. 
This file is filled with variables that Jekyll reads to structure the information made by your webpage. 

The basic structure of variables for Jekyll is:

```variable-name:   "variable value"```

I want you to change the title variable to your name or whatever you like.
Change the subtitle as well. You can open `_config.yml` by double-clicking it or by
typing `c9 _config.yml`

From this:{% marginnote 'apostrophe' '![Apostrophes.](https://github.com/silshack/inls161fall2016/blob/gh-pages//assets/ref-images/apostrophe.png?raw=true)<br>If you use an apostrophe, surround them in <code>""</code> so you don&apos;t confuse Jekyll.' %} 

```
# site.title

title:    'Jekyll Starter Theme'
subtitle: 'Another Minimalistic Static Site Quick Starter Theme'
```

To something like this:

```
# site.title

title:    'YOUR-NAME-HERE'
subtitle: 'Some subtitle I just made up!'
```


Then I want you to change the `url` variable so that this will show up at the address associated with your GitHub repo.

So change this: 

``` url:   'http://henrythemes.github.io/jekyll-starter-theme'```

To this:

``` url:   'http://YOUR-GITHUB-USERNAME.github.io/jekyll-starter-theme'```

Once you have made those changes, then **Save** the file and we will push it back up to GitHub.

Note: The dot in the tab tells you you haven't saved the file yet. `Ctrl-s` or File > Save will do this for you.  Git can't see your changes until you save. 

![Unsaved changes]({{ site.baseurl }}/assets/ref-images/saving.png)

# Push

Confirm that you've saved with our friend `git status`.  You should see that `_config.yml` has been modified.

So in order to record these changes and get them into our remote repo on GitHub, we have to first go through the normal commit process. 
First, add the files:  {% marginnote 'v' 'The <code>-v</code> flag stands for 'verbose' and makes git tell you explictly what it&apos;s doing.  I'm having you use it here to learn more about what&apos;s going on when you use <code>git add</code>  %}

{% highlight bash %}
git add -v _config.yml
{% endhighlight %}

Then commit the changes (remember to leave a message for yourself):

{% highlight bash %}
git commit -a -m "updated config with new title and URL"
{% endhighlight %}

Then we have to push the changes upstream:

{% highlight bash %}
git push
{% endhighlight %}

And that should be that. 

# GitHub Pages

You should be able to see this web code rendered as a webpage now. 
Try going to the address that corresponds to the GH pages site associated with this repository. It will look like this:

`https://YOUR-GITHUB-USERNAME.github.io/jekyll-starter-theme/`

And there you should see a site with the title and subtitle that you assigned in the `_config.yml` file.

Here's Tommytester's site:

![Example site]({{ site.baseurl }}/assets/ref-images/tommy.png)

# For next time

Feel free to play around with your new Jekyll site to practice your new skills.  Try modifying `one.md`, `two.md`, or `three.html`.  Try creating a new `.md` or `.html` file.  Add, commit, and push your changes then refresh to see what they look like.  If you know some CSS, try modifying `css/style.css` to change the look or colors of your page.  We'll create a new workspace for future projects, so no worries if you break things.  If you want, create an entirely new workspace and repeat everything from **Clone** onwards.  You'll need to `push -f` to overwrite your previous commits to your fork.  Don't worry if you get stuck- you can always delete your fork entirely, create a new workspace, and start from the beginning.  It's all good practice!

I would like you to have a look at some tutorials and guides to **Markdown** for next time. Markdown is a lightwieght way of writing HTML that doesn't require a bunch of angle brackets.  Both Jekyll and pandoc, which we'll learn later, use Markdown to generate content for us and it's widely used accross the Web (including on Github in the comments, etc.).

Kirk Strobeck's page describes the origin and intent of Markdown, and provides links to useful resources. {% marginnote 'strobeck' '**Reading:** “What is Markdown?” Ken Strobeck. <a href="http://whatismarkdown.com/">http://whatismarkdown.com/</a>.' %} 


Dan Harper gives a good introduction to how Markdown is used and what it looks like in the wild. {% marginnote 'harper' '**Reading:** “Markdown: the Ins and Outs” Dan Harper. <a href="http://code.tutsplus.com/tutorials/markdown-the-ins-and-outs--net-25482">http://code.tutsplus.com/tutorials/markdown-the-ins-and-outs--net-25482</a>.' %} 

