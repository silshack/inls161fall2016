---
layout: page
title: Pandoc Reference
nav_exclude: true
---

## Installing Pandoc

Start a new Clou9 workspace called `assignment3` or something like that.

To install Pandoc in your Cloud9 DevBox, use the following command:

```
sudo apt-get update
sudo apt-get install pandoc
```

If you are going to be compiling a document with citations then you will also want to install pandoc-citeproc:

```
sudo apt-get install pandoc-citeproc
```

Et voila. Installed. 

## Basic Pandoc commands

*All Pandoc commands are documented here: http://pandoc.org/README.html*

Clone some example files then `cd` into the new directory:

```
git clone git@github.com:silshack/pandoc-ex.git
cd pandoc-ex
```

Convert a Markdown file to HTML:

```
pandoc -o output.html example.md
```

Pandoc reads the filetype from the extension in normal usage. 
If you want to convert a file directly from a URL, you will have to specify the filetype. This converts a webpage from (`-f`) HTML to (`-t`) Markdown:

```
pandoc -f html -t markdown https://silshack.github.io/inls161fall2016/syllabus/
```

You can make sure that certain things, like quotes and em-dashes, get read and formatted propery by specifying the "Smart" switch (a capital `-S` or `--smart`):

```
pandoc -S -o output.html example.md
```

There are a host of other commands in the documentation. Be sure to try them out. 

## Specific file commands

Convert your markdown to HTML:

```
pandoc -o output.html example.md
```

If you wish to convert to a DOCX or ODT file:

```
pandoc -o output.docx example.md
pandoc -o output.odt example.md
```

If you wish to convert between two different word processor filetypes, we might have to get a little creative. 
We learned in class that if we issue the following command, we get errors related to file encoding and the conversion will not work. 

```
pandoc -o output.docx example.odt
```

If, however, we add an intermediary step, say through HTML, we can get the output that we want. Try it like this instead: 

```
pandoc -o tmp.html example.odt
pandoc -o output.docx tmp.html
```

This preserves the formatting and extracts the text from the ODT as an HTML file and then converts that HTML into DOCX. 
We do not have the weird encoding errors this way, and we don't have to mess with pipes. 

Filter a document through a template file:

```
pandoc -S --reference-docx=FILE -o output.docx example.md
``` 

In the above command, you need to specify the location of the template file. 
If it is a file called `template.docx` and is located in the same directory as your Markdown source, then the command will be:

```
pandoc -S --reference-docx=./template.docx -o example.docx example.md
```

You can also use an ODT or OTT for reference:

```
pandoc -S --reference-odt=./template.ott -o example.odt example.md
```

# More example files

<a href="{{ site.baseurl }}/refsheets/examples/#formatted-text-files" target="_blank">Link to the example files.</a>