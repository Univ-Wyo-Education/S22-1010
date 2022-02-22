
# feet_to_in converts from feet as an to inches.
def feet_to_in ( feet ):
    conv = 12
    inches = feet * conv
    return (inches)

# Automated Test
if __name__ == "__main__":
    n_err = 0
    x = feet_to_in ( 3 )
    if x !=  36:
        n_err = n_err + 1
        print ( "Error: Test 1: conversion not working, expected {} got {}".format (  36, x ) )
    x = feet_to_in ( 0 )
    if x != 0:
        n_err = n_err + 1
        print ( "Error: Test 2: conversion not working, expected {} got {}".format ( 0, x ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

