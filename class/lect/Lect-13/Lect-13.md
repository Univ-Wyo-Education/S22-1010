
<style>
.pagebreak { page-break-before: always; }
.half { height: 200px; }
</style>
<style>
.pagebreak { page-break-before: always; }
.half { height: 200px; }
.markdown-body {
	font-size: 12px;
}
.markdown-body td {
	font-size: 12px;
}
</style>


# Lecture 13 - finding a pattern in a range

```

```



## Objects as a way to manage state


An object is a mix of data and code.

Let's model vehicles.

How do we associate code and data in a simple class.

"words" that you have to use:

class - the thing that defines that this is an "object"

__init__ - the thing that sets up a class - called a "constructor"

__main__ - the special name that allows you to build tests in the same file as a class.

self - the name that allows you to access the data associated with this "instance" of an object.

an "instances" is the "type" of a class with its data.


This is the definition or "type" for the object.

vehicle1.py:

```
  1: class Vehicle:
  2: 
  3:     """ this is a constructor """
  4:     def __init__ ( self, manufacturer, vtype, year ):
  5:         self.year = year    
  6:         self.vtype = vtype    
  7:         self.manufacturer = manufacturer    
  8:         self.odometer = 0
  9: 
 10: 
 11:     """ this is a Method """
 12:     def SetMilage ( self, n ):
 13:         if n < 0 :
 14:             print ( "Error: can't take milage off" )
 15:         else:
 16:             self.odomoter = self.odomoter + n
 17: 
 18: v1 = Vehicle( 'Tonka', 'truck', 2020 )
 19: v2 = Vehicle( 'NASA', 'moon rover', 1969 )
 20: 
 21: print ( f"v1 = {v1}" )
 22: print ( f"v2 = {v2}" )


```

Ouptut:

```
v1 = <__main__.Vehicle object at 0x7f46c1a2c8b0>
v2 = <__main__.Vehicle object at 0x7f46c06b9190>

```


When we run it we don't get a useful output for the objects this can be fixed with
a string conversion.  That is the function `__str__`.


```
  1: class Vehicle:
  2: 
  3:     """ this is a constructor """
  4:     def __init__ ( self, manufacturer, vtype, year ):
  5:         self.year = year    
  6:         self.vtype = vtype    
  7:         self.manufacturer = manufacturer    
  8:         self.odometer = 0
  9: 
 10: 
 11:     """ this is a Method """
 12:     def SetMilage ( self, n ):
 13:         if n < 0 :
 14:             print ( "Error: can't take milage off" )
 15:         else:
 16:             self.odomoter = self.odomoter + n
 17: 
 18:     """ Print out the class """
 19:     def __str__ ( self ) :
 20:         return ( f"Vehicle: {self.vtype} built in {self.year} by {self.manufacturer}" )
 21: 
 22: v1 = Vehicle( 'Tonka', 'truck', 2020 )
 23: v2 = Vehicle( 'NASA', 'moon rover', 1969 )
 24: 
 25: print ( f"v1 = {v1}" )
 26: print ( f"v2 = {v2}" )


```

Ouptut:

```
v1 = Vehicle: truck built in 2020 by Tonka
v2 = Vehicle: moon rover built in 1969 by NASA

```

So what are the parts.



Now let's increment the odometer by 2 miles.

```
  1: class Vehicle:
  2: 
  3:     """ this is a constructor """
  4:     def __init__ ( self, manufacturer, vtype, year ):
  5:         self.year = year    
  6:         self.vtype = vtype    
  7:         self.manufacturer = manufacturer    
  8:         self.odometer = 0
  9: 
 10: 
 11:     """ this is a Method """
 12:     def SetMilage ( self, n ):
 13:         if n < 0 :
 14:             print ( "Error: can't take milage off" )
 15:         else:
 16:             self.odometer = self.odometer + n
 17: 
 18:     def GetMilage ( self ):
 19:         return self.odometer 
 20: 
 21:     """ Print out the class """
 22:     def __str__ ( self ) :
 23:         return ( f"Vehicle: {self.vtype} built in {self.year} by {self.manufacturer} milage {self.odometer}" )
 24: 
 25: v1 = Vehicle( 'Tonka', 'truck', 2020 )
 26: v2 = Vehicle( 'NASA', 'moon rover', 1969 )
 27: 
 28: print ( f"v1 = {v1}" )
 29: print ( f"v2 = {v2}" )
 30: 
 31: v2.SetMilage(2)
 32: 
 33: print ( f"v2 = {v2}" )


```

