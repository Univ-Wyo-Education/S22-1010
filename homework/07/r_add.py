
def recursive_sum ( n ):
    if n <= 0:
        return 0
    return n + recursive_sum(n-1)



# Automated Test
if __name__ == "__main__":
    n_err = 0
    x = recursive_sum ( 5 )
    if x !=  15:
        n_err = n_err + 1
        print ( "Error: Test 1: sum not working, expected {} got {}".format (  15, x ) )
    x = recursive_sum ( 0 )
    if x != 0:
        n_err = n_err + 1
        print ( "Error: Test 2: sum conversion not working, expected {} got {}".format ( 0, x ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

