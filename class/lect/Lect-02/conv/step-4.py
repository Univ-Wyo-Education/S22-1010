
# Step 4 - After making a function

def mi_to_km ( mi ):
    conv = 1.60934
    km = mi * conv
    return (km)

print ( "Enter Miles" )

miles_str = input()
miles = int(miles_str)

km = mi_to_km(miles)

print ( "km = {}".format(km) )
