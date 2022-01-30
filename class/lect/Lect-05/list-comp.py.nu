  1: 
  2: list1 = [ 4, 2, 20, 1,0,10,3 ]
  3: 
  4: l2 = [ i for i in list1 if i < 10 ]
  5: print ( l2 )
  6: 
  7: for i in range(10):
  8:     print i
  9: 
 10: sqr = [ i*i for i in range(10) ]
 11: sqr2 = [ i**2 for i in range(10) ]
 12: 
 13: obj = ["Even" if i%2==0 else "Odd" for i in range(10)]
 14: print(obj)
