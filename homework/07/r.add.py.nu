  1: 
  2: def recursive_sum ( n ):
  3:     if n > 0:
  4:         return n + recursive_sum(n-1)
  5:     return 0
  6: 
  7: 
  8: print ( "Sumo of numbers 0..5 = {}".format(recursive_sum ( 5 ) ))
  9: 
 10: 
