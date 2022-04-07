  1: fruits = [ "apple", "cherry", "kiwi", "mango", "duraian" ]
  2: stinks = [ "no", "no", "no", "no", "yes" ]
  3: 
  4: stinkyFruit = [fruits[i] for i in range(len(fruits)) if stinks[i] == "yes"]
  5: print ( "stinkyFruit={}".format(stinkyFruit) );
