# for year_seasons in ["sprint", "summer", "fall", "winter"]:
#     print(year_seasons)

# count = False
# my_email = input("Enter your email: ")
#
# for i in my_email:
#     if i == "@" or i == ".":
#         count = count + 1
#
# if count == 2:
#     print("Valid email")
# else:
#     print("Invalid email")

# for i in range(5, 50, 3):
#     print(f"Variable value: {i}")

valid = False

email = input("Enter your email: ")

for i in range(len(email)):
    if email[i] == "@":
        valid = True

if valid:
    print("Valid email")
else:
    print("Invalid email")
