import os
import sys
import requests
from bs4 import BeautifulSoup

if len(sys.argv) != 2:
    print("A single ticker is requried on the command line.")
    sys.exit()

ticker = sys.argv[1]
stockURL = 'https://finance.yahoo.com/quote/' + ticker + '?p=' + ticker + '&.tsrc=fin-srch'
stockResponse = requests.get(stockURL)

try:
    soup = BeautifulSoup(stockResponse.text, 'html.parser')
    price = soup.find('body').find(class_='Fw(b) Fz(36px) Mb(-4px) D(ib)')
    print('The latest stock price for ' + ticker + ' is: ' + price.text.strip())
except:
    print('Invalid ticker, please try again.')

