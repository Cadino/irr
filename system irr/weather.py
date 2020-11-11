import requests
import json
contentTemp = []
contentTime = []
contentWing = []
contentWeather = []

try:
    url = "http://api.openweathermap.org/data/2.5/forecast?q=Maputo&appid=147092bb9c64944b6779878ace370757"
    resp = requests.get(url)
    dataUnparse = json.loads(resp.text)
    data = dataUnparse["list"]

    def tempArray():
       for dataParse in data:
           contentTemp.append(dataParse["main"]["temp"])
       print(contentTemp)
       return contentTemp

    def timeArray():
       for dataParse in data:
           contentTime.append(dataParse["dt_txt"])
       print(contentTime)
       return contentTime

    def wingArray():
       for dataParse in data:
           contentWing.append(dataParse["wind"]["speed"])
       print(contentWing)
       return contentWing
    def weatherArray():
       for dataParse in data:
           content=dataParse["weather"]
           content1 = content[0]
           contentWeather.append(content1["description"])
       print(contentWeather)
       return contentWeather
    tempArray()
    timeArray()
    weatherArray()

except ConnectionError:
    print("error");

except MaxRetryError:
    print("error");



    





	

