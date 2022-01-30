  1: # in_to_tb converts from inches as an integer or float to tennis ball units (tb).  
  2: def in_to_tb ( inch ):
  3:     conv = 19938124800
  4:     tb = inch / conv
  5:     return (tb)
  6: 
  7: # Automated Test
  8: if __name__ == "__main__":
  9:     n_err = 0
 10:     x = in_to_tb ( 865370 * 5280 * 12 )
 11:     if x != 2.75: # 
 12:         n_err = n_err + 1
 13:         print ( "Error: Test 1: conversion not working, expected {} got {}".
 14:                 format (  190080.0, x ) )  # TODO
 15:     x = in_to_tb ( 0 )
 16:     if x != 0:
 17:         n_err = n_err + 1
 18:         print ( "Error: Test 2: conversion not working, expected {} got {}".
 19:                 format ( 0, x ) )
 20: 
 21:     if n_err == 0 :
 22:         print ( "PASS" )
 23:     else:
 24:         print ( "FAILED" )
