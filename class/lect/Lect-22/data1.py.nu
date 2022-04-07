  1: #!/Users/philip/opt/anaconda3/bin/python
  2: 
  3: import numpy as np
  4: import pandas as pd
  5: import re
  6: 
  7: dataset_path = "./train-data.csv"
  8: 
  9: column_names = ['Ind', 'Name', 'Location', 'Year', 'Kilometers_Driven',
 10:     'Fuel_Type', 'Transmission', 'Owner_Type', 'Mileage', 'Engine',
 11:     'Power', 'Seats', 'New_Price', 'Price']
 12: raw_dataset = pd.read_csv(dataset_path, names=column_names,
 13:     na_values = "?", comment='\t', skiprows=1, sep=",",
 14:     skipinitialspace=True)
 15: 
 16: dataset = raw_dataset.copy()
 17: print ( dataset.head() )
 18: 
 19: # https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.to_csv.html
 20: 
 21: dataset = dataset.drop(columns=['Ind', 'Name', 'Location', 'Seats', 'New_Price'])
 22: print ( dataset.head() )
 23: 
 24: # To see a good description of the dataset
 25: 
 26: print ( dataset.describe() )
 27: 
