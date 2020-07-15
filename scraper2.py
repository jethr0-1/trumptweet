import requests
from bs4 import BeautifulSoup
import re


i = 1
trumptweet = ""
r = requests.get("https://mobile.twitter.com/realDonaldTrump")
soup = BeautifulSoup(r.text, 'html.parser')
result = soup.find_all('div', attrs = {'class':'tweet-text'})

for new in result:
    trumptweet += new.text.strip()
    trumptweet += "\n"
    i += i


finaltweet = trumptweet.partition('\n')[0]
print(finaltweet)
