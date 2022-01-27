# Author: Philip Schlump
# Email: pschlump@uwyo.edu

"""
This is a comment
that is on more than 
one line
"""

# Main program to read in values and convert from miles (mi) to kilometers (inch)

# Step 6 - with function and a test.

import conv_mi_to_inch

print ( "Enter Miles" )

miles_str = input()
miles = float(miles_str)

inch = conv_mi_to_inch.mi_to_inch(miles)

print ( "inch = {}".format(inch) )
