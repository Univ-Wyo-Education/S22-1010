
# Convert from feet to yards
def feet_to_yards ( feet ):
    conv = 3
    yards = feet * conv
    return (feet)

# Automated Test
if __name__ == "__main__":
    n_err = 0
    x = feet_to_yards ( 3 )
    if x !=  1:
        n_err = n_err + 1
        print ( "Error: Test 1: conversion not working, expected {} got {}".format (  1, x ) )
    x = feet_to_yards ( 0 )
    if x != 0:
        n_err = n_err + 1
        print ( "Error: Test 2: conversion not working, expected {} got {}".format ( 0, x ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

