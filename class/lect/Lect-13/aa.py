import conv_t_to_u
import rna_lookup
import readGeneticData

dna_input = readGeneticData.readFile ( "GCF_000001405.39_GRCh38.p41214_genomic.s44a-21.fna" )

amino_string = ""

rna = conv_t_to_u.conv_t_to_u ( "".join(dna_input).lower() )

pattern = 'acuggcuggccuagugacuuccagcugcacagcuaucgacccagggcuggacagccccugccuggc'

start_pos = 0
end_pos = 0
st = "before"
i = 0
while i < len(rna)-2:
    three = rna[i:i+3]
    # print ( "st {} three >{}< at i={}".format(st, three,i)) 
    amino = rna_lookup.rna_to_amino_acid(three)
    if amino == '!' :
        #print ( "Invalid 3 letter sequence {} at {}".format(three, i ) )
        #break
        i = i + 3
    if st == "before" and amino == "M" :
        st = "encode"
        # print ( "start at: {}".format(i) )
        start_pos = i
        i = i + 3
    elif st == "encode" and amino == ".":
        st = "before"
        # print ( "end at: {}".format(i) )
        # print ("Protein : ", amino_string)
        end_pos = i
        if pattern in rna[start_pos:end_pos] :
            print ( "found" )
        i = i + 3
    elif st == "encode" :
        amino_string = amino_string + amino
        i = i + 3
    else:
        i = i + 1
