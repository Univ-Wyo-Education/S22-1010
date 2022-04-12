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
 22: # To see a good description of the dataset
 23: 
 24: print ( dataset.describe() )
 25: 
 26: # Cleaning the data
 27: # The dataset contains a few unknown values. Let’s find them and drop them.
 28: 
 29: dataset.isna().sum()
 30: dataset = dataset.dropna()
 31: dataset = dataset.reset_index(drop=True)
 32: 
 33: print ( dataset.head() )
 34: 
 35: 
 36: dataset['Mileage'] = pd.Series([re.sub('[^.0-9]', '',
 37:     str(val)) for val in dataset['Mileage']], index = dataset.index)
 38: dataset['Engine'] = pd.Series([re.sub('[^.0-9]', '',
 39:     str(val)) for val in dataset['Engine']], index = dataset.index)
 40: dataset['Power'] = pd.Series([re.sub('[^.0-9]', '',
 41:     str(val)) for val in dataset['Power']], index = dataset.index)
 42: 
 43: # The prices are by default in INR Lakhs. So, we have to convert them to USD
 44: 
 45: dataset['Price'] = pd.Series([int(float(val)*1521.22) for val in dataset['Price']],
 46:         index = dataset.index)
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
 57: dataset['Mileage'] = pd.Series([int(float(str(val))*2.3521458)
 58:     for val in dataset['Mileage']], index = dataset.index)
 59: dataset['Engine'] = pd.Series([float(str(val))
 60:     for val in dataset['Engine']], index = dataset.index)
 61: 
 62: ## Lab 09 - TODO - for the column 'Power' in the dataset, convert it to a float 
 63: ## Lab 09 - TODO - for the column 'Seats' in the dataset, convert it to a float 
 64: ## Lab 09 - TODO - create the column 'Miles_Driven' from the column
 65: ##                'Kilometers_Driven' by converting to a float and 
 66: ##                 Multiplying by 0.621371, then convert to an integer so
 67: ##                 that we don't have small fractional values.
 68: ##
 69: ##                 Example of Conversion in just code
 70: ##                 x = "23.0"      # A string, with a number in it.
 71: ##                 r = int(float(x)*0.621371)  
 72: ##                     # Convert from string to float,
 73: ##                     # Km to Mi, then back to an integer.
 74: 
 75: dataset = dataset.drop(columns=['Kilometers_Driven'])
 76: 
 77: print ( dataset.head() )
 78: 
 79: dataset.to_csv(path_or_buf="new-car-data.csv")
 80: 
 81: 
 82: 
 83: ## One-Hot the Fule_Type
 84: 
 85: print(dataset['Fuel_Type'].unique())
 86: dataset['Fuel_Type'] = pd.Categorical(dataset['Fuel_Type'])
 87: dfFuel_Type = pd.get_dummies(dataset['Fuel_Type'], prefix = 'Fuel_Type')
 88: print ( dfFuel_Type.head() )
 89: 
 90: ## One-Hot the Transmission
 91: ## Lab -09 - TODO - do a similar one-hot encoding for the values in 
 92: ##                 the Transmission column.
 93: ## Lab -09 - TODO - do a similar one-hot encoding for the values in 
 94: ##                 the Owner_Type column.
 95: 
 96: ## Concat it all together
 97: 
 98: ## TODO - when you get the 2 sections above working you will need:
 99: #### dataset = pd.concat([dataset, dfFuel_Type, dfTransmission, dfOwner_Type], axis=1)
100: 
101: ## instead of just the dfFule_type 
102: dataset = pd.concat([dataset, dfFuel_Type], axis=1)
103: 
104: dataset = dataset.drop(columns=['Owner_Type', 'Transmission', 'Fuel_Type'])
105: print ( dataset.head() )
106: 
107: 
108: # Save the data again - take a look at it.
109: 
110: dataset.to_csv(path_or_buf="new-car-data2.csv")
111: 
112: ############################### ###############################
113: # Plot some stuff.
114: ############################### ###############################
115: 
116: 
117: dataset.plot(kind='scatter',x='Price',y='Year',color='blue')
118: plt.show()
119: 
120: ## Lab - 09 - TODO - Plot Price v.s. Miles_Driven
121: ## Lab - 09 - TODO - Plot Price v.s. Power
122: ## Lab - 09 - TODO - Plot Price v.s. Milage
123: ## Lab - 09 - TODO - Plot Price v.s. Seats
