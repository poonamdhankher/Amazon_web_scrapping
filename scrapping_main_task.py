from __future__ import print_function
from re import sub
from types import NoneType
from bs4 import BeautifulSoup
from urllib.request import Request, urlopen
from urllib.error import HTTPError, URLError
import json
from numpy import size
import csv
import requests
import time
try:
    import urllib.request as urllib2
except ImportError:
    import urllib2

file = open("/Users/poonamdhankher/Downloads/test/amazon_web_scrapping/csv_file_data")
csvreader = csv.reader(file)
header = next(csvreader)
# print(header)
rows = []
for row in csvreader:
    rows.append(row)
#print(rows)
file.close()
product_count = 0
start_time = time.time()

for i in range(len(rows)):
    newline = [word for line in rows[i] for word in line.split()]
    asin= newline[2]
    countryCode= newline[3]

    # print(asin)
    # print(countryCode)

    if(product_count == 101):
        time_for_100_products = time.time()
        time_diff = time_for_100_products - start_time
        print("Time For 100 products: " + str(time_diff))
        start_time = time.time()
        product_count = 0

    print("ID: " + str(i) + ", Scrapping Page: "+"https://www.amazon."+ countryCode + "/dp/" + asin)
    pageURL = "https://www.amazon."+ countryCode + "/dp/" + asin
    
    brouserAgentHeader = {'User-agent': 'Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5'}
    req = urllib2.Request(pageURL, None, brouserAgentHeader)
    
    try:
        req = urllib2.Request(pageURL, None, brouserAgentHeader)
        response = urllib2.urlopen(req)
        content = response.read()
    
        if response.getcode() != 200:
            print('Status: Web page not exist!\n')
            product_count += 1
            continue
    except:
        print('Status: Web page not exist!\n')
        product_count += 1
        continue

    product_description = {}
    soup = BeautifulSoup(content, "html.parser")
    product_title = ""
    product_span = soup.find('span', class_= "a-size-large product-title-word-break")
    if(product_span == None):
        product_span = soup.find('span', class_= "a-size-extra-large")

    if(product_span != None):
        product_title = product_span.text

    # print("Product Title: " + product_title)
    image_url = ""
    images_div = soup.find_all("div", {"class": "imgTagWrapper"})
    if(images_div != None and len(images_div) > 0 ):
        images_div_first = images_div[0].find("img")
        if(images_div_first != None):
            image_url = images_div_first.get('src')


    # print("Product Image: " + image_url)
    product_price = ""
    product_span = soup.find('span', {"class": "a-offscreen"})
    if(product_span != None):
        product_price = product_span.text
    # print("Product Price: " + product_price)
    product_details={}
    productDetailsTable= soup.find('table', class_= "a-normal a-spacing-micro")
    if(productDetailsTable != None):
        productDetailsRows= productDetailsTable.find_all('tr')
        if(productDetailsRows != None):
            for x in range(len(productDetailsRows)):
                tableRow = productDetailsRows[x]
                product_detail_key= tableRow.find_all('td')[0].find('span').text
                product_detail_value= tableRow.find_all('td')[1].find('span').text
                product_details[product_detail_key]= product_detail_value
           
    # print(product_details)
    product_description["Product Name"] = product_title
    product_description["Product Image"] = image_url
    product_description["Product Price"] = product_price
    product_description["Product Details"] = product_details
    product_description["Product Id"] = i
    # print(product_description) 


    print('Status: Saving Product: ' + str(i) + "\n")
    json_dump = json.dumps(product_description)
    with open('/Users/poonamdhankher/Downloads/test/amazon_web_scrapping/amazon_products_data.json', 'a+') as f: 
        f.write(json_dump)
        f.write(",\n")
        f.close()

    product_count += 1
    


    







