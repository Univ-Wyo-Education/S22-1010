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
 17:             self.odometer = self.odometer + n
 18: 
 19:     def GetMilage ( self ):
 20:         return self.odometer 
 21: 
 22:     """ Print out the class """
 23:     def __str__ ( self ) :
 24:         return ( f"Vehicle: {self.vtype} built in {self.year} by {self.manufacturer} milage {self.odometer}" )
 25: 
 26: v1 = Vehicle( 'Tonka', 'truck', 2020 )
 27: v2 = Vehicle( 'NASA', 'moon rover', 1969 )
 28: 
 29: print ( f"v1 = {v1}" )
 30: print ( f"v2 = {v2}" )
 31: 
 32: v2.SetMilage(2)
 33: 
 34: print ( f"v2 = {v2}" )
