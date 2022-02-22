  1: 
  2: # revers will reverse a string, putting the last character first etc.
  3: def reverse(s):
  4:     i = len(s)-1
  5:     o = ""
  6:     while ( i >= 0 ):
  7:         o = o + s[i]
  8:         i = i - 1
  9:     return ( o )
 10: 
 11: 
 12: # Automated Test
 13: if __name__ == "__main__":
 14:     n_err = 0
 15:     x = reverse ( "The quick brown fox jumps over the lazy dog." )
 16:     expect = ".god yzal eht revo spmuj xof nworb kciuq ehT"
 17:     if x != expect:
 18:         n_err = n_err + 1
 19:         print ( "Error: Test 1: conversion not working, expected {} got {}".format (  expect, x ) )
 20:     x = reverse ( "" )
 21:     if x != "":
 22:         n_err = n_err + 1
 23:         print ( "Error: Test 2: conversion not working, expected ->{}<- got ->{}<-".format ( "", x ) )
 24: 
 25:     if n_err == 0 :
 26:         print ( "PASS" )
 27:     else:
 28:         print ( "FAILED" )
 29: 
