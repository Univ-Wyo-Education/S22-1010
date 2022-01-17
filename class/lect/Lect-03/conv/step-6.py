# Author: Philip Schlump
# Email: pschlump@uwyo.edu

# Main program to read in values and convert from miles (mi) to kilometers (km)

# Step 6 - with function and a test.

import mi_to_km

print ( "Enter Miles" )

miles_str = input()
miles = int(miles_str)

km = mi_to_km.mi_to_km(miles)

print ( "km = {}".format(km) )
