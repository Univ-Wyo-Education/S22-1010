  1: import readNameList
  2: 
  3: def main():
  4: 
  5:     print ( "Enter File Name\n=> ", end="" )
  6:     fn = input()
  7:     # read in file to a list of lines
  8:     data = readNameList.readFileIntoList(fn)
  9: 
 10:     letter_pair = {}
 11: 
 12:     for line in data:
 13: 
 14:         # Split line up into a set of words
 15:         words = line.split()
 16: 
 17:         for w in words:
 18:             print ( "w = {}".format(w) )
 19:             for i in range(len(w)-1):
 20:                 pair = w[i:i+2]
 21:                 pair = pair.lower()
 22:                 print ( "pair = ->{}<-".format ( pair ) )
 23:                 if pair in letter_pair:
 24:                     letter_pair[pair] = letter_pair[pair] + 1
 25:                 else:
 26:                     letter_pair[pair] = 1
 27: 
 28: 
 29:     #print ( "Count of Paris: {}".format(letter_pair) )
 30:     print ( "Count of Paris:" )
 31:     for p in letter_pair:
 32:         print ( "{}: {}".format( p, letter_pair[p] ) )
 33: 
 34: main()
