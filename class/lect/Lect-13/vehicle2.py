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
            self.odomoter = self.odomoter + n

    """ Print out the class """
    def __str__ ( self ) :
        return ( f"Vehicle: {self.vtype} built in {self.year} by {self.manufacturer}" )

v1 = Vehicle( 'Tonka', 'truck', 2020 )
v2 = Vehicle( 'NASA', 'moon rover', 1969 )

print ( f"v1 = {v1}" )
print ( f"v2 = {v2}" )
