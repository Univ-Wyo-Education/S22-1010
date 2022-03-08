import numpy as np

a = np.array([1,2,3,4,5])
print ("original a={}".format( a ))

a[1:3] = 200
print ("modified a={}".format( a ))

b = np.copy(a[1:3])
print ( "b={}".format(b ))
b[0] = 400

print ("again  a={} and b={}".format( a, b ))
