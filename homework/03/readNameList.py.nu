  1: 
  2: def readFileIntoList(fn):
  3: 
  4:     f = open(fn,"r",encoding="utf8")
  5:     if f == None:
  6:         print ( f"Invalid file {fn} - failed to open" )
  7:         return None
  8:     dt = f.readlines()
  9:     f.close()
 10:     for i in range (len(dt)):
 11:         s = dt[i].rstrip()
 12:         dt[i] = s
 13: 
 14:     return dt
 15: 
 16: 
 17: # Automated Test
 18: if __name__ == "__main__":
 19:     n_err = 0
 20: 
 21:     got = readFileIntoList("2names.txt")
 22:     expect = [
 23:         "\"Gunter, Dolly R\",(072) 123-4760",
 24:         "\"Polk, Hattie S\",(563) 404-0792"
 25:         ]
 26:     if got[0] != expect[0]:
 27:         n_err = n_err + 1
 28:         print ( "Error: Test 1: file read error expected {} got {}".
 29:                 format (  expect[0], got[0] ) )
 30:     if got[1] != expect[1]:
 31:         n_err = n_err + 1
 32:         print ( "Error: Test 2: file read error expected {} got {}".
 33:                 format (  expect[1], got[1] ) )
 34:     if len(got) != len(expect):
 35:         n_err = n_err + 1
 36:         print ( "Error: Test 3: file read error expected {} lines got {}".
 37:                 format (  len(expect[1]), len(got[1]) ) )
 38: 
 39:     if n_err == 0 :
 40:         print ( "PASS" )
 41:     else:
 42:         print ( "FAILED" )
 43: 
