

<style>
.pagebreak { page-break-before: always; }
.half { height: 200px; }
</style>
<style>
.pagebreak { page-break-before: always; }
.half { height: 200px; }
.markdown-body {
	font-size: 12px;
}
.markdown-body td {
	font-size: 12px;
}
</style>


#  Lecture 27 - github.com with some code

## Setup Github.com 

Go to https://github.com

![Screen-Shot-2022-04-26-at-4.14.14-AM.png](Screen-Shot-2022-04-26-at-4.14.14-AM.png)

<div class="pagebreak"></div>

Step 000.  Click on the button to create an account.  The Green One that says `Sign up for GitHub`

![Screen-Shot-2022-04-26-at-4.14.49-AM.png](Screen-Shot-2022-04-26-at-4.14.49-AM.png)

Step 001.  You should get a prompt that looks kind of like a terminal prompt. That is the little red arrow.
Enter your email address.  Click `Continue` on the bottom right.

![Screen-Shot-2022-04-26-at-4.16.35-AM.png](Screen-Shot-2022-04-26-at-4.16.35-AM.png)

<div class="pagebreak"></div>

Step 002.  A password.  If you are using a password manager then generate a random password and use that.
If not then use random.org, [https://www.random.org/strings/](https://www.random.org/strings/)
to generate a password.  You will need to save the generated password in a file - you won't 
remember a random password.   When you use it later use cut/paste it from the file.
**Make backups of the file!  Print it out.  Save it in your sock drawer!  ALL computers
eventually crash - files get deleted.  Save it because if you loose it you will not
get it back.**   Change the number, check the boxes for Numeric, Upper lower case and
click the button at the bottom.   It should look like:

![Screen-Shot-2022-04-26-at-5.44.22-AM.png](Screen-Shot-2022-04-26-at-5.44.22-AM.png)

<div class="pagebreak"></div>

Now you should have a password to enter like, HVo9BcyMIoHD04J

Click `Continue` and give yourself a username that you like.

![Screen-Shot-2022-04-26-at-4.16.58-AM.png](Screen-Shot-2022-04-26-at-4.16.58-AM.png)

<div class="pagebreak"></div>

Step 003.  Solve a puzzle - so that only humans and  machine learning programs in python can login.

![Screen-Shot-2022-04-26-at-4.17.24-AM.png](Screen-Shot-2022-04-26-at-4.17.24-AM.png)

<div class="pagebreak"></div>

Step 004.  Get a checkbox and ... Yes click the big button at the bottom, `Create account`.

![Screen-Shot-2022-04-26-at-4.17.56-AM.png](Screen-Shot-2022-04-26-at-4.17.56-AM.png)

<div class="pagebreak"></div>

Step 005.  Now off to your email....  Have to confirm the email.

![Screen-Shot-2022-04-26-at-4.22.32-AM.png](Screen-Shot-2022-04-26-at-4.22.32-AM.png)

<div class="pagebreak"></div>

Step 006.  You should get an email that looks like this.  The number is a one time password.
The way that these work is it generates a secret, takes the secret - then uses the secret
to generate a password that lasts for a little while and sends that to you.   You enter
the number and that confirms to the system that the email address was real and you are
can login to it.

![Screen-Shot-2022-04-26-at-4.23.00-AM.png](Screen-Shot-2022-04-26-at-4.23.00-AM.png)

<div class="pagebreak"></div>

Step 007.  Answer some questions.

![Screen-Shot-2022-04-26-at-4.23.11-AM.png](Screen-Shot-2022-04-26-at-4.23.11-AM.png)

<div class="pagebreak"></div>

Step 008.  Click on the green button on the left, `Create repository`.

![Screen-Shot-2022-04-26-at-4.24.44-AM.png](Screen-Shot-2022-04-26-at-4.24.44-AM.png)

<div class="pagebreak"></div>

Step 009.  Give it a name.  You can make it public for this class.  Click on the `Create repository` button at the bottom of the page.

![Screen-Shot-2022-04-26-at-4.25.16-AM.png](Screen-Shot-2022-04-26-at-4.25.16-AM.png)

<div class="pagebreak"></div>

Step 010.  You should get a screen that looks like this.  Copy the commands in the first block that says, `... or create a new repository on the command line`.

![Screen-Shot-2022-04-26-at-4.25.33-AM.png](Screen-Shot-2022-04-26-at-4.25.33-AM.png)

<div class="pagebreak"></div>

Step 011. Go and create a directory on your system.  This is using PowerShell on Windows or Terminal on Mac.

![Screen-Shot-2022-04-26-at-4.31.46-AM.png](Screen-Shot-2022-04-26-at-4.31.46-AM.png)

Step 012. Run the commands from Step 010.  Some of you may get an error on the last command.  If it prompts you for
a username and the password to login this is good.   If you just get an error then - Step 013 to 018 are for you.
They are on how to create a personal access token to login with.  Generally if you have not used github.com before
you will not need to create a personal access token.  If you are already a user and you are creating a new
account - then you will need to configure github.com to know which account and what security to use.

You will want to configure your system to know your username and account information for github.com.
To do this:

```
$ git config --global user.name "Philip Schlump"
$ git config --global user.email "philip.schlump@protonmail.com"
```

You will want to use your name and email for this.


![Screen-Shot-2022-04-26-at-4.44.54-AM.png](Screen-Shot-2022-04-26-at-4.44.54-AM.png)

<div class="pagebreak"></div>

Step 013.  Click on the little round image on the top right, there is a dropdown that
should show 

Your gists<br>
Upgrade <br>
Feature preview <br>
Settings <br>
Sign Out <br>

Pick on Settings.  In the previous screen capture I have the drop down open.


![Screen-Shot-2022-04-26-at-4.45.05-AM.png](Screen-Shot-2022-04-26-at-4.45.05-AM.png)

<div class="pagebreak"></div>

Step 014.  This brings up your Profile page.  Click on `<> Developer setting` on the
menu on the left at the very bottom.

![Screen-Shot-2022-04-26-at-4.46.28-AM.png](Screen-Shot-2022-04-26-at-4.46.28-AM.png)

<div class="pagebreak"></div>

Step 015.  You should get a menu with 3 items, "Github Apps", "OAuth Apps", "Personal Access Tokens" on the left.
You want the last one, "Personal access tokens" click on that.

![Screen-Shot-2022-04-26-at-4.46.37-AM.png](Screen-Shot-2022-04-26-at-4.46.37-AM.png)

<div class="pagebreak"></div>

Step 016.  You should see this page - click on the white button on the right, `Generate new token`.

![Screen-Shot-2022-04-26-at-4.46.50-AM.png](Screen-Shot-2022-04-26-at-4.46.50-AM.png)

<div class="pagebreak"></div>

Step 017.  You should see a form that has a huge number of checkboxes - and a "Note" field.
Fill in the note with a title for this token and pick an expiration date.  I usually make
my tokens last for a year.  I check all the boxes that are not indented as shown.

![Screen-Shot-2022-04-26-at-4.48.27-AM.png](Screen-Shot-2022-04-26-at-4.48.27-AM.png)

<div class="pagebreak"></div>

Step 018.  You get a token in the light green box.   Copy the token.  Github will not have
a copy of the token and it can not show it to you again.   If you loose it you will
need to create a new token. ( This is not the token that I use - I deleted this one
and created a different one for this demo )  Put the token in a file that is *not*
in your repository.   Usually it is a good idea to put the token with it's expiration
date into the same file that you saved your random login password in.  

To use the token you have to save it in the configuration for this repository.
I did the folowing

```
$ git remote remove origin 
$ git remote add origin https://ghp_B6900zDLykPMv3VlJYbF3Mz2jBPSoa4gwhHY@github.com/pschlump72/Lab12
$ git push -u origin main
```

The command with the token is
`git remote add origin https://[token]@github.com/[user]/[repository]`
with the appropriate stuff substituted in.

This is saved in a configuration file in `.git/config`.  You can edit the file and see what is
in it.  Careful to not change it!

![Screen-Shot-2022-04-26-at-4.48.51-AM.png](Screen-Shot-2022-04-26-at-4.48.51-AM.png)

<div class="pagebreak"></div>

Step 019.  Now click on the "octa-cat" on the top left side to get back to the main github.com page.
On the left you should see a list of your new repository - I named my Lab12, click on that.

![Screen-Shot-2022-04-26-at-4.57.45-AM.png](Screen-Shot-2022-04-26-at-4.57.45-AM.png)

<div class="pagebreak"></div>

Step 020.  You should see the nearly empty readme.md file.

![Screen-Shot-2022-04-26-at-4.57.55-AM.png](Screen-Shot-2022-04-26-at-4.57.55-AM.png)

<div class="pagebreak"></div>

Step 021. Go and edit the file.

![Screen-Shot-2022-04-26-at-5.11.40-AM.png](Screen-Shot-2022-04-26-at-5.11.40-AM.png)

<div class="pagebreak"></div>

<div class="pagebreak"></div>

Step 022.  Add the modifications

![Screen-Shot-2022-04-26-at-5.12.37-AM.png](Screen-Shot-2022-04-26-at-5.12.37-AM.png)

<div class="pagebreak"></div>

Step 023.  Save them to github.com

![Screen-Shot-2022-04-26-at-5.13.02-AM.png](Screen-Shot-2022-04-26-at-5.13.02-AM.png)

Yea! You are now a git user that can modify stuff and share it and save it.

<div class="pagebreak"></div>


## Create our Python Project Code

First let's get the display class working.
The code is: [https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-27/ins_hm/display/display.py](https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-27/ins_hm/display/display.py)

Create a directory in our project called 'display' and one called 'words'.   

```
$ cd Lab12		# if you are not already there
$ mkdir display
$ mkdir words
$ cd display
$ pwd
```

Use VSCode - navigate to the "display" directory and cut/paste the code for it into a file called display.py.
Save it and then we can test it.

Run the code.  Enter some numbers between 0 and 7 and see that it shows the correct output.

At the command line add your file to the repository.

```
$ git add display.py
$ git commit -m "Shows the ASCII art image"
$ git push
```

Go and edit the code and put a comment in it - explain what it is doing.

Now we will push the changes up.

```
$ git add display.py
$ git commit -m "Added Comment"
$ git push
```

You should be able to see the log on the changes that you have made.

```
$ git log
```

and go to https://github.com and look at your directory and changes online.


## Add the "words" code.

Get to the correct directory.

```
$ cd ../words
$ pwd
```

Do a similar process to create the  `pick_word.py` file, it is on github.com at: [https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-27/ins_hm/words/pick_word.py](https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-27/ins_hm/words/pick_word.py)

It is missing some code in the 'guessLetter' method/function a line 647.  The code is to record a picked letter.  We will add the code in a second.

First create and push up the file.  Navigate to the correct directory in VSCode.   Create the file so that it is in the ./words directory. 
The file needs to be named `pick_word.py`.  If you do a `ls` command you should see

```
$ ls
pick_word.py
$ ls ../display
display.py
$ ls ..
README.md
display
words
```

Let's save the file to github.com, the we will add the missing code and push it up a 2nd time.

```
$ git add pick_word.py
$ git commit -m "initial code with some missing"
$ git push
```

Let's add the missing code to 

In VSCode change the function 

```
    def guessLetter ( self, letter ) :
        return False
```

To look like this.  The function is near line 647

```
    def guessLetter ( self, letter ) :
        if letter not in self.letters_picked:
            self.letters_picked = self.letters_picked + letter
        if letter in self.word:
            self.n_success += 1
        else:
            self.n_incorrect_letters += 1
        if self.n_incorrect_letters > 8:
            return True
        return False
```

## Checkin the result

Test the code interactively by running it.  

Now save the changes

```
$ git add pick_word.py
$ git commit -m "Fixed gessLetter to save a guess"
$ git push
```

You should now see both sets of code on you https://github.com site.

## The main program.

A similar process.  [https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-27/ins_hm/hangman.py](https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-27/ins_hm/hangman.py)

Copy the code.

Go up 1 level and edit in VSCode to create the file.

```
$ cd ..
$ ls
README.md
display
hangman.py
words
```

You should be able to run the hangman.py code now.

Give it a test.

now add it to the repository.

```
$ git add hangman.py
$ git commit -m "Main program added"
$ git push
```

## Capture Screen - to turn in for Lab

Yes just do a screen capture of your `https://github.com/[User]/Lab12` and turn that in.  (Use your username in the URL)




