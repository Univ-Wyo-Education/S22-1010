import re

# regex = '^[a-z0-9]+[\._]?[a-z0-9]+[@]\w+[.]\w{2,3}$'
regex = """^(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$"""

def check(email):
    if(re.search(regex,email)):
        return True
    return False

if __name__ == '__main__':

    email = "rohit.gupta@mcnsolutions.net"
    if check(email):
        print ( 'email good 1' )
    else:
        print ( 'fail' )

    email = "praveen@c-sharpcorner.com"
    if check(email):
        print ( 'email good 2' );
    else:
        print ( 'fail' )

    email = "inform2atul@gmail.com"
    if check(email):
        print ( 'email good 3' );
    else:
        print ( 'fail' )

    email = "philip.j.schlump@protonmail.com"
    if check(email):
        print ( 'email good 4' );
    else:
        print ( 'fail' )

    email = "@philip.j.schlump@protonmail.com"
    if check(email):
        print ( 'fail, matched invalid address' )
    else:
        print ( 'email good 5' );
