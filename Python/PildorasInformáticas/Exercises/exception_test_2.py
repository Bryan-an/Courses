def divide():
    try:
        num1 = float(input("Enter the first number: "))
        num2 = float(input("Enter the second number: "))

        print(f"The division is {num1 / num2}")
    finally:
        print("Calculation finished")


divide()
