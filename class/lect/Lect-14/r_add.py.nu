  1: def recursive_sum ( n ):
  2:     if n <= 0:
  3:         return 0
  4:     return n + recursive_sum(n-1)
  5: 
  6: 
  7: 
  8: # Automated Test
  9: if __name__ == "__main__":
 10:     n_err = 0
 11:     x = recursive_sum ( 5 )
 12:     if x !=  15:
 13:         n_err = n_err + 1
 14:         print ( "Error: Test 1: sum not working, expected {} got {}".format (  15, x ) )
 15:     x = recursive_sum ( 0 )
 16:     if x != 0:
 17:         n_err = n_err + 1
 18:         print ( "Error: Test 2: sum conversion not working, expected {} got {}".format ( 0, x ) )
 19: 
 20:     if n_err == 0 :
 21:         print ( "PASS" )
 22:     else:
 23:         print ( "FAILED" )
