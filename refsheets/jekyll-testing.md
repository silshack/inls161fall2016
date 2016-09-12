---
layout: default
title: Test your site using Jekyll and Cloud9
nav_exclude: true
---

We need to test our code to see if it worked. 

To do this, we will have to access the files locally in our Cloud9 and start a webserver. 
Luckily, Jekyll is also a webserver.

Make sure you have jekyll installed:

{% hightlight bash %}
gem install github-pages
{% endhighlight %}

Go to the terminal and switch into the root directory of your website repository. 

Something like: `cd jekyll-starter-theme`

And then run the following command. 

{% highlight bash %}
jekyll serve --host=$IP --port=$PORT --drafts` 
{% endhighlight %}

If the web code that you are testing is not a Jekyll site, or you don't want to see drafts, you can remove the `--drafts` switch.

This starts a webserver and builds your site.
Then we need to find the address where you can see your site. 

If you click the "Share" button in the upper right you'll get a list of links.  Select the 'Application' link. 

It will look like this:

https://hello-jekyll-tommytester.c9users.io

That's

https://[ your workspace name ]-[ your username ].c9users.io

This may give you a 404 error if your site has a baseurl.  If it does, enter the baseurl (such as `/jekyll-starter-theme/`) **with** the trailing slash. 

You will then be able to see your site online.

This will allow you to see if your changes worked or not. 
If they did, and you like them, you can merge them back into the `master` branch and then they will be live on your site when you push them up to GitHub. 

To kill the preview, press `CTRL+C` in the SSH terminal where jekyll is running. 

# Testing Reveal.js and other web code

You can use the above technique to test any web code, such as for Reveal.js. 
Since Jekyll acts as a webserver, it will run anything that can be rendered on the web, from plain HTML or HTML with JS to Jekyll formatted markdown.