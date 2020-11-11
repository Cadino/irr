from tkinter import *
from tkinter.ttk import *
import time
import os.path
import sys
try:
    import Tkinter as tk
except ImportError:
    import tkinter as tk
root = Tk()
class SplashFile(Frame):
    def __init__(self, master=None, width=0.8, height=0.6, useFactor=True):
        Frame.__init__(self, master)
        self.pack(side=TOP, fill=BOTH, expand=NO)
        windowWidth = root.winfo_reqwidth()
        windowHeight = root.winfo_reqheight()
        print("Width",300,"Height",300)
        positionRight = int(root.winfo_screenwidth()/2 - windowWidth/2)
        positionDown = int(root.winfo_screenheight()/2 - windowHeight/2)
        root.geometry("+{}+{}".format(positionRight, positionDown))   
        self.master.overrideredirect(True)
        self.lift()



def splashCiberzEnd():
    prog_call = sys.argv[0]
    prog_location = os.path.split(prog_call)[0]
    sp = SplashFile(root)
    photo_location = os.path.join(prog_location,"./rsz_img.gif")
    global _img0
    _img0 = tk.PhotoImage(file=photo_location)
    m = Label(sp,image = _img0)
    m.pack(side=TOP, expand=YES)
    progress = Progressbar(root, orient = HORIZONTAL, 
                          length = 100, mode = 'determinate')
    progress.pack(side=TOP, fill=X)
   
    for i in range(101):
        time.sleep(0.05)
        progress['value'] = i
        progress.update()
        if progress['value']==100:
           print("close window")
           root.destroy()
          
    root.mainloop()
