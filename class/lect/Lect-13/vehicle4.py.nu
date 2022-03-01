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
 26: class Airplane(Vehicle):
 27: 
 28:     """ this is a constructor """
 29:     def __init__ ( self, manufacturer, vtype, year, wingspan, maxSpeed ):
 30:         super().__init__( manufacturer, vtype, year )
 31:         self.wingspan = wingspan    
 32:         self.maxSpeed = maxSpeed
 33: 
 34:     """ Print out the class """
 35:     def __str__ ( self ) :
 36:         return ( f"Vehicle/Airplane: {self.vtype} built in {self.year} by {self.manufacturer} milage {self.odometer} Max Speed {self.maxSpeed} wingspan {self.wingspan}" )
 37: 
 38: class Auto(Vehicle):
 39: 
 40:     """ this is a constructor """
 41:     def __init__ ( self, manufacturer, vtype, year, maxSpeed ):
 42:         super().__init__( manufacturer, vtype, year )
 43:         self.maxSpeed = maxSpeed
 44: 
 45:     """ Print out the class """
 46:     def __str__ ( self ) :
 47:         return ( f"Vehicle/Automobile: {self.vtype} built in {self.year} by {self.manufacturer} milage {self.odometer} Max Speed {self.maxSpeed}" )
 48: 
 49: 
 50: 
 51: 
 52: 
 53: 
 54: 
 55: 
 56: 
 57: 
 58: v1 = Auto( 'Tonka', 'truck', 2020, 2 )
 59: v2 = Auto( 'NASA', 'moon rover', 1969, 2 )
 60: v3 = Airplane( 'Piper', 'Cherokee', 1969, 32, 185 )
 61: v4 = Airplane( 'Pliatus', 'PC 12 NC', 1969, 41, 581 )
 62: 
 63: print ( f"v1 = {v1}" )
 64: print ( f"v2 = {v2}" )
 65: print ( f"v3 = {v3}" )
 66: print ( f"v4 = {v4}" )
 67: 
 68: v2.SetMilage(2)
 69: # v4.SetMilage(35200)
 70: 
 71: print ( f"v2 = {v2}" )
