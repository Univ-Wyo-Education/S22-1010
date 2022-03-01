  1: 
  2: class Vehicle:
  3: 
  4:     """ this is a constructor """
  5:     def __init__ ( self, manufacturer, vtype, year ):
  6:         self.year = year    
  7:         self.vtype = vtype    
  8:         self.manufacturer = manufacturer    
  9:         self.odometer = 0
 10: 
 11: 
 12:     """ this is a Method """
 13:     def SetMilage ( self, n ):
 14:         if n < 0 :
 15:             print ( "Error: can't take milage off" )
 16:         else:
 17:             self.odomoter = self.odomoter + n
 18: 
 19: v1 = Vehicle( 'Tonka', 'truck', 2020 )
 20: v2 = Vehicle( 'NASA', 'moon rover', 1969 )
 21: 
 22: print ( f"v1 = {v1}" )
 23: print ( f"v2 = {v2}" )
