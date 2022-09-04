# username = input("Enter your username: ")
#
# print(f"The username is: {username.capitalize()}")

age = input("Enter your age: ")

# is_digit = "is" if age.isdigit() else "is not"
#
# print(f"Your age {is_digit} a digit")

while not age.isdigit():
    print("Please enter a numeric value")
    age = input("Enter your age: ")

if int(age) < 18:
    print("You can't pass")
else:
    print("You can pass")
