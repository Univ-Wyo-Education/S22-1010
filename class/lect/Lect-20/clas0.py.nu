  1: # From: https://www.tensorflow.org/tutorials/images/classification
  2: 
  3: # mport packages
  4: # ----------------------
  5: # start by importing the required packages. The os package is used to read files
  6: # and directory structure, NumPy is used to convert python list to numpy array and
  7: # to perform required matrix operations and matplotlib.pyplot to plot the graph
  8: # and display images in the training and validation data.
  9: 
 10: from __future__ import absolute_import, division, print_function, unicode_literals
 11: 
 12: # Import Tensorflow and the Keras classes needed to construct our model.
 13: 
 14: from datetime import datetime
 15: from packaging import version
 16: 
 17: import tensorflow as tf
 18: 
 19: print("TensorFlow version: ", tf.__version__)
 20: assert version.parse(tf.__version__).release[0] >= 2, "This program TensorFlow 2.0 or above."
 21: 
 22: from tensorflow.keras.models import Sequential
 23: from tensorflow.keras.layers import Dense, Conv2D, Flatten, Dropout, MaxPooling2D
 24: from tensorflow.keras.preprocessing.image import ImageDataGenerator
 25: 
 26: import os
 27: import numpy as np
 28: import matplotlib.pyplot as plt
 29: 
 30: # Load data
 31: # ----------------------
 32: # Begin by downloading the dataset. This tutorial uses a filtered version of Dogs
 33: # vs Cats dataset from Kaggle. Download the archive version of the dataset and
 34: # store it in the "/tmp/" directory.
 35: 
 36: _URL = 'https://storage.googleapis.com/mledu-datasets/cats_and_dogs_filtered.zip'
 37: 
 38: path_to_zip = tf.keras.utils.get_file('cats_and_dogs.zip', origin=_URL, extract=True)
 39: 
 40: PATH = os.path.join(os.path.dirname(path_to_zip), 'cats_and_dogs_filtered')
 41: 
 42: # The dataset has the following directory structure:
 43: #
 44: #cats_and_dogs_filtered
 45: #|__ train
 46: #    |______ cats: [cat.0.jpg, cat.1.jpg, cat.2.jpg ....]
 47: #    |______ dogs: [dog.0.jpg, dog.1.jpg, dog.2.jpg ...]
 48: #|__ validation
 49: #    |______ cats: [cat.2000.jpg, cat.2001.jpg, cat.2002.jpg ....]
 50: #    |______ dogs: [dog.2000.jpg, dog.2001.jpg, dog.2002.jpg ...]
 51: # After extracting its contents, assign variables with the proper file path for
 52: # the training and validation set.
 53: 
 54: train_dir = os.path.join(PATH, 'train')
 55: validation_dir = os.path.join(PATH, 'validation')
 56: 
 57: train_cats_dir = os.path.join(train_dir, 'cats')  # our training cat pictures
 58: train_dogs_dir = os.path.join(train_dir, 'dogs')  # our training dog pictures
 59: validation_cats_dir = os.path.join(validation_dir, 'cats')  # our validation cat pictures
 60: validation_dogs_dir = os.path.join(validation_dir, 'dogs')  # our validation dog pictures
 61: 
 62: # Understand the data
 63: # ----------------------
 64: # Let's look at how many cats and dogs images are in the training and
 65: # validation directory:
 66: 
 67: num_cats_tr = len(os.listdir(train_cats_dir))
 68: num_dogs_tr = len(os.listdir(train_dogs_dir))
 69: 
 70: num_cats_val = len(os.listdir(validation_cats_dir))
 71: num_dogs_val = len(os.listdir(validation_dogs_dir))
 72: 
 73: total_train = num_cats_tr + num_dogs_tr
 74: total_val = num_cats_val + num_dogs_val
 75: 
 76: print('total training cat images:', num_cats_tr)
 77: print('total training dog images:', num_dogs_tr)
 78: 
 79: print('total validation cat images:', num_cats_val)
 80: print('total validation dog images:', num_dogs_val)
 81: print("--")
 82: print("Total training images:", total_train)
 83: print("Total validation images:", total_val)
 84: 
 85: # For convenience, set up variables to use while pre-processing the dataset and
 86: # training the network.
 87: 
 88: batch_size = 128
 89: epochs = 15
 90: IMG_HEIGHT = 150
 91: IMG_WIDTH = 150
 92: 
 93: 
 94: 
 95: # Data preparation
 96: # ----------------------
 97: # Format the images into appropriately pre-processed floating point tensors
 98: # before feeding to the network
 99: 
