  1: 
  2: # Step 1 - Just do the input and verify the file works.
  3: 
  4: import numpy as np
  5: import pandas as pd
  6: import re
  7: import matplotlib.pyplot as plt
  8: 
  9: dataset_path = "./train-data.csv"
 10: 
 11: # Specify the columns
 12: 
 13: column_names = ['Ind', 'Name', 'Location', 'Year', 'Kilometers_Driven',
 14:     'Fuel_Type', 'Transmission', 'Owner_Type', 'Mileage', 'Engine',
 15:     'Power', 'Seats', 'New_Price', 'Price']
 16: 
 17: # Read the data.
 18: 
 19: raw_dataset = pd.read_csv(dataset_path, names=column_names,
 20:     na_values = "?", comment='\t', skiprows=1, sep=",",
 21:     skipinitialspace=True)
 22: 
 23: # Print some conformation (the 1st "test")
 24: 
 25: dataset = raw_dataset.copy()
 26: print ( dataset.head() )
