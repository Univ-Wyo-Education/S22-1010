m4_include(../../setup.m4)

# If Else and control flow.

## Due Feb 21, 2022.  200pts.

## Goals


Create a program that when input the weight of a package
prints out the cost for shipping the package.

From Class, and example of the age/ticket price:

```
m4_include(age.py.nu)
m4_comment([[[
print ( "Enter Age" )
age_str = input()
age = int(age_str)

ticket_price = 0
if age >= 0 and age <= 4:
    ticket_price = 0
elif age >= 5 and age <= 12:
    ticket_price = 38
elif age >= 13 and age <= 17:
    ticket_price = 48
elif age >= 18:
    ticket_price = 62
else:
    print ( "Impossile Age" )

print ( "Price = {}".format(ticket_price) ) 
]]])
```

Built as a function that you can test:

File: [age2.py](https://github.com/Univ-Wyo-Education/S22-1010/blob/main/homework/04/age2.py)

```
m4_include(age2.py.nu)
m4_comment([[[
def calc_ticket_price(age):
    ticket_price = 0
    if age >= 0 and age <= 4:
        ticket_price = 0
    elif age >= 5 and age <= 12:
        ticket_price = 38
    elif age >= 13 and age <= 17:
        ticket_price = 48
    elif age >= 18:
        ticket_price = 62
    else:
        print ( "Impossile Age" )
    return(ticket_price)

# Automated Test
if __name__ == "__main__":
    n_err = 0

    got = calc_ticket_price(13)
    expect = 48
    if got != expect:
        n_err = n_err + 1
        print ( "Error: Test 1: expected {} got {}".
                format (  expect, got ) )

    got = calc_ticket_price(18)
    expect = 62
    if got != expect:
        n_err = n_err + 1
        print ( "Error: Test 1: expected {} got {}".
                format (  expect, got ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

]]])
```

and as a main program that calls the function:

File: [age_main.py](https://github.com/Univ-Wyo-Education/S22-1010/blob/main/homework/04/age_main.py)

```
m4_include(age_main.py.nu)
m4_comment([[[
import age2

print ( "Enter Age" )
age_str = input()
age = int(age_str)

ticket_price = age2.calc_ticket_price(age)

print ( "Price = {}".format(ticket_price) ) 
]]])
```

### Using Visual Studio Code (VSCode)

Create a new directory, lets say `hw4`.

Start VS Code.  Open the directory that you created.

Create a new file called `shipping_cost.py`

Create the lookup with if/else as a function.  You will want to copy the code
from age2.py and modify it.

Run it.  Test it.

Copy the main program, `age_main.py`,  to a new file name, lets say `shipping_main.py`.

Modify it to call your new program.   Run it.


## Modify The Code for the rest of the table.

| Weight | Cost |
|-----|------|
| 0 to 2 | 4 |
| 3 to 4 | 6 |
| 4 to 7 | 10 |
| 8 to 10 | 14 |
| 11 to 15 | 18 |
| 16 to 25 | 22 |
| 26 to 35 | 28 |

## Testing your code

Run your code with different ages as input and see if your code is printing the output according to the values in the table above.

## Turn in 

Your python two python files.
