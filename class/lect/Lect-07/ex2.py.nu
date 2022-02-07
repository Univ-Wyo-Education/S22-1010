  1: import readNameList
  2: 
  3: phone_list = readNameList.readFileIntoList("50000phone.csv")
  4: 
  5: print ( "Enter a Name to Lookup" )
  6: lookFor = input()
  7: 
  8: found = False
  9: for v in phone_list:
 10:     if lookFor in v:
 11:         found = True
 12:         print ( "Found {}".format(v) )
 13: if not found:
 14:     print ( "no names found" )
