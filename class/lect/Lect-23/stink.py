
fruits = [ "apple", "cherry", "kiwi", "mango", "duraian" ]
stinks = [ "no", "no", "no", "no", "yes" ]

stinkyFruit = [fruits[i] for i in range(len(fruits)) if stinks[i] == "yes"]
print ( "stinkyFruit={}".format(stinkyFruit) );

