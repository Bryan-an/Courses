from tkinter import *


root = Tk()

my_frame = Frame(root)
my_frame.pack()

operation = ""
result = 0

# ---------------------------Screen-----------------------------------

screen_number = StringVar()

screen = Entry(my_frame, textvariable=screen_number)
screen.grid(row=1, column=1, padx=10, pady=10, columnspan=4)
screen.config(bg="black", fg="#03f943", justify="right")

# ----------------------------Key press---------------------------------


def press_number(number):
    global operation

    if operation != "":
        screen_number.set(number)
        operation = ""
    else:
        screen_number.set(screen_number.get() + number)


# ------------------------------sum------------------------------------
def sum(number):
    global operation
    global result
    result += int(number)
    operation = "sum"
    screen_number.set(result)


# ------------------------------set result-------------------------------
def set_result():
    global result
    screen_number.set(result + int(screen_number.get()))
    result = 0


# -----------------------Row 1---------------------------
button_7 = Button(my_frame, text="7", width=3,
                  command=lambda: press_number("7"))
button_7.grid(row=2, column=1)

button_8 = Button(my_frame, text="8", width=3,
                  command=lambda: press_number("8"))
button_8.grid(row=2, column=2)

button_9 = Button(my_frame, text="9", width=3,
                  command=lambda: press_number("9"))
button_9.grid(row=2, column=3)

button_divide = Button(my_frame, text="/", width=3)
button_divide.grid(row=2, column=4)

# ----------------------Row 2-------------------------
button_4 = Button(my_frame, text="4", width=3,
                  command=lambda: press_number("4"))
button_4.grid(row=3, column=1)

button_5 = Button(my_frame, text="5", width=3,
                  command=lambda: press_number("5"))
button_5.grid(row=3, column=2)

button_6 = Button(my_frame, text="6", width=3,
                  command=lambda: press_number("6"))
button_6.grid(row=3, column=3)

button_multiply = Button(my_frame, text="x", width=3)
button_multiply.grid(row=3, column=4)

# ---------------------Row 3----------------------
button_1 = Button(my_frame, text="1", width=3,
                  command=lambda: press_number("1"))
button_1.grid(row=4, column=1)

button_2 = Button(my_frame, text="2", width=3,
                  command=lambda: press_number("2"))
button_2.grid(row=4, column=2)

button_3 = Button(my_frame, text="3", width=3,
                  command=lambda: press_number("3"))
button_3.grid(row=4, column=3)

button_subtract = Button(my_frame, text="-", width=3)
button_subtract.grid(row=4, column=4)

# ----------------------Row 4----------------------
button_0 = Button(my_frame, text="0", width=3,
                  command=lambda: press_number("0"))
button_0.grid(row=5, column=1)

button_comma = Button(my_frame, text=",", width=3,
                      command=lambda: press_number("."))
button_comma.grid(row=5, column=2)

button_equal = Button(my_frame, text="=", width=3,
                      command=lambda: set_result())
button_equal.grid(row=5, column=3)

button_sum = Button(my_frame, text="+", width=3,
                    command=lambda: sum(screen_number.get()))
button_sum.grid(row=5, column=4)

root.mainloop()
