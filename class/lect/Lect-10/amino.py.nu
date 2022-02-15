  1: import conv_t_to_u
  2: import rna_lookup
  3: 
  4: dna_input = [
  5: "taaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaacccta",
  6: "accctaaccctaaccctaaccctaacccaaccctaaccctaaccctaaccctaaccctaaccctaacccctaaccctaac",
  7: "cctaaccctaaccctaacctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaacccctaaccc",
  8: "taaccctaaaccctaaaccctaaccctaaccctaaccctaaccctaaccccaaccccaaccccaaccccaaccccaaccc",
  9: "caaccctaacccctaaccctaaccctaaccctaccctaaccctaaccctaaccctaaccctaaccctaacccctaacccc",
 10: "taaccctaaccctaaccctaaccctaaccctaaccctaacccctaaccctaaccctaaccctaacccaugCGGTACCCTC",
 11: "AGCCGGCCCGCCCGCCCGGGTCTGACCTGAGGAGAACTGTGCTCCGCCTTCAGAGTACCACCGAAATCTGTGCAGAGGAc",
 12: "aacgcagctccgccctcgcggtGCTCtccgggtctgtgctgaggagaacgCAACTCCGCCGTTGCAAAGGCGcgccgcgc",
 13: "cggcgcaggcgcagagaggcgcgccgcgccggcgcaggcgcagagaggcgUGAcgcgccggcgcaggcgcagagaggcgc",
 14: "gccgcgccggcgcaggcgcagagaggcgcgccgcgccggcgcaggcgcagagaggcgcgccgcgccggcgcaggcgcaga",
 15: ]
 16: 
 17: amino_string = ""
 18: 
 19: rna = conv_t_to_u.conv_t_to_u ( "".join(dna_input) )
 20: 
 21: st = "before"
 22: i = 0
 23: while i < len(rna)-2:
 24:     three = rna[i:i+3]
 25:     # print ( "st {} three >{}< at i={}".format(st, three,i)) 
 26:     amino = rna_lookup.rna_to_amino_acid(three)
 27:     if amino == '!' :
 28:         print ( "Invalid 3 letter sequence {} at {}".format(three, i ) )
 29:         break
 30:     if st == "before" and amino == "M" :
 31:         st = "encode"
 32:         i = i + 3
 33:     elif st == "encode" and amino == ".":
 34:         st = "before"
 35:         print ("Protein : ", amino_string)
 36:         i = i + 3
 37:     elif st == "encode" :
 38:         amino_string = amino_string + amino
 39:         i = i + 3
 40:     else:
 41:         i = i + 1
