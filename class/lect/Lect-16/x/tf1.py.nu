  1: import tensorflow as tf
  2: 
  3: x = tf.constant(-2.0, name="x", dtype=tf.float32)
  4: a = tf.constant(5.0, name="a", dtype=tf.float32)
  5: b = tf.constant(13.0, name="b", dtype=tf.float32)
  6: 
  7: y = tf.Variable(tf.add(tf.multiply(a, x), b))
  8: 
  9: init = tf.global_variables_initializer()
 10: 
 11: with tf.Session() as session:
 12:     session.run(init)
 13:     print session.run(y)
