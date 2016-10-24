---
published: true
layout: post
title: "Lab #3: Automation and Scripting"
category: Text
tags: 
- scripting
- Bash
- Pandoc
---

Today we are going to go over more scripting tricks this morning and then work on our next assignment for the remainder of the session. 
<excerpt/>

We will use a few online tutorials for reference.{% sidenote 'shell-scripts' 'Shotts, William, Jr. “Writing Shell Scripts.” LinuxCommand.org. Accessed July 6, 2016. http://linuxcommand.org/lc3_writing_shell_scripts.php.<br/><br/>Chadwick, Ryan. “User Input - Bash Scripting Tutorial.” Ryan’s Tutorials. http://ryanstutorials.net/bash-scripting-tutorial/bash-input.php.' %} 

## Adding user input

We're going to add user input to our scripts from yesterday. 

To do this, we use the `read` command to accept the next line of input and save it as a variable.
Instead of putting our GitHub username in the script where we want it to read out, this method will prompt for a username.

```
#!/bin/bash
# Say "Hello" to the world.
echo "Hello, world!"
# Ask who the user is
echo "Who are you?"
# Read GitHub username from input
read GHUSERNAME
# Say "Hello" to me.
echo "Hello, $GHUSERNAME!"
```

Now if we run the script, it will pause and ask us for input:

```
ubuntu:~/workspace$ ./hello-world.sh
Hello, world!
Who are you?
```

If I type my GitHub username and press enter, then Bash will read it and put it in the right place in the output. 

```
jdmar3
Hello, jdmar3!
ubuntu:~/workspace$ 
```

## Setting a variable 

We can also set the username we want to output before we run the second echo command. 
It's best to set variables at the top of the file so that they are easily found. 

Here is an example: 

```
#!/bin/bash
# Read GH username in as variable
GHUSERNAME=jdmar3
# Say "Hello" to the world.
echo "Hello, world!"
# Say "Hello" to me.
echo "Hello, $GHUSERNAME!"
```

If we run this the Bash will output the value we set in place of the variable name:

```
ubuntu:~/workspace$ ./hello-world.sh
Hello, world!
Hello, jdmar3!
ubuntu:~/workspace$ 
```

## Accepting a variable from command line input

We can also specify a varialbe value in the command line itself. 
To do this, we need to tell Bash to read what comes after the run command in as a variable, like this: 

```
#!/bin/bash
# Read GH username
GHUSERNAME=$1
# Say "Hello" to the world.
echo "Hello, world!"
# Say "Hello" to me.
echo "Hello, $GHUSERNAME!"
```

Now when we run the script, we will have to specify the username directly after the name of the script. 

```
ubuntu:~/workspace$ ./hello-world.sh jdmar3
Hello, world!
Hello, jdmar3!
ubuntu:~/workspace$ 
```

If you change the input, you will see it change in the output now:

```
ubuntu:~/workspace$ ./hello-world.sh YOUR-GITHUB-USERNAME
Hello, world!
Hello, YOUR-GITHUB-USERNAME!
ubuntu:~/workspace$ 
```

# Rest of Class: Work on Assignment 3

You can use the techniques above to create a script to automate your document conversion workflow. 
Use the assignment text to make sure that you have gotten each of the required parts to work properly. 

