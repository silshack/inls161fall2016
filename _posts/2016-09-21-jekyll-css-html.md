---
layout: post
title: "Visual styling for the web"
category: Web 
tags: 
- Jekyll
- CSS
- HTML
- Markdown
---

**Reminder:** Your first community engagement activity needs to be completed and written up before Fall Break begins on October 19th.

For most of class today, we will spend time creating our base site and then exploring ways that we can change and customize the style to our liking. 

We'll learn a little bit about CSS and about linking resources so that they show up where we want them. 
<excerpt/>

# Q&A

* It's time to get started on Assignment #2! Come to class having selected a theme for your blog, and with it cloned into a new Cloud9 workspace (not forked!) and in a brand new Github repo.
* Start Assignment 2 by clicking the github classroom link on the Assignments tab if you haven't already.  The Readme in the repo you'll get when you do that has the full details of the assignment. Read ahead but don't race ahead.  We'll do much of the work together.
* Approach this work creatively! There were some really neat sites that came out of the last class and I hope this will be an opportunity for you to learn neat things and express yourself.

# Linking

Linking is what makes the Internet what it is in terms of how information is organized. 
Without links, we would have to know the location of every single thing we wish to get to. 
We would have to index everything: that is, we would need a list. 
Linking allows us to move between resources, call and embed resources within one another, and in some cases find resources based on their relationships. 

### Relative and absolute paths

We have choices about how we can link to resources. 

Let's look at the links in the examples on the last page:

```html
<link rel="stylesheet" href="css/styles.css">
<script src="js/scripts.js"></script>
<img src="images/pretty.img" alt="A pretty picture" />
<a href="index.html" title="Home">Return home.</a>
```

These are all examples of relative paths. 
This means that they assume that the files referenced here are located near our index page. 

If we were to represent the same links with absolute paths, we would have to add the domain name / hostname also. 
See below:

```html
<link rel="stylesheet" href="http://www.somewebsite.com/css/styles.css">
<script src="http://www.somewebsite.com/js/scripts.js"></script>
<img src="http://www.somewebsite.com/images/pretty.img" alt="A pretty picture" />
<a href="http://www.somewebsite.com/index.html" title="Home">Return home.</a>
```

Let's consider the advantages and disadvantages of each of these approaches and ask these questions:

1. What happens if we have to change our doman name or move to a different server?
2. Is there perhaps a way to automate such a change and still provide an absolute path?

Let's move on to working with visual elements.

# CSS

CSS is an acronym for "Cascading Style Sheet."

If HTML is the medium for web content, then CSS is the medium for the visual styling of the web. 
Whenever a website looks like anything other than just a blank page, there is CSS involved. 

We will continue to use a combination of Markdown, HTML5 and CSS3 to construct our very own web pages. 

# Embedding with iframes

iframes are a way of loading one site within another.  They're really cool.

For instance, Trinket embeds let you put interactive code anywhere.  Here's an embed that lets me generate pairs for this class:

<iframe src="https://trinket.io/embed/python/0556f1a69d" width="100%" height="406" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

Google Maps, SoundCloud, YouTube and whole host of other neat sites have embeds.  The embed code is usually available in the 'Share' dialogs.  Some embeds are created with Javascript and have a `<script>` tag.  Think about how you can enhance your site with cool embeds.

# For next time

I want you to continue to work with your site and actually begin creating some content: write your first real blog post for this class. 

This involves having an idea, making an outline of what you want to say about that idea, committing some text, referencing outside information, and maybe putting a picture in to give a visual anchor to your text.  You'll probably be writing about commands and code a lot.  Use inline code blocks to reference commands like `cd` and full codeblocks to call out or sequence commands:

```
pwd
cd ~
```

Add a language name to enable syntax highlighting on these fenced code blocks. 

You can also use jekyll's built-in `\{\% highlight \%\}` tag to add spiffy syntax highlighting to your code the old school way. Learn more here: [https://jekyllrb.com/docs/templates/#code-snippet-highlighting](https://jekyllrb.com/docs/templates/#code-snippet-highlighting)

{% highlight html %}
<h1>Syntax Highlighing in Jekyll</h1>

<p>It's <strong>really</strong> cool!</p>
{% endhighlight %}


I would also like you to move through the W3Schools HTML5 and CSS3 tutorials on your own, outside of class.{% sidenote 'css-tutorial' '**Read:** “HTML Tutorial.” W3Schools. http://www.w3schools.com/html/default.asp.<br/><br/>“CSS Tutorial.” W3Schools. http://www.w3schools.com/css/default.asp.' %}  Go quickly if this is all review for you (though you should learn a thing or two!) and set aside some real time for them if this is all new to you.
