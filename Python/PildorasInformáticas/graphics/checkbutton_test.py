from tkinter import *

root = Tk()

root.title("Example")

beach = IntVar()
montain = IntVar()
rural_tourism = IntVar()


def set_traveling_options():
    selected_option = ""

    if beach.get() == 1:
        selected_option += " beach"

    if montain.get() == 1:
        selected_option += " montain"

    if rural_tourism.get() == 1:
        selected_option += " ruralTourism"

    final_text.config(text=selected_option)


photo = PhotoImage(file="phone.png")
Label(root, image=photo).pack()

frame = Frame(root)
frame.pack()

Label(frame, text="Select destinations:", width=50).pack()

Checkbutton(frame, text="Beach", variable=beach, onvalue=1,
            offvalue=0, command=set_traveling_options).pack()
Checkbutton(frame, text="Montain", variable=montain,
            onvalue=1, offvalue=0, command=set_traveling_options).pack()
Checkbutton(frame, text="Rural tourism",
            variable=rural_tourism, onvalue=1, offvalue=0, command=set_traveling_options).pack()

final_text = Label(frame)
final_text.pack()

root.mainloop()
