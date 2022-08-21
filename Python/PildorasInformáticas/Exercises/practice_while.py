# i = 1
#
# while i <= 10:
#     print(f"Execution {i}")
#     i += 1
#
# print("The execution ended")

# age = int(input("Enter the age please: "))
#
# while age < 5 or age > 100:
#     print("You have entered an invalid age. Try again.")
#     age = int(input("Enter the age please: "))
#
# print("Thanks for helping. You can pass")
# print(f"Candidate age: {age}")
import math

print("Square root calculator")

number = int(input("Enter a number please: "))

attempts = 0

while number < 0:
    print("The square root of a negative number does not exist")

    if attempts == 2:
        print("You have consumed too attempts. The program has ended.")
        break

    number = int(input("Enter a number please: "))

    if number < 0:
        attempts += 1

if attempts < 2:
    result = math.sqrt(number)
    print(f"The square root of {number} is {result}")
