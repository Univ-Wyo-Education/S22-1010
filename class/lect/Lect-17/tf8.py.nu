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
 11: print("TensorFlow version: ", tf.__version__)
 12: assert version.parse(tf.__version__).release[0] >= 2, \
 13:     "This code requires TensorFlow 2.0 or above."
 14: 
 15: 
 16: # In this example, the classifier is a simple four-layer Sequential model.
 17: 
 18: # Define the model.
 19: model = keras.models.Sequential([
 20:     keras.layers.Flatten(input_shape=(28, 28)),
 21:     keras.layers.Dense(32, activation='relu'),
 22:     keras.layers.Dropout(0.2),
 23:     keras.layers.Dense(10, activation='softmax')
 24: ])
 25: 
 26: model.compile(
 27:     optimizer='adam',
 28:     loss='sparse_categorical_crossentropy',
 29:     metrics=['accuracy'])
 30: 
 31: # Download and prepare the training data.
 32: 
 33: (train_images, train_labels), _ = keras.datasets.fashion_mnist.load_data()
 34: train_images = train_images / 255.0
 35: 
 36: 
 37: 
 38: 
 39: 
 40: # Define the Keras TensorBoard callback.
 41: logdir="logs/fit/" + datetime.now().strftime("%Y%m%d-%H%M%S")
 42: tensorboard_callback = keras.callbacks.TensorBoard(log_dir=logdir)
 43: 
 44: # Train the model.
 45: model.fit(
 46:     train_images,
 47:     train_labels, 
 48:     batch_size=64,
 49:     epochs=5, 
 50:     callbacks=[tensorboard_callback])
