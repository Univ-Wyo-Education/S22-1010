
m4_include(.././../setup.m4)

# Assignment 3 - count some words.

## Feb 8

## Due Feb 14, 2022.  200pts.

m4_comment([[[
   February 2022      
Su Mo Tu We Th Fr Sa  
       1  2  3  4  5  
 6  7  8  9 10 11 12  
       ^--------------- Delivery Date
13 14 15 16 17 18 19  
20 21 22 23 24 25 26  
27 28                 
]]])


Implement `word-count.py`.

Your program should read in a file name.  Use the file name to open
and read a file (code supplied in `readNameList.py`) and then process
the data in the file.  The data is a list of lines.

Create a counter for the file.  Set the counter to 0.
For each line split it into its words.  Sum up the count of words.
Print out the total count at the end.

Use the code in `readNameList.py` to read in the file `FoxInSox.txt`
and count the number of words.  It should be 51 words.  Use this
as a test case to verify that your `word-count.py` program is working.

Now use the file, `Anna-Karenia.txt`.   Run your program and count the number of
words in `Anna-Karenia.txt`.

Turn in your `word-count.py` program and a file with the count of 
the number of words in `Anna-Karenia.txt`.




