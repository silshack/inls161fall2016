---
layout: post
title: Clients and Servers
category: Basics
tags: 
- clients
- servers
- Linux
- shell commands
---

Today we'll talk about some of the basic ways that computers work and
interact with one another. We'll also begin discussing the history of
computing in the context of operating systems, UNIX, and Linux.

In class we will also start with some hands-on-keyboards practice with
moving around the shell and manipulating files. 
<excerpt/>

# Clients

A "client" in the context of computing is any hardware or software that
is used to connect to a service being run on a server. {% marginnote 'client-server' 'The client-server model<br/><br/>[![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Client-server-model.svg/200px-Client-server-model.svg.png)](https://en.wikipedia.org/wiki/Client_(computing)#/media/File:Client-server-model.svg)' %}

Almost every device that you interact with now is a client. Each time
your phone reaches out to see if you have new messages, it is a client.
When you go to web browser to bring up Facebook, your computer is a
client. When you you talk to Siri or Alexa or Google Now or whatever
creepy robot voice you talk to, your are talking to a client which sends
your request out to a server for processing.

Very little in the networked world operates locally, and that is as it
should be.

# Servers

A "server" is a piece of hardware or software that runs a service for
clients to connect to.{% marginnote '' 'A typical server rack in a datacenter<br/><br/>[![](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Rack001.jpg/360px-Rack001.jpg)](https://en.wikipedia.org/wiki/Data_center)' %}

Sometimes, certain types of servers are referred to as "daemons." Don't
worry, your computing infrastructure is not possessed.

They are called this in reference to Maxwell's demon, which is itself a
reference to the ancient Greek notion of a δαίμων (daimon). These were
spirits that operated the world around us, unseen and unseeable. Broadly
construed, they were the forces that made all of the otherwise
unexplained processes happen in the physical world. James Clerk Maxwell
adapted this notion to pose potential violations to the Second Law of
Thermodynamics. His demon acted precisely in the way that the Greek
daimon did, except naughty.

All that aside, a daemon is a "background process." Some piece of
software that runs on a computer in the background and waits for
something to happen. These processes listen, typically on a specific
port for an event to occur. When that event occurs, the daemon executes
some set of instructions.

In a server, that event will be a request for something.

In a web server, that event will be a request for a web page or some
other web content.

On a web server, the daemon that serves the web pages listens on port
number 8000, unless otherwise specified.

When it receives a request on port 8000, it dutifully gathers up all of
the requisite parts of the web page, interprets them, and then sends
them to your client (a.k.a., your browser) and then all of that
information gets prettified and placed on your screen so that it can go
into your eyeballs and then your brain.

## Questions to keep in mind: {#questions-to-keep-in-mind:}

1.  Why do we use this model?
2.  What are the advantages?
3.  Why not just run all this stuff on the devices in our
    hands/pockets/backpacks?

In this class, when we operate on a remote system, we will do so through
a few different protocols, which will be detailed shortly.

Operating on a remote system directly--that is, manipulating files and
issuing instructions in a command shell--is preferable if you wish to
have a high level of control over what you are doing. It also keeps you
closer to "bare-metal" computing. In most cases, what we will be doing
is not, in fact, bare metal computing, but rather interacting with
systems that run on huge banks of servers, the resources of which have
been virtualized and distributed across many more systems than there
could possibly be if each were running on its own.

This abstraction, however, does not take us too far from the experience
that we are aiming at. We will learn all the same techniques as if we
were running on systems directly.

# Linux and UNIX

I will not go too deeply into the history of Linux and UNIX, except to
say a few things and explain why we are using these as our primary
platforms for operation.{% marginnote 'unix' 'UNIX history<br/><br/>[![UNIX History](https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Unix_history-simple.svg/200px-Unix_history-simple.svg.png)](https://upload.wikimedia.org/wikipedia/commons/7/77/Unix_history-simple.svg)' %} 

UNIX is a general purpose, multitasking, multi-user operating system
designed in the 1970s at Bell Labs.
The name "UNIX" now refers to a whole family of operating
systems.

UNIX serves as the precursor to a complete, independent clone thereof
called "Linux."{% marginnote 'linux' 'A timeline of Linux distributions<br/><br/>[![GNU/Linux Family Tree](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Linux_Distribution_Timeline.svg/200px-Linux_Distribution_Timeline.svg.png)](https://upload.wikimedia.org/wikipedia/commons/1/1b/Linux_Distribution_Timeline.svg)' %} Linux was developed initially in 1991 by a student at
Helsinki University named Linux Torvalds, who still develops the
operating system kernel today. The project was inspired by the lack of a
functioning kernel for the GNU UNIX-like system designed by Richard
Stallman. Torvalds says that if the GNU kernel had worked, he would
likely have never written Linux.

When you use Linux today you are actually using GNU and Linux together.
Linux provides the operating system kernel and GNU provides the system
software layer that runs over it and allows you to interact with it.
There are myriad different versions of GNU/Linux floating around out
there. All are Free and Open Source Software, which means that you can
download the source code, compile it yourself, and run it on any system
you like. Below is a family tree of all existing GNU/Linux
distributions. Have a look to see if you can find Ubuntu, the system
that we are most likely using on our CodeAnywhere Dev Boxes.

Operating systems are complex, as is their history, and I am afraid that
I cannot do justice to it here. This history (and a general history of
personal computing) is best told in a long essay by science-fiction
author, Neal Stephenson.{% sidenote '' 'Stephenson, N. (1999). [In the beginning was the command line](http://www.cryptonomicon.com/beginning.html).' %}

Read that piece at some point, if you have a chance. It's fascinating,
exceedingly well-written, and a reasonably easy read.

# Who cares?

Right, so why is this important?

Well for starters, some version of UNIX or Linux runs on the backend of
nearly 70% of all public-facing web servers. In addition to that, Linux
runs on 97% of supercomputers and computer clusters.

Also, Mac OS X is UNIX-based. Android is just a weird, simplified
version of Linux. Chrome OS, underneath the browser layer is Linux.
Myriad little embedded devices like e-readers, tiny automation devices,
media devices (DVRs, Amazon Fire, Roku, etc.) have some Linux-y thing
running underneath.

UNIX and Linux surround you, physically and otherwise.

It is important to know something about the things around you.
Otherwise, they might as well be operating as if by magic.

## So...

So, if you ever have occasion to operate on a remote system, it is
terribly likely that you are going to be logging into a Linux box
somewhere, and failing that, a UNIX box. From now on, you'll never be
able to say that you don't know how to do that.

# For the next session

Look at Joseph Wynn's "Hacker's Guide".{% sidenote 'githacker' 'Wynn, Joseph. “A Hacker’s Guide to Git.” Wildly Innacurate. Last modified May 25, 2014. <http://wildlyinaccurate.com/a-hackers-guide-to-git/>.' %}
It is a really useful tutorial for new users of git who want to know ways to get things done with it.

I would also like you to look at Roger Dudler's simple git tutorial.{% sidenote 'gitnoshit' 'Dudler, Roger. “Git: The Simple Guide.” Git: The Simple Guide. Last modified 2015. <http://rogerdudler.github.io/git-guide/>.' %}
It is the best and fastest way to get you up to speed using git.

We will also return to "Learning the Shell"{% sidenote 'shell' 'Shotts, William, Jr. “Learning the Shell.” LinuxCommand.org. <http://linuxcommand.org/lc3_learning_the_shell.php>.' %} for more command line fun. 
We'll do some more exploring once we are up to speed with git as well.