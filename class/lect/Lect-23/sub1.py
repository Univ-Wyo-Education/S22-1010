
import re

s = "128 MPG"
t = re.sub('[^.0-9]', '', str(s))

print ( "s=-->{}<--   t=-->{}<--".format(s,t))

n = 128
t = re.sub('[^.0-9]', '', str(n))

print ( "n=-->{}<--   t=-->{}<--".format(n,t))
