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
