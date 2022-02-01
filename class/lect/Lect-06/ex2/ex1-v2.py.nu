  1: 
  2: with open ( "data1.txt" ) as f:
  3:     data = f.readline()
  4:     f.close()
  5: 
  6:     print ( "->{}<-".format(data))
  7: 
