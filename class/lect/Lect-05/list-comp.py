list1 = [ 4, 2, 20, 1,0,10,3 ]

l2 = [ i for i in list1 if i < 10 ]
print ( l2 )

for i in range(10):
	print i

sqr = [ i*i for i in range(10) ]
sqr2 = [ i**2 for i in range(10) ]

obj = ["Even" if i%2==0 else "Odd" for i in range(10)]
print(obj)
