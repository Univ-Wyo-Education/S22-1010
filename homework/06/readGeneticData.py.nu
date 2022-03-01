  1: def readFile(fn):
  2: 
  3:     f = open(fn,"r",encoding="utf8")
  4:     if f == None:
  5:         print ( f"Invalid file {fn} - failed to open" )
  6:         return None
  7:     dt = f.readlines()
  8:     f.close()
  9:     for i in range (len(dt)):
 10:         s = dt[i].rstrip()
 11:         dt[i] = s
 12: 
 13:     return dt
 14: 
 15: 
 16: # Automated Test
 17: if __name__ == "__main__":
 18:     n_err = 0
 19: 
 20:     got = readFileIntoList("2names.txt")
 21:     expect = [
 22:         "\"Gunter, Dolly R\",(072) 123-4760",
 23:         "\"Polk, Hattie S\",(563) 404-0792"
 24:         ]
 25:     if got[0] != expect[0]:
 26:         n_err = n_err + 1
 27:         print ( "Error: Test 1: file read error expected {} got {}".
 28:                 format (  expect[0], got[0] ) )
 29:     if got[1] != expect[1]:
 30:         n_err = n_err + 1
 31:         print ( "Error: Test 2: file read error expected {} got {}".
 32:                 format (  expect[1], got[1] ) )
 33:     if len(got) != len(expect):
 34:         n_err = n_err + 1
 35:         print ( "Error: Test 3: file read error expected {} lines got {}".
 36:                 format (  len(expect[1]), len(got[1]) ) )
 37: 
 38:     if n_err == 0 :
 39:         print ( "PASS" )
 40:     else:
 41:         print ( "FAILED" )
