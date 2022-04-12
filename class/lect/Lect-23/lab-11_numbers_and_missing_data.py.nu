  1: 
  2: import numpy as np
  3: import pandas as pd
  4: import re
  5: import matplotlib.pyplot as plt
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
 19: dataset = dataset.drop(columns=['Ind', 'Name', 'Location', 'New_Price'])
 20: print ( dataset.head() )
 21: 
 22: print ( dataset.describe() )
 23: 
 24: dataset.isna().sum()
 25: dataset = dataset.dropna()
 26: dataset = dataset.reset_index(drop=True)
 27: 
 28: print ( dataset.head() )
 29: 
 30: 
 31: dataset['Mileage'] = pd.Series([re.sub('[^.0-9]', '', str(val))
 32:     for val in dataset['Mileage']], index = dataset.index)
 33: dataset['Engine'] = pd.Series([re.sub('[^.0-9]', '', str(val))
 34:     for val in dataset['Engine']], index = dataset.index)
 35: dataset['Power'] = pd.Series([re.sub('[^.0-9]', '', str(val))
 36:     for val in dataset['Power']], index = dataset.index)
 37: 
 38: 
 39: ################################## ##################################
 40: # Numbers and missing data.
 41: ################################## ##################################
 42: 
 43: # The prices are by default in INR Lakhs. So, we have to convert them to USD
 44: 
 45: dataset['Price'] = pd.Series([int(float(val)*1521.22)
 46:     for val in dataset['Price']], index = dataset.index)
 47: 
 48: print ( dataset.head() )
 49: 
 50: dataset = dataset.replace(r'^\s*$', np.nan, regex=True)
 51: dataset.isna().sum()
 52: dataset = dataset.dropna()
 53: 
 54: dataset = dataset.reset_index(drop=True)
 55: print ( dataset.head() )
 56: 
