  1: import re
  2: 
  3: cRe = re.compile('ab*')
  4: print ( cRe )
  5: 
  6: iRe = re.compile('ab*',re.IGNORECASE)
  7: print ( iRe )
  8: 
  9: if cRe.match ( "aaxaabXabY" ) : 
 10:     print ("matched 1" )
 11: 
 12: if cRe.match ( "aaXaabXAbY" ) : 
 13:     print ("matched 2 " )
