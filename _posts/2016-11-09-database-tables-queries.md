---
published: false
layout: post
title: "Databases, tables, queries, and relationships"
category: Databases
tags: 
- database
- tables
- queries
- SQL
- MySQL
---

Today we will continue with our discussion of databases and then learn ALL THE SQL. 

![LEARN ALL THE SQL]({{ site.url}}/assets/img/learnallthesql.jpg)
<excerpt/>

# Parts of a database 

## Tables

The basic storage template in a database is a table. 

This is simply a set of data arranged into columns and rows. 
Just like with the data that we generated previously, the rows represent lists of information that are related to a specific thing. 

The rows in our tables are called "records."

The columns then represent the types of information that we are organizing. 

Tables on their own are fine for storing a collection of data, but what if we have a lot of repeating data that we do not want to have to store over and over again in the same table?

## Relationships

The primary method of reducing this sort of data is by creating more tables and then defining relationships between them. 
This is why we refer to this type of database as "relational."{% sidenote 'Harkins, Susan. “Relational Databases: Defining Relationships between Database Tables.” TechRepublic. Last modified April 30, 2003. http://www.techrepublic.com/article/relational-databases-defining-relationships-between-database-tables/.<br/><br/>Harkins, Susan. “Relational Databases: The Inspiration behind the Theory.” TechRepublic. Last modified April 2, 2003. http://www.techrepublic.com/article/relational-databases-the-inspiration-behind-the-theory/.<br/><br/>The whole TechRepublic series on relational databases is useful. It would be worthwhile to read all of it. ' %}

There are three categories of relationship:

- One-to-One: Each record in a table has only one relationship to one other record in another table
- One-to-Many: Each record (by primary key) in a table can have zero, one, or many relationships to records in other tables. 
- Many-to-Many: Each record in a table can have any number of (or zero) relationships to records in other tables. 
 	
Can you think of any examples of relationships like this? 

### Primary Keys

A primary key, as mentioned above, is a designator associated with each record that distinguishes it from all other records. 
When creating a table with a one-to-many relationship, you will need to create a primary key for each new record. 

What are some possible pieces of existing information that might be used as a primary key?

What might be some problems with using an existing piece of information as a primary key?

## Queries

Queries take a set of instructions and use them to sort and categorize data across multiple variables and tables. 

We will look at different possibilities for queries and try some together in class. 

When we define relationships in the query designer, you'll notice that there are different joins available to you. 

## Joins

These are logical inclusion/exclusion criteria for your query at the table level. 
It is a good idea to have some understanding of what they do on a logical level.{% sidenote 'joins' 'Moffatt, C. L. “Visual Representation of SQL Joins.” CodeProject. http://www.codeproject.com/Articles/33052/Visual-Representation-of-SQL-Joins.<br/><br/>This visual  guide can help you to better understand each join and what they do.' %} 

Today, we will only use right joins in our example queries. 

Why would we do that?

# SQL Boot Camp

## Get some data

Let's download some CSV files that I prepared with a list of books in them. 

```wget http://inls161.johndmart.in/raw-material/tblBook.csv``` 

```wget http://inls161.johndmart.in/raw-material/tblPub.csv```

# The MySQL prompt

Once we are all installed, issue the ```mysql``` command to get into the ```mysql>``` prompt:

```mysql -u root -p```

This specifies that you want to use the root user to login to the MySQL prompt. 

Next let's create a new DB. Make sure that your prompt looks like this:

```mysql> ```

If it does, then you can type:

```CREATE DATABASE booksinfo;```

Commands in the mysql> prompt are *case-sensitive,* so pay attention to the case of the commands. 

Let's list our DBs:

```show databases;```

We should see the DB with the name that we created in the list. Let's move into it:

```USE booksinfo;```

## Add tables

Now we have to create two tables so that we can import data from our CSV files.

```CREATE TABLE tblBook (ID INT, Title VARCHAR(255), Date INT, RetailPrice DECIMAL(5,2), Copies INT, ShelfNumber VARCHAR(255), PubID INT);```

```CREATE TABLE tblPub (ID INT, Publisher VARCHAR(255), City VARCHAR(255), State VARCHAR(255), Country VARCHAR(255));```

See what tables we have just created:

```show tables;```

Let's import some tables from the files we downloaded earlier:

```LOAD DATA INFILE '/home/cabox/workspace/tblBook.csv' INTO TABLE tblBook FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';```

This should give us some output. 
If we notice a warning, type the following to view the warnings:

```SHOW WARNINGS;```

So, it looks like we have a missing date. 
No big deal. 
We'll deal with that later. 
Let's import our other table. 

```LOAD DATA INFILE '/home/cabox/workspace/tblPub.csv' INTO TABLE tblPub FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';```

Let's see what is in our tables:

```SHOW COLUMNS FROM tblBook;```

```SHOW COLUMNS FROM tblPub;```

We'll notice that we have no key set for either table. 
We need to do this, right?

