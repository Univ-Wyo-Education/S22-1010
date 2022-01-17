
# Step 5 
# Author : Philip Schlump

import mi_to_km

print ( "Enter Miles" )
mi = input()
mi = int(mi)

km = mi_to_km.mi_to_km ( mi )

print ("{} miles is {} km".format(mi,km) )

