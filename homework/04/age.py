print ( "Enter Age" )
age_str = input()
age = int(age_str)

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

print ( "Price = {}".format(ticket_price) ) 
