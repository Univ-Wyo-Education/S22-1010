     1    
     2    # mi_to_km converts from miles as an integer or float to kilometers.  
     3    def mi_to_km ( mi ):
     4        conv = 1.60934
     5        km = mi * conv
     6        return (km)
     7    
     8    # Automated Test
     9    if __name__ == "__main__":
    10        n_err = 0
    11        x = mi_to_km ( 3 )
    12        if x !=  4.82802:
    13            n_err = n_err + 1
    14            print ( "Error: Test 1: conversion not working, expected {} got {}".format (  4.82802, x ) )
    15        x = mi_to_km ( 0 )
    16        if x != 0:
    17            n_err = n_err + 1
    18            print ( "Error: Test 2: conversion not working, expected {} got {}".format ( 0, x ) )
    19    
    20        if n_err == 0 :
    21            print ( "PASS" )
    22        else:
    23            print ( "FAILED" )
    24    
