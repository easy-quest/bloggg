#!/usr/bin/env python3
import requests
from bs4 import BeautifulSoup

url = "https://kuban.mk.ru/news"
response = requests.get(url)
# print(response.text[:1000])
html = response.text
# a.news-listing__item-link

soup = BeautifulSoup(html, "html.parser")
links = soup.findAll("a")
for link in links:
    print(link.get("href"))