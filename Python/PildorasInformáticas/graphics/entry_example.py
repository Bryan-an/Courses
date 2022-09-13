from tkinter import *


root = Tk()

my_frame = Frame(root, width=1200, height=600)
my_frame.pack()

my_name = StringVar()

# Inputs
name_input = Entry(my_frame, textvariable=my_name)
name_input.grid(row=0, column=1, padx=10, pady=10)
name_input.config(fg="red", justify="right")

password_input = Entry(my_frame)
password_input.grid(row=1, column=1, padx=10, pady=10)
password_input.config(show="*")

last_name_input = Entry(my_frame)
last_name_input.grid(row=2, column=1, padx=10, pady=10)

address_input = Entry(my_frame)
address_input.grid(row=3, column=1, padx=10, pady=10)

comments_text = Text(my_frame, width=16, height=5)
comments_text.grid(row=4, column=1, padx=10, pady=10)

vertical_scroll = Scrollbar(my_frame, command=comments_text.yview)
vertical_scroll.grid(row=4, column=2, sticky=NSEW)

comments_text.config(yscrollcommand=vertical_scroll.set)

# Labels
name_label = Label(my_frame, text="Name:")
name_label.grid(row=0, column=0, sticky=E, padx=10, pady=10)

password_label = Label(my_frame, text="Password:")
password_label.grid(row=1, column=0, sticky=E, padx=10, pady=10)

last_name_label = Label(my_frame, text="Last name:")
last_name_label.grid(row=2, column=0, sticky=E, padx=10, pady=10)

address_label = Label(my_frame, text="Address:")
address_label.grid(row=3, column=0, sticky=E, padx=10, pady=10)

comments_label = Label(my_frame, text="Comments:")
comments_label.grid(row=4, column=0, sticky=E, padx=10, pady=10)

# Button


def button_code():
    my_name.set("Juan")


send_button = Button(root, text="Send", command=button_code)
send_button.pack()

root.mainloop()
