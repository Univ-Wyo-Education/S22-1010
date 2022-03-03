  1: import turtle 
  2: 
  3: painter = turtle.Turtle()
  4: 
  5: painter.speed(40)
  6: 
  7: painter.pencolor("blue")
  8: for i in range(42):
  9:     painter.forward(50)
 10:     painter.left(123) # Let's go counterclockwise this time 
 11:     
 12: painter.pencolor("red")
 13: for i in range(42):
 14:     painter.forward(100)
 15:     painter.left(123)
 16:     
 17: turtle.done()
