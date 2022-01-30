  1: 
  2: import conv_mi_to_inch
  3: 
  4: sun_in_mi = 865370
  5: tb_in_in = 2.75
  6: earth_in_mi = 7917.5
  7: moon_in_mi = 2159.1
  8: 
  9: sun_in_inch = conv_mi_to_inch.mi_to_inch ( sun_in_mi )
 10: 
 11: print ( "Diameter of Sun in Inches = {}".format(sun_in_inch) )
 12: 
 13: conv_sun_to_tb = sun_in_inch / tb_in_in
 14: 
 15: print ( "Conversion Factor  {}".format(conv_sun_to_tb) )
 16: 
 17: earth_in_inch = conv_mi_to_inch.mi_to_inch ( earth_in_mi )
 18: 
 19: earth_in_tb = earth_in_inch / conv_sun_to_tb 
 20: 
 21: earth_in_tb_1000 = earth_in_tb * 1000
 22: 
 23: print ( "Earth in TB Inches {}".format(earth_in_tb) )
 24: print ( "Earth in TB 1000/th-of-Inches {}".format(earth_in_tb_1000) )
 25: 
 26: moon_in_inch = conv_mi_to_inch.mi_to_inch ( moon_in_mi )
 27: 
 28: moon_in_tb = moon_in_inch / conv_sun_to_tb 
 29: 
 30: moon_in_tb_1000 = moon_in_tb * 1000
 31: 
 32: print ( "Moon in TB Inches {}".format(moon_in_tb) )
 33: print ( "Moon in TB 1000/th-of-Inches {}".format(moon_in_tb_1000) )
 34: 
 35: sirius_in_ly = 8.611
 36: ly_to_mi = 5878612843200
 37: sirius_in_mi = sirius_in_ly * ly_to_mi 
 38: 
 39: sirius_in_inch = conv_mi_to_inch.mi_to_inch ( sirius_in_mi )
 40: 
 41: sirius_in_tb = sirius_in_inch / conv_sun_to_tb 
 42: 
 43: sirius_in_tb_miles = sirius_in_tb / ( 5280 * 12 )
 44: 
 45: print ( "Sirius in TB Units (miles) = {}".format ( sirius_in_tb_miles ) )
 46: 
