  1: from __future__ import absolute_import
  2: from __future__ import division
  3: from __future__ import print_function
  4: 
  5: from datetime import datetime
  6: from packaging import version
  7: 
  8: import tensorflow as tf
  9: from tensorflow import keras
 10: 
 11: import numpy as np
 12: 
 13: print("TensorFlow version: ", tf.__version__)
 14: assert version.parse(tf.__version__).release[0] >= 2, \
 15:     "This notebook requires TensorFlow 2.0 or above."
 16: 
 17: ########################################################################33
 18: 
 19: data_size = 1000
 20: # 80% of the data is for training.
 21: train_pct = 0.8
 22: 
 23: train_size = int(data_size * train_pct)
 24: 
 25: # Create some input data between -1 and 1 and randomize it.
 26: x = np.linspace(-1, 1, data_size)
 27: np.random.shuffle(x)
 28: 
 29: # Generate the output data.
 30: # y = 0.5x + 2 + noise
 31: y = 0.5 * x + 2 + np.random.normal(0, 0.05, (data_size, ))
 32: 
 33: # Split into test and train pairs.
 34: x_train, y_train = x[:train_size], y[:train_size]
 35: x_test, y_test = x[train_size:], y[train_size:]
 36: 
 37: 
 38: ########################################################################33
 39: 
 40: logdir = "logs/scalars/" + datetime.now().strftime("%Y%m%d-%H%M%S")
 41: tensorboard_callback = keras.callbacks.TensorBoard(log_dir=logdir)
 42: 
 43: model = keras.models.Sequential([
 44:     keras.layers.Dense(16, input_dim=1),
 45:     keras.layers.Dense(1),
 46: ])
 47: 
 48: model.compile(
 49:     loss='mse', # keras.losses.mean_squared_error
 50:     optimizer=keras.optimizers.SGD(lr=0.2),
 51: )
 52: 
 53: print("Training ... With default parameters, this takes less than 10 seconds.")
 54: training_history = model.fit(
 55:     x_train, # input
 56:     y_train, # output
 57:     batch_size=train_size,
 58:     verbose=0, # Suppress chatty output; use Tensorboard instead
 59:     epochs=100,
 60:     validation_data=(x_test, y_test),
 61:     callbacks=[tensorboard_callback],
 62: )
 63: 
 64: print("Average test loss: ", np.average(training_history.history['loss']))
 65: 
 66: 
 67: ### Do A Predition using the "model" ###
 68: 
 69: # Given the input data (60, 25, 2), the line y = 0.5x + 2 should yield (32, 14.5, 3). Does the model agree?
 70: 
 71: print(model.predict([60, 25, 2]))
 72: # True values to compare predictions against: 
 73: # [[32.0]
 74: #  [14.5]
 75: #  [ 3.0]]
