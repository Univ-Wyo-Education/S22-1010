  1: list_of_list = [
  2:     "Fox Socks",
  3:     "Box Knox",
  4:     "Knox in Box",
  5:     "Fox in Socks",    
  6: ]
  7: cnt = 0
  8: for s in list_of_list:
  9:     t = s.split()
 10:     cnt = cnt + len(t)
 11: print ( "total {}".format(cnt) )
