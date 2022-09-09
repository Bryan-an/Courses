from tkinter import *


root = Tk()

root.title("Test Window")
# root.resizable(True, False)
root.iconbitmap("itsqmet.ico")
# root.geometry("650x350")
root.config(bg="blue", bd=45, relief="groove", cursor="hand2")

my_frame = Frame()
# my_frame.pack(fill="both", expand=True)
my_frame.pack()
my_frame.config(bg="red", width="650", height="350",
                bd=35, relief="sunken", cursor="pirate")

root.mainloop()
