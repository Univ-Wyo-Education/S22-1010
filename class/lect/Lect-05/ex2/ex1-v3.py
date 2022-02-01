
with open ( "data1.txt" ) as f:
    data = f.readlines()
    f.close()

    print ( "->{}<-".format(data))

