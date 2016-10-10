---
layout: page
title: Pandoc Reference
nav_exclude: true
---

## Installing Pandoc

Start a new **Blank** Clou9 workspace called `assignment3` or something like that.

To install Pandoc in your Cloud9 DevBox, use the following command:

```
wget https://github.com/jgm/pandoc/releases/download/1.15.1/pandoc-1.15.1-1-amd64.deb
sudo dpkg -i pandoc-1.15.1-1-amd64.deb
```

Et voila. Installed. 

## Basic Pandoc commands

*All Pandoc commands are documented here: http://pandoc.org/README.html*

Clone some example files then `cd` into the new directory:

```
git clone https://github.com/silshack/pandoc-ex.git
cd pandoc-ex
```

Convert a Markdown file to HTML:

```
pandoc -o output.html example.md
```

The `-o` flag should immediately precede the name of the **output** file.  The other file is interpreted as an argument, i.e. the **input**.

### View or download the output with SimpleHTTPServer

With many files, you can preview them in cloud9.  You can View HTML files and dowload other file types by starting a simple server in your project directory:

* Open a new Terminal
* `cd pandoc-ex`
* `python -m SimpleHTTPServer $PORT` (Case sensitive)
* Go to your Application (via the Share menu)
* Click on the file (in this case `output.html`)

When we get to ODT and DOCX, this is how yuou'll download them to check them out.

### Converting from URLs

Pandoc reads the filetype from the extension in normal usage. 
If you want to convert a file directly from a URL, you will have to specify the filetype. This converts a webpage from (`-f`) HTML to (`-t`) Markdown:

```
pandoc -f html -t markdown https://silshack.github.io/inls161fall2016/syllabus/
```

Since we didn't specify the `-o`utput, it just prints the result to the terminal.  Modify the above command with the `-o` flag to output to `syllabus.md`. (You could also do this with bash by using the `>` command. Remember that from the beginning of the command line?)

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

If you wish to convert between two different word processor filetypes:

```
pandoc -o output.docx example.odt
```

Filter a document through a template file:

```
pandoc -S --reference-docx=FILE -o output.docx example.md
``` 

In the above command, you need to specify the location of the template file. 
If it is a file called `template.docx` and is located in the same directory as your Markdown source, then the command will be:

```
pandoc -S --reference-docx=./template.docx -o example.docx example.md
```

There are no templates in the example files we cloned but we'll use these later

You can also use an ODT or OTT for reference:

```
pandoc -S --reference-odt=./template.ott -o example.odt example.md
```

# More example files

<a href="{{ site.baseurl }}/refsheets/examples/#formatted-text-files" target="_blank">Link to some example files.</a>

Play around with these!