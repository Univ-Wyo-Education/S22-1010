
# Step 4 
# Author : Philip Schlump

# mi_to_km convert miles to kilometers
def mi_to_km ( mi ):
    k = 1.69034
    km = mi * k
    return ( km )

print ( "Enter Miles" )
mi = input()
mi = int(mi)

km = mi_to_km ( mi )

print ("{} miles is {} km".format(mi,km) )

