  1: # Example of multipying 2 matricies in Python
  2: 
  3: # 3x3 matrix
  4: X = [[12,7,3],
  5:      [4 ,5,6],
  6:      [7 ,8,9]]
  7: # 3x4 matrix
  8: Y = [[5,8,1,2],
  9:      [6,7,3,0]]
 10: # result is 3x4
 11: result = [[0,0,0,0],
 12:           [0,0,0,0],
 13:           [0,0,0,0]]
 14: 
 15: # iterate through rows of X
 16: for i in range(len(X)):
 17:    # iterate through columns of Y
 18:    for j in range(len(Y[0])):
 19:        # iterate through rows of Y
 20:        for k in range(len(Y)):
 21:            result[i][j] += X[i][k] * Y[k][j]
 22: 
 23: a = "["
 24: com = ","
 25: for i in range(len(result)):
 26:    if i+1 == len(result):
 27:        com = "]"
 28:    print("{}{}{}".format(a,result[i],com))
 29:    a = " "