100: # Read images from the disk.
101: # Decode contents of these images and convert it into proper grid format as
102: # per their RGB content.
103: #
104: # Convert them into floating point tensors.
105: # Rescale the tensors from values between 0 and 255 to values between 0 and 1, as
106: # neural networks prefer to deal with small input values. Fortunately, all these
107: # tasks can be done with the ImageDataGenerator class provided by tf.keras. It can
108: # read images from disk and preprocess them into proper tensors. It will also set
109: # up generators that convert these images into batches of tensors—helpful when
110: # training the network.
111: 
112: train_image_generator = ImageDataGenerator(rescale=1./255) # Generator for our training data
113: validation_image_generator = ImageDataGenerator(rescale=1./255) # Generator for our validation data
114: 
115: # After defining the generators for training and validation images, the
116: # flow_from_directory method load images from the disk, applies rescaling, and
117: # resizes the images into the required dimensions.
118: 
119: train_data_gen = train_image_generator.flow_from_directory(batch_size=batch_size,
120:      directory=train_dir,
121:      shuffle=True,
122:      target_size=(IMG_HEIGHT, IMG_WIDTH),
123:      class_mode='binary')
124: 
125: val_data_gen = validation_image_generator.flow_from_directory(batch_size=batch_size,
126:      directory=validation_dir,
127:      target_size=(IMG_HEIGHT, IMG_WIDTH),
128:      class_mode='binary')
129: 
130: # Visualize training images
131: # ----------------------
132: # Visualize the training images by extracting a batch of images from the
133: # training generator—which is 32 images in this example—then plot five of
134: # them with matplotlib.
135: 
136: sample_training_images, _ = next(train_data_gen)
137: 
138: # The next function returns a batch from the dataset. The return value of next
139: # function is in form of (x_train, y_train) where x_train is training features
140: # and y_train, its labels. Discard the labels to only visualize the training
141: # images.
142: 
143: # This function will plot images in the form of a grid with 1 row and 5 columns
144: # where images are placed in each column.
145: def plotImages(images_arr):
146:     fig, axes = plt.subplots(1, 5, figsize=(20,20))
147:     axes = axes.flatten()
148:     for img, ax in zip( images_arr, axes):
149:         ax.imshow(img)
150:         ax.axis('off')
151:     plt.tight_layout()
152:     plt.show()
153: 
154: plotImages(sample_training_images[:5])
155: 
156: 
157: 
158: # Revised with image manipulation.
159: # ----------------------------
160: 
161: # Apply all the previous augmentations. Here, you applied rescale, 45 degree
162: # rotation, width shift, height shift, horizontal flip and zoom augmentation to
163: # the training images.
164: 
165: image_gen_train = ImageDataGenerator(
166:                     rescale=1./255,
167:                     rotation_range=45,
168:                     width_shift_range=.15,
169:                     height_shift_range=.15,
170:                     horizontal_flip=True,
171:                     zoom_range=0.5
172:                     )
173: 
174: train_data_gen = image_gen_train.flow_from_directory(batch_size=batch_size,
175:                                                      directory=train_dir,
176:                                                      shuffle=True,
177:                                                      target_size=(IMG_HEIGHT, IMG_WIDTH),
178:                                                      class_mode='binary')
179: 
180: # Visualize how a single image would look five different times when passing these augmentations randomly to the dataset.
181: 
182: augmented_images = [train_data_gen[0][0][0] for i in range(5)]
183: plotImages(augmented_images)
184: 
185: # Create validation data generator
186: # Generally, only apply data augmentation to the training examples. In this case, only rescale the validation images and convert them into batches using ImageDataGenerator.
187: 
188: image_gen_val = ImageDataGenerator(rescale=1./255)
189: 
190: val_data_gen = image_gen_val.flow_from_directory(batch_size=batch_size,
191:                                                  directory=validation_dir,
192:                                                  target_size=(IMG_HEIGHT, IMG_WIDTH),
193:                                                  class_mode='binary')
194: 
195: 
196: 
197: # Create the model
198: # ----------------------------
199: # The model consists of three convolution blocks with a max pool layer in each
200: # of them. There's a fully connected layer with 512 units on top of it that is
201: # activated by a relu activation function. The model outputs class
202: # probabilities based on binary classification by the sigmoid activation
203: # function.
204: 
205: model = Sequential([
206:     Conv2D(16, 3, padding='same', activation='relu', input_shape=(IMG_HEIGHT, IMG_WIDTH ,3)),
207:     MaxPooling2D(),
208:     Conv2D(32, 3, padding='same', activation='relu'),
209:     MaxPooling2D(),
210:     Conv2D(64, 3, padding='same', activation='relu'),
211:     MaxPooling2D(),
212:     Flatten(),
213:     Dense(512, activation='relu'),
214:     Dense(1, activation='sigmoid')
215: ])
216: 
217: 
218: # Compile the model
219: # ----------------------------
220: # For this tutorial, choose the ADAM optimizer and binary cross entropy loss
221: # function. To view training and validation accuracy for each training epoch,
222: # pass the metrics argument.
223: 
224: model.compile(optimizer='adam',
225:               loss='binary_crossentropy',
226:               metrics=['accuracy'])
227: 
228: # Model summary
229: # ----------------------------
230: # View all the layers of the network using the model's summary method:
231: 
232: model.summary()
233: 
234: # Train the model
235: # ----------------------------
236: # Use the fit_generator method of the ImageDataGenerator class to train the network.
237: 
238: history = model.fit_generator(
239:     train_data_gen,
240:     steps_per_epoch=total_train // batch_size,
241:     epochs=epochs,
242:     validation_data=val_data_gen,
243:     validation_steps=total_val // batch_size
244: )
245: 
246: 
247: # Visualize training results
248: # ----------------------------
249: # Now visualize the results after training the network.
250: 
251: acc = history.history['accuracy']
252: val_acc = history.history['val_accuracy']
253: 
254: loss = history.history['loss']
255: val_loss = history.history['val_loss']
256: 
257: epochs_range = range(epochs)
258: 
259: plt.figure(figsize=(8, 8))
260: plt.subplot(1, 2, 1)
261: plt.plot(epochs_range, acc, label='Training Accuracy')
262: plt.plot(epochs_range, val_acc, label='Validation Accuracy')
263: plt.legend(loc='lower right')
264: plt.title('Training and Validation Accuracy')
265: 
266: plt.subplot(1, 2, 2)
267: plt.plot(epochs_range, loss, label='Training Loss')
268: plt.plot(epochs_range, val_loss, label='Validation Loss')
269: plt.legend(loc='upper right')
270: plt.title('Training and Validation Loss')
271: plt.show()
272: 
273: 
274: # Save Model
275: # ----------------------------
276: 
277: model.save('cats-and-dogs.h5')
278: 
