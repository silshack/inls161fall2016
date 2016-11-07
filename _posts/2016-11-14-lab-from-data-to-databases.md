---
published: true
layout: post
title: "From data to database"
category: Databases
tags: 
- database
- tables
- queries
- SQL
- MySQL
- Bash
- scripting
---

# MySQL in Bash scripts

In today's lab you are going to work in your teams to modify your questinonaire scripts to write your data into a MySQL database. 
<excerpt/>

I would suggest looking at the the manual page for the MySQL client to see what you can do on the command line.{% sidenote 'mysql-man' '“mysql(1): MySQL Tool.” Linux Man Page. Accessed July 15, 2016. http://linux.die.net/man/1/mysql.' %}

You will be expected in class to be looking up other resources as well. 
If you find something useful, share it with me and I will put links here.

# Using Mysql on Cloud9

Cloud9 has already set up a username and password for you.  Your password is blank and your username is your github username:

```
mysql --user=tommytester
```

You can then add whatever flags and arguments are needed for your scripts.  You may need to set a password for all your group's users, and either way you'll either need to create the same user for everyone in your group in mysql or ask the person running their script for their mysql username to customize the command.  Either approach is fine.

