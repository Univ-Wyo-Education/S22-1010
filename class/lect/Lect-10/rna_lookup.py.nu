  1: #!/Users/philip/opt/anaconda3/bin/python
  2: 
  3: # RNA codon table
  4: rna_codon = {
  5:     "aaa" : "K", "aac" : "N", "aag" : "K", "aau" : "N", "aca" : "T", "acc" : "T", "acg" : "T",
  6:     "acu" : "T", "aga" : "R", "agc" : "S", "agg" : "R", "agu" : "S", "aua" : "I", "auc" : "I",
  7:     "aug" : "M", "auu" : "I", "caa" : "Q", "cac" : "H", "cag" : "Q", "cau" : "H", "cca" : "P",
  8:     "ccc" : "P", "ccg" : "P", "ccu" : "P", "cga" : "R", "cgc" : "R", "cgg" : "R", "cgu" : "R",
  9:     "cua" : "L", "cuc" : "L", "cug" : "L", "cuu" : "L", "gaa" : "E", "gac" : "D", "gag" : "E",
 10:     "gau" : "D", "gca" : "A", "gcc" : "A", "gcg" : "A", "gcu" : "A", "gga" : "G", "ggc" : "G",
 11:     "ggg" : "G", "ggu" : "G", "gua" : "V", "guc" : "V", "gug" : "V", "guu" : "V", "uaa" : ".",
 12:     "uac" : "Y", "uag" : ".", "uau" : "Y", "uca" : "S", "ucc" : "S", "ucg" : "S", "ucu" : "S",
 13:     "uga" : ".", "ugc" : "C", "ugg" : "W", "ugu" : "C", "uua" : "L", "uuc" : "F", "uug" : "L",
 14:     "uuu" : "F"
 15: }
 16: 
 17: def rna_to_amino_acid(s):
 18:     if s in rna_codon:
 19:         amino = rna_codon[s]
 20:     else:
 21:         amino = '!'
 22: 
 23:     return amino    
 24: 
 25: 
 26: 
 27: 
 28: # Automated Test
 29: if __name__ == "__main__":
 30:     n_err = 0
 31: 
 32:     s = rna_to_amino_acid("aug")
 33:     ex =  "M"
 34:     if s != ex :
 35:         n_err = n_err + 1
 36:         print ( "Error: Test 1: conversion not working, expected {} got {}".format ( ex, s ) )
 37: 
 38:     s = rna_to_amino_acid("agc")
 39:     ex =  "S"
 40:     if s != ex :
 41:         n_err = n_err + 1
 42:         print ( "Error: Test 1: conversion not working, expected {} got {}".format ( ex, s ) )
 43: 
 44:     if n_err == 0 :
 45:         print ( "PASS" )
 46:     else:
 47:         print ( "FAILED" )
 48: 
