
def double_values_in_list ( ll ):
    i = 0
    while ( i < len(ll) ):
        ll[i] = ll[i] * 2
        print ( "ll[{}] = {}".format( i, ll[i] ) )

    return ll



# Automated Test
if __name__ == "__main__":
    n_err = 0
    ll = [ 1, 2, 3 ]
    x = double_values_in_list ( ll )
    if x[0] != 2:
        n_err = n_err + 1
        print ( "Error: Test 1: conversion not working, expected {} got {}".format (  2, x[0] ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

