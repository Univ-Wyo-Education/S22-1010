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
 16:     # Homework - DO This Part
 17:     return 'M' # Dummy code for demo in lecture 11
 18: 
 19: 
 20: 
 21: # Automated Test
 22: if __name__ == "__main__":
 23:     n_err = 0
 24: 
 25:     s = rna_to_amino_acid("aug")
 26:     ex =  "M"
 27:     if s != ex :
 28:         n_err = n_err + 1
 29:         print ( "Error: Test 1: conversion not working, expected {} got {}".format ( ex, s ) )
 30: 
 31:     s = rna_to_amino_acid("agc")
 32:     ex =  "S"
 33:     if s != ex :
 34:         n_err = n_err + 1
 35:         print ( "Error: Test 1: conversion not working, expected {} got {}".format ( ex, s ) )
 36: 
 37:     if n_err == 0 :
 38:         print ( "PASS" )
 39:     else:
 40:         print ( "FAILED" )
