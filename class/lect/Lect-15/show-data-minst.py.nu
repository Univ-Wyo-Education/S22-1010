  1: # example of loading and plotting the mnist dataset
  2: from tensorflow.keras.datasets.mnist import load_data
  3: from matplotlib import pyplot
  4: # load dataset
  5: (trainX, trainy), (testX, testy) = load_data()
  6: # summarize loaded dataset
  7: print('Train: X=%s, y=%s' % (trainX.shape, trainy.shape))
  8: print('Test: X=%s, y=%s' % (testX.shape, testy.shape))
  9: # plot first few images
 10: for i in range(25):
 11:     # define subplot
 12:     pyplot.subplot(5, 5, i+1)
 13:     # plot raw pixel data
 14:     pyplot.imshow(trainX[i], cmap=pyplot.get_cmap('gray'))
 15: # show the figure
 16: pyplot.show()
