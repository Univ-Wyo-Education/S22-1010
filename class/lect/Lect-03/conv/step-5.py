# Step 5 - with function and a test.

import conv_mi_to_inch

print ( "Enter Miles" )

miles_str = input()
miles = float(miles_str)

inch = conv_mi_to_inch.mi_to_inch(miles)

print ( "inch = {}".format(inch) )
