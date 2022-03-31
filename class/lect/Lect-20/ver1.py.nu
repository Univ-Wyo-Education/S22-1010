  1: # https://www.tensorflow.org/tutorials/images/classification
  2: 
  3: # mport packages
  4: # Let's start by importing the required packages. The os package is used to read files and directory structure, NumPy is used to convert python list to numpy array and to perform required matrix operations and matplotlib.pyplot to plot the graph and display images in the training and validation data.
  5: 
  6: from __future__ import absolute_import, division, print_function, unicode_literals
  7: 
  8: # Import Tensorflow and the Keras classes needed to construct our model.
  9: 
 10: from datetime import datetime
 11: from packaging import version
 12: 
 13: import tensorflow as tf
 14: 
 15: print("TensorFlow version: ", tf.__version__)
 16: assert version.parse(tf.__version__).release[0] >= 2, "This program TensorFlow 2.0 or above."
 17: 
 18: from tensorflow.keras.models import Sequential
 19: from tensorflow.keras.layers import Dense, Conv2D, Flatten, Dropout, MaxPooling2D
 20: from tensorflow.keras.preprocessing.image import ImageDataGenerator
 21: 
 22: import os
 23: import numpy as np
 24: import matplotlib.pyplot as plt
 25: 
 26: # Load data
 27: # Begin by downloading the dataset. This tutorial uses a filtered version of Dogs vs Cats dataset from Kaggle. Download the archive version of the dataset and store it in the "/tmp/" directory.
 28: 
 29: _URL = 'https://storage.googleapis.com/mledu-datasets/cats_and_dogs_filtered.zip'
 30: 
 31: path_to_zip = tf.keras.utils.get_file('cats_and_dogs.zip', origin=_URL, extract=True)
 32: 
 33: PATH = os.path.join(os.path.dirname(path_to_zip), 'cats_and_dogs_filtered')
 34: 
 35: # The dataset has the following directory structure:
 36: #
 37: #cats_and_dogs_filtered
 38: #|__ train
 39: #    |______ cats: [cat.0.jpg, cat.1.jpg, cat.2.jpg ....]
 40: #    |______ dogs: [dog.0.jpg, dog.1.jpg, dog.2.jpg ...]
 41: #|__ validation
 42: #    |______ cats: [cat.2000.jpg, cat.2001.jpg, cat.2002.jpg ....]
 43: #    |______ dogs: [dog.2000.jpg, dog.2001.jpg, dog.2002.jpg ...]
 44: #After extracting its contents, assign variables with the proper file path for the training and validation set.
 45: 
 46: train_dir = os.path.join(PATH, 'train')
 47: validation_dir = os.path.join(PATH, 'validation')
 48: 
 49: train_cats_dir = os.path.join(train_dir, 'cats')  # directory with our training cat pictures
 50: train_dogs_dir = os.path.join(train_dir, 'dogs')  # directory with our training dog pictures
 51: validation_cats_dir = os.path.join(validation_dir, 'cats')  # directory with our validation cat pictures
 52: validation_dogs_dir = os.path.join(validation_dir, 'dogs')  # directory with our validation dog pictures
 53: 
 54: # Understand the data
 55: # Let's look at how many cats and dogs images are in the training and validation directory:
 56: 
 57: num_cats_tr = len(os.listdir(train_cats_dir))
 58: num_dogs_tr = len(os.listdir(train_dogs_dir))
 59: 
 60: num_cats_val = len(os.listdir(validation_cats_dir))
 61: num_dogs_val = len(os.listdir(validation_dogs_dir))
 62: 
 63: total_train = num_cats_tr + num_dogs_tr
 64: total_val = num_cats_val + num_dogs_val
 65: 
 66: print('total training cat images:', num_cats_tr)
 67: print('total training dog images:', num_dogs_tr)
 68: 
 69: print('total validation cat images:', num_cats_val)
 70: print('total validation dog images:', num_dogs_val)
 71: print("--")
 72: print("Total training images:", total_train)
 73: print("Total validation images:", total_val)
 74: # For convenience, set up variables to use while pre-processing the dataset and training the network.
 75: 
 76: batch_size = 128
 77: epochs = 15
 78: IMG_HEIGHT = 150
 79: IMG_WIDTH = 150
 80: 
 81: 
 82: 
 83: # Data preparation
 84: # Format the images into appropriately pre-processed floating point tensors before feeding to the network:
 85: 
 86: # Read images from the disk.
 87: # Decode contents of these images and convert it into proper grid format as per their RGB content.
 88: # Convert them into floating point tensors.
 89: # Rescale the tensors from values between 0 and 255 to values between 0 and 1, as neural networks prefer to deal with small input values.
 90: # Fortunately, all these tasks can be done with the ImageDataGenerator class provided by tf.keras. It can read images from disk and preprocess them into proper tensors. It will also set up generators that convert these images into batches of tensors—helpful when training the network.
 91: 
 92: train_image_generator = ImageDataGenerator(rescale=1./255) # Generator for our training data
 93: validation_image_generator = ImageDataGenerator(rescale=1./255) # Generator for our validation data
 94: 
 95: # After defining the generators for training and validation images, the flow_from_directory method load images from the disk, applies rescaling, and resizes the images into the required dimensions.
 96: 
 97: train_data_gen = train_image_generator.flow_from_directory(batch_size=batch_size,
 98:      directory=train_dir,
 99:      shuffle=True,
100:      target_size=(IMG_HEIGHT, IMG_WIDTH),
101:      class_mode='binary')
102: 
103: val_data_gen = validation_image_generator.flow_from_directory(batch_size=batch_size,
104:      directory=validation_dir,
105:      target_size=(IMG_HEIGHT, IMG_WIDTH),
106:      class_mode='binary')
107: 
108: # Visualize training images
109: # Visualize the training images by extracting a batch of images from the training generator—which is 32 images in this example—then plot five of them with matplotlib.
110: 
111: sample_training_images, _ = next(train_data_gen)
112: 
113: # The next function returns a batch from the dataset. The return value of next function is in form of (x_train, y_train) where x_train is training features and y_train, its labels. Discard the labels to only visualize the training images.
114: 
115: # This function will plot images in the form of a grid with 1 row and 5 columns where images are placed in each column.
116: def plotImages(images_arr):
117:     fig, axes = plt.subplots(1, 5, figsize=(20,20))
118:     axes = axes.flatten()
119:     for img, ax in zip( images_arr, axes):
120:         ax.imshow(img)
121:         ax.axis('off')
122:     plt.tight_layout()
123:     plt.show()
124: 
125: plotImages(sample_training_images[:5])
126: 
127: 
128: 
129: 
130: # Create the model
131: # The model consists of three convolution blocks with a max pool layer in each of them. There's a fully connected layer with 512 units on top of it that is activated by a relu
132: # activation function. The model outputs class probabilities based on binary classification by the sigmoid activation function.
133: 
134: model = Sequential([
135:     Conv2D(16, 3, padding='same', activation='relu', input_shape=(IMG_HEIGHT, IMG_WIDTH ,3)),
136:     MaxPooling2D(),
137:     Conv2D(32, 3, padding='same', activation='relu'),
138:     MaxPooling2D(),
139:     Conv2D(64, 3, padding='same', activation='relu'),
140:     MaxPooling2D(),
141:     Flatten(),
142:     Dense(512, activation='relu'),
143:     Dense(1, activation='sigmoid')
144: ])
145: 
146: 
147: # Compile the model
148: # For this tutorial, choose the ADAM optimizer and binary cross entropy loss function. To view training and validation accuracy for each training epoch, pass the metrics argument.
149: 
150: model.compile(optimizer='adam',
151:               loss='binary_crossentropy',
152:               metrics=['accuracy'])
153: 
154: # Model summary
155: # View all the layers of the network using the model's summary method:
156: 
157: model.summary()
158: 
159: # Train the model
160: # Use the fit_generator method of the ImageDataGenerator class to train the network.
161: 
162: history = model.fit_generator(
163:     train_data_gen,
164:     steps_per_epoch=total_train // batch_size,
165:     epochs=epochs,
166:     validation_data=val_data_gen,
167:     validation_steps=total_val // batch_size
168: )
169: 
170: 
171: # Visualize training results
172: # Now visualize the results after training the network.
173: 
174: acc = history.history['accuracy']
175: val_acc = history.history['val_accuracy']
176: 
177: loss = history.history['loss']
178: val_loss = history.history['val_loss']
179: 
180: epochs_range = range(epochs)
181: 
182: plt.figure(figsize=(8, 8))
183: plt.subplot(1, 2, 1)
184: plt.plot(epochs_range, acc, label='Training Accuracy')
185: plt.plot(epochs_range, val_acc, label='Validation Accuracy')
186: plt.legend(loc='lower right')
187: plt.title('Training and Validation Accuracy')
188: 
189: plt.subplot(1, 2, 2)
190: plt.plot(epochs_range, loss, label='Training Loss')
191: plt.plot(epochs_range, val_loss, label='Validation Loss')
192: plt.legend(loc='upper right')
193: plt.title('Training and Validation Loss')
194: plt.show()
195: 
196: # As you can see from the plots, training accuracy and validation accuracy are off by large margin and the model has achieved only around 70% accuracy on the validation set.
197: # Let's look at what went wrong and try to increase overall performance of the model.
198: 
199: 
