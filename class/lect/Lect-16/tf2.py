import tensorflow as tf

c = tf.constant([[1,2,3,4], [-1,-2,-3,-4], [5,6,7,8]])
b = tf.math.segment_sum(c, tf.constant([0, 0, 1]))

print(c)
print(b)
