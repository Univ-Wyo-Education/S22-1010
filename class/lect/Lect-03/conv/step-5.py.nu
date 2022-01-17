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
