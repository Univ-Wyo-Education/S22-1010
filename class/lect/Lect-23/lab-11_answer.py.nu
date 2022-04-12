  1: import numpy as np
  2: import pandas as pd
  3: import re
  4: import matplotlib.pyplot as plt
  5: 
  6: dataset_path = "./train-data.csv"
  7: 
  8: column_names = ['Ind', 'Name', 'Location', 'Year', 'Kilometers_Driven',
  9:     'Fuel_Type', 'Transmission', 'Owner_Type', 'Mileage', 'Engine',
 10:     'Power', 'Seats', 'New_Price', 'Price']
 11: raw_dataset = pd.read_csv(dataset_path, names=column_names,
 12:     na_values = "?", comment='\t', skiprows=1, sep=",",
 13:     skipinitialspace=True)
 14: 
 15: dataset = raw_dataset.copy()
 16: print ( dataset.head() )
 17: 
 18: dataset = dataset.drop(columns=['Ind', 'Name', 'Location', 'New_Price'])
 19: print ( dataset.head() )
 20: 
 21: # To see a good description of the dataset
 22: 
 23: print ( dataset.describe() )
 24: 
 25: # Cleaning the data
 26: # The dataset contains a few unknown values. Let’s find them and drop them.
 27: 
 28: dataset.isna().sum()
 29: dataset = dataset.dropna()
 30: dataset = dataset.reset_index(drop=True)
 31: 
 32: print ( dataset.head() )
 33: 
 34: 
 35: dataset['Mileage'] = pd.Series([re.sub('[^.0-9]', '', str(val)) for val in dataset['Mileage']], index = dataset.index)
 36: dataset['Engine'] = pd.Series([re.sub('[^.0-9]', '', str(val)) for val in dataset['Engine']], index = dataset.index)
 37: dataset['Power'] = pd.Series([re.sub('[^.0-9]', '', str(val)) for val in dataset['Power']], index = dataset.index)
 38: 
 39: # The prices are by default in INR Lakhs. So, we have to convert them to USD
 40: 
 41: dataset['Price'] = pd.Series([int(float(val)*1521.22) for val in dataset['Price']], index = dataset.index)
 42: 
 43: print ( dataset.head() )
 44: 
 45: dataset = dataset.replace(r'^\s*$', np.nan, regex=True)
 46: dataset.isna().sum()
 47: dataset = dataset.dropna()
 48: 
 49: dataset = dataset.reset_index(drop=True)
 50: print ( dataset.head() )
 51: 
 52: # Next, we’ll convert the strings in the below columns into float values. Remember that we can only work with numerical values.
 53: 
 54: #  Year  Kilometers_Driven Fuel_Type Transmission Owner_Type  Mileage  Engine   Power  Price
 55: # 1. Kilometers_Driven -> Miles_Driven
 56: # 2. Milage is in kmpl (Km Per Leter) -> convert to Mi per Gal
 57: 
 58: dataset['Mileage'] = pd.Series([int(float(str(val))*2.3521458) for val in dataset['Mileage']], index = dataset.index)
 59: dataset['Engine'] = pd.Series([float(str(val)) for val in dataset['Engine']], index = dataset.index)
 60: dataset['Power'] = pd.Series([float(val) for val in dataset['Power']], index = dataset.index)
 61: dataset['Seats'] = pd.Series([float(val) for val in dataset['Seats']], index = dataset.index)
 62: dataset['Miles_Driven'] = pd.Series([(int(float(val)*0.621371)) for val in dataset['Kilometers_Driven']], index = dataset.index)
 63: dataset = dataset.drop(columns=['Kilometers_Driven'])
 64: 
 65: print ( dataset.head() )
 66: 
 67: dataset.to_csv(path_or_buf="new-car-data.csv")
 68: 
 69: 
 70: ## One-Hot the Fule_Type
 71: 
 72: print(dataset['Fuel_Type'].unique())
 73: dataset['Fuel_Type'] = pd.Categorical(dataset['Fuel_Type'])
 74: dfFuel_Type = pd.get_dummies(dataset['Fuel_Type'], prefix = 'Fuel_Type')
 75: print ( dfFuel_Type.head() )
 76: 
 77: ## One-Hot the Transmission
 78: ## xyzzy - student section
 79: 
 80: print(dataset['Transmission'].unique())
 81: dataset['Transmission'] = pd.Categorical(dataset['Transmission'])
 82: dfTransmission = pd.get_dummies(dataset['Transmission'], prefix = 'Transmission')
 83: print ( dfTransmission.head() )
 84: 
 85: ## One-Hot the Owner
 86: #### xyzzy - student section
 87: 
 88: print(dataset['Owner_Type'].unique())
 89: dataset['Owner_Type'] = pd.Categorical(dataset['Owner_Type'])
 90: dfOwner_Type = pd.get_dummies(dataset['Owner_Type'], prefix = 'Owner_Type')
 91: print ( dfOwner_Type.head() )
 92: 
 93: ## Concat it all together
 94: 
 95: dataset = pd.concat([dataset, dfFuel_Type, dfTransmission, dfOwner_Type], axis=1)
 96: ## dataset = pd.concat([dataset, dfFuel_Type], axis=1)
 97: dataset = dataset.drop(columns=['Owner_Type', 'Transmission', 'Fuel_Type'])
 98: print ( dataset.head() )
 99: 
100: 
101: dataset.to_csv(path_or_buf="new-car-data2.csv")
102: 
103: dataset.plot(kind='scatter',x='Price',y='Miles_Driven',color='red')
104: plt.show()
105: 
106: dataset.plot(kind='scatter',x='Price',y='Power',color='green')
107: plt.show()
108: 
109: dataset.plot(kind='scatter',x='Price',y='Year',color='blue')
110: plt.show()
111: 
112: dataset.plot(kind='scatter',x='Price',y='Mileage',color='red')
113: plt.show()
114: 
115: dataset.plot(kind='scatter',x='Price',y='Seats',color='green')
116: plt.show()
117: 
