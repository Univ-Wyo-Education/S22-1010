#!/Users/philip/opt/anaconda3/bin/python

from readNameList import readNameList
from removePunctuation import removePunctuation

def main():

    print ( "Enter File Name\n=> ", end="" )
    fn = input()
    # read in file to a list of lines
    data = readNameList(fn)

    # create an empty dictionary, the key will be the word 
    #the value will be the count.
    freq = {}

    for line in data:

        # Split line up into a set of words
        words = line.split()

        for word in words:

            word = word.lower()
            word = removePunctuation(word)

            if word in freq:
                freq[word] += 1
            else:
                freq[word] = 1

    # Prints that woudl just print out in word sorted order.
    #for key in sorted(freq.keys()):
    #    cnt = freq[key]
    #    print ( f"{key} = {cnt}" )

    print ( "{name:5s} : {word}".format(name="Count",word="Word") )
    print ( "{name:5s} : {word}".format(name="-----",word="--------------------") )
    x = sorted(freq.items(), key=lambda x: x[1], reverse=True)
    for p in x:
        print ( f"{p[1]:5d} : {p[0]}" )




if __name__ == "__main__":
    main()

