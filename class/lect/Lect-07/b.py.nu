  1: 
  2: phone_list = readNameList("50000phone.csv")
  3: 
  4: print ( "Enter a Name to Lookup" )
  5: lookFor = input()
  6: found = False
  7: for i in range(len(phone_list)):
  8:     if lookFor in phone_list[i][0]:
  9:         found = True
 10:         print ( "Found {}".format(phone_list[i]) )
 11: if not found:
 12:     print ( "no names found" )
 13: 
