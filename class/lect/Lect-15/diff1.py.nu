  1: import numpy as np
  2: 
  3: a = np.array([1,2,3,4,5])
  4: print ("original a={}".format( a ))
  5: 
  6: a[1:3] = 200
  7: print ("modified a={}".format( a ))
  8: 
  9: b = np.copy(a[1:3])
 10: print ( "b={}".format(b ))
 11: b[0] = 400
 12: 
 13: print ("again  a={} and b={}".format( a, b ))
