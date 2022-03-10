  1: import tensorflow as tf
  2: 
  3: v3 = tf.constant(3)
  4: tf.print(v3)
  5: v5 = tf.constant(5)
  6: tf.print(v5)
  7: 
  8: b = tf.math.add(v3,v5)
  9: print_output = tf.print(b)
 10: 
 11: v2 = tf.constant(2)
 12: c = tf.math.multiply ( b, v2 )
 13: 
 14: print(c)
 15: tf.print(c)
