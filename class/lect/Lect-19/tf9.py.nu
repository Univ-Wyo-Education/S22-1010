  1: 
  2: from __future__ import absolute_import
  3: from __future__ import division
  4: from __future__ import print_function
  5: 
  6: import tensorflow as tf
  7: from tensorflow import keras
  8: 
  9: model = keras.models.load_model ( "./save/model.h5" )
 10: 
 11: x = float(input("Enter a number> "))
 12: pv = model.predict([x])
 13: 
 14: print ( "Input {x} Output {y}".format ( x=x, y=pv ) )
 15: 
