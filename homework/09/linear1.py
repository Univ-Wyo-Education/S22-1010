import tensorflow as tf
import numpy as np
from tensorflow import keras

# The Model
model = tf.keras.Sequential([keras.layers.Dense(units=1, input_shape=[1])])
model.compile(optimizer='sgd', loss='mean_squared_error')

# This is the data based on the function:
# y = 2x -1 
# Calculate new data and train the model with new data.
xs = np.array([-1.0,  0.0, 1.0, 2.0, 3.0, 4.0], dtype=float)
ys = np.array([-3.0, -1.0, 1.0, 3.0, 5.0, 7.0], dtype=float)

# Train the model
model.fit(xs, ys, epochs=500)

# Input a new value and have the model calcualte the exptected
# output for the new data.
print("expect output of approx. 19.0")
print(model.predict([10.0]))
