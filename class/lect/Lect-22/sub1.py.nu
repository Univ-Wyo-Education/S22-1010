  1: import re
  2: 
  3: s = "128 MPG"
  4: t = re.sub('[^.0-9]', '', str(s))
  5: 
  6: print ( "s=-->{}<--   t=-->{}<--".format(s,t))
  7: 
  8: n = 128
  9: t = re.sub('[^.0-9]', '', str(n))
 10: 
 11: print ( "n=-->{}<--   t=-->{}<--".format(n,t))
