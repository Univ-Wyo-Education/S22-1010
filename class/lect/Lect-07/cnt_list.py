list_of_list = [
	"Fox Socks",
	"Box Knox",
	"Knox in Box",
	"Fox in Socks",	
]
cnt = 0
for s in list_of_list:
	t = s.split()
	cnt = cnt + len(t)
print ( "total {}".format(cnt) )
