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
 16:             self.odometer = self.odometer + n
 17: 
 18:     def GetMilage ( self ):
 19:         return self.odometer 
 20: 
 21:     """ Print out the class """
 22:     def __str__ ( self ) :
 23:         return ( f"Vehicle: {self.vtype} built in {self.year} by {self.manufacturer} milage {self.odometer}" )
 24: 
 25: v1 = Vehicle( 'Tonka', 'truck', 2020 )
 26: v2 = Vehicle( 'NASA', 'moon rover', 1969 )
 27: 
 28: print ( f"v1 = {v1}" )
 29: print ( f"v2 = {v2}" )
 30: 
 31: v2.SetMilage(2)
 32: 
 33: print ( f"v2 = {v2}" )
