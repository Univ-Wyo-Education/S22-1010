  1: 
  2: def feet_to_inches ( feet ):
  3:     conv = 12
  4:     inches = feet * conv
  5:     return ( feet )
  6: 
  7: # Automated Test
  8: if __name__ == "__main__":
  9:     n_err = 0
 10:     x = feet_to_inches ( 1 )
 11:     if x != 12:
 12:         n_err = n_err + 1
 13:         print ( "Error: Test 1: conversion not working, expected {} got {}".format (  12, x ) )
 14:     x = feet_to_inches ( 0 )
 15:     if x != 0:
 16:         n_err = n_err + 1
 17:         print ( "Error: Test 2: conversion not working, expected {} got {}".format ( 0, x ) )
 18: 
 19:     if n_err == 0 :
 20:         print ( "PASS" )
 21:     else:
 22:         print ( "FAILED" )
 23: 
