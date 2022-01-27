  1: # inch_to_tb converts from miles as an integer or float to inches.  
  2: def inch_to_tb ( mi ):
  3:     conv = 5280 * 12
  4:     inch = mi * conv
  5:     return (inch)
  6: 
  7: # Automated Test
  8: if __name__ == "__main__":
  9:     n_err = 0
 10:     x = inch_to_tb ( 3 )
 11:     if x !=  190080.0: # is equal to 5280 * 12 * 3
 12:         n_err = n_err + 1
 13:         print ( "Error: Test 1: conversion not working, expected {} got {}".
 14:                 format (  190080.0, x ) )
 15:     x = inch_to_tb ( 0 )
 16:     if x != 0:
 17:         n_err = n_err + 1
 18:         print ( "Error: Test 2: conversion not working, expected {} got {}".
 19:                 format ( 0, x ) )
 20: 
 21:     if n_err == 0 :
 22:         print ( "PASS" )
 23:     else:
 24:         print ( "FAILED" )
