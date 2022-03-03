  1: import turtle 
  2: 
  3: def tree(length,n):
  4:     if length < (length/n):
  5:            return
  6:     turtle.forward(length)
  7:     turtle.left(45)
  8:     tree(length * 0.5,length/n)
  9:     turtle.left(20)
 10:     tree(length * 0.5,length/n)
 11:     turtle.right(75)
 12:     tree(length * 0.5,length/n)
 13:     turtle.right(20)
 14:     tree(length * 0.5,length/n)
 15:     turtle.left(30)
 16:     turtle.backward(length)
 17:     return
 18: 
 19: turtle.left(90)
 20: turtle.backward(30)
 21: tree(200,4)
 22: 
 23: input("Press Enter to continue...")
