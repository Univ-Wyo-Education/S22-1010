from rna_lookup import rna_codon

if "xyz" in rna_codon:
   print ( "found" )
else:
   print ( "not found" )

if "gac" in rna_codon:
   print ( "found value = {}".format(rna_codon["gac"] ) )
else:
   print ( "not found" )
