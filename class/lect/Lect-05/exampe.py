# in_to_tb converts from inches as an integer or float to tennis ball units (tb).  
def in_to_tb ( inch ):
    conv = 19938124800
    tb = inch / conv
    return (tb)

# Automated Test
if __name__ == "__main__":
    n_err = 0
    x = in_to_tb ( 865370 * 5280 * 12 )
    if x != 2.75: # 
        n_err = n_err + 1
        print ( "Error: Test 1: conversion not working, expected {} got {}".
                format (  190080.0, x ) )  # TODO
    x = in_to_tb ( 0 )
    if x != 0:
        n_err = n_err + 1
        print ( "Error: Test 2: conversion not working, expected {} got {}".
                format ( 0, x ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )
