# Crea un programa que pida dos números por teclado. El programa tendrá una función
# llamada “DevuelveMax” encargada de devolver el número más alto de los dos
# introducidos.\

num1 = int(input("Enter the first number: "))
num2 = int(input("Enter the second number: "))

def return_max(num1, num2):
    return max(num1, num2)

print(f"The greatest number is: {return_max(num1, num2)}")