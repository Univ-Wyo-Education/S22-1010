  1: import tensorflow as tf
  2: import numpy as np
  3: from tensorflow import keras
  4: 
  5: # The Model
  6: model = tf.keras.Sequential([keras.layers.Dense(units=1, input_shape=[1])])
  7: model.compile(optimizer='sgd', loss='mean_squared_error')
  8: 
  9: # This is the data based on the function:
 10: # y = 2x -1 
 11: # Calculate new data and train the model with new data.
 12: xs = np.array([-1.0,  0.0, 1.0, 2.0, 3.0, 4.0], dtype=float)
 13: ys = np.array([-3.0, -1.0, 1.0, 3.0, 5.0, 7.0], dtype=float)
 14: 
 15: # Train the model
 16: model.fit(xs, ys, epochs=500)
 17: 
 18: # Input a new value and have the model calcualte the exptected
 19: # output for the new data.
 20: print("expect output of approx. 19.0")
 21: print(model.predict([10.0]))
