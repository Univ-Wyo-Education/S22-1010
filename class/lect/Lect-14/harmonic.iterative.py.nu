  1: def harmonic_sum(n):
  2:     hs = 0.0
  3:     for i in range(n):
  4:         hs = hs + 1/(i+1)
  5:     return hs
  6:  
  7: nL = [ 4, 7, 11, 18 ]
  8: for n in nL:
  9:     print("harmonic sum for {} is {}".format(n, harmonic_sum(n)))
 10: 
