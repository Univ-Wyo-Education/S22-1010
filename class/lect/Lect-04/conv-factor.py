
import conv_mi_to_inch

sun_in_mi = 865370
tb_in_in = 2.75
earth_in_mi = 7917.5
moon_in_mi = 2159.1

sun_in_inch = conv_mi_to_inch.mi_to_inch ( sun_in_mi )

print ( "Diameter of Sun in Inches = {}".format(sun_in_inch) )

conv_sun_to_tb = sun_in_inch / tb_in_in

print ( "Conversion Factor  {}".format(conv_sun_to_tb) )

earth_in_inch = conv_mi_to_inch.mi_to_inch ( earth_in_mi )

earth_in_tb = earth_in_inch / conv_sun_to_tb 

earth_in_tb_1000 = earth_in_tb * 1000

print ( "Earth in TB Inches {}".format(earth_in_tb) )
print ( "Earth in TB 1000/th-of-Inches {}".format(earth_in_tb_1000) )

moon_in_inch = conv_mi_to_inch.mi_to_inch ( moon_in_mi )

moon_in_tb = moon_in_inch / conv_sun_to_tb 

moon_in_tb_1000 = moon_in_tb * 1000

print ( "Moon in TB Inches {}".format(moon_in_tb) )
print ( "Moon in TB 1000/th-of-Inches {}".format(moon_in_tb_1000) )

sirius_in_ly = 8.611
ly_to_mi = 5.879e12
sirius_in_mi = sirius_in_ly * ly_to_mi 

sirius_in_inch = conv_mi_to_inch.mi_to_inch ( sirius_in_mi )

sirius_in_tb = sirius_in_inch / conv_sun_to_tb 

sirius_in_tb_miles = sirius_in_tb / ( 5280 * 12 )

print ( "Sirius in TB Units (miles) = {}".format ( sirius_in_tb_miles ) )

