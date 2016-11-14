---
layout: page
---

# Task #5 - Database interface

This assignment aims at further strengthening our scripting skills and working more closely with a database.

In this assignment you will work with your group to modify your data collection script so that it interfaces with a database. 

You will take the questionnaire that you developed in your group and make a new version of it that interfaces with a MySQL database. 

## Skillsets

You will be exposed to the following skillsets;

1. Scripting user input (this comes from your original script)
2. Writing to temporary files
3. Scripting database interface

## Expectations

I expect you and your team to develop a script, based on your last one, that will allow you to write the information gathered into a MySQL database instead of into a CSV file as the final output form. 

## Prerequisites
You will need Bash, text files, and MySQL, all of which are available in CodeAnywhere.

## Instructions

You will need to do the following for this assignment to be considered complete. 

### As a team:

1. Decide who will do what tasks (e.g. - manage main files, look for information online about scripting MySQL, write scripts, test scripts, etc.)
2. Designate a member of the team that will hold your main repo: the repo czar.

### Designated repository czar:
 
1. Create a new repo with your group name.
2. Add the rest of your team as contributors.

### As a team:

1. **Clone** your original script and .csv files from assignment 4 in this repository. Then `cd` into **that new directory** and `rm -rf .git` to remove the assignment 4 git tracking.  **Do not do this in your assignment 5 repository**.
2. Make a branch with an archived version of your first questionnaire script.
3. Switch back into the master branch to work on this assignment.
4. Create a database that has the appropriate variables and variable types (this might be an accessory script or a conditional statement in your script).
5. Modify your script to do the following:
  - connect to a MySQL database (HINT: this will involve setting variables for MySQL username, password, and location)
  - enter the data input by users into a MySQL database 
  - dump the MySQL database into a .sql file in your repository directory with the rest of your files after it has been modified with next data
6. Run your script several times to collect data.

**Bonuses**:

* Use SQL `INSERT` statements to put data into your database instead of loading a CSV file
* Display nicely formatted tables of all the data in your database at the end
* Provide a user interface to import and export data via dumps.  These imports should append data if able
* Make another **table** in your database to store information about the **users** who complete your survey. Once you have this table, figure out how to **join** it with their responses when you print out the data you've collected.


### Individually:

1. Sync your repository fork with the main fork at the end of the work (Look here for how to do this: <https://help.github.com/articles/syncing-a-fork/>).
2. Write a blog post that links to your fork of the repository and write a brief explanation of what your scripts actually do. 
3. Include a reflection of what you did, what you learned, challenges you encountered, etc.
4. Email me a link to your published post by the assignment due date.

