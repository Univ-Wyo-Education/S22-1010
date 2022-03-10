  1: import tensorflow as tf
  2: 
  3: # let's create a ones 3x3 rank 2 tensor
  4: rank_2_tensor_A = tf.ones([3, 3], name='MatrixA')
  5: print("3x3 Rank 2 Tensor A: \n{}\n".format(rank_2_tensor_A))
  6: 
  7: # let's manually create a 3x3 rank two tensor and specify the data type as float
  8: rank_2_tensor_B = tf.constant([[1, 2, 3], [4, 5, 6], [7, 8, 9]], name='MatrixB', dtype=tf.float32)
  9: print("3x3 Rank 2 Tensor B: \n{}\n".format(rank_2_tensor_B))
 10: 
 11: # addition of the two tensors
 12: rank_2_tensor_C = tf.add(rank_2_tensor_A, rank_2_tensor_B, name='MatrixC')
 13: print("Rank 2 Tensor C with shape={} and elements: \n{}".format(rank_2_tensor_C.shape, rank_2_tensor_C))
