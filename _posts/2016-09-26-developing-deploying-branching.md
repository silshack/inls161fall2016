---
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

## Q&A

* Assignment 2 is now posted
* For code questions outside of class, Share your C9 workspace with me so I can see it.
* Your post for today should be about what you've learned in the class so far and any reflections you have.  If you didn't do that,
don't panic, just fix it.  If you did do that, you're one step closer to being done with Assignment 2 :)

## Testing

Once you have your config set accordingly, then you should be able to look at your site at `http://YOUR-GITHUB-USERNAME.github.io`. 
Don't worry if it doesn't work or if something looks weird. 
Nothing is broken in those cases, you'll just need to troublshoot to figure out what is wrong. This is part of the developmet workflow. 

# More on How Jekyll Works

Let's look into more about how Jekyll works together. `_posts`, `_layouts`, `_includes` oh my!

# If You Have a SCSS File

Now that we know how Jekyll works, you know that it builds everything into the `_site` directory. We
Can use this to our advantage.

SCSS stands for **Syntactic Cascading Style Sheets**. It is a more powerful and compact language that gets **compiled**
into CSS.  Jekyll does this for us.  If you'd like to keep your site in SCSS and take it upon yourself to understand it,
more power to ya! But we won't cover the differences.  This quick tutorial will let you change your SCSS into CSS and just 
edit it from there.  *Only follow these instruction if you have a SCSS file. If you don't, relax and understand what we're up to**

* Find `_site/css/style.css` (it may be in a slightly different place depending on your theme). This is the compiled version
of your SCSS if you have it.
* Drag that file into your `/css` folder (or wherever CSS is for you)
* Delete your .scss file(s)

You're done! Now you can edit your CSS directly.

# An Intro to Development

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

We're going to learn next time how to incorporate branching, testing, and merging by setting up a development workflow like the one described above. 

To prepare for this, I would like you to read the Gist linked in the margin, but I would also like you to do some searching online about how different developers managed their workflows. {sidenote 'workflow' '**Reading:** blackfalcon. “Git Basics - a General Workflow.” Gist. Accessed June 29, 2016. https://gist.github.com/blackfalcon/8428401.'}
To this end you might Google things like "development workflow" or "project development."
See what you can find - there are a lot of different ways that teams and companies do these things. 