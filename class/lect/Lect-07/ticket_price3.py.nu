  1: 
  2: 
  3: print ( "Input Age\n=> ", end="" )
  4: age_str = input()
  5: age = int(age_str)
  6: 
  7: ticket_price = 59
  8: if age <= 4:
  9:     ticket_price = 0
 10: elif age <= 12:
 11:     ticket_price = 40
 12: elif age <= 17:
 13:     ticket_price = 52
 14: 
 15: print ( "Ticket Price ${}.00 dollars".format(ticket_price) )
