

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


# Lecture 9 - Lists and Dictionaries 

<div class="pagebreak"></div>

## List Example

```
  1: def readNameList(fn):
  2:     f = open(fn,"r")
  3:     if f == None:
  4:         print ( f"Invalid file {fn} - failed to open" )
  5:         return None
  6:     dt = f.readlines()
  7:     f.close()
  8:     for i in range (len(dt)):
  9:         s = dt[i].rstrip()
 10:         dt[i] = s
 11:     return dt
 12: 
 13: phone_list = readNameList("50000phone.csv")
 14: 
 15: print ( "Enter a Name to Lookup" )
 16: lookFor = input()
 17: found = False
 18: for i in range(len(phone_list)):
 19:     if lookFor in phone_list[i]:
 20:         found = True
 21:         print ( "Found {}".format(phone_list[i]) )
 22: if not found:
 23:     print ( "no names found" )


```


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
  1: from readNameListCSV import readNameListCSV
  2: 
  3: phone_list = readNameListCSV("50000phone.csv")
  4: 
  5: print ( "Enter a Name to Lookup\n=> ", end="" )
  6: lookFor = input()
  7: 
  8: if lookFor in phone_list:
  9:     print ( "Found {}".format(phone_list[lookFor]) )
 10: else:
 11:     print ( "{} not found".format(lookFor) )
 12: 


```



### Requirements

Prompt for a file name. 
Then read in a file of text.  
Split the file up into words.
Remove any punctuation and convert each word to lower case.
Count how many times each word occurs. 
Print out a sorted list of the words in the file with the number of occurrences of each word.  Sort from the most frequent word to the least.

### Requirements Broken Down

1. Prompt for a file name. 
2. Read in a file of text.  
3. Split the file up into words.
4. Remove any punctuation and convert each word to lower case.
5. Count how many times each word occurs. 
6. Print out a sorted list
	- Print out a sorted list of the words in the file with the number of occurrences of each word. 
	- Sort from the most frequent word to the least.


### Let's count some words

```

```
















# Copyright

Copyright (C) University of Wyoming, 2021.

