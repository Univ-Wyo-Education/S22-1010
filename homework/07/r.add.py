
def recursive_sum ( n ):
    if n > 0:
        return n + recursive_sum(n-1)
    return 0


print ( "Sumo of numbers 0..5 = {}".format(recursive_sum ( 5 ) ))


