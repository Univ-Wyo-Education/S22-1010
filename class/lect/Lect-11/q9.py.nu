  1: 
  2: # Convert from feet to yards
  3: def feet_to_yards ( feet ):
  4:     conv = 3
  5:     yards = feet * conv
  6:     return (feet)
  7: 
  8: # Automated Test
  9: if __name__ == "__main__":
 10:     n_err = 0
 11:     x = feet_to_yards ( 3 )
 12:     if x !=  1:
 13:         n_err = n_err + 1
 14:         print ( "Error: Test 1: conversion not working, expected {} got {}".format (  1, x ) )
 15:     x = feet_to_yards ( 0 )
 16:     if x != 0:
 17:         n_err = n_err + 1
 18:         print ( "Error: Test 2: conversion not working, expected {} got {}".format ( 0, x ) )
 19: 
 20:     if n_err == 0 :
 21:         print ( "PASS" )
 22:     else:
 23:         print ( "FAILED" )
 24: 