```ALTER TABLE tblBook ADD PRIMARY KEY (ID);```

Now look at the table again and see that it has changed:

```SHOW COLUMNS FROM tblBook;```

Now do the same for the other table:

```SHOW COLUMNS FROM tblPub;```

```ALTER TABLE tblPub ADD PRIMARY KEY (ID);```

## Define relationships

We need to tell MySQL that the PubID column in tblBook refers to the primary key in tblPub. This action is called a constraint and the reference is called a foreign key. 

```ALTER TABLE tblBook ADD CONSTRAINT fk_PubID FOREIGN KEY (PubID) REFERENCES tblPub(ID) ON UPDATE NO ACTION;```

Let's look at our columns again:

```SHOW COLUMNS FROM tblBook;```

You'll notice that the 'Key' column now has 'MUL' for PubID. 
This means that we are using that column as an index as well as the primary key column. 
This new index just happens to be non-unique. 

# Summaries

So now that we have our data in place, let's summarize it a bit. 

```SELECT COUNT(*) FROM tblBook;```

What if we want to see the first ten rows in tblBook?

```SELECT * FROM tblBook ORDER BY Date LIMIT 10;```

Let's look at only books published after 1980;

```SELECT * FROM tblBook WHERE Date > 1980 ORDER BY Date;```

And count them:

```SELECT COUNT(*) FROM tblBook WHERE Date > 1980 ORDER BY Date;```

How about only books published in 1980?

```SELECT * FROM tblBook WHERE Date = 1980 ORDER BY ShelfNumber;```

Let's find out how much our books cost:

```SELECT AVG(RetailPrice) FROM tblBook;```

```SELECT MIN(RetailPrice) FROM tblBook;```

```SELECT MAX(RetailPrice) FROM tblBook;```

Let's summarize all of that together.

`````````sql
SELECT 
AVG(RetailPrice) AS 'Average Price',
MIN(RetailPrice) AS 'Lowest Price',
MAX(RetailPrice) AS 'Highest Price'
FROM tblBook;
`````````

## Make queries

I want to list out all the books in the list that were published by Oxford University Press. 

```SELECT * FROM tblBook b RIGHT JOIN tblPub p ON b.PubID = p.ID WHERE p.Publisher = 'Oxford University Press';```

How many locations does OUP have? 

```SELECT COUNT(*) FROM tblPub WHERE Publisher = 'Oxford University Press';```

Where are they?

```SELECT * FROM tblPub WHERE Publisher = 'Oxford University Press';```

What if I only want the books published by OUP's US office? 
I have to specify an additional criterion. 

```SELECT * FROM tblBook b RIGHT JOIN tblPub p ON b.PubID = p.ID WHERE p.Publisher = 'Oxford University Press' AND p.Country = 'US';```

I wonder if books cost more from the OUP GB location than from the OUP US location.

```SELECT AVG(RetailPrice) FROM tblBook b RIGHT JOIN tblPub p ON b.PubID = p.ID WHERE p.Publisher = 'Oxford University Press' AND p.Country = 'GB';```

```SELECT AVG(RetailPrice) FROM tblBook b RIGHT JOIN tblPub p ON b.PubID = p.ID WHERE p.Publisher = 'Oxford University Press' AND p.Country = 'US';```

# Output from MySQL queries as tables

We can take any of the above queries and output the results to a table. 

We need to add ```CREATE TABLE qryName``` to the front of any of our query commands. 

Here is an example using our price summary from above:

```CREATE TABLE qryPrices SELECT AVG(RetailPrice) AS 'Average Price', MIN(RetailPrice) AS 'Lowest Price', MAX(RetailPrice) AS 'Highest Price' FROM tblBook;```

See if it worked by listing the tables:

```show tables;```

Look at what is in the new table:

```SELECT * FROM qryPrices```

It should match the output from when you ran the query before. 

## Output from MySQL queries in other formats

We can output all of this stuff outside of our MySQL prompt shell (in a normal shell).

Let's ask for the summary of book prices in HTML and then we can try some other queries if we have time. 

```quit``` to exit the MySQL prompt.

Now you have exited from the MySql prompt.

```mysql -u root -p -H -e "SELECT AVG(RetailPrice) AS 'Average Price', MIN(RetailPrice) AS 'Lowest Price', MAX(RetailPrice) AS 'Highest Price' FROM tblBook;" booksinfo```

# Exporting and Importing 

To export your whole database so that you can use it elsewhere (i.e., transfer it to a different server) do the following command:

```mysqldump -u root -p booksinfo > booksinfo.sql```

If you want to then import that same database somewhere else, the command is very similar. The direction changes, and instead of the specialized ```mysqldump``` command, you use just the standard MySQL client command:

```mysql -u root -p booksinfo < booksinfo.sql```

# Next time

You are going to work in your groups to create a new script, based on your last assignment, that will write the data you have collected into a MySQL database. That assignment will be the focus of our lab session. 
