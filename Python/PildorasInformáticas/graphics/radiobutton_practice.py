from tkinter import *


root = Tk()

option = IntVar()


def print_option():
    # print(option.get())
    if option.get() == 1:
        label.config(text="You've picked male")
    elif option.get() == 2:
        label.config(text="You've picked female")
    else:
        label.config(text="You've picked other")


Label(root, text="Genre:").pack()

Radiobutton(root, text="Male", variable=option,
            value=1, command=print_option).pack()
Radiobutton(root, text="Female", variable=option,
            value=2, command=print_option).pack()
Radiobutton(root, text="Other", variable=option,
            value=3, command=print_option).pack()

label = Label(root)
label.pack()

root.mainloop()
