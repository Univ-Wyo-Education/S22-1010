
import string

def removePunctuation(txt):
    for c in string.punctuation:
        txt = txt.replace(c,"")
    return txt


# Automated Test
if __name__ == "__main__":
    n_err = 0

    got = removePunctuation("this, and: that")
    expect = "this and that"
    if got != expect:
        n_err = n_err + 1
        print ( "Error: Test 1: file read error expected {} got {}".
                format (  expect, got ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

