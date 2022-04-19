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
 73: # Must take data and convert it to values that have a consistent range.
 74: horsepower_normalizer = layers.Normalization(input_shape=[1,], axis=None)
 75: horsepower_normalizer.adapt(horsepower)
 76: 
 77: # Make horsepower into a sequenctial model input.
 78: horsepower_model = tf.keras.Sequential([
 79:     horsepower_normalizer,
 80:     layers.Dense(units=1)
 81: ])
 82: 
 83: horsepower_model.summary() 
 84: 
 85: print ( horsepower_model.predict(horsepower[:10]) )
 86: 
 87: horsepower_model.compile(
 88:     optimizer=tf.optimizers.Adam(learning_rate=0.1),
 89:     loss='mean_absolute_error')
 90: 
 91: history = horsepower_model.fit(
 92:     train_features['Horsepower'],
 93:     train_labels,
 94:     epochs=100,
 95:     verbose=0, # Suppress logging.
 96:     validation_split = 0.2) # Calculate validation results on 20% of the training data.
 97: 
 98: hist = pd.DataFrame(history.history)
 99: hist['epoch'] = history.epoch
100: print ( hist.tail() )
101: 
102: 
103: def plot_loss(history):
104:     plt.plot(history.history['loss'], label='loss')
105:     plt.plot(history.history['val_loss'], label='val_loss')
106:     plt.ylim([0, 10])
107:     plt.xlabel('Epoch')
108:     plt.ylabel('Error [MPG]')
109:     plt.legend()
110:     plt.grid(True)
111:     plt.show()
112: 
113: plot_loss(history)
114: 
115: test_results = {}
116: 
117: test_results['horsepower_model'] = horsepower_model.evaluate(
118:     test_features['Horsepower'],
119:     test_labels, verbose=0)
120: 
121: x = tf.linspace(0.0, 250, 251)
122: y = horsepower_model.predict(x)
123: 
124: def plot_horsepower(x, y):
125:     plt.scatter(train_features['Horsepower'], train_labels, label='Data')
126:     plt.plot(x, y, color='k', label='Predictions')
127:     plt.xlabel('Horsepower')
128:     plt.ylabel('MPG')
129:     plt.legend()
130:     plt.show()
131: 
132: plot_horsepower(x, y)
133: 
134: 
135: # --
136: 
137: # The model with multiple layers - try different numbers of layers to see what
138: # effect this has on the results.
139: def build_and_compile_model(norm):
140:   model = keras.Sequential([
141:       norm,
142:       layers.Dense(64, activation='relu'),
143:       layers.Dense(64, activation='relu'),
144:       layers.Dense(64, activation='relu'),
145:       layers.Dense(64, activation='relu'),
146:       layers.Dense(1)
147:   ])
148: 
149:   model.compile(loss='mean_absolute_error',
150:                 optimizer=tf.keras.optimizers.Adam(0.001))
151:   return model
152: 
153: dnn_horsepower_model = build_and_compile_model(horsepower_normalizer)
154: 
155: # Print out a text stummary of the behavior of the model.
156: dnn_horsepower_model.summary()
157: 
158: # Train to this model.
159: history = dnn_horsepower_model.fit(
160:     train_features['Horsepower'],
161:     train_labels,
162:     validation_split=0.2,
163:     verbose=0, epochs=100)
164: 
165: # Plot loss values to see how long it took to train the model.
166: plot_loss(history)
167: 
168: # Use the model to do preditions.
169: x = tf.linspace(0.0, 250, 251)
170: y = dnn_horsepower_model.predict(x)
171: 
172: # Plot results
173: plot_horsepower(x, y)
174: 
175: # Evaluate results of model over the 20% of data that we sved for the test.
176: test_results['dnn_horsepower_model'] = dnn_horsepower_model.evaluate(
177:     test_features['Horsepower'], test_labels,
178:     verbose=0)
179: 
180: dnn_model = build_and_compile_model(normalizer)
181: dnn_model.summary()
182: 
183: history = dnn_model.fit(
184:     train_features,
185:     train_labels,
186:     validation_split=0.2,
187:     verbose=0, epochs=100)
188: 
189: # How did our model turn out.
190: plot_loss(history)
191: 
192: 
193: # Save model for later.
194: test_results['dnn_model'] = dnn_model.evaluate(test_features, test_labels, verbose=0)
195: 
196: pd.DataFrame(test_results, index=['Mean absolute error [MPG]']).T
197: 
198: test_predictions = dnn_model.predict(test_features).flatten()
199: 
200: a = plt.axes(aspect='equal')
201: plt.scatter(test_labels, test_predictions)
202: plt.xlabel('True Values [MPG]')
203: plt.ylabel('Predictions [MPG]')
204: lims = [0, 50]
205: plt.xlim(lims)
206: plt.ylim(lims)
207: _ = plt.plot(lims, lims)
208: plt.show()
209: 
210: error = test_predictions - test_labels
211: plt.hist(error, bins=25)
212: plt.xlabel('Prediction Error [MPG]')
213: _ = plt.ylabel('Count')
214: plt.show()
215: 
216: dnn_model.save('dnn_model')
217: 
218: reloaded = tf.keras.models.load_model('dnn_model')
219: 
220: test_results['reloaded'] = reloaded.evaluate(
221:     test_features, test_labels, verbose=0)
222: 
223: pd.DataFrame(test_results, index=['Mean absolute error [MPG]']).T
