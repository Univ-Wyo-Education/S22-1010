# Step 3 - inline after fixing type

print ( "Enter Miles" )

miles_str = input()
miles = float(miles_str)
conv = 5280 * 12
inch = miles * conv

print ( "inch = {}".format(inch) )
