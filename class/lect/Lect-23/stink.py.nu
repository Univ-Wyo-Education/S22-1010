  1: 
  2: fruits = [ "apple", "cherry", "kiwi", "mango", "duraian" ]
  3: stinks = [ "no", "no", "no", "no", "yes" ]
  4: 
  5: stinkyFruit = [fruits[i] for i in range(len(fruits)) if stinks[i] == "yes"]
  6: print ( "stinkyFruit={}".format(stinkyFruit) );
  7: 
