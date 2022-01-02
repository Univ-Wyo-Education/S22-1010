
def quick_sort(array):
    if len(array) < 2:
        return array
    else:
        point = array[0]
        less = quick_sort([i for i in array if i < point])
        greater = quick_sort([i for i in array if i > point])
        return less + [point] + greater

arr = [ 1, 4, 2, 3, 5 ]
print ( arr );

sarr = quick_sort ( arr )
print ( sarr );

print ( "That's All Folks..." )
