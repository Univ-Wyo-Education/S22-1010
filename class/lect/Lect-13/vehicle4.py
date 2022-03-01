
class Vehicle:

    """ this is a constructor """
    def __init__ ( self, manufacturer, vtype, year ):
        self.year = year    
        self.vtype = vtype    
        self.manufacturer = manufacturer    
        self.odometer = 0


    """ this is a Method """
    def SetMilage ( self, n ):
        if n < 0 :
            print ( "Error: can't take milage off" )
        else:
            self.odometer = self.odometer + n

    def GetMilage ( self ):
        return self.odometer 

    """ Print out the class """
    def __str__ ( self ) :
        return ( f"Vehicle: {self.vtype} built in {self.year} by {self.manufacturer} milage {self.odometer}" )

class Airplane(Vehicle):

    """ this is a constructor """
    def __init__ ( self, manufacturer, vtype, year, wingspan, maxSpeed ):
        super().__init__( manufacturer, vtype, year )
        self.wingspan = wingspan    
        self.maxSpeed = maxSpeed

    """ Print out the class """
    def __str__ ( self ) :
        return ( f"Vehicle/Airplane: {self.vtype} built in {self.year} by {self.manufacturer} milage {self.odometer} Max Speed {self.maxSpeed} wingspan {self.wingspan}" )

class Auto(Vehicle):

    """ this is a constructor """
    def __init__ ( self, manufacturer, vtype, year, maxSpeed ):
        super().__init__( manufacturer, vtype, year )
        self.maxSpeed = maxSpeed

    """ Print out the class """
    def __str__ ( self ) :
        return ( f"Vehicle/Automobile: {self.vtype} built in {self.year} by {self.manufacturer} milage {self.odometer} Max Speed {self.maxSpeed}" )










v1 = Auto( 'Tonka', 'truck', 2020, 2 )
v2 = Auto( 'NASA', 'moon rover', 1969, 2 )
v3 = Airplane( 'Piper', 'Cherokee', 1969, 32, 185 )
v4 = Airplane( 'Pliatus', 'PC 12 NC', 1969, 41, 581 )

print ( f"v1 = {v1}" )
print ( f"v2 = {v2}" )
print ( f"v3 = {v3}" )
print ( f"v4 = {v4}" )

v2.SetMilage(2)
# v4.SetMilage(35200)

print ( f"v2 = {v2}" )
