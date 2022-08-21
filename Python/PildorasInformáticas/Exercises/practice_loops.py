# for letter in "Python":
#
#     if letter == "h":
#         continue
#
#     print(f"Looking at letter: {letter}")
# name = "Computer pills"
# count = 0
#
# for i in name:
#
#     if i == " ":
#         continue
#
#     count += 1
#
# print(count)
# while True:
#     pass
# class MyClass:
#     pass  # TODO: implement latter
email = input("Enter your email, please: ")

for i in email:
    if i == "@":
        at = True
        break
else:
    at = False

print(at)
