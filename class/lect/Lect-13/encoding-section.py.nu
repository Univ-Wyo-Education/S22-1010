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
 17: rna = conv_t_to_u.conv_t_to_u ( "".join(dna_input).lower() )
 18: 
 19: pattern = "agccggcccgcccgcccggg"
 20: 
 21: start_loc = 0
 22: end_loc = 0
 23: 
 24: st = "before"
 25: i = 0
 26: while i < len(rna)-2:
 27:     three = rna[i:i+3]
 28:     # print ( "st {} three >{}< at i={}".format(st, three,i)) 
 29:     amino = rna_lookup.rna_to_amino_acid(three)
 30:     if amino == '!' :
 31:         print ( "Invalid 3 letter sequence {} at {}".format(three, i ) )
 32:         break
 33:     if st == "before" and amino == "M" :
 34:         st = "encode"
 35:         start_loc = i
 36:         i = i + 3
 37:     elif st == "encode" and amino == ".":
 38:         st = "before"
 39:         end_loc = i
 40:         if pattern in rna[start_loc:end_loc] :
 41:             print ( "Pattern ->{}<- found".format ( pattern ) )
 42:         start_loc = 0
 43:         end_loc = 0
 44:         i = i + 3
 45:     elif st == "encode" :
 46:         i = i + 3
 47:     else:
 48:         i = i + 1
