---
published: true
layout: post
title: "Handling data"
category: Data
tags: 
- CSV
- data
- scripting
- Bash
---

<p>Today we are going to discuss the creation of data and learn how manipulate data structures. </p>

<p>We will learn some things about using pipes to redirect output and learn some commands for working with data. 
<excerpt/></p>

<h1 id="data">Data</h1>

<p>So, data? </p>

<p>What is data? </p>

<p>Rather, we should ask: &quot;What are data?&quot; </p>

<p>datum, data, <em>n</em> - something given (past participle of the verb, <em>dare,</em> &quot;to give&quot;).</p>

<p>Where does it come from? What do we use it for? What does it all mean? </p>

<p>The major question that we are going to be asking ourselves here is &quot;How are we going to get data into and out of different formats?&quot; </p>

<p>We will start with lists of similar data and then move to structured and ordered sets of lists (tables). </p>

<p>Eventually we will consider linked sets of data in the form of databases.</p>

<h2 id="raw-data">Raw data</h2>

<p>&quot;Raw&quot; data is sort of an oxymoron. 
There is very little data available that is actually really raw in the sense that it has not been touched, manipulated, massaged, curated, or cleaned by some human intervention. </p>

<p>Remember, even data that is available on the web is not raw, it is text that we have marked up and structured in specific ways. 
However, web data can stand in as an analog for raw data. </p>

<p>The process through which we might gather data via the web is referred to as &quot;scraping.&quot; 
A &quot;scraper&quot; is a program that reaches out into the web and grabs all of the text (including markup) available at a URL and saves it in some meaningfully structured way. </p>

<p>We&#39;re not going to dig into web-scraping too much, but I want you to be aware of how data can be gathered on the web. </p>

<p>One tool that can be used for web scraping is our friend, <code>wget</code>. 
We&#39;ve used it to download remote files, but it can also be used to get whole websites and all of the data linked from them. </p>

<p>This can be useful for mirroring a website. 
It can also be useful in aggregating unstructured data so that it might be manipulated into structured data. </p>

<h2 id="structured-data">Structured data</h2>

<p>One simple fomat for structured data is a table. </p>

<p>Rows in the table represent individual cases or instances of something. </p>

<p>Columns represent variables. </p>

<p>What is the difference? </p>

<p>In the data that we are going to create in class, our rows will represent individual people. 
The information contained in these rows will be given (&quot;datum, a thing given&quot;) to us by every member of this class. 
The columns will represent a specifically defined aspect of data that we gather about every individual person. </p>

<p>We will start with making our own individual lists and then aggregate them. </p>

<h1 id="the-humble-and-mighty-csv">The humble and mighty CSV</h1>

<h3 id="lists">Lists</h3>

<p>We&#39;ll start with a list of data. </p>

<p>Create an assignment 4 workspace on Cloud9.  Open a new file and name it with your GitHub user account and the extension .list. </p>

<p>Mine will be <code>jdmar3.list</code>. </p>

<p>Inside the file, I want you to give one-word or numerical answers to the following (as specified), in this order, each on their own line:</p>

* What is your GitHub username?
* How tall are you (in centimeters)?
* What time did you wake up this morning (in 24-hour/military time: e.g., 06:30)?
* How many semesters do you have left in your degree program? 
* Approximately how far is your home city/town away from UNC/Chapel Hill (in km)?

<p>If any answer doesn&#39;t apply to you, type <code>NA</code> (&quot;not applicable&quot;).</p>

<p>My file will look like this:</p>
<div class="highlight"><pre><code class="language-" data-lang="">eah13
175.26
06:00
2
344.4
</code></pre></div>
<p>We now have semi-structured data! Very simple. </p>

<h3 id="comma-separated-values-(csv)">Comma Separated Values (CSV)</h3>

<p>Now that we have listed some information about ourselves, lets try to aggregate our data. </p>

<p>If we want to put all of our data together as it is, we will just end up with a super long list that is difficult for us to use in any meaninful way. 
If we take our list and flip it, so that we have a single line instead, we can then stack all of our data up together. 
We can separate the elements in the list with commas (or tabs, semicolons, pipe separators, or some other marker) and then we will have a row of what will become a Comma Separated Values file: structured data. </p>

<p>We can do this by hand, but that is boring. </p>

<p>Let&#39;s learn a command to do this:</p>

<p><code>paste -d, -s example.list</code> </p>

<p><code>paste</code> sequentially reads the lines from a file and then writes them out in the same sequence, separated by something (tabs, by default). 
In this case we are asking it to read every line in our file, and then write it out separated by a comma (<code>-d,</code>). 
The <code>-s</code> tells <code>paste</code> to serialize its operations instead of parellelizing them. </p>

