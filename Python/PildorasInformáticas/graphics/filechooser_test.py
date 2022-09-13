from tkinter import *
from tkinter import filedialog

root = Tk()


def open_file():
    file = filedialog.askopenfilename(
        title="Open", initialdir="C:/", filetypes=(("Excel files", "*.xlsx"), ("Text files", "*.txt"), ("All files", "*.*")))
    print(file)


Button(root, text="Open file", command=open_file).pack()


root.mainloop()
