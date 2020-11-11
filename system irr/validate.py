import tkinter
tk=tkinter.Tk()
def only_numeric_input(e):
    #this is allowing all numeric input
    if e.isdigit():
        return True
    #this will allow backspace to work
    elif e=="":
        return True
    else:
        return False
#this will make the entry widget on root window
e1=tkinter.Entry(tk)
#arranging entry widget on screen
e1.grid(row=0,column=0)
c=tk.register(only_numeric_input)
e1.configure(validate="key",validatecommand=(c,'%P'))
tk.mainloop()
#very usefull
