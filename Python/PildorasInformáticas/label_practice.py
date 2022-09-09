from tkinter import *

root = Tk()

my_frame = Frame(root, width=500, height=400)
my_frame.pack()

my_image = PhotoImage(file="phone.png")

Label(my_frame, image=my_image).place(x=100, y=200)

root.mainloop()
