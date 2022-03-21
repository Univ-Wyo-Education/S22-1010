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
 11: 
 12: # Fetch Data ---------------------------------------------------------------------
 13: fashion_mnist = tf.keras.datasets.fashion_mnist
 14: 
 15: (train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()
 16: 
 17: class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat',
 18:                'Sandal', 'Shirt', 'Sneaker', 'Bag', 'Ankle boot']
 19: 
 20: print ( "Number of Training Images, x by y in size" )
 21: print ( train_images.shape )
 22: 
 23: print ( "length of lables {}".format( len(train_labels) ) )
 24: print ( "train_lables = {}".format ( train_labels ) )
 25: 
 26: print ( "Number of Test Images, x by y in size" )
 27: print ( test_images.shape )
 28: 
 29: print ( "length of traingin lables {}".format( len(test_labels) ) )
 30: 
 31: plt.figure()
 32: plt.imshow(train_images[0])
 33: plt.colorbar()
 34: plt.grid(False)
 35: plt.show()
 36: 
 37: # Data "cleanup" --------------------------------------------------------------------
 38: # Modifiy images from 0..255 to 0..1
 39: train_images = train_images / 255.0
 40: 
 41: test_images = test_images / 255.0
 42: 
 43: 
 44: # What images look like after modification.
 45: plt.figure(figsize=(10,10))
 46: for i in range(25):
 47:     plt.subplot(5,5,i+1)
 48:     plt.xticks([])
 49:     plt.yticks([])
 50:     plt.grid(False)
 51:     plt.imshow(train_images[i], cmap=plt.cm.binary)
 52:     plt.xlabel(class_names[train_labels[i]])
 53: plt.show()
 54: 
 55: 
 56: 
 57: # The Model / Training ---------------------------------------------------------------
 58: # The Learning Model - 3 layers
 59: model = tf.keras.Sequential([
 60:     tf.keras.layers.Flatten(input_shape=(28, 28)),
 61:     tf.keras.layers.Dense(128, activation='relu'),
 62:     tf.keras.layers.Dense(10)
 63: ])
 64: 
 65: # The Learning Algorythm
 66: model.compile(optimizer='adam',
 67:               loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
 68:               metrics=['accuracy'])
 69: 
 70: # Train the Model
 71: model.fit(train_images, train_labels, epochs=10)
 72: 
 73: 
 74: # Testing Accuracy of Model ----------------------------------------------------------
 75: 
 76: test_loss, test_acc = model.evaluate(test_images,  test_labels, verbose=2)
 77: 
 78: print('\nTest accuracy:', test_acc)
 79: 
 80: # Predictions with Model -------------------------------------------------------------
 81: probability_model = tf.keras.Sequential([model,
 82:                                          tf.keras.layers.Softmax()])
 83: predictions = probability_model.predict(test_images)
 84: 
 85: print ( "Predictions [0] = {}".format ( predictions[0] ) )
 86: 
 87: print ( "Best Predition {}".format( np.argmax(predictions[0]) ) )
 88: 
 89: print ( "Test Lables {}".format( test_labels[0] ) )
 90: 
 91: 
 92: 
 93: 
 94: # Some functions (def) to plot graphs of accuracy.
 95: def plot_image(i, predictions_array, true_label, img):
 96:   true_label, img = true_label[i], img[i]
 97:   plt.grid(False)
 98:   plt.xticks([])
 99:   plt.yticks([])
100: 
101:   plt.imshow(img, cmap=plt.cm.binary)
102: 
103:   predicted_label = np.argmax(predictions_array)
104:   if predicted_label == true_label:
105:     color = 'blue'
106:   else:
107:     color = 'red'
108: 
109:   plt.xlabel("{} {:2.0f}% ({})".format(class_names[predicted_label],
110:                                 100*np.max(predictions_array),
111:                                 class_names[true_label]),
112:                                 color=color)
113: 
114: def plot_value_array(i, predictions_array, true_label):
115:   true_label = true_label[i]
116:   plt.grid(False)
117:   plt.xticks(range(10))
118:   plt.yticks([])
119:   thisplot = plt.bar(range(10), predictions_array, color="#777777")
120:   plt.ylim([0, 1])
121:   predicted_label = np.argmax(predictions_array)
122: 
123:   thisplot[predicted_label].set_color('red')
124:   thisplot[true_label].set_color('blue')
125: 
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
144: 
145: 
146: 
147: # Plot the first X test images, their predicted labels, and the true labels.
148: # Color correct predictions in blue and incorrect predictions in red.
149: num_rows = 5
150: num_cols = 3
151: num_images = num_rows*num_cols
152: plt.figure(figsize=(2*2*num_cols, 2*num_rows))
153: for i in range(num_images):
154:   plt.subplot(num_rows, 2*num_cols, 2*i+1)
155:   plot_image(i, predictions[i], test_labels, test_images)
156:   plt.subplot(num_rows, 2*num_cols, 2*i+2)
157:   plot_value_array(i, predictions[i], test_labels)
158: plt.tight_layout()
159: plt.show()
160: 
161: 
162: 
163: # Use the model on a single image ----------------------------------------------------
164: 
165: # Grab an image from the test dataset.
166: img = test_images[18]
167: 
168: print(img.shape)
169: 
170: # Add the image to a batch where it's the only member.
171: img = (np.expand_dims(img,0))
172: 
173: print(img.shape)
174: 
175: print ( "Now predict the correct label for a single image" )
176: 
177: predictions_single = probability_model.predict(img)
178: 
179: print( "Raw Data (predictions) = {}".format ( predictions_single) )
180: print( "" );
181: print ( "{:3} | {:12} | {:8}".format ( "Pos", "Class Names", "Likelyhood %") )
182: print ( "{:3} + {:12} + {:8}".format ( "---", "-----------", "------------") )
183: for i in range ( len ( predictions_single[0]) ):
184:     # print ( "i={:3} name={:12} likelyhood={:8.4f}%".format ( i, class_names[i], predictions_single[0][i]*100 ) )
185:     print ( "{:3} | {:12} | {:8.4f}%".format ( i, class_names[i], predictions_single[0][i]*100 ) )
186: 
187: plot_value_array(1, predictions_single[0], test_labels)
188: _ = plt.xticks(range(10), class_names, rotation=45)
189: plt.show()
190: 
191: print ( "Max Arguments = {}".format( np.argmax(predictions_single[0]) ) )