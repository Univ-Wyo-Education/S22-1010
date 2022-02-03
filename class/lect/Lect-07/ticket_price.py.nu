  1: 
  2: print ( "Input Age\n=> ", end="" )
  3: age_str = input()
  4: age = int(age_str)
  5: 
  6: ticket_price = 0
  7: if age <= 4:
  8:     ticket_price = 0
  9: elif age >= 5 and age <= 12:
 10:     ticket_price = 40
 11: elif age >= 13 and age <= 17:
 12:     ticket_price = 52
 13: elif age >= 18 and age <= 70:
 14:     ticket_price = 59
 15: else:
 16:     ticket_price = 0
 17: 
 18: print ( "Ticket Price ${}.00 dollars".format(ticket_price) )
