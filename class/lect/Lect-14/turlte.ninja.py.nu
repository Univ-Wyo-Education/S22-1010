  1: import turtle 
  2: 
  3: ninja = turtle.Turtle()
  4: 
  5: ninja.speed(40)
  6: 
  7: for i in range(180):
  8:     ninja.forward(100)
  9:     ninja.right(30)
 10:     ninja.forward(20)
 11:     ninja.left(60)
 12:     ninja.forward(50)
 13:     ninja.right(30)
 14:     
 15:     ninja.penup()
 16:     ninja.setposition(0, 0)
 17:     ninja.pendown()
 18:     
 19:     ninja.right(2)
 20:     
 21: turtle.done()
