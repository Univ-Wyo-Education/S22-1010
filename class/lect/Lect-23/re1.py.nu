  1: 
  2: import re
  3: 
  4: cRe = re.compile('ab*')
  5: print ( cRe )
  6: 
  7: iRe = re.compile('ab*',re.IGNORECASE)
  8: print ( iRe )
  9: 
 10: if cRe.match ( "aaxaabXabY" ) : 
 11:     print ("matched 1" )
 12: 
 13: if cRe.match ( "aaXaabXAbY" ) : 
 14:     print ("matched 2 " )
