def factorial_iterative(x):
    if x <= 1:
        return 1
    nn = 2
    rv = 1
    while ( nn <= x ):
        rv = rv * nn
    return rv

if __name__ == "__main__": 
    num = 5
    print("The factorial of", num, "is", factorial_iterative(num))        

    err = False
    v = factorial_iterative(num) 
    if v != 120:
        err = True
        print ( "Incorrect result: {n}! Expected {good} got {bad}".format(n=num, good=120, bad=v))

    if not err :
        print ( "PASS" )
    else :
        print ( "FAIL" )
