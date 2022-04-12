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
 57: ############################### ###############################
 58: # Part 5 - 
 59: ############################### ###############################
 60: 
 61: # Next, we’ll convert the strings in the below columns into float values.
 62: # Remember that we can only work with numerical values.
 63: 
 64: #  Year  Kilometers_Driven Fuel_Type Transmission Owner_Type  Mileage  Engine   Power  Price
 65: # 1. Kilometers_Driven -> Miles_Driven
 66: # 2. Milage is in kmpl (Km Per Leter) -> convert to Mi per Gal
 67: 
 68: dataset['Mileage'] = pd.Series([int(float(str(val))*2.3521458)
 69:     for val in dataset['Mileage']], index = dataset.index)
 70: dataset['Engine'] = pd.Series([float(str(val))
 71:     for val in dataset['Engine']], index = dataset.index)
 72: 
 73: ## Lab 09 - TODO - for the column 'Power' in the dataset, convert it to a float 
 74: ## Lab 09 - TODO - for the column 'Seats' in the dataset, convert it to a float 
 75: ## Lab 09 - TODO - create the column 'Miles_Driven' from the column
 76: ##                'Kilometers_Driven' by converting to a float and 
 77: ##                 Multiplying by 0.621371, then convert to an integer so
 78: ##                 that we don't have small fractional values.
 79: ##
 80: ##                 Example of Conversion in just code
 81: ##                 x = "23.0"      # A string, with a number in it.
 82: ##                 r = int(float(x)*0.621371)  
 83: ##                     # Convert from string to float,
 84: ##                     # Km to Mi, then back to an integer.
 85: 
 86: # Discard the Kilometers_Driven column.
 87: dataset = dataset.drop(columns=['Kilometers_Driven'])
 88: 
 89: print ( dataset.head() )
 90: 
 91: # Save data to file so we can open in Excel
 92: dataset.to_csv(path_or_buf="new-car-data.csv")
 93: 
 94: 
