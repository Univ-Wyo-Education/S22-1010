
# Step 5 - with function and a test.

import mi_to_km

print ( "Enter Miles" )

miles_str = input()
miles = int(miles_str)

km = mi_to_km.mi_to_km(miles)

print ( "km = {}".format(km) )
