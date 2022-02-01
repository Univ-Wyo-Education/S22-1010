  1: list1 = [ 4, 2, 20, 1,0,10,3 ]
  2: 
  3: l2 = [ i for i in list1 if i < 10 ]
  4: print ( l2 )
  5: 
  6: for i in range(10):
  7:     print i
  8: 
  9: sqr = [ i*i for i in range(10) ]
 10: sqr2 = [ i**2 for i in range(10) ]
 11: 
 12: obj = ["Even" if i%2==0 else "Odd" for i in range(10)]
 13: print(obj)
