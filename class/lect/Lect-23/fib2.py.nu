  1: #!/Users/philip/opt/anaconda3/bin/python
  2: 
  3: # Function for nth fibonacci
  4: # number - Dynamic Programming
  5: # Taking 1st two fibonacci numbers as 0 and 1
  6: FibArray = [0, 1]
  7: 
  8: def fibonacci(n):
  9: 
 10:     # Check is n is less
 11:     # than 0
 12:     if n <= 0:
 13:         print("Incorrect input")
 14: 
 15:     # Check is n is less
 16:     # than len(FibArray)
 17:     elif n <= len(FibArray):
 18:         return FibArray[n - 1]
 19:     else:
 20:         temp_fib = fibonacci(n - 1) + fibonacci(n - 2)
 21:         FibArray.append(temp_fib)
 22:         return temp_fib
 23: 
 24: # Driver Program
 25: print(fibonacci(40))
 26: 
