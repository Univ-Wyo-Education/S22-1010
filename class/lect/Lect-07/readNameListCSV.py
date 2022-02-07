

import csv

def readNameListCSV(fn):

    f = open(fn,"r",encoding="utf8")
    if f == None:
        print ( f"Invalid file {fn} - failed to open" )
        return None
    csvR = csv.reader(f)
    dt = {}
    for row in csvR:
        dt[row[0]] = row[1]
    f.close()
    return dt


# Automated Test
if __name__ == "__main__":
    n_err = 0

    got = readNameListCSV("2names.txt")
    # print ( "got= {}".format(got))
    expect = {
        "Gunter, Dolly R":"(072) 123-4760",
        "Polk, Hattie S":"(563) 404-0792"
        }
    if got["Polk, Hattie S"] != expect["Polk, Hattie S"]:
        n_err = n_err + 1
        print ( "Error: Test 1: file read error expected {} got {}".
           format (  expect["Polk, Hattie S"], got["Polk, Hattie S"] ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

