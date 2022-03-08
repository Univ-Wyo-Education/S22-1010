import matplotlib.pyplot as plt
import pandas as pd
# import seaborn as sns

# df = pd.read_excel (r'car/CUSR0000SETA02.xls')
df = pd.read_excel (r'car/car-price-data.xls')
df['observation_date'] = pd.to_datetime(df['observation_date'])
print (df)
print (df.info())

df.set_index('observation_date')['CUSR0000SETA02'].plot();

plt.waitforbuttonpress()
