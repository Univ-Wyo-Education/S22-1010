  1: def calc_ticket_price(age):
  2:     ticket_price = 0
  3:     if age >= 0 and age <= 4:
  4:         ticket_price = 0
  5:     elif age >= 5 and age <= 12:
  6:         ticket_price = 38
  7:     elif age >= 13 and age <= 17:
  8:         ticket_price = 48
  9:     elif age >= 18:
 10:         ticket_price = 62
 11:     else:
 12:         print ( "Impossile Age" )
 13:     return(ticket_price)
 14: 
 15: 
 16: # Automated Test
 17: if __name__ == "__main__":
 18:     n_err = 0
 19: 
 20:     got = calc_ticket_price(13)
 21:     expect = 48
 22:     if got != expect:
 23:         n_err = n_err + 1
 24:         print ( "Error: Test 1: expected {} got {}".
 25:                 format (  expect, got ) )
 26: 
 27:     got = calc_ticket_price(18)
 28:     expect = 62
 29:     if got != expect:
 30:         n_err = n_err + 1
 31:         print ( "Error: Test 1: expected {} got {}".
 32:                 format (  expect, got ) )
 33: 
 34:     if n_err == 0 :
 35:         print ( "PASS" )
 36:     else:
 37:         print ( "FAILED" )
 38: 
