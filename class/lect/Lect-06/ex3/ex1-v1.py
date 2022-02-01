
with open ( "data1.txt" ) as f:
    data = f.read()
    f.close()

    print ( "->{}<-".format(data))

