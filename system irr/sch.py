import schedule
import time
import datetime
def job(t):
    print ("I'm working...")
    weekno = datetime.datetime.today().weekday()

    print (weekno)
    return

schedule.every().day.at("13:40").do(job,'It is 00:00')

while True:
    schedule.run_pending()
    time.sleep(60) # wait one minute
