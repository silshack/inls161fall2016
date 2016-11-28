---
published: true
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

# Q&A

* I'm still sick and grading still isn't finished. Sorry!
* There is an error in the Assignment 6 instructions.  Most (all?) of you downloaded John's version.  I made some updates, mostly deleting the Readme. Thanks to Git it should be easy to fix.
  * Check to see if your Readme has a bunch of instructions in it.  If so, you don't have my updates and need to do the below.
  * Have **one** partner `git pull https://github.com/eah13/task-6-be-presentable.git gh-pages` to get the updates
  * Then, from the **master** branch have that same partner `git branch -m gh-pages` to change
  * Again, same partner: `git push origin gh-pages` to push the updates you got from me
  * On github, go into settings and make `gh-pages` the default branch if it isn't already.
  * All other parnter(s) `git branch -m gh-pages` from master to also rename the default branch, then `git pull origin gh-pages` to get the updates.
* Sorry for that.  All the stuff I did in my fork of John's repo was supposed to prevent us from having to do all of that.

# Getting started

**Sit with your partner today**.

First we will need to get a few things in place in our workspaces. 

## Making sure that you are pushing to gh-pages

If you do not do this, your reveal.js presentation will not show up at the correct address. 

In my fork, I set `gh-pages` as the default branch (and if you cloned the old repo, you fixed this above), so that's what you should be on by default.  If you make new branches for testing, `git checkout gh-pages` to come back home and, from `gh-pages`, `git merge mynewbranch` if you want to merge in your tested changes.

**Second partner** (the one who didn't create the initial repo) make sure you've **pulled** any updates from your partner test this setup by running 

```bash
./build-presentation.sh example
```

to create a new index.html from `example.md`.  Then add and commit those changes (remember to `git status` to make sure you'e gotten everything), then `git pull`.  You should see a site [like this](https://tommytester.github.io/assignment-6/#/) at first-partners-user-name.github.io/repo-name.  Congrats!  You're hooked up to display your presentation via github.  As you go, you can **push** to see what things look like.

Remember, we'll be collaborating on this, so try to segment the locations each partner edits, **pull** often, and resolve any conflicts git can't figure out how to.

# Creating and converting markdown to Reveal-ready HTML5

Once you have settled on a topic, have **one partner** create a draft text of your presentation simliar to the `example.md` file found in this directory. 

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

# Push & Pull

At this point the second partner has created a draft markdown file and built HTML from it.  Save, Add, Commit, and push those changes.  The other partner can now pull.


# Add audio

Once you have the HTML5 file for your presentation, you will need to add audio. 

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
We will look at some of this in class. 

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

For next time, I want you to have a look at some documentation for Audacity and begin creating audio for your presentation.{% sidenote 'audacity' '“Basic Recording and Editing with Audacity - All.” Instructables.com. http://www.instructables.com/id/Basic-recording-and-editing-with-Audacity/.' %} 
You do not need sophisticated equipment to record audio. 
You can record on any smartphone or laptop now. 

This video should help you get started;

<div class="video-container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/2gM12DIIwA0" frameborder="0" allowfullscreen></iframe>
</div>

If you install Audacity on your personal laptops, you can use it to record and edit your audio directly. 
You can download audacity and read more documentation on the audacity homepage.{% marginnote 'audacity-home' 'Welcome to Audacity. http://www.audacityteam.org' %}

We will work together on editing audio in class next time. Don't go too far in creating all of your audio: you'll need your text finalized so you won't have to re-do it a lot.


