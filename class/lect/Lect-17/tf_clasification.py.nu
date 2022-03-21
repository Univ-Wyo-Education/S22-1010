  1: # TensorFlow and tf.keras - 1st Project
  2: import tensorflow as tf
  3: 
  4: # Helper libraries
  5: import numpy as np
  6: import matplotlib.pyplot as plt
  7: 
  8: # Check that we have TF loaded and working 
  9: print(tf.__version__)
 10: 
 11: # Fetch Data ---------------------------------------------------------------------
 12: fashion_mnist = tf.keras.datasets.fashion_mnist
 13: 
 14: (train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()
 15: 
 16: class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat',
 17:                'Sandal', 'Shirt', 'Sneaker', 'Bag', 'Ankle boot']
 18: 
 19: print ( "Number of Training Images, x by y in size" )
 20: print ( train_images.shape )
 21: 
 22: print ( "length of lables {}".format( len(train_labels) ) )
 23: print ( "train_lables = {}".format ( train_labels ) )
 24: 
 25: print ( "Number of Test Images, x by y in size" )
 26: print ( test_images.shape ) 
 27: 
 28: print ( "length of traingin lables {}".format( len(test_labels) ) )
 29: 
 30: plt.figure()
 31: plt.imshow(train_images[0])
 32: plt.colorbar()
 33: plt.grid(False)
 34: plt.show()
 35: 
 36: # Data "cleanup" --------------------------------------------------------------------
 37: # Modifiy images from 0..255 to 0..1 
 38: train_images = train_images / 255.0
 39: 
 40: test_images = test_images / 255.0
 41: 
 42: 
 43: # What images look like after modification. 
 44: plt.figure(figsize=(10,10))
 45: for i in range(25):
 46:     plt.subplot(5,5,i+1)
 47:     plt.xticks([])
 48:     plt.yticks([])
 49:     plt.grid(False)
 50:     plt.imshow(train_images[i], cmap=plt.cm.binary)
 51:     plt.xlabel(class_names[train_labels[i]])
 52: plt.show()
 53: 
 54: # The Model / Training ---------------------------------------------------------------
 55: # The Learning Model - 3 layers
 56: model = tf.keras.Sequential([
 57:     tf.keras.layers.Flatten(input_shape=(28, 28)),
 58:     tf.keras.layers.Dense(128, activation='relu'),
 59:     tf.keras.layers.Dense(10)
 60: ])
 61: 
 62: # The Learning Algorythm
 63: model.compile(optimizer='adam',
 64:               loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
 65:               metrics=['accuracy'])
 66: 
 67: # Train the Model
 68: model.fit(train_images, train_labels, epochs=10)
 69: 
 70: 
 71: 
 72: 
 73: 
 74: # Testing Accuracy of Model ----------------------------------------------------------
 75: 
 76: test_loss, test_acc = model.evaluate(test_images,  test_labels, verbose=2)
 77: 
 78: print('\nTest accuracy:', test_acc)
 79: 
 80: 
 81: 
 82: 
 83: 
 84: # Predictions with Model -------------------------------------------------------------
 85: probability_model = tf.keras.Sequential([model, 
 86:                                          tf.keras.layers.Softmax()])
 87: predictions = probability_model.predict(test_images)
 88: 
 89: print ( "Predictions [0] = {}".format ( predictions[0] ) )
 90: 
 91: print ( "Best Predition {}".format( np.argmax(predictions[0]) ) )
 92: 
 93: print ( "Test Lables {}".format( test_labels[0] ) )
 94: 
 95: # Some functions (def) to plot graphs of accuracy.
 96: def plot_image(i, predictions_array, true_label, img):
 97:   true_label, img = true_label[i], img[i]
 98:   plt.grid(False)
 99:   plt.xticks([])
100:   plt.yticks([])
101: 
102:   plt.imshow(img, cmap=plt.cm.binary)
103: 
104:   predicted_label = np.argmax(predictions_array)
105:   if predicted_label == true_label:
106:     color = 'blue'
107:   else:
108:     color = 'red'
109: 
110:   plt.xlabel("{} {:2.0f}% ({})".format(class_names[predicted_label],
111:                                 100*np.max(predictions_array),
112:                                 class_names[true_label]),
113:                                 color=color)
114: 
115: def plot_value_array(i, predictions_array, true_label):
116:   true_label = true_label[i]
117:   plt.grid(False)
118:   plt.xticks(range(10))
119:   plt.yticks([])
120:   thisplot = plt.bar(range(10), predictions_array, color="#777777")
121:   plt.ylim([0, 1])
122:   predicted_label = np.argmax(predictions_array)
123: 
124:   thisplot[predicted_label].set_color('red')
125:   thisplot[true_label].set_color('blue')
126: 
127: 
128: i = 0
129: plt.figure(figsize=(6,3))
130: plt.subplot(1,2,1)
131: plot_image(i, predictions[i], test_labels, test_images)
132: plt.subplot(1,2,2)
133: plot_value_array(i, predictions[i],  test_labels)
134: plt.show()
135: 
136: i = 12
137: plt.figure(figsize=(6,3))
138: plt.subplot(1,2,1)
139: plot_image(i, predictions[i], test_labels, test_images)
140: plt.subplot(1,2,2)
141: plot_value_array(i, predictions[i],  test_labels)
142: plt.show()
143: 
144: # Plot the first X test images, their predicted labels, and the true labels.
145: # Color correct predictions in blue and incorrect predictions in red.
146: num_rows = 5
147: num_cols = 3
148: num_images = num_rows*num_cols
149: plt.figure(figsize=(2*2*num_cols, 2*num_rows))
150: for i in range(num_images):
151:   plt.subplot(num_rows, 2*num_cols, 2*i+1)
152:   plot_image(i, predictions[i], test_labels, test_images)
153:   plt.subplot(num_rows, 2*num_cols, 2*i+2)
154:   plot_value_array(i, predictions[i], test_labels)
155: plt.tight_layout()
156: plt.show()
157: 
158: 
159: 
160: # Use the model on a single image ----------------------------------------------------
161: 
162: # Grab an image from the test dataset.
163: img = test_images[18]
164: 
165: print(img.shape)
166: 
167: # Add the image to a batch where it's the only member.
168: img = (np.expand_dims(img,0))
169: 
170: print(img.shape)
171: 
172: print ( "Now predict the correct label for a single image" )
173: 
174: predictions_single = probability_model.predict(img)
175: 
176: print( "Raw Data (predictions) = {}".format ( predictions_single) )
177: print( "" );
178: print ( "{:3} | {:12} | {:8}".format ( "Pos", "Class Names", "Likelyhood %") )
179: print ( "{:3} + {:12} + {:8}".format ( "---", "-----------", "------------") )
180: for i in range ( len ( predictions_single[0]) ):
181:     # print ( "i={:3} name={:12} likelyhood={:8.4f}%".format ( i, class_names[i], predictions_single[0][i]*100 ) )
182:     print ( "{:3} | {:12} | {:8.4f}%".format ( i, class_names[i], predictions_single[0][i]*100 ) )
183: 
184: plot_value_array(1, predictions_single[0], test_labels)
185: _ = plt.xticks(range(10), class_names, rotation=45)
186: plt.show()
187: 
188: print ( "Max Arguments = {}".format( np.argmax(predictions_single[0]) ) ) 
