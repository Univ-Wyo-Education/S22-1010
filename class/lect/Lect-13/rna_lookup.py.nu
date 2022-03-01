  1: # RNA codon table
  2: rna_codon = {
  3:     "aaa" : "K", "aac" : "N", "aag" : "K", "aau" : "N", "aca" : "T", "acc" : "T", "acg" : "T",
  4:     "acu" : "T", "aga" : "R", "agc" : "S", "agg" : "R", "agu" : "S", "aua" : "I", "auc" : "I",
  5:     "aug" : "M", "auu" : "I", "caa" : "Q", "cac" : "H", "cag" : "Q", "cau" : "H", "cca" : "P",
  6:     "ccc" : "P", "ccg" : "P", "ccu" : "P", "cga" : "R", "cgc" : "R", "cgg" : "R", "cgu" : "R",
  7:     "cua" : "L", "cuc" : "L", "cug" : "L", "cuu" : "L", "gaa" : "E", "gac" : "D", "gag" : "E",
  8:     "gau" : "D", "gca" : "A", "gcc" : "A", "gcg" : "A", "gcu" : "A", "gga" : "G", "ggc" : "G",
  9:     "ggg" : "G", "ggu" : "G", "gua" : "V", "guc" : "V", "gug" : "V", "guu" : "V", "uaa" : ".",
 10:     "uac" : "Y", "uag" : ".", "uau" : "Y", "uca" : "S", "ucc" : "S", "ucg" : "S", "ucu" : "S",
 11:     "uga" : ".", "ugc" : "C", "ugg" : "W", "ugu" : "C", "uua" : "L", "uuc" : "F", "uug" : "L",
 12:     "uuu" : "F"
 13: }
 14: 
 15: # Imlement rna_to_amino_acid function
 16: def rna_to_amino_acid(three):
 17:     if three in rna_codon:
 18:         return rna_codon[three]
 19:     return '!'
 20: 
 21: # Automated Test
 22: if __name__ == "__main__":
 23:     n_err = 0
 24: 
 25:     x = rna_to_amino_acid("ugg")
 26:     if x != "W":
 27:         n_err = n_err + 1
 28:         print ( "error 1" )
 29: 
 30:     if n_err == 0 :
 31:         print ( "PASS" )
 32:     else:
 33:         print ( "FAILED" )
