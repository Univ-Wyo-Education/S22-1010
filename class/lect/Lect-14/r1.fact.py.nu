  1: def calc_factorial(x):
  2:     # A recursive function to find the factorial of a number
  3:     if x <= 1:
  4:         return 1
  5:     else:
  6:         return (x * calc_factorial(x-1))
  7: 
  8: if __name__ == "__main__": 
  9:     num = 5
 10:     print("The factorial of", num, "is", calc_factorial(num))        
 11: 
 12:     err = False
 13:     v = calc_factorial(num) 
 14:     if v != 120:
 15:         err = True
 16:         print ( "Incorrect result: {n}! Expected {good} got {bad}".format(n=num, good=120, bad=v))
 17: 
 18:     if not err :
 19:         print ( "PASS" )
 20:     else :
 21:         print ( "FAIL" )
