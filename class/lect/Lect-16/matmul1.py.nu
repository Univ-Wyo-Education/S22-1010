  1: import tensorflow as tf
  2: 
  3: # Matrix A and B with shapes (2, 3) and (3, 4)
  4: mmv_matrix_A = tf.ones([2, 3], name="matrix_A")
  5: mmv_matrix_B = tf.constant([[1, 2, 3, 4], [1, 2, 3, 4], [1, 2, 3, 4]], \
  6:     name="matrix_B", dtype=tf.float32)
  7: 
  8: # Matrix Multiplication: C = AB with C shape (2, 4)
  9: matrix_multiply_C = tf.matmul(mmv_matrix_A, mmv_matrix_B, \
 10:     name="matrix_multiply_C")
 11: 
 12: print("""Matrix A: shape {0} \nelements: \n{1} \n\n
 13: Matrix B: shape {2} \nelements: \n{3}\n
 14: Matrix C: shape {4} \nelements: \n{5}""". \
 15:     format(mmv_matrix_A.shape, mmv_matrix_A, mmv_matrix_B.shape, \
 16:     mmv_matrix_B, matrix_multiply_C.shape, matrix_multiply_C))
