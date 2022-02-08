  1: import readNameList
  2: 
  3: print ( "Enter a File Name")
  4: fn = input()
  5: 
  6: a_list = readNameList.readFileIntoList(fn)
  7: 
  8: flen = len(a_list)
  9: print ( "# of lines in file {}".format(flen) )
