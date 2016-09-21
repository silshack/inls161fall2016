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


## Testing

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

# More on How Jekyll Works

Let's look into more about how Jekyll works together. `_posts`, `_layouts`, `_includes` oh my!

# Next time

We're going to learn next time how to incorporate branching, testing, and merging by setting up a development workflow like the one described above. 

To prepare for this, I would like you to read the Gist linked in the margin, but I would also like you to do some searching online about how different developers managed their workflows. {sidenote 'workflow' '**Reading:** blackfalcon. “Git Basics - a General Workflow.” Gist. Accessed June 29, 2016. https://gist.github.com/blackfalcon/8428401.'}
To this end you might Google things like "development workflow" or "project development."
See what you can find - there are a lot of different ways that teams and companies do these things. 