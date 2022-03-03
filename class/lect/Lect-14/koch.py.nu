  1: # Python program to print complete Koch Curve. 
  2: from turtle import *
  3: 
  4: # function to create koch snowflake or koch curve 
  5: def snowflake(lengthSide, levels): 
  6:     if levels == 0: 
  7:         forward(lengthSide) 
  8:         return
  9:     lengthSide /= 3.0
 10:     snowflake(lengthSide, levels-1) 
 11:     left(60) 
 12:     snowflake(lengthSide, levels-1) 
 13:     right(120) 
 14:     snowflake(lengthSide, levels-1) 
 15:     left(60) 
 16:     snowflake(lengthSide, levels-1) 
 17: 
 18: # main function 
 19: if __name__ == "__main__": 
 20:     # defining the speed of the turtle 
 21:     speed(0)                 
 22:     length = 300.0
 23: 
 24:     # Pull the pen up  no drawing when moving. 
 25:     # Move the turtle backward by distance, opposite 
 26:     # to the direction the turtle is headed. 
 27:     # Do not change the turtles heading.         
 28:     penup()                     
 29: 
 30:     backward(length/2.0) 
 31: 
 32:     # Pull the pen down  drawing when moving.         
 33:     pendown()         
 34:     for i in range(3):     
 35:         snowflake(length, 4) 
 36:         right(120) 
 37: 
 38:     # To control the closing windows of the turtle 
 39:     mainloop()     
