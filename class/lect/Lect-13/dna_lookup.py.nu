  1: # RNA codon table
  2: rna_codon = {
  3:     "aaa" : "K", "aac" : "N", "aag" : "K", "aat" : "N", "aca" : "T", "acc" : "T", "acg" : "T",
  4:     "act" : "T", "aga" : "R", "agc" : "S", "agg" : "R", "agt" : "S", "ata" : "I", "atc" : "I",
  5:     "atg" : "M", "att" : "I", "caa" : "Q", "cac" : "H", "cag" : "Q", "cat" : "H", "cca" : "P",
  6:     "ccc" : "P", "ccg" : "P", "cct" : "P", "cga" : "R", "cgc" : "R", "cgg" : "R", "cgt" : "R",
  7:     "cta" : "L", "ctc" : "L", "ctg" : "L", "ctt" : "L", "gaa" : "E", "gac" : "D", "gag" : "E",
  8:     "gat" : "D", "gca" : "A", "gcc" : "A", "gcg" : "A", "gct" : "A", "gga" : "G", "ggc" : "G",
  9:     "ggg" : "G", "ggt" : "G", "gta" : "V", "gtc" : "V", "gtg" : "V", "gtt" : "V", "taa" : ".",
 10:     "tac" : "Y", "tag" : ".", "tat" : "Y", "tca" : "S", "tcc" : "S", "tcg" : "S", "tct" : "S",
 11:     "tga" : ".", "tgc" : "C", "tgg" : "W", "tgt" : "C", "tta" : "L", "ttc" : "F", "ttg" : "L",
 12:     "ttt" : "F"
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
