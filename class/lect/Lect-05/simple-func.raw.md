
m4_include(../../../setup.m4)

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
m4_include(hyp_1.py)
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

