m4_include(../../../setup.m4)

# Lecture 13 - finding a pattern in a range


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


