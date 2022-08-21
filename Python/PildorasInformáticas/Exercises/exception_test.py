def sum(num1, num2):
    return num1 + num2


def subtract(num1, num2):
    return num1 - num2


def multiply(num1, num2):
    return num1 * num2


def divide(num1, num2):
    try:
        return num1 / num2
    except ZeroDivisionError:
        print("It cannot divide by zero")
        return "Invalid operation"


while True:
    try:
        op1 = (int(input("Enter the first number: ")))
        op2 = (int(input("Enter the second number: ")))
        break
    except ValueError:
        print("Invalid entered values. Try again")

operation = input("Enter the operation to do (sum, subtract, multiply, divide): ")

if operation == "sum":
    print(sum(op1, op2))
elif operation == "subtract":
    print(subtract(op1, op2))
elif operation == "multiply":
    print(multiply(op1, op2))
elif operation == "divide":
    print(divide(op1, op2))
else:
    print("Operation not contemplated")

print("Executed operation. Continuation of program execution")
