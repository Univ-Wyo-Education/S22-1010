  1: # Author: Philip Schlump
  2: # Email: pschlump@uwyo.edu
  3: 
  4: # Main program to read in values and convert from miles (mi) to kilometers (inch)
  5: 
  6: # Step 6 - with function and a test.
  7: 
  8: import conv_mi_to_inch
  9: 
 10: print ( "Enter Miles" )
 11: 
 12: miles_str = input()
 13: miles = float(miles_str)
 14: 
 15: inch = conv_mi_to_inch.mi_to_inch(miles)
 16: 
 17: print ( "inch = {}".format(inch) )
