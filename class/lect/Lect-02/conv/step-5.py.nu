     1    
     2    # Step 5 - with function and a test.
     3    
     4    import mi_to_km
     5    
     6    print ( "Enter Miles" )
     7    
     8    miles_str = input()
     9    miles = int(miles_str)
    10    
    11    km = mi_to_km.mi_to_km(miles)
    12    
    13    print ( "km = {}".format(km) )
