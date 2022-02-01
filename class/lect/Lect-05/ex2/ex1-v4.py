
f = open ( "data1.txt", "r" )

# Read in all the lines of your file into a list of lines
lines_list = f.readlines()

f.close()

# Extract dimensions from first line. Cast values to integers from strings.
cols, rows = (int(val) for val in lines_list[0].split())
print ( "cols={}, rows={}".format( cols, rows ) )

# Do a double-nested list comprehension to get the rest of the data into your matrix
my_data = [[int(val) for val in line.split()] for line in lines_list[1:]]
print ( my_data )

