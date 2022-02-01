
import conv_km_to_mi

name = [
"Mercury",
"Venus",
"Earth",
"Mars",
"Jupiter",
"Saturn",
"Uranus",
"Neptune",
]

distance_km = [
57_900_000,
108_200_000,
149_600_000,
227_900_000,
778_600_000,
1_433_500_000,
2_872_500_000,
4_495_100_000,
]

for i in range(len(distance_km)):
    mi = conv_km_to_mi.km_to_mi ( distance_km[i] )
    print ( "For ->{}<- Miles {}".format ( name[i], mi ) )

