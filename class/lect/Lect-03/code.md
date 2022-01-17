

<style>
.pagebreak { page-break-before: always; }
.half { height: 200px; }
</style>
<style>
.pagebreak { page-break-before: always; }
.half { height: 200px; }
.markdown-body {
	font-size: 12px;
}
.markdown-body td {
	font-size: 12px;
}
</style>


## Step 1

Convert from miles to kilometers.

Conversion generally is ( ( X + k1 ) * C ) + k2

In our case k1 and k2 are 0.  So we just get X * C

### Demo - lookup conversion from miles to kilometers

```
  1: # Step 1 - constants
  2: 
  3: miles = 3
  4: conv = 1.60934
  5: km = miles * conv

```

### Demo - of this as a visualization



## Step 2 - Input with error

```
  1: # Step 2 - will error with type error
  2: 
  3: print ( "Enter Miles" )
  4: 
  5: miles = input()
  6: 
  7: conv = 1.60934
  8: km = miles * conv
  9: 
 10: print ( "km = {}".format(km) )

```

## Step 3 - Fixed error / Types

```
  1: # Step 3 - inline after fixing type
  2: 
  3: print ( "Enter Miles" )
  4: 
  5: miles_str = input()
  6: miles = int(miles_str)
  7: conv = 1.60934
  8: km = miles * conv
  9: 
 10: print ( "km = {}".format(km) )

```

## Step 4 - Make a function

```
  1: # Step 4 - After making a function
  2: 
  3: def mi_to_km ( mi ):
  4:     conv = 1.60934
  5:     km = mi * conv
  6:     return (km)
  7: 
  8: print ( "Enter Miles" )
  9: 
 10: miles_str = input()
 11: miles = int(miles_str)
 12: 
 13: km = mi_to_km(miles)
 14: 
 15: print ( "km = {}".format(km) )

```

## Step 5 - Make Reusable Code

step-5.py:

```
  1: # Step 5 - with function and a test.
  2: 
  3: import mi_to_km
  4: 
  5: print ( "Enter Miles" )
  6: 
  7: miles_str = input()
  8: miles = int(miles_str)
  9: 
 10: km = mi_to_km.mi_to_km(miles)
 11: 
 12: print ( "km = {}".format(km) )

```

conv/mi_to_km.py:

```
  1: # mi_to_km converts from miles as an integer or float to kilometers.  
  2: def mi_to_km ( mi ):
  3:     conv = 1.60934
  4:     km = mi * conv
  5:     return (km)
  6: 
  7: # Automated Test
  8: if __name__ == "__main__":
  9:     n_err = 0
 10:     x = mi_to_km ( 3 )
 11:     if x !=  4.82802:
 12:         n_err = n_err + 1
 13:         print ( "Error: Test 1: conversion not working, expected {} got {}".
 14:                 format (  4.82802, x ) )
 15:     x = mi_to_km ( 0 )
 16:     if x != 0:
 17:         n_err = n_err + 1
 18:         print ( "Error: Test 2: conversion not working, expected {} got {}".
 19:                 format ( 0, x ) )
 20: 
 21:     if n_err == 0 :
 22:         print ( "PASS" )
 23:     else:
 24:         print ( "FAILED" )

```

## Step 6 - Add documentation

This is really a little step in this program - but a really important one for this class..

```
  1: # Author: Philip Schlump
  2: # Email: pschlump@uwyo.edu
  3: 
  4: # Main program to read in values and convert from miles (mi) to kilometers (km)
  5: 
  6: # Step 6 - with function and a test.
  7: 
  8: import mi_to_km
  9: 
 10: print ( "Enter Miles" )
 11: 
 12: miles_str = input()
 13: miles = int(miles_str)
 14: 
 15: km = mi_to_km.mi_to_km(miles)
 16: 
 17: print ( "km = {}".format(km) )

```

