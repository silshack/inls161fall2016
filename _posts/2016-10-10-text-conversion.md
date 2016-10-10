---
layout: post
title: "Text Conversion"
category: Text  
tags: 
- pandoc
- text
- markdown
- documents
- conversion
---

# Q&A

* Grading has started
* [An exceptional site](https://tfrahm.github.io) - Heavily customized, Javascript sparkles throughout, special fonts 
* [A great reflection](https://aehaney.github.io/blogging/about/2016/09/24/first-blog-post.html) - Personal, detailed, and thoughtful. *Uses markdown to render `code` and `commands`*
* [A great commit history](https://github.com/colergibson/colergibson.github.io/commits/master) - Detailed, logical, well-explained
* In the background: Create a new **Blank** Cloud9 workspace called `assignment3`

# Readings

Did you do today's readings? {% marginnote 'word' '**Reading**: Wiens, John A. “Word Processing versus Writing.” The Auk 100 (1983): 758. https://sora.unm.edu/sites/default/files/journals/auk/v100n03/p0758-p0758.pdf.<br/><br/>**Reading**: Caleb McDaniel, W. “Why (and How) I Wrote My Academic Book in Plain Text | W. Caleb McDaniel.” Last modified September 28, 2012. http://wcm1.web.rice.edu/my-academic-book-in-plain-text.html.<br/><br/>**Reading:** Stross, Charlie. “Why Microsoft Word Must Die.” Charlie’s Diary. Last modified October 12, 2013. http://www.antipope.org/charlie/blog-static/2013/10/why-microsoft-word-must-die.html.' %}  

Make sure you read any readings at the bottom of each class's notes and go over the next class's notes.  We're going to be moving a little faster from now on and it's up to you to make sure you don't get left behind.

# Plaintext, markup, and formatted text

This week we will discuss the uses of plaintext and markup for creating formatted documents. 

Today we are going to briefly introduce Pandoc and then next time we are going to see what it can really do with our documents when we learn some interesting switches and tricks. We will also some hand-on-keyboards excercises that will demonstrate the power of using marked-up plaintext for creating formatted documents. 
<excerpt/>

All of the tools and tasks that we cover in this course can be used to make our lives easier and our workflows simpler. 
They can also be used to make our lives harder. 
That is not the intent of this course. 
We're here to learn about new and flexible ways of completing tasks that involve the communication of information. 

Inevitably, someone (usually a boss or instructor) will demand that you use a specific tool to complete a task. 
On that day, knowing what you know after taking this class, you will be able to not only suggest alternatives, but you will also be able to make a compelling argument as to why those alternatives are better, more flexible and will save work in the long run. 

If you are particularly talented or skilled, you will go off on your own and use whatever workflow you want and then produce the output requested by your boss or instructor. 
They never have to know the difference and can be blissfully unaware of the the technical prowess that went into creating the Word document that they only want so that they can print onto dead trees and then give back to you with red pen marks all over it. 

The triumph in learning these tools is that you will know that there is a better way, and you will use that way whenever you can. 
And in the end, when you are in charge, you can set the workflows and toolchains and collaboration environments. 

You will be equipped to do that. 

## Down with Word, Up with Creativity

You should have read for today the elegant and logical rant about why MicroSoft Word has to by by science-fiction author Charlie Stross.
Stross believes that tools like Word stifle creativity by shackling you to an interface.{% sidenote 'word' 'Stross, Charlie. “Why Microsoft Word Must Die.” Charlie’s Diary. Last modified October 12, 2013. http://www.antipope.org/charlie/blog-static/2013/10/why-microsoft-word-must-die.html.' %}

I believe the same thing. 
Don Knuth, famed computer scientist, believed the same thing about writing and typesetting for scientists in the 1970s. 
It is because of his disdain for the arduous process involved in getting your work to print that he invented something called TeX. 
He believed that TeX freed writers and allowed them to return to their content and not worry so much about presentation. 

We do not have enough time in this class to cover TeX, but we can discuss it briefly in this week's sessions in relation to using Pandoc for creating PDFs from our document sources. 

# Word Processors

We are only ever going to use word processor software to check our outputs and explore the things we've created. 
When we do, we will use Writer, the word processor from LibreOffice, an open-source productivity suite. 
There are several reasons for choosing an open-source tool. 

1. The software is free to download and use. 
2. The community of developers and users interact to create a more robust product and better user experience.
3. I don't like using proprietary software if I can avoid it. 

LibreOffice should be installed on the lab computers. 
However, if you want to install it on your laptops instead, you can. 

Here is a link to download LibreOffice: https://www.libreoffice.org/download/libreoffice-fresh/

Here is a link to a good installation tutorial, tailored to your operating system: https://www.libreoffice.org/get-help/install-howto/

## Writer

LibreOffice contains several tools. 
One of them is a package called Writer. 
Writer is analog to MSWord. 

Writer is a word processor. 

### Questions to consider: 

What is a word processor and how does it work?{% sidenote 'word' 'Wiens, John A. “Word Processing versus Writing.” The Auk 100 (1983): 758. https://sora.unm.edu/sites/default/files/journals/auk/v100n03/p0758-p0758.pdf.' %}
How does what a word processor does differ from what we when we write in Markdown?
Why would we want to employ something other than a word processor for writing anyway?{% sidenote 'word' 'Caleb McDaniel, W. “Why (and How) I Wrote My Academic Book in Plain Text | W. Caleb McDaniel.” Last modified September 28, 2012. http://wcm1.web.rice.edu/my-academic-book-in-plain-text.html.' %} 

# Document conversion

Essential to any workflow that involves Markdown or other plaintext markup language, like HTML, is a parser or converter of some sort that using the markup to structure, format and style the document. 
We've seen this with our work on creating web sites. 

The workflow goes: 

`plaintext.md > formatted-text.html`

The toolchain that we have been using is:

```
Cloud9 text editor [for authoring and editing] > 
git [for version control] >
GitHub [for storage, sharing, and disseminating] >
Jekyll (via GitHub Pages) [for creating the site files from Markdown inputs] > 
web browser [for viewing outputs]
```

## Pandoc

[Pandoc](http://pandoc.org/) is a universal document converter. 

Without oversimplifying matters too much, it suffices to say that Pandoc is an awesome tool to have in our arsenal. 

It allows us to convert from most any document type we can think of to any other type. 
This is very good for collaborating and working with groups on documents for publication. 
You can also use Pandoc to create presentation materials from source files or to extract text from a formatted document into plaintext. 

You can try it out here: 

http://pandoc.org/try/

Then we will install it and run it in our Cloud9 workspaces. 

First things first, we need to install Pandoc. 
You will need to do this in your Cloud9 workspace.

All of the commands for today are linked from the [reference page]({{ site.baseurl }}/refsheets/pandoc-ref/).

# For next time

For next time, I would like you to review a blog post tutorial by Pavel Iosad and the the main documentation page for Pandoc.{% marginnote 'pandoc' '**Read:** Iosad, Pavel. “Getting off the Word Standard: Your Academic Life in Plain Text.” Pavel Iosad. Last modified February 2015. http://www.anghyflawn.net/teaching/2015/ilw-pandoc/.<br/><br/>“Pandoc User’s Guide.” Pandoc. Accessed July 5, 2016. http://pandoc.org/README.html.' %}

I would also like you to have a look at the examples in the link below:

http://pandoc.org/demos.html