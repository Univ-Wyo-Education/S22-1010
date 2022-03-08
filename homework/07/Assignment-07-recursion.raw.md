
m4_include(./../../setup.m4)

# Lab 07 - Using Recursion

200pts pts total.

## Part 1 - Fibonacci Numbers

200pts - Due  Mar 21, 2022

An example of a recursive definition is:

```
    sum(n) = { 0 if n <= 0
             { n + sum(n-1) if n > 0
```

Then we can build a function that matches this.

```
m4_include(r_add.py.nu)
```










Given our definition for a Fibonacci number (this is directly from the example in
lass last Thursday)

```
	fib(n) = { 0 : n = 0
             { 1 : n = 1
             { fib(n-1) + fib(n-2)
```

Implement a recursive function that calculates this in python.  Supply an automated test.


<div class="pagebreak"></div>

## Part 2 - Recursive check for palindrome.

A palindrome is a string where the beginning is the reverse of the end of the string.

Examples:

```
abccba
aba
aa
x
```

All of these are palindromes.

Given definition for a palendrone:

```
    palendrone(s) = { if the string is length 0 or 1:  True
                    { if the string is 2 or longer then:
                          if the first character matches the last
                             and if palendrone(s[2:len(s)-1]) then True
                          else return `False`
```

Using the recursive definition implement a function that returns `True` if the string is 
a palindrome.



Turn in your code for both parts.
   
