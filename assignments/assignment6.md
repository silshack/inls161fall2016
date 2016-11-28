---
layout: page
---

# Task #6 - Be Presentable

This assignment involves the creation of a well-formed presentation with voiceover narration. 

The assignment aims to strengthen your HTML skills while also learning to create presentation materials and craft a short narrative for a presentation. 

You will use reveal.js in combination with audio files to create an automated, narrated web object. 

## Skillsets

You will be exposed to the following skillsets;

1. HTML5 & CSS
2. Audio manipulation
3. Presentation skills

## Expectations

I expect you to work with a partner or small group (no more than 3) to write and construct a short (5 - 10 min) presentation on the topic of your choice. 

Your topic should be a topic in technology.  And of the 'doors' that I showed you that we did not go through would be an excellent choice.  The kinds of things that have been discussed in the community events you attended are another great source of topics.  Your presentation should teach us something and use your technology skills to augment your teaching.

You will be able to choose a partner if you like.  If you don't choose a partner I'll pair you randomly with someone.

## Prerequisites

You will need a text editor and audio manipulation software, preferrably Audacity. Your presentation will be stored in GitHub and you can manipulate the text using the editor in Cloud9.  Utilize good collaboration practices with your partner and make sure the work is distributed equitably, with both partners contributing roughly half of the code and half of the content 

## Instructions

You will need to do the following for this assignment to be considered complete. 

First, pick a cool team name.

### One partner:

1. Have one partner make a new blank github repository. You can title it whatever you want.
2. Clone [this base repository](https://github.com/eah13/task-6-be-presentable/tree/5e0fbc87374c0f779f60df98e754a0610616abe6).  You can clone it into whichever workspace you want, but you'll need Pandoc installed.  *I suggest you 'clone' (on Cloud9) your Assignment 3 workspace, since that already has everyhting you need installed.*
3. Follow the github instructions to change the remote url of the repository to point to your new repository. note: you'll need to use `git remote set-url origin <url>` instead of `git remote add origin <url>`
4. Add your other partner as a collaborator on the Github repo.  Have them clone the repository iunto whichever workspace they want (and make sure they have pandoc installed).

### As a team:

2. Create your base presentation slides using the included Markdown template and convert it to HTML5 using Pandoc. Instructions for this are in the `INSTRUCTIONS.md` file in this repository.
3. Add speaker notes to enclose the text of your presentation. 
4. Add images, styles, and fragments accordingly. 
4. Narrate audio of the presentation (both team members must have their voices in the audio, for roughly equal amounts of slides).
5. Use Audacity to cut the audio files into the appropriate lengths for the transitions (see instructions on class site).
6. Upload the audio files and insert the source links in each section and fragment. 
7. Make sure that all of your changes are added, committed, and pushed. 
8. Test your presentation to ensure that all runs smoothly.

Bonuses:

Note: these should happen *after* you're done with Pandoc

Easy Manual Bonuses:

* After you've generated the final HTML output, manually custimize the layouts of particular slides.  *Note: these changes will be erased if you re-build the slide so make sure you're done first!
* Manually customize the styles of each partner's slides using CSS classes or style attributes.  These classes can change the colors, layout and other components of each partner's slides to differentiate them, but they should retain an overall continuity.  Use compatible color schemes, for instance, rather than entirely different ones.

Harder, More Powerful Bonuses:

* Customize the HTML of the template file that pandoc uses.  You'll need to work around what Reveal expects, so don't go too crazy here.
* Import your own css file in the template and add custom styles in that css file.
* Install the Sass developer tools and customize a theme! See the `/css` folder for instructions.

### Individually:

1. Link to the final project somewhere in your site's navigation and in the post below.
2. Write a (final!) reflection on this project.  As a final reflection, this should be substantial.  Tell me:

  * Who did what in your project
  * What your process was like
  * Any lightbulbs that came on for you
  * Any challenges you overcame
  * How this project used various skills and attitudes you've developed over the course of this class
  * How you might use these skills and attitudes in your future studies or career (no right answer here...)

3. Send me an email with the link to your **post** and *your copy* of your group's presentation by midnight on the due date.
4. Show up during our class's final exam period to present your work to your classmates with your partner.