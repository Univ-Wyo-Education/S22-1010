  1: #!/Users/philip/opt/anaconda3/bin/python
  2: 
  3: import numpy as np
  4: import pandas as pd
  5: import re
  6: # import matplotlib.pyplot as plt
  7: # import seaborn as sns
  8: 
  9: # import tensorflow as tf
 10: 
 11: # import tensorflow_docs as tfdocs
 12: # import tensorflow_docs.plots
 13: # import tensorflow_docs.modeling
 14: 
 15: dataset_path = "./train-data.csv"
 16: 
 17: column_names = ['Ind', 'Name', 'Location', 'Year', 'Kilometers_Driven',
 18:     'Fuel_Type', 'Transmission', 'Owner_Type', 'Mileage', 'Engine',
 19:     'Power', 'Seats', 'New_Price', 'Price']
 20: raw_dataset = pd.read_csv(dataset_path, names=column_names,
 21:     na_values = "?", comment='\t', skiprows=1, sep=",",
 22:     skipinitialspace=True)
 23: 
 24: dataset = raw_dataset.copy()
 25: print ( dataset.head() )
 26: 
 27: # https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.to_csv.html
 28: 
 29: dataset = dataset.drop(columns=['Ind', 'Name', 'Location', 'Seats', 'New_Price'])
 30: print ( dataset.head() )
 31: 
 32: # To see a good description of the dataset
 33: 
 34: print ( dataset.describe() )
 35: 
 36: # Cleaning the data
 37: # The dataset contains a few unknown values. Let’s find them and drop them.
 38: 
 39: dataset.isna().sum()
 40: dataset = dataset.dropna()
 41: dataset = dataset.reset_index(drop=True)
 42: 
 43: print ( dataset.head() )
 44: 
 45: 
 46: dataset['Mileage'] = pd.Series([re.sub('[^.0-9]', '', str(val)) for val in dataset['Mileage']], index = dataset.index)
 47: dataset['Engine'] = pd.Series([re.sub('[^.0-9]', '',
 48:     str(val)) for val in dataset['Engine']], index = dataset.index)
 49: dataset['Power'] = pd.Series([re.sub('[^.0-9]', '',
 50:     str(val)) for val in dataset['Power']], index = dataset.index)
 51: 
 52: # The prices are by default in INR Lakhs. So, we have to convert them to USD
 53: 
 54: dataset['Price'] = pd.Series([int(float(val)*1521.22) for val in dataset['Price']], index = dataset.index)
 55: 
 56: print ( dataset.head() )
 57: 
 58: dataset = dataset.replace(r'^\s*$', np.nan, regex=True)
 59: dataset.isna().sum()
 60: dataset = dataset.dropna()
 61: 
 62: dataset = dataset.reset_index(drop=True)
 63: print ( dataset.head() )
 64: 
 65: # Next, we’ll convert the strings in the below columns into float values. Remember that we can only work with numerical values.
 66: 
 67: ## dataset['Mileage'] = pd.Series([int(float(str(val))*2.3521458) for val in dataset['Mileage']], index = dataset.index)
 68: dataset['Mileage'] = pd.Series([int(float(str(val))*2.3521458) for val in dataset['Mileage']], index = dataset.index)
 69: dataset['Engine'] = pd.Series([float(str(val)) for val in dataset['Engine']], index = dataset.index)
 70: dataset['Power'] = pd.Series([float(val) for val in dataset['Power']], index = dataset.index)
 71: ## dataset['Miles_Driven'] = pd.Series([str(int(float(val)*0.621371))+" mpg" for val in dataset['Kilometers_Driven']], index = dataset.index)
 72: dataset['Miles_Driven'] = pd.Series([(int(float(val)*0.621371)) for val in dataset['Kilometers_Driven']], index = dataset.index)
 73: # dataset['Kilometers_Driven'] = pd.Series([float(val) for val in dataset['Kilometers_Driven']], index = dataset.index)
 74: dataset = dataset.drop(columns=['Kilometers_Driven'])
 75: 
 76: print ( dataset.head() )
 77: 
 78: dataset.to_csv(path_or_buf="new-car-data.csv")
 79: 
 80: #  Year  Kilometers_Driven Fuel_Type Transmission Owner_Type  Mileage  Engine   Power  Price
 81: # 1. Kilometers_Driven -> Miles_Driven
 82: # 2. Milage is in kmpl (Km Per Leter) -> convert to Mi per Gal
 83: 
 84: 
 85: ## One-Hot the Fule_Type
 86: 
 87: print(dataset['Fuel_Type'].unique())
 88: dataset['Fuel_Type'] = pd.Categorical(dataset['Fuel_Type'])
 89: dfFuel_Type = pd.get_dummies(dataset['Fuel_Type'], prefix = 'Fuel_Type')
 90: print ( dfFuel_Type.head() )
 91: 
 92: ## One-Hot the Transmission
 93: 
 94: print(dataset['Transmission'].unique())
 95: dataset['Transmission'] = pd.Categorical(dataset['Transmission'])
 96: dfTransmission = pd.get_dummies(dataset['Transmission'], prefix = 'Transmission')
 97: print ( dfTransmission.head() )
 98: 
 99: ## One-Hot the Owner
100: 
101: print(dataset['Owner_Type'].unique())
102: dataset['Owner_Type'] = pd.Categorical(dataset['Owner_Type'])
103: dfOwner_Type = pd.get_dummies(dataset['Owner_Type'], prefix = 'Owner_Type')
104: print ( dfOwner_Type.head() )
105: 
106: ## Concat it all together
107: 
108: dataset = pd.concat([dataset, dfFuel_Type, dfTransmission, dfOwner_Type], axis=1)
109: dataset = dataset.drop(columns=['Owner_Type', 'Transmission', 'Fuel_Type'])
110: print ( dataset.head() )
111: 
112: 
113: dataset.to_csv(path_or_buf="new-car-data2.csv")
