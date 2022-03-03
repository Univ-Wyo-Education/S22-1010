

<style>
.pagebreak { page-break-before: always; }
.half { height: 200px; }
</style>
<style>
.pagebreak { page-break-before: always; }
.half { height: 200px; }
.markdown-body {
	font-size: 12px;
}
.markdown-body td {
	font-size: 12px;
}
</style>


# Lecture 19 - Recursion

Why Recursion?

![800px-Fractal_Broccoli.jpg](800px-Fractal_Broccoli.jpg)

![800px-Frost_patterns_2.jpg](800px-Frost_patterns_2.jpg)


![Cauliflower_Fractal_AVM.jpg](Cauliflower_Fractal_AVM.jpg)

![FRACTAL-3d-FLOWER.jpg](FRACTAL-3d-FLOWER.jpg)

![fern.png](fern.png)

![tree.png](tree.png)

![weed.png](weed.png)


<div class="pagebreak"></div>

An example of a recursive addition

Let's define the sum of values from 0 to n as

```
    sum(n) = { 0 if n <= 0
             { n + sum(n-1) if n > 0
```

Then we can build a function that matches this.

```
  1: def recursive_sum ( n ):
  2:     if n <= 0:
  3:         return 0
  4:     return n + recursive_sum(n-1)
  5: 
  6: 
  7: 
  8: # Automated Test
  9: if __name__ == "__main__":
 10:     n_err = 0
 11:     x = recursive_sum ( 5 )
 12:     if x !=  15:
 13:         n_err = n_err + 1
 14:         print ( "Error: Test 1: sum not working, expected {} got {}".format (  15, x ) )
 15:     x = recursive_sum ( 0 )
 16:     if x != 0:
 17:         n_err = n_err + 1
 18:         print ( "Error: Test 2: sum conversion not working, expected {} got {}".format ( 0, x ) )
 19: 
 20:     if n_err == 0 :
 21:         print ( "PASS" )
 22:     else:
 23:         print ( "FAILED" )


```


What is a recursive function definition:

![01re.png](01re.png)

For a positive initeger:

```
    n! = n * (n-1) * ... * 2 * 1
```

or

```
    f(n) = n * (n-1) * ... * 2 * 1
```

or

```
    f(n) = n * f(n-1)
```

or

```
    f(n) = { n <= 1 : 1
           { n > 1  : n * f(n-1)
```

Now to Code:

```
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

```

Compare to an iterative version:


```
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

```


A better example is a fractal tree:


## Fibonacci Numbers

![Ammoniteplit.jpg](Ammoniteplit.jpg)

![1920px-FibonacciSpiral.svg.png](1920px-FibonacciSpiral.svg.png)

```
    fib(n) = { 0 : n = 0
             { 1 : n = 1
             { fib(n-1) + fib(n-2)
```


<div class="pagebreak"></div>

## Weed



```
  1: import turtle 
  2: 
  3: def tree(length,n):
  4:     if length < (length/n):
  5:            return
  6:     turtle.forward(length)
  7:     turtle.left(45)
  8:     tree(length * 0.5,length/n)
  9:     turtle.left(20)
 10:     tree(length * 0.5,length/n)
 11:     turtle.right(75)
 12:     tree(length * 0.5,length/n)
 13:     turtle.right(20)
 14:     tree(length * 0.5,length/n)
 15:     turtle.left(30)
 16:     turtle.backward(length)
 17:     return
 18: 
 19: turtle.left(90)
 20: turtle.backward(30)
 21: tree(200,4)
 22: 
 23: input("Press Enter to continue...")

```

<div class="pagebreak"></div>

# The Koch curve.

So a program to run the Koch curve:

```

```
