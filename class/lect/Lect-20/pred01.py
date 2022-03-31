
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import tensorflow as tf
import numpy as np
from tensorflow import keras
from tensorflow.keras.preprocessing import image

model = keras.models.load_model ('cats-and-dogs.h5')

IMG_HEIGHT = 150
IMG_WIDTH = 150




img = image.load_img('dog1.jpg', target_size = (IMG_WIDTH, IMG_HEIGHT))
img1 = image.img_to_array(img)
img2 = np.expand_dims(img1, axis = 0)

pv = model.predict(img2)

print ( 'prediction on dog1.jpg', pv )





img = image.load_img('dog2.jpg', target_size = (IMG_WIDTH, IMG_HEIGHT))
img1 = image.img_to_array(img)
img2 = np.expand_dims(img1, axis = 0)

pv = model.predict(img2)

print ( 'prediction on dog2.jpg', pv )
