def calc_factorial(x):
    # A recursive function to find the factorial of a number
    if x <= 1:
        return 1
    else:
        return (x * calc_factorial(x-1))

if __name__ == "__main__": 
    num = 5
    print("The factorial of", num, "is", calc_factorial(num))        

    err = False
    v = calc_factorial(num) 
    if v != 120:
        err = True
        print ( "Incorrect result: {n}! Expected {good} got {bad}".format(n=num, good=120, bad=v))

    if not err :
        print ( "PASS" )
    else :
        print ( "FAIL" )
