import age2

print ( "Enter Age" )
age_str = input()
age = int(age_str)

ticket_price = age2.calc_ticket_price(age)

print ( "Price = {}".format(ticket_price) ) 
