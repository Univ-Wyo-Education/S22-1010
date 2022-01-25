  1: # Step 3 - inline after fixing type
  2: 
  3: print ( "Enter Miles" )
  4: 
  5: miles_str = input()
  6: miles = float(miles_str)
  7: conv = 5280 * 12
  8: inch = miles * conv
  9: 
 10: print ( "inch = {}".format(inch) )
