import turtle 

painter = turtle.Turtle()

painter.speed(40)

painter.pencolor("blue")
for i in range(42):
    painter.forward(50)
    painter.left(123) # Let's go counterclockwise this time 
    
painter.pencolor("red")
for i in range(42):
    painter.forward(100)
    painter.left(123)
    
turtle.done()
