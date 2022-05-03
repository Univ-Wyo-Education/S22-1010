
print("At Top Of Question 1")

# Create a Dicctionay to Store the Results from previous 
# recursive calls.
fib_prev = {}

def fib ( n ):
	global fib_prev     # Use global
	print ( "At top of Fib, n = {}".format( n ) )      
    # if we have previously calcualted a value for
    # 'n' then return that value.
	if n in fib_prev:   
		return fib_prev[n]

    # if n == 0, then return 0, save result in 
    # fib_prev
	if n <= 0:
		fib_prev[0] = 0
		return 0

    # if n == 1, then return 1, save result in 
    # fib_prev
	if n == 1:
		fib_prev[1] = 1
		return 1

    # if n > 1, then recursivly calcualte value to
    # return.  Save result in `fib_prev`
	x = fib(n-1) + fib(n-2)
	fib_prev[n] = x
	return x

print ( "Fib of {} = {}".format( 6, fib ( 6 ) ) ) 

