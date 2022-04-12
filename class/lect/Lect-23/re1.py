
import re

cRe = re.compile('ab*')
print ( cRe )

iRe = re.compile('ab*',re.IGNORECASE)
print ( iRe )

if cRe.match ( "aaxaabXabY" ) : 
    print ("matched 1" )

if cRe.match ( "aaXaabXAbY" ) : 
    print ("matched 2 " )
