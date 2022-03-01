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
 25: class Airplane(Vehicle):
 26: 
 27:     """ this is a constructor """
 28:     def __init__ ( self, manufacturer, vtype, year, wingspan, maxSpeed ):
 29:         super().__init__( manufacturer, vtype, year )
 30:         self.wingspan = wingspan    
 31:         self.maxSpeed = maxSpeed
 32: 
 33:     """ Print out the class """
 34:     def __str__ ( self ) :
 35:         return ( f"Vehicle/Airplane: {self.vtype} built in {self.year} by {self.manufacturer} milage {self.odometer} Max Speed {self.maxSpeed} wingspan {self.wingspan}" )
 36: 
 37: class Auto(Vehicle):
 38: 
 39:     """ this is a constructor """
 40:     def __init__ ( self, manufacturer, vtype, year, maxSpeed ):
 41:         super().__init__( manufacturer, vtype, year )
 42:         self.maxSpeed = maxSpeed
 43: 
 44:     """ Print out the class """
 45:     def __str__ ( self ) :
 46:         return ( f"Vehicle/Automobile: {self.vtype} built in {self.year} by {self.manufacturer} milage {self.odometer} Max Speed {self.maxSpeed}" )
 47: 
 48: 
 49: v1 = Auto( 'Tonka', 'truck', 2020, 2 )
 50: v2 = Auto( 'NASA', 'moon rover', 1969, 2 )
 51: v3 = Airplane( 'Piper', 'Cherokee', 1969, 32, 185 )
 52: v4 = Airplane( 'Pliatus', 'PC 12 NC', 1969, 41, 581 )
 53: 
 54: print ( f"v1 = {v1}" )
 55: print ( f"v2 = {v2}" )
 56: print ( f"v3 = {v3}" )
 57: print ( f"v4 = {v4}" )
 58: 
 59: v2.SetMilage(2)
 60: # v4.SetMilage(35200)
 61: 
 62: print ( f"v2 = {v2}" )
