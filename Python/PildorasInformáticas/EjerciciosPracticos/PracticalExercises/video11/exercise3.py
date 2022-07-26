# Crea un programa que pida tres números por teclado. El programa imprime en consola
# la media aritmética de los números introducidos.

numbers = []

for i in range(3):
    numbers.append(int(input("Enter a number: ")))

print(f"The average is: {sum(numbers) / len(numbers)}")
