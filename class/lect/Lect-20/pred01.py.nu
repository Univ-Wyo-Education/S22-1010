  1: 
  2: from __future__ import absolute_import
  3: from __future__ import division
  4: from __future__ import print_function
  5: 
  6: import tensorflow as tf
  7: import numpy as np
  8: from tensorflow import keras
  9: from tensorflow.keras.preprocessing import image
 10: 
 11: model = keras.models.load_model ('cats-and-dogs.h5')
 12: 
 13: IMG_HEIGHT = 150
 14: IMG_WIDTH = 150
 15: 
 16: 
 17: 
 18: 
 19: img = image.load_img('dog1.jpg', target_size = (IMG_WIDTH, IMG_HEIGHT))
 20: img1 = image.img_to_array(img)
 21: img2 = np.expand_dims(img1, axis = 0)
 22: 
 23: pv = model.predict(img2)
 24: 
 25: print ( 'prediction on dog1.jpg', pv )
 26: 
 27: 
 28: 
 29: 
 30: 
 31: img = image.load_img('dog2.jpg', target_size = (IMG_WIDTH, IMG_HEIGHT))
 32: img1 = image.img_to_array(img)
 33: img2 = np.expand_dims(img1, axis = 0)
 34: 
 35: pv = model.predict(img2)
 36: 
 37: print ( 'prediction on dog2.jpg', pv )
