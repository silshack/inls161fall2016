---
layout: post
title: "Introduction to scripting"
category: Text 
tags: 
- Pandoc
- PDF
- LaTeX
- Bash
- Scripts
---

# Q&A

* Wednesday: optional Website hack day.  Come swankify your site and/or address my constructive criticism!
* Community Event writeups due **via email**.  Post them to your website and send me the link I should look at by midnight Weds.  Many of you have made special sections or pages for your event writeups.  If you haven't, think about how to incorporate these into your site gracefully.

Today we will learn how to convert our plaintext Markdown into a PDF. 
To do this we will have to install some more software, which may take a while. 

In the mean time, we will cover some of the basics of scripting in order to be able to automate our workflows a little bit better. 
<excerpt/>

# Install TeXLive

You've probably already done this, but just in case:

```
sudo apt-get install texlive
```

That will output a bunch of stuff and tell us how much the installation will take up on disk. 
See if the number is smaller than your available space and then type `Y` and hit enter if you have enough space. 
If not, we'll have to clear something out so you can install it. 

This may take a while. 

If that command does not work, it is likely because you need to update your software source repositories and upgrade your installed software packages. 
You can do that with two commands:

```
sudo apt-get update
```

This updates the sources. 

# Scripting

Scripting is fun when you get used to how it works. 
It is also really useful for not having to repeat the same work over and over again. 

Creating scripts is often a trial and error process, though, and can feel frustrating (see below).

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">What scripting feels like <a href="https://t.co/jYR9WQftIX">https://t.co/jYR9WQftIX</a></p>&mdash; SecuriTay (@SwiftOnSecurity) <a href="https://twitter.com/SwiftOnSecurity/status/749783791279939585">July 4, 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

## How to do it?

In class today, we'll go over some basic scripting. 
We'll use William Shotts' tutorial, Writing Shell Scripts tutorial by William Shotts for next time.{% sidenote 'shell-scripts' 'Shotts, William, Jr. “Writing Shell Scripts.” LinuxCommand.org. Accessed July 6, 2016. http://linuxcommand.org/lc3_writing_shell_scripts.php.' %} 

A basic Bash script is simply a list of commands in a file. It's as if you typed them line-by-line after each ones finishes. The lines in the file get executed sequentially and then at the end of the file Bash stops, or waits depending on what the file tells it to do. 

### Execution

All shell scripts should be executable and specify what shell program will run them. 
If this is not the case, then we have to call a shell in the command line in order to run. 

To create a basic Bash shell script, just touch a new file and give it the extension `.sh`:

```
touch hello-world.sh
```

Then we'll make it executable:

```
chmod +x hello-world.sh
```

This command sets the execute flag for user, group, and anyone in the permissions. 
They should look like this if you list the files with long output (`ls -al`):

```
tommytester:~/workspace (master) $ ls -lah
total 64K                                   
drwxr-xr-x 3 cabox cabox 4.0K Jul  7 12:44 .
drwxrwxr-x 5 cabox cabox 4.0K Jul  7 10:02 ..
-rwxr-xr-x 1 cabox cabox  104 Jul  7 12:50 hello-world.sh 
tommytester:~/workspace (master) $
```

We also need to add a "shebang" to our script to tell Bash how to execute this file. Inside the `hello-world.sh` file, put this on the first line:

```
#!/bin/bash
```

Shebangs can also point to other things, like `python` or `ruby`.  Once you learn those languages you can make scripts with them exactly like this but with a special shebang.  The shebang will need to point to the Python or Ruby binary, which is usually in `/usr/bin/python` or `/usr/bin/ruby` so add that after your she (`#`) bang (`!`).

### Echo

Now, we're going to make this script say hello to the world and hello to us. 
We do this by using the `echo` command, which outputs whatever you tell it as text to `STDOUT`. 
Try it:

```
echo "Hello, world!"
```

You should see this in the command line:

```
tommytester:~/workspace (master) $ echo "Hello, world!"
Hello, world!
tommytester:~/workspace (master) $
```

Now we will add this command to our script.  Notice there's a **comment** above the command, telling the humans what's up.  The computer ignores comments: 

```
#!/bin/bash

# Say "Hello, world!
echo "Hello, world!"
```

Now when we run this script, we will see the same output as from our earlier `echo` command on `STDOUT`:

```
tommytester:~/workspace (master) $ ./hello-world.sh
Hello, world!
tommytester:~/workspace (master) $
```

Note the `./` in front of the script's filename in the above command. 

We have to do this in order to execute files and scripts that are not in our execute path. 
The excecute path is just a list of directories from which we are allowed to execute files without jumping through some extra hoops. 
To see your path, use the following command: 

```
tommytester:~/workspace (master) $ echo $PATH 
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
tommytester:~/workspace (master) $
```

These are all the directories where the terminal will look when you try to run a program or script.  If something isn't in any of these directories, the `.` will tell the terminal to look in your current location. 

Finally, we want to add a "Hello!" to ourselves, and use our GitHub username. 
We will add the same command as before, substituting our GitHub username for world, so that the script looks like this (I've used my own name here):

```
#!/bin/bash

# Say "Hello, world!
echo "Hello, world!"
# Say "Hello, YOU!
echo "Hello, jdmar3!"
```

Now if we run this, we will see all of this output:

```
tommytester:~/workspace (master) $ ./hello-world.sh
Hello, world!
Hello, jdmar3!
tommytester:~/workspace (master) $
```

## Other Scripting Ideas

Scripts can do anything you can do! For instance, you might make a script that takes you to a certain directory then lists the files there:

```
cd ~/workspace/myproject
echo "Entered ~/workspace/myproject.  Found these files and direcotries:"
ls -al
```

Make some custom scripts that do thing you know how to do using the instructions above.  Play around with this.  As you've probably guessed, next time we'll be writing some scripts to automate pandoc.


## Next Time

If you finish early or need some ideas for your scripts, go through the resources below and try out the examples.  If you'd like to get a jump on next time, go back through the class notes and try to automate some of our previous activities.

We will pick up where we left off next time during lab and get to work creating our scripts for the next assignment. 
Please review the tutorial on writing shell scripts again.{% sidenote 'shell-scripts' 'Shotts, William, Jr. “Writing Shell Scripts.” LinuxCommand.org. Accessed July 6, 2016. http://linuxcommand.org/lc3_writing_shell_scripts.php.' %} 
Also, we'll use another tutorial so that we can learn to create prompts for user input.{% sidenote 'user-input' 'Chadwick, Ryan. “User Input - Bash Scripting Tutorial.” Ryan’s Tutorials. http://ryanstutorials.net/bash-scripting-tutorial/bash-input.php.' %}
