
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import tensorflow as tf
from tensorflow import keras

model = keras.models.load_model ( "./save/model.h5" )

x = float(input("Enter a number> "))
pv = model.predict([x])

print ( "Input {x} Output {y}".format ( x=x, y=pv ) )

