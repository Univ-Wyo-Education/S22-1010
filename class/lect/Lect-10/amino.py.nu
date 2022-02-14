  1: #!/Users/philip/opt/anaconda3/bin/python
  2: 
  3: import conv_t_to_u
  4: import rna_lookup
  5: 
  6: dna_input = [
  7: "taaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaacccta",
  8: "accctaaccctaaccctaaccctaacccaaccctaaccctaaccctaaccctaaccctaaccctaacccctaaccctaac",
  9: "cctaaccctaaccctaacctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaacccctaaccc",
 10: "taaccctaaaccctaaaccctaaccctaaccctaaccctaaccctaaccccaaccccaaccccaaccccaaccccaaccc",
 11: "caaccctaacccctaaccctaaccctaaccctaccctaaccctaaccctaaccctaaccctaaccctaacccctaacccc",
 12: "taaccctaaccctaaccctaaccctaaccctaaccctaacccctaaccctaaccctaaccctaacccaugCGGTACCCTC",
 13: "AGCCGGCCCGCCCGCCCGGGTCTGACCTGAGGAGAACTGTGCTCCGCCTTCAGAGTACCACCGAAATCTGTGCAGAGGAc",
 14: "aacgcagctccgccctcgcggtGCTCtccgggtctgtgctgaggagaacgCAACTCCGCCGTTGCAAAGGCGcgccgcgc",
 15: "cggcgcaggcgcagagaggcgcgccgcgccggcgcaggcgcagagaggcgUGAcgcgccggcgcaggcgcagagaggcgc",
 16: "gccgcgccggcgcaggcgcagagaggcgcgccgcgccggcgcaggcgcagagaggcgcgccgcgccggcgcaggcgcaga",
 17: ]
 18: 
 19: amino_string = ""
 20: 
 21: rna = conv_t_to_u.conv_t_to_u ( "".join(dna_input) )
 22: 
 23: st = "before"
 24: i = 0
 25: while i < len(rna)-2:
 26:     three = rna[i:i+3]
 27:     # print ( "st {} three >{}< at i={}".format(st, three,i)) 
 28:     amino = rna_lookup.rna_to_amino_acid(three)
 29:     if amino == '!' :
 30:         print ( "Invalid 3 letter sequence {} at {}".format(three, i ) )
 31:         break
 32:     if st == "before" and amino == "M" :
 33:         st = "encode"
 34:         i = i + 3
 35:     elif st == "encode" and amino == ".":
 36:         st = "before"
 37:         print ("Protein : ", amino_string)
 38:         i = i + 3
 39:     elif st == "encode" :
 40:         amino_string = amino_string + amino
 41:         i = i + 3
 42:     else:
 43:         i = i + 1
 44: 
