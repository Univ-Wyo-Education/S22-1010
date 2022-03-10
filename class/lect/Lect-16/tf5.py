import tensorflow as tf

v3 = tf.constant(3)
tf.print(v3)
v5 = tf.constant(5)
tf.print(v5)

b = tf.math.add(v3,v5)
print_output = tf.print(b)

v2 = tf.constant(2)
c = tf.math.multiply ( b, v2 )

print(c)
tf.print(c)
