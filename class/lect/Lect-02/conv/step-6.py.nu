     1    
     2    # Author: Philip Schlump
     3    # Email: pschlump@uwyo.edu
     4    
     5    # Main program to read in values and convert from miles (mi) to kilometers (km)
     6    
     7    # Step 5 - with function and a test.
     8    
     9    import mi_to_km
    10    
    11    print ( "Enter Miles" )
    12    
    13    miles_str = input()
    14    miles = int(miles_str)
    15    
    16    km = mi_to_km.mi_to_km(miles)
    17    
    18    print ( "km = {}".format(km) )
    19    
