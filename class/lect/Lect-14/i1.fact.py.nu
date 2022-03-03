  1: def factorial_iterative(x):
  2:     if x <= 1:
  3:         return 1
  4:     nn = 2
  5:     rv = 1
  6:     while ( nn <= x ):
  7:         rv = rv * nn
  8:     return rv
  9: 
 10: if __name__ == "__main__": 
 11:     num = 5
 12:     print("The factorial of", num, "is", factorial_iterative(num))        
 13: 
 14:     err = False
 15:     v = factorial_iterative(num) 
 16:     if v != 120:
 17:         err = True
 18:         print ( "Incorrect result: {n}! Expected {good} got {bad}".format(n=num, good=120, bad=v))
 19: 
 20:     if not err :
 21:         print ( "PASS" )
 22:     else :
 23:         print ( "FAIL" )
