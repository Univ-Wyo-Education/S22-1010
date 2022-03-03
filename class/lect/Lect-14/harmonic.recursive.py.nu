  1: def harmonic_sum(n):
  2:   if n < 2:
  3:     return 1
  4:   else:
  5:     return 1 / n + (harmonic_sum(n - 1))
  6:     
  7: nL = [ 4, 7, 11, 18 ]
  8: for n in nL:
  9:     print("harmonic sum for {} = {}".format(n,harmonic_sum(n)))
