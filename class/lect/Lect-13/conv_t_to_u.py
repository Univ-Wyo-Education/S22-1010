# Convert DNA's T to RNA's U for later use in the code.  Also convert all to lower case.

def conv_t_to_u(s) :
    return s.lower().replace("t","u")

# Automated Test
if __name__ == "__main__":
    n_err = 0

    x = conv_t_to_u("TTcat")
    if x != "uucau":
        n_err = n_err + 1
        print ( "error 1" )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )
