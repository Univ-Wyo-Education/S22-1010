  1: class Vehicle:
  2: 
  3:     """ this is a constructor """
  4:     def __init__ ( self, manufacturer, vtype, year ):
  5:         self.year = year    
  6:         self.vtype = vtype    
  7:         self.manufacturer = manufacturer    
  8:         self.odometer = 0
  9: 
 10: 
 11:     """ this is a Method """
 12:     def SetMilage ( self, n ):
 13:         if n < 0 :
 14:             print ( "Error: can't take milage off" )
 15:         else:
 16:             self.odomoter = self.odomoter + n
 17: 
 18:     """ Print out the class """
 19:     def __str__ ( self ) :
 20:         return ( f"Vehicle: {self.vtype} built in {self.year} by {self.manufacturer}" )
 21: 
 22: v1 = Vehicle( 'Tonka', 'truck', 2020 )
 23: v2 = Vehicle( 'NASA', 'moon rover', 1969 )
 24: 
 25: print ( f"v1 = {v1}" )
 26: print ( f"v2 = {v2}" )
