  1: 
  2: import string
  3: 
  4: def removePunctuation(txt):
  5:     for c in string.punctuation:
  6:         txt = txt.replace(c,"")
  7:     return txt
  8: 
  9: 
 10: # Automated Test
 11: if __name__ == "__main__":
 12:     n_err = 0
 13: 
 14:     got = removePunctuation("this, and: that")
 15:     expect = "this and that"
 16:     if got != expect:
 17:         n_err = n_err + 1
 18:         print ( "Error: Test 1: file read error expected {} got {}".
 19:                 format (  expect, got ) )
 20: 
 21:     if n_err == 0 :
 22:         print ( "PASS" )
 23:     else:
 24:         print ( "FAILED" )
 25: 
