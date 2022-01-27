  1: # Author: Philip Schlump
  2: # Email: pschlump@uwyo.edu
  3: 
  4: """
  5: This is a comment
  6: that is on more than 
  7: one line
  8: """
  9: 
 10: # Main program to read in values and convert from miles (mi) to kilometers (inch)
 11: 
 12: # Step 6 - with function and a test.
 13: 
 14: import conv_mi_to_inch
 15: 
 16: print ( "Enter Miles" )
 17: 
 18: miles_str = input()
 19: miles = float(miles_str)
 20: 
 21: inch = conv_mi_to_inch.mi_to_inch(miles)
 22: 
 23: print ( "inch = {}".format(inch) )
