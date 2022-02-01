
# km_to_mi converts from kilometers as an to miles.  
def km_to_mi ( km ):
    conv = 1.60934
    mi = km / conv
    return (mi)

# Automated Test
if __name__ == "__main__":
    n_err = 0
    x = km_to_mi ( 4.82801 )
    if round(x) !=  3:
        n_err = n_err + 1
        print ( "Error: Test 1: conversion not working, expected {} got {}".
                format (  3, x ) )
    x = km_to_mi ( 0 )
    if x != 0:
        n_err = n_err + 1
        print ( "Error: Test 2: conversion not working, expected {} got {}".
                format ( 0, x ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

