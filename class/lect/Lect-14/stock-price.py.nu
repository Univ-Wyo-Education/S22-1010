  1: import os
  2: import sys
  3: import requests
  4: from bs4 import BeautifulSoup
  5: 
  6: if len(sys.argv) != 2:
  7:     print("A single ticker is requried on the command line.")
  8:     sys.exit()
  9: 
 10: ticker = sys.argv[1]
 11: stockURL = 'https://finance.yahoo.com/quote/' + ticker + '?p=' + ticker + '&.tsrc=fin-srch'
 12: stockResponse = requests.get(stockURL)
 13: 
 14: try:
 15:     soup = BeautifulSoup(stockResponse.text, 'html.parser')
 16:     price = soup.find('body').find(class_='Fw(b) Fz(36px) Mb(-4px) D(ib)')
 17:     print('The latest stock price for ' + ticker + ' is: ' + price.text.strip())
 18: except:
 19:     print('Invalid ticker, please try again.')
 20: 
