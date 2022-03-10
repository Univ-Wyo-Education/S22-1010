  1: from keras.datasets import mnist
  2: # from matplotlib import pyplot
  3: import matplotlib.pyplot as plt
  4: 
  5: # Load the data
  6: (train_X, train_Y), (test_X, test_y) = mnist.load_data()
  7: 
  8: # Print the shape and other information about the data.
  9: 
 10: print('X_train: ' + str(train_X.shape))
 11: print('Y_train: ' + str(train_Y.shape))
 12: print('X_test:  '  + str(test_X.shape))
 13: print('Y_test:  '  + str(test_y.shape))
 14: 
 15: # We sould get for output :
 16: #
 17: #X_train: (60000, 28, 28)
 18: #Y_train: (60000,)
 19: #X_test:  (10000, 28, 28)
 20: #Y_test:  (10000,)
 21: 
 22: # Show a sample of images in the dataset
 23: 
 24: num = 15        # 15 images
 25: images = train_X[:num]  # create slices of the data.
 26: labels = train_Y[:num]
 27: 
 28: num_row = 3     # Arrange as 3 rows of 5 images
 29: num_col = 5
 30: 
 31: # plot images
 32: fig, axes = plt.subplots(num_row, num_col, figsize=(1.5*num_col,2*num_row))
 33: for i in range(num):
 34:     ax = axes[i//num_col, i%num_col]
 35:     ax.imshow(images[i], cmap='gray')
 36:     ax.set_title('Label: {}'.format(labels[i]))
 37: plt.tight_layout()
 38: 
 39: plt.show()
