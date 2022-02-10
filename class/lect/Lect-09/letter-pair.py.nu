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
 18:             for i in range(len(w)-1):
 19:                 pair = w[i:i+2]
 20:                 pair = pair.lower()
 21:                 if pair in letter_pair:
 22:                     letter_pair[pair] = letter_pair[pair] + 1
 23:                 else:
 24:                     letter_pair[pair] = 1
 25: 
 26: 
 27:     # print ( "Count of Paris: {}".format(letter_pair) )
 28:     print ( "Count of Paris:" )
 29:     for p in letter_pair:
 30:         print ( "{}: {}".format( p, letter_pair[p] ) )
 31: 
 32: main()