<p>So our standard ouput (STDOUT) from the above command will be:</p>
<div class="highlight"><pre><code class="language-" data-lang="">gh-username,height,wakeup,semesters-left,hometown-distance
</code></pre></div>
<h1 id="output-redirection">Output redirection</h1>

<p>To get this into a file, we will use one of several forms of output redirection.  </p>

<p>Output redirection is simple. 
It merely allows for the echoed output of one file to be put into another file. 
We can use programs on top of this to manipulate that output. </p>

<p>For example:</p>

<p><code>paste -d, -s example.list &gt; example.csv</code> </p>

This will take the output from the first part of the command and overwrite the CSV file specified in the second part.

<p>Sometimes you don't want to overwrite a file each time.  In that case, this command will append the output to the file instead of overwriting it:</p>

<p><code>paste -d, -s example.list &gt; example.csv</code></p>

<h1 id="pipes">Pipes</h1>

<p>A &quot;pipe&quot; is an operator that tells a program to take output from another program. 
You&#39;ll find it on your keyboard as SHIFT+.</p>

<p>Pipes translate the output of one program (STDOUT) into being input for another program (STDIN). </p>

<p>For example, if we wanted to count how many lines were in our csv file, we could run:</p>

<p><code>cat example.csv | wc -l</code></p>

    

<h1>Groups</h1>

<p>We're grouping up for the next assignment. Here are the groups:</p>

<p><pre><code>
HigFig
tfrahm
kelhammer
===
gma96
minorfires
jpanken
===
aehaney
brynnaw
ErinGray19
===
celineyuwono
cjayscue
ohreagano
===
colergibson
gavvy
jamiemramos
===
emmacai
jpueb96
dylanjtastet
===
efcline
sanjkris
sarecht
===
danielevanday
cltomli
ectomli
===
pillaim
ldinkins
</code></pre></p>
 

<p>For this first part of the assignment it's very important that you each use unique filenames and don't modify each other's files.  Otherwise we'll get conflicts, which will be a bummer.  When you're in your groups: </p>

<ul>
<li>pick and awesome but easy to type group name</li>
<li>have <strong>one</strong> person create a shared repository titled <code>group-name-assignment-4</code>. Obvs insert your real group name. <strong>Check the box to add a Readme so that the repository is cloneable</strong>.  Add all group members to that repository so that they have <strong>commit</strong> access</li>
<li>Have each member <strong>clone</strong> the new repository to their <code>assignment4</code> workspace.</li>
<li>run <code>paste -d, -s tommytester.list &amp;gt; tommytester.csv</code>, swapping in your username for tommy's</li>
<li>Each member move the csv file they made into their version of the repository</li>
<li>Everyone <code>git status</code> to make sure all you've done is add one file then add, commit and push.  If youve made other changes, undo them.</li>
<li>Everyone pull</li>
</ul>


<p>Everyone should now have a file for each group member, named after their github username. Once you're all there, move on:</p>

<ul>
<li>Each group member pass all of your group members' csv files as arguments to <code>cat</code> and then <strong>redirect</strong> that to <code>youusername-all.csv</code>. </li>
<li>Make sure no one gets left behind and that everyone's filename is unique. if <code>git status</code> tells you you've done more than make one new file, undo those changes.</li>
<li>Everyone add, commit and push your new csv files </li>
<li>Everyone pull</li>
</ul>



<p>Your repository (and your Cloud9 workspaces) should have one base CSV file for each group member and one `-all` csv file for each member.</p>

<p>Alright we've got some basic collaboration done, hopefully without conflicts!  You can use the rest of class to work on Assignment 4.</p>

<h1 id="for-next-time">For next time</h1>

<p>Next time, we are going to work in groups to learn to create and aggregate data using scripts.
In your groups, you will write a script that asks the above questions of the user and then appends their answer to a CSV file. 
This will be the basis of the next asssignment, which will be a group assignment. </p>

<p>I would like you to review some commands for working with a CSV file including how pipes work.<label for='csv' class='margin-toggle sidenote-number'></label><input type='checkbox' id='csv' class='margin-toggle'/><span class='sidenote'>Connelly, Brian. “Working with CSVs on the Command Line.” <a href="http://bconnelly.net/">http://bconnelly.net/</a>. Last modified September 23, 2013. <a href="http://bconnelly.net/working-with-csvs-on-the-command-line/">http://bconnelly.net/working-with-csvs-on-the-command-line/</a>. </span> </p>

<p>I would also like you to watch the following video on working with CSV files. I think that it might be very helpful for those of you who are interested in the extra credit. Try watching it once and then following along a second time. </p>

<div class="video-container">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/OecFFZpIkDc" frameborder="0" allowfullscreen></iframe>
</div>