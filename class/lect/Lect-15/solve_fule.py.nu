  1: # 5g + 17m = 30.5
  2: # 8g + 22m = 41
  3: 
  4: # Can be solved in NumPy using
  5: import numpy as np
  6: 
  7: coeffs  = np.array([[5, 17], [8, 22]])
  8: depvars = np.array([30.5, 41])
  9: solution = np.linalg.solve(coeffs, depvars)
 10: 
 11: # solution
 12: print ( solution )
 13: # array([1, 1.5])
 14: # means g=1, m=1.5 or 1 gallon per hour for generator,
 15: # 1.5 gallon per hour for main moter
