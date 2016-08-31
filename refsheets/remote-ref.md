---
layout: page
title: Remote Operation Reference
nav_exclude: true
---

# {{ page.title }}

Dollar sign ($) in the command prompt means that you are in a user shell. 

What directory am I in right now?

{% highlight bash %}
pwd
{% endhighlight %}

Make me a new directory right here:

{% highlight bash %}
mkdir mydirectory
{% endhighlight %}

Move into that new directory that I just made:

{% highlight bash %}
cd mydirectory
{% endhighlight %}

Show me what is in this directory:

{% highlight bash %}
ls
{% endhighlight %}

Show me more information about what is in this directory:

{% highlight bash %}
ls -lah
{% endhighlight %}

Make a new blank file with this name:

{% highlight bash %}
touch myfile
{% endhighlight %}

Output this on the command line:

{% highlight bash %}
echo "Hello, world!"
{% endhighlight %}

Put that thing that I just said into the file I made before:

{% highlight bash %}
echo "Hello, world!" > myfile
{% endhighlight %}

Put this other thing that I want to say into the same file on a new line:

{% highlight bash %}
echo "This is another line." >> myfile
{% endhighlight %}

Show me what is in that file:

{% highlight bash %}
cat myfile
{% endhighlight %}

Put this thing I want to say into a totally new file:

{% highlight bash %}
echo "This is a third line." > myfile2
{% endhighlight %}

Put the stuff in this new file on a new line in my old file:

{% highlight bash %}
cat myfile2 >> myfile
{% endhighlight %}

Make a backup copy of that file:

{% highlight bash %}
cp myfile myfile.bck
{% endhighlight %}

Rename the old file to a new thing:

{% highlight bash %}
mv myfile mynewfile
{% endhighlight %}

Remove that other file that I created:

{% highlight bash %}
rm myfile2
{% endhighlight %}

Become a SUPERUSER:

{% highlight bash %}
sudo COMMAND
{% endhighlight %}

Become the ROOT user: 

{% highlight bash %}
sudo su
{% endhighlight %}

Search for this software package:

{% highlight bash %}
apt-cache search nano
{% endhighlight %}

Install that software package (text editor):

{% highlight bash %}
sudo apt-get install nano
{% endhighlight %}

Install a different editor:

{% highlight bash %}
sudo apt-get install vim
{% endhighlight %}

Install yet another text editor:

{% highlight bash %}
sudo apt-get install emacs23
{% endhighlight %}

Open my file in that editor:

{% highlight bash %}
nano mynewfile
{% endhighlight %}
