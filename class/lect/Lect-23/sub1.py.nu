  1: 
  2: import re
  3: 
  4: s = "128 MPG"
  5: t = re.sub('[^.0-9]', '', str(s))
  6: 
  7: print ( "s=-->{}<--   t=-->{}<--".format(s,t))
  8: 
  9: n = 128
 10: t = re.sub('[^.0-9]', '', str(n))
 11: 
 12: print ( "n=-->{}<--   t=-->{}<--".format(n,t))
