from tkinter import *


root = Tk()

my_frame = Frame(root, width=1200, height=600)
my_frame.pack()

name_input = Entry(my_frame)
name_input.grid(row=0, column=1)

last_name_input = Entry(my_frame)
last_name_input.grid(row=1, column=1)

address_input = Entry(my_frame)
address_input.grid(row=2, column=1)

name_label = Label(my_frame, text="Name:")
name_label.grid(row=0, column=0, sticky="e")

last_name_label = Label(my_frame, text="Last name:")
last_name_label.grid(row=1, column=0, sticky="e")

address_label = Label(my_frame, text="Address:")
address_label.grid(row=2, column=0, sticky="e")

root.mainloop()
