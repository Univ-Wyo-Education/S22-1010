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
 15: def rna_to_amino_acid(s):
 16:     if s in rna_codon:
 17:         amino = rna_codon[s]
 18:     else:
 19:         amino = '!'
 20: 
 21:     return amino    
 22: 
 23: 
 24: 
 25: 
 26: # Automated Test
 27: if __name__ == "__main__":
 28:     n_err = 0
 29: 
 30:     s = rna_to_amino_acid("aug")
 31:     ex =  "M"
 32:     if s != ex :
 33:         n_err = n_err + 1
 34:         print ( "Error: Test 1: conversion not working, expected {} got {}".format ( ex, s ) )
 35: 
 36:     s = rna_to_amino_acid("agc")
 37:     ex =  "S"
 38:     if s != ex :
 39:         n_err = n_err + 1
 40:         print ( "Error: Test 1: conversion not working, expected {} got {}".format ( ex, s ) )
 41: 
 42:     if n_err == 0 :
 43:         print ( "PASS" )
 44:     else:
 45:         print ( "FAILED" )
