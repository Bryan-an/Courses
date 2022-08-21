# def evaluate_age(age):
#     if age < 0:
#         raise MyOwnError("Negative ages are not allowed")
#
#     if age < 20:
#         return "You are too young"
#     elif age < 40:
#         return "You are young"
#     elif age < 65:
#         return "You are old"
#     elif age < 100:
#         return "Take care yourself..."
#
#
# print(evaluate_age(-15))
import math


def calculateSqrt(num1):
    if num1 < 0:
        raise ValueError("The number cannot be negative")
    else:
        return math.sqrt(num1)


num1 = int(input("Enter a number: "))

try:
    print(calculateSqrt(num1))
except ValueError as NegativeNumberError:
    print(NegativeNumberError)

print("Program finished")
