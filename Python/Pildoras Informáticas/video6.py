def sum():
    num1 = 5
    num2 = 7
    print(num1+num2)


print("This is the sum function 1")
sum()


def sum2(num1, num2):
    print(num1 + num2)


print("\nThis is the sum function 2")
sum2(4, 5)
sum2(88, 23)
sum2(53, 959)


def subtraction(num1, num2):
    resultado = num1 - num2
    return resultado


print("\nThis is the subtraction fuction\n" + str(subtraction(3, 5)))
