---
published: true
layout: post
title: "Database software and MySQL"
category: Databases
tags: 
- database
- SQL
- MySQL
---

Today we will jump head-first into working with databases as an extension of our discussions earlier in the week about data.  
<excerpt/>

A "database" is a collection of information, arranged or organized in some meaningful way so as to aid the retrieval of that information. 
The types of information stored in databases vary based on the purpose and application. 

When we refer to databases now, we usually mean electronic databases or DataBase Management Systems (DBMS). 
However, databases can exist in a number of non-electonic forms (and have for much of human history).

What are some examples of non-electronic databases?

# What goes into a database?

Pieces of information, or objects, are stored in a database in a structured way. 
The objects are sorted into classes according to type. 
This approach is referred to as "object-oriented," which we have briefly touched on over the course of the semester. 

When data are entered into a database, each object, or chunk of information, is assigned a class that allows for sorting and recall. 

## How does the information go in? 

There are a number of different ways to get data into a database. 

We can import tables directly from files. 
We can also input data one at a time using an entry form. 
We will do both of these things over the next few days. 

Today we will start by experimenting with opening the CSV we made the other day as a table. 

## Electronic DBMS

There are myriad choices for DMBS implementations. 
A commonly used system is called MySQL, which is based in a database language called SQL (Structured Query Language). 

You will also hear of NoSQL databases, such as MongoDB. 
These use an entirely different internal logic to store and recall data that that of SQL-based systems. 

There are a great many front-end user interfaces for these systems. 
MSAccess has been used for years for all sorts of applications. 

We will use the LibreOffice Base package. 
It is an open-source analog to Access and will allow us to do the same things. 
One major benefit of this is that we will be able to open our database without being locked to MSAccess. 
At present, there is no way to open an Access DB in another program. 
We wish to avoid that. 

# Install MySQL

We will install MySQL so that we can create and explore a database using the SQL shell in our Cloud9 workspaces.

# New Workspace

Create an `assignment5` workspace and update all packages:

```
sudo apt-get update
```

# Install the MySQL client and server packages

Then we have to install one dependency, without which the install will fail:

```
sudo apt-get install bsdutils
```

Then install both the MySQL server and client packages in separate commands. 

```
sudo apt-get install mysql-server
```

This will ask you to create a password for the MySQL root user. 
Since we are only trying things out today and not installing this for the purpose of running a real SQL server, just put `password` as the root password. 

Then install the client:

```
sudo apt-get install mysql-client
```

# SQL Boot Camp: Part 1

## Get some data

Let's download some CSV files that I prepared with a list of books in them. 

```
wget http://inls161.johndmart.in/raw-material/tblBook.csv
``` 

```
wget http://inls161.johndmart.in/raw-material/tblPub.csv
```

## Enable imports

Later we're going to import some data. First we need to enable this.  Type:

```
sudo nano /etc/mysql/my.cnf
```

Use your **cursor** to go down to a line that says `[mysqld]`.  Directly under that line, add this:

```
secure-file-priv = ""
```

Press `Ctrl-X` to exit nano, the `Y` to save and `Enter` to confirm the file name.

Now we'll restart Mysql:

```
mysql-ctl restart
```

It's very important to type everything exactly in configuration files.  If you run into something like `ERROR 1290 (HY000): The MySQL server is running with the --secure-file-priv option so it cannot execute this statement` below, come back up here and do this again more carefully.

# The MySQL prompt

Once we are all installed, use the ```mysql-ctl``` command to get into the ```mysql>``` prompt:

```
mysql-ctl cli
```

This specifies that you want the MySQL prompt (or **c**ommand **l**ine ***i**nterface). 

Next let's create a new DB. Make sure that your prompt looks like this:

```
mysql> 
```

If it does, then you can type:

```
CREATE DATABASE booksinfo;
```

Commands in the mysql> prompt are *case-sensitive,* so pay attention to the case of the commands. 

Let's list our DBs:

```
SHOW databases;
```

We should see the DB with the name that we created in the list. Let's move into it:

```
USE booksinfo;
```

## Add tables

Now we have to create two tables so that we can import data from our CSV files. The things inside the parentheses are

```
CREATE TABLE tblBook (ID INT, 
                      Title VARCHAR(255), 
                      Date INT, 
                      RetailPrice DECIMAL(5,2), 
                      Copies INT, 
                      ShelfNumber VARCHAR(255), 
                      PubID INT);
```

```
CREATE TABLE tblPub (ID INT, 
                     Publisher VARCHAR(255), 
                     City VARCHAR(255), 
                     State VARCHAR(255), 
                     Country VARCHAR(255));
```

See what tables we have just created:

```
SHOW tables;
```

Let's import some tables from the files we downloaded earlier.  

```
LOAD DATA INFILE '/home/ubuntu/workspace/tblBook.csv' INTO TABLE tblBook FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';
```

This should give us some output. 
If we notice a warning, type the following to view the warnings:

```
SHOW WARNINGS;
```

So, it looks like we have a missing date. 
No big deal. 
We'll deal with that later. 
Let's import our other table. 

```
LOAD DATA INFILE '/home/ubuntu/workspace/tblPub.csv' INTO TABLE tblPub FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';
```

Let's see what is in our tables:

```
SHOW COLUMNS FROM tblBook;
```

```
SHOW COLUMNS FROM tblPub;
```

We'll notice that we have no key set for either table. 
We need to do this, right?

```
ALTER TABLE tblBook ADD PRIMARY KEY (ID);
```

Now look at the table again and see that it has changed:

```
SHOW COLUMNS FROM tblBook;
```

Now do the same for the other table:

```
SHOW COLUMNS FROM tblPub;
```

```
ALTER TABLE tblPub ADD PRIMARY KEY (ID);
```

```
SHOW COLUMNS FROM tblPub;
```

You should see that the `ID` column now has `Pri` in its `Key` field.

## Define relationships

We need to tell MySQL that the PubID column in tblBook refers to the primary key in tblPub. This action is called a constraint and the reference is called a foreign key. 

```
ALTER TABLE tblBook ADD CONSTRAINT fk_PubID FOREIGN KEY (PubID) REFERENCES tblPub(ID) ON UPDATE NO ACTION;
```

Let's look at our columns again:

```
SHOW COLUMNS FROM tblBook;
```

You'll notice that the `Key` column now has `MUL` for `PubID`. 
This means that we are using that column as an index as well as the primary key column. 
This new index just happens to be non-unique. 

# Get this right!

If your tables, columns, etc don't look *exactly* like tommytesters, you may need to start over on your own to get it right.

To start over, make sure you're in the mysql prompt (or get there again with `mysql-ctl cli` and `USE booksinfo`) and type 

```
DROP TABLE tblBook tblPub;
```

to delete both tables. Then continue the instructions above from `USE booksinfo` on.

# For next time

Next time we will return to databases and discuss the conceptual and theoretical underpinnings of what we worked on today. 
I would like you to read something about databases.{% sidenote 'db' '“What Is a Database?” BBC Guides. http://www.bbc.co.uk/guides/z8yk87h.' %}

We will look at other resources and tutorials in class as well. 