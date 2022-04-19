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
 54: 
 55: normalizer = tf.keras.layers.Normalization(axis=-1)
 56: normalizer.adapt(np.array(train_features))
 57: 
 58: print(normalizer.mean.numpy())
 59: 
 60: first = np.array(train_features[:1])
 61: 
 62: with np.printoptions(precision=2, suppress=True):
 63:   print('First example:', first)
 64:   print()
 65:   print('Normalized:', normalizer(first).numpy())
 66: 
 67: 
 68: 
 69: 
 70: 
 71: horsepower = np.array(train_features['Horsepower'])
 72: 
 73: horsepower_normalizer = layers.Normalization(input_shape=[1,], axis=None)
 74: horsepower_normalizer.adapt(horsepower)
 75: 
 76: horsepower_model = tf.keras.Sequential([
 77:     horsepower_normalizer,
 78:     layers.Dense(units=1)
 79: ])
 80: 
 81: horsepower_model.summary() 
 82: 
 83: print ( horsepower_model.predict(horsepower[:10]) )
 84: 
 85: horsepower_model.compile(
 86:     optimizer=tf.optimizers.Adam(learning_rate=0.1),
 87:     loss='mean_absolute_error')
 88: 
 89: history = horsepower_model.fit(
 90:     train_features['Horsepower'],
 91:     train_labels,
 92:     epochs=100,
 93:     # Suppress logging.
 94:     verbose=0,
 95:     # Calculate validation results on 20% of the training data.
 96:     validation_split = 0.2)
 97: 
 98: hist = pd.DataFrame(history.history)
 99: hist['epoch'] = history.epoch
100: print ( hist.tail() )
101: 
102: 
