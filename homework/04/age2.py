def calc_ticket_price(age):
    ticket_price = 0
    if age >= 0 and age <= 4:
        ticket_price = 0
    elif age >= 5 and age <= 12:
        ticket_price = 38
    elif age >= 13 and age <= 17:
        ticket_price = 48
    elif age >= 18:
        ticket_price = 62
    else:
        print ( "Impossile Age" )
    return(ticket_price)


# Automated Test
if __name__ == "__main__":
    n_err = 0

    got = calc_ticket_price(13)
    expect = 48
    if got != expect:
        n_err = n_err + 1
        print ( "Error: Test 1: expected {} got {}".
                format (  expect, got ) )

    got = calc_ticket_price(18)
    expect = 62
    if got != expect:
        n_err = n_err + 1
        print ( "Error: Test 1: expected {} got {}".
                format (  expect, got ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

