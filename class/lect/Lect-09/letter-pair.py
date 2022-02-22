import readNameList

def main():

    print ( "Enter File Name\n=> ", end="" )
    fn = input()
    # read in file to a list of lines
    data = readNameList.readFileIntoList(fn)

    letter_pair = {}

    for line in data:

        # Split line up into a set of words
        words = line.split()

        for w in words:
            print ( "w = {}".format(w) )
            for i in range(len(w)-1):
                pair = w[i:i+2]
                pair = pair.lower()
                print ( "pair = ->{}<-".format ( pair ) )
                if pair in letter_pair:
                    letter_pair[pair] = letter_pair[pair] + 1
                else:
                    letter_pair[pair] = 1


    #print ( "Count of Paris: {}".format(letter_pair) )
    print ( "Count of Paris:" )
    for p in letter_pair:
        print ( "{}: {}".format( p, letter_pair[p] ) )

main()
