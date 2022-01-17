  1: 
  2: # Step 4 
  3: # Author : Philip Schlump
  4: 
  5: # mi_to_km convert miles to kilometers
  6: def mi_to_km ( mi ):
  7:     k = 1.69034
  8:     km = mi * k
  9:     return ( km )
 10: 
 11: print ( "Enter Miles" )
 12: mi = input()
 13: mi = int(mi)
 14: 
 15: km = mi_to_km ( mi )
 16: 
 17: print ("{} miles is {} km".format(mi,km) )
 18: 
