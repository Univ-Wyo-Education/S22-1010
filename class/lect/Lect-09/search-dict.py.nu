  1: from readNameListCSV import readNameListCSV
  2: 
  3: phone_list = readNameListCSV("50000phone.csv")
  4: 
  5: print ( "Enter a Name to Lookup\n=> ", end="" )
  6: lookFor = input()
  7: 
  8: if lookFor in phone_list:
  9:     print ( "Found {}".format(phone_list[lookFor]) )
 10: else:
 11:     print ( "{} not found".format(lookFor) )
 12: 
