import pandas as pd

people_dict = {
        "weight": pd.Series([145, 182, 191],index=["joan", "bob", "mike"]),  
        "birthyear": pd.Series([2002, 2000, 1999], index=["bob", "joan", "mike"], name="year"),
        "children": pd.Series([1, 2], index=["mike", "bob"]),
        "hobby": pd.Series(["Rock Climbing", "Scuba Diving", "Sailing"], index=["joan", "bob", "mike"]),
        }

people = pd.DataFrame(people_dict)

print ( people )

