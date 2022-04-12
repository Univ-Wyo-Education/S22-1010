  1: 
  2: 
  3: import numpy as np
  4: import pandas as pd
  5: import re
  6: import matplotlib.pyplot as plt
  7: 
  8: dataset_path = "./train-data.csv"
  9: 
 10: column_names = ['Ind', 'Name', 'Location', 'Year', 'Kilometers_Driven',
 11:     'Fuel_Type', 'Transmission', 'Owner_Type', 'Mileage', 'Engine',
 12:     'Power', 'Seats', 'New_Price', 'Price']
 13: raw_dataset = pd.read_csv(dataset_path, names=column_names,
 14:     na_values = "?", comment='\t', skiprows=1, sep=",",
 15:     skipinitialspace=True)
 16: 
 17: dataset = raw_dataset.copy()
 18: print ( dataset.head() )
 19: 
 20: dataset = dataset.drop(columns=['Ind', 'Name', 'Location', 'New_Price'])
 21: print ( dataset.head() )
 22: 
 23: # To see a good description of the dataset
 24: 
 25: print ( dataset.describe() )
 26: 
 27: # Cleaning the data
 28: # The dataset contains a few unknown values. Let’s find them and drop them.
 29: 
 30: dataset.isna().sum()
 31: dataset = dataset.dropna()
 32: dataset = dataset.reset_index(drop=True)
 33: 
 34: print ( dataset.head() )
 35: 
 36: 
 37: dataset['Mileage'] = pd.Series([re.sub('[^.0-9]', '',
 38:     str(val)) for val in dataset['Mileage']], index = dataset.index)
 39: dataset['Engine'] = pd.Series([re.sub('[^.0-9]', '',
 40:     str(val)) for val in dataset['Engine']], index = dataset.index)
 41: dataset['Power'] = pd.Series([re.sub('[^.0-9]', '',
 42:     str(val)) for val in dataset['Power']], index = dataset.index)
 43: 
 44: # The prices are by default in INR Lakhs. So, we have to convert them to USD
 45: 
 46: dataset['Price'] = pd.Series([int(float(val)*1521.22) for val in dataset['Price']],
 47:         index = dataset.index)
 48: 
 49: print ( dataset.head() )
 50: 
 51: dataset = dataset.replace(r'^\s*$', np.nan, regex=True)
 52: dataset.isna().sum()
 53: dataset = dataset.dropna()
 54: 
 55: dataset = dataset.reset_index(drop=True)
 56: print ( dataset.head() )
 57: 
 58: dataset['Mileage'] = pd.Series([int(float(str(val))*2.3521458)
 59:     for val in dataset['Mileage']], index = dataset.index)
 60: dataset['Engine'] = pd.Series([float(str(val))
 61:     for val in dataset['Engine']], index = dataset.index)
 62: 
 63: ## Lab 09 - TODO - for the column 'Power' in the dataset, convert it to a float 
 64: ## Lab 09 - TODO - for the column 'Seats' in the dataset, convert it to a float 
 65: ## Lab 09 - TODO - create the column 'Miles_Driven' from the column
 66: ##                'Kilometers_Driven' by converting to a float and 
 67: ##                 Multiplying by 0.621371, then convert to an integer so
 68: ##                 that we don't have small fractional values.
 69: ##
 70: ##                 Example of Conversion in just code
 71: ##                 x = "23.0"      # A string, with a number in it.
 72: ##                 r = int(float(x)*0.621371)  
 73: ##                     # Convert from string to float,
 74: ##                     # Km to Mi, then back to an integer.
 75: 
 76: dataset = dataset.drop(columns=['Kilometers_Driven'])
 77: 
 78: print ( dataset.head() )
 79: 
 80: dataset.to_csv(path_or_buf="new-car-data.csv")
 81: 
 82: 
 83: ############################### ###############################
 84: # one hot
 85: ############################### ###############################
 86: 
 87: ## One-Hot the Fule_Type
 88: 
 89: print(dataset['Fuel_Type'].unique())
 90: dataset['Fuel_Type'] = pd.Categorical(dataset['Fuel_Type'])
 91: dfFuel_Type = pd.get_dummies(dataset['Fuel_Type'], prefix = 'Fuel_Type')
 92: print ( dfFuel_Type.head() )
 93: 
 94: ## One-Hot the Transmission
 95: ## Lab -09 - TODO - do a similar one-hot encoding for the values in 
 96: ##                 the Transmission column.
 97: ## Lab -09 - TODO - do a similar one-hot encoding for the values in 
 98: ##                 the Owner_Type column.
 99: 
100: ## Concat it all together
101: 
102: ## TODO - when you get the 2 sections above working you will need:
103: #### dataset = pd.concat([dataset, dfFuel_Type, dfTransmission, dfOwner_Type], axis=1)
104: 
105: ## instead of just the dfFule_type 
106: dataset = pd.concat([dataset, dfFuel_Type], axis=1)
107: 
108: dataset = dataset.drop(columns=['Owner_Type', 'Transmission', 'Fuel_Type'])
109: print ( dataset.head() )
110: 
111: 
112: # Save the data again - take a look at it.
113: 
114: dataset.to_csv(path_or_buf="new-car-data2.csv")
