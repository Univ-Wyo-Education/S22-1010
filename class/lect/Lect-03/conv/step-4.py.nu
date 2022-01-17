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
