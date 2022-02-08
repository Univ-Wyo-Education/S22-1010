import readNameList

print ( "Enter a File Name")
fn = input()

a_list = readNameList.readFileIntoList(fn)

flen = len(a_list)
print ( "# of lines in file {}".format(flen) )
