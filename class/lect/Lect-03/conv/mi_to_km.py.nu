  1: # mi_to_km converts from miles as an integer or float to kilometers.  
  2: def mi_to_km ( mi ):
  3:     conv = 1.60934
  4:     km = mi * conv
  5:     return (km)
  6: 
  7: # Automated Test
  8: if __name__ == "__main__":
  9:     n_err = 0
 10:     x = mi_to_km ( 3 )
 11:     if x !=  4.82802:
 12:         n_err = n_err + 1
 13:         print ( "Error: Test 1: conversion not working, expected {} got {}".
 14:                 format (  4.82802, x ) )
 15:     x = mi_to_km ( 0 )
 16:     if x != 0:
 17:         n_err = n_err + 1
 18:         print ( "Error: Test 2: conversion not working, expected {} got {}".
 19:                 format ( 0, x ) )
 20: 
 21:     if n_err == 0 :
 22:         print ( "PASS" )
 23:     else:
 24:         print ( "FAILED" )
