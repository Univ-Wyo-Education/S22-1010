m4_include(../../../setup.m4)

# Lecture 11 - Some Midterm Review & Examples

1. Tracing through some code - This Weeks Homework
2. Fixing a problem in code
3. Running code to test it

### Trace Some Code

```
m4_include(bad_loop.py.nu)
```
m4_comment([[[
i = 0
j = 2
while ( i < 5 ):
    j = j * j
    j = j + 1
    print ( j )
]]])


| Time / Location | i | j | note/output |
|-----------------|---|---|-------------|
| t1   / line 1  | 0  | | |
| t2   / line 2  | 0  | 2  | |
| t3   / line   |   |   | |
| t4   / line   |   |   | |
| t5   / line   |   |   | |
| t6   / line   |   |   | |
| t7   / line   |   |   | |
| t8   / line   |   |   | |
| t9   / line   |   |   | |
| t10   / line   |   |   | |


### Trace our amino.py main program.

(This is actually amino2.py)

<div class="pagebreak"></div>

```
m4_include(amino2.py.nu)
```
m4_comment([[[

import conv_t_to_u
import rna_lookup

dna_input = [
"taacccaugCGGTACtaaaaa",
]

amino_string = ""

rna = conv_t_to_u.conv_t_to_u ( "".join(dna_input).lower() )
# print ( "rna = {}".format(rna)
st = "before"
i = 0
while i < len(rna)-2:
    three = rna[i:i+3]
    # print ( "st {} three >{}< at i={}".format(st, three,i)) 
    amino = rna_lookup.rna_to_amino_acid(three)
    if amino == '!' :
        print ( "Invalid 3 letter sequence {} at {}".format(three, i ) )
        break
    if st == "before" and amino == "M" :
        st = "encode"
        i = i + 3
    elif st == "encode" and amino == ".":
        st = "before"
        print ("Protein : ", amino_string)
        i = i + 3
    elif st == "encode" :
        amino_string = amino_string + amino
        i = i + 3
    else:
        i = i + 1
]]])


## CF overview

1. Stephie's Videos
2. What is the cause of Cystic-Fibroses (CF)
3. How genetic coding is to be searched
4. Taking existing code that converts DNA protein Protein and re-using that in a search
5. Searching the code.

## Software Is Eating The World

1. GAN's - StyleGAN2
2. Jobs [https://www.bls.gov/ooh/most-new-jobs.htm, Most New Jobs Created](https://www.bls.gov/ooh/most-new-jobs.htm)

