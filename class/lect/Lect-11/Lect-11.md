
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


# Lecture 11 - Some Midterm Review & Examples

1. Tracing through some code - This Weeks Homework
2. Fixing a problem in code
3. Running code to test it

### Trace Some Code

```
  1: i = 0
  2: j = 2
  3: while ( i < 5 ):
  4:     j = j * j
  5:     j = j + 1
  6:     print ( j )

```



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
  1: import conv_t_to_u
  2: import rna_lookup
  3: 
  4: dna_input = [
  5: "taacccaugCGGTACtaaaaa",
  6: ]
  7: 
  8: amino_string = ""
  9: 
 10: rna = conv_t_to_u.conv_t_to_u ( "".join(dna_input).lower() )
 11: # print ( "rna = {}".format(rna)
 12: st = "before"
 13: i = 0
 14: while i < len(rna)-2:
 15:     three = rna[i:i+3]
 16:     # print ( "st {} three >{}< at i={}".format(st, three,i)) 
 17:     amino = rna_lookup.rna_to_amino_acid(three)
 18:     if amino == '!' :
 19:         print ( "Invalid 3 letter sequence {} at {}".format(three, i ) )
 20:         break
 21:     if st == "before" and amino == "M" :
 22:         st = "encode"
 23:         i = i + 3
 24:     elif st == "encode" and amino == ".":
 25:         st = "before"
 26:         print ("Protein : ", amino_string)
 27:         i = i + 3
 28:     elif st == "encode" :
 29:         amino_string = amino_string + amino
 30:         i = i + 3
 31:     else:
 32:         i = i + 1

```



## CF overview

1. Stephie's Videos
2. What is the cause of Cystic-Fibroses (CF)
3. How genetic coding is to be searched
4. Taking existing code that converts DNA protein Protein and re-using that in a search
5. Searching the code.

## Software Is Eating The World

1. GAN's - StyleGAN2
2. Jobs [https://www.bls.gov/ooh/most-new-jobs.htm, Most New Jobs Created](https://www.bls.gov/ooh/most-new-jobs.htm)

