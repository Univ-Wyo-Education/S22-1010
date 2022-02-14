  1: from rna_lookup import rna_codon
  2: 
  3: if "xyz" in rna_codon:
  4:    print ( "found" )
  5: else:
  6:    print ( "not found" )
  7: 
  8: if "gac" in rna_codon:
  9:    print ( "found value = {}".format(rna_codon["gac"] ) )
 10: else:
 11:    print ( "not found" )
