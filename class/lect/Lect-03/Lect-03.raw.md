m4_include(../../../setup.m4)

# Lecture 3 - Converting Values

## Overview

Also the lecture notes are online in the Lect-03 github.
[https://github.com/Univ-Wyo-Education/S22-1010/tree/main/class/lect/lect-03](https://github.com/Univ-Wyo-Education/S22-1010/tree/main/class/lect/Lect-03)

There is a ./conv directory that has a series of steps where you can 
go back to this and see the code as I develop it.

### The "Process" that we often use

1. Collect Requirements
2. Produce a "design" / or a Requirements Document
3. Convert Requirements into a Prototype
4. Take the Prototype and build test data from it
5. Build the "application" from the Prototype
6. Build automated tests
7. Document results

### Demo - of this in browser.

A lot of what happens when you program seems so simple - until you
have to learn a non-human language.  Programs are formal languages.
English is an informal language.   For example I can make a sentence
that most of you will not understand, at first, but with some explanation
I can show that it is using proper English crammer.

"The old man the boat."

In this context the old is a type of person.  "man" is to get on board
the boat and operate it.  It is a verb.

So... The sentence is roughly equivalent to "The old people get on the
boat and operate it."

Python is a formal language.  It uses a rigorous syntax.   As humans
we are not used to this.  

One of the realities of development is that you are not using "one" tool.
vim - for editing, or notepad++ on windows (don't use notepad it will mess you up).
VSCode - for debugging - and building and running projects.
Python - command line for running programs.  
Jupiter Notebooks (Iron Python) for mixing code and output in a human readable form. 
Different types of files.  .py for python, .txt for text, .csv for comma separated
values, .mk for markdown, images in .svg and .jpg and .png etc.  

## Software Engineering

This is a very "software engineering" approach to code development.
Learning to code effectively is a "process".   Creativity tends to be
innate - it is a talent.   Programming is a set of skills.

## Topics Covered

1. Files and Directories
2. Editing
5. `def` code reusability
7. Basic testing
8. Functions - parameters - return values
9. if
10. Comparison for equality, `==` operator.  Also `!=` not equal.
11. if / else
12. ':' starts a block
13. Indentation
14. a = a + 1 - not algebra
15. Files
20. Patterns in code


## Requirements

Implement a python function that will convert from size of sun to 
the size of a tennis ball (2.75 inches) and return that value.
Input should be in miles, output in inches.

Implement a program that will use the function, prompt for
input in miles and then print out the result in kilometers.

## Step 1

Convert from miles to kilometers.

Conversion generally is ( ( X + k1 ) * C ) + k2

In our case k1 and k2 are 0.  So we just get X * C

### Demo - lookup conversion from miles to kilometers

```
m4_include(conv/step-1.py.nu)
```

### Demo - of this as a visualization



## Step 2 - Input with error

```
m4_include(conv/step-2.py.nu)
```

## Step 3 - Fixed error / Types

```
m4_include(conv/step-3.py.nu)
```

## Step 4 - Make a function

```
m4_include(conv/step-4.py.nu)
```

## Step 5 - Make Reusable Code

step-5.py:

```
m4_include(conv/step-5.py.nu)
```

conv/mi_to_km.py:

```
m4_include(conv/mi_to_km.py.nu)
```

## Step 6 - Add documentation

This is really a little step in this program - but a really important one for this class..

```
m4_include(conv/step-6.py.nu)
```

# Copyright

Copyright (C) University of Wyoming, 2021-2022.
