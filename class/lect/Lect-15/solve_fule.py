# 5g + 17m = 30.5
# 8g + 22m = 41

# Can be solved in NumPy using
import numpy as np

coeffs  = np.array([[5, 17], [8, 22]])
depvars = np.array([30.5, 41])
solution = np.linalg.solve(coeffs, depvars)

# solution
print ( solution )
# array([1, 1.5])
# means g=1, m=1.5 or 1 gallon per hour for generator,
# 1.5 gallon per hour for main moter
