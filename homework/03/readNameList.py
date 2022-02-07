
def readFileIntoList(fn):

    f = open(fn,"r",encoding="utf8")
    if f == None:
        print ( f"Invalid file {fn} - failed to open" )
        return None
    dt = f.readlines()
    f.close()
    for i in range (len(dt)):
        s = dt[i].rstrip()
        dt[i] = s

    return dt


# Automated Test
if __name__ == "__main__":
    n_err = 0

    got = readFileIntoList("2names.txt")
    expect = [
        "\"Gunter, Dolly R\",(072) 123-4760",
        "\"Polk, Hattie S\",(563) 404-0792"
        ]
    if got[0] != expect[0]:
        n_err = n_err + 1
        print ( "Error: Test 1: file read error expected {} got {}".
                format (  expect[0], got[0] ) )
    if got[1] != expect[1]:
        n_err = n_err + 1
        print ( "Error: Test 2: file read error expected {} got {}".
                format (  expect[1], got[1] ) )
    if len(got) != len(expect):
        n_err = n_err + 1
        print ( "Error: Test 3: file read error expected {} lines got {}".
                format (  len(expect[1]), len(got[1]) ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

