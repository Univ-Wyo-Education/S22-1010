  1: 
  2: def double_values_in_list ( ll ):
  3:     i = 0
  4:     while ( i < len(ll) ):
  5:         ll[i] = ll[i] * 2
  6:         print ( "ll[{}] = {}".format( i, ll[i] ) )
  7: 
  8:     return ll
  9: 
 10: 
 11: 
 12: # Automated Test
 13: if __name__ == "__main__":
 14:     n_err = 0
 15:     ll = [ 1, 2, 3 ]
 16:     x = double_values_in_list ( ll )
 17:     if x[0] != 2:
 18:         n_err = n_err + 1
 19:         print ( "Error: Test 1: conversion not working, expected {} got {}".format (  2, x[0] ) )
 20: 
 21:     if n_err == 0 :
 22:         print ( "PASS" )
 23:     else:
 24:         print ( "FAILED" )
 25: 
