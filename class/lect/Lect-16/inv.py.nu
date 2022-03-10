  1: import tensorflow as tf
  2: 
  3: iim_matrix_A = tf.constant([[2, 3], [2, 2]], name='MatrixA', dtype=tf.float32)
  4: 
  5: try:
  6:     # Tensorflow function to take the inverse
  7:     inverse_matrix_A = tf.linalg.inv(iim_matrix_A)
  8: 
  9:     # Creating a identity matrix using tf.eye
 10:     identity_matrix = tf.eye(2, 2, dtype=tf.float32, name="identity")
 11: 
 12:     iim_RHS = identity_matrix
 13:     iim_LHS = tf.matmul(inverse_matrix_A, iim_matrix_A, name="LHS")
 14: 
 15:     predictor = tf.reduce_all(tf.equal(iim_RHS, iim_LHS))
 16:     def true_print(): print("""A^-1 times A equals the Identity Matrix
 17: Matrix A: \n{0} \n\nInverse of Matrix A: \n{1} \n\nRHS: I: \n{2} \n
 18: LHS: A^(-1) A: \n{3}""".format(iim_matrix_A, inverse_matrix_A,
 19:     iim_RHS, iim_LHS))
 20:     def false_print(): print("Condition Failed")
 21:     tf.cond(predictor, true_print, false_print)
 22: 
 23: except:
 24:     print("""A^-1 doesnt exist
 25:     Matrix A: \n{} \n\nInverse of Matrix A: \n{} \n\nRHS: I: \n{}
 26:     \nLHS: (A^(-1) A): \n{}""".format(iim_matrix_A, inverse_matrix_A, iim_RHS, iim_LHS))
