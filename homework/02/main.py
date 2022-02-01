
# Step 5 - with function and a test.

import conv

print ( "Enter Miles" )

miles_str = input()
miles = int(miles_str)

km = conv.mi_to_km(miles)

print ( "km = {}".format(km) )
