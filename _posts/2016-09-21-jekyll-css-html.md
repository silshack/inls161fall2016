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

* It's time to get started on Assignment #2! Link to follow

# Jekyll

Once you have chosen a Jekyll theme for your site, we will need to fork the theme, make appropriate changes to turn it into our own, and then we can get to work on customizing the look and feel of the site. 

When we make changes to Jekyll's configuration, we are ostensibly telling it where to find different necessary files for rendering the site, like our CSS file. 

Let's take a look at different ways of linking. 

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

# For next time

I want you to continue to work with your site and actually begin creating some content: write a blog post. 

This involves having an idea, making an outline of what you want to say about that idea, committing some text, referencing outside information, and maybe putting a picture in to give a visual anchor to your text.

I would also like you to move through the W3Schools HTML5 and CSS3 tutorials on your own, outside of class.{% sidenote 'css-tutorial' '“HTML Tutorial.” W3Schools. http://www.w3schools.com/html/default.asp.<br/><br/>“CSS Tutorial.” W3Schools. http://www.w3schools.com/css/default.asp.' %}
