from tkinter import *
from tkinter import messagebox
import sqlite3

# -----------------------------functions------------------------------


def connect_db():
    my_connection = sqlite3.connect("users")
    my_cursor = my_connection.cursor()
    try:
        my_cursor.execute('''
            CREATE TABLE users(
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                name VARCHAR(50),
                password VARCHAR(50),
                last_name VARCHAR(10),
                address VARCHAR(50),
                comments VARCHAR(100)
            )
        ''')
        messagebox.showinfo("DB", "DB created successfully.")
    except:
        messagebox.showwarning("Warning!", "DB already exists")


def exit_app():
    value = messagebox.askquestion("Exit", "Do you want to exit the app?")

    if value == "yes":
        root.destroy()


def clear_fields():
    my_id.set("")
    my_name.set("")
    my_password.set("")
    my_last_name.set("")
    my_address.set("")
    comment_text.delete(1.0, END)


def create_user():
    my_connection = sqlite3.connect("users")
    my_cursor = my_connection.cursor()

    data = (my_name.get(), my_password.get(), my_last_name.get(),
            my_address.get(), comment_text.get(1.0, END))

    # my_cursor.execute(
    #     f"INSERT INTO users VALUES (NULL, '{my_name.get()}', '{my_password.get()}', '{my_last_name.get()}', '{my_address.get()}', '{comment_text.get(1.0, END)}')")

    my_cursor.execute("INSERT INTO users VALUES (NULL, ?, ?, ?, ?, ?)", data)

    my_connection.commit()
    messagebox.showinfo("DB", "User created successfully")


def read_user():
    my_connection = sqlite3.connect("users")
    my_cursor = my_connection.cursor()

    my_cursor.execute(f"SELECT * FROM users WHERE id = {my_id.get()}")
    users = my_cursor.fetchall()

    for user in users:
        my_id.set(user[0])
        my_name.set(user[1])
        my_password.set(user[2])
        my_last_name.set(user[3])
        my_address.set(user[4])
        comment_text.insert(1.0, user[5])

    my_connection.commit()


def update_user():
    my_connection = sqlite3.connect("users")
    my_cursor = my_connection.cursor()

    data = (my_name.get(), my_password.get(), my_last_name.get(),
            my_address.get(), comment_text.get(1.0, END), my_id.get())

    # my_cursor.execute(
    #     f"UPDATE users SET name='{my_name.get()}', password='{my_password.get()}', last_name='{my_last_name.get()}', address='{my_address.get()}', comments='{comment_text.get(1.0, END)}' WHERE id = {my_id.get()}")

    my_cursor.execute(
        "UPDATE users SET name=?, password=?, last_name=?, address=?, comments=? WHERE id=?", data)

    my_connection.commit()
    messagebox.showinfo("DB", "User updated successfully")


def delete_user():
    my_connection = sqlite3.connect("users")
    my_cursor = my_connection.cursor()

    my_cursor.execute(f"DELETE FROM users WHERE id = {my_id.get()}")

    my_connection.commit()
    messagebox.showinfo("DB", "User deleted successfully")


root = Tk()

menu_bar = Menu(root)
root.config(menu=menu_bar, width=300, height=300)

db_menu = Menu(menu_bar, tearoff=0)
db_menu.add_command(label="Connect", command=connect_db)
db_menu.add_command(label="Exit", command=exit_app)

clear_menu = Menu(menu_bar, tearoff=0)
clear_menu.add_command(label="Clear fields", command=clear_fields)

crud_menu = Menu(menu_bar, tearoff=0)
crud_menu.add_command(label="Create", command=create_user)
crud_menu.add_command(label="Read", command=read_user)
crud_menu.add_command(label="Update", command=update_user)
crud_menu.add_command(label="Delete", command=delete_user)

help_menu = Menu(menu_bar, tearoff=0)
help_menu.add_command(label="License")
help_menu.add_command(label="About")

menu_bar.add_cascade(label="DB", menu=db_menu)
menu_bar.add_cascade(label="Clear", menu=clear_menu)
menu_bar.add_cascade(label="CRUD", menu=crud_menu)
menu_bar.add_cascade(label="Help", menu=help_menu)

# ----------------------------Fields----------------------------
my_frame = Frame(root)
my_frame.pack()

my_id = StringVar()
my_name = StringVar()
my_last_name = StringVar()
my_password = StringVar()
my_address = StringVar()

id_entry = Entry(my_frame, textvariable=my_id)
id_entry.grid(row=0, column=1, padx=10, pady=10)

name_entry = Entry(my_frame, textvariable=my_name)
name_entry.grid(row=1, column=1, padx=10, pady=10)
name_entry.config(fg="red", justify="right")

password_entry = Entry(my_frame, textvariable=my_password)
password_entry.grid(row=2, column=1, padx=10, pady=10)
password_entry.config(show="?")

last_name_entry = Entry(my_frame, textvariable=my_last_name)
last_name_entry.grid(row=3, column=1, padx=10, pady=10)

address_entry = Entry(my_frame, textvariable=my_address)
address_entry.grid(row=4, column=1, padx=10, pady=10)

comment_text = Text(my_frame, width=16, height=5)
comment_text.grid(row=5, column=1, padx=10, pady=10)

vertical_scroll = Scrollbar(my_frame, command=comment_text.yview)
vertical_scroll.grid(row=5, column=2, sticky=NSEW)

comment_text.config(yscrollcommand=vertical_scroll.set)

# ----------------------------Labels-------------------------------
id_label = Label(my_frame, text="Id:")
id_label.grid(row=0, column=0, sticky=E, padx=10, pady=10)

name_label = Label(my_frame, text="Name:")
name_label.grid(row=1, column=0, sticky=E, padx=10, pady=10)

password_label = Label(my_frame, text="Password:")
password_label.grid(row=2, column=0, sticky=E, padx=10, pady=10)

last_name_label = Label(my_frame, text="Last name:")
last_name_label.grid(row=3, column=0, sticky=E, padx=10, pady=10)

address_label = Label(my_frame, text="Address:")
address_label.grid(row=4, column=0, sticky=E, padx=10, pady=10)

comment_label = Label(my_frame, text="Comments:")
comment_label.grid(row=5, column=0, sticky=E, padx=10, pady=10)

# ------------------------------Buttons----------------------------
my_frame_2 = Frame(root)
my_frame_2.pack()

create_button = Button(my_frame_2, text="Create", command=create_user)
create_button.grid(row=0, column=0, sticky=E, padx=10, pady=10)

read_button = Button(my_frame_2, text="Read", command=read_user)
read_button.grid(row=0, column=1, sticky=E, padx=10, pady=10)

update_button = Button(my_frame_2, text="Update", command=update_user)
update_button.grid(row=0, column=2, sticky=E, padx=10, pady=10)

delete_button = Button(my_frame_2, text="Delete", command=delete_user)
delete_button.grid(row=0, column=3, sticky=E, padx=10, pady=10)

root.mainloop()
