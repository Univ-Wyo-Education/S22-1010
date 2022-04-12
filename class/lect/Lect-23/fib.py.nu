  1: #!/Users/philip/opt/anaconda3/bin/python
  2: 
  3: # Function for nth Fibonacci number
  4: def Fibonacci(n):
  5: 
  6:     # Check if input is 0 then it will
  7:     # print incorrect input
  8:     if n < 0:
  9:         print("Incorrect input")
 10: 
 11:     # Check if n is 0
 12:     # then it will return 0
 13:     elif n == 0:
 14:         return 0
 15: 
 16:     # Check if n is 1,2
 17:     # it will return 1
 18:     elif n == 1 or n == 2:
 19:         return 1
 20: 
 21:     else:
 22:         return Fibonacci(n-1) + Fibonacci(n-2)
 23: 
 24: # Driver Program
 25: print(Fibonacci(40))
 26: 
