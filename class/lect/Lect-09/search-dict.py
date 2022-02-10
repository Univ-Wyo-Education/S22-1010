from readNameListCSV import readNameListCSV

phone_list = readNameListCSV("50000phone.csv")

print ( "Enter a Name to Lookup\n=> ", end="" )
lookFor = input()

if lookFor in phone_list:
    print ( "Found {}".format(phone_list[lookFor]) )
else:
    print ( "{} not found".format(lookFor) )

