
with open ( "data1.txt" ) as f:
    data = f.readline()
    f.close()

    print ( "->{}<-".format(data))

