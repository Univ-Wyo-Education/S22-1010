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
