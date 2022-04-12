  1: import re
  2: 
  3: # regex = '^[a-z0-9]+[\._]?[a-z0-9]+[@]\w+[.]\w{2,3}$'
  4: regex = """^(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$"""
  5: 
  6: def check(email):
  7:     if(re.search(regex,email)):
  8:         return True
  9:     return False
 10: 
 11: if __name__ == '__main__':
 12: 
 13:     email = "rohit.gupta@mcnsolutions.net"
 14:     if check(email):
 15:         print ( 'email good 1' )
 16:     else:
 17:         print ( 'fail' )
 18: 
 19:     email = "praveen@c-sharpcorner.com"
 20:     if check(email):
 21:         print ( 'email good 2' );
 22:     else:
 23:         print ( 'fail' )
 24: 
 25:     email = "inform2atul@gmail.com"
 26:     if check(email):
 27:         print ( 'email good 3' );
 28:     else:
 29:         print ( 'fail' )
 30: 
 31:     email = "philip.j.schlump@protonmail.com"
 32:     if check(email):
 33:         print ( 'email good 4' );
 34:     else:
 35:         print ( 'fail' )
 36: 
 37:     email = "@philip.j.schlump@protonmail.com"
 38:     if check(email):
 39:         print ( 'fail, matched invalid address' )
 40:     else:
 41:         print ( 'email good 5' );
