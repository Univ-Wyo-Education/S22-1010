def harmonic_sum(n):
  if n < 2:
    return 1
  else:
    return 1 / n + (harmonic_sum(n - 1))
    
nL = [ 4, 7, 11, 18 ]
for n in nL:
    print("harmonic sum for {} = {}".format(n,harmonic_sum(n)))
