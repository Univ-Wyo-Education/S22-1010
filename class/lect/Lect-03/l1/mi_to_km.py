
# mi_to_km convert miles to kilometers
def mi_to_km ( mi ):
    k = 1.69034
    km = mi * k
    return ( km )

n_err = 0
if  __name__ == "__main__":
    n_err = 0
    x = mi_to_km (3)
    if x != 5.07102 :
        n_err = n_err + 1
        print ( "Failed test 1" )

if ( n_err == 0 ) :
    print ( "PASS" )
else:
    print ( "FAIL" )

