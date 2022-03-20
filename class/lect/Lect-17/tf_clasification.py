# TensorFlow and tf.keras - 1st Project
import tensorflow as tf

# Helper libraries
import numpy as np
import matplotlib.pyplot as plt

# Check that we have TF loaded and working 
print(tf.__version__)

# Fetch Data ---------------------------------------------------------------------
fashion_mnist = tf.keras.datasets.fashion_mnist

(train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()

class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat',
               'Sandal', 'Shirt', 'Sneaker', 'Bag', 'Ankle boot']

print ( "Number of Training Images, x by y in size" )
print ( train_images.shape )

print ( "length of lables {}".format( len(train_labels) ) )
print ( "train_lables = {}".format ( train_labels ) )

print ( "Number of Test Images, x by y in size" )
print ( test_images.shape ) 

print ( "length of traingin lables {}".format( len(test_labels) ) )

plt.figure()
plt.imshow(train_images[0])
plt.colorbar()
plt.grid(False)
plt.show()

# Data "cleanup" --------------------------------------------------------------------
# Modifiy images from 0..255 to 0..1 
train_images = train_images / 255.0

test_images = test_images / 255.0


# What images look like after modification. 
plt.figure(figsize=(10,10))
for i in range(25):
    plt.subplot(5,5,i+1)
    plt.xticks([])
    plt.yticks([])
    plt.grid(False)
    plt.imshow(train_images[i], cmap=plt.cm.binary)
    plt.xlabel(class_names[train_labels[i]])
plt.show()

# The Model / Training ---------------------------------------------------------------
# The Learning Model - 3 layers
model = tf.keras.Sequential([
    tf.keras.layers.Flatten(input_shape=(28, 28)),
    tf.keras.layers.Dense(128, activation='relu'),
    tf.keras.layers.Dense(10)
])

# The Learning Algorythm
model.compile(optimizer='adam',
              loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
              metrics=['accuracy'])

# Train the Model
model.fit(train_images, train_labels, epochs=10)





# Testing Accuracy of Model ----------------------------------------------------------

test_loss, test_acc = model.evaluate(test_images,  test_labels, verbose=2)

print('\nTest accuracy:', test_acc)





# Predictions with Model -------------------------------------------------------------
probability_model = tf.keras.Sequential([model, 
                                         tf.keras.layers.Softmax()])
predictions = probability_model.predict(test_images)

print ( "Predictions [0] = {}".format ( predictions[0] ) )

print ( "Best Predition {}".format( np.argmax(predictions[0]) ) )

print ( "Test Lables {}".format( test_labels[0] ) )

def plot_image(i, predictions_array, true_label, img):
  true_label, img = true_label[i], img[i]
  plt.grid(False)
  plt.xticks([])
  plt.yticks([])

  plt.imshow(img, cmap=plt.cm.binary)

  predicted_label = np.argmax(predictions_array)
  if predicted_label == true_label:
    color = 'blue'
  else:
    color = 'red'

  plt.xlabel("{} {:2.0f}% ({})".format(class_names[predicted_label],
                                100*np.max(predictions_array),
                                class_names[true_label]),
                                color=color)

def plot_value_array(i, predictions_array, true_label):
  true_label = true_label[i]
  plt.grid(False)
  plt.xticks(range(10))
  plt.yticks([])
  thisplot = plt.bar(range(10), predictions_array, color="#777777")
  plt.ylim([0, 1])
  predicted_label = np.argmax(predictions_array)

  thisplot[predicted_label].set_color('red')
  thisplot[true_label].set_color('blue')


i = 0
plt.figure(figsize=(6,3))
plt.subplot(1,2,1)
plot_image(i, predictions[i], test_labels, test_images)
plt.subplot(1,2,2)
plot_value_array(i, predictions[i],  test_labels)
plt.show()

i = 12
plt.figure(figsize=(6,3))
plt.subplot(1,2,1)
plot_image(i, predictions[i], test_labels, test_images)
plt.subplot(1,2,2)
plot_value_array(i, predictions[i],  test_labels)
plt.show()

# Plot the first X test images, their predicted labels, and the true labels.
# Color correct predictions in blue and incorrect predictions in red.
num_rows = 5
num_cols = 3
num_images = num_rows*num_cols
plt.figure(figsize=(2*2*num_cols, 2*num_rows))
for i in range(num_images):
  plt.subplot(num_rows, 2*num_cols, 2*i+1)
  plot_image(i, predictions[i], test_labels, test_images)
  plt.subplot(num_rows, 2*num_cols, 2*i+2)
  plot_value_array(i, predictions[i], test_labels)
plt.tight_layout()
plt.show()



# Use the model on a single image ----------------------------------------------------

# Grab an image from the test dataset.
img = test_images[18]

print(img.shape)

# Add the image to a batch where it's the only member.
img = (np.expand_dims(img,0))

print(img.shape)

print ( "Now predict the correct label for a single image" )

predictions_single = probability_model.predict(img)

print( "Raw Data (predictions) = {}".format ( predictions_single) )
print( "" );
print ( "{:3} | {:12} | {:8}".format ( "Pos", "Class Names", "Likelyhood %") )
print ( "{:3} + {:12} + {:8}".format ( "---", "-----------", "------------") )
for i in range ( len ( predictions_single[0]) ):
    # print ( "i={:3} name={:12} likelyhood={:8.4f}%".format ( i, class_names[i], predictions_single[0][i]*100 ) )
    print ( "{:3} | {:12} | {:8.4f}%".format ( i, class_names[i], predictions_single[0][i]*100 ) )

plot_value_array(1, predictions_single[0], test_labels)
_ = plt.xticks(range(10), class_names, rotation=45)
plt.show()

print ( "Max Arguments = {}".format( np.argmax(predictions_single[0]) ) ) 
