  1: # Step 5 - with function and a test.
  2: 
  3: import conv_mi_to_inch
  4: 
  5: print ( "Enter Miles" )
  6: 
  7: miles_str = input()
  8: miles = float(miles_str)
  9: 
 10: inch = conv_mi_to_inch.mi_to_inch(miles)
 11: 
 12: print ( "inch = {}".format(inch) )
