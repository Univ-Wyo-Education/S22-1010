  1: 
  2: import matplotlib.pyplot as plt
  3: import numpy as np
  4: import pandas as pd
  5: import seaborn as sns
  6: 
  7: # Make NumPy printouts easier to read.
  8: np.set_printoptions(precision=3, suppress=True)
  9: 
 10: import tensorflow as tf
 11: 
 12: from tensorflow import keras
 13: from tensorflow.keras import layers
 14: 
 15: print(tf.__version__)
 16: 
 17: url = 'http://archive.ics.uci.edu/ml/machine-learning-databases/auto-mpg/auto-mpg.data'
 18: column_names = ['MPG', 'Cylinders', 'Displacement', 'Horsepower', 'Weight',
 19:                 'Acceleration', 'Model Year', 'Origin']
 20: 
 21: raw_dataset = pd.read_csv(url, names=column_names,
 22:                           na_values='?', comment='\t',
 23:                           sep=' ', skipinitialspace=True)
 24: 
 25: dataset = raw_dataset.copy()
 26: print ( dataset.tail() )
 27: 
 28: # Get rid of bad data.
 29: print ( dataset.isna().sum() )
 30: dataset = dataset.dropna()
 31: 
 32: # One hot encode Origin
 33: dataset['Origin'] = dataset['Origin'].map({1: 'USA', 2: 'Europe', 3: 'Japan'})
 34: dataset = pd.get_dummies(dataset, columns=['Origin'], prefix='', prefix_sep='')
 35: print ( dataset.tail() )
 36: 
 37: # Split into training and testing data sets.
 38: train_dataset = dataset.sample(frac=0.8, random_state=0)
 39: test_dataset = dataset.drop(train_dataset.index)
 40: 
 41: # Profile the data with some graphs
 42: sns.pairplot(train_dataset[['MPG', 'Cylinders', 'Displacement', 'Weight']], diag_kind='kde')
 43: plt.show()
 44: 
 45: print ( train_dataset.describe().transpose() )
 46: 
 47: train_features = train_dataset.copy()
 48: test_features = test_dataset.copy()
 49: 
 50: train_labels = train_features.pop('MPG')
 51: test_labels = test_features.pop('MPG')
 52: 
 53: print ( train_dataset.describe().transpose()[['mean', 'std']] )
