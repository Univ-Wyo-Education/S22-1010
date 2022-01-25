# mi_to_in converts from miles as an integer or float to inches.  
def mi_to_inch ( mi ):
    conv = 5280 * 12
    inch = mi * conv
    return (inch)

# Automated Test
if __name__ == "__main__":
    n_err = 0
    x = mi_to_inch ( 3 )
    if x !=  190080.0: # is equal to 5280 * 12 * 3
        n_err = n_err + 1
        print ( "Error: Test 1: conversion not working, expected {} got {}".
                format (  4.82802, x ) )
    x = mi_to_inch ( 0 )
    if x != 0:
        n_err = n_err + 1
        print ( "Error: Test 2: conversion not working, expected {} got {}".
                format ( 0, x ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )
