  1: 
  2: 
  3: import csv
  4: 
  5: def readNameListCSV(fn):
  6: 
  7:     f = open(fn,"r",encoding="utf8")
  8:     if f == None:
  9:         print ( f"Invalid file {fn} - failed to open" )
 10:         return None
 11:     csvR = csv.reader(f)
 12:     dt = {}
 13:     for row in csvR:
 14:         dt[row[0]] = row[1]
 15:     f.close()
 16:     return dt
 17: 
 18: 
 19: # Automated Test
 20: if __name__ == "__main__":
 21:     n_err = 0
 22: 
 23:     got = readNameListCSV("2names.txt")
 24:     # print ( "got= {}".format(got))
 25:     expect = {
 26:         "Gunter, Dolly R":"(072) 123-4760",
 27:         "Polk, Hattie S":"(563) 404-0792"
 28:         }
 29:     if got["Polk, Hattie S"] != expect["Polk, Hattie S"]:
 30:         n_err = n_err + 1
 31:         print ( "Error: Test 1: file read error expected {} got {}".
 32:            format (  expect["Polk, Hattie S"], got["Polk, Hattie S"] ) )
 33: 
 34:     if n_err == 0 :
 35:         print ( "PASS" )
 36:     else:
 37:         print ( "FAILED" )
 38: 
