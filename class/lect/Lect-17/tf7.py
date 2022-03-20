from keras.datasets import mnist
# from matplotlib import pyplot
import matplotlib.pyplot as plt

# Load the data
(train_X, train_Y), (test_X, test_y) = mnist.load_data()

# Print the shape and other information about the data.

print('X_train: ' + str(train_X.shape))
print('Y_train: ' + str(train_Y.shape))
print('X_test:  '  + str(test_X.shape))
print('Y_test:  '  + str(test_y.shape))

# We sould get for output :
#
#X_train: (60000, 28, 28)
#Y_train: (60000,)
#X_test:  (10000, 28, 28)
#Y_test:  (10000,)

# Show a sample of images in the dataset

num = 15        # 15 images
images = train_X[:num]  # create slices of the data.
labels = train_Y[:num]

num_row = 3     # Arrange as 3 rows of 5 images
num_col = 5

# plot images
fig, axes = plt.subplots(num_row, num_col, figsize=(1.5*num_col,2*num_row))
for i in range(num):
    ax = axes[i//num_col, i%num_col]
    ax.imshow(images[i], cmap='gray')
    ax.set_title('Label: {}'.format(labels[i]))
plt.tight_layout()

plt.show()
