m4_include(../../../setup.m4)

# Lecture 10 - String processing.

Reminder - no class on Thursday, 17th - There will be labs.

## Let's start with some data

```
taaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaacccta
accctaaccctaaccctaaccctaacccaaccctaaccctaaccctaaccctaaccctaaccctaacccctaaccctaac
cctaaccctaaccctaacctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaacccctaaccc
taaccctaaaccctaaaccctaaccctaaccctaaccctaaccctaaccccaaccccaaccccaaccccaaccccaaccc
caaccctaacccctaaccctaaccctaaccctaccctaaccctaaccctaaccctaaccctaaccctaacccctaacccc
taaccctaaccctaaccctaaccctaaccctaaccctaacccctaaccctaaccctaaccctaaccctcgCGGTACCCTC
AGCCGGCCCGCCCGCCCGGGTCTGACCTGAGGAGAACTGTGCTCCGCCTTCAGAGTACCACCGAAATCTGTGCAGAGGAc
aacgcagctccgccctcgcggtGCTCtccgggtctgtgctgaggagaacgCAACTCCGCCGTTGCAAAGGCGcgccgcgc
cggcgcaggcgcagagaggcgcgccgcgccggcgcaggcgcagagaggcgcgccgcgccggcgcaggcgcagagaggcgc
gccgcgccggcgcaggcgcagagaggcgcgccgcgccggcgcaggcgcagagaggcgcgccgcgccggcgcaggcgcaga
```

This is from the file:

[GCF_000001405.39_GRCh38.p41214_genomic.s44a-21.fna](http://uw-s20-2015.s3.amazonaws.com/GCF_000001405.39_GRCh38.p41214_genomic.s44a-21.fna)

## What we want to do is convert this to Amino Acids.

1st thing to note is that the data is upper/lower case.  Our life will be simpler if we make it all lower case.

2nd thing is that this is DNA data.  It has "T" in it.  Let's make our conversion from messenger RNA that uses
U instead of T.  So we need a function to start cleaning up the data.

## Background on generation of Amino Acids from RNA


![Aminoacids_table.svg](./Aminoacids_table.svg)
[Amino Acid Chart](By Mouagip - Codons aminoacids table.png, Public Domain, https://commons.wikimedia.org/w/index.php?curid=5986132)

Or if you prefer a table: [https://en.wikipedia.org/wiki/DNA_and_RNA_codon_tables](https://en.wikipedia.org/wiki/DNA_and_RNA_codon_tables)

Le's do a google search and you might find:

[https://github.com/T101J/Translating_RNA_to_Protein](https://github.com/T101J/Translating_RNA_to_Protein)

this is cool.    A click on the code, and ...
It kind of is what is in the homework ... that has promise.  What is the license?
OOps! no LICENSE file.  Look at the code - they could have put the license in the
file.  Noope!  That means that this is proprietary code - "All Rights Reserved".

Nice chart - but not in the class notes!  This is *Prorietary* code and
the nice blue chart is also!

The code.  Useful to read - but it is not exactly what we want for class.
Remember that we want to scan across to find a start-codon, then take
3 at a time and look them up.  This assumes that you have already found
the start - and just takes 3 at at a time.   It has the processing
for the stop codon.    That is good.   So you can't copy this code
but you can read it and learn from it.

There are about 5 other places where I found the exact same code on
the web.  Nice articles like: 
[https://towardsdatascience.com/starting-off-in-bioinformatics-rna-transcription-and-translation-aaa7a91db031](https://towardsdatascience.com/starting-off-in-bioinformatics-rna-transcription-and-translation-aaa7a91db031)
It has a good explanation of how to do this - but not exactly our requirements.
(It also has the same chart - from what I can tell the chart is actually copyright a biomedical company.)



Note: going from DAN to RNA change 'T' to 'U'



## First convert to one string

We have a list of strings.  We need just one.
"How do you convert a list of strings to a single string?"

Join them tougher.  There is a string operation to do this 
called join.   Join gives us the ability to join with a separator
between each string.

```
m4_include(join01.py)
```

We can also join with a 0 length separator (this is what we will
want in our code).


```
m4_include(join02.py)
```

So we start out with the data in the program:

```
m4_include(dna_input.py)
```

And then join it to make 1 string.


## How to get to a section of a string

Let's say we have a string

```
bb = "abc123def" 
```

and we want to get to the 123 part of the string.  We can pull out just
those three characters with:

```
x3 = bb[3:6]
```

So a little program that will do this is:

```
m4_include(sub.py)
```

## Replace - modifying a string

Python has a builtin string function to replace strings.

```
m4_include(rep1.py.nu)
```

Use replace to remove a string.

```
m4_include(rep2.py.nu)
```

replace with a longer string

```
m4_include(rep3.py.nu)
```

Replace just the 1st occurrence

```
m4_include(rep4.py.nu)
```

## Convert to upper/lower case

To convert to lower case

```
m4_include(lc1.py.nu)
```

To convert to upper case

```
m4_include(uc1.py.nu)
```

## Functions for Lab 05

First is a function to take our input, convert from upper/lower case to lower,
then replace the `t`s with `u`s.

Second is to use a dictionary lookup.

To create a dictionary in Python

```
d = { "name": 1, "name2", 2 }
```

or to lookup other strings

```
d = { "in1": "out1", "in2", "out2" }
```

So we can lookup our 3 letter codon with a dictionary.


```
m4_include(rna_dictionary.py)
```

We can see if a value is in the lookup table with an "if"

```
m4_include(r1.py)
```


<div class="pagebreak"></div>

## A Program to go from DNA to Amino Acids.

Program State

```
m4_include(amino.py.nu)
```



# Copyright

Copyright (C) University of Wyoming, 2021.
