
m4_include(../../../setup.m4)

# Lecture 6 - Lists, Modules.

This is from Chapter 3 in the book.

## A little note on Starting Businesses

## Code Re usability / Functions

It would be really long and error prone to have a program
where you put in all the values into the code and every
calculation was inline.  That is what we did in the Jupyter
Notebook.  In the previous class we created a "function"
that allowed us to convert from miles to kilometers.
It took some steps to build this.  We started out with
the inline code and then slowly evolved it into a function
and added tests to verify that it worked.

To create a function you use the Python `def` followed by
a space and a name for the function.  The name should start
with a letter, a..z, then you can have letters or digits
and underscore characters, `_`.   Then you have an open
parenthesis, `(` and a list of name of parameters, then
a close parenthesis, `)` and a colon `:`.

The list of parameters is used in an order dependent 
way.

Let's build a simple function that calculates the length
of the hypotenuse of a right triangle.

```
m4_include(hyp_1.py.nu)
```

Let's try it with some variables:

```
height = 6
width = 8
print ( hypotenuse ( height, width ) )

hh = 10
ww = 22
print ( hypotenuse ( hh, ww ) )

height = 3
width = 4
print ( hypotenuse ( height, width ) )
```




## Lists.  Chapter 3 in the book.

Life would be very boring if all we could do was to work on one thin at once.  That would be
like what you are stuck in in most GUI applications - one document, one image.  There are very
good tools for each of these.   For example Adobe Photoshop - part of the creative suite -
is fantastic and working on 1 image at once.  I use it.

A couple of years ago a business hear in town was adding water marks to images.  They had an
intern, being payed $15 an hour, open an image, drag the watermark onto the image in the bottom
right, save the image.   They had 2,500,000 images to process.  At my best estimate this person
would finish this task in 3.4 years working full time.  Long before that time his break would
turn to goo and he would get mouse shoulder and fall off of his chair in total abject boredom.

I used a 20 line Python program to open the image file, open the water mark file, position it,
paint the watermark onto the image, save the file.    It started out with a list of files,
2.5 million of them, and in about 35 minutes it has a perfectly positioned watermark on every one.

One of the super-powers of computers is to work at scale.  Amazon's authentication service
performs 400,000,000 requests a second.  That is scale.

A list in python.

```
m4_include(cars.py.nu)
```

An important note about upper/lower case characters.

```
m4_include(cars2.py.nu)
```

## What are lists - syntax for them.

Use square for lists, round for tuples.

```
m4_include(a-list.py.nu)
```

## Accessing the elements in a list.

```
m4_include(list-mod.py.nu)
```

The value inside the `list1[0]` - in the square brackets is often referred to as the subscript.

## List Comprehensions

```
m4_include(list-comp.py.nu)
```

## Let's build a string - list processor.

Strings are list of characters.
```
$ pwd
$ cd ..
$ mkdir ex4
$ cd ex4
```

1. Switch directories.
2. Let's create a directory for the program to be in.
3. Create the code with the data in it.
4. Let's test this chunk.



## Let's build a matrix add.

You can have lists inside lists.

```
$ pwd
$ cd ..
$ mkdir ex3
$ cd ex3
```

1. Switch directories.
1. Let's create a directory for the program to be in.
3. Read in a matrix.
3. Read in a 2nd matrix (same code)
3. See if an appropriate size.
4. A function to add matrices.
4. Output a matrix.



# Copyright

Copyright (C) University of Wyoming, 2021.


