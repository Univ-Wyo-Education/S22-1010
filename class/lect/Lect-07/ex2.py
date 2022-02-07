import readNameList

phone_list = readNameList.readFileIntoList("50000phone.csv")

print ( "Enter a Name to Lookup" )
lookFor = input()

found = False
for v in phone_list:
    if lookFor in v:
        found = True
        print ( "Found {}".format(v) )
if not found:
    print ( "no names found" )
