
electric_cars = [
    "Aixam 400",
    "BMW I3",
    "Bollore Bluecar",
    "BYD e6",
    "Buddy Cab",
    "Chery QQ3",
    "Chevrolet Spark EV",
    "Dynasty IT",
    "Ford Focus Electric",
    "GTA MyCar",
    "Honda Fit EV",
    "JAC J3 iEV",
    "Kia Soul EV",
    "Lightning GT",
    "Mahindra e2o",
    "Mia electric",
    "Mini El",
    "Mitsubishi i-MiEV",
    "Nissan Leaf",
    "Renault Fluence Z.E.",
    "Renault Twizy",
    "Renault Zoe",
    "Smart Fortwo",
    "Tesla Model X",
    "Venturi Fetish",
    "Volkswagen e Golf",
]

print ( "cars = {}".format(electric_cars) )

print ( "A Car" )
find = input()

pos = electric_cars.index(find)
print ( "pos = {} found = {}".format(pos, electric_cars[pos]) )

