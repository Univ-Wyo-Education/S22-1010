  1: import tensorflow as tf
  2: 
  3: # Matrix A and B with shapes (3, 3) and (3, 3)
  4: mmv_matrix_A = tf.constant([[1, 0, 0], [0, 1, 0], [0, 0, 1]], \
  5:     name="matrix_A", dtype=tf.float32)
  6: mmv_matrix_B = tf.constant([[1, 2, 3], [1, 2, 3], [1, 2, 3]], \
  7:     name="matrix_B", dtype=tf.float32)
  8: 
  9: # Matrix Multiplication: C = AB with C shape (2, 4)
 10: matrix_multiply_C = tf.matmul(mmv_matrix_A, mmv_matrix_B, \
 11:     name="matrix_multiply_C")
 12: 
 13: print("""Matrix A: shape {0} \nelements: \n{1} \n\n
 14: Matrix B: shape {2} \nelements: \n{3}\n
 15: Matrix C: shape {4} \nelements: \n{5}""". \
 16:     format(mmv_matrix_A.shape, mmv_matrix_A, mmv_matrix_B.shape, \
 17:     mmv_matrix_B, matrix_multiply_C.shape, matrix_multiply_C))
