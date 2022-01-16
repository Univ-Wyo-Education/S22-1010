     1    
     2    # Step 4 - After making a function
     3    
     4    def mi_to_km ( mi ):
     5        conv = 1.60934
     6        km = mi * conv
     7        return (km)
     8    
     9    print ( "Enter Miles" )
    10    
    11    miles_str = input()
    12    miles = int(miles_str)
    13    
    14    km = mi_to_km(miles)
    15    
    16    print ( "km = {}".format(km) )
