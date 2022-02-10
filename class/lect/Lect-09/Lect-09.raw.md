
m4_include(../../../setup.m4)

# Lecture 9 - Lists and Dictionaries 


## List Example

```
m4_include(search-list.py.nu)
m4_comment([[[

def readNameList(fn):
    f = open(fn,"r")
    if f == None:
        print ( f"Invalid file {fn} - failed to open" )
        return None
    dt = f.readlines()
    f.close()
    for i in range (len(dt)):
        s = dt[i].rstrip()
        dt[i] = s
    return dt

phone_list = readNameList("50000phone.csv")

print ( "Enter a Name to Lookup" )
lookFor = input()
found = False
for i in range(len(phone_list)):
    if lookFor in phone_list[i]:
        found = True
        print ( "Found {}".format(phone_list[i]) )
if not found:
    print ( "no names found" )

]]])
```



<div class="pagebreak"></div>
m4_comment([[[ ================================================================================================= ]]])

## Dictionary

A dictionary is an association between a "key" value and a set of data
that is efficient for looking thins up by the key.

let's do an "age" one...

```
>>> dd = {}
>>> dd["bob"] = 22
>>> dd["jane"] = 31
>>> dd["marry"] = 18
>>>
>>> dd["bob"]
>>> dd["jane"]
```

Now changing our phone search to use a  dictionary:

```
m4_include(search-dict.py.nu)
m4_comment([[[

from readNameListCSV import readNameListCSV

phone_list = readNameListCSV("50000phone.csv")

print ( "Enter a Name to Lookup\n=> ", end="" )
lookFor = input()

if lookFor in phone_list:
    print ( "Found {}".format(phone_list[lookFor]) )
else:
    print ( "{} not found".format(lookFor) )

]]])
```








<div class="pagebreak"></div>
m4_comment([[[ ================================================================================================= ]]])

### Letter Paris

Paris of letters are the "phonetic" parts in English.   Single letters do not make most sounds in English.
Letter Paris do.

Let's build a program that counts the occurrences of pairs.




```
m4_include(letter-pair.py.nu)
m4_comment([[[

import readNameList

def main():

    print ( "Enter File Name\n=> ", end="" )
    fn = input()
    # read in file to a list of lines
    data = readNameList.readFileIntoList(fn)

    letter_pair = {}

    for line in data:

        # Split line up into a set of words
        words = line.split()

        for w in words:
            for i in range(len(w)-1):
                pair = w[i:i+2]
                pair = pair.lower()
                if pair in letter_pair:
                    letter_pair[pair] = letter_pair[pair] + 1
                else:
                    letter_pair[pair] = 1


    # print ( "Count of Paris: {}".format(letter_pair) )
    print ( "Count of Paris:" )
    for p in letter_pair:
        print ( "{}: {}".format( p, letter_pair[p] ) )

main()

]]])
```
















# Copyright

Copyright (C) University of Wyoming, 2021.

