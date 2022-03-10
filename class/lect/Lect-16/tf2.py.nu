  1: import tensorflow as tf
  2: 
  3: c = tf.constant([[1,2,3,4], [-1,-2,-3,-4], [5,6,7,8]])
  4: b = tf.math.segment_sum(c, tf.constant([0, 0, 1]))
  5: 
  6: print(c)
  7: print(b)
