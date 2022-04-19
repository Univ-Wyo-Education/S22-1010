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
