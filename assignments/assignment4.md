---
layout: page
---

# Task #4 - Create data

This assignment aims at strengthening our scripting skills and learning how to create a well-formed dataset to work with. 

We will extend what we do in this assignment in the next one, so keep that in mind.

We will create a short questionnaire and then use Bash to script collection of answers.

## Skillsets

You will be exposed to the following skillsets;

1. Scripting user input
2. Saving data to csv file

## Expectations

I expect you to work in your teams to create a script that will take input from users and then store their responses to a CSV file.
It must aggregate the responses of multiple users and therefore needs to have some form of disambiguation involved in the data generation process. 

## Prerequisites

The only thing that you will need is Bash and text files, all of which are available in CodeAnywhere.

## Instructions

You will need to do the following for this assignment to be considered complete. 

1. Have **one** person move all of your classwork related files (i.e. not the below) into a folder called 'prep'.  Have them add and commit and push these changes, then everyone else pull them.  This will clean up your repository.
2. Create a list of five questions.
3. Write a script that will do the following:
  - Ask each question of the user running the script.
  - Accept text input from the user and write each answer as a variable.
  - Write a random string of characters to a variable as a unique identifier.  **You will need to use our readings and/or other resources to choose a method for doing this.**
  - Write the datestamp to a variable.  Same as above you'll need to research and select one of the many ways of doing this.
  - Append all answers and other data to a CSV file.  
4. Commit and push the script and CSV file to your shared repository. Beware of running into conflicts here. [Resolve them](https://help.github.com/articles/resolving-a-merge-conflict-from-the-command-line/) if you do.
5. Once the script is done, have each group member **pull** the finished script **one at a time** and run it twice, giving different answers each time.  Then they should add, commit and push their results.  You'll need each group member to notify the others when it's time for them to pull and run the script.  This will build up a CSV file with commits from each member.
5. Each group member should submit a **separate** reflection post detailing how the group approached the problem and their individual's role in creating the script above.  The reflection should detail any challenges, confusions, and lightbulbs that went on during the process. It should also link to your github repository and any specific files or commits you'd like to discuss.
6. Each group member email me a link to their reflection.

Bonuses:

- Particularly robust text interface to your program.  For instance, you might want to let the user choose what CSV filename to use and whether to overwrite or append to it. (For the exercise you should all choose the same CSV file)
- Successfully use functions, for, if, or other features of Bash that we haven't covered in class
- Use branches, **Pull Requests**  and comments on github for collaboration.
- Print out all of the datal, nicely formatted and colored, in the CSV after user input is completed