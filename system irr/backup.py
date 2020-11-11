import requests
import json

url = "http://api.openweathermap.org/data/2.5/forecast?q=Maputo&appid=147092bb9c64944b6779878ace370757"
resp = requests.get(url)
person_dict = json.loads(resp.text)
data = person_dict["list"]
for no in data:
	contents = no["main"]["temp"]
	contentss = no["dt_txt"]
	contentsss = no["wind"]["speed"]
        #confs.append(['temp'])
	print("temp: " +str(contents)+ " time "+str(contentss)+" wing speed "+str(contentsss))
