
import numpy as np
import pandas as pd
import re
import matplotlib.pyplot as plt

dataset_path = "./train-data.csv"

column_names = ['Ind', 'Name', 'Location', 'Year', 'Kilometers_Driven',
    'Fuel_Type', 'Transmission', 'Owner_Type', 'Mileage', 'Engine',
    'Power', 'Seats', 'New_Price', 'Price']
raw_dataset = pd.read_csv(dataset_path, names=column_names,
    na_values = "?", comment='\t', skiprows=1, sep=",",
    skipinitialspace=True)

dataset = raw_dataset.copy()
print ( dataset.head() )

dataset = dataset.drop(columns=['Ind', 'Name', 'Location', 'New_Price'])
print ( dataset.head() )

print ( dataset.describe() )

dataset.isna().sum()
dataset = dataset.dropna()
dataset = dataset.reset_index(drop=True)

print ( dataset.head() )


dataset['Mileage'] = pd.Series([re.sub('[^.0-9]', '', str(val))
    for val in dataset['Mileage']], index = dataset.index)
dataset['Engine'] = pd.Series([re.sub('[^.0-9]', '', str(val))
    for val in dataset['Engine']], index = dataset.index)
dataset['Power'] = pd.Series([re.sub('[^.0-9]', '', str(val))
    for val in dataset['Power']], index = dataset.index)


################################## ##################################
# Numbers and missing data.
################################## ##################################

# The prices are by default in INR Lakhs. So, we have to convert them to USD

dataset['Price'] = pd.Series([int(float(val)*1521.22)
    for val in dataset['Price']], index = dataset.index)

print ( dataset.head() )

dataset = dataset.replace(r'^\s*$', np.nan, regex=True)
dataset.isna().sum()
dataset = dataset.dropna()

dataset = dataset.reset_index(drop=True)
print ( dataset.head() )

