def mi_to_km ( mi):
	conv = 1.62
	return ( mi * conv )

mi = 3
j = mi_to_km (mi )
if j != 4.86:
	print ( "it's broken")
else:
	print ("Yea it worked!")