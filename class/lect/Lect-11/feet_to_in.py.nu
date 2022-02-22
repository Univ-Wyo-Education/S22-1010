  1: 
  2: # feet_to_in converts from feet as an to inches.
  3: def feet_to_in ( feet ):
  4:     conv = 12
  5:     inches = feet * conv
  6:     return (inches)
  7: 
  8: # Automated Test
  9: if __name__ == "__main__":
 10:     n_err = 0
 11:     x = feet_to_in ( 3 )
 12:     if x !=  36:
 13:         n_err = n_err + 1
 14:         print ( "Error: Test 1: conversion not working, expected {} got {}".format (  36, x ) )
 15:     x = feet_to_in ( 0 )
 16:     if x != 0:
 17:         n_err = n_err + 1
 18:         print ( "Error: Test 2: conversion not working, expected {} got {}".format ( 0, x ) )
 19: 
 20:     if n_err == 0 :
 21:         print ( "PASS" )
 22:     else:
 23:         print ( "FAILED" )
 24: 
