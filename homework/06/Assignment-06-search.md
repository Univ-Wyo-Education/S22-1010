
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


# Assignment 06 - Search Data

Search for the muted genetic pattern:

```
pattern = 'actggctggcctagtgacttccagctgcacagctatcgacccagggctggacagcccctgcctggc'
```

Inside the DNA file:

GCF_000001405.39_GRCh38.p41214_genomic.s44a-21.fna

You will need to download the file.  Either by going to
[https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-13/GCF_000001405.39_GRCh38.p41214_genomic.s44a-21.fna](https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-13/GCF_000001405.39_GRCh38.p41214_genomic.s44a-21.fna)
and right clicking on the **download** button and choosing "Save As" or 
by using git to copy the entire repository and getting the file from
Lect-13.

You can use 

```
if pattern in data:
	print ( "found pattern" )
```

to search the data - but you also need to limit the search to the sections
of the DNA that are coding sections.

Take "amino.py" from the previous homework (Also checked in with this 
homework) and make a copy of the file.  Let's call the copy search-dna.py.
Modify search-dna.py to find the beginning and end of the
encoding sections.   Then search inside this area of the
DNA for the pattern.

There is a function to read in the DNA file into a list.  The function is
readFile in the python code readGeneticData.py.

Turn in your modified python code.




