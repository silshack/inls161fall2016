---
published: false
layout: post
title: "Reveal.js"
category: Present
tags: 
- reveal.js
- presentations
- pandoc
---

Today we will look at Reveal.js more closely and start working with it in your presentation teams. 
We will also cover converting your text from Markdown into Reveal-ready HTML5 using our old friend, Pandoc.
<excerpt/>

# Getting started

First we will need to get a few things in place in our containers. 

## Fork the customized reveal.js repo

Fork the assignment repo on Github. All of the files that you will need in order to use reveal.js are contained in it. 

Since you are working in teams, you might want to maintain one repo while working and then create a fork in your individual accounts when you are finished with the assignment. 
If you are sharing a single repo, remember to add your teammate as a contributor.

The assignment repo is located here: 

https://github.com/jdmar3/task-6-be-presentable

Once you have forked, it would be a good idea to change the name of your repository to, say, "presentation," so that you can easily link to the project page later. 
It will become clear why this is necessary at the end of the assignment.

Finally, clone it to your containers so that you can work on it. 

## Making sure that you are pushing to gh-pages

If you do not do this, your reveal.js presentation will not show up at the correct address. 

Open .git/config and look for the `[remote "origin"]` section. 

Then add the following two lines into that section:

```
	push = +refs/heads/master:refs/heads/gh-pages
	push = +refs/heads/master:refs/heads/master
```

So that the whole file should look something like this example:

```
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = git@github.com:YOUR-USERNAME/YOUR-REPO-NAME.git
	fetch = +refs/heads/*:refs/remotes/origin/*
	push = +refs/heads/master:refs/heads/gh-pages
	push = +refs/heads/master:refs/heads/master
[branch "master"]
	remote = origin
	merge = refs/heads/master
```

Then we need to create a new branch. 
This is necessary for github-pages to be able to generate a project page for us. 
The branch must be called gh-pages. 

`git checkout gh-pages`

Let's add, commit and push that just to be sure that it all worked and that our new branch was added. 

Alright. 

We have a new branch and our new branch is going to be synced with our master branch. 
So, we can switch back to master for everything else now. 

`git checkout master`

# Creating and converting markdown to Reveal-ready HTML5

Once you have settled on a topic, create the text of your presentation simliar to the `example.md` file found in this directory. 

You can name it whatever you like. 

## Metadata

You have to add the preamble at the top as follows (with your info substituted accordingly):

```
% TITLE
% NAME
% DATE
```

This will generate your first slide, with the title, your name, and the date.

## Individual slides from text

Each top level markdown header in the file will become a slide. 
The text in the header will be included in the slide. 
This is only a draft, though, so you can of course change this later. 

## Speaker notes

The `<aside class="notes">` tags should be used to wrap the long form text of your actual presentation. 
These will show up in the speaker notes interface embedded in reveal.js.

This is also the text you will record. 

Any text outside of the `<aside>` tags will be shown on the screen in your actual presentation slides. 

Again, you can change this later. 

# Convert your presentation

I have taken the liberty of creating a template for you to make translating this into HTML5 a lot easier. 

All you need to do is run Pandoc, as follows, on your markdown source file, once it is finished. 

`pandoc -t revealjs --template=template-index.html -s --variable theme="black" --variable transition="slide" --variable revealjs-url="./" YOUR-MARKDOWN-FILENAME.md -o index.html`

This will give you the HTML5 you can work with in polishing your presentation. 

You can also use the script that is in the repository named `build-presentation.sh` if you change the varialbles appropriately. 
The current version has the defaults as listed above. 
To use it, inkove the script and supply it with the name of your markdown file with NO EXTENSION, like this:

```
./build-presentation.sh MY-FILENAME
```

This will output `index.html` in the same directory. 

# Add audio

Once you have the HTML5 file for your presentation, you will need to add audio. 

We will go over in class how to create, edit, and then upload audio for this purpose. 

To get reveal.js to play that audio as a part of your slideshow, you simply need to add the data-audio-src attribute to the `<section>` tag that was created in the conversion of your source file, like this:

```
<section id="my-slide" class="slide level1" data-audio-src="audio/1.0.ogg">
  <h2>
    My slide
  </h2>
</section>
```

That attribute specifies the relative path to the audio files that correspond to each of your slides. 
You can also add audio to fragments. 
We will look at this in class. 

# Experiment with style. 

You can change a whole bunch of things about the style of individual slides. 
You can add background images and video if you want. 
It is possible to change the color and many other attributes as well. 

You should experiment with all of this, but remember to use git to track your changes as you work. 
Make a small change and then add and commit it using git, just like we have been doing. 

```
git add -v .
git commit -a -m "I made a small change"
git push
```

Then test. If you don't like the change, you can always roll it back. 

If you do this, then you will be able to fix things easily if you break something by reverting your last commit. If you are testing locally, you don't have to push your changes. Just commit them. You will still be able to roll them back using the git revert command.

# When all else fails

In the end, if you really get stuck, you can always start over again and convert from markdown. 
This is the nuclear option, which you want to avoid if possible, but if you have made changes that you can't remember and can't get back to a working presentation, it's always avaialable.

# Next time

For tomorrow, I want you to have a look at some documentation for Audacity and begin creating audio for your presentation.{% sidenote 'audacity' '“Basic Recording and Editing with Audacity - All.” Instructables.com. http://www.instructables.com/id/Basic-recording-and-editing-with-Audacity/.' %} 
You do not need sophisticated equipment to record audio. 
You can record on any smartphone or laptop now. 

This video should help you get started;

<div class="video-container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/2gM12DIIwA0" frameborder="0" allowfullscreen></iframe>
</div>

If you install Audacity on your personal laptops, you can use it to record and edit your audio directly. 
You can download audacity and read more documentation on the audacity homepage.{% marginnote 'audacity-home' 'Welcome to Audacity. http://www.audacityteam.org' %}

We will work together on editing audio in class tomorrow. 


