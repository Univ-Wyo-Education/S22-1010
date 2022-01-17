  1: 
  2: # mi_to_km convert miles to kilometers
  3: def mi_to_km ( mi ):
  4:     k = 1.69034
  5:     km = mi * k
  6:     return ( km )
  7: 
  8: n_err = 0
  9: if  __name__ == "__main__":
 10:     n_err = 0
 11:     x = mi_to_km (3)
 12:     if x != 5.07102 :
 13:         n_err = n_err + 1
 14:         print ( "Failed test 1" )
 15: 
 16: if ( n_err == 0 ) :
 17:     print ( "PASS" )
 18: else:
 19:     print ( "FAIL" )
 20: 
