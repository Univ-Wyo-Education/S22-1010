
# revers will reverse a string, putting the last character first etc.
def reverse(s):
    i = len(s)-1
    o = ""
    while ( i >= 0 ):
        o = o + s[i]
        i = i - 1
    return ( o )


# Automated Test
if __name__ == "__main__":
    n_err = 0
    x = reverse ( "The quick brown fox jumps over the lazy dog." )
    expect = ".god yzal eht revo spmuj xof nworb kciuq ehT"
    if x != expect:
        n_err = n_err + 1
        print ( "Error: Test 1: conversion not working, expected {} got {}".format (  expect, x ) )
    x = reverse ( "" )
    if x != "":
        n_err = n_err + 1
        print ( "Error: Test 2: conversion not working, expected ->{}<- got ->{}<-".format ( "", x ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

