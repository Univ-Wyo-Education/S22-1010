  1: #!/Users/philip/opt/anaconda3/bin/python
  2: 
  3: from readNameList import readNameList
  4: from removePunctuation import removePunctuation
  5: 
  6: def main():
  7: 
  8:     print ( "Enter File Name\n=> ", end="" )
  9:     fn = input()
 10:     # read in file to a list of lines
 11:     data = readNameList(fn)
 12: 
 13:     # create an empty dictionary, the key will be the word 
 14:     #the value will be the count.
 15:     freq = {}
 16: 
 17:     for line in data:
 18: 
 19:         # Split line up into a set of words
 20:         words = line.split()
 21: 
 22:         for word in words:
 23: 
 24:             word = word.lower()
 25:             word = removePunctuation(word)
 26: 
 27:             if word in freq:
 28:                 freq[word] += 1
 29:             else:
 30:                 freq[word] = 1
 31: 
 32:     # Prints that woudl just print out in word sorted order.
 33:     #for key in sorted(freq.keys()):
 34:     #    cnt = freq[key]
 35:     #    print ( f"{key} = {cnt}" )
 36: 
 37:     print ( "{name:5s} : {word}".format(name="Count",word="Word") )
 38:     print ( "{name:5s} : {word}".format(name="-----",word="--------------------") )
 39:     x = sorted(freq.items(), key=lambda x: x[1], reverse=True)
 40:     for p in x:
 41:         print ( f"{p[1]:5d} : {p[0]}" )
 42: 
 43: 
 44: 
 45: 
 46: if __name__ == "__main__":
 47:     main()
 48: 
