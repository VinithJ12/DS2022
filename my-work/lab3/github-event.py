#!/usr/bin/python3



# In order to work with env variables and remote APIs you need three imports:
import os
import json
import requests

#To retrieve the value of an environment variable in Python, use this syntax:
GHUSER = os.getenv('GITHUB_USER')
#print(GHUSER)

url = 'https://api.github.com/users/{0}/events'.format(GHUSER)

#print(url)

r = json.loads(requests.get(url).text)

for x in r[:5]:
  event = x['type'] + ' :: ' + x['repo']['name']
  print(event)

print(r)

