# Step 4 - After making a function

def mi_to_inch ( mi ):
    conv = 5280 * 12
    inch = mi * conv
    return (inch)

print ( "Enter Miles" )

miles_str = input()
miles = float(miles_str)

inch = mi_to_inch(miles)

print ( "inch = {}".format(inch) )
