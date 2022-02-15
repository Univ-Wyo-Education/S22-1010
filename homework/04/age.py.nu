  1: print ( "Enter Age" )
  2: age_str = input()
  3: age = int(age_str)
  4: 
  5: ticket_price = 0
  6: if age >= 0 and age <= 4:
  7:     ticket_price = 0
  8: elif age >= 5 and age <= 12:
  9:     ticket_price = 38
 10: elif age >= 13 and age <= 17:
 11:     ticket_price = 48
 12: elif age >= 18:
 13:     ticket_price = 62
 14: else:
 15:     print ( "Impossile Age" )
 16: 
 17: print ( "Price = {}".format(ticket_price) ) 
