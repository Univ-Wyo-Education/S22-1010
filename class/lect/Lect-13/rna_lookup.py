# RNA codon table
rna_codon = {
    "aaa" : "K", "aac" : "N", "aag" : "K", "aau" : "N", "aca" : "T", "acc" : "T", "acg" : "T",
    "acu" : "T", "aga" : "R", "agc" : "S", "agg" : "R", "agu" : "S", "aua" : "I", "auc" : "I",
    "aug" : "M", "auu" : "I", "caa" : "Q", "cac" : "H", "cag" : "Q", "cau" : "H", "cca" : "P",
    "ccc" : "P", "ccg" : "P", "ccu" : "P", "cga" : "R", "cgc" : "R", "cgg" : "R", "cgu" : "R",
    "cua" : "L", "cuc" : "L", "cug" : "L", "cuu" : "L", "gaa" : "E", "gac" : "D", "gag" : "E",
    "gau" : "D", "gca" : "A", "gcc" : "A", "gcg" : "A", "gcu" : "A", "gga" : "G", "ggc" : "G",
    "ggg" : "G", "ggu" : "G", "gua" : "V", "guc" : "V", "gug" : "V", "guu" : "V", "uaa" : ".",
    "uac" : "Y", "uag" : ".", "uau" : "Y", "uca" : "S", "ucc" : "S", "ucg" : "S", "ucu" : "S",
    "uga" : ".", "ugc" : "C", "ugg" : "W", "ugu" : "C", "uua" : "L", "uuc" : "F", "uug" : "L",
    "uuu" : "F"
}

# Imlement rna_to_amino_acid function
def rna_to_amino_acid(three):
    if three in rna_codon:
        return rna_codon[three]
    return '!'

# Automated Test
if __name__ == "__main__":
    n_err = 0

    x = rna_to_amino_acid("ugg")
    if x != "W":
        n_err = n_err + 1
        print ( "error 1" )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )
