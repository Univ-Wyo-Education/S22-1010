import matplotlib.pyplot as plt

x = [   21,20,23,4,7,
        6,78,8,3,10,
        41,22,53,33,
        31,37,39,12,
        45,30,100]
plt.hist(x, 5, facecolor='green')
plt.waitforbuttonpress()
plt.show()
