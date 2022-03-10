import tensorflow as tf

# Matrix A and B with shapes (3, 3) and (3, 3)
mmv_matrix_A = tf.constant([[1, 0, 0], [0, 1, 0], [0, 0, 1]], \
    name="matrix_A", dtype=tf.float32)
mmv_matrix_B = tf.constant([[1, 2, 3], [1, 2, 3], [1, 2, 3]], \
    name="matrix_B", dtype=tf.float32)

# Matrix Multiplication: C = AB with C shape (2, 4)
matrix_multiply_C = tf.matmul(mmv_matrix_A, mmv_matrix_B, \
    name="matrix_multiply_C")

print("""Matrix A: shape {0} \nelements: \n{1} \n\n
Matrix B: shape {2} \nelements: \n{3}\n
Matrix C: shape {4} \nelements: \n{5}""". \
    format(mmv_matrix_A.shape, mmv_matrix_A, mmv_matrix_B.shape, \
    mmv_matrix_B, matrix_multiply_C.shape, matrix_multiply_C))
