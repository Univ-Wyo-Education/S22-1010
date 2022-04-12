  1: 
  2: # From Before...
  3: 
  4: import numpy as np
  5: import pandas as pd
  6: import re
  7: import matplotlib.pyplot as plt
  8: 
  9: dataset_path = "./train-data.csv"
 10: 
 11: column_names = ['Ind', 'Name', 'Location', 'Year', 'Kilometers_Driven',
 12:     'Fuel_Type', 'Transmission', 'Owner_Type', 'Mileage', 'Engine',
 13:     'Power', 'Seats', 'New_Price', 'Price']
 14: raw_dataset = pd.read_csv(dataset_path, names=column_names,
 15:     na_values = "?", comment='\t', skiprows=1, sep=",",
 16:     skipinitialspace=True)
 17: 
 18: dataset = raw_dataset.copy()
 19: print ( dataset.head() )
 20: 
 21: ############################## ##############################
 22: # New Code...
 23: ############################## ##############################
 24: 
 25: # Get rid of columns.
 26: 
 27: dataset = dataset.drop(columns=['Ind', 'Name', 'Location', 'New_Price'])
 28: print ( dataset.head() )
 29: 
 30: # To see a good description of the dataset
 31: 
 32: print ( dataset.describe() )
 33: 
 34: # Cleaning the data
 35: # The dataset contains a few unknown values. Let’s find them and drop them.
 36: 
 37: dataset.isna().sum()
 38: dataset = dataset.dropna()
 39: dataset = dataset.reset_index(drop=True)
 40: 
 41: print ( dataset.head() )
