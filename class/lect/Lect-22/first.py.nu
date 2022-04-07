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
 28: # Cleaning the data
 29: # The dataset contains a few unknown values. Let’s find them and drop them.
 30: 
 31: dataset.isna().sum()
 32: dataset = dataset.dropna()
 33: dataset = dataset.reset_index(drop=True)
 34: 
 35: print ( dataset.head() )
 36: 
 37: 
 38: dataset['Mileage'] = pd.Series([re.sub('[^.0-9]', '', str(val)) for val in dataset['Mileage']], index = dataset.index)
 39: dataset['Engine'] = pd.Series( [re.sub('[^.0-9]', '', str(val)) for val in dataset['Engine'] ], index = dataset.index)
 40: dataset['Power'] = pd.Series(  [re.sub('[^.0-9]', '', str(val)) for val in dataset['Power']  ], index = dataset.index)
 41: 
 42: # The prices are by default in INR Lakhs. So, we have to convert them to USD
 43: 
 44: dataset['Price'] = pd.Series([int(float(val)*1521.22) for val in dataset['Price']], index = dataset.index)
 45: 
 46: print ( dataset.head() )
 47: 
 48: dataset = dataset.replace(r'^\s*$', np.nan, regex=True)
 49: dataset.isna().sum()
 50: dataset = dataset.dropna()
 51: 
 52: dataset = dataset.reset_index(drop=True)
 53: print ( dataset.head() )
 54: 
 55: # Next, we’ll convert the strings in the below columns into float values. Remember that we can only work with numerical values.
 56: 
 57: ## dataset['Mileage'] = pd.Series([int(float(str(val))*2.3521458) for val in dataset['Mileage']], index = dataset.index)
 58: dataset['Mileage'] = pd.Series([int(float(str(val))*2.3521458) for val in dataset['Mileage']], index = dataset.index)
 59: dataset['Engine'] = pd.Series([float(str(val)) for val in dataset['Engine']], index = dataset.index)
 60: dataset['Power'] = pd.Series([float(val) for val in dataset['Power']], index = dataset.index)
 61: ## dataset['Miles_Driven'] = pd.Series([str(int(float(val)*0.621371))+" mpg" for val in dataset['Kilometers_Driven']], index = dataset.index)
 62: dataset['Miles_Driven'] = pd.Series([(int(float(val)*0.621371)) for val in dataset['Kilometers_Driven']], index = dataset.index)
 63: # dataset['Kilometers_Driven'] = pd.Series([float(val) for val in dataset['Kilometers_Driven']], index = dataset.index)
 64: dataset = dataset.drop(columns=['Kilometers_Driven'])
 65: 
 66: print ( dataset.head() )
 67: 
 68: dataset.to_csv(path_or_buf="new-car-data.csv")
 69: 
 70: #  Year  Kilometers_Driven Fuel_Type Transmission Owner_Type  Mileage  Engine   Power  Price
 71: # 1. Kilometers_Driven -> Miles_Driven
 72: # 2. Milage is in kmpl (Km Per Leter) -> convert to Mi per Gal
 73: 
 74: 
 75: ## One-Hot the Fule_Type
 76: 
 77: print(dataset['Fuel_Type'].unique())
 78: dataset['Fuel_Type'] = pd.Categorical(dataset['Fuel_Type'])
 79: dfFuel_Type = pd.get_dummies(dataset['Fuel_Type'], prefix = 'Fuel_Type')
 80: print ( dfFuel_Type.head() )
 81: 
 82: ## One-Hot the Transmission
 83: 
 84: print(dataset['Transmission'].unique())
 85: dataset['Transmission'] = pd.Categorical(dataset['Transmission'])
 86: dfTransmission = pd.get_dummies(dataset['Transmission'], prefix = 'Transmission')
 87: print ( dfTransmission.head() )
 88: 
 89: ## One-Hot the Owner
 90: 
 91: print(dataset['Owner_Type'].unique())
 92: dataset['Owner_Type'] = pd.Categorical(dataset['Owner_Type'])
 93: dfOwner_Type = pd.get_dummies(dataset['Owner_Type'], prefix = 'Owner_Type')
 94: print ( dfOwner_Type.head() )
 95: 
 96: ## Concat it all together
 97: 
 98: dataset = pd.concat([dataset, dfFuel_Type, dfTransmission, dfOwner_Type], axis=1)
 99: dataset = dataset.drop(columns=['Owner_Type', 'Transmission', 'Fuel_Type'])
100: print ( dataset.head() )
101: 
102: 
103: dataset.to_csv(path_or_buf="new-car-data2.csv")
