  1: from __future__ import absolute_import
  2: from __future__ import division
  3: from __future__ import print_function
  4: 
  5: from datetime import datetime
  6: from packaging import version
  7: 
  8: import tensorflow as tf
  9: from tensorflow import keras
 10: import matplotlib.pyplot as plt
 11: plt.style.use('seaborn-whitegrid')
 12: import numpy as np
 13: 
 14: print("TensorFlow version: ", tf.__version__)
 15: assert version.parse(tf.__version__).release[0] >= 2, "This notebook requires TensorFlow 2.0 or above."
 16: 
 17: #######################################################################34
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
 37: # print ( x_train )
 38: plt.plot(x_train, y_train, 'o', color='black')
 39: plt.show()
 40: 
 41: # input("Press Enter to continue...")
 42: # exit(0)
 43: 
 44: #######################################################################33
 45: 
 46: logdir = "logs/scalars/" + datetime.now().strftime("%Y%m%d-%H%M%S")
 47: tensorboard_callback = keras.callbacks.TensorBoard(log_dir=logdir)
 48: 
 49: model = keras.models.Sequential([
 50:     keras.layers.Dense(16, input_dim=1),
 51:     keras.layers.Dense(1),
 52: ])
 53: 
 54: model.compile(
 55:     loss='mse', # keras.losses.mean_squared_error
 56:     optimizer=keras.optimizers.SGD(lr=0.2),
 57: )
 58: 
 59: print("Training ... With default parameters, this takes less than 10 seconds.")
 60: training_history = model.fit(
 61:     x_train, # input
 62:     y_train, # output
 63:     batch_size=train_size,
 64:     verbose=0, # Suppress chatty output; use Tensorboard instead
 65:     epochs=100,
 66:     validation_data=(x_test, y_test),
 67:     callbacks=[tensorboard_callback],
 68: )
 69: 
 70: print("Average test loss: ", np.average(training_history.history['loss']))
 71: 
 72: ## Save our trained model
 73: model.save ( "./save/model.h5" )
