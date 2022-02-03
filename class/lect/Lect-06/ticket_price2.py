
print ( "Input Age\n=> ", end="" )
age_str = input()
age = int(age_str)

ticket_price = 0
if age <= 4:
	ticket_price = 0
elif age <= 12:
	ticket_price = 40
elif age <= 17:
	ticket_price = 52
elif age <= 70:
	ticket_price = 59
else:
	ticket_price = 0

print ( "Ticket Price ${}.00 dollars".format(ticket_price) )
