from tkinter import *
from tkinter import messagebox


root = Tk()


def show_aditional_info():
    messagebox.showinfo("Juan processor", "Text processor version 2022")


def show_licence():
    messagebox.showwarning("License", "Product under GNU license")


def exit_app():
    # value = messagebox.askquestion("Exit", "Do you want to exit the app?")
    value = messagebox.askokcancel("Exit", "Do you want to exit the app?")

    if value == True:
        root.destroy()


def close_file():
    value = messagebox.askretrycancel(
        "Try again", "Can't close the file. File locked.")

    if value == False:
        root.destroy()


menu_bar = Menu(root)
root.config(menu=menu_bar, width=300, height=300)

file_menu = Menu(menu_bar, tearoff=0)
file_menu.add_command(label="New")
file_menu.add_command(label="Save")
file_menu.add_command(label="Save as")
file_menu.add_separator()
file_menu.add_command(label="Close", command=close_file)
file_menu.add_command(label="Exit", command=exit_app)

edit_menu = Menu(menu_bar, tearoff=0)
edit_menu.add_command(label="Copy")
edit_menu.add_command(label="Cut")
edit_menu.add_command(label="Paste")

tools_menu = Menu(menu_bar, tearoff=0)

help_menu = Menu(menu_bar, tearoff=0)
help_menu.add_command(label="License", command=show_licence)
help_menu.add_command(label="About", command=show_aditional_info)

menu_bar.add_cascade(label="File", menu=file_menu)
menu_bar.add_cascade(label="Edit", menu=edit_menu)
menu_bar.add_cascade(label="Tools", menu=tools_menu)
menu_bar.add_cascade(label="Help", menu=help_menu)

root.mainloop()
