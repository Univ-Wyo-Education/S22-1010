  1: # Step 4 - After making a function
  2: 
  3: def mi_to_inch ( mi ):
  4:     conv = 5280 * 12
  5:     inch = mi * conv
  6:     return (inch)
  7: 
  8: print ( "Enter Miles" )
  9: 
 10: miles_str = input()
 11: miles = float(miles_str)
 12: 
 13: inch = mi_to_inch(miles)
 14: 
 15: print ( "inch = {}".format(inch) )
