  1: 
  2: # Step 5 
  3: # Author : Philip Schlump
  4: 
  5: import mi_to_km
  6: 
  7: print ( "Enter Miles" )
  8: mi = input()
  9: mi = int(mi)
 10: 
 11: km = mi_to_km.mi_to_km ( mi )
 12: 
 13: print ("{} miles is {} km".format(mi,km) )
 14: 
