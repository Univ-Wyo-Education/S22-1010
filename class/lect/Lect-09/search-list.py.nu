  1: def readNameList(fn):
  2:     f = open(fn,"r")
  3:     if f == None:
  4:         print ( f"Invalid file {fn} - failed to open" )
  5:         return None
  6:     dt = f.readlines()
  7:     f.close()
  8:     for i in range (len(dt)):
  9:         s = dt[i].rstrip()
 10:         dt[i] = s
 11:     return dt
 12: 
 13: phone_list = readNameList("50000phone.csv")
 14: 
 15: print ( "Enter a Name to Lookup" )
 16: lookFor = input()
 17: found = False
 18: for i in range(len(phone_list)):
 19:     if lookFor in phone_list[i]:
 20:         found = True
 21:         print ( "Found {}".format(phone_list[i]) )
 22: if not found:
 23:     print ( "no names found" )
