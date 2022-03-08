  1: import matplotlib.pyplot as plt
  2: 
  3: x = [   21,20,23,4,7,
  4:         6,78,8,3,10,
  5:         41,22,53,33,
  6:         31,37,39,12,
  7:         45,30,100]
  8: plt.hist(x, 5, facecolor='green')
  9: plt.waitforbuttonpress()
 10: plt.show()
