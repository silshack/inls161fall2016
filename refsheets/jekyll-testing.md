---
layout: default
title: Test your site using Jekyll and Cloud9
nav_exclude: true
---

{% comment %} Todo: rewrite for Cloud9 {% endcomment %}

We need to test our code to see if it worked. 

To do this, we will have to access the files locally in our Cloud9 and start a webserver. 
Luckily, Jekyll is also a webserver.

Go to the SSH terminal and switch into the root directory of your website repository. 

Something like: `cd ../YOUR-GITHUB-USERNAME.github.io`

And then run the following command. 

`jekyll serve --host=0.0.0.0 --drafts` 

If the web code that you are testing is not a Jekyll site, or you don't want to see drafts, you can remove the `--drafts` switch.

This starts a webserver and builds your site.
Then we need to find the address where you can see your site. 

If you right click on the workspace in your file tree and select "Info" it will bring up a document with two long links in it toward the bottom. 
These links let you see applications that your server is running. 

Click the first link, which looks like this:

http://preview.2xgeb3y9x622zkt9z51g8y0twrpy14i6v8n6zf2i7e97ldi.box.codeanywhere.com

This will give you a 404 error. 
This is because the default preview port for Jekyll is 4000. 

So, edit the link to read:

[http://preview.2xgeb3y9x622zkt9z51g8y0twrpy14i6v8n6zf2i7e97ldi.box.codeanywhere.com:4000](http://preview.2xgeb3y9x622zkt9z51g8y0twrpy14i6v8n6zf2i7e97ldi.box.codeanywhere.com:4000)

You will then be able to see your site online. If you click on the link above while I am demonstrating this in class, you will see my site.

This will allow you to see if your changes worked or not. 
If they did, and you like them, you can merge them back into the `master` branch and then they will be live on your site when you push them up to GitHub. 

To kill the preview, press `CTRL+C` in the SSH terminal where jekyll is running. 

# Testing Reveal.js and other web code

You can use the above technique to test any web code, such as for Reveal.js. 
Since Jekyll acts as a webserver, it will run anything that can be rendered on the web, from plain HTML or HTML with JS to Jekyll formatted markdown.