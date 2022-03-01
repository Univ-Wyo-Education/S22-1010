  1: # Convert DNA's T to RNA's U for later use in the code.  Also convert all to lower case.
  2: 
  3: def conv_t_to_u(s) :
  4:     return s.lower().replace("t","u")
  5: 
  6: # Automated Test
  7: if __name__ == "__main__":
  8:     n_err = 0
  9: 
 10:     x = conv_t_to_u("TTcat")
 11:     if x != "uucau":
 12:         n_err = n_err + 1
 13:         print ( "error 1" )
 14: 
 15:     if n_err == 0 :
 16:         print ( "PASS" )
 17:     else:
 18:         print ( "FAILED" )
