def harmonic_sum(n):
    hs = 0.0
    for i in range(n):
        hs = hs + 1/(i+1)
    return hs
 
nL = [ 4, 7, 11, 18 ]
for n in nL:
    print("harmonic sum for {} is {}".format(n, harmonic_sum(n)))

