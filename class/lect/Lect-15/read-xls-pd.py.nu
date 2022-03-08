  1: import matplotlib.pyplot as plt
  2: import pandas as pd
  3: # import seaborn as sns
  4: 
  5: # df = pd.read_excel (r'car/CUSR0000SETA02.xls')
  6: df = pd.read_excel (r'car/car-price-data.xls')
  7: df['observation_date'] = pd.to_datetime(df['observation_date'])
  8: print (df)
  9: print (df.info())
 10: 
 11: df.set_index('observation_date')['CUSR0000SETA02'].plot();
 12: 
 13: plt.waitforbuttonpress()
