  1: import pandas as pd
  2: 
  3: people_dict = {
  4:         "weight": pd.Series([145, 182, 191],index=["joan", "bob", "mike"]),  
  5:         "birthyear": pd.Series([2002, 2000, 1999], index=["bob", "joan", "mike"], name="year"),
  6:         "children": pd.Series([1, 2], index=["mike", "bob"]),
  7:         "hobby": pd.Series(["Rock Climbing", "Scuba Diving", "Sailing"], index=["joan", "bob", "mike"]),
  8:         }
  9: 
 10: people = pd.DataFrame(people_dict)
 11: 
 12: print ( people )
 13: 
