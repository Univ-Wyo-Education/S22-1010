  1: 
  2: f = open ( "data1.txt", "r" )
  3: 
  4: # Read in all the lines of your file into a list of lines
  5: lines_list = f.readlines()
  6: 
  7: f.close()
  8: 
  9: # Extract dimensions from first line. Cast values to integers from strings.
 10: cols, rows = (int(val) for val in lines_list[0].split())
 11: print ( "cols={}, rows={}".format( cols, rows ) )
 12: 
 13: # Do a double-nested list comprehension to get the rest of the data into your matrix
 14: my_data = [[int(val) for val in line.split()] for line in lines_list[1:]]
 15: print ( my_data )
 16: 
