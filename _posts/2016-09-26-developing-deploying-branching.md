---
published: false
layout: post
title: "Developing and Deploying"
category: Web
tags: 
- git
- GitHub
- Jekyll
- development
- workflow
---

Today we're going to take the first steps toward actually getting our website up and running. 
We will also use this opportunity to discuss the development > testing > deployment workflow. 
<excerpt/>

We'll be using Barry Clark's tutorial as a reference, so you'll want to have that pulled up in a separate window so that you can switch back and forth to it. 

# Fork

We will do the same thing that we have previously done in GitHub and fork our chosen theme into our account as a starting place. 

That should be relatively straightforward now.

# Configure

Once we have the base theme forked, we need to make sure that the site is going to show up at the right address. 

The address that we want is `http://YOUR-GITHUB-USERNAME.github.io`. This is the default user site address for GitHub pages. 

GH Pages will serve this site from code in the master branch of a repository in your account named the same as the fully qualified domain name (FQDN) or just the full URL to our desired site. 

Therefore, if your GH Pages user site defaults to `http://YOUR-GITHUB-USERNAME.github.io` then we have to make a repository in your account titled `YOUR-GITHUB-USERNAME.github.io`. 
The easiest way to do this is to just change the name of the theme repository that we just forked so that it matches what we need. 

To do this, click the settings tab on your repository page, enter a new name under "Repository name," and then click "Rename."

## \_config.yml

Once we are there, we should be able to look into `_config.yml` file right in GitHub and make sure that our site settings are correct.
We will likely have to change three variables, if they exist: `path`, `url`, and `baseurl`.
These will be different for different themes, so we'll look over this together in class. Basic principles are as follows:

You want `url` to match the desired URL for your site: `http://YOUR-GITHUB-USERNAME.github.io`.

`path` specifies a path where files are held. 
For the GH Pages user site, it needs to have no value. You can either delete that line, comment it, or just put a set of double quotes to specify that Jekyll should not try to rewrite the links and append a subdirectory. It will look like this:

`path: ""`

The same is true for `baseurl`.

All that these do is tell Jekyll where things are when it is trying to build the site. 
Remember, linking is dynamic in the build process, so Jekyll is trying to figure out how to tell your browser where to find stuff that it needs to render the site. 

## Test

Once you have your config set accordingly, then you should be able to look at your site at `http://YOUR-GITHUB-USERNAME.github.io`. 
Don't worry if it doesn't work or if something looks weird. 
Nothing is broken in those cases, you'll just need to troublshoot to figure out what is wrong. This is part of the developmet workflow. 

# Development

A "development workflow" has several stages that happen in order.{% sidenote 'ghflow' '“Understanding the GitHub Flow.” GitHub Guides. Last modified December 12, 2013. https://guides.github.com/introduction/flow/.' %} 
We have been gearing up to think about our work in this context. 

A typical development workflow might conceptually look like this:

1. Create new branch of source code for new feature
2. Work on code for new feature in new branch 
3. Test feature and make fixes if necessary
4. Run with feature in testing environment to ensure that feature works
5. Get feedback about new feature and integrate suggestions if necessary
6. Merge new feature into main workflow
7. New feature is live in production

# Next time

We're going to learn tomorrow how to incorporate branching, testing, and merging by setting up a development workflow like the one described above. 

To prepare for this, I would like you to read the Gist linked in the margin, but I would also like you to do some searching online about how different developers managed their workflows. {sidenote 'workflow' 'blackfalcon. “Git Basics - a General Workflow.” Gist. Accessed June 29, 2016. https://gist.github.com/blackfalcon/8428401.'}
To this end you might Google things like "development workflow" or "project development."
See what you can find. 
There is a ton of relevant information on this topic out in the Internet.