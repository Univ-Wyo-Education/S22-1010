  1: 
  2: def quick_sort(array):
  3:     if len(array) < 2:
  4:         return array
  5:     else:
  6:         point = array[0]
  7:         less = quick_sort([i for i in array if i < point])
  8:         greater = quick_sort([i for i in array if i > point])
  9:         return less + [point] + greater
 10: 
 11: arr = [ 1, 4, 2, 3, 5 ]
 12: print ( arr );
 13: 
 14: sarr = quick_sort ( arr )
 15: print ( sarr );
 16: 
 17: print ( "That's All Folks..." )
