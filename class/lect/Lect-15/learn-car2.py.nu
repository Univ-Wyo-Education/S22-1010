  1: # example of a cnn for image classification
  2: from numpy import asarray
  3: from numpy import unique
  4: from numpy import argmax
  5: from tensorflow.keras.datasets.mnist import load_data
  6: from tensorflow.keras import Sequential
  7: from tensorflow.keras.layers import Dense
  8: from tensorflow.keras.layers import Conv2D
  9: from tensorflow.keras.layers import MaxPool2D
 10: from tensorflow.keras.layers import Flatten
 11: from tensorflow.keras.layers import Dropout
 12: # load dataset
 13: (x_train, y_train), (x_test, y_test) = load_data()
 14: # reshape data to have a single channel
 15: x_train = x_train.reshape((x_train.shape[0], x_train.shape[1], x_train.shape[2], 1))
 16: x_test = x_test.reshape((x_test.shape[0], x_test.shape[1], x_test.shape[2], 1))
 17: # determine the shape of the input images
 18: in_shape = x_train.shape[1:]
 19: # determine the number of classes
 20: n_classes = len(unique(y_train))
 21: print(in_shape, n_classes)
 22: # normalize pixel values
 23: x_train = x_train.astype('float32') / 255.0
 24: x_test = x_test.astype('float32') / 255.0
 25: # define model
 26: model = Sequential()
 27: model.add(Conv2D(32, (3,3), activation='relu', kernel_initializer='he_uniform', input_shape=in_shape))
 28: model.add(MaxPool2D((2, 2)))
 29: model.add(Flatten())
 30: model.add(Dense(100, activation='relu', kernel_initializer='he_uniform'))
 31: model.add(Dropout(0.5))
 32: model.add(Dense(n_classes, activation='softmax'))
 33: # define loss and optimizer
 34: model.compile(optimizer='adam', loss='sparse_categorical_crossentropy', metrics=['accuracy'])
 35: # fit the model
 36: model.fit(x_train, y_train, epochs=10, batch_size=128, verbose=0)
 37: # evaluate the model
 38: loss, acc = model.evaluate(x_test, y_test, verbose=0)
 39: print('Accuracy: %.3f' % acc)
 40: # make a prediction
 41: image = x_train[0]
 42: yhat = model.predict(asarray([image]))
 43: print('Predicted: class=%d' % argmax(yhat))
