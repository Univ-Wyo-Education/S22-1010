  1: 
  2: print("At Top Of Question 1")
  3: 
  4: # Create a Dicctionay to Store the Results from previous 
  5: # recursive calls.
  6: fib_prev = {}
  7: 
  8: def fib ( n ):
  9:     global fib_prev     # Use global
 10:     print ( "At top of Fib, n = {}".format( n ) )      
 11:     # if we have previously calcualted a value for
 12:     # 'n' then return that value.
 13:     if n in fib_prev:   
 14:         return fib_prev[n]
 15: 
 16:     # if n == 0, then return 0, save result in 
 17:     # fib_prev
 18:     if n <= 0:
 19:         fib_prev[0] = 0
 20:         return 0
 21: 
 22:     # if n == 1, then return 1, save result in 
 23:     # fib_prev
 24:     if n == 1:
 25:         fib_prev[1] = 1
 26:         return 1
 27: 
 28:     # if n > 1, then recursivly calcualte value to
 29:     # return.  Save result in `fib_prev`
 30:     x = fib(n-1) + fib(n-2)
 31:     fib_prev[n] = x
 32:     return x
 33: 
 34: print ( "Fib of {} = {}".format( 3, fib ( 3 ) ) ) 
 35: 