And the output is:

```
v1 = Vehicle: truck built in 2020 by Tonka milage 0
v2 = Vehicle: moon rover built in 1969 by NASA milage 0
v2 = Vehicle: moon rover built in 1969 by NASA milage 2

```


	
## Objects are useful concept in describing a set of data.

Objects group into a hierarchy.

The Term is "inheritance" - that one object can inherit the data and methods from
another object.



```
  1: class Vehicle:
  2: 
  3:     """ this is a constructor """
  4:     def __init__ ( self, manufacturer, vtype, year ):
  5:         self.year = year    
  6:         self.vtype = vtype    
  7:         self.manufacturer = manufacturer    
  8:         self.odometer = 0
  9: 
 10: 
 11:     """ this is a Method """
 12:     def SetMilage ( self, n ):
 13:         if n < 0 :
 14:             print ( "Error: can't take milage off" )
 15:         else:
 16:             self.odometer = self.odometer + n
 17: 
 18:     def GetMilage ( self ):
 19:         return self.odometer 
 20: 
 21:     """ Print out the class """
 22:     def __str__ ( self ) :
 23:         return ( f"Vehicle: {self.vtype} built in {self.year} by {self.manufacturer} milage {self.odometer}" )
 24: 
 25: class Airplane(Vehicle):
 26: 
 27:     """ this is a constructor """
 28:     def __init__ ( self, manufacturer, vtype, year, wingspan, maxSpeed ):
 29:         super().__init__( manufacturer, vtype, year )
 30:         self.wingspan = wingspan    
 31:         self.maxSpeed = maxSpeed
 32: 
 33:     """ Print out the class """
 34:     def __str__ ( self ) :
 35:         return ( f"Vehicle/Airplane: {self.vtype} built in {self.year} by {self.manufacturer} milage {self.odometer} Max Speed {self.maxSpeed} wingspan {self.wingspan}" )
 36: 
 37: class Auto(Vehicle):
 38: 
 39:     """ this is a constructor """
 40:     def __init__ ( self, manufacturer, vtype, year, maxSpeed ):
 41:         super().__init__( manufacturer, vtype, year )
 42:         self.maxSpeed = maxSpeed
 43: 
 44:     """ Print out the class """
 45:     def __str__ ( self ) :
 46:         return ( f"Vehicle/Automobile: {self.vtype} built in {self.year} by {self.manufacturer} milage {self.odometer} Max Speed {self.maxSpeed}" )
 47: 
 48: 
 49: v1 = Auto( 'Tonka', 'truck', 2020, 2 )
 50: v2 = Auto( 'NASA', 'moon rover', 1969, 2 )
 51: v3 = Airplane( 'Piper', 'Cherokee', 1969, 32, 185 )
 52: v4 = Airplane( 'Pliatus', 'PC 12 NC', 1969, 41, 581 )
 53: 
 54: print ( f"v1 = {v1}" )
 55: print ( f"v2 = {v2}" )
 56: print ( f"v3 = {v3}" )
 57: print ( f"v4 = {v4}" )
 58: 
 59: v2.SetMilage(2)
 60: # v4.SetMilage(35200)
 61: 
 62: print ( f"v2 = {v2}" )


```

And the output is:

```
v1 = Vehicle/Automobile: truck built in 2020 by Tonka milage 0 Max Speed 2
v2 = Vehicle/Automobile: moon rover built in 1969 by NASA milage 0 Max Speed 2
v3 = Vehicle/Airplane: Cherokee built in 1969 by Piper milage 0 Max Speed 185 wingspan 32
v4 = Vehicle/Airplane: PC 12 NC built in 1969 by Pliatus milage 0 Max Speed 581 wingspan 41
v2 = Vehicle/Automobile: moon rover built in 1969 by NASA milage 2 Max Speed 2

```


This is *useful*!  Lots of stuff can be modeled in this fusion.  Lot's of software
is done this way - this includes lots of libraries that form Python itself.  This is
why when we refer to strings we say `string.upper()` - we have a `string` object
and it has a method `upper()`.


This isn't the only way to organize data.  But if you have a system that deals with
50% or maybe 80% of data then that is a useful abstraction.

One of the most important object hierarchies is something that you use all the time.
That is the screen and all of the "objects" in your user interface.  When you build a
user interface this system of organization is quite often critical to the entire process
of building the software.


Example! - how a User Interface Works.


Now not all things fall into this kind of a category/hierarchy.


Example! - how a user / authentication system works.



